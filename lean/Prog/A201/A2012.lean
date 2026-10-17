import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A201200: Total number of round trips of length n on the closed Laguerre graph Lc_4 divided by 4.

The programs for A201200, the canonical program `A201200.P3867769479825131730` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201200 has offset 0).

The definition of A201200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201200.P3867769479825131730

`16*a(n-1)-68*a(n-2)+64*a(n-3)+44*a(n-4)` with `a(0)=1, a(1)=4, a(2)=30, a(3)=256`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201200

/-- `16*a(n-1)-68*a(n-2)+64*a(n-3)+44*a(n-4)` -/
def P3867769479825131730.Spec : Prop :=
  ∀ n, P3867769479825131730.a n = A201200 n

theorem P3867769479825131730.correct : P3867769479825131730.Spec := by
  intro n
  simp only [A201200]

end A201200

/-! ## A201200.P9154591160528675713

`((2-sqrt(6))^n+(2+sqrt(6))^n+(6-sqrt(14))^n+(6+sqrt(14))^n)/4`
-/

namespace A201200.P9154591160528675713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (6 : ℝ)) ^ n + (2 + Real.sqrt (6 : ℝ)) ^ n + (6 - Real.sqrt (14 : ℝ)) ^ n + (6 + Real.sqrt (14 : ℝ)) ^ n) / 4

end

end A201200.P9154591160528675713

namespace A201200

/-- `((2-sqrt(6))^n+(2+sqrt(6))^n+(6-sqrt(14))^n+(6+sqrt(14))^n)/4` -/
def P9154591160528675713.Spec : Prop :=
  ∀ n, P9154591160528675713.a n = (A201200 n : ℝ)

end A201200

/-!
# A201204: Half-convolution of Catalan sequence A000108 with itself.

The programs for A201204, there is no canonical definition to state claims against.
-/

/-! ## A201204.P10489705284372086379

`A028378(A099392(n+1))`
-/

namespace A201204.P10489705284372086379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (A099392 (n + 1)).toNat

end

end A201204.P10489705284372086379

/-! ## A201204.P12489815237424664407

`A067323(A007590(n+1))`
-/

namespace A201204.P12489815237424664407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A007590 (n + 1)).toNat

end

end A201204.P12489815237424664407

/-! ## A201204.P4743807932741009198

`A028364(A007590(n)+n)`
-/

namespace A201204.P4743807932741009198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A007590 n + (n : ℤ)).toNat

end

end A201204.P4743807932741009198

/-! ## A201204.P7237920026382536609

`A067323(A000982(n)+n)`
-/

namespace A201204.P7237920026382536609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A000982 n + (n : ℤ)).toNat

end

end A201204.P7237920026382536609

/-! ## A201204.P15128610054487079067

`A028364(A004526(n)+∑[n])`
-/

namespace A201204.P15128610054487079067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A004526 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A201204.P15128610054487079067

/-! ## A201204.P10685810745794134904

`A067323(A005843(∑[n])-A007590(n))`
-/

namespace A201204.P10685810745794134904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j) - A007590 n).toNat

end

end A201204.P10685810745794134904

/-! ## A201204.P17578188650303634723

`A028376(A080476(n+2))`
-/

namespace A201204.P17578188650303634723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (A080476 (n + 2)).toNat

end

end A201204.P17578188650303634723

/-! ## A201204.P1569550065059351180

`A067323(A002264(∑[A047235(n+1)]))`
-/

namespace A201204.P1569550065059351180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A201204.P1569550065059351180

/-! ## A201204.P3311101112313461824

`A071201(A051890(n+1))`
-/

namespace A201204.P3311101112313461824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071201 (A051890 (n + 1)).toNat

end

end A201204.P3311101112313461824

/-! ## A201204.P11655553965151405271

`A071201(A106232(n+1))`
-/

namespace A201204.P11655553965151405271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071201 (A106232 (n + 1)).toNat

end

end A201204.P11655553965151405271

/-!
# A201205: Bisection of half-convolution of Catalan sequence A000108; even part.

The programs for A201205, there is no canonical definition to state claims against.
-/

/-! ## A201205.P222319519210943251

`A201204(2*n)`
-/

namespace A201205.P222319519210943251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201204 (2 * n)

end

end A201205.P222319519210943251

/-! ## A201205.P11473105454422360872

`record[A201204(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A201205.P11473105454422360872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A201204 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201205.P11473105454422360872

/-! ## A201205.P8746316280432565123

`record[A201204(A014681(n))]`
-/

namespace A201205.P8746316280432565123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201204 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201205.P8746316280432565123

/-! ## A201205.P2364537627893856159

`record[gcd(A097331(n), A201204(n))]`
-/

namespace A201205.P2364537627893856159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097331 n) (A201204 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201205.P2364537627893856159

/-! ## A201205.P1086342611802899583

`(A024492(n)+A000108(n)²)/2`
-/

namespace A201205.P1086342611802899583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024492 n + A000108 n ^ 2 : ℚ) / 2

end

end A201205.P1086342611802899583

/-! ## A201205.P14718924503000051643

`(A000108(Δ[n²])+A000108(n)²)/2`
-/

namespace A201205.P14718924503000051643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000108 n ^ 2 : ℚ) / 2

end

end A201205.P14718924503000051643

/-! ## A201205.P13360211992322950580

`record[A201204(A008611(A000265(n+1)))]`
-/

namespace A201205.P13360211992322950580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201204 (A008611 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201205.P13360211992322950580

/-! ## A201205.P15563301774155157356

`A028364(∑[4*n])`
-/

namespace A201205.P15563301774155157356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201205.P15563301774155157356

/-! ## A201205.P14434350193481314246

`A067323(∑[4*n])`
-/

namespace A201205.P14434350193481314246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201205.P14434350193481314246

/-! ## A201205.P5970279096887514138

`A028378(A058331(n))`
-/

namespace A201205.P5970279096887514138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (A058331 n).toNat

end

end A201205.P5970279096887514138

/-!
# A201206: Number of successive decreasing values of round(n^(2/3))^3 - n^2.

The programs for A201206, the canonical program `A201206.P12616535689427552080` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201206 has offset 1).

The definition of A201206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201206.P14125796593693332455

`Δ[floor(((2*n+1)/2)^(3/2))]`
-/

namespace A201206.P14125796593693332455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1 : ℚ) / 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201206.P14125796593693332455

namespace A201206

/-- `Δ[floor(((2*n+1)/2)^(3/2))]` -/
def P14125796593693332455.Spec : Prop :=
  ∀ n, P14125796593693332455.a n = A201206 (n + 1)

end A201206

/-! ## A201206.P12616535689427552080

`-Δ[-floor(sqrt(A219085(n)))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A201206

/-- `-Δ[-floor(sqrt(A219085(n)))]` -/
def P12616535689427552080.Spec : Prop :=
  ∀ n, P12616535689427552080.a n = A201206 (n + 1)

theorem P12616535689427552080.correct : P12616535689427552080.Spec := by
  intro n
  simp only [A201206, Nat.add_sub_cancel]

end A201206

/-! ## A201206.P16003589048274126553

`A203302(n+1)-floor(sqrt(A219085(n)))`
-/

namespace A201206.P16003589048274126553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203302 (n + 1) - Int.sqrt (A219085 n)

end

end A201206.P16003589048274126553

namespace A201206

/-- `A203302(n+1)-floor(sqrt(A219085(n)))` -/
def P16003589048274126553.Spec : Prop :=
  ∀ n, P16003589048274126553.a n = A201206 (n + 1)

end A201206

/-! ## A201206.P4575506091916480127

`Δ[A203302(A028310(n))]+C(2, n+2)`
-/

namespace A201206.P4575506091916480127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203302 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A201206.P4575506091916480127

namespace A201206

/-- `Δ[A203302(A028310(n))]+C(2, n+2)` -/
def P4575506091916480127.Spec : Prop :=
  ∀ n, P4575506091916480127.a n = A201206 (n + 1)

end A201206

/-! ## A201206.P16521941851561223426

`A028310(Δ[A203302(A028310(n))])`
-/

namespace A201206.P16521941851561223426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203302 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A201206.P16521941851561223426

namespace A201206

/-- `A028310(Δ[A203302(A028310(n))])` -/
def P16521941851561223426.Spec : Prop :=
  ∀ n, P16521941851561223426.a n = A201206 (n + 1)

end A201206

/-!
# A201208: One 1, two 2's, three 1's, four 2's, five 1's, ...

The programs for A201208, the canonical program `A201208.P11775252334027749297` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201208 has offset 1).

The definition of A201208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201208.P11775252334027749297

`A057212(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A201208

/-- `A057212(n+1)+1` -/
def P11775252334027749297.Spec : Prop :=
  ∀ n, P11775252334027749297.a n = A201208 (n + 1)

theorem P11775252334027749297.correct : P11775252334027749297.Spec := by
  intro n
  simp only [A201208, Nat.add_sub_cancel]

end A201208

/-! ## A201208.P6348431657869739492

`gcd(2, ∑[char[∑[n]]])`
-/

namespace A201208.P6348431657869739492
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201208.P6348431657869739492

namespace A201208

/-- `gcd(2, ∑[char[∑[n]]])` -/
def P6348431657869739492.Spec : Prop :=
  ∀ n, (P6348431657869739492.a n : ℤ) = A201208 (n + 1)

end A201208

/-! ## A201208.P423905821821035626

`-or(∑[char[∑[n]]], -2)`
-/

namespace A201208.P423905821821035626
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2)

end

end A201208.P423905821821035626

namespace A201208

/-- `-or(∑[char[∑[n]]], -2)` -/
def P423905821821035626.Spec : Prop :=
  ∀ n, P423905821821035626.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P10204779547425164377

`2-∑[char[∑[n]]]%2`
-/

namespace A201208.P10204779547425164377
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A201208.P10204779547425164377

namespace A201208

/-- `2-∑[char[∑[n]]]%2` -/
def P10204779547425164377.Spec : Prop :=
  ∀ n, P10204779547425164377.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P13334836816512307459

`2-and(1, ∑[char[∑[n]]])`
-/

namespace A201208.P13334836816512307459
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A201208.P13334836816512307459

namespace A201208

/-- `2-and(1, ∑[char[∑[n]]])` -/
def P13334836816512307459.Spec : Prop :=
  ∀ n, P13334836816512307459.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P10622876005816513541

`(comp[∑[n]]+n)%2+1`
-/

namespace A201208.P10622876005816513541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) % 2 + 1

end

end A201208.P10622876005816513541

namespace A201208

/-- `(comp[∑[n]]+n)%2+1` -/
def P10622876005816513541.Spec : Prop :=
  ∀ n, (P10622876005816513541.a n : ℤ) = A201208 (n + 1)

end A201208

/-! ## A201208.P11132632236827451492

`(2^(comp[∑[n]]-n))%3`
-/

namespace A201208.P11132632236827451492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))) 3

end

end A201208.P11132632236827451492

namespace A201208

/-- `(2^(comp[∑[n]]-n))%3` -/
def P11132632236827451492.Spec : Prop :=
  ∀ n, P11132632236827451492.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P7359602157977259058

`and(1, ∑[char[∑[n+1]]])+1`
-/

namespace A201208.P7359602157977259058
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A201208.P7359602157977259058

namespace A201208

/-- `and(1, ∑[char[∑[n+1]]])+1` -/
def P7359602157977259058.Spec : Prop :=
  ∀ n, (P7359602157977259058.a n : ℤ) = A201208 (n + 1)

end A201208

/-! ## A201208.P18370336559795273883

`floor(sqrt(A106599(n)))`
-/

namespace A201208.P18370336559795273883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A106599 n)

end

end A201208.P18370336559795273883

namespace A201208

/-- `floor(sqrt(A106599(n)))` -/
def P18370336559795273883.Spec : Prop :=
  ∀ n, P18370336559795273883.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P12290128975937337837

`2-∑[A197870(n)]`
-/

namespace A201208.P12290128975937337837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201208.P12290128975937337837

namespace A201208

/-- `2-∑[A197870(n)]` -/
def P12290128975937337837.Spec : Prop :=
  ∀ n, P12290128975937337837.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P3371129569157955987

`2-char[A161983(n)]`
-/

namespace A201208.P3371129569157955987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A201208.P3371129569157955987

namespace A201208

/-- `2-char[A161983(n)]` -/
def P3371129569157955987.Spec : Prop :=
  ∀ n, P3371129569157955987.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P9549261598924725043

`2-A057211(n+1)`
-/

namespace A201208.P9549261598924725043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A057211 (n + 1)

end

end A201208.P9549261598924725043

namespace A201208

/-- `2-A057211(n+1)` -/
def P9549261598924725043.Spec : Prop :=
  ∀ n, P9549261598924725043.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P2338764467719771978

`2/a(A056943(n))` with `a(0)=1`
-/

namespace A201208.P2338764467719771978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 / a (A056943 n).toNat

end

end A201208.P2338764467719771978

namespace A201208

/-- `2/a(A056943(n))` -/
def P2338764467719771978.Spec : Prop :=
  ∀ n, P2338764467719771978.a n = (A201208 (n + 1) : ℚ)

end A201208

/-! ## A201208.P2084873881355068961

`2-abs(∑[A106459(n)])`
-/

namespace A201208.P2084873881355068961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A201208.P2084873881355068961

namespace A201208

/-- `2-abs(∑[A106459(n)])` -/
def P2084873881355068961.Spec : Prop :=
  ∀ n, P2084873881355068961.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P11675836753258055955

`2-abs(∑[A143433(n)])`
-/

namespace A201208.P11675836753258055955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A201208.P11675836753258055955

namespace A201208

/-- `2-abs(∑[A143433(n)])` -/
def P11675836753258055955.Spec : Prop :=
  ∀ n, P11675836753258055955.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P3261891819857266084

`2-char[A163335(2*n)]`
-/

namespace A201208.P3261891819857266084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A201208.P3261891819857266084

namespace A201208

/-- `2-char[A163335(2*n)]` -/
def P3261891819857266084.Spec : Prop :=
  ∀ n, P3261891819857266084.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P4798822020517100257

`2-char[A163358(2*n)]`
-/

namespace A201208.P4798822020517100257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A201208.P4798822020517100257

namespace A201208

/-- `2-char[A163358(2*n)]` -/
def P4798822020517100257.Spec : Prop :=
  ∀ n, P4798822020517100257.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P11117317115651115499

`A040001(round(sqrt(2*n+1)))`
-/

namespace A201208.P11117317115651115499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A201208.P11117317115651115499

namespace A201208

/-- `A040001(round(sqrt(2*n+1)))` -/
def P11117317115651115499.Spec : Prop :=
  ∀ n, P11117317115651115499.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P13137814392030138532

`2-Δ[A307707(n+1)]²`
-/

namespace A201208.P13137814392030138532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) ^ 2

end

end A201208.P13137814392030138532

namespace A201208

/-- `2-Δ[A307707(n+1)]²` -/
def P13137814392030138532.Spec : Prop :=
  ∀ n, P13137814392030138532.a n = A201208 (n + 1)

end A201208

/-! ## A201208.P14165616498121153515

`char[A116942(2*n+1)]+1`
-/

namespace A201208.P14165616498121153515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A201208.P14165616498121153515

namespace A201208

/-- `char[A116942(2*n+1)]+1` -/
def P14165616498121153515.Spec : Prop :=
  ∀ n, (P14165616498121153515.a n : ℤ) = A201208 (n + 1)

end A201208

/-!
# A201209: Number of n X n 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201209, there is no canonical definition to state claims against.
-/

/-! ## A201209.P17957186158874733942

`A201216(∑[4*n]+1)`
-/

namespace A201209.P17957186158874733942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201209.P17957186158874733942

/-! ## A201209.P1979100979433192864

`record[A201216(record[A326657(n)])]`
-/

namespace A201209.P1979100979433192864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201209.P1979100979433192864

/-! ## A201209.P10776195309398243835

`and(-1, A201216(A001844(n)))`
-/

namespace A201209.P10776195309398243835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A201216 (A001844 n).toNat)

end

end A201209.P10776195309398243835

/-!
# A201210: Number of nX2 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201210, there is no canonical definition to state claims against.
-/

/-! ## A201210.P110652664093845992

`A202162(n+1)+A201830(n+1)`
-/

namespace A201210.P110652664093845992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202162 (n + 1) + A201830 (n + 1)

end

end A201210.P110652664093845992

/-! ## A201210.P9924237958382295416

`A201216(∑[n+1]+2)`
-/

namespace A201210.P9924237958382295416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201210.P9924237958382295416

/-! ## A201210.P13376498870318125856

`record[root(A201216(n+2), A059268(n))]`
-/

namespace A201210.P13376498870318125856
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201216 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201210.P13376498870318125856

/-! ## A201210.P10892686260202261833

`A202168(∑[n+1]+2)+A201830(n+1)`
-/

namespace A201210.P10892686260202261833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A201830 (n + 1)

end

end A201210.P10892686260202261833

/-! ## A201210.P12805800337533988173

`A202162(n+1)+A201836(∑[n+1]+2)`
-/

namespace A201210.P12805800337533988173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202162 (n + 1) + A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201210.P12805800337533988173

/-!
# A201211: Number of n X 3 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201211, there is no canonical definition to state claims against.
-/

/-! ## A201211.P4193032404819844547

`A202163(n+1)+A201831(n+1)`
-/

namespace A201211.P4193032404819844547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202163 (n + 1) + A201831 (n + 1)

end

end A201211.P4193032404819844547

/-! ## A201211.P12466633911331799923

`A201216(∑[n+2]+4)`
-/

namespace A201211.P12466633911331799923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201211.P12466633911331799923

/-! ## A201211.P4784209124801953642

`lcm(1-and(2, n), A201216(A167614(n+1)))`
-/

namespace A201211.P4784209124801953642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A201216 (A167614 (n + 1)).toNat)

end

end A201211.P4784209124801953642

/-! ## A201211.P8694201786634739869

`A202163(n+1)+A201836(∑[n+2]+4)`
-/

namespace A201211.P8694201786634739869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202163 (n + 1) + A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201211.P8694201786634739869

/-! ## A201211.P2344460789846236410

`A202168(∑[n+2]+4)+A201831(n+1)`
-/

namespace A201211.P2344460789846236410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + A201831 (n + 1)

end

end A201211.P2344460789846236410

/-!
# A201212: Number of nX4 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201212, there is no canonical definition to state claims against.
-/

/-! ## A201212.P15550834665678559363

`A202164(n+1)+A201832(n+1)`
-/

namespace A201212.P15550834665678559363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202164 (n + 1) + A201832 (n + 1)

end

end A201212.P15550834665678559363

/-! ## A201212.P6975905029285330860

`A201216(∑[n+3]+7)`
-/

namespace A201212.P6975905029285330860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A201212.P6975905029285330860

/-! ## A201212.P10057997135392314655

`A202164(n+1)+A201836(∑[n+3]+7)`
-/

namespace A201212.P10057997135392314655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202164 (n + 1) + A201836 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A201212.P10057997135392314655

/-! ## A201212.P15496892160841840366

`A202168(∑[n+3]+7)+A201832(n+1)`
-/

namespace A201212.P15496892160841840366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (∑ j ∈ Finset.range (n + 1), f1 j + 7) + A201832 (n + 1)

end

end A201212.P15496892160841840366

/-! ## A201212.P5412369623606829961

`A202164(n+1)+A201836(A167614(n+2)+1)-A326679(n)`
-/

namespace A201212.P5412369623606829961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202164 (n + 1) + (A201836 (A167614 (n + 2) + 1).toNat - A326679 n)

end

end A201212.P5412369623606829961

/-!
# A201213: Number of nX5 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201213, there is no canonical definition to state claims against.
-/

/-! ## A201213.P10452677071513049658

`A202165(n+1)+A201833(n+1)`
-/

namespace A201213.P10452677071513049658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202165 (n + 1) + A201833 (n + 1)

end

end A201213.P10452677071513049658

/-! ## A201213.P6283562283474989948

`A201216(A374005(n+1))`
-/

namespace A201213.P6283562283474989948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A374005 (n + 1)).toNat

end

end A201213.P6283562283474989948

/-! ## A201213.P9498683890349985517

`A201216(A167499(n+3))`
-/

namespace A201213.P9498683890349985517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A167499 (n + 3)).toNat

end

end A201213.P9498683890349985517

/-! ## A201213.P9323909415254729146

`A201216(A155212(n)+13)`
-/

namespace A201213.P9323909415254729146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A155212 n + 13).toNat

end

end A201213.P9323909415254729146

/-! ## A201213.P6409797919241163750

`A201216(A056000(n)+15)`
-/

namespace A201213.P6409797919241163750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A056000 n + 15).toNat

end

end A201213.P6409797919241163750

/-!
# A201214: Number of nX6 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201214, there is no canonical definition to state claims against.
-/

/-! ## A201214.P13633913277312442307

`A201216(C(n+7, 2)-n)`
-/

namespace A201214.P13633913277312442307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (Nat.choose (n + 7) 2 - n)

end

end A201214.P13633913277312442307

/-! ## A201214.P13432827250192969993

`A201216(A374007(n+1))`
-/

namespace A201214.P13432827250192969993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A374007 (n + 1)).toNat

end

end A201214.P13432827250192969993

/-! ## A201214.P2317810500355439498

`A201216(A166136(n+4))`
-/

namespace A201214.P2317810500355439498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A166136 (n + 4)).toNat

end

end A201214.P2317810500355439498

/-! ## A201214.P8515112998572944712

`A201216(A056115(n)+21)`
-/

namespace A201214.P8515112998572944712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A056115 n + 21).toNat

end

end A201214.P8515112998572944712

/-! ## A201214.P14281990925774118322

`A201216(eq[7, A131818(n+1)])`
-/

namespace A201214.P14281990925774118322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201214.P14281990925774118322

/-!
# A201215: Number of nX7 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201215, there is no canonical definition to state claims against.
-/

/-! ## A201215.P17374047339361509418

`A201216(A374008(n+1))`
-/

namespace A201215.P17374047339361509418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A374008 (n + 1)).toNat

end

end A201215.P17374047339361509418

/-! ## A201215.P12352978585321034210

`A201216(A055999(n+4))`
-/

namespace A201215.P12352978585321034210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A055999 (n + 4)).toNat

end

end A201215.P12352978585321034210

/-! ## A201215.P17228652993766403872

`A201216(A056121(n)+22)`
-/

namespace A201215.P17228652993766403872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A056121 n + 22).toNat

end

end A201215.P17228652993766403872

/-! ## A201215.P7940082554276013033

`A201216(A056119(n)+28)`
-/

namespace A201215.P7940082554276013033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201216 (A056119 n + 28).toNat

end

end A201215.P7940082554276013033

/-!
# A201216: T(n,k)=Number of nXk 0..3 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A201216, there is no canonical definition to state claims against.
-/

/-! ## A201216.P11038434397893750157

`A202168(n+1)+A201836(n+1)`
-/

namespace A201216.P11038434397893750157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202168 (n + 1) + A201836 (n + 1)

end

end A201216.P11038434397893750157

/-! ## A201216.P381145662360683945

`A201836(n+1)+A097073(A144074(n)!)`
-/

namespace A201216.P381145662360683945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (n + 1) + A097073 (Nat.factorial (A144074 n).toNat)

end

end A201216.P381145662360683945

/-! ## A201216.P6090427628044713503

`A245492(A174036(n)+3)+A201836(n+1)`
-/

namespace A201216.P6090427628044713503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245492 (A174036 n + 3).toNat + A201836 (n + 1)

end

end A201216.P6090427628044713503

/-! ## A201216.P4998612653098297288

`A201836(n+1)+A085857(A176627(n)+4)`
-/

namespace A201216.P4998612653098297288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (n + 1) + A085857 (A176627 n + 4).toNat

end

end A201216.P4998612653098297288

/-! ## A201216.P11194887295720636942

`A201836(n+1)+4*A195827(A157147(n))`
-/

namespace A201216.P11194887295720636942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (n + 1) + 4 * A195827 (A157147 n).toNat

end

end A201216.P11194887295720636942

/-!
# A201217: Numbers such that (closest square) = (closest cube).

The programs for A201217, the canonical program `A201217.P11583434772116086358` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201217 has offset 1).

The definition of A201217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 883 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201217.P11583434772116086358

`lt[0, A010057(round(sqrt(n)))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A201217

/-- `lt[0, A010057(round(sqrt(n)))]` -/
def P11583434772116086358.Spec : Prop :=
  ∀ n, (P11583434772116086358.a n : ℤ) = A201217 (n + 1)

theorem P11583434772116086358.correct : P11583434772116086358.Spec := by
  intro n
  simp only [A201217, Nat.add_sub_cancel]

end A201217

/-! ## A201217.P4897686075598027470

`lt[A055401(round(sqrt(n))), 2]`
-/

namespace A201217.P4897686075598027470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A201217.P4897686075598027470

namespace A201217

/-- `lt[A055401(round(sqrt(n))), 2]` -/
def P4897686075598027470.Spec : Prop :=
  ∀ n, (P4897686075598027470.a n : ℤ) = A201217 (n + 1)

end A201217

/-! ## A201217.P6716601177995692409

`eq[0, A061023(n)]`
-/

namespace A201217.P6716601177995692409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201217.P6716601177995692409

namespace A201217

/-- `eq[0, A061023(n)]` -/
def P6716601177995692409.Spec : Prop :=
  ∀ n, (P6716601177995692409.a n : ℤ) = A201217 (n + 1)

end A201217

/-! ## A201217.P7015618125532316437

`eq[1, A010057(A000194(n))]`
-/

namespace A201217.P7015618125532316437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A000194 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201217.P7015618125532316437

namespace A201217

/-- `eq[1, A010057(A000194(n))]` -/
def P7015618125532316437.Spec : Prop :=
  ∀ n, (P7015618125532316437.a n : ℤ) = A201217 (n + 1)

end A201217

/-! ## A201217.P14291493142311245826

`eq[1, A010057(A053187(n))]`
-/

namespace A201217.P14291493142311245826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A053187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201217.P14291493142311245826

namespace A201217

/-- `eq[1, A010057(A053187(n))]` -/
def P14291493142311245826.Spec : Prop :=
  ∀ n, (P14291493142311245826.a n : ℤ) = A201217 (n + 1)

end A201217

/-! ## A201217.P15291810691445904691

`eq[A000194(n), A037213(A201053(n))]`
-/

namespace A201217.P15291810691445904691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A201053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201217.P15291810691445904691

namespace A201217

/-- `eq[A000194(n), A037213(A201053(n))]` -/
def P15291810691445904691.Spec : Prop :=
  ∀ n, (P15291810691445904691.a n : ℤ) = A201217 (n + 1)

end A201217

/-!
# A201219: a(1) = 0; for n>1, a(n) = 1 if n is a power of 2, otherwise a(n) = 2.

The programs for A201219, the canonical program `A201219.P4174117013781790206` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201219 has offset 1).

The definition of A201219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201219.P17656910526213141118

`ceil(atan(∑{p}[n+1, sqrt(#)]))`
-/

namespace A201219.P17656910526213141118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (∑ p ∈ Nat.primeFactors (f1 n), Real.sqrt (p : ℝ))⌉

end

end A201219.P17656910526213141118

namespace A201219

/-- `ceil(atan(∑{p}[n+1, sqrt(#)]))` -/
def P17656910526213141118.Spec : Prop :=
  ∀ n, P17656910526213141118.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P10899738712798433688

`round(atan(∑{p}[n+1, #])²)`
-/

namespace A201219.P10899738712798433688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ) ^ 2)

end

end A201219.P10899738712798433688

namespace A201219

/-- `round(atan(∑{p}[n+1, #])²)` -/
def P10899738712798433688.Spec : Prop :=
  ∀ n, P10899738712798433688.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P11470915687417455627

`ceil(atan(log2(∏{p}[n+1, #])))`
-/

namespace A201219.P11470915687417455627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ))⌉

end

end A201219.P11470915687417455627

namespace A201219

/-- `ceil(atan(log2(∏{p}[n+1, #])))` -/
def P11470915687417455627.Spec : Prop :=
  ∀ n, P11470915687417455627.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P10454363994230336492

`round(sinh(atan(∑{p}[n+1, #])))`
-/

namespace A201219.P10454363994230336492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.arctan ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ)))

end

end A201219.P10454363994230336492

namespace A201219

/-- `round(sinh(atan(∑{p}[n+1, #])))` -/
def P10454363994230336492.Spec : Prop :=
  ∀ n, P10454363994230336492.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P4174117013781790206

`2-C(2, ∏{p}[n+1, #])`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201219

/-- `2-C(2, ∏{p}[n+1, #])` -/
def P4174117013781790206.Spec : Prop :=
  ∀ n, P4174117013781790206.a n = A201219 (n + 1)

theorem P4174117013781790206.correct : P4174117013781790206.Spec := by
  intro n
  simp only [A201219, Nat.add_sub_cancel]

end A201219

/-! ## A201219.P316486752349747894

`ceil(atan(∏{p}[n+1, #]-1))`
-/

namespace A201219.P316486752349747894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - 1 : ℝ)⌉

end

end A201219.P316486752349747894

namespace A201219

/-- `ceil(atan(∏{p}[n+1, #]-1))` -/
def P316486752349747894.Spec : Prop :=
  ∀ n, P316486752349747894.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P3809678265489769425

`2-Δ[ceil(log2(2*n+1))]`
-/

namespace A201219.P3809678265489769425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (2 * n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A201219.P3809678265489769425

namespace A201219

/-- `2-Δ[ceil(log2(2*n+1))]` -/
def P3809678265489769425.Spec : Prop :=
  ∀ n, P3809678265489769425.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P9113463956239143034

`floor(or(n, 2*n)/(n+1))`
-/

namespace A201219.P9113463956239143034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor n (2 * n) : ℚ) / (n + 1 : ℚ)⌋

end

end A201219.P9113463956239143034

namespace A201219

/-- `floor(or(n, 2*n)/(n+1))` -/
def P9113463956239143034.Spec : Prop :=
  ∀ n, P9113463956239143034.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P16024981554418570146

`ceil(2*n/or(n, n+1))`
-/

namespace A201219.P16024981554418570146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n : ℚ) / (Nat.lor n (n + 1) : ℚ))⌉

end

end A201219.P16024981554418570146

namespace A201219

/-- `ceil(2*n/or(n, n+1))` -/
def P16024981554418570146.Spec : Prop :=
  ∀ n, P16024981554418570146.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P9742136230800664551

`ceil(atan(and(n, -(2*n+1))))`
-/

namespace A201219.P9742136230800664551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Int.land (n : ℤ) (-(2 * n + 1 : ℤ)) : ℝ)⌉

end

end A201219.P9742136230800664551

namespace A201219

/-- `ceil(atan(and(n, -(2*n+1))))` -/
def P9742136230800664551.Spec : Prop :=
  ∀ n, P9742136230800664551.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P11536486501176024

`round(acot(Δ[ceil(log2(2*n+1))]))`
-/

namespace A201219.P11536486501176024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (2 * n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ))

end

end A201219.P11536486501176024

namespace A201219

/-- `round(acot(Δ[ceil(log2(2*n+1))]))` -/
def P11536486501176024.Spec : Prop :=
  ∀ n, P11536486501176024.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P11030013148735658697

`ceil(ϕ-ϕ/∏{p}[n+1, #])`
-/

namespace A201219.P11030013148735658697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio - Real.goldenRatio / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ)⌉

end

end A201219.P11030013148735658697

namespace A201219

/-- `ceil(ϕ-ϕ/∏{p}[n+1, #])` -/
def P11030013148735658697.Spec : Prop :=
  ∀ n, P11030013148735658697.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P8042221297591604009

`gcd(2, n*a(floor(n/2)))` with `a(0)=0, a(1)=1`
-/

namespace A201219.P8042221297591604009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.gcd 2 (n * a ⌊(n : ℚ) / 2⌋.toNat)

end

end A201219.P8042221297591604009

namespace A201219

/-- `gcd(2, n*a(floor(n/2)))` -/
def P8042221297591604009.Spec : Prop :=
  ∀ n, (P8042221297591604009.a n : ℤ) = A201219 (n + 1)

end A201219

/-! ## A201219.P6906769808939156062

`ceil(and(2*n, -n)/(n+1))`
-/

namespace A201219.P6906769808939156062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land (2 * n : ℤ) (-(n : ℤ)) : ℚ) / (n + 1 : ℚ)⌉

end

end A201219.P6906769808939156062

namespace A201219

/-- `ceil(and(2*n, -n)/(n+1))` -/
def P6906769808939156062.Spec : Prop :=
  ∀ n, P6906769808939156062.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P12822761522562791688

`ceil((and(n, n+1)+n)/(n+1))`
-/

namespace A201219.P12822761522562791688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land n (n + 1) + n : ℚ) / (n + 1 : ℚ)⌉

end

end A201219.P12822761522562791688

namespace A201219

/-- `ceil((and(n, n+1)+n)/(n+1))` -/
def P12822761522562791688.Spec : Prop :=
  ∀ n, P12822761522562791688.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P11825165823005438662

`ceil(2*n/(xor(n, n+1)+n))`
-/

namespace A201219.P11825165823005438662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) / (Nat.xor n (n + 1) + n : ℚ)⌉

end

end A201219.P11825165823005438662

namespace A201219

/-- `ceil(2*n/(xor(n, n+1)+n))` -/
def P11825165823005438662.Spec : Prop :=
  ∀ n, P11825165823005438662.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P15538051430641090333

`ceil((∑{p}[n+1, #]+n)/(n+2))`
-/

namespace A201219.P15538051430641090333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ p ∈ Nat.primeFactors (f1 n), p + n : ℕ) : ℚ) / (n + 2 : ℚ)⌉

end

end A201219.P15538051430641090333

namespace A201219

/-- `ceil((∑{p}[n+1, #]+n)/(n+2))` -/
def P15538051430641090333.Spec : Prop :=
  ∀ n, P15538051430641090333.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P11528508029362162745

`floor((and(n, n+1)+2*n)/(n+1))`
-/

namespace A201219.P11528508029362162745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land n (n + 1) + 2 * n : ℚ) / (n + 1 : ℚ)⌋

end

end A201219.P11528508029362162745

namespace A201219

/-- `floor((and(n, n+1)+2*n)/(n+1))` -/
def P11528508029362162745.Spec : Prop :=
  ∀ n, P11528508029362162745.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P1373260493832631245

`round((or(n, 2*n)+n)/(2*n+1))`
-/

namespace A201219.P1373260493832631245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor n (2 * n) + n : ℚ) / (2 * n + 1 : ℚ))

end

end A201219.P1373260493832631245

namespace A201219

/-- `round((or(n, 2*n)+n)/(2*n+1))` -/
def P1373260493832631245.Spec : Prop :=
  ∀ n, P1373260493832631245.a n = A201219 (n + 1)

end A201219

/-! ## A201219.P4925623334529231639

`a(floor((1-a(n-1)+n)/2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A201219.P4925623334529231639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a ⌊(1 - (a (n - 1) : ℤ) + (n : ℤ) : ℚ) / 2⌋.toNat

end

end A201219.P4925623334529231639

namespace A201219

/-- `a(floor((1-a(n-1)+n)/2))` -/
def P4925623334529231639.Spec : Prop :=
  ∀ n, (P4925623334529231639.a n : ℤ) = A201219 (n + 1)

end A201219

/-!
# A201220: Numbers m such that m, m-1, m-2 and m-3 are 1,2,3,4-almost primes respectively.

The programs for A201220, there is no canonical definition to state claims against.
-/

/-! ## A201220.P5377501983687368772

`∩[A144396(A063640(n+1)), A201147(n+1)]`
-/

namespace A201220.P5377501983687368772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A063640 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201220.P5377501983687368772

/-! ## A201220.P6280306008486677235

`∩[A144396(A063640(n+1)), A063642(n+1)]`
-/

namespace A201220.P6280306008486677235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A063640 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201220.P6280306008486677235

/-!
# A201222: Number of ways to place k non-attacking knights on a 2 X n horizontal cylinder, summed over all k>=0.

The programs for A201222, there is no canonical definition to state claims against.
-/

/-! ## A201222.P1123643053909133208

`A208982(A020641(n+2))`
-/

namespace A201222.P1123643053909133208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208982 (A020641 (n + 2)).toNat

end

end A201222.P1123643053909133208

/-!
# A201224: E.g.f.: -log(cos(x) - x).

The programs for A201224, there is no canonical definition to state claims against.
-/

/-! ## A201224.P13794215221357782706

`∑[A175018(A175935(n))]`
-/

namespace A201224.P13794215221357782706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175018 (A175935 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201224.P13794215221357782706

/-! ## A201224.P13387489278786401428

`A130497(A005315(n+1))+n`
-/

namespace A201224.P13387489278786401428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (A005315 (n + 1)).toNat + (n : ℤ)

end

end A201224.P13387489278786401428

/-!
# A201228: Number of n X n 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201228, there is no canonical definition to state claims against.
-/

/-! ## A201228.P408252208906136549

`A201235(∑[4*n]+1)`
-/

namespace A201228.P408252208906136549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201228.P408252208906136549

/-! ## A201228.P17583300681374660236

`A201235(A001844(n))+char[7]`
-/

namespace A201228.P17583300681374660236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201228.P17583300681374660236

/-! ## A201228.P7110881480110781810

`A308930(n)+A201235(A001844(n))`
-/

namespace A201228.P7110881480110781810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308930 n + A201235 (A001844 n).toNat

end

end A201228.P7110881480110781810

/-!
# A201229: Number of nX2 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201229, there is no canonical definition to state claims against.
-/

/-! ## A201229.P2314356367205288678

`A201235(∑[n+1]+2)`
-/

namespace A201229.P2314356367205288678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201229.P2314356367205288678

/-! ## A201229.P1239781430490108080

`lcm(A201235(A000096(n)+3), A219208(n))`
-/

namespace A201229.P1239781430490108080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A201235 (A000096 n + 3).toNat) (A219208 n)

end

end A201229.P1239781430490108080

/-! ## A201229.P17192084906393689703

`A201235(A000096(n)+3)%A219216(n+1)`
-/

namespace A201229.P17192084906393689703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201235 (A000096 n + 3).toNat) (A219216 (n + 1))

end

end A201229.P17192084906393689703

/-! ## A201229.P5771602618958745509

`A335446(2*n+1)+A201235(A000096(n)+3)`
-/

namespace A201229.P5771602618958745509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (2 * n + 1) + A201235 (A000096 n + 3).toNat

end

end A201229.P5771602618958745509

/-! ## A201229.P10483078907554209303

`A201235(A000096(n+1))+A014083(n)`
-/

namespace A201229.P10483078907554209303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A000096 (n + 1)).toNat + A014083 n

end

end A201229.P10483078907554209303

/-!
# A201230: Number of nX3 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201230, there is no canonical definition to state claims against.
-/

/-! ## A201230.P4833465550271799722

`A201235(∑[n+2]+4)`
-/

namespace A201230.P4833465550271799722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201230.P4833465550271799722

/-! ## A201230.P719998698483948140

`lcm(1-and(2, n), A201235(A167614(n+1)))`
-/

namespace A201230.P719998698483948140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A201235 (A167614 (n + 1)).toNat)

end

end A201230.P719998698483948140

/-! ## A201230.P7184453834135281503

`A201235(A167614(n+1))+A014083(n)`
-/

namespace A201230.P7184453834135281503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A167614 (n + 1)).toNat + A014083 n

end

end A201230.P7184453834135281503

/-! ## A201230.P9457506708896677761

`A201235(A167614(n+1))+A025439(n)`
-/

namespace A201230.P9457506708896677761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A167614 (n + 1)).toNat + A025439 n

end

end A201230.P9457506708896677761

/-! ## A201230.P2078953851702928213

`A201235(A167614(n+1))+A025466(n)`
-/

namespace A201230.P2078953851702928213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A167614 (n + 1)).toNat + A025466 n

end

end A201230.P2078953851702928213

/-!
# A201231: Number of nX4 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201231, there is no canonical definition to state claims against.
-/

/-! ## A201231.P4606768463539514387

`A201235(A374004(n+1))`
-/

namespace A201231.P4606768463539514387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A374004 (n + 1)).toNat

end

end A201231.P4606768463539514387

/-! ## A201231.P16888008665679790854

`A201235(A141214(n)+7)`
-/

namespace A201231.P16888008665679790854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A141214 n + 7).toNat

end

end A201231.P16888008665679790854

/-! ## A201231.P3192924514750121834

`A201235(A052905(n)+9)`
-/

namespace A201231.P3192924514750121834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A052905 n + 9).toNat

end

end A201231.P3192924514750121834

/-! ## A201231.P6888092195642860192

`A201235(A055999(n)+10)`
-/

namespace A201231.P6888092195642860192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A055999 n + 10).toNat

end

end A201231.P6888092195642860192

/-! ## A201231.P4593535498210329695

`A201235(eq[5, A066657(n)])`
-/

namespace A201231.P4593535498210329695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201231.P4593535498210329695

/-!
# A201232: Number of n X 5 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201232, there is no canonical definition to state claims against.
-/

/-! ## A201232.P16487568659841125208

`A201235(A374005(n+1))`
-/

namespace A201232.P16487568659841125208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A374005 (n + 1)).toNat

end

end A201232.P16487568659841125208

/-! ## A201232.P6359137738799374092

`A201235(A167499(n+3))`
-/

namespace A201232.P6359137738799374092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A167499 (n + 3)).toNat

end

end A201232.P6359137738799374092

/-! ## A201232.P17296354523260929100

`A201235(A155212(n)+13)`
-/

namespace A201232.P17296354523260929100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A155212 n + 13).toNat

end

end A201232.P17296354523260929100

/-! ## A201232.P11755197517300581786

`A201235(eq[7, A066657(n)])`
-/

namespace A201232.P11755197517300581786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201232.P11755197517300581786

/-! ## A201232.P8156186169680903663

`A201235(A000217(n+4)+5)`
-/

namespace A201232.P8156186169680903663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A000217 (n + 4) + 5).toNat

end

end A201232.P8156186169680903663

/-!
# A201233: Number of nX6 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201233, there is no canonical definition to state claims against.
-/

/-! ## A201233.P3122512985647560899

`A201235(A374007(n+1))`
-/

namespace A201233.P3122512985647560899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A374007 (n + 1)).toNat

end

end A201233.P3122512985647560899

/-! ## A201233.P10642160255830202279

`A201235(A166136(n+4))`
-/

namespace A201233.P10642160255830202279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A166136 (n + 4)).toNat

end

end A201233.P10642160255830202279

/-! ## A201233.P6260591176706259023

`A201235(A056115(n)+21)`
-/

namespace A201233.P6260591176706259023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A056115 n + 21).toNat

end

end A201233.P6260591176706259023

/-! ## A201233.P4559861748735311262

`A201235(A167499(n+4)+1)`
-/

namespace A201233.P4559861748735311262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A167499 (n + 4) + 1).toNat

end

end A201233.P4559861748735311262

/-! ## A201233.P13367089431809161247

`A201235(A167614(n+4)+3)`
-/

namespace A201233.P13367089431809161247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A167614 (n + 4) + 3).toNat

end

end A201233.P13367089431809161247

/-!
# A201234: Number of n X 7 0..3 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201234, there is no canonical definition to state claims against.
-/

/-! ## A201234.P879364140210573563

`A201235(A374008(n+1))`
-/

namespace A201234.P879364140210573563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A374008 (n + 1)).toNat

end

end A201234.P879364140210573563

/-! ## A201234.P16261398535542425579

`A201235(A055999(n+4))`
-/

namespace A201234.P16261398535542425579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A055999 (n + 4)).toNat

end

end A201234.P16261398535542425579

/-! ## A201234.P15930697648008419882

`A201235(A056119(n)+28)`
-/

namespace A201234.P15930697648008419882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (A056119 n + 28).toNat

end

end A201234.P15930697648008419882

/-! ## A201234.P6163090625790696425

`A201235(eq[4, A219347(n)])`
-/

namespace A201234.P6163090625790696425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201234.P6163090625790696425

/-!
# A201236: Number of ways to place 2 non-attacking wazirs on an n X n toroidal board.

The programs for A201236, the canonical program `A201236.P15099139375137482487` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201236 has offset 1).

The definition of A201236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201236.P15099139375137482487

`abs(abs(C((n+1)², 2)-(n+1)²)-(n+1)²)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201236

/-- `abs(abs(C((n+1)², 2)-(n+1)²)-(n+1)²)` -/
def P15099139375137482487.Spec : Prop :=
  ∀ n, P15099139375137482487.a n = A201236 (n + 1)

theorem P15099139375137482487.correct : P15099139375137482487.Spec := by
  intro n
  simp only [A201236, Nat.add_sub_cancel]

end A201236

/-! ## A201236.P508849111097795593

`(A289207(n)+n²/2)*(n+1)²`
-/

namespace A201236.P508849111097795593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A289207 n : ℚ) + (n ^ 2 : ℚ) / 2) * ((n + 1) ^ 2 : ℚ)

end

end A201236.P508849111097795593

namespace A201236

/-- `(A289207(n)+n²/2)*(n+1)²` -/
def P508849111097795593.Spec : Prop :=
  ∀ n, P508849111097795593.a n = (A201236 (n + 1) : ℚ)

end A201236

/-! ## A201236.P15424462073453370972

`abs(abs(A172225(n+1)-(n+1))-(n+1))`
-/

namespace A201236.P15424462073453370972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A172225 (n + 1) - (n + 1 : ℤ)| - (n + 1 : ℤ))|

end

end A201236.P15424462073453370972

namespace A201236

/-- `abs(abs(A172225(n+1)-(n+1))-(n+1))` -/
def P15424462073453370972.Spec : Prop :=
  ∀ n, P15424462073453370972.a n = A201236 (n + 1)

end A201236

/-! ## A201236.P7855011031271145408

`A194650(n+1)+record[A014107(n)]`
-/

namespace A201236.P7855011031271145408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194650 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201236.P7855011031271145408

namespace A201236

/-- `A194650(n+1)+record[A014107(n)]` -/
def P7855011031271145408.Spec : Prop :=
  ∀ n, P7855011031271145408.a n = A201236 (n + 1)

end A201236

/-! ## A201236.P6913853551685333327

`A194650(n+1)+A000096(comp[2*(n+1)])`
-/

namespace A201236.P6913853551685333327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194650 (n + 1) + A000096 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A201236.P6913853551685333327

namespace A201236

/-- `A194650(n+1)+A000096(comp[2*(n+1)])` -/
def P6913853551685333327.Spec : Prop :=
  ∀ n, P6913853551685333327.a n = A201236 (n + 1)

end A201236

/-! ## A201236.P2410035804148995100

`abs(abs(A000217(abs(1-(n+1)²))-(n+1)²)-(n+1)²)`
-/

namespace A201236.P2410035804148995100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|(A000217 |1 - ((n + 1) ^ 2 : ℤ)|.toNat - ((n + 1) ^ 2 : ℤ))| - ((n + 1) ^ 2 : ℤ))|

end

end A201236.P2410035804148995100

namespace A201236

/-- `abs(abs(A000217(abs(1-(n+1)²))-(n+1)²)-(n+1)²)` -/
def P2410035804148995100.Spec : Prop :=
  ∀ n, P2410035804148995100.a n = A201236 (n + 1)

end A201236

/-! ## A201236.P3908509307517656922

`(n+1)*Δ[A022856(A000124(n))]`
-/

namespace A201236.P3908509307517656922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A201236.P3908509307517656922

namespace A201236

/-- `(n+1)*Δ[A022856(A000124(n))]` -/
def P3908509307517656922.Spec : Prop :=
  ∀ n, P3908509307517656922.a n = A201236 (n + 1)

end A201236

/-! ## A201236.P15938434877319041108

`Δ[A022856(A000124(n))]*A008619(2*n)`
-/

namespace A201236.P15938434877319041108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008619 (2 * n)

end

end A201236.P15938434877319041108

namespace A201236

/-- `Δ[A022856(A000124(n))]*A008619(2*n)` -/
def P15938434877319041108.Spec : Prop :=
  ∀ n, P15938434877319041108.a n = A201236 (n + 1)

end A201236

/-! ## A201236.P6017183610380754547

`Δ[A022856(A000124(n))]*A008611(3*n)`
-/

namespace A201236.P6017183610380754547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008611 (3 * n)

end

end A201236.P6017183610380754547

namespace A201236

/-- `Δ[A022856(A000124(n))]*A008611(3*n)` -/
def P6017183610380754547.Spec : Prop :=
  ∀ n, P6017183610380754547.a n = A201236 (n + 1)

end A201236

/-!
# A201237: Number of ways to place 3 non-attacking wazirs on an n X n toroidal board.

The programs for A201237, there is no canonical definition to state claims against.
-/

/-! ## A201237.P11103808860317047808

`A106610((n^(n%2)+n)*(n^7-n)/7)`
-/

namespace A201237.P11103808860317047808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (SequenceMachineLib.roundAway ((n ^ (n % 2) + n : ℚ) * (((n ^ 7 : ℤ) - (n : ℤ) : ℚ) / 7))).toNat

end

end A201237.P11103808860317047808

/-!
# A201238: Number of ways to place 4 non-attacking wazirs on an n X n toroidal board.

The programs for A201238, there is no canonical definition to state claims against.
-/

/-! ## A201238.P7840404320255790852

`xor(3, A351561(A281312(n+1)))`
-/

namespace A201238.P7840404320255790852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A351561 (A281312 (n + 1)).toNat)

end

end A201238.P7840404320255790852

/-!
# A201239: Number of ways to place 5 non-attacking wazirs on an n X n toroidal board.

The programs for A201239, there is no canonical definition to state claims against.
-/

/-! ## A201239.P9926438373150301006

`Δ[A279403(A112527(n+1))²]`
-/

namespace A201239.P9926438373150301006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279403 (A112527 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201239.P9926438373150301006

/-!
# A201240: Number of ways to place 6 non-attacking wazirs on an n X n toroidal board.

The programs for A201240, there is no canonical definition to state claims against.
-/

/-! ## A201240.P3030407079272541805

`A336866(A219653(n)²-n)`
-/

namespace A201240.P3030407079272541805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336866 (A219653 n ^ 2 - (n : ℤ)).toNat

end

end A201240.P3030407079272541805

/-!
# A201241: Number of ways to place 7 non-attacking wazirs on an n X n toroidal board.

The programs for A201241, there is no canonical definition to state claims against.
-/

/-! ## A201241.P15577198286298594963

`A022479(Δ[record[∏{digits}[2^n, #]]])`
-/

namespace A201241.P15577198286298594963
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022479 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A201241.P15577198286298594963

/-!
# A201242: Number of ways to place 8 non-attacking wazirs on an n X n toroidal board.

The programs for A201242, there is no canonical definition to state claims against.
-/

/-! ## A201242.P5653070672410666298

`floor(A030246(n)/32)`
-/

namespace A201242.P5653070672410666298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030246 n : ℚ) / 32⌋

end

end A201242.P5653070672410666298

/-!
# A201243: Number of ways to place 2 non-attacking ferses on an n X n board.

The programs for A201243, the canonical program `A201243.P7871613985086963161` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201243 has offset 1).

The definition of A201243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201243.P7871613985086963161

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=28, a(3)=102, a(4)=268`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201243

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P7871613985086963161.Spec : Prop :=
  ∀ n, P7871613985086963161.a n = A201243 (n + 1)

theorem P7871613985086963161.correct : P7871613985086963161.Spec := by
  intro n
  simp only [A201243, Nat.add_sub_cancel]

end A201243

/-! ## A201243.P18246665941338472023

`C((n+1)², 2)-2*n²`
-/

namespace A201243.P18246665941338472023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) 2 : ℤ) - (2 * n ^ 2 : ℤ)

end

end A201243.P18246665941338472023

namespace A201243

/-- `C((n+1)², 2)-2*n²` -/
def P18246665941338472023.Spec : Prop :=
  ∀ n, P18246665941338472023.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P14424143397566172697

`2*∑[n]²+n^3+n`
-/

namespace A201243.P14424143397566172697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n ^ 3 + n)

end

end A201243.P14424143397566172697

namespace A201243

/-- `2*∑[n]²+n^3+n` -/
def P14424143397566172697.Spec : Prop :=
  ∀ n, (P14424143397566172697.a n : ℤ) = A201243 (n + 1)

end A201243

/-! ## A201243.P1578109764174283755

`n*((n+1)*C(n+2, 2)-2*n)`
-/

namespace A201243.P1578109764174283755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((n + 1) * Nat.choose (n + 2) 2 : ℤ) - (2 * n : ℤ))

end

end A201243.P1578109764174283755

namespace A201243

/-- `n*((n+1)*C(n+2, 2)-2*n)` -/
def P1578109764174283755.Spec : Prop :=
  ∀ n, P1578109764174283755.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P17430234214944423236

`n*(A393231(n+1)+1)`
-/

namespace A201243.P17430234214944423236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A393231 (n + 1) + 1)

end

end A201243.P17430234214944423236

namespace A201243

/-- `n*(A393231(n+1)+1)` -/
def P17430234214944423236.Spec : Prop :=
  ∀ n, P17430234214944423236.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P9068309144448735652

`2*(A006011(n+1)-n²)`
-/

namespace A201243.P9068309144448735652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006011 (n + 1) - (n ^ 2 : ℤ))

end

end A201243.P9068309144448735652

namespace A201243

/-- `2*(A006011(n+1)-n²)` -/
def P9068309144448735652.Spec : Prop :=
  ∀ n, P9068309144448735652.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P16798550513751220103

`n*(A077414(n+1)-(n-1))`
-/

namespace A201243.P16798550513751220103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A077414 (n + 1) - ((n : ℤ) - 1))

end

end A201243.P16798550513751220103

namespace A201243

/-- `n*(A077414(n+1)-(n-1))` -/
def P16798550513751220103.Spec : Prop :=
  ∀ n, P16798550513751220103.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P1075842507564396500

`n*(∑[∑[A016777(n)]]-2*n)`
-/

namespace A201243.P1075842507564396500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ))

end

end A201243.P1075842507564396500

namespace A201243

/-- `n*(∑[∑[A016777(n)]]-2*n)` -/
def P1075842507564396500.Spec : Prop :=
  ∀ n, P1075842507564396500.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P8292525620318154994

`2*(A006003(n)+A000537(n))`
-/

namespace A201243.P8292525620318154994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006003 n + A000537 n)

end

end A201243.P8292525620318154994

namespace A201243

/-- `2*(A006003(n)+A000537(n))` -/
def P8292525620318154994.Spec : Prop :=
  ∀ n, P8292525620318154994.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P5220222978416143307

`n*(A058331(n)+A006003(n))`
-/

namespace A201243.P5220222978416143307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A058331 n + A006003 n)

end

end A201243.P5220222978416143307

namespace A201243

/-- `n*(A058331(n)+A006003(n))` -/
def P5220222978416143307.Spec : Prop :=
  ∀ n, P5220222978416143307.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P8502453111457629572

`n*(A064808(n)+A000326(n))`
-/

namespace A201243.P8502453111457629572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A064808 n + A000326 n)

end

end A201243.P8502453111457629572

namespace A201243

/-- `n*(A064808(n)+A000326(n))` -/
def P8502453111457629572.Spec : Prop :=
  ∀ n, P8502453111457629572.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P4777525512198834139

`2*(A006003(n)+A000217(n)²)`
-/

namespace A201243.P4777525512198834139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006003 n + A000217 n ^ 2)

end

end A201243.P4777525512198834139

namespace A201243

/-- `2*(A006003(n)+A000217(n)²)` -/
def P4777525512198834139.Spec : Prop :=
  ∀ n, P4777525512198834139.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P1823623819075943629

`(A005563(n)²-A000567(n))/2`
-/

namespace A201243.P1823623819075943629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005563 n ^ 2 - A000567 n : ℚ) / 2

end

end A201243.P1823623819075943629

namespace A201243

/-- `(A005563(n)²-A000567(n))/2` -/
def P1823623819075943629.Spec : Prop :=
  ∀ n, P1823623819075943629.a n = (A201243 (n + 1) : ℚ)

end A201243

/-! ## A201243.P6225843823625790260

`2*(A000217(n+1)*A000217(n)-n²)`
-/

namespace A201243.P6225843823625790260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000217 (n + 1) * A000217 n - (n ^ 2 : ℤ))

end

end A201243.P6225843823625790260

namespace A201243

/-- `2*(A000217(n+1)*A000217(n)-n²)` -/
def P6225843823625790260.Spec : Prop :=
  ∀ n, P6225843823625790260.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P15386486182375621639

`2*(A239352(n+1)+n)`
-/

namespace A201243.P15386486182375621639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A239352 (n + 1) + (n : ℤ))

end

end A201243.P15386486182375621639

namespace A201243

/-- `2*(A239352(n+1)+n)` -/
def P15386486182375621639.Spec : Prop :=
  ∀ n, P15386486182375621639.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P9493930493176381993

`n*(A002411(n+1)-A004275(n+1))`
-/

namespace A201243.P9493930493176381993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002411 (n + 1) - A004275 (n + 1))

end

end A201243.P9493930493176381993

namespace A201243

/-- `n*(A002411(n+1)-A004275(n+1))` -/
def P9493930493176381993.Spec : Prop :=
  ∀ n, P9493930493176381993.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P18111221896962058515

`n*(A100119(n+1)-A004273(n+1))`
-/

namespace A201243.P18111221896962058515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A100119 (n + 1) - A004273 (n + 1))

end

end A201243.P18111221896962058515

namespace A201243

/-- `n*(A100119(n+1)-A004273(n+1))` -/
def P18111221896962058515.Spec : Prop :=
  ∀ n, P18111221896962058515.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P10259159553784768230

`n*(A002411(n+1)-A028310(2*n))`
-/

namespace A201243.P10259159553784768230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002411 (n + 1) - A028310 (2 * n))

end

end A201243.P10259159553784768230

namespace A201243

/-- `n*(A002411(n+1)-A028310(2*n))` -/
def P10259159553784768230.Spec : Prop :=
  ∀ n, P10259159553784768230.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P2339132880363804672

`record[A057590(n+1)-A057569(n+1)]`
-/

namespace A201243.P2339132880363804672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057590 (n + 1) - A057569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201243.P2339132880363804672

namespace A201243

/-- `record[A057590(n+1)-A057569(n+1)]` -/
def P2339132880363804672.Spec : Prop :=
  ∀ n, P2339132880363804672.a n = A201243 (n + 1)

end A201243

/-! ## A201243.P5932595049959292197

`(A060886(n+1)-A002522(2*n))/2`
-/

namespace A201243.P5932595049959292197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060886 (n + 1) - A002522 (2 * n) : ℚ) / 2

end

end A201243.P5932595049959292197

namespace A201243

/-- `(A060886(n+1)-A002522(2*n))/2` -/
def P5932595049959292197.Spec : Prop :=
  ∀ n, P5932595049959292197.a n = (A201243 (n + 1) : ℚ)

end A201243

/-!
# A201247: Number of ways to place 6 non-attacking ferses on an n X n board.

The programs for A201247, there is no canonical definition to state claims against.
-/

/-! ## A201247.P4820335539469497821

`A002620(A001372(∑[lcm(2, n)/2]))`
-/

namespace A201247.P4820335539469497821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A001372 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A201247.P4820335539469497821

/-!
# A201248: Number of ways to place 7 non-attacking ferses on an n X n board.

The programs for A201248, there is no canonical definition to state claims against.
-/

/-! ## A201248.P16666623692608499196

`lcm((n+1)*Δ[3^n], A241379(floor(3^(n-1))))`
-/

namespace A201248.P16666623692608499196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (A241379 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat)

end

end A201248.P16666623692608499196

/-!
# A201249: Initial primes in prime septuplets (p, p+2, p+6, p+8, p+12, p+18, p+20) preceding the maximal gaps in A201051.

The programs for A201249, there is no canonical definition to state claims against.
-/

/-! ## A201249.P11871710706081564168

`A233425(n+1)-A201051(n+1)`
-/

namespace A201249.P11871710706081564168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233425 (n + 1) - A201051 (n + 1)

end

end A201249.P11871710706081564168

/-! ## A201249.P6088498881958449786

`A233425(n+1)-record[Δ[A022009(n+1)]]`
-/

namespace A201249.P6088498881958449786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022009 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233425 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201249.P6088498881958449786

/-! ## A201249.P2057680182430471554

`A233425(n+1)-record[A022009(n+2)-A022009(n+1)]`
-/

namespace A201249.P2057680182430471554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022009 (n + 2) - A022009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233425 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201249.P2057680182430471554

/-!
# A201251: Record (maximal) gaps between prime septuplets (p, p+2, p+8, p+12, p+14, p+18, p+20).

The programs for A201251, there is no canonical definition to state claims against.
-/

/-! ## A201251.P1014110774776217400

`A233038(n+1)-A201252(n+1)`
-/

namespace A201251.P1014110774776217400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233038 (n + 1) - A201252 (n + 1)

end

end A201251.P1014110774776217400

/-! ## A201251.P16717261703668939401

`record[Δ[A022010(n+1)]]`
-/

namespace A201251.P16717261703668939401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201251.P16717261703668939401

/-! ## A201251.P15491540297843605641

`record[A022010(n+2)-A022010(n+1)]`
-/

namespace A201251.P15491540297843605641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 2) - A022010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201251.P15491540297843605641

/-!
# A201252: Initial primes in prime septuplets (p, p+2, p+8, p+12, p+14, p+18, p+20) preceding the maximal gaps in A201251.

The programs for A201252, there is no canonical definition to state claims against.
-/

/-! ## A201252.P6083831931098674012

`A233038(n+1)-A201251(n+1)`
-/

namespace A201252.P6083831931098674012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233038 (n + 1) - A201251 (n + 1)

end

end A201252.P6083831931098674012

/-! ## A201252.P15363030901161879465

`A233038(n+1)-record[Δ[A022010(n+1)]]`
-/

namespace A201252.P15363030901161879465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233038 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201252.P15363030901161879465

/-! ## A201252.P16748789266143475436

`A233038(n+1)-record[A022010(n+2)-A022010(n+1)]`
-/

namespace A201252.P16748789266143475436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 2) - A022010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233038 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201252.P16748789266143475436

/-!
# A201254: Primes of the form 7n^3+5.

The programs for A201254, there is no canonical definition to state claims against.
-/

/-! ## A201254.P10198699041972535896

`p?[7*n^3+5]`
-/

namespace A201254.P10198699041972535896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201254.P10198699041972535896

/-! ## A201254.P13958522231700206371

`∏{d}[p?[7*(A000578(n)+1)-2], #]`
-/

namespace A201254.P13958522231700206371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A000578 n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201254.P13958522231700206371

/-!
# A201256: Primes of the form 7k^3+8.

The programs for A201256, there is no canonical definition to state claims against.
-/

/-! ## A201256.P6498896384330636657

`p?[7*n^3+8]`
-/

namespace A201256.P6498896384330636657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201256.P6498896384330636657

/-!
# A201257: Primes of the form 7n^3+9.

The programs for A201257, there is no canonical definition to state claims against.
-/

/-! ## A201257.P11311748965815780079

`p?[7*n^3+9]`
-/

namespace A201257.P11311748965815780079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201257.P11311748965815780079

/-!
# A201258: Primes of the form 7*n^3 + 10.

The programs for A201258, there is no canonical definition to state claims against.
-/

/-! ## A201258.P2752888146192090626

`p?[7*n^3+10]`
-/

namespace A201258.P2752888146192090626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201258.P2752888146192090626

/-! ## A201258.P11958466932748049831

`round(sqrt(p?[7*n*n²+10]²+1))`
-/

namespace A201258.P11958466932748049831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n * n ^ 2) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1 : ℝ))

end

end A201258.P11958466932748049831

/-!
# A201259: Primes of the form n^3+3.

The programs for A201259, the canonical program `A201259.P11575144589005381822` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201259 has offset 1).

The definition of A201259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201259.P11575144589005381822

`A049441(n+1)^3+3`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A201259

/-- `A049441(n+1)^3+3` -/
def P11575144589005381822.Spec : Prop :=
  ∀ n, P11575144589005381822.a n = A201259 (n + 1)

theorem P11575144589005381822.correct : P11575144589005381822.Spec := by
  intro n
  simp only [A201259, Nat.add_sub_cancel]

end A201259

/-! ## A201259.P5227868289963520558

`A084378(A049441(n+1))`
-/

namespace A201259.P5227868289963520558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084378 (A049441 (n + 1)).toNat

end

end A201259.P5227868289963520558

namespace A201259

/-- `A084378(A049441(n+1))` -/
def P5227868289963520558.Spec : Prop :=
  ∀ n, P5227868289963520558.a n = A201259 (n + 1)

end A201259

/-! ## A201259.P1004421278726490646

`xor(3, A000578(A049441(1-(n-2*n))))`
-/

namespace A201259.P1004421278726490646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A000578 (A049441 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat)

end

end A201259.P1004421278726490646

namespace A201259

/-- `xor(3, A000578(A049441(1-(n-2*n))))` -/
def P1004421278726490646.Spec : Prop :=
  ∀ n, P1004421278726490646.a n = A201259 (n + 1)

end A201259

/-! ## A201259.P8385536255027442082

`A084378(eq[A121842(n), A157532(n+1)])`
-/

namespace A201259.P8385536255027442082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084378 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A201259.P8385536255027442082

namespace A201259

/-- `A084378(eq[A121842(n), A157532(n+1)])` -/
def P8385536255027442082.Spec : Prop :=
  ∀ n, P8385536255027442082.a n = A201259 (n + 1)

end A201259

/-! ## A201259.P3875666905858526435

`A084381(eq[A121842(n), A157532(n+1)])-2`
-/

namespace A201259.P3875666905858526435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084381 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 2

end

end A201259.P3875666905858526435

namespace A201259

/-- `A084381(eq[A121842(n), A157532(n+1)])-2` -/
def P3875666905858526435.Spec : Prop :=
  ∀ n, P3875666905858526435.a n = A201259 (n + 1)

end A201259

/-!
# A201260: Primes of the form k^3 + 5.

The programs for A201260, there is no canonical definition to state claims against.
-/

/-! ## A201260.P13432246822399981968

`p?[n^3+5]`
-/

namespace A201260.P13432246822399981968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201260.P13432246822399981968

/-! ## A201260.P6570446566655874891

`or(1, p?[n*n²+5])`
-/

namespace A201260.P6570446566655874891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201260.P6570446566655874891

/-! ## A201260.P11339969744977781070

`∏{d}[p?[n*n²+5], #]`
-/

namespace A201260.P11339969744977781070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201260.P11339969744977781070

/-! ## A201260.P17264517315675437809

`∏{p}[p?[n*n²+5], #]`
-/

namespace A201260.P17264517315675437809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201260.P17264517315675437809

/-! ## A201260.P9547791545642488795

`or(1, p?[xor(5, n^3)]-1)`
-/

namespace A201260.P9547791545642488795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)

end

end A201260.P9547791545642488795

/-!
# A201261: Primes of the form n^3 + 7.

The programs for A201261, there is no canonical definition to state claims against.
-/

/-! ## A201261.P2809586707866206411

`p?[n^3+7]`
-/

namespace A201261.P2809586707866206411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201261.P2809586707866206411

/-! ## A201261.P14291454429940415209

`or(1, p?[xor(7, n^3)])`
-/

namespace A201261.P14291454429940415209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (n ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201261.P14291454429940415209

/-! ## A201261.P13485195566605979232

`or(2, p?[n*n²+7])`
-/

namespace A201261.P13485195566605979232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201261.P13485195566605979232

/-! ## A201261.P12015612770856572803

`∏{d}[p?[n*n²+7], #]`
-/

namespace A201261.P12015612770856572803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201261.P12015612770856572803

/-! ## A201261.P4474694135804483328

`xor(1, p?[n*n²+7])+1`
-/

namespace A201261.P4474694135804483328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A201261.P4474694135804483328

/-!
# A201262: Primes of the form n^3 + 9.

The programs for A201262, there is no canonical definition to state claims against.
-/

/-! ## A201262.P16849194136640779740

`p?[n^3+9]`
-/

namespace A201262.P16849194136640779740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201262.P16849194136640779740

/-! ## A201262.P6230075466666146239

`or(1, p?[n*n²+9])`
-/

namespace A201262.P6230075466666146239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201262.P6230075466666146239

/-! ## A201262.P17289871954078126344

`xor(1, p?[n*n²+9])+1`
-/

namespace A201262.P17289871954078126344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A201262.P17289871954078126344

/-! ## A201262.P9757844361834897736

`∏{p}[p?[(n²+3)*(n-3)+17], #]`
-/

namespace A201262.P9757844361834897736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 3 : ℤ) * ((n : ℤ) - 3) + 17

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201262.P9757844361834897736

/-! ## A201262.P9217058723405261482

`record[p?[A109595(n+1)+9]]`
-/

namespace A201262.P9217058723405261482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (n + 1) + 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201262.P9217058723405261482

/-!
# A201263: Primes of the form 9*n^3 + 1.

The programs for A201263, there is no canonical definition to state claims against.
-/

/-! ## A201263.P18360232702499324325

`p?[9*n^3+1]`
-/

namespace A201263.P18360232702499324325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201263.P18360232702499324325

/-! ## A201263.P15491075091166226439

`or(1, p?[n*(3*n)²+1])`
-/

namespace A201263.P15491075091166226439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201263.P15491075091166226439

/-! ## A201263.P10787345960564241124

`∏{d}[p?[n*(3*n)²+1], #]`
-/

namespace A201263.P10787345960564241124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201263.P10787345960564241124

/-! ## A201263.P5255777060871377137

`∏{p}[p?[n*(3*n)²+1], #]`
-/

namespace A201263.P5255777060871377137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201263.P5255777060871377137

/-! ## A201263.P16464622535219373104

`xor(2, p?[n*(3*n)²+1]+1)+1`
-/

namespace A201263.P16464622535219373104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) + 1

end

end A201263.P16464622535219373104

/-!
# A201264: Primes of the form 9n^3+2.

The programs for A201264, there is no canonical definition to state claims against.
-/

/-! ## A201264.P11994558534784467932

`p?[9*n^3+2]`
-/

namespace A201264.P11994558534784467932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n ^ 3 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201264.P11994558534784467932

/-! ## A201264.P5220196477753825947

`∑{p}[p?[A244728(n)+2], #]`
-/

namespace A201264.P5220196477753825947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244728 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201264.P5220196477753825947

/-! ## A201264.P10422284740068878587

`p?[n*(3*n)²+2]-A308920(n)`
-/

namespace A201264.P10422284740068878587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A308920 n

end

end A201264.P10422284740068878587

/-! ## A201264.P10094622748276063077

`p?[A244728(n)+2]^A007318(∑[n])`
-/

namespace A201264.P10094622748276063077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244728 n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A201264.P10094622748276063077

/-!
# A201265: Primes of the form 9n^3+4.

The programs for A201265, there is no canonical definition to state claims against.
-/

/-! ## A201265.P3154987056780304590

`p?[9*n^3+4]`
-/

namespace A201265.P3154987056780304590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n ^ 3 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201265.P3154987056780304590

/-!
# A201268: Distances d=x^3-y^2 for primary extremal points {x,y} of Mordell elliptic curves with quadratic extensions over rationals.

The programs for A201268, there is no canonical definition to state claims against.
-/

/-! ## A201268.P2506470774765456742

`A201047(n+1)^3-A201269(n+1)²`
-/

namespace A201268.P2506470774765456742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201047 (n + 1) ^ 3 - A201269 (n + 1) ^ 2

end

end A201268.P2506470774765456742

/-! ## A201268.P4788629391571514118

`A200658(∑[A055151(n)])`
-/

namespace A201268.P4788629391571514118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201268.P4788629391571514118

/-! ## A201268.P155463520195468974

`A200658(∑[A143953(n)])`
-/

namespace A201268.P155463520195468974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201268.P155463520195468974

/-!
# A201269: Coordinates y of points {x,y} of Mordell elliptic curves x^3-y^2 for primary extremal points with quadratic extensions over rationals.

The programs for A201269, there is no canonical definition to state claims against.
-/

/-! ## A201269.P10995214550005866140

`sqrt(A201047(n+1)^3-A201268(n+1))`
-/

namespace A201269.P10995214550005866140
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A201047 (n + 1) ^ 3 - A201268 (n + 1) : ℝ)

end

end A201269.P10995214550005866140

/-! ## A201269.P5489962543581602091

`round(sqrt(A201047(n+1))^3)`
-/

namespace A201269.P5489962543581602091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A201047 (n + 1) : ℝ) ^ 3)

end

end A201269.P5489962543581602091

/-! ## A201269.P16176328652385631990

`A200657(comp[a(n-2)+7])` with `a(0)=0, a(1)=6`
-/

namespace A201269.P16176328652385631990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200657 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A201269.P16176328652385631990

/-!
# A201271: Number of n X 2 0..2 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201271, the canonical program `A201271.P5458963224366856193` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201271 has offset 0).

The definition of A201271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201271.P5458963224366856193

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=4, a(4)=12, a(5)=16, a(6)=9, a(7)=27, a(8)=33`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201271

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P5458963224366856193.Spec : Prop :=
  ∀ n, P5458963224366856193.a n = A201271 n

theorem P5458963224366856193.correct : P5458963224366856193.Spec := by
  intro n
  simp only [A201271]

end A201271

/-! ## A201271.P7399342545235457459

`ceil((lcm(n, n+3)+n+2)/3)`
-/

namespace A201271.P7399342545235457459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm n (n + 3) + (n + 2) : ℚ) / 3⌉

end

end A201271.P7399342545235457459

namespace A201271

/-- `ceil((lcm(n, n+3)+n+2)/3)` -/
def P7399342545235457459.Spec : Prop :=
  ∀ n, P7399342545235457459.a n = A201271 n

end A201271

/-! ## A201271.P14891510597985250468

`A002264(A046163(n+1)+A008619(2*(n+1)))`
-/

namespace A201271.P14891510597985250468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A046163 (n + 1) + A008619 (2 * (n + 1))).toNat

end

end A201271.P14891510597985250468

namespace A201271

/-- `A002264(A046163(n+1)+A008619(2*(n+1)))` -/
def P14891510597985250468.Spec : Prop :=
  ∀ n, P14891510597985250468.a n = A201271 n

end A201271

/-! ## A201271.P6951071621320531817

`A002264(A110654(2*(n+2))+A046163(n+1))`
-/

namespace A201271.P6951071621320531817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A110654 (2 * (n + 2)) + A046163 (n + 1)).toNat

end

end A201271.P6951071621320531817

namespace A201271

/-- `A002264(A110654(2*(n+2))+A046163(n+1))` -/
def P6951071621320531817.Spec : Prop :=
  ∀ n, P6951071621320531817.a n = A201271 n

end A201271

/-!
# A201272: Number of n X 3 0..2 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201272, there is no canonical definition to state claims against.
-/

/-! ## A201272.P18033586955289435975

`A201277(∑[n+1]+3)`
-/

namespace A201272.P18033586955289435975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A201272.P18033586955289435975

/-! ## A201272.P13814837450996145170

`A265005(∑[n+1]+3)`
-/

namespace A201272.P13814837450996145170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A201272.P13814837450996145170

/-!
# A201273: Number of n X 4 0..2 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201273, there is no canonical definition to state claims against.
-/

/-! ## A201273.P5866931070858599038

`A201277(A077169(n+3)-1)`
-/

namespace A201273.P5866931070858599038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (A077169 (n + 3) - 1).toNat

end

end A201273.P5866931070858599038

/-! ## A201273.P7925069498822645756

`A201277(A167614(n+1)-A057428(n))`
-/

namespace A201273.P7925069498822645756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (A167614 (n + 1) - A057428 n).toNat

end

end A201273.P7925069498822645756

/-! ## A201273.P11644900979988502201

`A201277(A167614(n+1)+A057428(n)²)`
-/

namespace A201273.P11644900979988502201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (A167614 (n + 1) + A057428 n ^ 2).toNat

end

end A201273.P11644900979988502201

/-!
# A201274: Number of n X 5 0..2 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201274, there is no canonical definition to state claims against.
-/

/-! ## A201274.P14612314253957293844

`A201277(eq[3, A025581(n)])`
-/

namespace A201274.P14612314253957293844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201274.P14612314253957293844

/-! ## A201274.P11538417961428676287

`A201277(A000217(n+4)-4)`
-/

namespace A201274.P11538417961428676287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (A000217 (n + 4) - 4).toNat

end

end A201274.P11538417961428676287

/-! ## A201274.P3549277746841767060

`A201277(eq[4, A004736(n+1)])`
-/

namespace A201274.P3549277746841767060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201274.P3549277746841767060

/-! ## A201274.P11637205273565538445

`A201277(lt[A023531(n), A023531(n+3)])`
-/

namespace A201274.P11637205273565538445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A201274.P11637205273565538445

/-! ## A201274.P15193489579561831354

`A201277(eq[3, A122285(n)])`
-/

namespace A201274.P15193489579561831354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201274.P15193489579561831354

/-!
# A201275: Number of n X 6 0..2 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201275, there is no canonical definition to state claims against.
-/

/-! ## A201275.P6190293354545696451

`A201277(A167499(n+3)+1)`
-/

namespace A201275.P6190293354545696451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (A167499 (n + 3) + 1).toNat

end

end A201275.P6190293354545696451

/-! ## A201275.P12645135158644274287

`A201277(A152950(n+5)+3)`
-/

namespace A201275.P12645135158644274287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201277 (A152950 (n + 5) + 3).toNat

end

end A201275.P12645135158644274287

/-!
# A201276: Number of n X 7 0..2 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201276, there is no canonical definition to state claims against.
-/

/-! ## A201276.P12112999952427708231

`or(A089839(2*(n+2)), A292583(A366690(n)+1))`
-/

namespace A201276.P12112999952427708231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089839 (2 * (n + 2))) (A292583 (A366690 n + 1).toNat)

end

end A201276.P12112999952427708231

/-!
# A201278: a(n) specifies the quadratic extension sqrt(a(n)) for A201047(n).

The programs for A201278, there is no canonical definition to state claims against.
-/

/-! ## A201278.P12541340534831542662

`A239630(a(n-1))` with `a(0)=10, a(1)=2, a(2)=2, a(3)=5, a(4)=5`
-/

namespace A201278.P12541340534831542662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 2, 2, 5, 5] fun n a =>
  A239630 (a (n - 1)).toNat

end

end A201278.P12541340534831542662

/-! ## A201278.P8597887189424540691

`A093101(A235772(n+1)+A067912(n+2))`
-/

namespace A201278.P8597887189424540691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 (A235772 (n + 1) + A067912 (n + 2)).toNat

end

end A201278.P8597887189424540691

/-!
# A201279: a(n) = 6*n^2 + 10*n + 5.

The programs for A201279, the canonical program `A201279.P16312239377750251695` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201279 has offset 0).

The definition of A201279 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²+10*n+5` (program `A201279.P16312239377750251695`, by `A201279.P16312239377750251695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A201279.P16312239377750251695

`6*n²+10*n+5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A201279

/-- `6*n²+10*n+5` -/
def P16312239377750251695.Spec : Prop :=
  ∀ n, (P16312239377750251695.a n : ℤ) = A201279 n

theorem P16312239377750251695.correct : P16312239377750251695.Spec := by
  intro n
  simp only [A201279]

end A201279

/-! ## A201279.P6599767664470643295

`∑[a(n-1)+12]` with `a(0)=5, a(1)=16`
-/

namespace A201279.P6599767664470643295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 16] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201279.P6599767664470643295

namespace A201279

/-- `∑[a(n-1)+12]` -/
def P6599767664470643295.Spec : Prop :=
  ∀ n, (P6599767664470643295.a n : ℤ) = A201279 n

end A201279

/-! ## A201279.P2140449697966575718

`Δ[lcm(n, (n+1)²+n²)]`
-/

namespace A201279.P2140449697966575718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) ^ 2 + n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A201279.P2140449697966575718

namespace A201279

/-- `Δ[lcm(n, (n+1)²+n²)]` -/
def P2140449697966575718.Spec : Prop :=
  ∀ n, P2140449697966575718.a n = A201279 n

end A201279

/-! ## A201279.P10560425903678231459

`or(1, ∑[4*(2*n+1+n)])`
-/

namespace A201279.P10560425903678231459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 * n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201279.P10560425903678231459

namespace A201279

/-- `or(1, ∑[4*(2*n+1+n)])` -/
def P10560425903678231459.Spec : Prop :=
  ∀ n, (P10560425903678231459.a n : ℤ) = A201279 n

end A201279

/-! ## A201279.P860410513126974413

`xor(1, ∑[4*(2*n+1+n)])`
-/

namespace A201279.P860410513126974413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 * n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201279.P860410513126974413

namespace A201279

/-- `xor(1, ∑[4*(2*n+1+n)])` -/
def P860410513126974413.Spec : Prop :=
  ∀ n, (P860410513126974413.a n : ℤ) = A201279 n

end A201279

/-! ## A201279.P10325089504573503956

`Δ[n*or(1, (n+1)*2*n)]`
-/

namespace A201279.P10325089504573503956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 ((n + 1) * (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A201279.P10325089504573503956

namespace A201279

/-- `Δ[n*or(1, (n+1)*2*n)]` -/
def P10325089504573503956.Spec : Prop :=
  ∀ n, P10325089504573503956.a n = A201279 n

end A201279

/-! ## A201279.P13866202638680180168

`Δ[n*xor(1, (n+1)*2*n)]`
-/

namespace A201279.P13866202638680180168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 ((n + 1) * (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A201279.P13866202638680180168

namespace A201279

/-- `Δ[n*xor(1, (n+1)*2*n)]` -/
def P13866202638680180168.Spec : Prop :=
  ∀ n, P13866202638680180168.a n = A201279 n

end A201279

/-! ## A201279.P14879789665479251994

`Δ[(C(2*n, 2)+n+1)*(n+1)]`
-/

namespace A201279.P14879789665479251994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 + (n + 1)) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A201279.P14879789665479251994

namespace A201279

/-- `Δ[(C(2*n, 2)+n+1)*(n+1)]` -/
def P14879789665479251994.Spec : Prop :=
  ∀ n, P14879789665479251994.a n = A201279 n

end A201279

/-! ## A201279.P6773802594904646313

`Δ[n*(lcm(2*n+1, n+1)-n)]`
-/

namespace A201279.P6773802594904646313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.lcm (2 * n + 1) (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201279.P6773802594904646313

namespace A201279

/-- `Δ[n*(lcm(2*n+1, n+1)-n)]` -/
def P6773802594904646313.Spec : Prop :=
  ∀ n, P6773802594904646313.a n = A201279 n

end A201279

/-! ## A201279.P9193826324878447317

`Δ[A048395(n)]`
-/

namespace A201279.P9193826324878447317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201279.P9193826324878447317

namespace A201279

/-- `Δ[A048395(n)]` -/
def P9193826324878447317.Spec : Prop :=
  ∀ n, P9193826324878447317.a n = A201279 n

end A201279

/-! ## A201279.P8109149341327045515

`∑[Δ[A005897(n)]-2]`
-/

namespace A201279.P8109149341327045515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201279.P8109149341327045515

namespace A201279

/-- `∑[Δ[A005897(n)]-2]` -/
def P8109149341327045515.Spec : Prop :=
  ∀ n, P8109149341327045515.a n = A201279 n

end A201279

/-! ## A201279.P6572218994690663200

`∑[record[A019429(n+1)]]`
-/

namespace A201279.P6572218994690663200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201279.P6572218994690663200

namespace A201279

/-- `∑[record[A019429(n+1)]]` -/
def P6572218994690663200.Spec : Prop :=
  ∀ n, P6572218994690663200.a n = A201279 n

end A201279

/-! ## A201279.P4752017580529888083

`∑[A063098(n+1)+2]`
-/

namespace A201279.P4752017580529888083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063098 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201279.P4752017580529888083

namespace A201279

/-- `∑[A063098(n+1)+2]` -/
def P4752017580529888083.Spec : Prop :=
  ∀ n, P4752017580529888083.a n = A201279 n

end A201279

/-! ## A201279.P10459453121008128140

`∑[A019429(2*n+1)]`
-/

namespace A201279.P10459453121008128140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201279.P10459453121008128140

namespace A201279

/-- `∑[A019429(2*n+1)]` -/
def P10459453121008128140.Spec : Prop :=
  ∀ n, P10459453121008128140.a n = A201279 n

end A201279

/-! ## A201279.P3838253294000341746

`A304381(n+1)%A016838(n)`
-/

namespace A201279.P3838253294000341746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304381 (n + 1)) (A016838 n)

end

end A201279.P3838253294000341746

namespace A201279

/-- `A304381(n+1)%A016838(n)` -/
def P3838253294000341746.Spec : Prop :=
  ∀ n, P3838253294000341746.a n = A201279 n

end A201279

/-! ## A201279.P2945528196788108858

`A158058(n+1)%A158447(n+1)`
-/

namespace A201279.P2945528196788108858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158058 (n + 1)) (A158447 (n + 1))

end

end A201279.P2945528196788108858

namespace A201279

/-- `A158058(n+1)%A158447(n+1)` -/
def P2945528196788108858.Spec : Prop :=
  ∀ n, P2945528196788108858.a n = A201279 n

end A201279

/-! ## A201279.P15427537610745572045

`A158062(n+1)%A158560(n+1)`
-/

namespace A201279.P15427537610745572045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158062 (n + 1)) (A158560 (n + 1))

end

end A201279.P15427537610745572045

namespace A201279

/-- `A158062(n+1)%A158560(n+1)` -/
def P15427537610745572045.Spec : Prop :=
  ∀ n, P15427537610745572045.a n = A201279 n

end A201279

/-! ## A201279.P16978441595645903400

`A158067(n+1)%A158668(n+1)`
-/

namespace A201279.P16978441595645903400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158067 (n + 1)) (A158668 (n + 1))

end

end A201279.P16978441595645903400

namespace A201279

/-- `A158067(n+1)%A158668(n+1)` -/
def P16978441595645903400.Spec : Prop :=
  ∀ n, P16978441595645903400.a n = A201279 n

end A201279

