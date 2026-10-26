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
import Seq.B000.C013
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A179900: Triangle T(n,k) read by rows: coefficient of [x^k] of the polynomial p_n(x)=(5-x)*p_{n-1}(x)-p_{n-2}(x), p_0=1, p_1=5-x.

The programs for A179900, the canonical program `A179900.P2695993604867188186` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179900 has offset 0).

The definition of A179900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179900.P2695993604867188186

`5*T(n-1,k)-T(n-1,k-1)-T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179900

/-- `5*T(n-1,k)-T(n-1,k-1)-T(n-2,k)` -/
def P2695993604867188186.Spec : Prop :=
  ∀ n, P2695993604867188186.a n = A179900 n

theorem P2695993604867188186.correct : P2695993604867188186.Spec := by
  intro n
  simp only [A179900]

end A179900

/-! ## A179900.P12465429339736865226

`Δ[A010751(n)]*A123967(n)`
-/

namespace A179900.P12465429339736865226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A123967 n

end

end A179900.P12465429339736865226

namespace A179900

/-- `Δ[A010751(n)]*A123967(n)` -/
def P12465429339736865226.Spec : Prop :=
  ∀ n, P12465429339736865226.a n = A179900 n

end A179900

/-! ## A179900.P7845854101331837694

`A009531(A158405(n+1))*A207824(n)`
-/

namespace A179900.P7845854101331837694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A158405 (n + 1)).toNat * A207824 n

end

end A179900.P7845854101331837694

namespace A179900

/-- `A009531(A158405(n+1))*A207824(n)` -/
def P7845854101331837694.Spec : Prop :=
  ∀ n, P7845854101331837694.a n = A179900 n

end A179900

/-! ## A179900.P12546588955513907850

`A123967(n)/A124037(n)*A126126(n)`
-/

namespace A179900.P12546588955513907850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123967 n : ℚ) / (A124037 n : ℚ) * (A126126 n : ℚ)

end

end A179900.P12546588955513907850

namespace A179900

/-- `A123967(n)/A124037(n)*A126126(n)` -/
def P12546588955513907850.Spec : Prop :=
  ∀ n, P12546588955513907850.a n = (A179900 n : ℚ)

end A179900

/-! ## A179900.P513322046439989090

`A123967(n)/A124029(n)*A159764(n)`
-/

namespace A179900.P513322046439989090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123967 n : ℚ) / (A124029 n : ℚ) * (A159764 n : ℚ)

end

end A179900.P513322046439989090

namespace A179900

/-- `A123967(n)/A124029(n)*A159764(n)` -/
def P513322046439989090.Spec : Prop :=
  ∀ n, P513322046439989090.a n = (A179900 n : ℚ)

end A179900

/-! ## A179900.P8445016471427346073

`A021010(A057944(n))*A123967(n)`
-/

namespace A179900.P8445016471427346073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 (A057944 n).toNat * A123967 n

end

end A179900.P8445016471427346073

namespace A179900

/-- `A021010(A057944(n))*A123967(n)` -/
def P8445016471427346073.Spec : Prop :=
  ∀ n, P8445016471427346073.a n = A179900 n

end A179900

/-!
# A179901: Triangle read by rows, antidiagonals of an array generated from (1, r, r, r, ...) convolved with (1, 0, r, r, r, ...).

The programs for A179901, there is no canonical definition to state claims against.
-/

/-! ## A179901.P5622568941361108279

`A276581(A151552(A088617(n)²))`
-/

namespace A179901.P5622568941361108279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A151552 (A088617 n ^ 2).toNat).toNat

end

end A179901.P5622568941361108279

/-! ## A179901.P2264102736531435100

`A088519(A274390(n)+A271439(n))`
-/

namespace A179901.P2264102736531435100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A274390 n + A271439 n).toNat

end

end A179901.P2264102736531435100

/-! ## A179901.P15639178981812396485

`A137921(A253572(n+1)^A077028(n))`
-/

namespace A179901.P15639178981812396485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (SequenceMachineLib.roundAway ((A253572 (n + 1) : ℚ) ^ (A077028 n : ℤ))).toNat

end

end A179901.P15639178981812396485

/-! ## A179901.P4368462460581875981

`A152724(lcm(A019538(n+1), A249027(n+1)))`
-/

namespace A179901.P4368462460581875981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152724 (Int.lcm (A019538 (n + 1)) (A249027 (n + 1)))

end

end A179901.P4368462460581875981

/-! ## A179901.P12496805503109235661

`A209082(A181853(n))`
-/

namespace A179901.P12496805503109235661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209082 (A181853 n).toNat

end

end A179901.P12496805503109235661

/-!
# A179902: Row sums of triangle A179901.

The programs for A179902, the canonical program `A179902.P11347042144427687193` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179902 has offset 1).

The definition of A179902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179902.P11347042144427687193

`(n+1)*((n+1)*((n-7)*(n+1)+35)-52)/12+3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179902

/-- `(n+1)*((n+1)*((n-7)*(n+1)+35)-52)/12+3` -/
def P11347042144427687193.Spec : Prop :=
  ∀ n, P11347042144427687193.a n = (A179902 (n + 1) : ℚ)

end A179902

/-!
# A179903: (1, 3, 5, 7, 9, ...) convolved with (1, 0, 3, 5, 7, 9, ...).

The programs for A179903, the canonical program `A179903.P14574370704978067575` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179903 has offset 0).

The definition of A179903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179903.P14574370704978067575

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=21, a(4)=46`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179903

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14574370704978067575.Spec : Prop :=
  ∀ n, P14574370704978067575.a n = A179903 n

theorem P14574370704978067575.correct : P14574370704978067575.Spec := by
  intro n
  simp only [A179903]

end A179903

/-! ## A179903.P1532288917492215140

`∑[n*comp[2*n+3]+1]`
-/

namespace A179903.P1532288917492215140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179903.P1532288917492215140

namespace A179903

/-- `∑[n*comp[2*n+3]+1]` -/
def P1532288917492215140.Spec : Prop :=
  ∀ n, (P1532288917492215140.a n : ℤ) = A179903 n

end A179903

/-! ## A179903.P15536670472471395673

`∑[n*A004275(n)]+n+1`
-/

namespace A179903.P15536670472471395673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A179903.P15536670472471395673

namespace A179903

/-- `∑[n*A004275(n)]+n+1` -/
def P15536670472471395673.Spec : Prop :=
  ∀ n, P15536670472471395673.a n = A179903 n

end A179903

/-! ## A179903.P10596562334572015292

`A001844(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A179903.P10596562334572015292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A001844 (n - 1) + a (n - 1)

end

end A179903.P10596562334572015292

namespace A179903

/-- `A001844(n-1)+a(n-1)` -/
def P10596562334572015292.Spec : Prop :=
  ∀ n, P10596562334572015292.a n = A179903 n

end A179903

/-! ## A179903.P4524809587847514374

`A099776(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A179903.P4524809587847514374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A099776 (n - 1) + a (n - 1)

end

end A179903.P4524809587847514374

namespace A179903

/-- `A099776(n-1)+a(n-1)` -/
def P4524809587847514374.Spec : Prop :=
  ∀ n, P4524809587847514374.a n = A179903 n

end A179903

/-! ## A179903.P15017863592825516471

`A386480(n)+A037235(n)`
-/

namespace A179903.P15017863592825516471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386480 n + A037235 n

end

end A179903.P15017863592825516471

namespace A179903

/-- `A386480(n)+A037235(n)` -/
def P15017863592825516471.Spec : Prop :=
  ∀ n, P15017863592825516471.a n = A179903 n

end A179903

/-! ## A179903.P16892909647835159015

`∑[A051890(n)]-A028310(n)`
-/

namespace A179903.P16892909647835159015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028310 n

end

end A179903.P16892909647835159015

namespace A179903

/-- `∑[A051890(n)]-A028310(n)` -/
def P16892909647835159015.Spec : Prop :=
  ∀ n, P16892909647835159015.a n = A179903 n

end A179903

/-! ## A179903.P14716141452303457783

`A146298(n)+A003682(n+1)`
-/

namespace A179903.P14716141452303457783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n + A003682 (n + 1)

end

end A179903.P14716141452303457783

namespace A179903

/-- `A146298(n)+A003682(n+1)` -/
def P14716141452303457783.Spec : Prop :=
  ∀ n, P14716141452303457783.a n = A179903 n

end A179903

/-! ## A179903.P4161351473022250213

`A005900(n)+2-A000007(n)`
-/

namespace A179903.P4161351473022250213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n + (2 - A000007 n)

end

end A179903.P4161351473022250213

namespace A179903

/-- `A005900(n)+2-A000007(n)` -/
def P4161351473022250213.Spec : Prop :=
  ∀ n, P4161351473022250213.a n = A179903 n

end A179903

/-! ## A179903.P8991435688412589458

`A006331(n)+2-A028310(n)²`
-/

namespace A179903.P8991435688412589458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + (2 - A028310 n ^ 2)

end

end A179903.P8991435688412589458

namespace A179903

/-- `A006331(n)+2-A028310(n)²` -/
def P8991435688412589458.Spec : Prop :=
  ∀ n, P8991435688412589458.a n = A179903 n

end A179903

/-! ## A179903.P793120507965421392

`∑[2*A253909(n)]-A253909(n)`
-/

namespace A179903.P793120507965421392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A253909 n

end

end A179903.P793120507965421392

namespace A179903

/-- `∑[2*A253909(n)]-A253909(n)` -/
def P793120507965421392.Spec : Prop :=
  ∀ n, P793120507965421392.a n = A179903 n

end A179903

/-! ## A179903.P8614857256544832760

`A005894(n)-(A004273(n)+n²)`
-/

namespace A179903.P8614857256544832760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n - (A004273 n + (n ^ 2 : ℤ))

end

end A179903.P8614857256544832760

namespace A179903

/-- `A005894(n)-(A004273(n)+n²)` -/
def P8614857256544832760.Spec : Prop :=
  ∀ n, P8614857256544832760.a n = A179903 n

end A179903

/-! ## A179903.P4476909887346451366

`A005408(n)+∑[A132209(n)]-A132209(n)`
-/

namespace A179903.P4476909887346451366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (∑ j ∈ Finset.range (n + 1), f1 j - A132209 n)

end

end A179903.P4476909887346451366

namespace A179903

/-- `A005408(n)+∑[A132209(n)]-A132209(n)` -/
def P4476909887346451366.Spec : Prop :=
  ∀ n, P4476909887346451366.a n = A179903 n

end A179903

/-! ## A179903.P13755121035603977389

`A036453(2*n+1)+A005900(n)`
-/

namespace A179903.P13755121035603977389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) + A005900 n

end

end A179903.P13755121035603977389

namespace A179903

/-- `A036453(2*n+1)+A005900(n)` -/
def P13755121035603977389.Spec : Prop :=
  ∀ n, P13755121035603977389.a n = A179903 n

end A179903

/-! ## A179903.P8060756461935297089

`A005900(n)+A011782(n+1)/A011782(n)`
-/

namespace A179903.P8060756461935297089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005900 n : ℚ) + (A011782 (n + 1) : ℚ) / (A011782 n : ℚ)

end

end A179903.P8060756461935297089

namespace A179903

/-- `A005900(n)+A011782(n+1)/A011782(n)` -/
def P8060756461935297089.Spec : Prop :=
  ∀ n, P8060756461935297089.a n = (A179903 n : ℚ)

end A179903

/-! ## A179903.P10478121464565544737

`A020639((n²+1)*ceil(atan(n+1)))+(2*n*n²+n)/3`
-/

namespace A179903.P10478121464565544737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 ((n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉).toNat : ℚ) + (2 * (n * n ^ 2) + n : ℚ) / 3

end

end A179903.P10478121464565544737

namespace A179903

/-- `A020639((n²+1)*ceil(atan(n+1)))+(2*n*n²+n)/3` -/
def P10478121464565544737.Spec : Prop :=
  ∀ n, P10478121464565544737.a n = (A179903 n : ℚ)

end A179903

/-!
# A179904: a(n) = A056520(n)+1 for n>0, a(0)=1.

The programs for A179904, the canonical program `A179904.P6664857584763423766` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179904 has offset 0).

The definition of A179904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179904.P16492411492637816441

`∑[char[1]+n²]+1`
-/

namespace A179904.P16492411492637816441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A179904.P16492411492637816441

namespace A179904

/-- `∑[char[1]+n²]+1` -/
def P16492411492637816441.Spec : Prop :=
  ∀ n, (P16492411492637816441.a n : ℤ) = A179904 n

end A179904

/-! ## A179904.P6664857584763423766

`∑[xor(n², C(3, n²))]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179904

/-- `∑[xor(n², C(3, n²))]` -/
def P6664857584763423766.Spec : Prop :=
  ∀ n, (P6664857584763423766.a n : ℤ) = A179904 n

theorem P6664857584763423766.correct : P6664857584763423766.Spec := by
  intro n
  simp only [A179904]

end A179904

/-! ## A179904.P17636344027779693124

`∑[C(n, n²)+n²]`
-/

namespace A179904.P17636344027779693124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2) + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179904.P17636344027779693124

namespace A179904

/-- `∑[C(n, n²)+n²]` -/
def P17636344027779693124.Spec : Prop :=
  ∀ n, (P17636344027779693124.a n : ℤ) = A179904 n

end A179904

/-! ## A179904.P3215355480789461251

`floor(∑[acot(n²)+n²])`
-/

namespace A179904.P3215355480789461251
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n ^ 2 : ℝ) + (n ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A179904.P3215355480789461251

namespace A179904

/-- `floor(∑[acot(n²)+n²])` -/
def P3215355480789461251.Spec : Prop :=
  ∀ n, P3215355480789461251.a n = A179904 n

end A179904

/-! ## A179904.P7546050927181496590

`ceil(atan(n+1)+∑[n²])`
-/

namespace A179904.P7546050927181496590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A179904.P7546050927181496590

namespace A179904

/-- `ceil(atan(n+1)+∑[n²])` -/
def P7546050927181496590.Spec : Prop :=
  ∀ n, P7546050927181496590.a n = A179904 n

end A179904

/-! ## A179904.P17711343650813122687

`floor(a(n-1)+n²)` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A179904.P17711343650813122687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + n ^ 2

end

end A179904.P17711343650813122687

namespace A179904

/-- `floor(a(n-1)+n²)` -/
def P17711343650813122687.Spec : Prop :=
  ∀ n, (P17711343650813122687.a n : ℤ) = A179904 n

end A179904

/-! ## A179904.P5022156372303078718

`∑[round((n+1)/acot(n)-n)]`
-/

namespace A179904.P5022156372303078718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) - (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179904.P5022156372303078718

namespace A179904

/-- `∑[round((n+1)/acot(n)-n)]` -/
def P5022156372303078718.Spec : Prop :=
  ∀ n, P5022156372303078718.a n = A179904 n

end A179904

/-! ## A179904.P6603256529810324262

`ceil(∑[acot((n+1)²)+n²])`
-/

namespace A179904.P6603256529810324262
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ) + (n ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A179904.P6603256529810324262

namespace A179904

/-- `ceil(∑[acot((n+1)²)+n²])` -/
def P6603256529810324262.Spec : Prop :=
  ∀ n, P6603256529810324262.a n = A179904 n

end A179904

/-! ## A179904.P16986333178696529367

`∑[round((acot((n+1)²)+n)²)]`
-/

namespace A179904.P16986333178696529367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ) + (n : ℝ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179904.P16986333178696529367

namespace A179904

/-- `∑[round((acot((n+1)²)+n)²)]` -/
def P16986333178696529367.Spec : Prop :=
  ∀ n, P16986333178696529367.a n = A179904 n

end A179904

/-! ## A179904.P10116441958933827504

`∑[n^a((n+1)%n)]` with `a(0)=1, a(1)=2`
-/

namespace A179904.P10116441958933827504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  n ^ f1 ((n + 1) % n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179904.P10116441958933827504

namespace A179904

/-- `∑[n^a((n+1)%n)]` -/
def P10116441958933827504.Spec : Prop :=
  ∀ n, (P10116441958933827504.a n : ℤ) = A179904 n

end A179904

/-! ## A179904.P13643165976566995491

`∑[n^a(gcd(n, n+1))]` with `a(0)=1, a(1)=2`
-/

namespace A179904.P13643165976566995491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  n ^ f1 (Nat.gcd n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179904.P13643165976566995491

namespace A179904

/-- `∑[n^a(gcd(n, n+1))]` -/
def P13643165976566995491.Spec : Prop :=
  ∀ n, (P13643165976566995491.a n : ℤ) = A179904 n

end A179904

/-! ## A179904.P12647070618977942834

`∑[∑[a(n-1)+2]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A179904.P12647070618977942834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 5] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179904.P12647070618977942834

namespace A179904

/-- `∑[∑[a(n-1)+2]]` -/
def P12647070618977942834.Spec : Prop :=
  ∀ n, (P12647070618977942834.a n : ℤ) = A179904 n

end A179904

/-! ## A179904.P9108407650663898193

`∑[n^(2%a(n-1))]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A179904.P9108407650663898193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  n ^ (2 % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179904.P9108407650663898193

namespace A179904

/-- `∑[n^(2%a(n-1))]` -/
def P9108407650663898193.Spec : Prop :=
  ∀ n, (P9108407650663898193.a n : ℤ) = A179904 n

end A179904

/-! ## A179904.P13683243022898334415

`∑[n*n%a(n-1)]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A179904.P13683243022898334415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  n * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179904.P13683243022898334415

namespace A179904

/-- `∑[n*n%a(n-1)]` -/
def P13683243022898334415.Spec : Prop :=
  ∀ n, (P13683243022898334415.a n : ℤ) = A179904 n

end A179904

/-! ## A179904.P6388369246397735022

`∑[n²%a(n-1)²]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A179904.P6388369246397735022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  n ^ 2 % f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179904.P6388369246397735022

namespace A179904

/-- `∑[n²%a(n-1)²]` -/
def P6388369246397735022.Spec : Prop :=
  ∀ n, (P6388369246397735022.a n : ℤ) = A179904 n

end A179904

/-! ## A179904.P14179423976485961033

`n*(a(n-1)/n+n)` with `a(0)=1, a(1)=3`
-/

namespace A179904.P14179423976485961033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n : ℚ) * (a (n - 1) / (n : ℚ) + (n : ℚ))

end

end A179904.P14179423976485961033

namespace A179904

/-- `n*(a(n-1)/n+n)` -/
def P14179423976485961033.Spec : Prop :=
  ∀ n, P14179423976485961033.a n = (A179904 n : ℚ)

end A179904

/-! ## A179904.P5193921686001409923

`∑[n^gcd(2, 2*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A179904.P5193921686001409923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  n ^ Nat.gcd 2 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179904.P5193921686001409923

namespace A179904

/-- `∑[n^gcd(2, 2*a(n-1))]` -/
def P5193921686001409923.Spec : Prop :=
  ∀ n, (P5193921686001409923.a n : ℤ) = A179904 n

end A179904

/-! ## A179904.P14194147110918557133

`∑[∪[(n+1)², 2^(2*n+1)!]]`
-/

namespace A179904.P14194147110918557133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.factorial (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179904.P14194147110918557133

namespace A179904

/-- `∑[∪[(n+1)², 2^(2*n+1)!]]` -/
def P14194147110918557133.Spec : Prop :=
  ∀ n, (P14194147110918557133.a n : ℤ) = A179904 n

end A179904

/-! ## A179904.P17812574265735563003

`∑[A132411(n)+1]`
-/

namespace A179904.P17812574265735563003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179904.P17812574265735563003

namespace A179904

/-- `∑[A132411(n)+1]` -/
def P17812574265735563003.Spec : Prop :=
  ∀ n, P17812574265735563003.a n = A179904 n

end A179904

/-! ## A179904.P8810773529480256927

`∑[A103505(n)+n]`
-/

namespace A179904.P8810773529480256927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179904.P8810773529480256927

namespace A179904

/-- `∑[A103505(n)+n]` -/
def P8810773529480256927.Spec : Prop :=
  ∀ n, P8810773529480256927.a n = A179904 n

end A179904

/-!
# A179905: (1, 4, 7, 10, 13, ...) convolved with (1, 0, 4, 7, 10, 13, ...); given A016777 = (1, 4, 7, 10, 13, ...).

The programs for A179905, the canonical program `A179905.P8821917805112800408` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179905 has offset 0).

The definition of A179905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179905.P8821917805112800408

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=33, a(4)=79`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179905

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8821917805112800408.Spec : Prop :=
  ∀ n, P8821917805112800408.a n = A179905 n

theorem P8821917805112800408.correct : P8821917805112800408.Spec := by
  intro n
  simp only [A179905]

end A179905

/-! ## A179905.P15435125299412657749

`∑[A249725(record[A165355(n)])]`
-/

namespace A179905.P15435125299412657749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249725 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179905.P15435125299412657749

namespace A179905

/-- `∑[A249725(record[A165355(n)])]` -/
def P15435125299412657749.Spec : Prop :=
  ∀ n, P15435125299412657749.a n = A179905 n

end A179905

/-! ## A179905.P12159759884079356187

`∑[record[A160791(A008486(n))]]+n`
-/

namespace A179905.P12159759884079356187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (A008486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A179905.P12159759884079356187

namespace A179905

/-- `∑[record[A160791(A008486(n))]]+n` -/
def P12159759884079356187.Spec : Prop :=
  ∀ n, P12159759884079356187.a n = A179905 n

end A179905

/-! ## A179905.P595262507833736987

`∑[record[A209268(3*n+1)-A032766(n)]]`
-/

namespace A179905.P595262507833736987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (3 * n + 1) - A032766 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179905.P595262507833736987

namespace A179905

/-- `∑[record[A209268(3*n+1)-A032766(n)]]` -/
def P595262507833736987.Spec : Prop :=
  ∀ n, P595262507833736987.a n = A179905 n

end A179905

/-! ## A179905.P3305724786011023014

`∑[record[A209268(3*n+1)-A004526(3*n)]]`
-/

namespace A179905.P3305724786011023014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (3 * n + 1) - A004526 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179905.P3305724786011023014

namespace A179905

/-- `∑[record[A209268(3*n+1)-A004526(3*n)]]` -/
def P3305724786011023014.Spec : Prop :=
  ∀ n, P3305724786011023014.a n = A179905 n

end A179905

/-! ## A179905.P7358371114776824975

`∑[A278506(A008486(A004275(n)))]`
-/

namespace A179905.P7358371114776824975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278506 (A008486 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179905.P7358371114776824975

namespace A179905

/-- `∑[A278506(A008486(A004275(n)))]` -/
def P7358371114776824975.Spec : Prop :=
  ∀ n, P7358371114776824975.a n = A179905 n

end A179905

/-! ## A179905.P13346506990490899016

`∑[A055802(A008585(A004280(n+1)))]`
-/

namespace A179905.P13346506990490899016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055802 (A008585 (A004280 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179905.P13346506990490899016

namespace A179905

/-- `∑[A055802(A008585(A004280(n+1)))]` -/
def P13346506990490899016.Spec : Prop :=
  ∀ n, P13346506990490899016.a n = A179905 n

end A179905

/-! ## A179905.P8234161452236880956

`∑[A246276(A047268(A033627(n+1)))]`
-/

namespace A179905.P8234161452236880956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A047268 (A033627 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179905.P8234161452236880956

namespace A179905

/-- `∑[A246276(A047268(A033627(n+1)))]` -/
def P8234161452236880956.Spec : Prop :=
  ∀ n, P8234161452236880956.a n = A179905 n

end A179905

/-! ## A179905.P11270677770145729108

`∑[A038722(record[A027626(n)])]`
-/

namespace A179905.P11270677770145729108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179905.P11270677770145729108

namespace A179905

/-- `∑[A038722(record[A027626(n)])]` -/
def P11270677770145729108.Spec : Prop :=
  ∀ n, P11270677770145729108.a n = A179905 n

end A179905

/-! ## A179905.P7150435705610493912

`∑[A038722(record[A234041(n)])]`
-/

namespace A179905.P7150435705610493912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179905.P7150435705610493912

namespace A179905

/-- `∑[A038722(record[A234041(n)])]` -/
def P7150435705610493912.Spec : Prop :=
  ∀ n, P7150435705610493912.a n = A179905 n

end A179905

/-!
# A179906: (1, 1, 2, 3, 5, 7, 11, ...) convolved with (1, 0, 1, 2, 3, 5, 7, 11, ...); given A000041 = (1, 1, 2, 3, 5, 7, ...).

The programs for A179906, there is no canonical definition to state claims against.
-/

/-! ## A179906.P4259953923411905714

`A122768(n-floor(atan(n+1)))+A000041(n)`
-/

namespace A179906.P4259953923411905714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 ((n : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋).toNat + A000041 n

end

end A179906.P4259953923411905714

/-! ## A179906.P14835204922831823646

`A122768(A289207(n+1))+A000041(n)`
-/

namespace A179906.P14835204922831823646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (A289207 (n + 1)).toNat + A000041 n

end

end A179906.P14835204922831823646

/-! ## A179906.P6456626679304510461

`A122768(A028310(n)-1)+A000041(n)`
-/

namespace A179906.P6456626679304510461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (A028310 n - 1).toNat + A000041 n

end

end A179906.P6456626679304510461

/-! ## A179906.P1897127161356322249

`A122768(n-A057427(n))+A000041(n)`
-/

namespace A179906.P1897127161356322249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 ((n : ℤ) - A057427 n).toNat + A000041 n

end

end A179906.P1897127161356322249

/-! ## A179906.P17667799978549697548

`A122768(A028310(n)-1)+∑[A002865(n)]`
-/

namespace A179906.P17667799978549697548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (A028310 n - 1).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179906.P17667799978549697548

/-!
# A179907: Numerators in the approximation of sqrt(2) satisfying the recurrence: a(n)= [a(n-1)*a(n-2)+2]/[a(n-1)+a(n-2)] with a(1)=a(2)=1.

The programs for A179907, the canonical program `A179907.P18240229230524528700` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179907 has offset 1).

The definition of A179907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179907.P18240229230524528700

`A001333(A000045(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179907

/-- `A001333(A000045(n+1))` -/
def P18240229230524528700.Spec : Prop :=
  ∀ n, P18240229230524528700.a n = A179907 (n + 1)

theorem P18240229230524528700.correct : P18240229230524528700.Spec := by
  intro n
  simp only [A179907, Nat.add_sub_cancel]

end A179907

/-! ## A179907.P17391267776758753877

`A001333(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A179907.P17391267776758753877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (f1 (n + 1) - f1 n).toNat

end

end A179907.P17391267776758753877

namespace A179907

/-- `A001333(Δ[round(ϕ*a(n-1))])` -/
def P17391267776758753877.Spec : Prop :=
  ∀ n, P17391267776758753877.a n = A179907 (n + 1)

end A179907

/-! ## A179907.P425751155922036497

`A152113(A001595(n))`
-/

namespace A179907.P425751155922036497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (A001595 n).toNat

end

end A179907.P425751155922036497

namespace A179907

/-- `A152113(A001595(n))` -/
def P425751155922036497.Spec : Prop :=
  ∀ n, P425751155922036497.a n = A179907 (n + 1)

end A179907

/-! ## A179907.P12388935234989698909

`A001333(A185357(n))`
-/

namespace A179907.P12388935234989698909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A185357 n).toNat

end

end A179907.P12388935234989698909

namespace A179907

/-- `A001333(A185357(n))` -/
def P12388935234989698909.Spec : Prop :=
  ∀ n, P12388935234989698909.a n = A179907 (n + 1)

end A179907

/-!
# A179908: First appearance of n in A039996: Primes embedded in prime(n).

The programs for A179908, there is no canonical definition to state claims against.
-/

/-! ## A179908.P15628031014435591932

`A000720(A079397(n))`
-/

namespace A179908.P15628031014435591932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A079397 n).toNat

end

end A179908.P15628031014435591932

/-! ## A179908.P9513440269875036516

`A061395(2*A079397(n))`
-/

namespace A179908.P9513440269875036516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A079397 n).toNat

end

end A179908.P9513440269875036516

/-!
# A179909: Primes with only one embedded prime.

The programs for A179909, there is no canonical definition to state claims against.
-/

/-! ## A179909.P6243644494485581673

`A045344(eq[1, A079066(n+1)])`
-/

namespace A179909.P6243644494485581673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179909.P6243644494485581673

/-! ## A179909.P12928469198544126487

`A065091(eq[1, A079066(n+1)])`
-/

namespace A179909.P12928469198544126487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179909.P12928469198544126487

/-! ## A179909.P16438268277126989147

`A045319(eq[2, A039996(n+1)])`
-/

namespace A179909.P16438268277126989147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179909.P16438268277126989147

/-! ## A179909.P10081457414779020609

`A045344(eq[2, A039996(n+1)])`
-/

namespace A179909.P10081457414779020609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179909.P10081457414779020609

/-! ## A179909.P9026696672431946670

`A065091(eq[2, A039996(n+1)])`
-/

namespace A179909.P9026696672431946670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179909.P9026696672431946670

/-! ## A179909.P14969569335012480508

`A000040(eq[1, A079066(n+1)]+1)`
-/

namespace A179909.P14969569335012480508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A179909.P14969569335012480508

/-! ## A179909.P15816594295607794632

`A000040(eq[2, A039996(n+1)]+1)`
-/

namespace A179909.P15816594295607794632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A179909.P15816594295607794632

/-! ## A179909.P4969097356510787483

`p?[A000040(n+1)*A079066(n+1)]`
-/

namespace A179909.P4969097356510787483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A079066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179909.P4969097356510787483

/-! ## A179909.P7189331440922897883

`p?[(A039996(n+1)-1)*A000040(n+1)]`
-/

namespace A179909.P7189331440922897883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039996 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179909.P7189331440922897883

/-! ## A179909.P17192624298846588687

`p?[A163754(n+1)]`
-/

namespace A179909.P17192624298846588687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179909.P17192624298846588687

/-! ## A179909.P13121670544606012029

`filter[A163754(n+1), A010051(#)]`
-/

namespace A179909.P13121670544606012029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A179909.P13121670544606012029

/-! ## A179909.P6045549892441054468

`filter[A163754(n+1), A323153(#)]`
-/

namespace A179909.P6045549892441054468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A179909.P6045549892441054468

/-! ## A179909.P3327782547119206259

`∩[A000040(n+1), A163754(n+1)]`
-/

namespace A179909.P3327782547119206259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179909.P3327782547119206259

/-! ## A179909.P13604113267654830942

`∩[A004139(n+1), A163754(n+1)]`
-/

namespace A179909.P13604113267654830942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179909.P13604113267654830942

/-! ## A179909.P1902324872673307749

`∩[A006005(n+1), A163754(n+1)]`
-/

namespace A179909.P1902324872673307749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179909.P1902324872673307749

/-! ## A179909.P5418489982469238979

`∩[A008578(n+1), A163754(n+1)]`
-/

namespace A179909.P5418489982469238979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179909.P5418489982469238979

/-! ## A179909.P14710981870028062763

`∩[A033946(n+1), A163754(n+1)]`
-/

namespace A179909.P14710981870028062763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179909.P14710981870028062763

/-! ## A179909.P3598178916708249538

`∩[A045319(n+1), A163754(n+1)]`
-/

namespace A179909.P3598178916708249538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179909.P3598178916708249538

/-! ## A179909.P8887651412504540294

`∩[A045344(n+1), A163754(n+1)]`
-/

namespace A179909.P8887651412504540294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179909.P8887651412504540294

/-! ## A179909.P17436508719014265346

`∩[A046022(n+1), A163754(n+1)]`
-/

namespace A179909.P17436508719014265346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179909.P17436508719014265346

/-!
# A179910: Primes with two embedded primes.

The programs for A179910, there is no canonical definition to state claims against.
-/

/-! ## A179910.P7306513869825325679

`A045344(eq[2, A079066(n+1)])`
-/

namespace A179910.P7306513869825325679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179910.P7306513869825325679

/-! ## A179910.P13428487590701168854

`A065091(eq[2, A079066(n+1)])`
-/

namespace A179910.P13428487590701168854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179910.P13428487590701168854

/-! ## A179910.P13356546828298000008

`A000040(eq[2, A079066(n+1)]+1)`
-/

namespace A179910.P13356546828298000008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A179910.P13356546828298000008

/-! ## A179910.P10464759763060358151

`A000040(eq[3, A039996(n+1)]+1)`
-/

namespace A179910.P10464759763060358151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A179910.P10464759763060358151

/-! ## A179910.P11370916999778746383

`A045319(eq[1, A039996(n+1)-2])`
-/

namespace A179910.P11370916999778746383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179910.P11370916999778746383

/-! ## A179910.P3466631489518128105

`A045344(eq[1, A039996(n+1)-2])`
-/

namespace A179910.P3466631489518128105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179910.P3466631489518128105

/-! ## A179910.P17317113651267232874

`A065091(eq[1, A039996(n+1)-2])`
-/

namespace A179910.P17317113651267232874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179910.P17317113651267232874

/-! ## A179910.P11328250722688790576

`p?[(A079066(n+1)-1)*A000040(n+1)]`
-/

namespace A179910.P11328250722688790576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079066 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179910.P11328250722688790576

/-! ## A179910.P9567430687717540925

`p?[(A039996(n+1)-2)*A000040(n+1)]`
-/

namespace A179910.P9567430687717540925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039996 (n + 1) - 2) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179910.P9567430687717540925

/-! ## A179910.P1158323570815471036

`A045319(eq[2, A127229(n+5)%A039996(n+1)])`
-/

namespace A179910.P1158323570815471036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A039996 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179910.P1158323570815471036

/-! ## A179910.P7754909013641156578

`p?[(n+1)*(A039997(n+1)-2)]`
-/

namespace A179910.P7754909013641156578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A039997 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179910.P7754909013641156578

/-!
# A179911: Primes with three embedded primes.

The programs for A179911, there is no canonical definition to state claims against.
-/

/-! ## A179911.P5454240766669906912

`p?[A163760(n+1)]`
-/

namespace A179911.P5454240766669906912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179911.P5454240766669906912

/-! ## A179911.P14417159078430489432

`filter[A163760(n+1), A010051(#)]`
-/

namespace A179911.P14417159078430489432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A179911.P14417159078430489432

/-! ## A179911.P13909515875980330455

`filter[A163760(n+1), A323152(#)]`
-/

namespace A179911.P13909515875980330455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A179911.P13909515875980330455

/-! ## A179911.P15622721492509206149

`filter[A163760(n+1), A323153(#)]`
-/

namespace A179911.P15622721492509206149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A179911.P15622721492509206149

/-! ## A179911.P16072213865519417381

`A000040(eq[3, A079066(n+1)]+1)`
-/

namespace A179911.P16072213865519417381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A179911.P16072213865519417381

/-! ## A179911.P695241443974006770

`A045344(eq[1, A079066(n+1)-2])`
-/

namespace A179911.P695241443974006770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179911.P695241443974006770

/-! ## A179911.P13481134350665552973

`A065091(eq[1, A079066(n+1)-2])`
-/

namespace A179911.P13481134350665552973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179911.P13481134350665552973

/-! ## A179911.P14885905171940926899

`A000040(eq[4, A039996(n+1)]+1)`
-/

namespace A179911.P14885905171940926899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A179911.P14885905171940926899

/-! ## A179911.P15135546039151158244

`A045319(eq[2, A039996(n+1)-2])`
-/

namespace A179911.P15135546039151158244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179911.P15135546039151158244

/-! ## A179911.P4470671181463449120

`A045344(eq[2, A039996(n+1)-2])`
-/

namespace A179911.P4470671181463449120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179911.P4470671181463449120

/-! ## A179911.P4651408902088213033

`A065091(eq[2, A039996(n+1)-2])`
-/

namespace A179911.P4651408902088213033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179911.P4651408902088213033

/-! ## A179911.P3152832633329028713

`A045319(eq[2, A039996(n+1)/2])`
-/

namespace A179911.P3152832633329028713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039996 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A179911.P3152832633329028713

/-! ## A179911.P3234416610662921043

`A045344(eq[2, A039996(n+1)/2])`
-/

namespace A179911.P3234416610662921043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039996 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A179911.P3234416610662921043

/-! ## A179911.P13383357373211395237

`A065091(eq[2, A039996(n+1)/2])`
-/

namespace A179911.P13383357373211395237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039996 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A179911.P13383357373211395237

/-! ## A179911.P12182002940814854271

`∩[A000040(n+1), A163760(n+1)]`
-/

namespace A179911.P12182002940814854271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179911.P12182002940814854271

/-! ## A179911.P7149992960023278078

`∩[A004139(n+1), A163760(n+1)]`
-/

namespace A179911.P7149992960023278078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179911.P7149992960023278078

/-! ## A179911.P16508082185298014294

`∩[A006005(n+1), A163760(n+1)]`
-/

namespace A179911.P16508082185298014294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179911.P16508082185298014294

/-! ## A179911.P6768575433852136200

`∩[A008578(n+1), A163760(n+1)]`
-/

namespace A179911.P6768575433852136200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179911.P6768575433852136200

/-! ## A179911.P14588777753650509042

`∩[A033946(n+1), A163760(n+1)]`
-/

namespace A179911.P14588777753650509042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179911.P14588777753650509042

/-! ## A179911.P37064290969794118

`∩[A045319(n+1), A163760(n+1)]`
-/

namespace A179911.P37064290969794118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179911.P37064290969794118

/-!
# A179912: Primes with four embedded primes.

The programs for A179912, there is no canonical definition to state claims against.
-/

/-! ## A179912.P16797688633241591384

`A045344(eq[4, A079066(n+1)])`
-/

namespace A179912.P16797688633241591384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179912.P16797688633241591384

/-! ## A179912.P18393448151441653149

`A065091(eq[4, A079066(n+1)])`
-/

namespace A179912.P18393448151441653149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179912.P18393448151441653149

/-! ## A179912.P9755793951348038552

`A045319(eq[5, A039996(n+1)])`
-/

namespace A179912.P9755793951348038552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179912.P9755793951348038552

/-! ## A179912.P5141413088610347279

`A045344(eq[5, A039996(n+1)])`
-/

namespace A179912.P5141413088610347279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179912.P5141413088610347279

/-! ## A179912.P10340459775581529761

`A065091(eq[5, A039996(n+1)])`
-/

namespace A179912.P10340459775581529761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179912.P10340459775581529761

/-!
# A179913: Primes with five embedded primes.

The programs for A179913, there is no canonical definition to state claims against.
-/

/-! ## A179913.P5431885053589223667

`A045344(eq[5, A079066(n+1)])`
-/

namespace A179913.P5431885053589223667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179913.P5431885053589223667

/-! ## A179913.P5974954446959452902

`A065091(eq[5, A079066(n+1)])`
-/

namespace A179913.P5974954446959452902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179913.P5974954446959452902

/-! ## A179913.P10579327928625571367

`A045319(eq[6, A039996(n+1)])`
-/

namespace A179913.P10579327928625571367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179913.P10579327928625571367

/-! ## A179913.P2296895301309194167

`A045344(eq[6, A039996(n+1)])`
-/

namespace A179913.P2296895301309194167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179913.P2296895301309194167

/-! ## A179913.P6628706674124168846

`A065091(eq[6, A039996(n+1)])`
-/

namespace A179913.P6628706674124168846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179913.P6628706674124168846

/-!
# A179914: Primes with six embedded primes.

The programs for A179914, there is no canonical definition to state claims against.
-/

/-! ## A179914.P56673049447476975

`A045344(eq[7, A039996(n+1)])`
-/

namespace A179914.P56673049447476975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179914.P56673049447476975

/-!
# A179915: Primes with seven embedded primes.

The programs for A179915, there is no canonical definition to state claims against.
-/

/-! ## A179915.P14105989946242952916

`A045319(eq[8, A039996(n+1)])`
-/

namespace A179915.P14105989946242952916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179915.P14105989946242952916

/-! ## A179915.P9888779399221993154

`A045344(eq[8, A039996(n+1)])`
-/

namespace A179915.P9888779399221993154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179915.P9888779399221993154

/-!
# A179917: Primes with nine embedded primes.

The programs for A179917, there is no canonical definition to state claims against.
-/

/-! ## A179917.P18375693041033439710

`p?[A168167(n+5)%A168166(2*(n+2))]`
-/

namespace A179917.P18375693041033439710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168167 (n + 5)) (A168166 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179917.P18375693041033439710

/-!
# A179920: Smallest n-digit prime such that the sum of the square of digits equals n, or 0 if no such prime exists.

The programs for A179920, there is no canonical definition to state claims against.
-/

/-! ## A179920.P3670107466936266404

`A030308(A018215(n))*A069664(n+1)`
-/

namespace A179920.P3670107466936266404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A018215 n).toNat * A069664 (n + 1)

end

end A179920.P3670107466936266404

/-! ## A179920.P4100468996365723151

`A069664(n+1)*A144595(A001542(n))`
-/

namespace A179920.P4100468996365723151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069664 (n + 1) * A144595 (A001542 n).toNat

end

end A179920.P4100468996365723151

/-!
# A179921: a(n) = prime(n) if n<=3; for n>3, a(n) is the smallest prime >a(n-1), such that the denominator of fraction (a(n-1)-a(n-2))/(a(n)-a(n-1)) did not appear earlier.

The programs for A179921, there is no canonical definition to state claims against.
-/

/-! ## A179921.P12735676181571462364

`filter[A048413(n+1), A167850(#)]`
-/

namespace A179921.P12735676181571462364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167850 (f1 j).toNat = 1) n)

end

end A179921.P12735676181571462364

/-! ## A179921.P5330165243578782701

`∩[A048413(n+1), A322554(A062770(n+1))]`
-/

namespace A179921.P5330165243578782701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (A062770 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179921.P5330165243578782701

/-! ## A179921.P7591860924811028981

`∩[A048413(n+1), A356944(n+1)]`
-/

namespace A179921.P7591860924811028981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179921.P7591860924811028981

/-!
# A179922: Primes with twelve embedded primes.

The programs for A179922, there is no canonical definition to state claims against.
-/

/-! ## A179922.P3616356971025083366

`A168169(n+4)%A112389(n+4)`
-/

namespace A179922.P3616356971025083366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168169 (n + 4)) (A112389 (n + 4))

end

end A179922.P3616356971025083366

/-! ## A179922.P1252723689852291816

`A168169(n+4)+A112983(2*4^n)`
-/

namespace A179922.P1252723689852291816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168169 (n + 4) + A112983 (2 * 4 ^ n)

end

end A179922.P1252723689852291816

/-! ## A179922.P7694137697503929946

`A168169(n+4)/A000120(2*4^n)`
-/

namespace A179922.P7694137697503929946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168169 (n + 4) : ℚ) / (A000120 (2 * 4 ^ n) : ℚ)

end

end A179922.P7694137697503929946

/-!
# A179923: Primes of the form (n^2)*(n+1)^2 + 1.

The programs for A179923, there is no canonical definition to state claims against.
-/

/-! ## A179923.P11664284890032286725

`record[A256970(∑[n+1])]`
-/

namespace A179923.P11664284890032286725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179923.P11664284890032286725

/-! ## A179923.P3797455058906941558

`record[A125256((n+1)*(n+2))]`
-/

namespace A179923.P3797455058906941558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 ((n + 1) * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179923.P3797455058906941558

/-! ## A179923.P12503820750961728018

`record[or(1, A256970(A179865(n+1)))]`
-/

namespace A179923.P12503820750961728018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A256970 (A179865 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179923.P12503820750961728018

/-! ## A179923.P9382498674941266888

`record[A014442(∑[2*(n+1)])]`
-/

namespace A179923.P9382498674941266888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179923.P9382498674941266888

/-! ## A179923.P13056464483679391521

`record[A089120(∑[2*(n+1)])]`
-/

namespace A179923.P13056464483679391521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179923.P13056464483679391521

/-!
# A179924: Primes with embedded primes.

The programs for A179924, there is no canonical definition to state claims against.
-/

/-! ## A179924.P12131077903455351813

`p?[A000040(A039996(n+1))%2*A000040(n+1)]`
-/

namespace A179924.P12131077903455351813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A039996 (n + 1)).toNat) 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179924.P12131077903455351813

/-! ## A179924.P3193299270975677720

`p?[A079397(A079066(n+1))%2*A000040(n+1)]`
-/

namespace A179924.P3193299270975677720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079397 (A079066 (n + 1)).toNat) 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179924.P3193299270975677720

/-! ## A179924.P5975929991207820940

`p?[A000040(n+1)%A000040(A039996(n+1)+n)]`
-/

namespace A179924.P5975929991207820940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A000040 (A039996 (n + 1) + (n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179924.P5975929991207820940

/-! ## A179924.P2129269476822532563

`p?[lt[A211396(n), n]]`
-/

namespace A179924.P2129269476822532563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A179924.P2129269476822532563

/-! ## A179924.P4994617926533838836

`p?[n%A008458(n-A211396(n))]`
-/

namespace A179924.P4994617926533838836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A008458 ((n : ℤ) - A211396 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179924.P4994617926533838836

/-! ## A179924.P16105906632153928076

`p?[A005843(n)-n*gcd(n, A211396(n))]`
-/

namespace A179924.P16105906632153928076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (n * Int.gcd (n : ℤ) (A211396 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179924.P16105906632153928076

/-! ## A179924.P3474989037387490908

`p?[(n+1)*A003415(A211396(n+1)%(n+1))]`
-/

namespace A179924.P3474989037387490908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003415 (Int.tmod (A211396 (n + 1)) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179924.P3474989037387490908

/-!
# A179925: Complement of A116959 in the primes.

The programs for A179925, there is no canonical definition to state claims against.
-/

/-! ## A179925.P5177906286275653390

`p?[A325770(A325769(n))+A325755(n+1)]`
-/

namespace A179925.P5177906286275653390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (A325769 n).toNat + A325755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179925.P5177906286275653390

/-! ## A179925.P13963708175232614239

`A164022(A315345(n))-A318877(A061021(n))`
-/

namespace A179925.P13963708175232614239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164022 (A315345 n).toNat - A318877 (A061021 n).toNat

end

end A179925.P13963708175232614239

/-!
# A179926: Number of permutations of the divisors of n of the form d_1=n, d_2, d_3, ..., d_tau(n) such that d_(i+1)/d_i is a prime or 1/prime for all i.

The programs for A179926, there is no canonical definition to state claims against.
-/

/-! ## A179926.P2767162850499423599

`A295785(A101296(n+1))`
-/

namespace A179926.P2767162850499423599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295785 (A101296 (n + 1)).toNat

end

end A179926.P2767162850499423599

/-! ## A179926.P5854140242763691350

`A134667(A006370(n²))+A080713(A285572(n+1))`
-/

namespace A179926.P5854140242763691350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 (A006370 (n ^ 2)).toNat + A080713 (A285572 (n + 1)).toNat

end

end A179926.P5854140242763691350

/-! ## A179926.P6073073086304122242

`A080713(A285572(n+1)%A296244(n+1))`
-/

namespace A179926.P6073073086304122242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080713 (Int.tmod (A285572 (n + 1)) (A296244 (n + 1))).toNat

end

end A179926.P6073073086304122242

/-! ## A179926.P13005926854461192851

`A080713(A285572(n+1))%A320325(n+1)`
-/

namespace A179926.P13005926854461192851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080713 (A285572 (n + 1)).toNat) (A320325 (n + 1))

end

end A179926.P13005926854461192851

/-! ## A179926.P13813926133694700282

`A080713(A285572(n+1))*A244328(A198387(n+1))`
-/

namespace A179926.P13813926133694700282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080713 (A285572 (n + 1)).toNat * A244328 (A198387 (n + 1)).toNat

end

end A179926.P13813926133694700282

/-! ## A179926.P12640165305267260395

`A134667(A093922(n+1)+1)+A080713(A285572(n+1))`
-/

namespace A179926.P12640165305267260395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 (A093922 (n + 1) + 1).toNat + A080713 (A285572 (n + 1)).toNat

end

end A179926.P12640165305267260395

/-! ## A179926.P7780948489913093153

`A134667((2*n)²)+A080713(A285572(n+1))`
-/

namespace A179926.P7780948489913093153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 ((2 * n) ^ 2) + A080713 (A285572 (n + 1)).toNat

end

end A179926.P7780948489913093153

/-!
# A179927: Triangle of centered orthotopic numbers.

The programs for A179927, there is no canonical definition to state claims against.
-/

/-! ## A179927.P14706394157481082060

`A009998(n)+A004248(round(sqrt(n²+1)))`
-/

namespace A179927.P14706394157481082060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n + A004248 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A179927.P14706394157481082060

/-! ## A179927.P17314511988480371145

`gcd(A009998(n)+A004248(n), C(n, n²))`
-/

namespace A179927.P17314511988480371145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009998 n + A004248 n) (Nat.choose n (n ^ 2) : ℤ)

end

end A179927.P17314511988480371145

/-! ## A179927.P3428705442418163658

`A009998(n)+A156354(n)-A003992(n)`
-/

namespace A179927.P3428705442418163658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n + (A156354 n - A003992 n)

end

end A179927.P3428705442418163658

/-! ## A179927.P7194387753146380558

`A009998(n)+A004248(n)%A051129(n+1)`
-/

namespace A179927.P7194387753146380558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n + Int.tmod (A004248 n) (A051129 (n + 1))

end

end A179927.P7194387753146380558

/-! ## A179927.P10846678821505774760

`A004248(n)+A009998(n)%A199673(n+1)`
-/

namespace A179927.P10846678821505774760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n + Int.tmod (A009998 n) (A199673 (n + 1))

end

end A179927.P10846678821505774760

/-!
# A179928: Row sums of A179927, the triangle of centered orthotopic numbers.

The programs for A179928, there is no canonical definition to state claims against.
-/

/-! ## A179928.P1750588001417893591

`Δ[A112740(n+1)+floor(1/(n+1))]`
-/

namespace A179928.P1750588001417893591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112740 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179928.P1750588001417893591

/-! ## A179928.P12043650874367057633

`Δ[A112740(n+1)]-A000007(n)`
-/

namespace A179928.P12043650874367057633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000007 n

end

end A179928.P12043650874367057633

/-! ## A179928.P1897844290961234959

`Δ[A112740(n+1)]-A008683((n+1)²)`
-/

namespace A179928.P1897844290961234959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008683 ((n + 1) ^ 2)

end

end A179928.P1897844290961234959

/-! ## A179928.P17850359402808372241

`Δ[A112740(n+1)]+A001221(A001316(n))-1`
-/

namespace A179928.P17850359402808372241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A001221 (A001316 n).toNat - 1)

end

end A179928.P17850359402808372241

/-! ## A179928.P10423527851496784765

`Δ[A112740(n+1)]^A001221(A008578(n+1))`
-/

namespace A179928.P10423527851496784765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112740 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A001221 (A008578 (n + 1)).toNat : ℤ)

end

end A179928.P10423527851496784765

/-!
# A179929: a(n) = 2^n*A(n, -1/2), A(n, x) the Eulerian polynomials.

The programs for A179929, there is no canonical definition to state claims against.
-/

/-! ## A179929.P453733269325412270

`A212846(n)*A212847(n²%(n+1))`
-/

namespace A179929.P453733269325412270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212846 n * A212847 (n ^ 2 % (n + 1))

end

end A179929.P453733269325412270

/-! ## A179929.P14280476376929209274

`A114327(A001844(n))*A212846(n)`
-/

namespace A179929.P14280476376929209274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A001844 n).toNat * A212846 n

end

end A179929.P14280476376929209274

/-! ## A179929.P14182185352139347600

`A212846(n)*A212847(A178334(n))`
-/

namespace A179929.P14182185352139347600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212846 n * A212847 (A178334 n).toNat

end

end A179929.P14182185352139347600

/-! ## A179929.P12632475448582830040

`A087674(n)*A280560(A087156(n+1))`
-/

namespace A179929.P12632475448582830040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087674 n * A280560 (A087156 (n + 1)).toNat

end

end A179929.P12632475448582830040

/-! ## A179929.P2091216587743501479

`A023900(A098355(n))*A212846(n)`
-/

namespace A179929.P2091216587743501479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A098355 n).toNat * A212846 n

end

end A179929.P2091216587743501479

/-!
# A179930: a(n) = gcd(n, A001157(n)).

The programs for A179930, the canonical program `A179930.P8969113194631761570` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179930 has offset 1).

The definition of A179930 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179930.P8969113194631761570

`gcd(n+1, A001157(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A179930

/-- `gcd(n+1, A001157(n+1))` -/
def P8969113194631761570.Spec : Prop :=
  ∀ n, (P8969113194631761570.a n : ℤ) = A179930 (n + 1)

theorem P8969113194631761570.correct : P8969113194631761570.Spec := by
  intro n
  simp only [A179930, Nat.add_sub_cancel]

end A179930

/-! ## A179930.P8147711264774662322

`gcd(2*n+1-n, A067558(n+1))`
-/

namespace A179930.P8147711264774662322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (A067558 (n + 1))

end

end A179930.P8147711264774662322

namespace A179930

/-- `gcd(2*n+1-n, A067558(n+1))` -/
def P8147711264774662322.Spec : Prop :=
  ∀ n, (P8147711264774662322.a n : ℤ) = A179930 (n + 1)

end A179930

/-! ## A179930.P1322677150907117096

`gcd(A000027(n+1), A189835(n+1))`
-/

namespace A179930.P1322677150907117096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A189835 (n + 1))

end

end A179930.P1322677150907117096

namespace A179930

/-- `gcd(A000027(n+1), A189835(n+1))` -/
def P1322677150907117096.Spec : Prop :=
  ∀ n, (P1322677150907117096.a n : ℤ) = A179930 (n + 1)

end A179930

/-! ## A179930.P7324464586499571209

`gcd(A005451(n+1), A338935(n+1))`
-/

namespace A179930.P7324464586499571209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A338935 (n + 1))

end

end A179930.P7324464586499571209

namespace A179930

/-- `gcd(A005451(n+1), A338935(n+1))` -/
def P7324464586499571209.Spec : Prop :=
  ∀ n, (P7324464586499571209.a n : ℤ) = A179930 (n + 1)

end A179930

/-! ## A179930.P2336876575370620433

`gcd(A338935(n+1)+A245695(n+1), A245695(n+1))`
-/

namespace A179930.P2336876575370620433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A338935 (n + 1) + A245695 (n + 1)) (A245695 (n + 1))

end

end A179930.P2336876575370620433

namespace A179930

/-- `gcd(A338935(n+1)+A245695(n+1), A245695(n+1))` -/
def P2336876575370620433.Spec : Prop :=
  ∀ n, (P2336876575370620433.a n : ℤ) = A179930 (n + 1)

end A179930

/-! ## A179930.P16639794433854598877

`gcd(n*A189835(n+1), A096458(n+1))`
-/

namespace A179930.P16639794433854598877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A189835 (n + 1)) (A096458 (n + 1))

end

end A179930.P16639794433854598877

namespace A179930

/-- `gcd(n*A189835(n+1), A096458(n+1))` -/
def P16639794433854598877.Spec : Prop :=
  ∀ n, (P16639794433854598877.a n : ℤ) = A179930 (n + 1)

end A179930

/-! ## A179930.P4820224857748504044

`gcd(A096458(n+1), A189835(A096458(n+1)))`
-/

namespace A179930.P4820224857748504044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096458 (n + 1)) (A189835 (A096458 (n + 1)).toNat)

end

end A179930.P4820224857748504044

namespace A179930

/-- `gcd(A096458(n+1), A189835(A096458(n+1)))` -/
def P4820224857748504044.Spec : Prop :=
  ∀ n, (P4820224857748504044.a n : ℤ) = A179930 (n + 1)

end A179930

/-!
# A179931: a(n) = gcd(sigma(n), sigma_2(n)).

The programs for A179931, the canonical program `A179931.P16697246869239466930` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179931 has offset 1).

The definition of A179931 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179931.P16697246869239466930

`gcd(A000203(n+1), A001157(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A179931

/-- `gcd(A000203(n+1), A001157(n+1))` -/
def P16697246869239466930.Spec : Prop :=
  ∀ n, (P16697246869239466930.a n : ℤ) = A179931 (n + 1)

theorem P16697246869239466930.correct : P16697246869239466930.Spec := by
  intro n
  simp only [A179931, Nat.add_sub_cancel]

end A179931

/-! ## A179931.P9705284910683504923

`gcd(∑{d}[n+1, #²], ∑{d}[n+1, #])`
-/

namespace A179931.P9705284910683504923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ d ∈ Nat.divisors (f1 n), d ^ 2) (∑ d ∈ Nat.divisors (f2 n), d)

end

end A179931.P9705284910683504923

namespace A179931

/-- `gcd(∑{d}[n+1, #²], ∑{d}[n+1, #])` -/
def P9705284910683504923.Spec : Prop :=
  ∀ n, (P9705284910683504923.a n : ℤ) = A179931 (n + 1)

end A179931

/-! ## A179931.P1507638687441600960

`gcd(∑{d}[n+1, #²], A074400(n+1))`
-/

namespace A179931.P1507638687441600960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) (A074400 (n + 1))

end

end A179931.P1507638687441600960

namespace A179931

/-- `gcd(∑{d}[n+1, #²], A074400(n+1))` -/
def P1507638687441600960.Spec : Prop :=
  ∀ n, (P1507638687441600960.a n : ℤ) = A179931 (n + 1)

end A179931

/-! ## A179931.P9889325389595288964

`A000203(n+1)/A158275(n+1)`
-/

namespace A179931.P9889325389595288964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A158275 (n + 1) : ℚ)

end

end A179931.P9889325389595288964

namespace A179931

/-- `A000203(n+1)/A158275(n+1)` -/
def P9889325389595288964.Spec : Prop :=
  ∀ n, P9889325389595288964.a n = (A179931 (n + 1) : ℚ)

end A179931

/-! ## A179931.P3108727610191186691

`A001157(n+1)/A158274(n+1)`
-/

namespace A179931.P3108727610191186691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A158274 (n + 1) : ℚ)

end

end A179931.P3108727610191186691

namespace A179931

/-- `A001157(n+1)/A158274(n+1)` -/
def P3108727610191186691.Spec : Prop :=
  ∀ n, P3108727610191186691.a n = (A179931 (n + 1) : ℚ)

end A179931

/-! ## A179931.P617738198763948520

`gcd(A072779(n+1), A143348(n+1))`
-/

namespace A179931.P617738198763948520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072779 (n + 1)) (A143348 (n + 1))

end

end A179931.P617738198763948520

namespace A179931

/-- `gcd(A072779(n+1), A143348(n+1))` -/
def P617738198763948520.Spec : Prop :=
  ∀ n, (P617738198763948520.a n : ℤ) = A179931 (n + 1)

end A179931

/-! ## A179931.P12289349214116466602

`gcd(A074400(n+1), A308047(n+1))`
-/

namespace A179931.P12289349214116466602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074400 (n + 1)) (A308047 (n + 1))

end

end A179931.P12289349214116466602

namespace A179931

/-- `gcd(A074400(n+1), A308047(n+1))` -/
def P12289349214116466602.Spec : Prop :=
  ∀ n, (P12289349214116466602.a n : ℤ) = A179931 (n + 1)

end A179931

/-! ## A179931.P17818393952684592989

`A379812(n+1)/(A000203(n+1)*A158274(n+1))`
-/

namespace A179931.P17818393952684592989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379812 (n + 1) : ℚ) / (A000203 (n + 1) * A158274 (n + 1) : ℚ)

end

end A179931.P17818393952684592989

namespace A179931

/-- `A379812(n+1)/(A000203(n+1)*A158274(n+1))` -/
def P17818393952684592989.Spec : Prop :=
  ∀ n, P17818393952684592989.a n = (A179931 (n + 1) : ℚ)

end A179931

/-! ## A179931.P6424379980666377220

`A379812(n+1)/(A001157(n+1)*A158275(n+1))`
-/

namespace A179931.P6424379980666377220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379812 (n + 1) : ℚ) / (A001157 (n + 1) * A158275 (n + 1) : ℚ)

end

end A179931.P6424379980666377220

namespace A179931

/-- `A379812(n+1)/(A001157(n+1)*A158275(n+1))` -/
def P6424379980666377220.Spec : Prop :=
  ∀ n, P6424379980666377220.a n = (A179931 (n + 1) : ℚ)

end A179931

/-! ## A179931.P9308961784169268275

`gcd(A143348(n+1)+A086666(n+1), A086666(n+1))`
-/

namespace A179931.P9308961784169268275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1) + A086666 (n + 1)) (A086666 (n + 1))

end

end A179931.P9308961784169268275

namespace A179931

/-- `gcd(A143348(n+1)+A086666(n+1), A086666(n+1))` -/
def P9308961784169268275.Spec : Prop :=
  ∀ n, (P9308961784169268275.a n : ℤ) = A179931 (n + 1)

end A179931

/-! ## A179931.P11221426980637398976

`gcd(A088580(n+1)-1, A103636(3*(n+1))/9)`
-/

namespace A179931.P11221426980637398976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088580 (n + 1) - 1) (SequenceMachineLib.roundAway ((A103636 (3 * (n + 1)) : ℚ) / 9))

end

end A179931.P11221426980637398976

namespace A179931

/-- `gcd(A088580(n+1)-1, A103636(3*(n+1))/9)` -/
def P11221426980637398976.Spec : Prop :=
  ∀ n, (P11221426980637398976.a n : ℤ) = A179931 (n + 1)

end A179931

/-!
# A179932: Number of distinct positive integers that can be formed with the decimal digits of n.

The programs for A179932, there is no canonical definition to state claims against.
-/

/-! ## A179932.P10910250370072558545

`floor(A061487(n+1)/A061500(n+1))`
-/

namespace A179932.P10910250370072558545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061487 (n + 1) : ℚ) / (A061500 (n + 1) : ℚ)⌋

end

end A179932.P10910250370072558545

/-! ## A179932.P4792979921472835728

`A061901(n+1)-A000007(A007954(n+1))`
-/

namespace A179932.P4792979921472835728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 (n + 1) - A000007 (A007954 (n + 1)).toNat

end

end A179932.P4792979921472835728

/-! ## A179932.P17442045663507905583

`A355735(A123895(n+1)+1)`
-/

namespace A179932.P17442045663507905583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355735 (A123895 (n + 1) + 1).toNat

end

end A179932.P17442045663507905583

/-! ## A179932.P13816398976494564030

`A173304(A123895(n+1)+A047726(n+1))`
-/

namespace A179932.P13816398976494564030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173304 (A123895 (n + 1) + A047726 (n + 1)).toNat

end

end A179932.P13816398976494564030

/-! ## A179932.P9386525827318749690

`A333381(or(A123895(n+1)-1, A123895(n+1)))`
-/

namespace A179932.P9386525827318749690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (Int.lor (A123895 (n + 1) - 1) (A123895 (n + 1))).toNat

end

end A179932.P9386525827318749690

/-! ## A179932.P6764489987704425857

`A061901(n+1)-A102683(n)^A334725(n+1)`
-/

namespace A179932.P6764489987704425857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061901 (n + 1) : ℚ) - (A102683 n : ℚ) ^ (A334725 (n + 1) : ℤ)

end

end A179932.P6764489987704425857

/-! ## A179932.P10612760829134941208

`A061901(A260529(n+1)+A213217(n))`
-/

namespace A179932.P10612760829134941208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 (A260529 (n + 1) + A213217 n).toNat

end

end A179932.P10612760829134941208

/-! ## A179932.P4521894694359537844

`A061901(A260529(n)+A260529(n+1))`
-/

namespace A179932.P4521894694359537844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 (A260529 n + A260529 (n + 1)).toNat

end

end A179932.P4521894694359537844

/-!
# A179934: Expansion of x*(4+5*x-13*x^2-x^3+x^4) / ( (1-x)*(1-10*x^2+x^4) ).

The programs for A179934, the canonical program `A179934.P8884875064244638553` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179934 has offset 1).

The definition of A179934 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4+5x-13x^2-x^3+x^4)/(1-x-10x^2+10x^3+x^4-x^5))` (program `A179934.P8884875064244638553`, by `A179934.P8884875064244638553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179934.P8884875064244638553

`ogf((4+5x-13x^2-x^3+x^4)/(1-x-10x^2+10x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179934

/-- `ogf((4+5x-13x^2-x^3+x^4)/(1-x-10x^2+10x^3+x^4-x^5))` -/
def P8884875064244638553.Spec : Prop :=
  ∀ n, P8884875064244638553.a n = A179934 (n + 1)

theorem P8884875064244638553.correct : P8884875064244638553.Spec := by
  intro n
  simp only [A179934, Nat.add_sub_cancel]

end A179934

/-! ## A179934.P2958557979925362029

`a(n-1)+10*a(n-2)-10*a(n-3)-a(n-4)+a(n-5)` with `a(0)=4, a(1)=9, a(2)=36, a(3)=85, a(4)=352`
-/

namespace A179934.P2958557979925362029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9, 36, 85, 352] fun n a =>
  a (n - 1) + 10 * a (n - 2) - 10 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A179934.P2958557979925362029

namespace A179934

/-- `a(n-1)+10*a(n-2)-10*a(n-3)-a(n-4)+a(n-5)` -/
def P2958557979925362029.Spec : Prop :=
  ∀ n, P2958557979925362029.a n = A179934 (n + 1)

end A179934

/-! ## A179934.P16553379275948239065

`A077291(n+1)+1`
-/

namespace A179934.P16553379275948239065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077291 (n + 1) + 1

end

end A179934.P16553379275948239065

namespace A179934

/-- `A077291(n+1)+1` -/
def P16553379275948239065.Spec : Prop :=
  ∀ n, P16553379275948239065.a n = A179934 (n + 1)

end A179934

/-! ## A179934.P2077304739462142492

`A180483(n+1)-2`
-/

namespace A179934.P2077304739462142492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180483 (n + 1) - 2

end

end A179934.P2077304739462142492

namespace A179934

/-- `A180483(n+1)-2` -/
def P2077304739462142492.Spec : Prop :=
  ∀ n, P2077304739462142492.a n = A179934 (n + 1)

end A179934

/-! ## A179934.P12992380686926052721

`round(A216073(n+2)/2)`
-/

namespace A179934.P12992380686926052721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A216073 (n + 2) : ℚ) / 2)

end

end A179934.P12992380686926052721

namespace A179934

/-- `round(A216073(n+2)/2)` -/
def P12992380686926052721.Spec : Prop :=
  ∀ n, P12992380686926052721.a n = A179934 (n + 1)

end A179934

/-! ## A179934.P4426020161902418009

`Δ[∑[A180483(n)]-2*n]`
-/

namespace A179934.P4426020161902418009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180483 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179934.P4426020161902418009

namespace A179934

/-- `Δ[∑[A180483(n)]-2*n]` -/
def P4426020161902418009.Spec : Prop :=
  ∀ n, P4426020161902418009.a n = A179934 (n + 1)

end A179934

/-! ## A179934.P7028706894470215298

`xor(2, A180483(A000027(n+1)))`
-/

namespace A179934.P7028706894470215298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A180483 (A000027 (n + 1)).toNat)

end

end A179934.P7028706894470215298

namespace A179934

/-- `xor(2, A180483(A000027(n+1)))` -/
def P7028706894470215298.Spec : Prop :=
  ∀ n, P7028706894470215298.a n = A179934 (n + 1)

end A179934

/-! ## A179934.P14230361290646420382

`A080806(n+2)+∑[A080872(n)]`
-/

namespace A179934.P14230361290646420382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179934.P14230361290646420382

namespace A179934

/-- `A080806(n+2)+∑[A080872(n)]` -/
def P14230361290646420382.Spec : Prop :=
  ∀ n, P14230361290646420382.a n = A179934 (n + 1)

end A179934

/-! ## A179934.P10381956158775359847

`A129444(n+2)+A080806(n+2)`
-/

namespace A179934.P10381956158775359847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129444 (n + 2) + A080806 (n + 2)

end

end A179934.P10381956158775359847

namespace A179934

/-- `A129444(n+2)+A080806(n+2)` -/
def P10381956158775359847.Spec : Prop :=
  ∀ n, P10381956158775359847.a n = A179934 (n + 1)

end A179934

/-! ## A179934.P877170992123821006

`A165517(n+2)+2-A080806(n+2)`
-/

namespace A179934.P877170992123821006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165517 (n + 2) + (2 - A080806 (n + 2))

end

end A179934.P877170992123821006

namespace A179934

/-- `A165517(n+2)+2-A080806(n+2)` -/
def P877170992123821006.Spec : Prop :=
  ∀ n, P877170992123821006.a n = A179934 (n + 1)

end A179934

/-! ## A179934.P2408658436862025775

`(A216073(n+2)+A033999(2*n))/2`
-/

namespace A179934.P2408658436862025775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216073 (n + 2) + A033999 (2 * n) : ℚ) / 2

end

end A179934.P2408658436862025775

namespace A179934

/-- `(A216073(n+2)+A033999(2*n))/2` -/
def P2408658436862025775.Spec : Prop :=
  ∀ n, P2408658436862025775.a n = (A179934 (n + 1) : ℚ)

end A179934

/-! ## A179934.P5575834352090256250

`(A216073(n+2)+A062157(2*n+1))/2`
-/

namespace A179934.P5575834352090256250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216073 (n + 2) + A062157 (2 * n + 1) : ℚ) / 2

end

end A179934.P5575834352090256250

namespace A179934

/-- `(A216073(n+2)+A062157(2*n+1))/2` -/
def P5575834352090256250.Spec : Prop :=
  ∀ n, P5575834352090256250.a n = (A179934 (n + 1) : ℚ)

end A179934

/-! ## A179934.P1119500596898526262

`(A216073(n+2)+A215036(2*(n+1)))/2`
-/

namespace A179934.P1119500596898526262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216073 (n + 2) + A215036 (2 * (n + 1)) : ℚ) / 2

end

end A179934.P1119500596898526262

namespace A179934

/-- `(A216073(n+2)+A215036(2*(n+1)))/2` -/
def P1119500596898526262.Spec : Prop :=
  ∀ n, P1119500596898526262.a n = (A179934 (n + 1) : ℚ)

end A179934

/-!
# A179935: Squares where the number of decimal digits is also a square.

The programs for A179935, there is no canonical definition to state claims against.
-/

/-! ## A179935.P13015793754347283734

`A217761(n+1)²`
-/

namespace A179935.P13015793754347283734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217761 (n + 1) ^ 2

end

end A179935.P13015793754347283734

/-! ## A179935.P7432051727767281925

`((n+28)%A030906(n+1))²`
-/

namespace A179935.P7432051727767281925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 28 : ℤ) (A030906 (n + 1)) ^ 2

end

end A179935.P7432051727767281925

/-! ## A179935.P2816822093528320086

`(28%(A026928((n+1)²)-2)+n)²`
-/

namespace A179935.P2816822093528320086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod 28 (A026928 ((n + 1) ^ 2) - 2) + (n : ℤ)) ^ 2

end

end A179935.P2816822093528320086

/-! ## A179935.P13292179477178097919

`A002620(2*A217761(n+1))`
-/

namespace A179935.P13292179477178097919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A217761 (n + 1)).toNat

end

end A179935.P13292179477178097919

/-! ## A179935.P16859535121769156743

`A185395(3*A217761(n+1))`
-/

namespace A179935.P16859535121769156743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185395 (3 * A217761 (n + 1)).toNat

end

end A179935.P16859535121769156743

/-!
# A179936: E.g.f. satisfies: A(A(x))^3 = A(x)^3 * A'(x).

The programs for A179936, there is no canonical definition to state claims against.
-/

/-! ## A179936.P13573551112702749537

`A371568(A019453(n))`
-/

namespace A179936.P13573551112702749537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371568 (A019453 n).toNat

end

end A179936.P13573551112702749537

/-!
# A179937: a(n) is the product of the non-palindromic divisors of n.

The programs for A179937, there is no canonical definition to state claims against.
-/

/-! ## A179937.P17319905377572144908

`A007955(n+1)/A184392(n+1)`
-/

namespace A179937.P17319905377572144908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A184392 (n + 1) : ℚ)

end

end A179937.P17319905377572144908

/-! ## A179937.P7916246498495411921

`(n+1)*A007956(n+1)/A184392(n+1)`
-/

namespace A179937.P7916246498495411921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A007956 (n + 1) : ℚ) / (A184392 (n + 1) : ℚ)

end

end A179937.P7916246498495411921

/-! ## A179937.P5325449138461255519

`sqrt(n+1)^Δ[A006218(n)]/A184392(n+1)`
-/

namespace A179937.P5325449138461255519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (f1 (n + 1) - f1 n : ℤ) / (A184392 (n + 1) : ℝ)

end

end A179937.P5325449138461255519

/-! ## A179937.P9135348794715412135

`sqrt(n+1)^A000005(n+1)/A184392(n+1)`
-/

namespace A179937.P9135348794715412135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ) / (A184392 (n + 1) : ℝ)

end

end A179937.P9135348794715412135

/-! ## A179937.P3777026168876223317

`ceil(A338576(n+1)/(n+1))/A184392(n+1)`
-/

namespace A179937.P3777026168876223317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A338576 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ : ℚ) / (A184392 (n + 1) : ℚ)

end

end A179937.P3777026168876223317

/-! ## A179937.P1333881345353669244

`(n+1)^(A000005(C(n+1, n))/2)/A184392(n+1)`
-/

namespace A179937.P1333881345353669244
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (Nat.choose (n + 1) n) : ℚ) / 2 : ℝ) / (A184392 (n + 1) : ℝ)

end

end A179937.P1333881345353669244

/-! ## A179937.P18202642356479213146

`A306705(n+1)/(A184392(n+1)*A211776(n+1))`
-/

namespace A179937.P18202642356479213146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) : ℚ) / (A184392 (n + 1) * A211776 (n + 1) : ℚ)

end

end A179937.P18202642356479213146

/-! ## A179937.P181274330781082016

`sqrt(A062758(n+1))/A184392(n+1)`
-/

namespace A179937.P181274330781082016
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) / (A184392 (n + 1) : ℝ)

end

end A179937.P181274330781082016

/-!
# A179938: Third largest prime factor of numbers that are divisible by at least three different primes (A000977).

The programs for A179938, the canonical program `A179938.P14437235628728930020` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179938 has offset 1).

The definition of A179938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179938.P14437235628728930020

`A006530(A000977(n+1)/A179312(A000977(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A179938

/-- `A006530(A000977(n+1)/A179312(A000977(n+1)))` -/
def P14437235628728930020.Spec : Prop :=
  ∀ n, P14437235628728930020.a n = A179938 (n + 1)

theorem P14437235628728930020.correct : P14437235628728930020.Spec := by
  intro n
  simp only [A179938, Nat.add_sub_cancel]

end A179938

/-! ## A179938.P2639823305017079801

`A087436(abs(A000977(n+1)*A123271(n+2)))`
-/

namespace A179938.P2639823305017079801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 |A000977 (n + 1) * A123271 (n + 2)|.toNat

end

end A179938.P2639823305017079801

namespace A179938

/-- `A087436(abs(A000977(n+1)*A123271(n+2)))` -/
def P2639823305017079801.Spec : Prop :=
  ∀ n, P2639823305017079801.a n = A179938 (n + 1)

end A179938

/-! ## A179938.P9033697058091561033

`A087436(abs(A000977(n+1)/A123271(n+2)))`
-/

namespace A179938.P9033697058091561033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (SequenceMachineLib.roundAway |(A000977 (n + 1) : ℚ) / (A123271 (n + 2) : ℚ)|).toNat

end

end A179938.P9033697058091561033

namespace A179938

/-- `A087436(abs(A000977(n+1)/A123271(n+2)))` -/
def P9033697058091561033.Spec : Prop :=
  ∀ n, P9033697058091561033.a n = A179938 (n + 1)

end A179938

/-! ## A179938.P14070248975298654339

`A087436(A123271(n+2)²*A000977(n+1))`
-/

namespace A179938.P14070248975298654339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A123271 (n + 2) ^ 2 * A000977 (n + 1)).toNat

end

end A179938.P14070248975298654339

namespace A179938

/-- `A087436(A123271(n+2)²*A000977(n+1))` -/
def P14070248975298654339.Spec : Prop :=
  ∀ n, P14070248975298654339.a n = A179938 (n + 1)

end A179938

/-! ## A179938.P16756351785063243451

`A087436(A000977(n+1)/A123271(n+2)²)`
-/

namespace A179938.P16756351785063243451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (SequenceMachineLib.roundAway ((A000977 (n + 1) : ℚ) / (A123271 (n + 2) ^ 2 : ℚ))).toNat

end

end A179938.P16756351785063243451

namespace A179938

/-- `A087436(A000977(n+1)/A123271(n+2)²)` -/
def P16756351785063243451.Spec : Prop :=
  ∀ n, P16756351785063243451.a n = A179938 (n + 1)

end A179938

/-!
# A179940: Number of times n appears in a 10 X 10 multiplication table.

The programs for A179940, the canonical program `A179940.P5430644446944184163` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179940 has offset 1).

The definition of A179940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179940.P5430644446944184163

`∑{d}[2*(n+1), (21-#)%2]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179940

/-- `∑{d}[2*(n+1), (21-#)%2]` -/
def P5430644446944184163.Spec : Prop :=
  ∀ n, P5430644446944184163.a n = A179940 (n + 1)

theorem P5430644446944184163.correct : P5430644446944184163.Spec := by
  intro n
  simp only [A179940, Nat.add_sub_cancel]

end A179940

/-! ## A179940.P8292018385544079564

`∑{d}[n+1, 1-2%A029134(#)]`
-/

namespace A179940.P8292018385544079564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - Int.tmod 2 (A029134 d))

end

end A179940.P8292018385544079564

namespace A179940

/-- `∑{d}[n+1, 1-2%A029134(#)]` -/
def P8292018385544079564.Spec : Prop :=
  ∀ n, P8292018385544079564.a n = A179940 (n + 1)

end A179940

/-! ## A179940.P2499958033445138798

`∑{d}[n+1, A112348(#)^2]%5`
-/

namespace A179940.P2499958033445138798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A112348 d ^ 2) 5

end

end A179940.P2499958033445138798

namespace A179940

/-- `∑{d}[n+1, A112348(#)^2]%5` -/
def P2499958033445138798.Spec : Prop :=
  ∀ n, P2499958033445138798.a n = A179940 (n + 1)

end A179940

/-! ## A179940.P12423212514609512001

`∑{d}[n+1, A299912(floor(20/#)+1)]`
-/

namespace A179940.P12423212514609512001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A299912 (⌊20 / (d : ℚ)⌋ + 1).toNat

end

end A179940.P12423212514609512001

namespace A179940

/-- `∑{d}[n+1, A299912(floor(20/#)+1)]` -/
def P12423212514609512001.Spec : Prop :=
  ∀ n, P12423212514609512001.a n = A179940 (n + 1)

end A179940

/-! ## A179940.P4576788929080442499

`∑{d}[n+1, A011605(A163400(#))]`
-/

namespace A179940.P4576788929080442499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011605 (A163400 d).toNat

end

end A179940.P4576788929080442499

namespace A179940

/-- `∑{d}[n+1, A011605(A163400(#))]` -/
def P4576788929080442499.Spec : Prop :=
  ∀ n, P4576788929080442499.a n = A179940 (n + 1)

end A179940

/-! ## A179940.P14241815978995206726

`∑{d}[n+1, A320485(A139337(#-1))]`
-/

namespace A179940.P14241815978995206726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A320485 (A139337 (d - 1)).toNat

end

end A179940.P14241815978995206726

namespace A179940

/-- `∑{d}[n+1, A320485(A139337(#-1))]` -/
def P14241815978995206726.Spec : Prop :=
  ∀ n, P14241815978995206726.a n = A179940 (n + 1)

end A179940

/-!
# A179941: Number of times n appears in a 100 X 100 multiplication table.

The programs for A179941, the canonical program `A179941.P10165421184791566737` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179941 has offset 1).

The definition of A179941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179941.P10909988902872954904

`A000005(n+1)-A333382(A196222(n))`
-/

namespace A179941.P10909988902872954904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A333382 (A196222 n).toNat

end

end A179941.P10909988902872954904

namespace A179941

/-- `A000005(n+1)-A333382(A196222(n))` -/
def P10909988902872954904.Spec : Prop :=
  ∀ n, P10909988902872954904.a n = A179941 (n + 1)

end A179941

/-! ## A179941.P11454541565189724900

`A000005(n+1)-A083896(A196222(n)²)`
-/

namespace A179941.P11454541565189724900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083896 (A196222 n ^ 2).toNat

end

end A179941.P11454541565189724900

namespace A179941

/-- `A000005(n+1)-A083896(A196222(n)²)` -/
def P11454541565189724900.Spec : Prop :=
  ∀ n, P11454541565189724900.a n = A179941 (n + 1)

end A179941

/-! ## A179941.P3796290218010551318

`A000005(n+1)-A221469(A196222(n)²)`
-/

namespace A179941.P3796290218010551318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A221469 (A196222 n ^ 2).toNat

end

end A179941.P3796290218010551318

namespace A179941

/-- `A000005(n+1)-A221469(A196222(n)²)` -/
def P3796290218010551318.Spec : Prop :=
  ∀ n, P3796290218010551318.a n = A179941 (n + 1)

end A179941

/-! ## A179941.P15244465095823176584

`∑{d}[n+1, gcd(n, #)]%A002414(A239525(n))`
-/

namespace A179941.P15244465095823176584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) (A002414 (A239525 n).toNat)

end

end A179941.P15244465095823176584

namespace A179941

/-- `∑{d}[n+1, gcd(n, #)]%A002414(A239525(n))` -/
def P15244465095823176584.Spec : Prop :=
  ∀ n, P15244465095823176584.a n = A179941 (n + 1)

end A179941

/-! ## A179941.P9985381758568455647

`A000005(n+1)%A011532(A239525(n))`
-/

namespace A179941.P9985381758568455647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) (A011532 (A239525 n).toNat)

end

end A179941.P9985381758568455647

namespace A179941

/-- `A000005(n+1)%A011532(A239525(n))` -/
def P9985381758568455647.Spec : Prop :=
  ∀ n, P9985381758568455647.a n = A179941 (n + 1)

end A179941

/-! ## A179941.P10165421184791566737

`A000005(n+1)-A000038(A096582(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A179941

/-- `A000005(n+1)-A000038(A096582(n+1))` -/
def P10165421184791566737.Spec : Prop :=
  ∀ n, P10165421184791566737.a n = A179941 (n + 1)

theorem P10165421184791566737.correct : P10165421184791566737.Spec := by
  intro n
  simp only [A179941, Nat.add_sub_cancel]

end A179941

/-! ## A179941.P2734120602662417748

`and(A000005(n+1), A000005(A118759(n)+1))`
-/

namespace A179941.P2734120602662417748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (n + 1)) (A000005 (A118759 n + 1).toNat)

end

end A179941.P2734120602662417748

namespace A179941

/-- `and(A000005(n+1), A000005(A118759(n)+1))` -/
def P2734120602662417748.Spec : Prop :=
  ∀ n, P2734120602662417748.a n = A179941 (n + 1)

end A179941

/-!
# A179943: Triangle read by rows, antidiagonals of an array (r,k), r=(0,1,2,...), generated from 2 X 2 matrices of the form [1,r; 1,(r+1)].

The programs for A179943, there is no canonical definition to state claims against.
-/

/-! ## A179943.P12780618072714853822

`A316269(comp[∑[n]]+2)`
-/

namespace A179943.P12780618072714853822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316269 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A179943.P12780618072714853822

/-! ## A179943.P4930683879409853561

`A316269(comp[C(n, 2)]+2)^(C(2, n+2)+1)`
-/

namespace A179943.P4930683879409853561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316269 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) ^ (Nat.choose 2 (n + 2) + 1)

end

end A179943.P4930683879409853561

/-! ## A179943.P602853682039663158

`A033999(n)²*A316269(comp[C(n, 2)]+2)`
-/

namespace A179943.P602853682039663158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A316269 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A179943.P602853682039663158

/-! ## A179943.P10650429740642242453

`A316269(comp[C(n, 2)]+2)+A000007(n+1)`
-/

namespace A179943.P10650429740642242453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316269 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) + A000007 (n + 1)

end

end A179943.P10650429740642242453

/-! ## A179943.P12351211601161996076

`A316269(comp[C(n, 2)]+2)+n*A000038(n)`
-/

namespace A179943.P12351211601161996076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316269 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) + (n : ℤ) * A000038 n

end

end A179943.P12351211601161996076

/-! ## A179943.P11554808308827678014

`A062157(2*n+1)*A316269(comp[C(n, 2)]+2)`
-/

namespace A179943.P11554808308827678014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * n + 1) * A316269 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A179943.P11554808308827678014

/-! ## A179943.P10702090189849952805

`A316269(comp[C(n, 2)]+2)^(2*n-A004273(n))`
-/

namespace A179943.P10702090189849952805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316269 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) : ℚ) ^ ((2 * n : ℤ) - A004273 n : ℤ)

end

end A179943.P10702090189849952805

/-! ## A179943.P8591733249933096366

`A316269(comp[C(n, 2)]+2)+n%2*A257685(n)`
-/

namespace A179943.P8591733249933096366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316269 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) + ((n % 2 : ℕ) : ℤ) * A257685 n

end

end A179943.P8591733249933096366

/-! ## A179943.P17212145091263424018

`A191971(A014132(n+1))*A192062(A014132(n+1))`
-/

namespace A179943.P17212145091263424018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191971 (A014132 (n + 1)).toNat * A192062 (A014132 (n + 1)).toNat

end

end A179943.P17212145091263424018

/-! ## A179943.P15953802768155633356

`A316269(n+2)+A094954(n+1)`
-/

namespace A179943.P15953802768155633356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316269 (n + 2) + A094954 (n + 1)

end

end A179943.P15953802768155633356

/-!
# A179944: Row sums of triangle A179943.

The programs for A179944, there is no canonical definition to state claims against.
-/

/-! ## A179944.P3155632274053996983

`A101162(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A179944.P3155632274053996983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A101162 n + a (n - 2)

end

end A179944.P3155632274053996983

/-! ## A179944.P8156821367463059915

`∑[A094957(n+1)]`
-/

namespace A179944.P8156821367463059915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179944.P8156821367463059915

/-! ## A179944.P1491144208038424253

`∑[record[A094957(ceil(C(or(1, n), n)/2))]]`
-/

namespace A179944.P1491144208038424253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094957 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179944.P1491144208038424253

/-! ## A179944.P3107948777535942495

`∑[record[A094957(A020986(n))]]`
-/

namespace A179944.P3107948777535942495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094957 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179944.P3107948777535942495

/-! ## A179944.P15768105693240461424

`∑[record[A094957(A028920(n))]]`
-/

namespace A179944.P15768105693240461424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094957 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179944.P15768105693240461424

/-!
# A179945: Numbers n such that both A000203(n)-n-1 and A000203(n)-2*n-1 are prime numbers, and sigma(n)-2*n-1 > 5.

The programs for A179945, there is no canonical definition to state claims against.
-/

/-! ## A179945.P6005792743578743884

`A175727(A293754(n+1))`
-/

namespace A179945.P6005792743578743884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175727 (A293754 (n + 1)).toNat

end

end A179945.P6005792743578743884

/-! ## A179945.P1053411913625548529

`filter[A175727(n+1), A079978(#)]`
-/

namespace A179945.P1053411913625548529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A179945.P1053411913625548529

/-! ## A179945.P16020753649730448426

`filter[A175727(n+1), A079979(#)]`
-/

namespace A179945.P16020753649730448426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A179945.P16020753649730448426

/-! ## A179945.P455168332694002821

`filter[A175727(n+1), A088911(#)]`
-/

namespace A179945.P455168332694002821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088911 (f1 j).toNat = 1) n)

end

end A179945.P455168332694002821

/-! ## A179945.P17972764397057491230

`filter[A175727(n+1), A093719(#)]`
-/

namespace A179945.P17972764397057491230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A179945.P17972764397057491230

/-! ## A179945.P9749169263105617150

`filter[A175727(n+1), A117567(#)]`
-/

namespace A179945.P9749169263105617150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A117567 (f1 j).toNat = 1) n)

end

end A179945.P9749169263105617150

/-! ## A179945.P10080465734859813879

`filter[A175727(n+1), A173857(#)]`
-/

namespace A179945.P10080465734859813879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A179945.P10080465734859813879

/-! ## A179945.P560818984223185838

`filter[A175727(n+1), A189706(#)]`
-/

namespace A179945.P560818984223185838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189706 (f1 j).toNat = 1) n)

end

end A179945.P560818984223185838

/-! ## A179945.P2488262750007477963

`filter[A175727(n+1), A204418(#)]`
-/

namespace A179945.P2488262750007477963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204418 (f1 j).toNat = 1) n)

end

end A179945.P2488262750007477963

/-! ## A179945.P9421941700843022486

`filter[A175727(n+1), A210455(#)]`
-/

namespace A179945.P9421941700843022486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A179945.P9421941700843022486

/-!
# A179952: Add 1 to all the divisors of n. a(n) = number of perfect squares in the set.

The programs for A179952, the canonical program `A179952.P16029482898414679396` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179952 has offset 1).

The definition of A179952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179952.P3684956664079024527

`∑{d}[n+1, 1-A267919(#-1)]`
-/

namespace A179952.P3684956664079024527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A267919 (d - 1))

end

end A179952.P3684956664079024527

namespace A179952

/-- `∑{d}[n+1, 1-A267919(#-1)]` -/
def P3684956664079024527.Spec : Prop :=
  ∀ n, P3684956664079024527.a n = A179952 (n + 1)

end A179952

/-! ## A179952.P1572584774169765824

`∑{d}[n+1, A000005(#+1)%2]`
-/

namespace A179952.P1572584774169765824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000005 (d + 1)) 2

end

end A179952.P1572584774169765824

namespace A179952

/-- `∑{d}[n+1, A000005(#+1)%2]` -/
def P1572584774169765824.Spec : Prop :=
  ∀ n, P1572584774169765824.a n = A179952 (n + 1)

end A179952

/-! ## A179952.P16029482898414679396

`A099475((∑[n]+n)%(n+1)+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A179952

/-- `A099475((∑[n]+n)%(n+1)+1)` -/
def P16029482898414679396.Spec : Prop :=
  ∀ n, P16029482898414679396.a n = A179952 (n + 1)

theorem P16029482898414679396.correct : P16029482898414679396.Spec := by
  intro n
  simp only [A179952, Nat.add_sub_cancel]

end A179952

/-! ## A179952.P13077572389670509151

`A099475(A026741(n+1))`
-/

namespace A179952.P13077572389670509151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 (A026741 (n + 1)).toNat

end

end A179952.P13077572389670509151

namespace A179952

/-- `A099475(A026741(n+1))` -/
def P13077572389670509151.Spec : Prop :=
  ∀ n, P13077572389670509151.a n = A179952 (n + 1)

end A179952

/-! ## A179952.P15359313719260221645

`A099475(A186646(n+1))`
-/

namespace A179952.P15359313719260221645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 (A186646 (n + 1)).toNat

end

end A179952.P15359313719260221645

namespace A179952

/-- `A099475(A186646(n+1))` -/
def P15359313719260221645.Spec : Prop :=
  ∀ n, P15359313719260221645.a n = A179952 (n + 1)

end A179952

/-! ## A179952.P591305964387038841

`A099475(A062828(n+1))`
-/

namespace A179952.P591305964387038841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 (A062828 (n + 1)).toNat

end

end A179952.P591305964387038841

namespace A179952

/-- `A099475(A062828(n+1))` -/
def P591305964387038841.Spec : Prop :=
  ∀ n, P591305964387038841.a n = A179952 (n + 1)

end A179952

/-! ## A179952.P6204820217809378607

`A099475(A064680(n+1))`
-/

namespace A179952.P6204820217809378607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 (A064680 (n + 1)).toNat

end

end A179952.P6204820217809378607

namespace A179952

/-- `A099475(A064680(n+1))` -/
def P6204820217809378607.Spec : Prop :=
  ∀ n, P6204820217809378607.a n = A179952 (n + 1)

end A179952

/-! ## A179952.P5739460850984890469

`A099475(A225975(n+1))`
-/

namespace A179952.P5739460850984890469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 (A225975 (n + 1)).toNat

end

end A179952.P5739460850984890469

namespace A179952

/-- `A099475(A225975(n+1))` -/
def P5739460850984890469.Spec : Prop :=
  ∀ n, P5739460850984890469.a n = A179952 (n + 1)

end A179952

/-! ## A179952.P2131548035311683464

`A099475(A371573(2*(n+1))/2)`
-/

namespace A179952.P2131548035311683464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 (SequenceMachineLib.roundAway ((A371573 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A179952.P2131548035311683464

namespace A179952

/-- `A099475(A371573(2*(n+1))/2)` -/
def P2131548035311683464.Spec : Prop :=
  ∀ n, P2131548035311683464.a n = A179952 (n + 1)

end A179952

/-!
# A179953: a(n) is the least exponent k such that q^k >= n, where q is the greatest prime factor of n (= A006530(n)); a(1) = 1 by convention.

The programs for A179953, there is no canonical definition to state claims against.
-/

/-! ## A179953.P9016904099240362822

`A000005(gcd(A003418(n), A046021(n+1)))`
-/

namespace A179953.P9016904099240362822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A003418 n) (A046021 (n + 1)))

end

end A179953.P9016904099240362822

/-! ## A179953.P4340493220164415091

`A361235(A083717(n+1))+1`
-/

namespace A179953.P4340493220164415091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361235 (A083717 (n + 1)).toNat + 1

end

end A179953.P4340493220164415091

/-! ## A179953.P5557439322384932584

`∑{e}[A193143(n+1)*A353271(n+1), #]`
-/

namespace A179953.P5557439322384932584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193143 (n + 1) * A353271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A179953.P5557439322384932584

/-! ## A179953.P1277264433302179793

`A001222(A193143(n+1)*A353271(n+1))`
-/

namespace A179953.P1277264433302179793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A193143 (n + 1) * A353271 (n + 1)).toNat

end

end A179953.P1277264433302179793

/-! ## A179953.P4480125464072371238

`A001222(A353271(n+1)*A353285(n+1))`
-/

namespace A179953.P4480125464072371238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A353271 (n + 1) * A353285 (n + 1)).toNat

end

end A179953.P4480125464072371238

/-! ## A179953.P16711850715091267686

`A001222(lcm(A193143(n+1), A353271(n+1)))`
-/

namespace A179953.P16711850715091267686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A193143 (n + 1)) (A353271 (n + 1)))

end

end A179953.P16711850715091267686

/-!
# A179955: Numbers whose sum of digits is 10 and which contain no 0 digits.

The programs for A179955, the canonical program `A179955.P12787247350186807424` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179955 has offset 1).

The definition of A179955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179955.P2162123891081105019

`record[A017377(A180410(n+1))-n]`
-/

namespace A179955.P2162123891081105019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A180410 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179955.P2162123891081105019

namespace A179955

/-- `record[A017377(A180410(n+1))-n]` -/
def P2162123891081105019.Spec : Prop :=
  ∀ n, P2162123891081105019.a n = A179955 (n + 1)

end A179955

/-! ## A179955.P7889053726002661162

`∩[A052224(n+1), A052382(n+1)]`
-/

namespace A179955.P7889053726002661162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179955.P7889053726002661162

namespace A179955

/-- `∩[A052224(n+1), A052382(n+1)]` -/
def P7889053726002661162.Spec : Prop :=
  ∀ n, (P7889053726002661162.a n : ℤ) = A179955 (n + 1)

end A179955

/-! ## A179955.P8875912012906342773

`record[A004719(A052224(n+1))]`
-/

namespace A179955.P8875912012906342773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A052224 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179955.P8875912012906342773

namespace A179955

/-- `record[A004719(A052224(n+1))]` -/
def P8875912012906342773.Spec : Prop :=
  ∀ n, P8875912012906342773.a n = A179955 (n + 1)

end A179955

/-! ## A179955.P8967615655616830830

`record[A004719(eq[10, A007953(n)])]`
-/

namespace A179955.P8967615655616830830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179955.P8967615655616830830

namespace A179955

/-- `record[A004719(eq[10, A007953(n)])]` -/
def P8967615655616830830.Spec : Prop :=
  ∀ n, P8967615655616830830.a n = A179955 (n + 1)

end A179955

/-! ## A179955.P12787247350186807424

`A098488(10*A009993(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A179955

/-- `A098488(10*A009993(n+2))` -/
def P12787247350186807424.Spec : Prop :=
  ∀ n, P12787247350186807424.a n = A179955 (n + 1)

theorem P12787247350186807424.correct : P12787247350186807424.Spec := by
  intro n
  simp only [A179955, Nat.add_sub_cancel]

end A179955

/-! ## A179955.P1006340023638359414

`filter[A052224(n+1), A168046(#)]`
-/

namespace A179955.P1006340023638359414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A179955.P1006340023638359414

namespace A179955

/-- `filter[A052224(n+1), A168046(#)]` -/
def P1006340023638359414.Spec : Prop :=
  ∀ n, P1006340023638359414.a n = A179955 (n + 1)

end A179955

/-! ## A179955.P3531379168803457726

`filter[A326833(n+2), A168046(#)]`
-/

namespace A179955.P3531379168803457726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326833 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A179955.P3531379168803457726

namespace A179955

/-- `filter[A326833(n+2), A168046(#)]` -/
def P3531379168803457726.Spec : Prop :=
  ∀ n, P3531379168803457726.a n = A179955 (n + 1)

end A179955

/-! ## A179955.P8978298651827444981

`eq[A168046(n)+19, A169805(n)]`
-/

namespace A179955.P8978298651827444981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n + 19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179955.P8978298651827444981

namespace A179955

/-- `eq[A168046(n)+19, A169805(n)]` -/
def P8978298651827444981.Spec : Prop :=
  ∀ n, (P8978298651827444981.a n : ℤ) = A179955 (n + 1)

end A179955

/-! ## A179955.P8550144135031009471

`eq[A004719(n+1), A316650(n+1)]+1`
-/

namespace A179955.P8550144135031009471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316650 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A179955.P8550144135031009471

namespace A179955

/-- `eq[A004719(n+1), A316650(n+1)]+1` -/
def P8550144135031009471.Spec : Prop :=
  ∀ n, (P8550144135031009471.a n : ℤ) = A179955 (n + 1)

end A179955

/-!
# A179956: a(n) is the smallest integer that contains a(n-1) but does not begin with a(n-1).

The programs for A179956, the canonical program `A179956.P7213477808552631948` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179956 has offset 1).

The definition of A179956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179956.P7213477808552631948

`10^n+a(n-1)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179956

/-- `10^n+a(n-1)` -/
def P7213477808552631948.Spec : Prop :=
  ∀ n, (P7213477808552631948.a n : ℤ) = A179956 (n + 1)

theorem P7213477808552631948.correct : P7213477808552631948.Spec := by
  intro n
  simp only [A179956, Nat.add_sub_cancel]

end A179956

/-! ## A179956.P11742386030784964839

`∑[lcm(4, 10^n)]-3`
-/

namespace A179956.P11742386030784964839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (10 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A179956.P11742386030784964839

namespace A179956

/-- `∑[lcm(4, 10^n)]-3` -/
def P11742386030784964839.Spec : Prop :=
  ∀ n, P11742386030784964839.a n = A179956 (n + 1)

end A179956

/-! ## A179956.P10654105135097191719

`∑[(char[1]+1)*10^n]`
-/

namespace A179956.P10654105135097191719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179956.P10654105135097191719

namespace A179956

/-- `∑[(char[1]+1)*10^n]` -/
def P10654105135097191719.Spec : Prop :=
  ∀ n, (P10654105135097191719.a n : ℤ) = A179956 (n + 1)

end A179956

/-! ## A179956.P9189034640826709244

`∑[10^n]+10%(8*n+5)`
-/

namespace A179956.P9189034640826709244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 % (8 * n + 5)

end

end A179956.P9189034640826709244

namespace A179956

/-- `∑[10^n]+10%(8*n+5)` -/
def P9189034640826709244.Spec : Prop :=
  ∀ n, (P9189034640826709244.a n : ℤ) = A179956 (n + 1)

end A179956

/-! ## A179956.P18072483968578548073

`lcm(10, A098406(n))-9`
-/

namespace A179956.P18072483968578548073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 10 (A098406 n) : ℤ) - 9

end

end A179956.P18072483968578548073

namespace A179956

/-- `lcm(10, A098406(n))-9` -/
def P18072483968578548073.Spec : Prop :=
  ∀ n, P18072483968578548073.a n = A179956 (n + 1)

end A179956

/-!
# A179957: Number of permutations of [n] such that |p(i)-p(i-1)|>= 4 for i>1.

The programs for A179957, there is no canonical definition to state claims against.
-/

/-! ## A179957.P5739246094896584854

`A304002(Δ[A045632(n)])`
-/

namespace A179957.P5739246094896584854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304002 (f1 (n + 1) - f1 n).toNat

end

end A179957.P5739246094896584854

/-! ## A179957.P18408515676135298763

`A334875(floor(A039943(n)/(n+1)))`
-/

namespace A179957.P18408515676135298763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334875 ⌊(A039943 n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A179957.P18408515676135298763

/-! ## A179957.P2405136000084914556

`A106316(A291700(n))+char[n^3]`
-/

namespace A179957.P2405136000084914556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106316 (A291700 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A179957.P2405136000084914556

/-! ## A179957.P2915662977414389591

`((n+1)*∏{p}[n+1, #-1/#]*(n+1)/∏{p}[n+1, #])%A292201(A004215(n+1))`
-/

namespace A179957.P2915662977414389591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) - 1 / (p : ℚ))) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)))) (A292201 (A004215 (n + 1)).toNat)

end

end A179957.P2915662977414389591

/-! ## A179957.P39460092676855465

`A339059(A069770(n)*A104778(n))`
-/

namespace A179957.P39460092676855465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339059 (A069770 n * A104778 n).toNat

end

end A179957.P39460092676855465

/-!
# A179958: Number of permutations of [n] such that |p(i)-p(i-1)| >= 5 for i>1.

The programs for A179958, there is no canonical definition to state claims against.
-/

/-! ## A179958.P14347121641915321567

`A167700(abs(∑[A370528(n)]-n))`
-/

namespace A179958.P14347121641915321567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|.toNat

end

end A179958.P14347121641915321567

/-! ## A179958.P17291264391352134164

`A244463(A008277(2*(n/2+a(n-1)+1)))` with `a(0)=1, a(1)=1`
-/

namespace A179958.P17291264391352134164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A244463 ((A008277 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 2 + (a (n - 1) + 1 : ℚ)))).toNat).toNat + 10)

end

end A179958.P17291264391352134164

/-! ## A179958.P8952148584749913187

`A354311(A354322(a(n-1)+10^floor((n-1)/9)))` with `a(0)=1, a(1)=1`
-/

namespace A179958.P8952148584749913187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A354311 (A354322 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (10 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℤ))).toNat).toNat

end

end A179958.P8952148584749913187

/-! ## A179958.P1684359707334521381

`A020639(A001256(n))*A249392(n)`
-/

namespace A179958.P1684359707334521381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001256 n).toNat * A249392 n

end

end A179958.P1684359707334521381

/-! ## A179958.P16219012762149531954

`A241180(A000085(n))*A249392(n)`
-/

namespace A179958.P16219012762149531954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241180 (A000085 n).toNat * A249392 n

end

end A179958.P16219012762149531954

/-!
# A179959: Number of permutations of [n] such that |p(i)-p(i-1)|>= 6 for i>1.

The programs for A179959, there is no canonical definition to state claims against.
-/

/-! ## A179959.P7985369818578125996

`A110654(lcm(A006306(n), A249393(n)))`
-/

namespace A179959.P7985369818578125996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lcm (A006306 n) (A249393 n))

end

end A179959.P7985369818578125996

/-!
# A179960: Number of permutations of [n] such that |p(i)-p(i-1)|>= 7 for i>1.

The programs for A179960, there is no canonical definition to state claims against.
-/

/-! ## A179960.P12537235527514133582

`and(A037165(n+1), A322308(A219651(2*n)))`
-/

namespace A179960.P12537235527514133582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037165 (n + 1)) (A322308 (A219651 (2 * n)).toNat)

end

end A179960.P12537235527514133582

/-!
# A179961: Number of permutations of [n] such that |p(i)-p(i-1)|>= 8 for i>1.

The programs for A179961, there is no canonical definition to state claims against.
-/

/-! ## A179961.P15577016489400794237

`Δ[A065369(n)]*A322308(A023717(n))`
-/

namespace A179961.P15577016489400794237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A322308 (A023717 n).toNat

end

end A179961.P15577016489400794237

/-! ## A179961.P17593612903914995679

`A091258(n+1)*A322308(A023717(n))`
-/

namespace A179961.P17593612903914995679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091258 (n + 1) * A322308 (A023717 n).toNat

end

end A179961.P17593612903914995679

/-! ## A179961.P11879604637537767727

`A322308(A023717(n))*A348973(n+1)`
-/

namespace A179961.P11879604637537767727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322308 (A023717 n).toNat * A348973 (n + 1)

end

end A179961.P11879604637537767727

/-! ## A179961.P11526352894820736861

`A204127(A000040(n+1))*A322308(A023717(n))`
-/

namespace A179961.P11526352894820736861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204127 (A000040 (n + 1)).toNat * A322308 (A023717 n).toNat

end

end A179961.P11526352894820736861

/-! ## A179961.P11221916778981735368

`A014963(A276952(n+1))*A322308(A023717(n))`
-/

namespace A179961.P11221916778981735368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A276952 (n + 1)).toNat * A322308 (A023717 n).toNat

end

end A179961.P11221916778981735368

/-!
# A179962: Number of permutations p of [2*n+4] such that |p(i)-p(i-1)| > n for i>1.

The programs for A179962, there is no canonical definition to state claims against.
-/

/-! ## A179962.P9851296141146961467

`A129534((n+2)²)+2`
-/

namespace A179962.P9851296141146961467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129534 ((n + 2) ^ 2) + 2

end

end A179962.P9851296141146961467

/-!
# A179963: Number of permutations p of [2*n+5] such that |p(i)-p(i-1)| > n for i>1.

The programs for A179963, there is no canonical definition to state claims against.
-/

/-! ## A179963.P13088879129802823752

`A322255((n+2)*(n+3))`
-/

namespace A179963.P13088879129802823752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322255 ((n + 2) * (n + 3))

end

end A179963.P13088879129802823752

/-!
# A179968: 'AT(n,k)' triangle read by rows. AT(n,k) is the number of aperiodic k-compositions of n.

The programs for A179968, there is no canonical definition to state claims against.
-/

/-! ## A179968.P14932101378061243949

`A051168(∑[A035214(n)])*A128227(n)`
-/

namespace A179968.P14932101378061243949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A128227 n

end

end A179968.P14932101378061243949

/-! ## A179968.P14531341316085491288

`A051168(∑[A035214(n)])*A193738(n)`
-/

namespace A179968.P14531341316085491288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A193738 n

end

end A179968.P14531341316085491288

/-! ## A179968.P18296218958320268915

`A051168(A014132(n+1))*A193738(n)`
-/

namespace A179968.P18296218958320268915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A014132 (n + 1)).toNat * A193738 n

end

end A179968.P18296218958320268915

/-! ## A179968.P12694660286468511084

`A002260(n+1)*A051168(∑[A035214(n)])`
-/

namespace A179968.P12694660286468511084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A051168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179968.P12694660286468511084

/-! ## A179968.P14968598100746836022

`A002260(n+1)*A051168(A014132(n+1))`
-/

namespace A179968.P14968598100746836022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A051168 (A014132 (n + 1)).toNat

end

end A179968.P14968598100746836022

/-! ## A179968.P16616913856733198952

`A051168(A014132(n+1))*A080511(n+1)`
-/

namespace A179968.P16616913856733198952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A014132 (n + 1)).toNat * A080511 (n + 1)

end

end A179968.P16616913856733198952

/-! ## A179968.P2350724794922593792

`A002260(n+1)*A051168(A099375(n)+n)`
-/

namespace A179968.P2350724794922593792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A051168 (A099375 n + (n : ℤ)).toNat

end

end A179968.P2350724794922593792

/-! ## A179968.P6997417498549786379

`A000194(A133819(n+1))*A051168(A014132(n+1))`
-/

namespace A179968.P6997417498549786379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A133819 (n + 1)).toNat * A051168 (A014132 (n + 1)).toNat

end

end A179968.P6997417498549786379

/-! ## A179968.P10634415243406189120

`A128227(n)*A185158(A171463(n+1))`
-/

namespace A179968.P10634415243406189120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A185158 (A171463 (n + 1)).toNat

end

end A179968.P10634415243406189120

/-! ## A179968.P5854740441327775485

`A051168(A014132(n+1))*A080508(n+1)`
-/

namespace A179968.P5854740441327775485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A014132 (n + 1)).toNat * A080508 (n + 1)

end

end A179968.P5854740441327775485

/-! ## A179968.P854322331259265506

`A128227(n)*A185700(n+1)`
-/

namespace A179968.P854322331259265506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A185700 (n + 1)

end

end A179968.P854322331259265506

/-! ## A179968.P4272683151903953160

`A185700(n+1)*A193738(n)`
-/

namespace A179968.P4272683151903953160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185700 (n + 1) * A193738 n

end

end A179968.P4272683151903953160

/-! ## A179968.P2236481824206384843

`A002260(n+1)*A185700(n+1)`
-/

namespace A179968.P2236481824206384843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A185700 (n + 1)

end

end A179968.P2236481824206384843

/-! ## A179968.P8925007233549046405

`(A002262(n)+1)*A185700(n+1)`
-/

namespace A179968.P8925007233549046405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A185700 (n + 1)

end

end A179968.P8925007233549046405

/-! ## A179968.P10044963491777584884

`A080508(n+1)*A185700(n+1)`
-/

namespace A179968.P10044963491777584884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080508 (n + 1) * A185700 (n + 1)

end

end A179968.P10044963491777584884

/-! ## A179968.P9910846663240386641

`A080511(n+1)*A185700(n+1)`
-/

namespace A179968.P9910846663240386641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080511 (n + 1) * A185700 (n + 1)

end

end A179968.P9910846663240386641

/-! ## A179968.P3596607687632649769

`A080818(n+1)*A185700(n+1)`
-/

namespace A179968.P3596607687632649769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080818 (n + 1) * A185700 (n + 1)

end

end A179968.P3596607687632649769

/-! ## A179968.P16611303832717126509

`A081517(n+1)*A185700(n+1)`
-/

namespace A179968.P16611303832717126509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081517 (n + 1) * A185700 (n + 1)

end

end A179968.P16611303832717126509

/-! ## A179968.P1930105862866378844

`A128077(n+1)*A185700(n+1)`
-/

namespace A179968.P1930105862866378844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128077 (n + 1) * A185700 (n + 1)

end

end A179968.P1930105862866378844

/-! ## A179968.P388546075834687978

`sqrt(A133819(n+1))*A185700(n+1)`
-/

namespace A179968.P388546075834687978
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A185700 (n + 1) : ℝ)

end

end A179968.P388546075834687978

/-!
# A179969: Ordered list in decimal notation of the subwords appearing in the infinite Fibonacci word A005614.

The programs for A179969, there is no canonical definition to state claims against.
-/

/-! ## A179969.P6575746558992905836

`A285734(A058213(n)%A058113(2*(n+2)))`
-/

namespace A179969.P6575746558992905836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285734 (Int.tmod (A058213 n) (A058113 (2 * (n + 2)))).toNat

end

end A179969.P6575746558992905836

/-! ## A179969.P91055678730154104

`n+1-A329326(A087897(3*(n+1)))`
-/

namespace A179969.P91055678730154104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A329326 (A087897 (3 * (n + 1))).toNat

end

end A179969.P91055678730154104

/-! ## A179969.P7790603949386490844

`A321856(A121283(n)+A018004(n))`
-/

namespace A179969.P7790603949386490844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A121283 n + A018004 n).toNat

end

end A179969.P7790603949386490844

/-! ## A179969.P17249757311329130968

`A002264(A078135(n+1)+A008288(n))`
-/

namespace A179969.P17249757311329130968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A078135 (n + 1) + A008288 n).toNat

end

end A179969.P17249757311329130968

/-! ## A179969.P14454588676682748587

`A117707(A241338(n)*A320748(n+1))`
-/

namespace A179969.P14454588676682748587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A241338 n * A320748 (n + 1)).toNat

end

end A179969.P14454588676682748587

/-!
# A179970: Numbers such that in base-4 representation all sums of two adjacent digits are odd.

The programs for A179970, there is no canonical definition to state claims against.
-/

/-! ## A179970.P7272743289968868360

`lt[0, A228710(A007090(n))]`
-/

namespace A179970.P7272743289968868360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 (A007090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A179970.P7272743289968868360

/-! ## A179970.P14873818000158610396

`eq[1, A228710(A046030(n+1))]`
-/

namespace A179970.P14873818000158610396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 (A046030 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179970.P14873818000158610396

/-!
# A179971: Positions of records in the sequence of harmonic means, i.e., in the sequence of rationals A099377(.)/A099378(.).

The programs for A179971, there is no canonical definition to state claims against.
-/

/-! ## A179971.P12048719577870733266

`A002093(lt[A140815(3*n+2), A265724(n)])`
-/

namespace A179971.P12048719577870733266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140815 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179971.P12048719577870733266

/-! ## A179971.P7068258103046228478

`A002093(lt[A209622(n), A156173(n+1)])`
-/

namespace A179971.P7068258103046228478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209622 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179971.P7068258103046228478

/-! ## A179971.P9793454595710498358

`record[A070172(A342517(n))^(n%2)]`
-/

namespace A179971.P9793454595710498358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (A342517 n).toNat ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179971.P9793454595710498358

/-! ## A179971.P369085455205636610

`record[A070172(A342517(A004442(n)))]`
-/

namespace A179971.P369085455205636610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (A342517 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179971.P369085455205636610

/-! ## A179971.P12443458797612874775

`∩[A002093(n+1), A167662(n+1)]`
-/

namespace A179971.P12443458797612874775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179971.P12443458797612874775

/-!
# A179972: Irregular triangle T(n,k) = A178886(n,k)/A048996(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A179972, there is no canonical definition to state claims against.
-/

/-! ## A179972.P4930523029889782593

`A130561(n)/A035206(n)`
-/

namespace A179972.P4930523029889782593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130561 n : ℚ) / (A035206 n : ℚ)

end

end A179972.P4930523029889782593

/-! ## A179972.P13668839393731954180

`A178886(n)/A048996(n)`
-/

namespace A179972.P13668839393731954180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178886 n : ℚ) / (A048996 n : ℚ)

end

end A179972.P13668839393731954180

/-! ## A179972.P6730747663493843157

`A178882(n)/A049009(n)`
-/

namespace A179972.P6730747663493843157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178882 n : ℚ) / (A049009 n : ℚ)

end

end A179972.P6730747663493843157

/-! ## A179972.P9553034017785237399

`A036042(n)!/A178888(n)`
-/

namespace A179972.P9553034017785237399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / (A178888 n : ℚ)

end

end A179972.P9553034017785237399

/-! ## A179972.P14909506968800024777

`floor(A178802(n)/A178803(n))/A035206(n)`
-/

namespace A179972.P14909506968800024777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A178802 n : ℚ) / (A178803 n : ℚ)⌋ : ℚ) / (A035206 n : ℚ)

end

end A179972.P14909506968800024777

/-! ## A179972.P614213633002190293

`A178801(n)/A178888(n)`
-/

namespace A179972.P614213633002190293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178801 n : ℚ) / (A178888 n : ℚ)

end

end A179972.P614213633002190293

/-! ## A179972.P12772387743881874233

`A178801(n)/A178802(n)*A178886(n)`
-/

namespace A179972.P12772387743881874233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178801 n : ℚ) / (A178802 n : ℚ) * (A178886 n : ℚ)

end

end A179972.P12772387743881874233

/-!
# A179973: Number of permutations of [n] whose cycle lengths are nondecreasing when cycles are ordered by their minima and these minima are {1..k} (for some k <= n).

The programs for A179973, there is no canonical definition to state claims against.
-/

/-! ## A179973.P17312627300893212664

`A316886(A363731(n)+A001523(n))`
-/

namespace A179973.P17312627300893212664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316886 (A363731 n + A001523 n).toNat

end

end A179973.P17312627300893212664

/-! ## A179973.P1559062296147347124

`A097755(A084636(n))`
-/

namespace A179973.P1559062296147347124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097755 (A084636 n).toNat

end

end A179973.P1559062296147347124

/-! ## A179973.P4039415759801777316

`A207827(A029895(n))`
-/

namespace A179973.P4039415759801777316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207827 (A029895 n).toNat

end

end A179973.P4039415759801777316

/-!
# A179975: Smallest k such that k*10^n is a sum of two successive primes.

The programs for A179975, there is no canonical definition to state claims against.
-/

/-! ## A179975.P16844290492492401985

`A180138(A155212(n+5))`
-/

namespace A179975.P16844290492492401985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A155212 (n + 5)).toNat

end

end A179975.P16844290492492401985

/-! ## A179975.P15679155757782415025

`A180138(A055999(n+6)-2)`
-/

namespace A179975.P15679155757782415025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A055999 (n + 6) - 2).toNat

end

end A179975.P15679155757782415025

/-! ## A179975.P13501949331992979370

`A180138(A046691(n+7)-4)`
-/

namespace A179975.P13501949331992979370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A046691 (n + 7) - 4).toNat

end

end A179975.P13501949331992979370

/-! ## A179975.P16797818569694405129

`A180138(A034856(n+8)-6)`
-/

namespace A179975.P16797818569694405129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A034856 (n + 8) - 6).toNat

end

end A179975.P16797818569694405129

/-! ## A179975.P13634573087459611661

`A180138(A000124(n+9)-9)`
-/

namespace A179975.P13634573087459611661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A000124 (n + 9) - 9).toNat

end

end A179975.P13634573087459611661

/-!
# A179976: a(n) = 2^(2n+1) mod (2n+1).

The programs for A179976, the canonical program `A179976.P7680853616629622206` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179976 has offset 0).

The definition of A179976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(2*n+1))%(2*n+1)` (program `A179976.P7680853616629622206`, by `A179976.P7680853616629622206.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179976.P9048867275257743086

`A015910(2*n+1)`
-/

namespace A179976.P9048867275257743086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (2 * n + 1)

end

end A179976.P9048867275257743086

namespace A179976

/-- `A015910(2*n+1)` -/
def P9048867275257743086.Spec : Prop :=
  ∀ n, P9048867275257743086.a n = A179976 n

end A179976

/-! ## A179976.P7680853616629622206

`(2^(2*n+1))%(2*n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179976

/-- `(2^(2*n+1))%(2*n+1)` -/
def P7680853616629622206.Spec : Prop :=
  ∀ n, (P7680853616629622206.a n : ℤ) = A179976 n

theorem P7680853616629622206.correct : P7680853616629622206.Spec := by
  intro n
  simp only [A179976]

end A179976

/-! ## A179976.P11615070909274645121

`2*n+1-A082494(2*n+1)`
-/

namespace A179976.P11615070909274645121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A082494 (2 * n + 1)

end

end A179976.P11615070909274645121

namespace A179976

/-- `2*n+1-A082494(2*n+1)` -/
def P11615070909274645121.Spec : Prop :=
  ∀ n, P11615070909274645121.a n = A179976 n

theorem P11615070909274645121.correct : P11615070909274645121.Spec := by
  intro n
  simp only [A179976, Nat.add_sub_cancel, A179976.P11615070909274645121.a, A179976.P7680853616629622206.a, A082494, A082494.P7337767156106625034.a, A015910, A015910.P10708089779728586376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179976

/-! ## A179976.P4253825342187030058

`A357531(2*n+1)-A099894(2*n)`
-/

namespace A179976.P4253825342187030058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357531 (2 * n + 1) - A099894 (2 * n)

end

end A179976.P4253825342187030058

namespace A179976

/-- `A357531(2*n+1)-A099894(2*n)` -/
def P4253825342187030058.Spec : Prop :=
  ∀ n, P4253825342187030058.a n = A179976 n

end A179976

/-! ## A179976.P17966473143326099570

`A043545(2*n)*A357531(2*n+1)`
-/

namespace A179976.P17966473143326099570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (2 * n) * A357531 (2 * n + 1)

end

end A179976.P17966473143326099570

namespace A179976

/-- `A043545(2*n)*A357531(2*n+1)` -/
def P17966473143326099570.Spec : Prop :=
  ∀ n, P17966473143326099570.a n = A179976 n

end A179976

/-! ## A179976.P10859075283356455920

`and(A003817(2*n), A357531(2*n+1))`
-/

namespace A179976.P10859075283356455920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (2 * n)) (A357531 (2 * n + 1))

end

end A179976.P10859075283356455920

namespace A179976

/-- `and(A003817(2*n), A357531(2*n+1))` -/
def P10859075283356455920.Spec : Prop :=
  ∀ n, P10859075283356455920.a n = A179976 n

end A179976

/-! ## A179976.P9054786689994609791

`A112983(2*n+1)+A082900(2*n+1)`
-/

namespace A179976.P9054786689994609791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112983 (2 * n + 1) + A082900 (2 * n + 1)

end

end A179976.P9054786689994609791

namespace A179976

/-- `A112983(2*n+1)+A082900(2*n+1)` -/
def P9054786689994609791.Spec : Prop :=
  ∀ n, P9054786689994609791.a n = A179976 n

end A179976

/-! ## A179976.P14016693189737435947

`A082495(2*n+1)+1-A036987(2*n)`
-/

namespace A179976.P14016693189737435947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (2 * n + 1) + (1 - A036987 (2 * n))

end

end A179976.P14016693189737435947

namespace A179976

/-- `A082495(2*n+1)+1-A036987(2*n)` -/
def P14016693189737435947.Spec : Prop :=
  ∀ n, P14016693189737435947.a n = A179976 n

end A179976

/-! ## A179976.P7714394814906678483

`A357531(2*n+1)-A048298(2*n+1)`
-/

namespace A179976.P7714394814906678483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357531 (2 * n + 1) - A048298 (2 * n + 1)

end

end A179976.P7714394814906678483

namespace A179976

/-- `A357531(2*n+1)-A048298(2*n+1)` -/
def P7714394814906678483.Spec : Prop :=
  ∀ n, P7714394814906678483.a n = A179976 n

end A179976

/-! ## A179976.P18104554465589412967

`A080940(2*n+1)*A357531(2*n+1)`
-/

namespace A179976.P18104554465589412967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (2 * n + 1) * A357531 (2 * n + 1)

end

end A179976.P18104554465589412967

namespace A179976

/-- `A080940(2*n+1)*A357531(2*n+1)` -/
def P18104554465589412967.Spec : Prop :=
  ∀ n, P18104554465589412967.a n = A179976 n

end A179976

/-! ## A179976.P10815059138241347923

`A082495(2*n+1)+1-A048298(2*n+1)`
-/

namespace A179976.P10815059138241347923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (2 * n + 1) + (1 - A048298 (2 * n + 1))

end

end A179976.P10815059138241347923

namespace A179976

/-- `A082495(2*n+1)+1-A048298(2*n+1)` -/
def P10815059138241347923.Spec : Prop :=
  ∀ n, P10815059138241347923.a n = A179976 n

end A179976

/-! ## A179976.P15841562955140112436

`A015910(A005408(n))*A054977(n)`
-/

namespace A179976.P15841562955140112436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (A005408 n).toNat * A054977 n

end

end A179976.P15841562955140112436

namespace A179976

/-- `A015910(A005408(n))*A054977(n)` -/
def P15841562955140112436.Spec : Prop :=
  ∀ n, P15841562955140112436.a n = A179976 n

end A179976

/-! ## A179976.P1779137798231070563

`A082495(A020639(2*n+1))+A082495(2*n+1)`
-/

namespace A179976.P1779137798231070563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A020639 (2 * n + 1)).toNat + A082495 (2 * n + 1)

end

end A179976.P1779137798231070563

namespace A179976

/-- `A082495(A020639(2*n+1))+A082495(2*n+1)` -/
def P1779137798231070563.Spec : Prop :=
  ∀ n, P1779137798231070563.a n = A179976 n

end A179976

/-! ## A179976.P12550663868374403493

`A371343(A371343(A015910(n+1+n)))`
-/

namespace A179976.P12550663868374403493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371343 (A371343 (A015910 (n + 1 + n)).toNat).toNat

end

end A179976.P12550663868374403493

namespace A179976

/-- `A371343(A371343(A015910(n+1+n)))` -/
def P12550663868374403493.Spec : Prop :=
  ∀ n, P12550663868374403493.a n = A179976 n

end A179976

/-! ## A179976.P12308538542849806264

`log2(A112987(2*n+1))`
-/

namespace A179976.P12308538542849806264
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A112987 (2 * n + 1) : ℝ)

end

end A179976.P12308538542849806264

namespace A179976

/-- `log2(A112987(2*n+1))` -/
def P12308538542849806264.Spec : Prop :=
  ∀ n, P12308538542849806264.a n = (A179976 n : ℝ)

end A179976

/-! ## A179976.P11916276126030124464

`A000079(2*n+1)-A128092(2*n+1)`
-/

namespace A179976.P11916276126030124464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A128092 (2 * n + 1)

end

end A179976.P11916276126030124464

namespace A179976

/-- `A000079(2*n+1)-A128092(2*n+1)` -/
def P11916276126030124464.Spec : Prop :=
  ∀ n, P11916276126030124464.a n = A179976 n

end A179976

/-!
# A179978: A108971(A108971(n)).

The programs for A179978, there is no canonical definition to state claims against.
-/

/-! ## A179978.P9517406132486982592

`A108971(A108971(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179978.P9517406132486982592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108971 (A108971 (n + 1)).toNat

end

end A179978.P9517406132486982592

/-!
# A179979: Fixed points of permutations A108971, A179977, and A179978.

The programs for A179979, there is no canonical definition to state claims against.
-/

/-! ## A179979.P16189896688295763667

`record[gcd(n+1, A108971(n+1))]`
-/

namespace A179979.P16189896688295763667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A108971 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179979.P16189896688295763667

/-! ## A179979.P1048589046618724401

`eq[n, A108971(round(sqrt(n²+1)))]`
-/

namespace A179979.P1048589046618724401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108971 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179979.P1048589046618724401

/-! ## A179979.P3121107211670600044

`record[gcd(A108971(n+1), A131738(n))]`
-/

namespace A179979.P3121107211670600044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108971 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179979.P3121107211670600044

/-! ## A179979.P15978698161782587598

`A108971(eq[n+1, A108971(n+1)]+1)`
-/

namespace A179979.P15978698161782587598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A179979.P15978698161782587598

/-! ## A179979.P16324513090786824029

`∩[A140281(n), A372281(n+1)]`
-/

namespace A179979.P16324513090786824029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179979.P16324513090786824029

/-!
# A179980: a(n) = 10*a(n-1) - (-1)^n * n, a(1) = 1.

The programs for A179980, the canonical program `A179980.P17652498520391836310` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179980 has offset 1).

The definition of A179980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-(-1)^(n+1)*(n+1)` (program `A179980.P17652498520391836310`, by `A179980.P17652498520391836310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179980.P17652498520391836310

`10*a(n-1)-(-1)^(n+1)*(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179980

/-- `10*a(n-1)-(-1)^(n+1)*(n+1)` -/
def P17652498520391836310.Spec : Prop :=
  ∀ n, P17652498520391836310.a n = A179980 (n + 1)

theorem P17652498520391836310.correct : P17652498520391836310.Spec := by
  intro n
  simp only [A179980, Nat.add_sub_cancel]

end A179980

/-! ## A179980.P15964130709594416341

`8*a(n-1)+19*a(n-2)+10*a(n-3)` with `a(0)=1, a(1)=8, a(2)=83`
-/

namespace A179980.P15964130709594416341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 83] fun n a =>
  8 * a (n - 1) + 19 * a (n - 2) + 10 * a (n - 3)

end

end A179980.P15964130709594416341

namespace A179980

/-- `8*a(n-1)+19*a(n-2)+10*a(n-3)` -/
def P15964130709594416341.Spec : Prop :=
  ∀ n, (P15964130709594416341.a n : ℤ) = A179980 (n + 1)

end A179980

/-! ## A179980.P5785964219847415906

`(10^(n+2)-11*(n+1)*(-1)^(n+1)-10*(-1)^(n+1))/121`
-/

namespace A179980.P5785964219847415906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 2) : ℤ) - (11 * (n + 1) : ℤ) * (-1) ^ (n + 1) - 10 * (-1) ^ (n + 1) : ℚ) / 121

end

end A179980.P5785964219847415906

namespace A179980

/-- `(10^(n+2)-11*(n+1)*(-1)^(n+1)-10*(-1)^(n+1))/121` -/
def P5785964219847415906.Spec : Prop :=
  ∀ n, P5785964219847415906.a n = (A179980 (n + 1) : ℚ)

theorem P5785964219847415906.correct : P5785964219847415906.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A179980, Nat.add_sub_cancel, A179980.P5785964219847415906.a, A179980.P17652498520391836310.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A179980, Nat.add_sub_cancel, A179980.P5785964219847415906.a, A179980.P17652498520391836310.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A179980

/-! ## A179980.P4493079908179328183

`ogf(-1/(-1+8x+19x^2+10x^3))`
-/

namespace A179980.P4493079908179328183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, -19, -10] n

end

end A179980.P4493079908179328183

namespace A179980

/-- `ogf(-1/(-1+8x+19x^2+10x^3))` -/
def P4493079908179328183.Spec : Prop :=
  ∀ n, P4493079908179328183.a n = A179980 (n + 1)

end A179980

/-! ## A179980.P7380360133056732400

`abs(∑[A014992(n+1)])`
-/

namespace A179980.P7380360133056732400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A179980.P7380360133056732400

namespace A179980

/-- `abs(∑[A014992(n+1)])` -/
def P7380360133056732400.Spec : Prop :=
  ∀ n, P7380360133056732400.a n = A179980 (n + 1)

end A179980

/-! ## A179980.P10734278669505881729

`A015585(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A179980.P10734278669505881729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015585 (n + 1) - a (n - 1)

end

end A179980.P10734278669505881729

namespace A179980

/-- `A015585(n+1)-a(n-1)` -/
def P10734278669505881729.Spec : Prop :=
  ∀ n, P10734278669505881729.a n = A179980 (n + 1)

end A179980

/-! ## A179980.P785303220906147313

`∑[A014992(n+1)]*A033999(n)`
-/

namespace A179980.P785303220906147313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A179980.P785303220906147313

namespace A179980

/-- `∑[A014992(n+1)]*A033999(n)` -/
def P785303220906147313.Spec : Prop :=
  ∀ n, P785303220906147313.a n = A179980 (n + 1)

end A179980

/-! ## A179980.P9997081311322600198

`lcm(∑[A014992(n+1)], A000034(n))`
-/

namespace A179980.P9997081311322600198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A179980.P9997081311322600198

namespace A179980

/-- `lcm(∑[A014992(n+1)], A000034(n))` -/
def P9997081311322600198.Spec : Prop :=
  ∀ n, (P9997081311322600198.a n : ℤ) = A179980 (n + 1)

end A179980

/-! ## A179980.P16915659257589399392

`∑[A014992(n+1)]*A209615(A017113(n))`
-/

namespace A179980.P16915659257589399392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A209615 (A017113 n).toNat

end

end A179980.P16915659257589399392

namespace A179980

/-- `∑[A014992(n+1)]*A209615(A017113(n))` -/
def P16915659257589399392.Spec : Prop :=
  ∀ n, P16915659257589399392.a n = A179980 (n + 1)

end A179980

/-! ## A179980.P16895998195433149614

`A164881(A167614(n+1))`
-/

namespace A179980.P16895998195433149614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164881 (A167614 (n + 1)).toNat

end

end A179980.P16895998195433149614

namespace A179980

/-- `A164881(A167614(n+1))` -/
def P16895998195433149614.Spec : Prop :=
  ∀ n, P16895998195433149614.a n = A179980 (n + 1)

end A179980

/-!
# A179981: Number of permutations of 1..n with the difference of the k-th adjacent pair no greater than k, k=1..n-1.

The programs for A179981, there is no canonical definition to state claims against.
-/

/-! ## A179981.P11078966440898194902

`A342724(A387512(n+1))`
-/

namespace A179981.P11078966440898194902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342724 (A387512 (n + 1)).toNat

end

end A179981.P11078966440898194902

/-! ## A179981.P7344804838364695024

`2*A216256(A124212(n))`
-/

namespace A179981.P7344804838364695024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216256 (A124212 n).toNat

end

end A179981.P7344804838364695024

/-!
# A179982: Values of the genus g for which there exists a compact Riemann surface of genus g admitting an automorphism group of order 84(g-1), the maximum possible, also known as the Hurwitz bound.

The programs for A179982, there is no canonical definition to state claims against.
-/

/-! ## A179982.P5612591554413974718

`xor(n, lcm(3, A123229(Δ[n²]^n)))`
-/

namespace A179982.P5612591554413974718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Int.lcm 3 (A123229 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n).toNat))

end

end A179982.P5612591554413974718

/-!
# A179983: Positive integers m such that, if k appears in m's prime signature, k-1 appears at least as often as k (for any integer k > 1).

The programs for A179983, the canonical program `A179983.P13460115617611511678` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179983 has offset 1).

The definition of A179983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179983.P14430296553009336289

`eq[1, A064839(A181819(n+1))]+1`
-/

namespace A179983.P14430296553009336289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179983.P14430296553009336289

namespace A179983

/-- `eq[1, A064839(A181819(n+1))]+1` -/
def P14430296553009336289.Spec : Prop :=
  ∀ n, (P14430296553009336289.a n : ℤ) = A179983 (n + 1)

end A179983

/-! ## A179983.P13460115617611511678

`record[A000027(n+1)*A322585(A181819(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A179983

/-- `record[A000027(n+1)*A322585(A181819(n+1))]` -/
def P13460115617611511678.Spec : Prop :=
  ∀ n, P13460115617611511678.a n = A179983 (n + 1)

theorem P13460115617611511678.correct : P13460115617611511678.Spec := by
  intro n
  simp only [A179983, Nat.add_sub_cancel]

end A179983

/-! ## A179983.P8180564944078402070

`record[A008619(2*n)*A322585(A181819(n+1))]`
-/

namespace A179983.P8180564944078402070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A322585 (A181819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179983.P8180564944078402070

namespace A179983

/-- `record[A008619(2*n)*A322585(A181819(n+1))]` -/
def P8180564944078402070.Spec : Prop :=
  ∀ n, P8180564944078402070.a n = A179983 (n + 1)

end A179983

/-! ## A179983.P18236721782061660137

`record[A028242(2*n)/A064839(A181819(n+1))]`
-/

namespace A179983.P18236721782061660137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A064839 (A181819 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179983.P18236721782061660137

namespace A179983

/-- `record[A028242(2*n)/A064839(A181819(n+1))]` -/
def P18236721782061660137.Spec : Prop :=
  ∀ n, P18236721782061660137.a n = (A179983 (n + 1) : ℚ)

end A179983

/-! ## A179983.P10548957719279063971

`record[A008620(3*n+1)/A064839(A181819(n+1))]`
-/

namespace A179983.P10548957719279063971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 (3 * n + 1) : ℚ) / (A064839 (A181819 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179983.P10548957719279063971

namespace A179983

/-- `record[A008620(3*n+1)/A064839(A181819(n+1))]` -/
def P10548957719279063971.Spec : Prop :=
  ∀ n, P10548957719279063971.a n = (A179983 (n + 1) : ℚ)

end A179983

/-! ## A179983.P8650856678311143377

`record[A052410(n+1)/A033273(A256690(n+1))]`
-/

namespace A179983.P8650856678311143377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052410 (n + 1) : ℚ) / (A033273 (A256690 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179983.P8650856678311143377

namespace A179983

/-- `record[A052410(n+1)/A033273(A256690(n+1))]` -/
def P8650856678311143377.Spec : Prop :=
  ∀ n, P8650856678311143377.a n = (A179983 (n + 1) : ℚ)

end A179983

/-! ## A179983.P8223194063154543101

`record[A007948(A008835(n+1)*A052410(n+1))]`
-/

namespace A179983.P8223194063154543101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A008835 (n + 1) * A052410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179983.P8223194063154543101

namespace A179983

/-- `record[A007948(A008835(n+1)*A052410(n+1))]` -/
def P8223194063154543101.Spec : Prop :=
  ∀ n, P8223194063154543101.a n = A179983 (n + 1)

end A179983

/-! ## A179983.P13189829054654523046

`record[A019555(A052410(n+1)*A056623(n+1))]`
-/

namespace A179983.P13189829054654523046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A052410 (n + 1) * A056623 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179983.P13189829054654523046

namespace A179983

/-- `record[A019555(A052410(n+1)*A056623(n+1))]` -/
def P13189829054654523046.Spec : Prop :=
  ∀ n, P13189829054654523046.a n = A179983 (n + 1)

end A179983

/-! ## A179983.P3179581840218835813

`record[A052410(A343033(A027379(n)))]`
-/

namespace A179983.P3179581840218835813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A343033 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179983.P3179581840218835813

namespace A179983

/-- `record[A052410(A343033(A027379(n)))]` -/
def P3179581840218835813.Spec : Prop :=
  ∀ n, P3179581840218835813.a n = A179983 (n + 1)

end A179983

/-! ## A179983.P9403860862987677384

`record[A019555(A025478(n+1)²)]`
-/

namespace A179983.P9403860862987677384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A025478 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179983.P9403860862987677384

namespace A179983

/-- `record[A019555(A025478(n+1)²)]` -/
def P9403860862987677384.Spec : Prop :=
  ∀ n, P9403860862987677384.a n = A179983 (n + 1)

end A179983

/-!
# A179984: Numerators of Integral_{x=0..1} cos(log(x))^n dx.

The programs for A179984, there is no canonical definition to state claims against.
-/

/-! ## A179984.P1141986724222599976

`A207375(A154720(n+1)+A000670(n))`
-/

namespace A179984.P1141986724222599976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (A154720 (n + 1) + A000670 n).toNat

end

end A179984.P1141986724222599976

/-!
# A179986: Second 9-gonal (or nonagonal) numbers: a(n) = n*(7*n+5)/2.

The programs for A179986, the canonical program `A179986.P16110847338785890238` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179986 has offset 0).

The definition of A179986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n+5)/2` (program `A179986.P2932989398035016769`, by `A179986.P2932989398035016769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179986.P2932989398035016769

`n*(7*n+5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179986.P2932989398035016769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (7 * n + 5) : ℚ) / 2

end

end A179986.P2932989398035016769

namespace A179986

/-- `n*(7*n+5)/2` -/
def P2932989398035016769.Spec : Prop :=
  ∀ n, P2932989398035016769.a n = (A179986 n : ℚ)

theorem P2932989398035016769.correct : P2932989398035016769.Spec := by
  intro n
  induction n with
  | zero => simp [A179986, A179986.P2932989398035016769.a, A179986.P16110847338785890238.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A179986, Nat.add_sub_cancel, A179986.P2932989398035016769.a, A179986.P16110847338785890238.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A179986

/-! ## A179986.P16110847338785890238

`a(n-1)+7*n-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179986

/-- `a(n-1)+7*n-1` -/
def P16110847338785890238.Spec : Prop :=
  ∀ n, P16110847338785890238.a n = A179986 n

theorem P16110847338785890238.correct : P16110847338785890238.Spec := by
  intro n
  simp only [A179986]

end A179986

/-! ## A179986.P14638185091935477954

`n+2*A000290(n)+3*A000217(n)`
-/

namespace A179986.P14638185091935477954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + 2 * A000290 n + 3 * A000217 n

end

end A179986.P14638185091935477954

namespace A179986

/-- `n+2*A000290(n)+3*A000217(n)` -/
def P14638185091935477954.Spec : Prop :=
  ∀ n, P14638185091935477954.a n = A179986 n

end A179986

/-! ## A179986.P18317314307047413466

`A055998(4*n)-A055998(3*n)`
-/

namespace A179986.P18317314307047413466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (4 * n) - A055998 (3 * n)

end

end A179986.P18317314307047413466

namespace A179986

/-- `A055998(4*n)-A055998(3*n)` -/
def P18317314307047413466.Spec : Prop :=
  ∀ n, P18317314307047413466.a n = A179986 n

end A179986

/-! ## A179986.P810821422577187309

`A174738(7*n+5)`
-/

namespace A179986.P810821422577187309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (7 * n + 5)

end

end A179986.P810821422577187309

namespace A179986

/-- `A174738(7*n+5)` -/
def P810821422577187309.Spec : Prop :=
  ∀ n, P810821422577187309.a n = A179986 n

end A179986

/-! ## A179986.P17004307223322294793

`∑[a(n-1)+7]` with `a(0)=0, a(1)=6`
-/

namespace A179986.P17004307223322294793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179986.P17004307223322294793

namespace A179986

/-- `∑[a(n-1)+7]` -/
def P17004307223322294793.Spec : Prop :=
  ∀ n, (P17004307223322294793.a n : ℤ) = A179986 n

end A179986

/-! ## A179986.P962611730725200357

`6*n+7*C(n, 2)`
-/

namespace A179986.P962611730725200357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 7 * Nat.choose n 2

end

end A179986.P962611730725200357

namespace A179986

/-- `6*n+7*C(n, 2)` -/
def P962611730725200357.Spec : Prop :=
  ∀ n, (P962611730725200357.a n : ℤ) = A179986 n

end A179986

/-! ## A179986.P8901534398326648834

`∑[ogf((6x+x^2)/(1-2x+x^2))]`
-/

namespace A179986.P8901534398326648834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179986.P8901534398326648834

namespace A179986

/-- `∑[ogf((6x+x^2)/(1-2x+x^2))]` -/
def P8901534398326648834.Spec : Prop :=
  ∀ n, P8901534398326648834.a n = A179986 n

end A179986

/-! ## A179986.P2723025505097468205

`ogf((6x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A179986.P2723025505097468205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 1] [1, -3, 3, -1] n

end

end A179986.P2723025505097468205

namespace A179986

/-- `ogf((6x+x^2)/(1-3x+3x^2-x^3))` -/
def P2723025505097468205.Spec : Prop :=
  ∀ n, P2723025505097468205.a n = A179986 n

end A179986

/-! ## A179986.P17193630501107781392

`7*n-(1-a(n-1))` with `a(0)=0`
-/

namespace A179986.P17193630501107781392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n : ℤ) - (1 - a (n - 1))

end

end A179986.P17193630501107781392

namespace A179986

/-- `7*n-(1-a(n-1))` -/
def P17193630501107781392.Spec : Prop :=
  ∀ n, P17193630501107781392.a n = A179986 n

end A179986

/-! ## A179986.P7873564813932224504

`n²-∑[a(n-1)-5]` with `a(0)=0`
-/

namespace A179986.P7873564813932224504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179986.P7873564813932224504

namespace A179986

/-- `n²-∑[a(n-1)-5]` -/
def P7873564813932224504.Spec : Prop :=
  ∀ n, P7873564813932224504.a n = A179986 n

end A179986

/-! ## A179986.P3575637286374650529

`((2*n+1)²-∑[n+1])%(2*n+1)²`
-/

namespace A179986.P3575637286374650529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((2 * n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ((2 * n + 1) ^ 2 : ℤ)

end

end A179986.P3575637286374650529

namespace A179986

/-- `((2*n+1)²-∑[n+1])%(2*n+1)²` -/
def P3575637286374650529.Spec : Prop :=
  ∀ n, P3575637286374650529.a n = A179986 n

end A179986

/-! ## A179986.P2728409318286151022

`A186029(n)+n`
-/

namespace A179986.P2728409318286151022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n + (n : ℤ)

end

end A179986.P2728409318286151022

namespace A179986

/-- `A186029(n)+n` -/
def P2728409318286151022.Spec : Prop :=
  ∀ n, P2728409318286151022.a n = A179986 n

end A179986

/-! ## A179986.P14788585370142512919

`A024966(n)-n`
-/

namespace A179986.P14788585370142512919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n - (n : ℤ)

end

end A179986.P14788585370142512919

namespace A179986

/-- `A024966(n)-n` -/
def P14788585370142512919.Spec : Prop :=
  ∀ n, P14788585370142512919.a n = A179986 n

end A179986

/-! ## A179986.P10084346512463505845

`A389615(n)-1+n`
-/

namespace A179986.P10084346512463505845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n - 1 + (n : ℤ)

end

end A179986.P10084346512463505845

namespace A179986

/-- `A389615(n)-1+n` -/
def P10084346512463505845.Spec : Prop :=
  ∀ n, P10084346512463505845.a n = A179986 n

end A179986

/-! ## A179986.P12181118081983207105

`A022265(n)+2*n`
-/

namespace A179986.P12181118081983207105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n + (2 * n : ℤ)

end

end A179986.P12181118081983207105

namespace A179986

/-- `A022265(n)+2*n` -/
def P12181118081983207105.Spec : Prop :=
  ∀ n, P12181118081983207105.a n = A179986 n

end A179986

/-! ## A179986.P18281971684165801611

`A022264(n)+3*n`
-/

namespace A179986.P18281971684165801611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n + (3 * n : ℤ)

end

end A179986.P18281971684165801611

namespace A179986

/-- `A022264(n)+3*n` -/
def P18281971684165801611.Spec : Prop :=
  ∀ n, P18281971684165801611.a n = A179986 n

end A179986

/-! ## A179986.P12256213842082195478

`A163756(n)/2-n`
-/

namespace A179986.P12256213842082195478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163756 n : ℚ) / 2 - (n : ℚ)

end

end A179986.P12256213842082195478

namespace A179986

/-- `A163756(n)/2-n` -/
def P12256213842082195478.Spec : Prop :=
  ∀ n, P12256213842082195478.a n = (A179986 n : ℚ)

theorem P12256213842082195478.correct : P12256213842082195478.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A179986, Nat.add_sub_cancel, A179986.P12256213842082195478.a, A179986.P16110847338785890238.a, A163756, A163756.P13614041795755210983.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A179986, Nat.add_sub_cancel, A179986.P12256213842082195478.a, A179986.P16110847338785890238.a, A163756, A163756.P13614041795755210983.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A179986

/-! ## A179986.P12084839305362603942

`A218471(n)+4*n`
-/

namespace A179986.P12084839305362603942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n + (4 * n : ℤ)

end

end A179986.P12084839305362603942

namespace A179986

/-- `A218471(n)+4*n` -/
def P12084839305362603942.Spec : Prop :=
  ∀ n, P12084839305362603942.a n = A179986 n

end A179986

/-! ## A179986.P8842767390286725385

`A001106(n)+5*n`
-/

namespace A179986.P8842767390286725385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n + (5 * n : ℤ)

end

end A179986.P8842767390286725385

namespace A179986

/-- `A001106(n)+5*n` -/
def P8842767390286725385.Spec : Prop :=
  ∀ n, P8842767390286725385.a n = A179986 n

end A179986

/-!
# A179987: Digital sums of A108971.

The programs for A179987, there is no canonical definition to state claims against.
-/

/-! ## A179987.P1819367000003501815

`∑{digits}[A108971(n+1), #]`
-/

namespace A179987.P1819367000003501815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A179987.P1819367000003501815

/-! ## A179987.P9977401464727742431

`A007953(A108971(n+1))`
-/

namespace A179987.P9977401464727742431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A108971 (n + 1)).toNat

end

end A179987.P9977401464727742431

/-! ## A179987.P294004614115778582

`A004092(5*A108971(n+1))`
-/

namespace A179987.P294004614115778582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A108971 (n + 1)).toNat

end

end A179987.P294004614115778582

/-! ## A179987.P12052061840867392012

`A326746(10*A108971(n+1))`
-/

namespace A179987.P12052061840867392012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (10 * A108971 (n + 1)).toNat

end

end A179987.P12052061840867392012

/-! ## A179987.P14276404313460556863

`A061762(10*A108971(n+1))`
-/

namespace A179987.P14276404313460556863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (10 * A108971 (n + 1)).toNat

end

end A179987.P14276404313460556863

/-! ## A179987.P4148750212644339716

`∑{digits}[A179977(A179978(n+1)), #]`
-/

namespace A179987.P4148750212644339716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179977 (A179978 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A179987.P4148750212644339716

/-! ## A179987.P5640977198482485066

`A007953(A179977(A179978(n+1)))`
-/

namespace A179987.P5640977198482485066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A179977 (A179978 (n + 1)).toNat).toNat

end

end A179987.P5640977198482485066

/-!
# A179988: Smallest m such that n = sum of digits of A108971(m).

The programs for A179988, there is no canonical definition to state claims against.
-/

/-! ## A179988.P11249035607916854641

`A179977(record[A199344(n)])`
-/

namespace A179988.P11249035607916854641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179977 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179988.P11249035607916854641

/-! ## A179988.P1531008807878462126

`A179977(A051885(n+1))`
-/

namespace A179988.P1531008807878462126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179977 (A051885 (n + 1)).toNat

end

end A179988.P1531008807878462126

/-! ## A179988.P593318300111311550

`A179977(A088473(n+1))`
-/

namespace A179988.P593318300111311550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179977 (A088473 (n + 1)).toNat

end

end A179988.P593318300111311550

/-! ## A179988.P2921479784056783079

`A179977(A190876(n+1))`
-/

namespace A179988.P2921479784056783079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179977 (A190876 (n + 1)).toNat

end

end A179988.P2921479784056783079

/-! ## A179988.P18123792968226568030

`A179977(A227378(n+1))`
-/

namespace A179988.P18123792968226568030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179977 (A227378 (n + 1)).toNat

end

end A179988.P18123792968226568030

/-!
# A179991: Nonhomogeneous three-term sequence a(n) = a(n-1) + a(n-2) + n.

The programs for A179991, the canonical program `A179991.P7533001981995731436` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179991 has offset 1).

The definition of A179991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n+1` (program `A179991.P7533001981995731436`, by `A179991.P7533001981995731436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179991.P7533001981995731436

`a(n-1)+a(n-2)+n+1` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179991

/-- `a(n-1)+a(n-2)+n+1` -/
def P7533001981995731436.Spec : Prop :=
  ∀ n, (P7533001981995731436.a n : ℤ) = A179991 (n + 1)

theorem P7533001981995731436.correct : P7533001981995731436.Spec := by
  intro n
  simp only [A179991, Nat.add_sub_cancel]

end A179991

/-! ## A179991.P6352677045492653639

`2*A000032(n+2)-(n+1)-3`
-/

namespace A179991.P6352677045492653639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 (n + 2) - (n + 1 : ℤ) - 3

end

end A179991.P6352677045492653639

namespace A179991

/-- `2*A000032(n+2)-(n+1)-3` -/
def P6352677045492653639.Spec : Prop :=
  ∀ n, P6352677045492653639.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P11694707914456180981

`ogf((2-3x+3x^2-x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A179991.P11694707914456180981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 3, -1] [1, -3, 2, 1, -1] n

end

end A179991.P11694707914456180981

namespace A179991

/-- `ogf((2-3x+3x^2-x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P11694707914456180981.Spec : Prop :=
  ∀ n, P11694707914456180981.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P5118501229919276822

`n-∑[a(n-1)-(2-a(n-2))]` with `a(0)=-2, a(1)=0`
-/

namespace A179991.P5118501229919276822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 0] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179991.P5118501229919276822

namespace A179991

/-- `n-∑[a(n-1)-(2-a(n-2))]` -/
def P5118501229919276822.Spec : Prop :=
  ∀ n, P5118501229919276822.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P8329887028825807736

`A210728(n)+1`
-/

namespace A179991.P8329887028825807736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210728 n + 1

end

end A179991.P8329887028825807736

namespace A179991

/-- `A210728(n)+1` -/
def P8329887028825807736.Spec : Prop :=
  ∀ n, P8329887028825807736.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P4424711924831243373

`A192762(n)+2`
-/

namespace A179991.P4424711924831243373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192762 n + 2

end

end A179991.P4424711924831243373

namespace A179991

/-- `A192762(n)+2` -/
def P4424711924831243373.Spec : Prop :=
  ∀ n, P4424711924831243373.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P7667221921026147698

`A192954(n)+1+n`
-/

namespace A179991.P7667221921026147698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n + 1 + (n : ℤ)

end

end A179991.P7667221921026147698

namespace A179991

/-- `A192954(n)+1+n` -/
def P7667221921026147698.Spec : Prop :=
  ∀ n, P7667221921026147698.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P18180694594358789978

`2*A014739(n)-n`
-/

namespace A179991.P18180694594358789978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014739 n - (n : ℤ)

end

end A179991.P18180694594358789978

namespace A179991

/-- `2*A014739(n)-n` -/
def P18180694594358789978.Spec : Prop :=
  ∀ n, P18180694594358789978.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P8373588463657493384

`A193044(n)+∑[n+1]`
-/

namespace A179991.P8373588463657493384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193044 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A179991.P8373588463657493384

namespace A179991

/-- `A193044(n)+∑[n+1]` -/
def P8373588463657493384.Spec : Prop :=
  ∀ n, P8373588463657493384.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P3705042289581976905

`record[2*A329723(n)-n]`
-/

namespace A179991.P3705042289581976905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329723 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179991.P3705042289581976905

namespace A179991

/-- `record[2*A329723(n)-n]` -/
def P3705042289581976905.Spec : Prop :=
  ∀ n, P3705042289581976905.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P286650736632461242

`A168674(n+1)-(n+2)`
-/

namespace A179991.P286650736632461242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 (n + 1) - (n + 2 : ℤ)

end

end A179991.P286650736632461242

namespace A179991

/-- `A168674(n+1)-(n+2)` -/
def P286650736632461242.Spec : Prop :=
  ∀ n, P286650736632461242.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P18401693882398918449

`A022319(n+1)-(n+3)`
-/

namespace A179991.P18401693882398918449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 (n + 1) - (n + 3 : ℤ)

end

end A179991.P18401693882398918449

namespace A179991

/-- `A022319(n+1)-(n+3)` -/
def P18401693882398918449.Spec : Prop :=
  ∀ n, P18401693882398918449.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P360082527812265344

`2*A066982(n+1)+n`
-/

namespace A179991.P360082527812265344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066982 (n + 1) + (n : ℤ)

end

end A179991.P360082527812265344

namespace A179991

/-- `2*A066982(n+1)+n` -/
def P360082527812265344.Spec : Prop :=
  ∀ n, P360082527812265344.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P14583379492892336847

`∑[2*A000032(n)-1]-1`
-/

namespace A179991.P14583379492892336847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A179991.P14583379492892336847

namespace A179991

/-- `∑[2*A000032(n)-1]-1` -/
def P14583379492892336847.Spec : Prop :=
  ∀ n, P14583379492892336847.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P1683650864095312181

`2*(A000032(n+2)-2)-n`
-/

namespace A179991.P1683650864095312181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 (n + 2) - 2) - (n : ℤ)

end

end A179991.P1683650864095312181

namespace A179991

/-- `2*(A000032(n+2)-2)-n` -/
def P1683650864095312181.Spec : Prop :=
  ∀ n, P1683650864095312181.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P2397815014720809456

`A210678(n)+A001611(n)`
-/

namespace A179991.P2397815014720809456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n + A001611 n

end

end A179991.P2397815014720809456

namespace A179991

/-- `A210678(n)+A001611(n)` -/
def P2397815014720809456.Spec : Prop :=
  ∀ n, P2397815014720809456.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P9361036617710075265

`A192979(n)+A081659(n)`
-/

namespace A179991.P9361036617710075265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n + A081659 n

end

end A179991.P9361036617710075265

namespace A179991

/-- `A192979(n)+A081659(n)` -/
def P9361036617710075265.Spec : Prop :=
  ∀ n, P9361036617710075265.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P17553415826372583280

`A210731(n)+A157725(n)`
-/

namespace A179991.P17553415826372583280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n + A157725 n

end

end A179991.P17553415826372583280

namespace A179991

/-- `A210731(n)+A157725(n)` -/
def P17553415826372583280.Spec : Prop :=
  ∀ n, P17553415826372583280.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P12420581769481018360

`A377628(n)+A001924(n)`
-/

namespace A179991.P12420581769481018360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 n + A001924 n

end

end A179991.P12420581769481018360

namespace A179991

/-- `A377628(n)+A001924(n)` -/
def P12420581769481018360.Spec : Prop :=
  ∀ n, P12420581769481018360.a n = A179991 (n + 1)

end A179991

/-! ## A179991.P7759868010505207828

`A066982(n+1)+A014739(n)`
-/

namespace A179991.P7759868010505207828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 1) + A014739 n

end

end A179991.P7759868010505207828

namespace A179991

/-- `A066982(n+1)+A014739(n)` -/
def P7759868010505207828.Spec : Prop :=
  ∀ n, P7759868010505207828.a n = A179991 (n + 1)

end A179991

/-!
# A179992: a(n) = a(n-1) + a(n-2) + n^2 for n >= 3, a(1)=2, and a(2)=5.

The programs for A179992, the canonical program `A179992.P2787708971613567389` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179992 has offset 1).

The definition of A179992 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+(n+1)²` (program `A179992.P2787708971613567389`, by `A179992.P2787708971613567389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179992.P2787708971613567389

`a(n-1)+a(n-2)+(n+1)²` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179992

/-- `a(n-1)+a(n-2)+(n+1)²` -/
def P2787708971613567389.Spec : Prop :=
  ∀ n, (P2787708971613567389.a n : ℤ) = A179992 (n + 1)

theorem P2787708971613567389.correct : P2787708971613567389.Spec := by
  intro n
  simp only [A179992, Nat.add_sub_cancel]

end A179992

/-! ## A179992.P5966164917601901481

`2*A022095(n+3)-6*(n+1)-13-(n+1)²`
-/

namespace A179992.P5966164917601901481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022095 (n + 3) - (6 * (n + 1) : ℤ) - 13 - ((n + 1) ^ 2 : ℤ)

end

end A179992.P5966164917601901481

namespace A179992

/-- `2*A022095(n+3)-6*(n+1)-13-(n+1)²` -/
def P5966164917601901481.Spec : Prop :=
  ∀ n, P5966164917601901481.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P16886143755382886700

`∑[2*n+1]+a(n-2)+a(n-1)` with `a(0)=2, a(1)=5`
-/

namespace A179992.P16886143755382886700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2) + a (n - 1)

end

end A179992.P16886143755382886700

namespace A179992

/-- `∑[2*n+1]+a(n-2)+a(n-1)` -/
def P16886143755382886700.Spec : Prop :=
  ∀ n, (P16886143755382886700.a n : ℤ) = A179992 (n + 1)

end A179992

/-! ## A179992.P10986525633218593207

`∑[2*A210677(n)]+n`
-/

namespace A179992.P10986525633218593207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A179992.P10986525633218593207

namespace A179992

/-- `∑[2*A210677(n)]+n` -/
def P10986525633218593207.Spec : Prop :=
  ∀ n, P10986525633218593207.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P3299507282407447254

`2*A192973(n+1)-n²`
-/

namespace A179992.P3299507282407447254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192973 (n + 1) - (n ^ 2 : ℤ)

end

end A179992.P3299507282407447254

namespace A179992

/-- `2*A192973(n+1)-n²` -/
def P3299507282407447254.Spec : Prop :=
  ∀ n, P3299507282407447254.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P9498381254167179034

`A212804(n)+A053808(n)`
-/

namespace A179992.P9498381254167179034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A053808 n

end

end A179992.P9498381254167179034

namespace A179992

/-- `A212804(n)+A053808(n)` -/
def P9498381254167179034.Spec : Prop :=
  ∀ n, P9498381254167179034.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P9468627409044142851

`A192954(n)+∑[A192960(n)]`
-/

namespace A179992.P9468627409044142851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179992.P9468627409044142851

namespace A179992

/-- `A192954(n)+∑[A192960(n)]` -/
def P9468627409044142851.Spec : Prop :=
  ∀ n, P9468627409044142851.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P7745785543233393549

`A053808(n)+Δ[A000045(n)]`
-/

namespace A179992.P7745785543233393549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053808 n + (f1 (n + 1) - f1 n)

end

end A179992.P7745785543233393549

namespace A179992

/-- `A053808(n)+Δ[A000045(n)]` -/
def P7745785543233393549.Spec : Prop :=
  ∀ n, P7745785543233393549.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P2167056716832084694

`A192961(n+1)+A192954(n)`
-/

namespace A179992.P2167056716832084694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192961 (n + 1) + A192954 n

end

end A179992.P2167056716832084694

namespace A179992

/-- `A192961(n+1)+A192954(n)` -/
def P2167056716832084694.Spec : Prop :=
  ∀ n, P2167056716832084694.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P1723020336358658448

`A210728(n)+A064551(n+3)`
-/

namespace A179992.P1723020336358658448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210728 n + A064551 (n + 3)

end

end A179992.P1723020336358658448

namespace A179992

/-- `A210728(n)+A064551(n+3)` -/
def P1723020336358658448.Spec : Prop :=
  ∀ n, P1723020336358658448.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P9549769060647872310

`A192969(n)+∑[A192962(n+1)]`
-/

namespace A179992.P9549769060647872310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179992.P9549769060647872310

namespace A179992

/-- `A192969(n)+∑[A192962(n+1)]` -/
def P9549769060647872310.Spec : Prop :=
  ∀ n, P9549769060647872310.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P7293877123309770218

`A192962(n+1)+A192389(n+1)`
-/

namespace A179992.P7293877123309770218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192962 (n + 1) + A192389 (n + 1)

end

end A179992.P7293877123309770218

namespace A179992

/-- `A192962(n+1)+A192389(n+1)` -/
def P7293877123309770218.Spec : Prop :=
  ∀ n, P7293877123309770218.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P1917361739999623383

`A192955(n+2)-A006355(n+1)`
-/

namespace A179992.P1917361739999623383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192955 (n + 2) - A006355 (n + 1)

end

end A179992.P1917361739999623383

namespace A179992

/-- `A192955(n+2)-A006355(n+1)` -/
def P1917361739999623383.Spec : Prop :=
  ∀ n, P1917361739999623383.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P18331614595318754377

`Δ[A000045(n)]+∑[A001891(n+1)]`
-/

namespace A179992.P18331614595318754377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A179992.P18331614595318754377

namespace A179992

/-- `Δ[A000045(n)]+∑[A001891(n+1)]` -/
def P18331614595318754377.Spec : Prop :=
  ∀ n, P18331614595318754377.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P7006258583673651022

`A192951(n+1)+A192957(n+1)+n`
-/

namespace A179992.P7006258583673651022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 (n + 1) + (A192957 (n + 1) + (n : ℤ))

end

end A179992.P7006258583673651022

namespace A179992

/-- `A192951(n+1)+A192957(n+1)+n` -/
def P7006258583673651022.Spec : Prop :=
  ∀ n, P7006258583673651022.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P3578167683968507708

`A192952(n+1)+A192955(n+1)+n`
-/

namespace A179992.P3578167683968507708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192952 (n + 1) + (A192955 (n + 1) + (n : ℤ))

end

end A179992.P3578167683968507708

namespace A179992

/-- `A192952(n+1)+A192955(n+1)+n` -/
def P3578167683968507708.Spec : Prop :=
  ∀ n, P3578167683968507708.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P14598559331213086615

`A192952(n+1)+A192969(n)+A192389(n)`
-/

namespace A179992.P14598559331213086615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192952 (n + 1) + (A192969 n + A192389 n)

end

end A179992.P14598559331213086615

namespace A179992

/-- `A192952(n+1)+A192969(n)+A192389(n)` -/
def P14598559331213086615.Spec : Prop :=
  ∀ n, P14598559331213086615.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P5147164120447326994

`A192951(n+1)+A192980(n)+A192954(n)`
-/

namespace A179992.P5147164120447326994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 (n + 1) + (A192980 n + A192954 n)

end

end A179992.P5147164120447326994

namespace A179992

/-- `A192951(n+1)+A192980(n)+A192954(n)` -/
def P5147164120447326994.Spec : Prop :=
  ∀ n, P5147164120447326994.a n = A179992 (n + 1)

end A179992

/-! ## A179992.P6578347336258967707

`A000045(n+1)+A053808(n)-A000045(n)`
-/

namespace A179992.P6578347336258967707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A053808 n - A000045 n)

end

end A179992.P6578347336258967707

namespace A179992

/-- `A000045(n+1)+A053808(n)-A000045(n)` -/
def P6578347336258967707.Spec : Prop :=
  ∀ n, P6578347336258967707.a n = A179992 (n + 1)

end A179992

/-!
# A179994: a(n) = 11*a(n-2) - 8*a(n-4), starting a(0)=0, a(1)=1, a(2)=5, a(3)=12.

The programs for A179994, the canonical program `A179994.P4389664538228024520` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179994 has offset 0).

The definition of A179994 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-2)-8*a(n-4)` (program `A179994.P4389664538228024520`, by `A179994.P4389664538228024520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179994.P4389664538228024520

`11*a(n-2)-8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=12`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179994

/-- `11*a(n-2)-8*a(n-4)` -/
def P4389664538228024520.Spec : Prop :=
  ∀ n, P4389664538228024520.a n = A179994 n

theorem P4389664538228024520.correct : P4389664538228024520.Spec := by
  intro n
  simp only [A179994]

end A179994

/-! ## A179994.P4278714048752479338

`A040115(A151171(n+1))`
-/

namespace A179994.P4278714048752479338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040115 (A151171 (n + 1)).toNat

end

end A179994.P4278714048752479338

namespace A179994

/-- `A040115(A151171(n+1))` -/
def P4278714048752479338.Spec : Prop :=
  ∀ n, P4278714048752479338.a n = A179994 n

end A179994

/-!
# A179995: Generating function A(5,t)(1+t+t^2)/(1-t)^6, where A(5,t) is an Eulerian polynomial.

The programs for A179995, the canonical program `A179995.P15855146455058339385` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179995 has offset 0).

The definition of A179995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179995.P15855146455058339385

`A101098(n+1)+3*A000584(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A179995

/-- `A101098(n+1)+3*A000584(n)` -/
def P15855146455058339385.Spec : Prop :=
  ∀ n, P15855146455058339385.a n = A179995 n

theorem P15855146455058339385.correct : P15855146455058339385.Spec := by
  intro n
  simp only [A179995]

end A179995

/-! ## A179995.P18113020309437016038

`A008515(n)+A000584(A289207(n+1))`
-/

namespace A179995.P18113020309437016038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008515 n + A000584 (A289207 (n + 1)).toNat

end

end A179995.P18113020309437016038

namespace A179995

/-- `A008515(n)+A000584(A289207(n+1))` -/
def P18113020309437016038.Spec : Prop :=
  ∀ n, P18113020309437016038.a n = A179995 n

end A179995

/-! ## A179995.P9079657874351792838

`A000539(n+1)-A000539(A289207(n))`
-/

namespace A179995.P9079657874351792838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (n + 1) - A000539 (A289207 n).toNat

end

end A179995.P9079657874351792838

namespace A179995

/-- `A000539(n+1)-A000539(A289207(n))` -/
def P9079657874351792838.Spec : Prop :=
  ∀ n, P9079657874351792838.a n = A179995 n

end A179995

/-! ## A179995.P3125930623881292459

`record[∑[(A001057(n)+1)^5]]`
-/

namespace A179995.P3125930623881292459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001057 n + 1) ^ 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179995.P3125930623881292459

namespace A179995

/-- `record[∑[(A001057(n)+1)^5]]` -/
def P3125930623881292459.Spec : Prop :=
  ∀ n, P3125930623881292459.a n = A179995 n

end A179995

/-!
# A179996: Composite numbers n such that Sum_{k=0..q} d(k)*10^k is prime where d(k) are the q+1 distinct prime factors of n, d(0)< d(1) < ... < d(q).

The programs for A179996, there is no canonical definition to state claims against.
-/

/-! ## A179996.P17690314076546635089

`eq[A092368(n), A337535(n+1)]`
-/

namespace A179996.P17690314076546635089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092368 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337535 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179996.P17690314076546635089

/-! ## A179996.P8390310080809551177

`∩[A170944(n+1), A016945(n)]`
-/

namespace A179996.P8390310080809551177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179996.P8390310080809551177

/-! ## A179996.P1813815728533625887

`∩[A170944(n+1), A270545(n)]`
-/

namespace A179996.P1813815728533625887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179996.P1813815728533625887

/-! ## A179996.P13324730550188879372

`filter[A272344(3*n+1), A324917(#)]`
-/

namespace A179996.P13324730550188879372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272344 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324917 (f1 j).toNat = 1) n)

end

end A179996.P13324730550188879372

/-! ## A179996.P9351320834474604634

`∩[A170944(n+1), A366849(n+1)]`
-/

namespace A179996.P9351320834474604634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179996.P9351320834474604634

/-!
# A179998: Numbers which are members of both A000140 and A039909.

The programs for A179998, there is no canonical definition to state claims against.
-/

/-! ## A179998.P5473939050734033759

`record[gcd(A000140(n+1), A039909(n))]`
-/

namespace A179998.P5473939050734033759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000140 (n + 1)) (A039909 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179998.P5473939050734033759

/-! ## A179998.P6956966448661938204

`∩[A039909(n+1), Δ[A173489(n+1)]]`
-/

namespace A179998.P6956966448661938204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039909 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179998.P6956966448661938204

/-! ## A179998.P10260699072898413212

`A039909(lt[A039951(3*(n+1)), A039950(n+1)])`
-/

namespace A179998.P10260699072898413212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039951 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179998.P10260699072898413212

/-! ## A179998.P12596629829336552812

`A039909(lt[A039951(3*(n+1)), A039925(n+2)])`
-/

namespace A179998.P12596629829336552812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039951 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039925 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179998.P12596629829336552812

/-! ## A179998.P14128022823584200347

`A039909(lt[A039951(3*(n+1)), A039940(n+2)])`
-/

namespace A179998.P14128022823584200347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039951 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039940 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179998.P14128022823584200347

/-!
# A179999: Length of the n-th term in the modified Look and Say sequence A110393.

The programs for A179999, the canonical program `A179999.P7874360815428025044` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179999 has offset 1).

The definition of A179999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179999.P7874360815428025044

`a(n-1)+a(n-2)-a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4, a(4)=6, a(5)=8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179999

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-4)-a(n-5)` -/
def P7874360815428025044.Spec : Prop :=
  ∀ n, P7874360815428025044.a n = A179999 (n + 1)

theorem P7874360815428025044.correct : P7874360815428025044.Spec := by
  intro n
  simp only [A179999, Nat.add_sub_cancel]

end A179999

/-! ## A179999.P5824432700875487723

`∑[a(n-2)+a(n-4)]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=2, a(5)=2`
-/

namespace A179999.P5824432700875487723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2, 2, 2] fun n f1 =>
  f1 (n - 2) + f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179999.P5824432700875487723

namespace A179999

/-- `∑[a(n-2)+a(n-4)]` -/
def P5824432700875487723.Spec : Prop :=
  ∀ n, (P5824432700875487723.a n : ℤ) = A179999 (n + 1)

end A179999

/-! ## A179999.P8087853270326976466

`∑[A214927(n+1)+C(n, n²)]`
-/

namespace A179999.P8087853270326976466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179999.P8087853270326976466

namespace A179999

/-- `∑[A214927(n+1)+C(n, n²)]` -/
def P8087853270326976466.Spec : Prop :=
  ∀ n, P8087853270326976466.a n = A179999 (n + 1)

end A179999

/-! ## A179999.P6391944510438233531

`∑[A006355(n+1-A263997(n+1))]`
-/

namespace A179999.P6391944510438233531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 ((n + 1 : ℤ) - A263997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179999.P6391944510438233531

namespace A179999

/-- `∑[A006355(n+1-A263997(n+1))]` -/
def P6391944510438233531.Spec : Prop :=
  ∀ n, P6391944510438233531.a n = A179999 (n + 1)

end A179999

/-! ## A179999.P927255765542915885

`∑[A214927(n+1)]+2-A000007(n)`
-/

namespace A179999.P927255765542915885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A000007 n)

end

end A179999.P927255765542915885

namespace A179999

/-- `∑[A214927(n+1)]+2-A000007(n)` -/
def P927255765542915885.Spec : Prop :=
  ∀ n, P927255765542915885.a n = A179999 (n + 1)

end A179999

/-! ## A179999.P13232894495080362310

`∑[A214927(n+1)+A001175(n+1)%2]`
-/

namespace A179999.P13232894495080362310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (n + 1) + Int.tmod (A001175 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179999.P13232894495080362310

namespace A179999

/-- `∑[A214927(n+1)+A001175(n+1)%2]` -/
def P13232894495080362310.Spec : Prop :=
  ∀ n, P13232894495080362310.a n = A179999 (n + 1)

end A179999

/-! ## A179999.P15822072707705126415

`∑[A214927(n+1)+A000007(A004526(n))]`
-/

namespace A179999.P15822072707705126415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (n + 1) + A000007 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179999.P15822072707705126415

namespace A179999

/-- `∑[A214927(n+1)+A000007(A004526(n))]` -/
def P15822072707705126415.Spec : Prop :=
  ∀ n, P15822072707705126415.a n = A179999 (n + 1)

end A179999

/-! ## A179999.P6306652312013043139

`∑[A118658(A004526(n+1))]-A000007(n)`
-/

namespace A179999.P6306652312013043139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (A004526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000007 n

end

end A179999.P6306652312013043139

namespace A179999

/-- `∑[A118658(A004526(n+1))]-A000007(n)` -/
def P6306652312013043139.Spec : Prop :=
  ∀ n, P6306652312013043139.a n = A179999 (n + 1)

end A179999

