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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A100500: a(n) = prime(3n-2) + prime(3n-1) + prime(3n).

The programs for A100500, the canonical program `A100500.P12854404022468074461` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100500 has offset 1).

The definition of A100500 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(3*(n+1)-2)+A000040(3*(n+1)-1)+A000040(3*(n+1))` (program `A100500.P12854404022468074461`, by `A100500.P12854404022468074461.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100500.P15370153323306391176

`A034961(3*n+1)`
-/

namespace A100500.P15370153323306391176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (3 * n + 1)

end

end A100500.P15370153323306391176

namespace A100500

/-- `A034961(3*n+1)` -/
def P15370153323306391176.Spec : Prop :=
  ∀ n, P15370153323306391176.a n = A100500 (n + 1)

end A100500

/-! ## A100500.P12854404022468074461

`A000040(3*(n+1)-2)+A000040(3*(n+1)-1)+A000040(3*(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100500

/-- `A000040(3*(n+1)-2)+A000040(3*(n+1)-1)+A000040(3*(n+1))` -/
def P12854404022468074461.Spec : Prop :=
  ∀ n, P12854404022468074461.a n = A100500 (n + 1)

theorem P12854404022468074461.correct : P12854404022468074461.Spec := by
  intro n
  simp only [A100500, Nat.add_sub_cancel]

end A100500

/-! ## A100500.P10740089367743821359

`Δ[A007504(3*n)]`
-/

namespace A100500.P10740089367743821359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100500.P10740089367743821359

namespace A100500

/-- `Δ[A007504(3*n)]` -/
def P10740089367743821359.Spec : Prop :=
  ∀ n, P10740089367743821359.a n = A100500 (n + 1)

end A100500

/-! ## A100500.P13147158304807445503

`A007504(3*(n+1))-A007504(3*n)`
-/

namespace A100500.P13147158304807445503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (3 * (n + 1)) - A007504 (3 * n)

end

end A100500.P13147158304807445503

namespace A100500

/-- `A007504(3*(n+1))-A007504(3*n)` -/
def P13147158304807445503.Spec : Prop :=
  ∀ n, P13147158304807445503.a n = A100500 (n + 1)

end A100500

/-! ## A100500.P14621354280266314327

`A031336(n+1)+A031377(n+1)+A031369(n+1)`
-/

namespace A100500.P14621354280266314327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) + (A031377 (n + 1) + A031369 (n + 1))

end

end A100500.P14621354280266314327

namespace A100500

/-- `A031336(n+1)+A031377(n+1)+A031369(n+1)` -/
def P14621354280266314327.Spec : Prop :=
  ∀ n, P14621354280266314327.a n = A100500 (n + 1)

end A100500

/-! ## A100500.P11228300087438768418

`A031336(n+1)+A091738(n+1)+A091735(n+1)`
-/

namespace A100500.P11228300087438768418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) + (A091738 (n + 1) + A091735 (n + 1))

end

end A100500.P11228300087438768418

namespace A100500

/-- `A031336(n+1)+A091738(n+1)+A091735(n+1)` -/
def P11228300087438768418.Spec : Prop :=
  ∀ n, P11228300087438768418.a n = A100500 (n + 1)

end A100500

/-! ## A100500.P13731692720755370947

`abs(Δ[A007504(A008585(n))])`
-/

namespace A100500.P13731692720755370947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A008585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A100500.P13731692720755370947

namespace A100500

/-- `abs(Δ[A007504(A008585(n))])` -/
def P13731692720755370947.Spec : Prop :=
  ∀ n, P13731692720755370947.a n = A100500 (n + 1)

end A100500

/-! ## A100500.P6956207192420987929

`Δ[A007504(A008585(n))]%A244630(n+3)`
-/

namespace A100500.P6956207192420987929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A008585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A244630 (n + 3))

end

end A100500.P6956207192420987929

namespace A100500

/-- `Δ[A007504(A008585(n))]%A244630(n+3)` -/
def P6956207192420987929.Spec : Prop :=
  ∀ n, P6956207192420987929.a n = A100500 (n + 1)

end A100500

/-! ## A100500.P2486615138545273354

`Δ[A014284(3*n+1)]`
-/

namespace A100500.P2486615138545273354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100500.P2486615138545273354

namespace A100500

/-- `Δ[A014284(3*n+1)]` -/
def P2486615138545273354.Spec : Prop :=
  ∀ n, P2486615138545273354.a n = A100500 (n + 1)

end A100500

/-! ## A100500.P16191136554337835509

`Δ[A036439(3*n+1)]`
-/

namespace A100500.P16191136554337835509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100500.P16191136554337835509

namespace A100500

/-- `Δ[A036439(3*n+1)]` -/
def P16191136554337835509.Spec : Prop :=
  ∀ n, P16191136554337835509.a n = A100500 (n + 1)

end A100500

/-! ## A100500.P15161656354945558898

`Δ[A227547(3*n+1)]`
-/

namespace A100500.P15161656354945558898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100500.P15161656354945558898

namespace A100500

/-- `Δ[A227547(3*n+1)]` -/
def P15161656354945558898.Spec : Prop :=
  ∀ n, P15161656354945558898.a n = A100500 (n + 1)

end A100500

/-!
# A100501: Numbers n such that 3*10^n+7 is prime.

The programs for A100501, there is no canonical definition to state claims against.
-/

/-! ## A100501.P15493113370386740366

`A101824(n+1)+1`
-/

namespace A100501.P15493113370386740366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101824 (n + 1) + 1

end

end A100501.P15493113370386740366

/-! ## A100501.P13407038692893594372

`A062602(A018472(n+1))+A018483(n+1)`
-/

namespace A100501.P13407038692893594372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A018472 (n + 1)).toNat + A018483 (n + 1)

end

end A100501.P13407038692893594372

/-!
# A100503: Bisection of A000125.

The programs for A100503, the canonical program `A100503.P2934963591790648578` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100503 has offset 0).

The definition of A100503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100503.P2934963591790648578

`1+n*(4*n²+5)/3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100503

/-- `1+n*(4*n²+5)/3` -/
def P2934963591790648578.Spec : Prop :=
  ∀ n, P2934963591790648578.a n = (A100503 n : ℚ)

end A100503

/-! ## A100503.P14629445670788705981

`record[(C(n, 3)+n)^(n%2)]`
-/

namespace A100503.P14629445670788705981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 + n) ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100503.P14629445670788705981

namespace A100503

/-- `record[(C(n, 3)+n)^(n%2)]` -/
def P14629445670788705981.Spec : Prop :=
  ∀ n, (P14629445670788705981.a n : ℤ) = A100503 n

end A100503

/-! ## A100503.P12524569296151015577

`record[(C(n, 3)+n)^and(1, n)]`
-/

namespace A100503.P12524569296151015577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 + n) ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100503.P12524569296151015577

namespace A100503

/-- `record[(C(n, 3)+n)^and(1, n)]` -/
def P12524569296151015577.Spec : Prop :=
  ∀ n, (P12524569296151015577.a n : ℤ) = A100503 n

end A100503

/-! ## A100503.P4370922890750861133

`∑[∑[a(n-1)+8]]` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A100503.P4370922890750861133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100503.P4370922890750861133

namespace A100503

/-- `∑[∑[a(n-1)+8]]` -/
def P4370922890750861133.Spec : Prop :=
  ∀ n, (P4370922890750861133.a n : ℤ) = A100503 n

end A100503

/-! ## A100503.P17821464691226526925

`∑[∑[ogf((1+5x^2+2x^3)/(1-2x+x^2))]]`
-/

namespace A100503.P17821464691226526925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 5, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100503.P17821464691226526925

namespace A100503

/-- `∑[∑[ogf((1+5x^2+2x^3)/(1-2x+x^2))]]` -/
def P17821464691226526925.Spec : Prop :=
  ∀ n, P17821464691226526925.a n = A100503 n

end A100503

/-! ## A100503.P12436843148398209224

`floor(C(2*n+1, 3)+2*n+ϕ)`
-/

namespace A100503.P12436843148398209224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 1) 3 : ℝ) + ((2 * n : ℝ) + Real.goldenRatio)⌋

end

end A100503.P12436843148398209224

namespace A100503

/-- `floor(C(2*n+1, 3)+2*n+ϕ)` -/
def P12436843148398209224.Spec : Prop :=
  ∀ n, P12436843148398209224.a n = A100503 n

end A100503

/-! ## A100503.P6156434098922984175

`ceil(A171272(n)/2+n)`
-/

namespace A100503.P6156434098922984175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171272 n : ℚ) / 2 + (n : ℚ)⌉

end

end A100503.P6156434098922984175

namespace A100503

/-- `ceil(A171272(n)/2+n)` -/
def P6156434098922984175.Spec : Prop :=
  ∀ n, P6156434098922984175.a n = A100503 n

end A100503

/-! ## A100503.P830976127155264324

`(A385730(n)+n+1)/2`
-/

namespace A100503.P830976127155264324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385730 n + (n + 1 : ℤ) : ℚ) / 2

end

end A100503.P830976127155264324

namespace A100503

/-- `(A385730(n)+n+1)/2` -/
def P830976127155264324.Spec : Prop :=
  ∀ n, P830976127155264324.a n = (A100503 n : ℚ)

end A100503

/-! ## A100503.P3129691031043495056

`∑[2*(n-1)*A004277(n)+3]`
-/

namespace A100503.P3129691031043495056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n : ℤ) - 1) * A004277 n) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100503.P3129691031043495056

namespace A100503

/-- `∑[2*(n-1)*A004277(n)+3]` -/
def P3129691031043495056.Spec : Prop :=
  ∀ n, P3129691031043495056.a n = A100503 n

end A100503

/-! ## A100503.P12906085614280100762

`A000125(2*n)`
-/

namespace A100503.P12906085614280100762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (2 * n)

end

end A100503.P12906085614280100762

namespace A100503

/-- `A000125(2*n)` -/
def P12906085614280100762.Spec : Prop :=
  ∀ n, P12906085614280100762.a n = A100503 n

end A100503

/-! ## A100503.P5666677215056587970

`A046127(Δ[n²])/2`
-/

namespace A100503.P5666677215056587970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046127 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A100503.P5666677215056587970

namespace A100503

/-- `A046127(Δ[n²])/2` -/
def P5666677215056587970.Spec : Prop :=
  ∀ n, P5666677215056587970.a n = (A100503 n : ℚ)

end A100503

/-! ## A100503.P1322531731292984603

`A134393(Δ[n²])/(n+1)`
-/

namespace A100503.P1322531731292984603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134393 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A100503.P1322531731292984603

namespace A100503

/-- `A134393(Δ[n²])/(n+1)` -/
def P1322531731292984603.Spec : Prop :=
  ∀ n, P1322531731292984603.a n = (A100503 n : ℚ)

end A100503

/-! ## A100503.P14427033173979383915

`A361099(2*n+1)/(2*n+1)`
-/

namespace A100503.P14427033173979383915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361099 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A100503.P14427033173979383915

namespace A100503

/-- `A361099(2*n+1)/(2*n+1)` -/
def P14427033173979383915.Spec : Prop :=
  ∀ n, P14427033173979383915.a n = (A100503 n : ℚ)

end A100503

/-! ## A100503.P4492178833668189718

`A263614(4*n+2)`
-/

namespace A100503.P4492178833668189718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263614 (4 * n + 2)

end

end A100503.P4492178833668189718

namespace A100503

/-- `A263614(4*n+2)` -/
def P4492178833668189718.Spec : Prop :=
  ∀ n, P4492178833668189718.a n = A100503 n

end A100503

/-! ## A100503.P7232610633878067119

`A000108(n+1)/A000108(n)*A056520(n)`
-/

namespace A100503.P7232610633878067119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A000108 n : ℚ) * (A056520 n : ℚ)

end

end A100503.P7232610633878067119

namespace A100503

/-- `A000108(n+1)/A000108(n)*A056520(n)` -/
def P7232610633878067119.Spec : Prop :=
  ∀ n, P7232610633878067119.a n = (A100503 n : ℚ)

end A100503

/-!
# A100504: a(n) = (4*n^3 + 6*n^2 + 8*n + 6)/3.

The programs for A100504, the canonical program `A100504.P5117315189214297790` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100504 has offset 0).

The definition of A100504 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n^3+6*n²+8*n+6)/3` (program `A100504.P10235726057212811572`, by `A100504.P10235726057212811572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100504.P5117315189214297790

`a(n-1)+(2*n)²+2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100504

/-- `a(n-1)+(2*n)²+2` -/
def P5117315189214297790.Spec : Prop :=
  ∀ n, (P5117315189214297790.a n : ℤ) = A100504 n

theorem P5117315189214297790.correct : P5117315189214297790.Spec := by
  intro n
  simp only [A100504]

end A100504

/-! ## A100504.P485198077325025902

`n*(4*n²+6*n+8)/3+2`
-/

namespace A100504.P485198077325025902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (4 * n ^ 2 + 6 * n + 8) : ℚ) / 3 + 2

end

end A100504.P485198077325025902

namespace A100504

/-- `n*(4*n²+6*n+8)/3+2` -/
def P485198077325025902.Spec : Prop :=
  ∀ n, P485198077325025902.a n = (A100504 n : ℚ)

theorem P485198077325025902.correct : P485198077325025902.Spec := by
  intro n
  induction n with
  | zero => simp [A100504, A100504.P485198077325025902.a, A100504.P5117315189214297790.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A100504, Nat.add_sub_cancel, A100504.P485198077325025902.a, A100504.P5117315189214297790.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A100504

/-! ## A100504.P10235726057212811572

`(4*n^3+6*n²+8*n+6)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100504.P10235726057212811572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 3 + 6 * n ^ 2 + 8 * n + 6 : ℚ) / 3

end

end A100504.P10235726057212811572

namespace A100504

/-- `(4*n^3+6*n²+8*n+6)/3` -/
def P10235726057212811572.Spec : Prop :=
  ∀ n, P10235726057212811572.a n = (A100504 n : ℚ)

theorem P10235726057212811572.correct : P10235726057212811572.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A100504, Nat.add_sub_cancel, A100504.P10235726057212811572.a, A100504.P5117315189214297790.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A100504, Nat.add_sub_cancel, A100504.P10235726057212811572.a, A100504.P5117315189214297790.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A100504

/-! ## A100504.P18260823637089547863

`2*∑[or(1, 2*n²)]`
-/

namespace A100504.P18260823637089547863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100504.P18260823637089547863

namespace A100504

/-- `2*∑[or(1, 2*n²)]` -/
def P18260823637089547863.Spec : Prop :=
  ∀ n, (P18260823637089547863.a n : ℤ) = A100504 n

end A100504

/-! ## A100504.P18427725854163086251

`2*∑[xor(1, 2*n²)]`
-/

namespace A100504.P18427725854163086251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100504.P18427725854163086251

namespace A100504

/-- `2*∑[xor(1, 2*n²)]` -/
def P18427725854163086251.Spec : Prop :=
  ∀ n, (P18427725854163086251.a n : ℤ) = A100504 n

end A100504

/-! ## A100504.P5546041125742772317

`∑[∑[a(n-1)+8]]` with `a(0)=2, a(1)=4`
-/

namespace A100504.P5546041125742772317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100504.P5546041125742772317

namespace A100504

/-- `∑[∑[a(n-1)+8]]` -/
def P5546041125742772317.Spec : Prop :=
  ∀ n, (P5546041125742772317.a n : ℤ) = A100504 n

end A100504

/-! ## A100504.P4595713533563942871

`∑[∑[ogf((2+6x^2)/(1-2x+x^2))]]`
-/

namespace A100504.P4595713533563942871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 6] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100504.P4595713533563942871

namespace A100504

/-- `∑[∑[ogf((2+6x^2)/(1-2x+x^2))]]` -/
def P4595713533563942871.Spec : Prop :=
  ∀ n, P4595713533563942871.a n = A100504 n

end A100504

/-! ## A100504.P16438371292547594712

`ogf((2+6x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A100504.P16438371292547594712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 6] [1, -4, 6, -4, 1] n

end

end A100504.P16438371292547594712

namespace A100504

/-- `ogf((2+6x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P16438371292547594712.Spec : Prop :=
  ∀ n, P16438371292547594712.a n = A100504 n

end A100504

/-! ## A100504.P12750598644594823941

`∑[6-∑[a(n-1)-8]]` with `a(0)=4`
-/

namespace A100504.P12750598644594823941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100504.P12750598644594823941

namespace A100504

/-- `∑[6-∑[a(n-1)-8]]` -/
def P12750598644594823941.Spec : Prop :=
  ∀ n, P12750598644594823941.a n = A100504 n

end A100504

/-! ## A100504.P7092798157090799141

`2*(∑[ceil(2/acot(n)²)]-n)`
-/

namespace A100504.P7092798157090799141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A100504.P7092798157090799141

namespace A100504

/-- `2*(∑[ceil(2/acot(n)²)]-n)` -/
def P7092798157090799141.Spec : Prop :=
  ∀ n, P7092798157090799141.a n = A100504 n

end A100504

/-! ## A100504.P5101828848561096565

`2*∑[C(2*n, 2)+n+1]`
-/

namespace A100504.P5101828848561096565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100504.P5101828848561096565

namespace A100504

/-- `2*∑[C(2*n, 2)+n+1]` -/
def P5101828848561096565.Spec : Prop :=
  ∀ n, (P5101828848561096565.a n : ℤ) = A100504 n

end A100504

/-! ## A100504.P1620157882067804002

`2*∑[lcm(n, 2*n+1)-(n-1)]`
-/

namespace A100504.P1620157882067804002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (2 * n + 1) : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100504.P1620157882067804002

namespace A100504

/-- `2*∑[lcm(n, 2*n+1)-(n-1)]` -/
def P1620157882067804002.Spec : Prop :=
  ∀ n, P1620157882067804002.a n = A100504 n

end A100504

/-! ## A100504.P3958218408489237077

`∑[A053755(n)+1]`
-/

namespace A100504.P3958218408489237077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100504.P3958218408489237077

namespace A100504

/-- `∑[A053755(n)+1]` -/
def P3958218408489237077.Spec : Prop :=
  ∀ n, P3958218408489237077.a n = A100504 n

end A100504

/-! ## A100504.P1602983668278180515

`∑[A016742(n)+2]`
-/

namespace A100504.P1602983668278180515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100504.P1602983668278180515

namespace A100504

/-- `∑[A016742(n)+2]` -/
def P1602983668278180515.Spec : Prop :=
  ∀ n, P1602983668278180515.a n = A100504 n

end A100504

/-! ## A100504.P10829284471807639090

`∑[A222465(n)-1]`
-/

namespace A100504.P10829284471807639090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222465 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100504.P10829284471807639090

namespace A100504

/-- `∑[A222465(n)-1]` -/
def P10829284471807639090.Spec : Prop :=
  ∀ n, P10829284471807639090.a n = A100504 n

end A100504

/-! ## A100504.P13503079605446372982

`∑[A000466(n)+3]`
-/

namespace A100504.P13503079605446372982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100504.P13503079605446372982

namespace A100504

/-- `∑[A000466(n)+3]` -/
def P13503079605446372982.Spec : Prop :=
  ∀ n, P13503079605446372982.a n = A100504 n

end A100504

/-! ## A100504.P7751328089137486307

`∑[2*A058331(n)]`
-/

namespace A100504.P7751328089137486307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100504.P7751328089137486307

namespace A100504

/-- `∑[2*A058331(n)]` -/
def P7751328089137486307.Spec : Prop :=
  ∀ n, P7751328089137486307.a n = A100504 n

end A100504

/-! ## A100504.P15378125766796153807

`2*(A188475(n)+n)`
-/

namespace A100504.P15378125766796153807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A188475 n + (n : ℤ))

end

end A100504.P15378125766796153807

namespace A100504

/-- `2*(A188475(n)+n)` -/
def P15378125766796153807.Spec : Prop :=
  ∀ n, P15378125766796153807.a n = A100504 n

end A100504

/-! ## A100504.P16710683184679951961

`2*(A005894(n)-n)`
-/

namespace A100504.P16710683184679951961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005894 n - (n : ℤ))

end

end A100504.P16710683184679951961

namespace A100504

/-- `2*(A005894(n)-n)` -/
def P16710683184679951961.Spec : Prop :=
  ∀ n, P16710683184679951961.a n = A100504 n

end A100504

/-! ## A100504.P14708385241355391313

`A253707(n+1)%A268484(n)`
-/

namespace A100504.P14708385241355391313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253707 (n + 1)) (A268484 n)

end

end A100504.P14708385241355391313

namespace A100504

/-- `A253707(n+1)%A268484(n)` -/
def P14708385241355391313.Spec : Prop :=
  ∀ n, P14708385241355391313.a n = A100504 n

end A100504

/-!
# A100505: Bisection of A001523.

The programs for A100505, there is no canonical definition to state claims against.
-/

/-! ## A100505.P6836407666041064863

`A001523(2*n)`
-/

namespace A100505.P6836407666041064863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (2 * n)

end

end A100505.P6836407666041064863

/-! ## A100505.P1233756953661381891

`xor(1, xor(1, A001523(n+n)))`
-/

namespace A100505.P1233756953661381891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A001523 (n + n)))

end

end A100505.P1233756953661381891

/-! ## A100505.P9433067873834103606

`record[A001523(n)/gcd(2, n+1)]`
-/

namespace A100505.P9433067873834103606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001523 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100505.P9433067873834103606

/-! ## A100505.P16238299712071072854

`record[A001523(A005131(n))]`
-/

namespace A100505.P16238299712071072854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100505.P16238299712071072854

/-! ## A100505.P8984334763158003013

`record[A001523(A127366(n))]`
-/

namespace A100505.P8984334763158003013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (A127366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100505.P8984334763158003013

/-! ## A100505.P1614814927108313377

`record[A001523(A026741(n)+1)]`
-/

namespace A100505.P1614814927108313377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100505.P1614814927108313377

/-! ## A100505.P11760986219598843345

`record[A001523(n)/A000034(n)]`
-/

namespace A100505.P11760986219598843345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001523 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100505.P11760986219598843345

/-! ## A100505.P10536768920797542903

`record[A001523(n-A007814(n+1))]`
-/

namespace A100505.P10536768920797542903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100505.P10536768920797542903

/-! ## A100505.P211658507264578007

`record[A001523(n-A142150(n+1))]`
-/

namespace A100505.P211658507264578007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 ((n : ℤ) - A142150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100505.P211658507264578007

/-! ## A100505.P11606391663328311476

`record[and(A001523(n+1), A323202(n))]`
-/

namespace A100505.P11606391663328311476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001523 (n + 1)) (A323202 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100505.P11606391663328311476

/-! ## A100505.P13731769450170135191

`record[A001523(n)/(A007814(n+1)+1)]`
-/

namespace A100505.P13731769450170135191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001523 n : ℚ) / (A007814 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100505.P13731769450170135191

/-! ## A100505.P8455737430949186788

`record[A001523(A004275(A142150(n)))]`
-/

namespace A100505.P8455737430949186788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (A004275 (A142150 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100505.P8455737430949186788

/-! ## A100505.P1950769370713178940

`record[A001523(A004275(A285869(n)))]`
-/

namespace A100505.P1950769370713178940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (A004275 (A285869 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100505.P1950769370713178940

/-! ## A100505.P15512534015491466295

`record[A001523(A004275(A028900(n)))]`
-/

namespace A100505.P15512534015491466295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (A004275 (A028900 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100505.P15512534015491466295

/-! ## A100505.P13861847344730836192

`record[gcd(A001523(n), A097331(n))]`
-/

namespace A100505.P13861847344730836192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001523 n) (A097331 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100505.P13861847344730836192

/-! ## A100505.P9944849563314361232

`A001523(n+n)%A008965(n+2)²`
-/

namespace A100505.P9944849563314361232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001523 (n + n)) (A008965 (n + 2) ^ 2)

end

end A100505.P9944849563314361232

/-! ## A100505.P634444122891116643

`A011782(2*n)-A115981(2*n)`
-/

namespace A100505.P634444122891116643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) - A115981 (2 * n)

end

end A100505.P634444122891116643

/-! ## A100505.P6908087883634303546

`A332726(2*n)+A332727(2*n)-A115981(2*n)`
-/

namespace A100505.P6908087883634303546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332726 (2 * n) + (A332727 (2 * n) - A115981 (2 * n))

end

end A100505.P6908087883634303546

/-! ## A100505.P7132907480509403842

`A000712(2*n)-and(A000225(2*n), A006330(2*n))`
-/

namespace A100505.P7132907480509403842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (2 * n) - Int.land (A000225 (2 * n)) (A006330 (2 * n))

end

end A100505.P7132907480509403842

/-! ## A100505.P16762422975185246542

`A006330(2*n)-and(A000225(2*n), A114921(2*n))`
-/

namespace A100505.P16762422975185246542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 (2 * n) - Int.land (A000225 (2 * n)) (A114921 (2 * n))

end

end A100505.P16762422975185246542

/-!
# A100506: Bisection of A001523.

The programs for A100506, there is no canonical definition to state claims against.
-/

/-! ## A100506.P1335899873539319836

`A001523(Δ[n²])`
-/

namespace A100506.P1335899873539319836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100506.P1335899873539319836

/-! ## A100506.P17699206932265517947

`record[A001523((n+1)/and(n+1, -(n+1)))]`
-/

namespace A100506.P17699206932265517947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100506.P17699206932265517947

/-! ## A100506.P7467770164665907909

`record[A001523(A026741(n))]`
-/

namespace A100506.P7467770164665907909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100506.P7467770164665907909

/-! ## A100506.P10765243859021329839

`record[A001523(A127366(n)+1)]`
-/

namespace A100506.P10765243859021329839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (A127366 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100506.P10765243859021329839

/-! ## A100506.P9531745653019280901

`record[A001523(n-A142150(n))]`
-/

namespace A100506.P9531745653019280901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 ((n : ℤ) - A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100506.P9531745653019280901

/-! ## A100506.P17947221676963410737

`record[A001523(and(n, A323202(n)))]`
-/

namespace A100506.P17947221676963410737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (Int.land (n : ℤ) (A323202 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100506.P17947221676963410737

/-! ## A100506.P10460753703691866421

`record[A001523(n-A323202(n+1))]`
-/

namespace A100506.P10460753703691866421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 ((n : ℤ) - A323202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100506.P10460753703691866421

/-! ## A100506.P18402385160646324136

`record[A001523(n+1)/A000034(n)]`
-/

namespace A100506.P18402385160646324136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001523 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100506.P18402385160646324136

/-! ## A100506.P10495475213544458940

`record[A001523(n)/(A142150(n)+1)]`
-/

namespace A100506.P10495475213544458940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001523 n : ℚ) / (A142150 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100506.P10495475213544458940

/-! ## A100506.P4553789407267068026

`A001523(2*n+1)+A000007(n+1)`
-/

namespace A100506.P4553789407267068026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (2 * n + 1) + A000007 (n + 1)

end

end A100506.P4553789407267068026

/-! ## A100506.P3828784380166785191

`A001523(2*n+1)*A057427(n+1)`
-/

namespace A100506.P3828784380166785191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (2 * n + 1) * A057427 (n + 1)

end

end A100506.P3828784380166785191

/-! ## A100506.P2072590727476345530

`A006330(2*n+1)-A114921(2*n+1)`
-/

namespace A100506.P2072590727476345530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 (2 * n + 1) - A114921 (2 * n + 1)

end

end A100506.P2072590727476345530

/-! ## A100506.P2755298935354982482

`A100535(n)-A006330(2*n+1)`
-/

namespace A100506.P2755298935354982482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100535 n - A006330 (2 * n + 1)

end

end A100506.P2755298935354982482

/-! ## A100506.P16846312080148868201

`A000712(2*n+1)-A006330(2*n+1)`
-/

namespace A100506.P16846312080148868201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (2 * n + 1) - A006330 (2 * n + 1)

end

end A100506.P16846312080148868201

/-! ## A100506.P4670392141146126970

`(A000712(2*n+1)-A114921(2*n+1))/2`
-/

namespace A100506.P4670392141146126970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000712 (2 * n + 1) - A114921 (2 * n + 1) : ℚ) / 2

end

end A100506.P4670392141146126970

/-! ## A100506.P1487153199477546118

`A000712(2*n+1)+A006330(2*n+1)*A057428(n+1)`
-/

namespace A100506.P1487153199477546118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (2 * n + 1) + A006330 (2 * n + 1) * A057428 (n + 1)

end

end A100506.P1487153199477546118

/-! ## A100506.P8977352344355610901

`A174439(2*n+1)-A174439(2*n)`
-/

namespace A100506.P8977352344355610901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174439 (2 * n + 1) - A174439 (2 * n)

end

end A100506.P8977352344355610901

/-! ## A100506.P9407908115679306454

`gcd(A001523(2*n+1)*A001523(n+1), A001523(2*n+1))`
-/

namespace A100506.P9407908115679306454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001523 (2 * n + 1) * A001523 (n + 1)) (A001523 (2 * n + 1))

end

end A100506.P9407908115679306454

/-! ## A100506.P2900227036963195430

`A001523(2*n+1)²/A001523(A026741(2*n+1))`
-/

namespace A100506.P2900227036963195430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001523 (2 * n + 1) ^ 2 : ℚ) / (A001523 (A026741 (2 * n + 1)).toNat : ℚ)

end

end A100506.P2900227036963195430

/-! ## A100506.P4500361261612360135

`A001523(2*n+1)²/A001523(A028310(2*n+1))`
-/

namespace A100506.P4500361261612360135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001523 (2 * n + 1) ^ 2 : ℚ) / (A001523 (A028310 (2 * n + 1)).toNat : ℚ)

end

end A100506.P4500361261612360135

/-!
# A100510: Bisection of A005425.

The programs for A100510, there is no canonical definition to state claims against.
-/

/-! ## A100510.P4445651853655588304

`A005425(Δ[n²])`
-/

namespace A100510.P4445651853655588304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100510.P4445651853655588304

/-! ## A100510.P53248008446871072

`2*A085387(Δ[n²])`
-/

namespace A100510.P53248008446871072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085387 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100510.P53248008446871072

/-! ## A100510.P3079659784006845755

`A027412(2*(n+1))/2`
-/

namespace A100510.P3079659784006845755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027412 (2 * (n + 1)) : ℚ) / 2

end

end A100510.P3079659784006845755

/-! ## A100510.P5471629217910601216

`lcm(2, A005425(2*n+1))`
-/

namespace A100510.P5471629217910601216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A005425 (2 * n + 1))

end

end A100510.P5471629217910601216

/-! ## A100510.P8836025533574518054

`or(2, A005425(n+1+n))`
-/

namespace A100510.P8836025533574518054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A005425 (n + 1 + n))

end

end A100510.P8836025533574518054

/-! ## A100510.P4182830261609624751

`record[A005425(A004442(n))]`
-/

namespace A100510.P4182830261609624751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100510.P4182830261609624751

/-! ## A100510.P16445893902360928313

`record[A005425(A014681(n)+1)]`
-/

namespace A100510.P16445893902360928313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100510.P16445893902360928313

/-! ## A100510.P4383392585954449222

`A070176(n²)+A005425(2*n+1)`
-/

namespace A100510.P4383392585954449222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (n ^ 2) + A005425 (2 * n + 1)

end

end A100510.P4383392585954449222

/-! ## A100510.P11549021091699309252

`A005425(2*n+1)+A000007(n+1)`
-/

namespace A100510.P11549021091699309252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (2 * n + 1) + A000007 (n + 1)

end

end A100510.P11549021091699309252

/-! ## A100510.P152458669054741954

`A238803(2*n+1)+A005425(2*n)`
-/

namespace A100510.P152458669054741954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238803 (2 * n + 1) + A005425 (2 * n)

end

end A100510.P152458669054741954

/-!
# A100511: a(n) = Sum_{j=0..n} Sum_{k=0..n} binomial(n,j)*binomial(n,k)*max(j,k).

The programs for A100511, the canonical program `A100511.P4352986843776284485` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100511 has offset 0).

The definition of A100511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100511.P12863925623007430899

`n*(4^n+(n+1)*A000108(n))/2`
-/

namespace A100511.P12863925623007430899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((4 ^ n : ℤ) + (n + 1 : ℤ) * A000108 n) : ℚ) / 2

end

end A100511.P12863925623007430899

namespace A100511

/-- `n*(4^n+(n+1)*A000108(n))/2` -/
def P12863925623007430899.Spec : Prop :=
  ∀ n, P12863925623007430899.a n = (A100511 n : ℚ)

end A100511

/-! ## A100511.P4352986843776284485

`n*(4^n+C(2*n, n))/2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100511

/-- `n*(4^n+C(2*n, n))/2` -/
def P4352986843776284485.Spec : Prop :=
  ∀ n, P4352986843776284485.a n = (A100511 n : ℚ)

end A100511

/-! ## A100511.P14890745469557340545

`n*A032443(n)`
-/

namespace A100511.P14890745469557340545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032443 n

end

end A100511.P14890745469557340545

namespace A100511

/-- `n*A032443(n)` -/
def P14890745469557340545.Spec : Prop :=
  ∀ n, P14890745469557340545.a n = A100511 n

end A100511

/-! ## A100511.P7911701308661722724

`A230137(2*n)/2`
-/

namespace A100511.P7911701308661722724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230137 (2 * n) : ℚ) / 2

end

end A100511.P7911701308661722724

namespace A100511

/-- `A230137(2*n)/2` -/
def P7911701308661722724.Spec : Prop :=
  ∀ n, P7911701308661722724.a n = (A100511 n : ℚ)

end A100511

/-! ## A100511.P14451304722955888111

`n*A027306(2*n)`
-/

namespace A100511.P14451304722955888111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027306 (2 * n)

end

end A100511.P14451304722955888111

namespace A100511

/-- `n*A027306(2*n)` -/
def P14451304722955888111.Spec : Prop :=
  ∀ n, P14451304722955888111.a n = A100511 n

end A100511

/-! ## A100511.P17011844920852674903

`n*A116406(Δ[n²])`
-/

namespace A100511.P17011844920852674903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A116406 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100511.P17011844920852674903

namespace A100511

/-- `n*A116406(Δ[n²])` -/
def P17011844920852674903.Spec : Prop :=
  ∀ n, P17011844920852674903.a n = A100511 n

end A100511

/-! ## A100511.P5152893434363240655

`n*(A226881(2*n)+1)`
-/

namespace A100511.P5152893434363240655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A226881 (2 * n) + 1)

end

end A100511.P5152893434363240655

namespace A100511

/-- `n*(A226881(2*n)+1)` -/
def P5152893434363240655.Spec : Prop :=
  ∀ n, P5152893434363240655.a n = A100511 n

end A100511

/-! ## A100511.P9053453515892475148

`A068554(n)+A003583(n)`
-/

namespace A100511.P9053453515892475148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068554 n + A003583 n

end

end A100511.P9053453515892475148

namespace A100511

/-- `A068554(n)+A003583(n)` -/
def P9053453515892475148.Spec : Prop :=
  ∀ n, P9053453515892475148.a n = A100511 n

end A100511

/-! ## A100511.P2549431467584810251

`A339240(n)+A002697(n)`
-/

namespace A100511.P2549431467584810251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339240 n + A002697 n

end

end A100511.P2549431467584810251

namespace A100511

/-- `A339240(n)+A002697(n)` -/
def P2549431467584810251.Spec : Prop :=
  ∀ n, P2549431467584810251.a n = A100511 n

end A100511

/-! ## A100511.P18422899168332142002

`A339240(n)+A049610(2*n)`
-/

namespace A100511.P18422899168332142002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339240 n + A049610 (2 * n)

end

end A100511.P18422899168332142002

namespace A100511

/-- `A339240(n)+A049610(2*n)` -/
def P18422899168332142002.Spec : Prop :=
  ∀ n, P18422899168332142002.a n = A100511 n

end A100511

/-! ## A100511.P8789264999016817768

`A001792(2*n)-A003583(n)`
-/

namespace A100511.P8789264999016817768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 * n) - A003583 n

end

end A100511.P8789264999016817768

namespace A100511

/-- `A001792(2*n)-A003583(n)` -/
def P8789264999016817768.Spec : Prop :=
  ∀ n, P8789264999016817768.a n = A100511 n

end A100511

/-! ## A100511.P579299678853206458

`A339240(n)+A002699(n)/2`
-/

namespace A100511.P579299678853206458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339240 n : ℚ) + (A002699 n : ℚ) / 2

end

end A100511.P579299678853206458

namespace A100511

/-- `A339240(n)+A002699(n)/2` -/
def P579299678853206458.Spec : Prop :=
  ∀ n, P579299678853206458.a n = (A100511 n : ℚ)

end A100511

/-! ## A100511.P15874816635426654471

`n*(A006516(n)+A005317(n))`
-/

namespace A100511.P15874816635426654471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A006516 n + A005317 n)

end

end A100511.P15874816635426654471

namespace A100511

/-- `n*(A006516(n)+A005317(n))` -/
def P15874816635426654471.Spec : Prop :=
  ∀ n, P15874816635426654471.a n = A100511 n

end A100511

/-! ## A100511.P1796459697454983885

`A002697(n)+n*A114121(n)`
-/

namespace A100511.P1796459697454983885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + (n : ℤ) * A114121 n

end

end A100511.P1796459697454983885

namespace A100511

/-- `A002697(n)+n*A114121(n)` -/
def P1796459697454983885.Spec : Prop :=
  ∀ n, P1796459697454983885.a n = A100511 n

end A100511

/-! ## A100511.P1248903696903460053

`n*(A088218(n)+A081294(n))`
-/

namespace A100511.P1248903696903460053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A088218 n + A081294 n)

end

end A100511.P1248903696903460053

namespace A100511

/-- `n*(A088218(n)+A081294(n))` -/
def P1248903696903460053.Spec : Prop :=
  ∀ n, P1248903696903460053.a n = A100511 n

end A100511

/-! ## A100511.P553914114402827185

`n*(A264960(n)+A058621(n))`
-/

namespace A100511.P553914114402827185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A264960 n + A058621 n)

end

end A100511.P553914114402827185

namespace A100511

/-- `n*(A264960(n)+A058621(n))` -/
def P553914114402827185.Spec : Prop :=
  ∀ n, P553914114402827185.a n = A100511 n

end A100511

/-! ## A100511.P16007932674650035710

`n*(A360168(n)+A002450(n))`
-/

namespace A100511.P16007932674650035710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A360168 n + A002450 n)

end

end A100511.P16007932674650035710

namespace A100511

/-- `n*(A360168(n)+A002450(n))` -/
def P16007932674650035710.Spec : Prop :=
  ∀ n, P16007932674650035710.a n = A100511 n

end A100511

/-! ## A100511.P15697443211986044268

`n*(A277924(n)-A001791(n))`
-/

namespace A100511.P15697443211986044268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A277924 n - A001791 n)

end

end A100511.P15697443211986044268

namespace A100511

/-- `n*(A277924(n)-A001791(n))` -/
def P15697443211986044268.Spec : Prop :=
  ∀ n, P15697443211986044268.a n = A100511 n

end A100511

/-! ## A100511.P12324761499207350672

`n*(A161168(n)-A246472(n))`
-/

namespace A100511.P12324761499207350672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A161168 n - A246472 n)

end

end A100511.P12324761499207350672

namespace A100511

/-- `n*(A161168(n)-A246472(n))` -/
def P12324761499207350672.Spec : Prop :=
  ∀ n, P12324761499207350672.a n = A100511 n

end A100511

/-! ## A100511.P16867219262292660392

`A002699(n)-(A002697(n)-A339240(n))`
-/

namespace A100511.P16867219262292660392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002699 n - (A002697 n - A339240 n)

end

end A100511.P16867219262292660392

namespace A100511

/-- `A002699(n)-(A002697(n)-A339240(n))` -/
def P16867219262292660392.Spec : Prop :=
  ∀ n, P16867219262292660392.a n = A100511 n

end A100511

/-!
# A100512: Numerator of Sum_{k=0..n} 1/C(2*n, 2*k).

The programs for A100512, there is no canonical definition to state claims against.
-/

/-! ## A100512.P4961054666377487716

`A046878(2*(n+1))*A334988(A002524(n))`
-/

namespace A100512.P4961054666377487716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046878 (2 * (n + 1)) * A334988 (A002524 n).toNat

end

end A100512.P4961054666377487716

/-! ## A100512.P7807821702746160728

`record[A046878(A170770(n))]`
-/

namespace A100512.P7807821702746160728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046878 (A170770 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100512.P7807821702746160728

/-! ## A100512.P3003852404978137763

`A046878(eq[1, A270825(n)])`
-/

namespace A100512.P3003852404978137763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100512.P3003852404978137763

/-!
# A100513: Denominator of Sum_{k=0..n} 1/C(2*n,2*k).

The programs for A100513, there is no canonical definition to state claims against.
-/

/-! ## A100513.P12426081955808324067

`A001790(n)*A321912(A283701(n))`
-/

namespace A100513.P12426081955808324067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A321912 (A283701 n).toNat

end

end A100513.P12426081955808324067

/-! ## A100513.P8798248482926022751

`A211350(A211397(2*(n+1))-A211379(n+3))`
-/

namespace A100513.P8798248482926022751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211350 (A211397 (2 * (n + 1)) - A211379 (n + 3)).toNat

end

end A100513.P8798248482926022751

/-!
# A100515: Denominator of Sum_{k=0..n} 1/C(3*n, 3*k).

The programs for A100515, there is no canonical definition to state claims against.
-/

/-! ## A100515.P12360910577292099343

`A336524(A008100(n))`
-/

namespace A100515.P12360910577292099343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336524 (A008100 n).toNat

end

end A100515.P12360910577292099343

/-!
# A100516: Numerator of Sum_{k=0..n} 1/binomial(n,k)^2.

The programs for A100516, there is no canonical definition to state claims against.
-/

/-! ## A100516.P12603570618813619213

`A289772(8^n)-n`
-/

namespace A100516.P12603570618813619213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289772 (8 ^ n) - (n : ℤ)

end

end A100516.P12603570618813619213

/-!
# A100518: Numerator of Sum_{k=0..n} 1/binomial(n,k)^3.

The programs for A100518, there is no canonical definition to state claims against.
-/

/-! ## A100518.P3816800785915726615

`A225087(A249308(n))-A000078(n)`
-/

namespace A100518.P3816800785915726615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225087 (A249308 n).toNat - A000078 n

end

end A100518.P3816800785915726615

/-!
# A100519: Denominator of Sum_{k=0..n} 1/binomial(n,k)^3.

The programs for A100519, there is no canonical definition to state claims against.
-/

/-! ## A100519.P4693066177122840576

`A217434(A027454(n+1))`
-/

namespace A100519.P4693066177122840576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (A027454 (n + 1)).toNat

end

end A100519.P4693066177122840576

/-! ## A100519.P15889973380933571011

`A217434(A002944(n+1)^3)`
-/

namespace A100519.P15889973380933571011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (A002944 (n + 1) ^ 3).toNat

end

end A100519.P15889973380933571011

/-!
# A100521: Denominator of Sum_{k=0..2*n} (-1)^k/binomial(2*n, k)^2.

The programs for A100521, there is no canonical definition to state claims against.
-/

/-! ## A100521.P10668978777950488327

`A360283(2*n)/A000142(n)²`
-/

namespace A100521.P10668978777950488327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360283 (2 * n) : ℚ) / (A000142 n ^ 2 : ℚ)

end

end A100521.P10668978777950488327

/-! ## A100521.P16044162652915655196

`A360283(2*n)/A360463(n)²`
-/

namespace A100521.P16044162652915655196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360283 (2 * n) : ℚ) / (A360463 n ^ 2 : ℚ)

end

end A100521.P16044162652915655196

/-! ## A100521.P13110186041384562813

`A002944(2*n+1)*A028310(A000984(n))`
-/

namespace A100521.P13110186041384562813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (2 * n + 1) * A028310 (A000984 n).toNat

end

end A100521.P13110186041384562813

/-! ## A100521.P16405097829179340448

`A002944(2*n+1)*A028310(A126930(2*n))`
-/

namespace A100521.P16405097829179340448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (2 * n + 1) * A028310 (A126930 (2 * n)).toNat

end

end A100521.P16405097829179340448

/-!
# A100523: a(n) = a(n-1)^2 + 2*a(n-1) - 1 with a(0) = 1.

The programs for A100523, the canonical program `A100523.P6336228694257318834` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100523 has offset 0).

The definition of A100523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+2*a(n-1)-1` (program `A100523.P6336228694257318834`, by `A100523.P6336228694257318834.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100523.P6336228694257318834

`a(n-1)²+2*a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100523

/-- `a(n-1)²+2*a(n-1)-1` -/
def P6336228694257318834.Spec : Prop :=
  ∀ n, P6336228694257318834.a n = A100523 n

theorem P6336228694257318834.correct : P6336228694257318834.Spec := by
  intro n
  simp only [A100523]

end A100523

/-! ## A100523.P7871046004807332156

`(a(n-1)+1)²-2` with `a(0)=1`
-/

namespace A100523.P7871046004807332156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) ^ 2 - 2

end

end A100523.P7871046004807332156

namespace A100523

/-- `(a(n-1)+1)²-2` -/
def P7871046004807332156.Spec : Prop :=
  ∀ n, P7871046004807332156.a n = A100523 n

theorem P7871046004807332156.correct : P7871046004807332156.Spec := by
  intro n
  simp only [A100523, Nat.add_sub_cancel, A100523.P7871046004807332156.a, A100523.P6336228694257318834.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A100523

/-! ## A100523.P3589507645461111529

`(a(n-1)+1)^2-2` with `a(0)=1`
-/

namespace A100523.P3589507645461111529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) ^ 2 - 2

end

end A100523.P3589507645461111529

namespace A100523

/-- `(a(n-1)+1)^2-2` -/
def P3589507645461111529.Spec : Prop :=
  ∀ n, P3589507645461111529.a n = A100523 n

theorem P3589507645461111529.correct : P3589507645461111529.Spec := by
  intro n
  simp only [A100523, Nat.add_sub_cancel, A100523.P3589507645461111529.a, A100523.P6336228694257318834.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A100523

/-! ## A100523.P11365679036274498073

`xor(-1, a(n-1))²-2` with `a(0)=1`
-/

namespace A100523.P11365679036274498073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (-1) (a (n - 1)) ^ 2 - 2

end

end A100523.P11365679036274498073

namespace A100523

/-- `xor(-1, a(n-1))²-2` -/
def P11365679036274498073.Spec : Prop :=
  ∀ n, P11365679036274498073.a n = A100523 n

end A100523

/-! ## A100523.P16004835712198434344

`(1-floor(-a(n-1)))²-2` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A100523.P16004835712198434344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (-a (n - 1))) ^ 2 - 2

end

end A100523.P16004835712198434344

namespace A100523

/-- `(1-floor(-a(n-1)))²-2` -/
def P16004835712198434344.Spec : Prop :=
  ∀ n, P16004835712198434344.a n = A100523 n

theorem P16004835712198434344.correct : P16004835712198434344.Spec := by
  intro n
  simp only [A100523, Nat.add_sub_cancel, A100523.P16004835712198434344.a, A100523.P6336228694257318834.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A100523

/-!
# A100524: a(n) = ( Sum_{k=0..n} (-1)^(n-k)*binomial(n, k)*Bell(k) )*( Sum_{k=1..n} (k-1)!*binomial(n-1, k-1)*binomial(n, k-1) ).

The programs for A100524, there is no canonical definition to state claims against.
-/

/-! ## A100524.P10413848405040349971

`A000262(n+1)*A000296(n+1)`
-/

namespace A100524.P10413848405040349971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (n + 1) * A000296 (n + 1)

end

end A100524.P10413848405040349971

/-! ## A100524.P16000607574575125967

`record[A206703(n)]*A000296(n+1)`
-/

namespace A100524.P16000607574575125967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000296 (n + 1)

end

end A100524.P16000607574575125967

/-! ## A100524.P3279617132616154008

`record[A293053(n)]*A000296(n+1)`
-/

namespace A100524.P3279617132616154008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000296 (n + 1)

end

end A100524.P3279617132616154008

/-! ## A100524.P10747870233009340859

`abs(A000296(n+1)*A293125(n+1))`
-/

namespace A100524.P10747870233009340859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000296 (n + 1) * A293125 (n + 1)|

end

end A100524.P10747870233009340859

/-! ## A100524.P16849421164425769933

`record[A253286(n+3)*A261137(n+1)]`
-/

namespace A100524.P16849421164425769933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (n + 3) * A261137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100524.P16849421164425769933

/-!
# A100525: Bisection of A048654.

The programs for A100525, the canonical program `A100525.P9197358685349994221` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100525 has offset 0).

The definition of A100525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100525.P9197358685349994221

`6*a(n-1)-a(n-2)` with `a(0)=4, a(1)=22`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100525

/-- `6*a(n-1)-a(n-2)` -/
def P9197358685349994221.Spec : Prop :=
  ∀ n, P9197358685349994221.a n = A100525 n

theorem P9197358685349994221.correct : P9197358685349994221.Spec := by
  intro n
  simp only [A100525]

end A100525

/-! ## A100525.P15098212697292451320

`2*A038725(n+1)`
-/

namespace A100525.P15098212697292451320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038725 (n + 1)

end

end A100525.P15098212697292451320

namespace A100525

/-- `2*A038725(n+1)` -/
def P15098212697292451320.Spec : Prop :=
  ∀ n, P15098212697292451320.a n = A100525 n

end A100525

/-! ## A100525.P930617848834503581

`ogf((4-2x)/(1-6x+x^2))`
-/

namespace A100525.P930617848834503581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2] [1, -6, 1] n

end

end A100525.P930617848834503581

namespace A100525

/-- `ogf((4-2x)/(1-6x+x^2))` -/
def P930617848834503581.Spec : Prop :=
  ∀ n, P930617848834503581.a n = A100525 n

end A100525

/-! ## A100525.P2833158136463394522

`round(a(n-1)/(3-sqrt(8)))` with `a(0)=4, a(1)=22`
-/

namespace A100525.P2833158136463394522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 22] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

end

end A100525.P2833158136463394522

namespace A100525

/-- `round(a(n-1)/(3-sqrt(8)))` -/
def P2833158136463394522.Spec : Prop :=
  ∀ n, P2833158136463394522.a n = A100525 n

end A100525

/-! ## A100525.P4746531058045948964

`or(1, floor(a(n-1)/(3-sqrt(8))))-1` with `a(0)=4`
-/

namespace A100525.P4746531058045948964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.lor 1 ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ - 1

end

end A100525.P4746531058045948964

namespace A100525

/-- `or(1, floor(a(n-1)/(3-sqrt(8))))-1` -/
def P4746531058045948964.Spec : Prop :=
  ∀ n, P4746531058045948964.a n = A100525 n

end A100525

/-! ## A100525.P6128438827768230144

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=4, a(1)=3, a(2)=2`
-/

namespace A100525.P6128438827768230144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100525.P6128438827768230144

namespace A100525

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P6128438827768230144.Spec : Prop :=
  ∀ n, P6128438827768230144.a n = A100525 n

end A100525

/-! ## A100525.P17530273648937721143

`A129346(2*n)`
-/

namespace A100525.P17530273648937721143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129346 (2 * n)

end

end A100525.P17530273648937721143

namespace A100525

/-- `A129346(2*n)` -/
def P17530273648937721143.Spec : Prop :=
  ∀ n, P17530273648937721143.a n = A100525 n

end A100525

/-! ## A100525.P12316538085004319684

`A048654(Δ[n²])`
-/

namespace A100525.P12316538085004319684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100525.P12316538085004319684

namespace A100525

/-- `A048654(Δ[n²])` -/
def P12316538085004319684.Spec : Prop :=
  ∀ n, P12316538085004319684.a n = A100525 n

end A100525

/-! ## A100525.P1401825183597288031

`Δ[A216134(2*n)]`
-/

namespace A100525.P1401825183597288031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100525.P1401825183597288031

namespace A100525

/-- `Δ[A216134(2*n)]` -/
def P1401825183597288031.Spec : Prop :=
  ∀ n, P1401825183597288031.a n = A100525 n

end A100525

/-! ## A100525.P6419459034374389855

`Δ[A038761(n)/2]`
-/

namespace A100525.P6419459034374389855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038761 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100525.P6419459034374389855

namespace A100525

/-- `Δ[A038761(n)/2]` -/
def P6419459034374389855.Spec : Prop :=
  ∀ n, P6419459034374389855.a n = (A100525 n : ℚ)

end A100525

/-! ## A100525.P5857439858242334687

`record[Δ[Δ[A041011(n)]]]`
-/

namespace A100525.P5857439858242334687
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100525.P5857439858242334687

namespace A100525

/-- `record[Δ[Δ[A041011(n)]]]` -/
def P5857439858242334687.Spec : Prop :=
  ∀ n, P5857439858242334687.a n = A100525 n

end A100525

/-! ## A100525.P13590112382913604157

`A182193(n+1)+3`
-/

namespace A100525.P13590112382913604157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182193 (n + 1) + 3

end

end A100525.P13590112382913604157

namespace A100525

/-- `A182193(n+1)+3` -/
def P13590112382913604157.Spec : Prop :=
  ∀ n, P13590112382913604157.a n = A100525 n

end A100525

/-! ## A100525.P3549102691597506056

`A217975(2*(n+1))`
-/

namespace A100525.P3549102691597506056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217975 (2 * (n + 1))

end

end A100525.P3549102691597506056

namespace A100525

/-- `A217975(2*(n+1))` -/
def P3549102691597506056.Spec : Prop :=
  ∀ n, P3549102691597506056.a n = A100525 n

end A100525

/-! ## A100525.P1421577766728637653

`A266504(4*(n+1))`
-/

namespace A100525.P1421577766728637653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (4 * (n + 1))

end

end A100525.P1421577766728637653

namespace A100525

/-- `A266504(4*(n+1))` -/
def P1421577766728637653.Spec : Prop :=
  ∀ n, P1421577766728637653.a n = A100525 n

end A100525

/-! ## A100525.P15853524031694223641

`A266506(8*(n+1))`
-/

namespace A100525.P15853524031694223641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (8 * (n + 1))

end

end A100525.P15853524031694223641

namespace A100525

/-- `A266506(8*(n+1))` -/
def P15853524031694223641.Spec : Prop :=
  ∀ n, P15853524031694223641.a n = A100525 n

end A100525

/-! ## A100525.P4332722250454611052

`2*A117719(Δ[n²])`
-/

namespace A100525.P4332722250454611052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117719 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100525.P4332722250454611052

namespace A100525

/-- `2*A117719(Δ[n²])` -/
def P4332722250454611052.Spec : Prop :=
  ∀ n, P4332722250454611052.a n = A100525 n

end A100525

/-! ## A100525.P1780980051737734322

`Δ[Δ[A038725(n)/2]]`
-/

namespace A100525.P1780980051737734322
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038725 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100525.P1780980051737734322

namespace A100525

/-- `Δ[Δ[A038725(n)/2]]` -/
def P1780980051737734322.Spec : Prop :=
  ∀ n, P1780980051737734322.a n = (A100525 n : ℚ)

end A100525

/-! ## A100525.P5869962449451237405

`Δ[Δ[A108261(n)/2]]`
-/

namespace A100525.P5869962449451237405
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108261 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100525.P5869962449451237405

namespace A100525

/-- `Δ[Δ[A108261(n)/2]]` -/
def P5869962449451237405.Spec : Prop :=
  ∀ n, P5869962449451237405.a n = (A100525 n : ℚ)

end A100525

/-! ## A100525.P4575653489733887588

`record[Δ[A104683(n+1)]]`
-/

namespace A100525.P4575653489733887588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100525.P4575653489733887588

namespace A100525

/-- `record[Δ[A104683(n+1)]]` -/
def P4575653489733887588.Spec : Prop :=
  ∀ n, P4575653489733887588.a n = A100525 n

end A100525

/-! ## A100525.P11203066281031056602

`Δ[A048654(2*n)/2]`
-/

namespace A100525.P11203066281031056602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048654 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100525.P11203066281031056602

namespace A100525

/-- `Δ[A048654(2*n)/2]` -/
def P11203066281031056602.Spec : Prop :=
  ∀ n, P11203066281031056602.a n = (A100525 n : ℚ)

end A100525

/-!
# A100526: Number of local binary search trees (i.e., labeled binary trees such that every left child has a smaller label than its parent and every right child has a larger label than its parent) with n vertices such that the root has only one child.

The programs for A100526, there is no canonical definition to state claims against.
-/

/-! ## A100526.P17735074730697511047

`(n+1)*A007889(n)`
-/

namespace A100526.P17735074730697511047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007889 n

end

end A100526.P17735074730697511047

/-! ## A100526.P3476726751392064985

`A000032(floor(1/(n+1)))*A088789(n+1)`
-/

namespace A100526.P3476726751392064985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat * A088789 (n + 1)

end

end A100526.P3476726751392064985

/-! ## A100526.P9360788965553126071

`A000005(A020639(2*n+1))*A088789(n+1)`
-/

namespace A100526.P9360788965553126071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A020639 (2 * n + 1)).toNat * A088789 (n + 1)

end

end A100526.P9360788965553126071

/-! ## A100526.P8358804223349425830

`A349562(n)/2^n*(n+1)`
-/

namespace A100526.P8358804223349425830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349562 n : ℚ) / (2 ^ n : ℚ) * (n + 1 : ℚ)

end

end A100526.P8358804223349425830

/-! ## A100526.P9426805175889152883

`A201595(n)/A011782(n)*(n+1)`
-/

namespace A100526.P9426805175889152883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201595 n : ℚ) / (A011782 n : ℚ) * (n + 1 : ℚ)

end

end A100526.P9426805175889152883

/-! ## A100526.P13867056399446887609

`A216857(n+1)/A000079(n)`
-/

namespace A100526.P13867056399446887609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216857 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A100526.P13867056399446887609

/-! ## A100526.P17901436410839707216

`A216857(n+1)/A011782(n+1)`
-/

namespace A100526.P17901436410839707216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216857 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A100526.P17901436410839707216

/-! ## A100526.P2764131184703665752

`A216857(n+1)/A131577(n+1)`
-/

namespace A100526.P2764131184703665752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216857 (n + 1) : ℚ) / (A131577 (n + 1) : ℚ)

end

end A100526.P2764131184703665752

/-!
# A100528: a(0) = 1, a(n+1) = a(n)^2 + 1 - floor(log_2(a(n))).

The programs for A100528, there is no canonical definition to state claims against.
-/

/-! ## A100528.P1665789074240627114

`a(n-1)*a(n-1)-A319571(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A100528.P1665789074240627114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * a (n - 1) - A319571 (a (n - 1)).toNat

end

end A100528.P1665789074240627114

/-! ## A100528.P6526120374081666336

`a(n-1)²-A001222(A000010(A000032(a(n-2))))` with `a(0)=1, a(1)=2`
-/

namespace A100528.P6526120374081666336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) ^ 2 - A001222 (A000010 (A000032 (a (n - 2)).toNat).toNat).toNat

end

end A100528.P6526120374081666336

/-!
# A100530: Numbers == 0,2,5,9 modulo 10.

The programs for A100530, the canonical program `A100530.P3471879217856145803` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100530 has offset 0).

The definition of A100530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100530.P3471879217856145803

`a(n-1)+n%4+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100530

/-- `a(n-1)+n%4+1` -/
def P3471879217856145803.Spec : Prop :=
  ∀ n, (P3471879217856145803.a n : ℤ) = A100530 n

theorem P3471879217856145803.correct : P3471879217856145803.Spec := by
  intro n
  simp only [A100530]

end A100530

/-! ## A100530.P8169979260769091341

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=9, a(4)=10`
-/

namespace A100530.P8169979260769091341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 9, 10] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A100530.P8169979260769091341

namespace A100530

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P8169979260769091341.Spec : Prop :=
  ∀ n, P8169979260769091341.a n = A100530 n

end A100530

/-! ## A100530.P6734705482902907837

`∑[n%4]+n`
-/

namespace A100530.P6734705482902907837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A100530.P6734705482902907837

namespace A100530

/-- `∑[n%4]+n` -/
def P6734705482902907837.Spec : Prop :=
  ∀ n, (P6734705482902907837.a n : ℤ) = A100530 n

end A100530

/-! ## A100530.P16699555259228315396

`∑[and(3, n)]+n`
-/

namespace A100530.P16699555259228315396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A100530.P16699555259228315396

namespace A100530

/-- `∑[and(3, n)]+n` -/
def P16699555259228315396.Spec : Prop :=
  ∀ n, (P16699555259228315396.a n : ℤ) = A100530 n

end A100530

/-! ## A100530.P4725128187897877623

`n-∑[-n%4]`
-/

namespace A100530.P4725128187897877623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100530.P4725128187897877623

namespace A100530

/-- `n-∑[-n%4]` -/
def P4725128187897877623.Spec : Prop :=
  ∀ n, P4725128187897877623.a n = A100530 n

end A100530

/-! ## A100530.P9253462288216558092

`a(n-4)+10` with `a(0)=0, a(1)=2, a(2)=5, a(3)=9`
-/

namespace A100530.P9253462288216558092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5, 9] fun n a =>
  a (n - 4) + 10

end

end A100530.P9253462288216558092

namespace A100530

/-- `a(n-4)+10` -/
def P9253462288216558092.Spec : Prop :=
  ∀ n, (P9253462288216558092.a n : ℤ) = A100530 n

end A100530

/-! ## A100530.P18094644196870547652

`∑[n+3-or(3, n)]+n`
-/

namespace A100530.P18094644196870547652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.lor 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A100530.P18094644196870547652

namespace A100530

/-- `∑[n+3-or(3, n)]+n` -/
def P18094644196870547652.Spec : Prop :=
  ∀ n, P18094644196870547652.a n = A100530 n

end A100530

/-! ## A100530.P15220768432383822611

`2*n-(n-∑[and(3, n)])`
-/

namespace A100530.P15220768432383822611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A100530.P15220768432383822611

namespace A100530

/-- `2*n-(n-∑[and(3, n)])` -/
def P15220768432383822611.Spec : Prop :=
  ∀ n, P15220768432383822611.a n = A100530 n

end A100530

/-! ## A100530.P5890761929001179685

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A100530.P5890761929001179685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100530.P5890761929001179685

namespace A100530

/-- `∑[floor(a(n-4))]` -/
def P5890761929001179685.Spec : Prop :=
  ∀ n, (P5890761929001179685.a n : ℤ) = A100530 n

end A100530

/-! ## A100530.P17332286736073194130

`∑[9%(8-a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A100530.P17332286736073194130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Int.tmod 9 (8 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100530.P17332286736073194130

namespace A100530

/-- `∑[9%(8-a(n-1))]` -/
def P17332286736073194130.Spec : Prop :=
  ∀ n, P17332286736073194130.a n = A100530 n

end A100530

/-! ## A100530.P5651719188413656465

`∑[∑[ogf((1+2x+3x^2+4x^3)/(1+x+x^2+x^3))]]-1`
-/

namespace A100530.P5651719188413656465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 4] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A100530.P5651719188413656465

namespace A100530

/-- `∑[∑[ogf((1+2x+3x^2+4x^3)/(1+x+x^2+x^3))]]-1` -/
def P5651719188413656465.Spec : Prop :=
  ∀ n, P5651719188413656465.a n = A100530 n

end A100530

/-! ## A100530.P7941466451508976139

`1-((a(n-2)-a(n-1))%4-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A100530.P7941466451508976139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  1 - (Int.tmod (a (n - 2) - a (n - 1)) 4 - a (n - 1))

end

end A100530.P7941466451508976139

namespace A100530

/-- `1-((a(n-2)-a(n-1))%4-a(n-1))` -/
def P7941466451508976139.Spec : Prop :=
  ∀ n, P7941466451508976139.a n = A100530 n

end A100530

/-! ## A100530.P7804535685902901008

`A130482(n)+n`
-/

namespace A100530.P7804535685902901008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 n + (n : ℤ)

end

end A100530.P7804535685902901008

namespace A100530

/-- `A130482(n)+n` -/
def P7804535685902901008.Spec : Prop :=
  ∀ n, P7804535685902901008.a n = A100530 n

end A100530

/-! ## A100530.P16474642919958510880

`∑[A010883(n)]-1`
-/

namespace A100530.P16474642919958510880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A100530.P16474642919958510880

namespace A100530

/-- `∑[A010883(n)]-1` -/
def P16474642919958510880.Spec : Prop :=
  ∀ n, P16474642919958510880.a n = A100530 n

end A100530

/-! ## A100530.P7766266316833338712

`∑[A010873(n)]+n`
-/

namespace A100530.P7766266316833338712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A100530.P7766266316833338712

namespace A100530

/-- `∑[A010873(n)]+n` -/
def P7766266316833338712.Spec : Prop :=
  ∀ n, P7766266316833338712.a n = A100530 n

end A100530

/-! ## A100530.P14186337194045507961

`∑[A328943(n)-1]-1`
-/

namespace A100530.P14186337194045507961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328943 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A100530.P14186337194045507961

namespace A100530

/-- `∑[A328943(n)-1]-1` -/
def P14186337194045507961.Spec : Prop :=
  ∀ n, P14186337194045507961.a n = A100530 n

end A100530

/-! ## A100530.P377283841725180027

`∑[A083220(n)-n]+n`
-/

namespace A100530.P377283841725180027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A100530.P377283841725180027

namespace A100530

/-- `∑[A083220(n)-n]+n` -/
def P377283841725180027.Spec : Prop :=
  ∀ n, P377283841725180027.a n = A100530 n

end A100530

/-! ## A100530.P13458442212239288029

`∑[A129709(a(n-1))]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A100530.P13458442212239288029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  A129709 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100530.P13458442212239288029

namespace A100530

/-- `∑[A129709(a(n-1))]` -/
def P13458442212239288029.Spec : Prop :=
  ∀ n, P13458442212239288029.a n = A100530 n

end A100530

/-!
# A100531: a(n) = a(n-1) + (2*n - 1) mod 8 + 1 with a(0)=1.

The programs for A100531, the canonical program `A100531.P12131913400131856556` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100531 has offset 0).

The definition of A100531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(2*n-1)%8+1` (program `A100531.P12131913400131856556`, by `A100531.P12131913400131856556.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100531.P12131913400131856556

`a(n-1)+(2*n-1)%8+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100531

/-- `a(n-1)+(2*n-1)%8+1` -/
def P12131913400131856556.Spec : Prop :=
  ∀ n, P12131913400131856556.a n = A100531 n

theorem P12131913400131856556.correct : P12131913400131856556.Spec := by
  intro n
  simp only [A100531]

end A100531

/-! ## A100531.P3757072936932881206

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=13, a(4)=21`
-/

namespace A100531.P3757072936932881206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 13, 21] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A100531.P3757072936932881206

namespace A100531

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P3757072936932881206.Spec : Prop :=
  ∀ n, P3757072936932881206.a n = A100531 n

end A100531

/-! ## A100531.P7423942446391457026

`a(n-4)+20` with `a(0)=1, a(1)=3, a(2)=7, a(3)=13`
-/

namespace A100531.P7423942446391457026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 13] fun n a =>
  a (n - 4) + 20

end

end A100531.P7423942446391457026

namespace A100531

/-- `a(n-4)+20` -/
def P7423942446391457026.Spec : Prop :=
  ∀ n, (P7423942446391457026.a n : ℤ) = A100531 n

end A100531

/-! ## A100531.P5966000815765305838

`∑[or(9, a(n-1))-7]` with `a(0)=1`
-/

namespace A100531.P5966000815765305838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor 9 (f1 (n - 1)) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100531.P5966000815765305838

namespace A100531

/-- `∑[or(9, a(n-1))-7]` -/
def P5966000815765305838.Spec : Prop :=
  ∀ n, P5966000815765305838.a n = A100531 n

end A100531

/-! ## A100531.P10875305435950326337

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A100531.P10875305435950326337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6, 8] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100531.P10875305435950326337

namespace A100531

/-- `∑[floor(a(n-4))]` -/
def P10875305435950326337.Spec : Prop :=
  ∀ n, (P10875305435950326337.a n : ℤ) = A100531 n

end A100531

/-! ## A100531.P6137465975680765439

`∑[comp[2*(n+1)]%8+1]`
-/

namespace A100531.P6137465975680765439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 8 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100531.P6137465975680765439

namespace A100531

/-- `∑[comp[2*(n+1)]%8+1]` -/
def P6137465975680765439.Spec : Prop :=
  ∀ n, (P6137465975680765439.a n : ℤ) = A100531 n

end A100531

/-! ## A100531.P6235952578968969894

`∑[abs(1-2*n)%8]+n`
-/

namespace A100531.P6235952578968969894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |1 - (2 * n : ℤ)| 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A100531.P6235952578968969894

namespace A100531

/-- `∑[abs(1-2*n)%8]+n` -/
def P6235952578968969894.Spec : Prop :=
  ∀ n, P6235952578968969894.a n = A100531 n

end A100531

/-! ## A100531.P1614822169005794060

`∑[2*(n-1)%4+2]+1`
-/

namespace A100531.P1614822169005794060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod ((n : ℤ) - 1) 4 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A100531.P1614822169005794060

namespace A100531

/-- `∑[2*(n-1)%4+2]+1` -/
def P1614822169005794060.Spec : Prop :=
  ∀ n, P1614822169005794060.a n = A100531 n

end A100531

/-! ## A100531.P8206905469165583500

`∑[A090925(a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A100531.P8206905469165583500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A090925 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100531.P8206905469165583500

namespace A100531

/-- `∑[A090925(a(n-1))]` -/
def P8206905469165583500.Spec : Prop :=
  ∀ n, P8206905469165583500.a n = A100531 n

end A100531

/-! ## A100531.P1586930472770206864

`∑[A165040(a(n-1)²)]` with `a(0)=1`
-/

namespace A100531.P1586930472770206864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A165040 (f1 (n - 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100531.P1586930472770206864

namespace A100531

/-- `∑[A165040(a(n-1)²)]` -/
def P1586930472770206864.Spec : Prop :=
  ∀ n, P1586930472770206864.a n = A100531 n

end A100531

/-! ## A100531.P11752698990536537190

`∑[and(6, A004277(n)-1)+1]+n`
-/

namespace A100531.P11752698990536537190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A004277 n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A100531.P11752698990536537190

namespace A100531

/-- `∑[and(6, A004277(n)-1)+1]+n` -/
def P11752698990536537190.Spec : Prop :=
  ∀ n, P11752698990536537190.a n = A100531 n

end A100531

/-! ## A100531.P5977625016135146998

`∑[and(6, comp[A004277(n+1)])+1]+n`
-/

namespace A100531.P5977625016135146998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 6 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A100531.P5977625016135146998

namespace A100531

/-- `∑[and(6, comp[A004277(n+1)])+1]+n` -/
def P5977625016135146998.Spec : Prop :=
  ∀ n, (P5977625016135146998.a n : ℤ) = A100531 n

end A100531

/-! ## A100531.P3017746520291174574

`A002081(n)-A093148(n)`
-/

namespace A100531.P3017746520291174574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n - A093148 n

end

end A100531.P3017746520291174574

namespace A100531

/-- `A002081(n)-A093148(n)` -/
def P3017746520291174574.Spec : Prop :=
  ∀ n, P3017746520291174574.a n = A100531 n

end A100531

/-! ## A100531.P9478367878381529289

`A112652(n)+A047454(n+1)`
-/

namespace A100531.P9478367878381529289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n + A047454 (n + 1)

end

end A100531.P9478367878381529289

namespace A100531

/-- `A112652(n)+A047454(n+1)` -/
def P9478367878381529289.Spec : Prop :=
  ∀ n, P9478367878381529289.a n = A100531 n

end A100531

/-! ## A100531.P5685452918390718623

`A063206(n+1)-A164356(n)`
-/

namespace A100531.P5685452918390718623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (n + 1) - A164356 n

end

end A100531.P5685452918390718623

namespace A100531

/-- `A063206(n+1)-A164356(n)` -/
def P5685452918390718623.Spec : Prop :=
  ∀ n, P5685452918390718623.a n = A100531 n

end A100531

/-! ## A100531.P4016061237629773073

`A271508(n+1)-A070432(n)`
-/

namespace A100531.P4016061237629773073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1) - A070432 n

end

end A100531.P4016061237629773073

namespace A100531

/-- `A271508(n+1)-A070432(n)` -/
def P4016061237629773073.Spec : Prop :=
  ∀ n, P4016061237629773073.a n = A100531 n

end A100531

/-! ## A100531.P16179127519074662869

`A047476(n+1)+A112652(n)+1`
-/

namespace A100531.P16179127519074662869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) + (A112652 n + 1)

end

end A100531.P16179127519074662869

namespace A100531

/-- `A047476(n+1)+A112652(n)+1` -/
def P16179127519074662869.Spec : Prop :=
  ∀ n, P16179127519074662869.a n = A100531 n

end A100531

/-! ## A100531.P16363033625530118678

`∑[A000005(A075746(3*a(n-1)))]` with `a(0)=1, a(1)=2`
-/

namespace A100531.P16363033625530118678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000005 (A075746 (3 * f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100531.P16363033625530118678

namespace A100531

/-- `∑[A000005(A075746(3*a(n-1)))]` -/
def P16363033625530118678.Spec : Prop :=
  ∀ n, P16363033625530118678.a n = A100531 n

end A100531

/-! ## A100531.P13911791544590390744

`A047227(n+1)+A102039(n+2)-A047227(n+2)`
-/

namespace A100531.P13911791544590390744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047227 (n + 1) + (A102039 (n + 2) - A047227 (n + 2))

end

end A100531.P13911791544590390744

namespace A100531

/-- `A047227(n+1)+A102039(n+2)-A047227(n+2)` -/
def P13911791544590390744.Spec : Prop :=
  ∀ n, P13911791544590390744.a n = A100531 n

end A100531

/-! ## A100531.P3689542359300459277

`∑[dr(2-A304814(2*n))]`
-/

namespace A100531.P3689542359300459277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 - A304814 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100531.P3689542359300459277

namespace A100531

/-- `∑[dr(2-A304814(2*n))]` -/
def P3689542359300459277.Spec : Prop :=
  ∀ n, (P3689542359300459277.a n : ℤ) = A100531 n

end A100531

/-!
# A100532: The first four numbers of this sequence are the primes 2,3,5,7. The other terms are calculated by adding the previous four terms.

The programs for A100532, the canonical program `A100532.P7492599170837734440` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100532 has offset 1).

The definition of A100532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100532.P7492599170837734440

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100532

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P7492599170837734440.Spec : Prop :=
  ∀ n, (P7492599170837734440.a n : ℤ) = A100532 (n + 1)

theorem P7492599170837734440.correct : P7492599170837734440.Spec := by
  intro n
  simp only [A100532, Nat.add_sub_cancel]

end A100532

/-! ## A100532.P1028335463342198524

`ogf((-2-x+3x^3)/(-1+x+x^2+x^3+x^4))`
-/

namespace A100532.P1028335463342198524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 0, -3] [1, -1, -1, -1, -1] n

end

end A100532.P1028335463342198524

namespace A100532

/-- `ogf((-2-x+3x^3)/(-1+x+x^2+x^3+x^4))` -/
def P1028335463342198524.Spec : Prop :=
  ∀ n, P1028335463342198524.a n = A100532 (n + 1)

end A100532

/-! ## A100532.P17473230868675426850

`A251705(n)+A001631(n+4)`
-/

namespace A100532.P17473230868675426850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 n + A001631 (n + 4)

end

end A100532.P17473230868675426850

namespace A100532

/-- `A251705(n)+A001631(n+4)` -/
def P17473230868675426850.Spec : Prop :=
  ∀ n, P17473230868675426850.a n = A100532 (n + 1)

end A100532

/-! ## A100532.P12843085993595889834

`A251705(n)+Δ[A089074(n)]`
-/

namespace A100532.P12843085993595889834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 n + (f1 (n + 1) - f1 n)

end

end A100532.P12843085993595889834

namespace A100532

/-- `A251705(n)+Δ[A089074(n)]` -/
def P12843085993595889834.Spec : Prop :=
  ∀ n, P12843085993595889834.a n = A100532 (n + 1)

end A100532

/-! ## A100532.P14732219974358039818

`A001631(n)+A251703(n)+Δ[A089074(n)]`
-/

namespace A100532.P14732219974358039818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n + (A251703 n + (f1 (n + 1) - f1 n))

end

end A100532.P14732219974358039818

namespace A100532

/-- `A001631(n)+A251703(n)+Δ[A089074(n)]` -/
def P14732219974358039818.Spec : Prop :=
  ∀ n, P14732219974358039818.a n = A100532 (n + 1)

end A100532

/-! ## A100532.P4716570417332987319

`A000288(n)+Δ[A089074(n)]-A000078(n)`
-/

namespace A100532.P4716570417332987319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n + (f1 (n + 1) - f1 n - A000078 n)

end

end A100532.P4716570417332987319

namespace A100532

/-- `A000288(n)+Δ[A089074(n)]-A000078(n)` -/
def P4716570417332987319.Spec : Prop :=
  ∀ n, P4716570417332987319.a n = A100532 (n + 1)

end A100532

/-! ## A100532.P7756769128206097935

`A089074(n+1)+A251705(n)-A089074(n)`
-/

namespace A100532.P7756769128206097935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 (n + 1) + (A251705 n - A089074 n)

end

end A100532.P7756769128206097935

namespace A100532

/-- `A089074(n+1)+A251705(n)-A089074(n)` -/
def P7756769128206097935.Spec : Prop :=
  ∀ n, P7756769128206097935.a n = A100532 (n + 1)

end A100532

/-! ## A100532.P12460566735074713378

`A251705(n)+Δ[Δ[A107066(n)]]`
-/

namespace A100532.P12460566735074713378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107066 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 n + (f1 (n + 1) - f1 n)

end

end A100532.P12460566735074713378

namespace A100532

/-- `A251705(n)+Δ[Δ[A107066(n)]]` -/
def P12460566735074713378.Spec : Prop :=
  ∀ n, P12460566735074713378.a n = A100532 (n + 1)

end A100532

/-!
# A100533: 

The programs for A100533, there is no canonical definition to state claims against.
-/

/-! ## A100533.P3906106128115419856

`3^A001248(n+1)`
-/

namespace A100533.P3906106128115419856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001248 (n + 1) : ℤ)

end

end A100533.P3906106128115419856

/-!
# A100534: Number of partitions of 2*n into parts of two kinds.

The programs for A100534, there is no canonical definition to state claims against.
-/

/-! ## A100534.P8931870163855454440

`A000712(2*n)`
-/

namespace A100534.P8931870163855454440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (2 * n)

end

end A100534.P8931870163855454440

/-! ## A100534.P8122997702061915870

`record[A000712(n%4+n)]`
-/

namespace A100534.P8122997702061915870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100534.P8122997702061915870

/-! ## A100534.P12603106930420840357

`record[A000712(and(n, n+1))]`
-/

namespace A100534.P12603106930420840357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100534.P12603106930420840357

/-! ## A100534.P15556241743643614275

`record[A000712(n)/(-1)^n]`
-/

namespace A100534.P15556241743643614275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000712 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100534.P15556241743643614275

/-! ## A100534.P7801874145990248564

`record[and(A000712(n), A105812(n))]`
-/

namespace A100534.P7801874145990248564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000712 n) (A105812 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100534.P7801874145990248564

/-! ## A100534.P4057727946182794368

`A122768(2*n)+A058696(n)`
-/

namespace A100534.P4057727946182794368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (2 * n) + A058696 n

end

end A100534.P4057727946182794368

/-! ## A100534.P5309329235299809062

`record[A000712(n-A105812(n+1))]`
-/

namespace A100534.P5309329235299809062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 ((n : ℤ) - A105812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100534.P5309329235299809062

/-! ## A100534.P11416758374473681996

`record[gcd(A000712(n+1), A035363(n))]`
-/

namespace A100534.P11416758374473681996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000712 (n + 1)) (A035363 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100534.P11416758374473681996

/-! ## A100534.P8228712999387784497

`record[gcd(A000712(n), A035457(n+3))]`
-/

namespace A100534.P8228712999387784497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000712 n) (A035457 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100534.P8228712999387784497

/-! ## A100534.P8983905928223360316

`A122768(2*n)+A000041(2*n)`
-/

namespace A100534.P8983905928223360316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (2 * n) + A000041 (2 * n)

end

end A100534.P8983905928223360316

/-! ## A100534.P9239069969701987765

`A000065(2*n)+A122768(2*n)+1`
-/

namespace A100534.P9239069969701987765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 * n) + (A122768 (2 * n) + 1)

end

end A100534.P9239069969701987765

/-! ## A100534.P4124613594538184367

`2*A006330(2*n)-A114921(2*n)`
-/

namespace A100534.P4124613594538184367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006330 (2 * n) - A114921 (2 * n)

end

end A100534.P4124613594538184367

/-! ## A100534.P18098197698031912692

`A058696(2*n)-A304710(2*n)`
-/

namespace A100534.P18098197698031912692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (2 * n) - A304710 (2 * n)

end

end A100534.P18098197698031912692

/-! ## A100534.P5489100569091550199

`A000713(2*n+1)-(A000990(2*n+1)+A000713(2*n))`
-/

namespace A100534.P5489100569091550199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000713 (2 * n + 1) - (A000990 (2 * n + 1) + A000713 (2 * n))

end

end A100534.P5489100569091550199

/-! ## A100534.P11964095862333772914

`A122768(2*n)+A035377(6*n)`
-/

namespace A100534.P11964095862333772914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (2 * n) + A035377 (6 * n)

end

end A100534.P11964095862333772914

/-! ## A100534.P4728935639370869267

`A000219(2*n)+A011782(2*n)-A116600(2*n)`
-/

namespace A100534.P4728935639370869267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (2 * n) + (A011782 (2 * n) - A116600 (2 * n))

end

end A100534.P4728935639370869267

/-!
# A100535: Number of partitions of 2*n + 1 into parts of two kinds.

The programs for A100535, there is no canonical definition to state claims against.
-/

/-! ## A100535.P3122867511386459596

`A000712(2*n+1)`
-/

namespace A100535.P3122867511386459596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (2 * n + 1)

end

end A100535.P3122867511386459596

/-! ## A100535.P1551762190150282245

`record[A000712(xor(1, n))]`
-/

namespace A100535.P1551762190150282245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100535.P1551762190150282245

/-! ## A100535.P9231912757081623619

`2*A281357(Δ[n²])`
-/

namespace A100535.P9231912757081623619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281357 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100535.P9231912757081623619

/-! ## A100535.P225831714875187524

`record[A000712(n^(n%2))]`
-/

namespace A100535.P225831714875187524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100535.P225831714875187524

/-! ## A100535.P16625134072436055806

`record[A000712(n^and(1, n))]`
-/

namespace A100535.P16625134072436055806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100535.P16625134072436055806

/-! ## A100535.P2708797671847872818

`A100506(n)+A006330(2*n+1)`
-/

namespace A100535.P2708797671847872818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100506 n + A006330 (2 * n + 1)

end

end A100535.P2708797671847872818

/-! ## A100535.P5294133561754632254

`record[gcd(A000712(n+1), A035457(n+1))]`
-/

namespace A100535.P5294133561754632254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000712 (n + 1)) (A035457 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100535.P5294133561754632254

/-! ## A100535.P14362158356254826667

`∑[A000990(2*n+1)+A000990(2*n)]`
-/

namespace A100535.P14362158356254826667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 (2 * n + 1) + A000990 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100535.P14362158356254826667

/-! ## A100535.P16653982244185602603

`A006330(2*n+1)+A001523(2*n+1)`
-/

namespace A100535.P16653982244185602603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 (2 * n + 1) + A001523 (2 * n + 1)

end

end A100535.P16653982244185602603

/-! ## A100535.P1278855031239007364

`A122768(2*n+1)+A000041(2*n+1)`
-/

namespace A100535.P1278855031239007364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (2 * n + 1) + A000041 (2 * n + 1)

end

end A100535.P1278855031239007364

/-! ## A100535.P10265551797538420893

`A139582(2*n+1)+A052837(2*n+1)`
-/

namespace A100535.P10265551797538420893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 (2 * n + 1) + A052837 (2 * n + 1)

end

end A100535.P10265551797538420893

/-! ## A100535.P18147088136182576509

`A058696(2*n+1)-A304710(2*n+1)`
-/

namespace A100535.P18147088136182576509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (2 * n + 1) - A304710 (2 * n + 1)

end

end A100535.P18147088136182576509

/-! ## A100535.P8314781553802539097

`A000713(2*n+1)-A000713(2*n)`
-/

namespace A100535.P8314781553802539097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000713 (2 * n + 1) - A000713 (2 * n)

end

end A100535.P8314781553802539097

/-!
# A100536: a(n) = 3*n^2 - 2.

The programs for A100536, the canonical program `A100536.P12167223128897193754` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100536 has offset 1).

The definition of A100536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)²-2` (program `A100536.P12167223128897193754`, by `A100536.P12167223128897193754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100536.P12167223128897193754

`3*(n+1)²-2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100536

/-- `3*(n+1)²-2` -/
def P12167223128897193754.Spec : Prop :=
  ∀ n, P12167223128897193754.a n = A100536 (n + 1)

theorem P12167223128897193754.correct : P12167223128897193754.Spec := by
  intro n
  simp only [A100536, Nat.add_sub_cancel]

end A100536

/-! ## A100536.P13282201626432176413

`floor(1/((n+1)*tan(1/(n+1))-1))`
-/

namespace A100536.P13282201626432176413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((n + 1 : ℝ) * Real.tan (1 / (n + 1 : ℚ) : ℝ) - 1)⌋

end

end A100536.P13282201626432176413

namespace A100536

/-- `floor(1/((n+1)*tan(1/(n+1))-1))` -/
def P13282201626432176413.Spec : Prop :=
  ∀ n, P13282201626432176413.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P6045975589964144216

`∑[a(n-1)+6]` with `a(0)=1, a(1)=9`
-/

namespace A100536.P6045975589964144216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100536.P6045975589964144216

namespace A100536

/-- `∑[a(n-1)+6]` -/
def P6045975589964144216.Spec : Prop :=
  ∀ n, (P6045975589964144216.a n : ℤ) = A100536 (n + 1)

end A100536

/-! ## A100536.P10742192196719240021

`record[3*(1-n)²-2]`
-/

namespace A100536.P10742192196719240021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - (n : ℤ)) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100536.P10742192196719240021

namespace A100536

/-- `record[3*(1-n)²-2]` -/
def P10742192196719240021.Spec : Prop :=
  ∀ n, P10742192196719240021.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P14326100203709079787

`∑[ogf((1+7x-2x^2)/(1-2x+x^2))]`
-/

namespace A100536.P14326100203709079787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100536.P14326100203709079787

namespace A100536

/-- `∑[ogf((1+7x-2x^2)/(1-2x+x^2))]` -/
def P14326100203709079787.Spec : Prop :=
  ∀ n, P14326100203709079787.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P10773875114763085211

`ogf((1+7x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A100536.P10773875114763085211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -2] [1, -3, 3, -1] n

end

end A100536.P10773875114763085211

namespace A100536

/-- `ogf((1+7x-2x^2)/(1-3x+3x^2-x^3))` -/
def P10773875114763085211.Spec : Prop :=
  ∀ n, P10773875114763085211.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P3293333136923706151

`abs(or(2, -(3*(n+1)²)))`
-/

namespace A100536.P3293333136923706151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 (-(3 * (n + 1) ^ 2 : ℤ))|

end

end A100536.P3293333136923706151

namespace A100536

/-- `abs(or(2, -(3*(n+1)²)))` -/
def P3293333136923706151.Spec : Prop :=
  ∀ n, P3293333136923706151.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P13828471026250606513

`-or(2, -(3*(n+1)²))`
-/

namespace A100536.P13828471026250606513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-(3 * (n + 1) ^ 2 : ℤ))

end

end A100536.P13828471026250606513

namespace A100536

/-- `-or(2, -(3*(n+1)²))` -/
def P13828471026250606513.Spec : Prop :=
  ∀ n, P13828471026250606513.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P13887138641159656504

`abs(xor(2, -(3*(n+1)²)))`
-/

namespace A100536.P13887138641159656504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 2 (-(3 * (n + 1) ^ 2 : ℤ))|

end

end A100536.P13887138641159656504

namespace A100536

/-- `abs(xor(2, -(3*(n+1)²)))` -/
def P13887138641159656504.Spec : Prop :=
  ∀ n, P13887138641159656504.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P14557786280119944397

`-xor(2, -(3*(n+1)²))`
-/

namespace A100536.P14557786280119944397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-(3 * (n + 1) ^ 2 : ℤ))

end

end A100536.P14557786280119944397

namespace A100536

/-- `-xor(2, -(3*(n+1)²))` -/
def P14557786280119944397.Spec : Prop :=
  ∀ n, P14557786280119944397.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P10049933442471376908

`floor(3*(cos(2)+(n+1)²))`
-/

namespace A100536.P10049933442471376908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (Real.cos (2 : ℝ) + ((n + 1) ^ 2 : ℝ))⌋

end

end A100536.P10049933442471376908

namespace A100536

/-- `floor(3*(cos(2)+(n+1)²))` -/
def P10049933442471376908.Spec : Prop :=
  ∀ n, P10049933442471376908.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P9951076657674765271

`ceil(3*(cos(3)+(n+1)²))`
-/

namespace A100536.P9951076657674765271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (Real.cos (3 : ℝ) + ((n + 1) ^ 2 : ℝ))⌉

end

end A100536.P9951076657674765271

namespace A100536

/-- `ceil(3*(cos(3)+(n+1)²))` -/
def P9951076657674765271.Spec : Prop :=
  ∀ n, P9951076657674765271.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P8489844609492380131

`floor(3/tan(1/(n+1))²)`
-/

namespace A100536.P8489844609492380131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / Real.tan (1 / (n + 1 : ℚ) : ℝ) ^ 2⌋

end

end A100536.P8489844609492380131

namespace A100536

/-- `floor(3/tan(1/(n+1))²)` -/
def P8489844609492380131.Spec : Prop :=
  ∀ n, P8489844609492380131.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P16849001742903323967

`round(3/tan(1/(n+1))²)`
-/

namespace A100536.P16849001742903323967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / Real.tan (1 / (n + 1 : ℚ) : ℝ) ^ 2)

end

end A100536.P16849001742903323967

namespace A100536

/-- `round(3/tan(1/(n+1))²)` -/
def P16849001742903323967.Spec : Prop :=
  ∀ n, P16849001742903323967.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P14648330488702302360

`floor(3/asin(1/(n+1))²)`
-/

namespace A100536.P14648330488702302360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / Real.arcsin (1 / (n + 1 : ℚ) : ℝ) ^ 2⌋

end

end A100536.P14648330488702302360

namespace A100536

/-- `floor(3/asin(1/(n+1))²)` -/
def P14648330488702302360.Spec : Prop :=
  ∀ n, P14648330488702302360.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P9373905407543203578

`floor(3*(cot(2)+(n+1)²))`
-/

namespace A100536.P9373905407543203578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (Real.cot (2 : ℝ) + ((n + 1) ^ 2 : ℝ))⌋

end

end A100536.P9373905407543203578

namespace A100536

/-- `floor(3*(cot(2)+(n+1)²))` -/
def P9373905407543203578.Spec : Prop :=
  ∀ n, P9373905407543203578.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P14630191801060442418

`round(3*cot(1/(n+1))²)`
-/

namespace A100536.P14630191801060442418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * Real.cot (1 / (n + 1 : ℚ) : ℝ) ^ 2)

end

end A100536.P14630191801060442418

namespace A100536

/-- `round(3*cot(1/(n+1))²)` -/
def P14630191801060442418.Spec : Prop :=
  ∀ n, P14630191801060442418.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P12078158637874120155

`floor(6*n+a(n-1)+3)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A100536.P12078158637874120155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * n + (a (n - 1) + 3)

end

end A100536.P12078158637874120155

namespace A100536

/-- `floor(6*n+a(n-1)+3)` -/
def P12078158637874120155.Spec : Prop :=
  ∀ n, (P12078158637874120155.a n : ℤ) = A100536 (n + 1)

theorem P12078158637874120155.correct : P12078158637874120155.Spec := by
  intro n
  induction n with
  | zero => simp [A100536, A100536.P12078158637874120155.a, A100536.P12167223128897193754.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A100536, Nat.add_sub_cancel, A100536.P12078158637874120155.a, A100536.P12167223128897193754.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A100536

/-! ## A100536.P1126197643568005121

`floor(Δ[(n+2)*C(2*n, 2)/2])`
-/

namespace A100536.P1126197643568005121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((Nat.choose (2 * n) 2 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A100536.P1126197643568005121

namespace A100536

/-- `floor(Δ[(n+2)*C(2*n, 2)/2])` -/
def P1126197643568005121.Spec : Prop :=
  ∀ n, P1126197643568005121.a n = A100536 (n + 1)

end A100536

/-! ## A100536.P3332579615614076959

`Δ[lcm(n, (n+1)²)-C(n+3, 2)]`
-/

namespace A100536.P3332579615614076959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n ((n + 1) ^ 2) : ℤ) - (Nat.choose (n + 3) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100536.P3332579615614076959

namespace A100536

/-- `Δ[lcm(n, (n+1)²)-C(n+3, 2)]` -/
def P3332579615614076959.Spec : Prop :=
  ∀ n, P3332579615614076959.a n = A100536 (n + 1)

end A100536

/-!
# A100537: Triangle read by rows: T(n,k) is the number of Dyck n-paths whose first descent has length k.

The programs for A100537, the canonical program `A100537.P6243937713485138238` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100537 has offset 1).

The definition of A100537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100537.P2047133903405320301

`A071724(row(n)-col(n))`
-/

namespace A100537.P2047133903405320301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A100537.P2047133903405320301

namespace A100537

/-- `A071724(row(n)-col(n))` -/
def P2047133903405320301.Spec : Prop :=
  ∀ n, P2047133903405320301.a n = A100537 (n + 1)

end A100537

/-! ## A100537.P6243937713485138238

`A071724(A025581(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100537

/-- `A071724(A025581(n))` -/
def P6243937713485138238.Spec : Prop :=
  ∀ n, P6243937713485138238.a n = A100537 (n + 1)

theorem P6243937713485138238.correct : P6243937713485138238.Spec := by
  intro n
  simp only [A100537, Nat.add_sub_cancel]

end A100537

/-! ## A100537.P327887302265711987

`A071724(val(A130321(n), 2))`
-/

namespace A100537.P327887302265711987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (SequenceMachineLib.valuation (A130321 n).toNat 2)

end

end A100537.P327887302265711987

namespace A100537

/-- `A071724(val(A130321(n), 2))` -/
def P327887302265711987.Spec : Prop :=
  ∀ n, P327887302265711987.a n = A100537 (n + 1)

end A100537

/-! ## A100537.P11401076352615658794

`A071724(A004736(n+1)-1)`
-/

namespace A100537.P11401076352615658794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (A004736 (n + 1) - 1).toNat

end

end A100537.P11401076352615658794

namespace A100537

/-- `A071724(A004736(n+1)-1)` -/
def P11401076352615658794.Spec : Prop :=
  ∀ n, P11401076352615658794.a n = A100537 (n + 1)

end A100537

/-! ## A100537.P13639770052977431511

`A071724(A002024(n+1)-A002260(n+1))`
-/

namespace A100537.P13639770052977431511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (A002024 (n + 1) - A002260 (n + 1)).toNat

end

end A100537.P13639770052977431511

namespace A100537

/-- `A071724(A002024(n+1)-A002260(n+1))` -/
def P13639770052977431511.Spec : Prop :=
  ∀ n, P13639770052977431511.a n = A100537 (n + 1)

end A100537

/-! ## A100537.P15442090142637780641

`A000245(A193592(n+1))`
-/

namespace A100537.P15442090142637780641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (A193592 (n + 1)).toNat

end

end A100537.P15442090142637780641

namespace A100537

/-- `A000245(A193592(n+1))` -/
def P15442090142637780641.Spec : Prop :=
  ∀ n, P15442090142637780641.a n = A100537 (n + 1)

end A100537

/-! ## A100537.P12222637374085578531

`A112413(A181133(n+1))`
-/

namespace A100537.P12222637374085578531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112413 (A181133 (n + 1)).toNat

end

end A100537.P12222637374085578531

namespace A100537

/-- `A112413(A181133(n+1))` -/
def P12222637374085578531.Spec : Prop :=
  ∀ n, P12222637374085578531.a n = A100537 (n + 1)

end A100537

/-! ## A100537.P100510992402606233

`A112413(A003056(n+1)+n+1)`
-/

namespace A100537.P100510992402606233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112413 (A003056 (n + 1) + (n + 1 : ℤ)).toNat

end

end A100537.P100510992402606233

namespace A100537

/-- `A112413(A003056(n+1)+n+1)` -/
def P100510992402606233.Spec : Prop :=
  ∀ n, P100510992402606233.a n = A100537 (n + 1)

end A100537

/-! ## A100537.P8624682254523552728

`A008313(A095832(n+1)+1)`
-/

namespace A100537.P8624682254523552728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (A095832 (n + 1) + 1).toNat

end

end A100537.P8624682254523552728

namespace A100537

/-- `A008313(A095832(n+1)+1)` -/
def P8624682254523552728.Spec : Prop :=
  ∀ n, P8624682254523552728.a n = A100537 (n + 1)

end A100537

/-! ## A100537.P6708068357774168342

`A276986(A155038(n+1)+1)`
-/

namespace A100537.P6708068357774168342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276986 (A155038 (n + 1) + 1).toNat

end

end A100537.P6708068357774168342

namespace A100537

/-- `A276986(A155038(n+1)+1)` -/
def P6708068357774168342.Spec : Prop :=
  ∀ n, P6708068357774168342.a n = A100537 (n + 1)

end A100537

/-! ## A100537.P4082218955267234009

`A276986(A057728(n+2)+1)`
-/

namespace A100537.P4082218955267234009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276986 (A057728 (n + 2) + 1).toNat

end

end A100537.P4082218955267234009

namespace A100537

/-- `A276986(A057728(n+2)+1)` -/
def P4082218955267234009.Spec : Prop :=
  ∀ n, P4082218955267234009.a n = A100537 (n + 1)

end A100537

/-!
# A100538: Volume of the 3-dimensional box of sides of length equal to consecutive Padovan numbers (A000931). These boxes form a spiral in three dimensions similar to the spiral of Fibonacci boxes in two dimensions.

The programs for A100538, the canonical program `A100538.P8377202670825402081` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100538 has offset 1).

The definition of A100538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100538.P8377202670825402081

`A000931(n+5)*A000931(n+6)*A000931(n+7)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100538

/-- `A000931(n+5)*A000931(n+6)*A000931(n+7)` -/
def P8377202670825402081.Spec : Prop :=
  ∀ n, P8377202670825402081.a n = A100538 (n + 1)

theorem P8377202670825402081.correct : P8377202670825402081.Spec := by
  intro n
  simp only [A100538, Nat.add_sub_cancel]

end A100538

/-! ## A100538.P2518503684391346720

`∑[A285551(gcd(n, ∏{d}[n, #]))]`
-/

namespace A100538.P2518503684391346720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285551 (Nat.gcd n (∏ d ∈ Nat.divisors (f2 n), d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100538.P2518503684391346720

namespace A100538

/-- `∑[A285551(gcd(n, ∏{d}[n, #]))]` -/
def P2518503684391346720.Spec : Prop :=
  ∀ n, P2518503684391346720.a n = A100538 (n + 1)

end A100538

/-! ## A100538.P527757364463540401

`A285551(n)+a(n-1)` with `a(0)=1`
-/

namespace A100538.P527757364463540401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285551 n + a (n - 1)

end

end A100538.P527757364463540401

namespace A100538

/-- `A285551(n)+a(n-1)` -/
def P527757364463540401.Spec : Prop :=
  ∀ n, P527757364463540401.a n = A100538 (n + 1)

end A100538

/-! ## A100538.P16102854243714631333

`∑[A285551(A000007(n)+n)]`
-/

namespace A100538.P16102854243714631333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285551 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100538.P16102854243714631333

namespace A100538

/-- `∑[A285551(A000007(n)+n)]` -/
def P16102854243714631333.Spec : Prop :=
  ∀ n, P16102854243714631333.a n = A100538 (n + 1)

end A100538

/-! ## A100538.P11684291316528357968

`∑[A134816(n+1)²*A134816(n+2)]`
-/

namespace A100538.P11684291316528357968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) ^ 2 * A134816 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100538.P11684291316528357968

namespace A100538

/-- `∑[A134816(n+1)²*A134816(n+2)]` -/
def P11684291316528357968.Spec : Prop :=
  ∀ n, P11684291316528357968.a n = A100538 (n + 1)

end A100538

/-! ## A100538.P565282665280599735

`∑[A285551(n+1)]+1-A285551(n+1)`
-/

namespace A100538.P565282665280599735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A285551 (n + 1))

end

end A100538.P565282665280599735

namespace A100538

/-- `∑[A285551(n+1)]+1-A285551(n+1)` -/
def P565282665280599735.Spec : Prop :=
  ∀ n, P565282665280599735.a n = A100538 (n + 1)

end A100538

/-! ## A100538.P8028588176080224582

`A134816(n+1)/A134816(n+2)*A285551(n+1)`
-/

namespace A100538.P8028588176080224582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134816 (n + 1) : ℚ) / (A134816 (n + 2) : ℚ) * (A285551 (n + 1) : ℚ)

end

end A100538.P8028588176080224582

namespace A100538

/-- `A134816(n+1)/A134816(n+2)*A285551(n+1)` -/
def P8028588176080224582.Spec : Prop :=
  ∀ n, P8028588176080224582.a n = (A100538 (n + 1) : ℚ)

end A100538

/-!
# A100540: Total number of Latin 4-dimensional hypercubes (Latin polyhedra) of order n.

The programs for A100540, there is no canonical definition to state claims against.
-/

/-! ## A100540.P7095606578326075583

`A249026(∑[n+5]+5)`
-/

namespace A100540.P7095606578326075583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249026 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A100540.P7095606578326075583

/-!
# A100542: Two-color Rado numbers R(0,n).

The programs for A100542, the canonical program `A100542.P6563188325542294125` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100542 has offset 1).

The definition of A100542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100542.P6563188325542294125

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=5, a(1)=1, a(2)=9, a(3)=10, a(4)=15, a(5)=21`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100542

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P6563188325542294125.Spec : Prop :=
  ∀ n, P6563188325542294125.a n = A100542 (n + 1)

theorem P6563188325542294125.correct : P6563188325542294125.Spec := by
  intro n
  simp only [A100542, Nat.add_sub_cancel]

end A100542

/-! ## A100542.P1308184789638837741

`a(n-1)+1+n` with `a(0)=5, a(1)=1, a(2)=9, a(3)=10`
-/

namespace A100542.P1308184789638837741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 9, 10] fun n a =>
  a (n - 1) + 1 + n

end

end A100542.P1308184789638837741

namespace A100542

/-- `a(n-1)+1+n` -/
def P1308184789638837741.Spec : Prop :=
  ∀ n, (P1308184789638837741.a n : ℤ) = A100542 (n + 1)

end A100542

/-! ## A100542.P15181712566090415938

`a(n-1)-xor(n, -1)` with `a(0)=5, a(1)=1, a(2)=9, a(3)=10`
-/

namespace A100542.P15181712566090415938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 9, 10] fun n a =>
  a (n - 1) - Int.xor (n : ℤ) (-1)

end

end A100542.P15181712566090415938

namespace A100542

/-- `a(n-1)-xor(n, -1)` -/
def P15181712566090415938.Spec : Prop :=
  ∀ n, P15181712566090415938.a n = A100542 (n + 1)

end A100542

/-! ## A100542.P15390420111646667092

`record[(1-n)²]-a(n-1)` with `a(0)=5, a(1)=1, a(2)=9, a(3)=10`
-/

namespace A100542.P15390420111646667092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 9, 10] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A100542.P15390420111646667092

namespace A100542

/-- `record[(1-n)²]-a(n-1)` -/
def P15390420111646667092.Spec : Prop :=
  ∀ n, P15390420111646667092.a n = A100542 (n + 1)

end A100542

/-! ## A100542.P17283929550020917448

`A000124(A181440(n+1))-A167407(A008578(n+1))`
-/

namespace A100542.P17283929550020917448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A181440 (n + 1)).toNat - A167407 (A008578 (n + 1)).toNat

end

end A100542.P17283929550020917448

namespace A100542

/-- `A000124(A181440(n+1))-A167407(A008578(n+1))` -/
def P17283929550020917448.Spec : Prop :=
  ∀ n, P17283929550020917448.a n = A100542 (n + 1)

end A100542

/-! ## A100542.P15791519664403554677

`A066182(a(n-1)+1)` with `a(0)=5, a(1)=1, a(2)=9, a(3)=10`
-/

namespace A100542.P15791519664403554677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 9, 10] fun n a =>
  A066182 (a (n - 1) + 1).toNat

end

end A100542.P15791519664403554677

namespace A100542

/-- `A066182(a(n-1)+1)` -/
def P15791519664403554677.Spec : Prop :=
  ∀ n, P15791519664403554677.a n = A100542 (n + 1)

end A100542

/-! ## A100542.P9310782574522115914

`A038722(a(n-1)+1)` with `a(0)=5, a(1)=1, a(2)=9, a(3)=10`
-/

namespace A100542.P9310782574522115914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 9, 10] fun n a =>
  A038722 (a (n - 1) + 1).toNat

end

end A100542.P9310782574522115914

namespace A100542

/-- `A038722(a(n-1)+1)` -/
def P9310782574522115914.Spec : Prop :=
  ∀ n, P9310782574522115914.a n = A100542 (n + 1)

end A100542

/-! ## A100542.P12965324183103634579

`A094305(a(n-1))` with `a(0)=5, a(1)=1, a(2)=9`
-/

namespace A100542.P12965324183103634579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 9] fun n a =>
  A094305 (a (n - 1)).toNat

end

end A100542.P12965324183103634579

namespace A100542

/-- `A094305(a(n-1))` -/
def P12965324183103634579.Spec : Prop :=
  ∀ n, P12965324183103634579.a n = A100542 (n + 1)

end A100542

/-! ## A100542.P10309671229380728620

`A098358(a(n-1))` with `a(0)=5, a(1)=1, a(2)=9`
-/

namespace A100542.P10309671229380728620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 9] fun n a =>
  A098358 (a (n - 1)).toNat

end

end A100542.P10309671229380728620

namespace A100542

/-- `A098358(a(n-1))` -/
def P10309671229380728620.Spec : Prop :=
  ∀ n, P10309671229380728620.a n = A100542 (n + 1)

end A100542

/-! ## A100542.P3576362365604977506

`A080036(a(n-1))` with `a(0)=5, a(1)=1, a(2)=9, a(3)=10`
-/

namespace A100542.P3576362365604977506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 9, 10] fun n a =>
  A080036 (a (n - 1)).toNat

end

end A100542.P3576362365604977506

namespace A100542

/-- `A080036(a(n-1))` -/
def P3576362365604977506.Spec : Prop :=
  ∀ n, P3576362365604977506.a n = A100542 (n + 1)

end A100542

/-! ## A100542.P15715729512795808298

`A278818(a(n-1))` with `a(0)=5, a(1)=1, a(2)=9, a(3)=10`
-/

namespace A100542.P15715729512795808298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 9, 10] fun n a =>
  A278818 (a (n - 1)).toNat

end

end A100542.P15715729512795808298

namespace A100542

/-- `A278818(a(n-1))` -/
def P15715729512795808298.Spec : Prop :=
  ∀ n, P15715729512795808298.a n = A100542 (n + 1)

end A100542

/-! ## A100542.P12108367734231413778

`A143182(a(n-1))+∑[n]` with `a(0)=5, a(1)=1, a(2)=9`
-/

namespace A100542.P12108367734231413778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 9] fun n a =>
  A143182 (a (n - 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100542.P12108367734231413778

namespace A100542

/-- `A143182(a(n-1))+∑[n]` -/
def P12108367734231413778.Spec : Prop :=
  ∀ n, P12108367734231413778.a n = A100542 (n + 1)

end A100542

/-! ## A100542.P1077745190887478689

`A000217(A143182(a(n-1)))` with `a(0)=5, a(1)=1, a(2)=9`
-/

namespace A100542.P1077745190887478689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 9] fun n a =>
  A000217 (A143182 (a (n - 1)).toNat).toNat

end

end A100542.P1077745190887478689

namespace A100542

/-- `A000217(A143182(a(n-1)))` -/
def P1077745190887478689.Spec : Prop :=
  ∀ n, P1077745190887478689.a n = A100542 (n + 1)

end A100542

/-! ## A100542.P10624264416401036642

`A000217(A003057(a(n-1)))` with `a(0)=5, a(1)=1, a(2)=9, a(3)=10`
-/

namespace A100542.P10624264416401036642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 9, 10] fun n a =>
  A000217 (A003057 (a (n - 1)).toNat).toNat

end

end A100542.P10624264416401036642

namespace A100542

/-- `A000217(A003057(a(n-1)))` -/
def P10624264416401036642.Spec : Prop :=
  ∀ n, P10624264416401036642.a n = A100542 (n + 1)

end A100542

/-! ## A100542.P14684720310793943181

`A003986(a(n-1))+A000124(n)` with `a(0)=5, a(1)=1, a(2)=9`
-/

namespace A100542.P14684720310793943181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 9] fun n a =>
  A003986 (a (n - 1)).toNat + A000124 n

end

end A100542.P14684720310793943181

namespace A100542

/-- `A003986(a(n-1))+A000124(n)` -/
def P14684720310793943181.Spec : Prop :=
  ∀ n, P14684720310793943181.a n = A100542 (n + 1)

end A100542

/-!
# A100545: Expansion of (7-2*x) / (1-3*x+x^2).

The programs for A100545, the canonical program `A100545.P8675234283213422772` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100545 has offset 0).

The definition of A100545 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((7-2x)/(1-3x+x^2))` (program `A100545.P8675234283213422772`, by `A100545.P8675234283213422772.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100545.P8675234283213422772

`ogf((7-2x)/(1-3x+x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100545

/-- `ogf((7-2x)/(1-3x+x^2))` -/
def P8675234283213422772.Spec : Prop :=
  ∀ n, P8675234283213422772.a n = A100545 n

theorem P8675234283213422772.correct : P8675234283213422772.Spec := by
  intro n
  simp only [A100545]

end A100545

/-! ## A100545.P15433021393815570231

`3*a(n-1)-a(n-2)` with `a(0)=7, a(1)=19`
-/

namespace A100545.P15433021393815570231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 19] fun n a =>
  3 * a (n - 1) - a (n - 2)

end

end A100545.P15433021393815570231

namespace A100545

/-- `3*a(n-1)-a(n-2)` -/
def P15433021393815570231.Spec : Prop :=
  ∀ n, P15433021393815570231.a n = A100545 n

end A100545

/-! ## A100545.P6717382794579135739

`A000045(2*(n+2))+A000032(2*n+3)`
-/

namespace A100545.P6717382794579135739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 2)) + A000032 (2 * n + 3)

end

end A100545.P6717382794579135739

namespace A100545

/-- `A000045(2*(n+2))+A000032(2*n+3)` -/
def P6717382794579135739.Spec : Prop :=
  ∀ n, P6717382794579135739.a n = A100545 n

end A100545

/-! ## A100545.P3171521989914702991

`4*A000045(2*(n+1))+A000045(2*n+1)+A000045(2*n+3)`
-/

namespace A100545.P3171521989914702991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (2 * (n + 1)) + A000045 (2 * n + 1) + A000045 (2 * n + 3)

end

end A100545.P3171521989914702991

namespace A100545

/-- `4*A000045(2*(n+1))+A000045(2*n+1)+A000045(2*n+3)` -/
def P3171521989914702991.Spec : Prop :=
  ∀ n, P3171521989914702991.a n = A100545 n

end A100545

/-! ## A100545.P220817087957402853

`ceil(ϕ²*a(n-1))` with `a(0)=7`
-/

namespace A100545.P220817087957402853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A100545.P220817087957402853

namespace A100545

/-- `ceil(ϕ²*a(n-1))` -/
def P220817087957402853.Spec : Prop :=
  ∀ n, P220817087957402853.a n = A100545 n

end A100545

/-! ## A100545.P14283578184645168006

`ceil(a(n-1)/(2-ϕ))` with `a(0)=7`
-/

namespace A100545.P14283578184645168006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ⌈(a (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

end

end A100545.P14283578184645168006

namespace A100545

/-- `ceil(a(n-1)/(2-ϕ))` -/
def P14283578184645168006.Spec : Prop :=
  ∀ n, P14283578184645168006.a n = A100545 n

end A100545

/-! ## A100545.P10431907220476549103

`ceil(ϕ*ϕ*a(n-1))` with `a(0)=7`
-/

namespace A100545.P10431907220476549103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A100545.P10431907220476549103

namespace A100545

/-- `ceil(ϕ*ϕ*a(n-1))` -/
def P10431907220476549103.Spec : Prop :=
  ∀ n, P10431907220476549103.a n = A100545 n

end A100545

/-! ## A100545.P8556468877745146220

`record[floor(-(ϕ*a(n-1)))]` with `a(0)=7`
-/

namespace A100545.P8556468877745146220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  ⌊-(Real.goldenRatio * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100545.P8556468877745146220

namespace A100545

/-- `record[floor(-(ϕ*a(n-1)))]` -/
def P8556468877745146220.Spec : Prop :=
  ∀ n, P8556468877745146220.a n = A100545 n

end A100545

/-! ## A100545.P15746080872515378484

`A001060(2*(n+1))`
-/

namespace A100545.P15746080872515378484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (2 * (n + 1))

end

end A100545.P15746080872515378484

namespace A100545

/-- `A001060(2*(n+1))` -/
def P15746080872515378484.Spec : Prop :=
  ∀ n, P15746080872515378484.a n = A100545 n

end A100545

/-! ## A100545.P7489287081196917603

`A228208(2*(n+2))`
-/

namespace A100545.P7489287081196917603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228208 (2 * (n + 2))

end

end A100545.P7489287081196917603

namespace A100545

/-- `A228208(2*(n+2))` -/
def P7489287081196917603.Spec : Prop :=
  ∀ n, P7489287081196917603.a n = A100545 n

end A100545

/-! ## A100545.P12103348103275558258

`A244472(2*(n+2))`
-/

namespace A100545.P12103348103275558258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244472 (2 * (n + 2))

end

end A100545.P12103348103275558258

namespace A100545

/-- `A244472(2*(n+2))` -/
def P12103348103275558258.Spec : Prop :=
  ∀ n, P12103348103275558258.a n = A100545 n

end A100545

/-! ## A100545.P16591704212432715122

`A013655(2*n+3)`
-/

namespace A100545.P16591704212432715122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (2 * n + 3)

end

end A100545.P16591704212432715122

namespace A100545

/-- `A013655(2*n+3)` -/
def P16591704212432715122.Spec : Prop :=
  ∀ n, P16591704212432715122.a n = A100545 n

end A100545

/-! ## A100545.P1531993910508916143

`record[Δ[A396201(n+2)]]`
-/

namespace A100545.P1531993910508916143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396201 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100545.P1531993910508916143

namespace A100545

/-- `record[Δ[A396201(n+2)]]` -/
def P1531993910508916143.Spec : Prop :=
  ∀ n, P1531993910508916143.a n = A100545 n

end A100545

/-! ## A100545.P11437484964153152017

`A022318(2*(n+1))+1`
-/

namespace A100545.P11437484964153152017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 (2 * (n + 1)) + 1

end

end A100545.P11437484964153152017

namespace A100545

/-- `A022318(2*(n+1))+1` -/
def P11437484964153152017.Spec : Prop :=
  ∀ n, P11437484964153152017.a n = A100545 n

end A100545

/-! ## A100545.P4169042436602067925

`A187890(2*n+5)-1`
-/

namespace A100545.P4169042436602067925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (2 * n + 5) - 1

end

end A100545.P4169042436602067925

namespace A100545

/-- `A187890(2*n+5)-1` -/
def P4169042436602067925.Spec : Prop :=
  ∀ n, P4169042436602067925.a n = A100545 n

end A100545

/-! ## A100545.P13935575319291381546

`A174562(3*(n+1)+n+2)`
-/

namespace A100545.P13935575319291381546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174562 (3 * (n + 1) + (n + 2))

end

end A100545.P13935575319291381546

namespace A100545

/-- `A174562(3*(n+1)+n+2)` -/
def P13935575319291381546.Spec : Prop :=
  ∀ n, P13935575319291381546.a n = A100545 n

end A100545

/-! ## A100545.P1966146692534299157

`A271359(n)+A005248(n)`
-/

namespace A100545.P1966146692534299157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271359 n + A005248 n

end

end A100545.P1966146692534299157

namespace A100545

/-- `A271359(n)+A005248(n)` -/
def P1966146692534299157.Spec : Prop :=
  ∀ n, P1966146692534299157.a n = A100545 n

end A100545

/-! ## A100545.P17505871777266921780

`A054486(n+1)+A048575(n)`
-/

namespace A100545.P17505871777266921780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054486 (n + 1) + A048575 n

end

end A100545.P17505871777266921780

namespace A100545

/-- `A054486(n+1)+A048575(n)` -/
def P17505871777266921780.Spec : Prop :=
  ∀ n, P17505871777266921780.a n = A100545 n

end A100545

/-! ## A100545.P9989911276879960215

`A102714(n+1)+A102714(n)`
-/

namespace A100545.P9989911276879960215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102714 (n + 1) + A102714 n

end

end A100545.P9989911276879960215

namespace A100545

/-- `A102714(n+1)+A102714(n)` -/
def P9989911276879960215.Spec : Prop :=
  ∀ n, P9989911276879960215.a n = A100545 n

end A100545

/-! ## A100545.P11273863864355496241

`A005248(n+2)+A001906(n)`
-/

namespace A100545.P11273863864355496241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 2) + A001906 n

end

end A100545.P11273863864355496241

namespace A100545

/-- `A005248(n+2)+A001906(n)` -/
def P11273863864355496241.Spec : Prop :=
  ∀ n, P11273863864355496241.a n = A100545 n

end A100545

/-!
# A100546: Difference between the smallest semiperimeter (see A063655) and its integer log (A001414) equals 1.

The programs for A100546, there is no canonical definition to state claims against.
-/

/-! ## A100546.P8280710532824945549

`eq[1, A092510(n+1)]+1`
-/

namespace A100546.P8280710532824945549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100546.P8280710532824945549

/-! ## A100546.P9801543039268656817

`eq[1, A092510(ceil(abs(γ-n)))]`
-/

namespace A100546.P9801543039268656817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092510 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100546.P9801543039268656817

/-! ## A100546.P6436407849084501666

`lt[A008683(n+1), A193870(A001606(n+3)+1)]+1`
-/

namespace A100546.P6436407849084501666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (A001606 (n + 3) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A100546.P6436407849084501666

/-! ## A100546.P15775803106020046204

`lt[A107393(n), A175126(A246106(n))]`
-/

namespace A100546.P15775803106020046204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A246106 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100546.P15775803106020046204

/-! ## A100546.P16536816935938999835

`lt[A040081(n+1), A319099(A141690(n))]`
-/

namespace A100546.P16536816935938999835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319099 (A141690 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100546.P16536816935938999835

/-!
# A100548: Number of n-node labeled digraphs without endpoints.

The programs for A100548, there is no canonical definition to state claims against.
-/

/-! ## A100548.P12972023133423942602

`A164288(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=28`
-/

namespace A100548.P12972023133423942602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 28] fun n a =>
  A164288 (a (n - 1) + a (n - 2)).toNat

end

end A100548.P12972023133423942602

/-!
# A100549: Let n = 2^e_2 * 3^e_ * 5^e_ * ... be the prime factorization of n; then a(n) = largest prime <= 1 + max{e_2, e_3, e_5, ...}; a(1) = 1 by convention.

The programs for A100549, the canonical program `A100549.P3441829071280898481` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100549 has offset 1).

The definition of A100549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100549.P3441829071280898481

`A136548(A051903(n+1)+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100549

/-- `A136548(A051903(n+1)+2)` -/
def P3441829071280898481.Spec : Prop :=
  ∀ n, P3441829071280898481.a n = A100549 (n + 1)

theorem P3441829071280898481.correct : P3441829071280898481.Spec := by
  intro n
  simp only [A100549, Nat.add_sub_cancel]

end A100549

/-! ## A100549.P6883248476612960550

`A006530(∏{e}[n+1, A055773(#+1)])`
-/

namespace A100549.P6883248476612960550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), A055773 (Nat.factorization (f1 n) p + 1)).toNat

end

end A100549.P6883248476612960550

namespace A100549

/-- `A006530(∏{e}[n+1, A055773(#+1)])` -/
def P6883248476612960550.Spec : Prop :=
  ∀ n, P6883248476612960550.a n = A100549 (n + 1)

end A100549

/-! ## A100549.P4608992603631050681

`A006530(A253139(n+1))`
-/

namespace A100549.P4608992603631050681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A253139 (n + 1)).toNat

end

end A100549.P4608992603631050681

namespace A100549

/-- `A006530(A253139(n+1))` -/
def P4608992603631050681.Spec : Prop :=
  ∀ n, P4608992603631050681.a n = A100549 (n + 1)

end A100549

/-! ## A100549.P11984914048516912289

`A006530(∏{d}[n+1, A014963(A000005(#))])`
-/

namespace A100549.P11984914048516912289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ d ∈ Nat.divisors (f1 n), A014963 (A000005 d).toNat).toNat

end

end A100549.P11984914048516912289

namespace A100549

/-- `A006530(∏{d}[n+1, A014963(A000005(#))])` -/
def P11984914048516912289.Spec : Prop :=
  ∀ n, P11984914048516912289.a n = A100549 (n + 1)

end A100549

/-! ## A100549.P1164787809360233988

`A006530(gcd(A181821(n+1), A211776(n+1)))`
-/

namespace A100549.P1164787809360233988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A181821 (n + 1)) (A211776 (n + 1)))

end

end A100549.P1164787809360233988

namespace A100549

/-- `A006530(gcd(A181821(n+1), A211776(n+1)))` -/
def P1164787809360233988.Spec : Prop :=
  ∀ n, P1164787809360233988.a n = A100549 (n + 1)

end A100549

/-! ## A100549.P5039363586942171463

`A006530(∏{e}[n+1, (#+1)!])`
-/

namespace A100549.P5039363586942171463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p + 1))

end

end A100549.P5039363586942171463

namespace A100549

/-- `A006530(∏{e}[n+1, (#+1)!])` -/
def P5039363586942171463.Spec : Prop :=
  ∀ n, P5039363586942171463.a n = A100549 (n + 1)

end A100549

/-! ## A100549.P2901181671991513802

`A006530(A067132(n+1)!)`
-/

namespace A100549.P2901181671991513802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A067132 (n + 1)).toNat)

end

end A100549.P2901181671991513802

namespace A100549

/-- `A006530(A067132(n+1)!)` -/
def P2901181671991513802.Spec : Prop :=
  ∀ n, P2901181671991513802.a n = A100549 (n + 1)

end A100549

/-! ## A100549.P3675689989355055777

`A006530(A322328(n+1)*A328854(n+1))`
-/

namespace A100549.P3675689989355055777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A322328 (n + 1) * A328854 (n + 1)).toNat

end

end A100549.P3675689989355055777

namespace A100549

/-- `A006530(A322328(n+1)*A328854(n+1))` -/
def P3675689989355055777.Spec : Prop :=
  ∀ n, P3675689989355055777.a n = A100549 (n + 1)

end A100549

/-! ## A100549.P7189436976111963470

`A006530(∏{d}[n+1, A006530(A000005(#))])`
-/

namespace A100549.P7189436976111963470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ d ∈ Nat.divisors (f1 n), A006530 (A000005 d).toNat).toNat

end

end A100549.P7189436976111963470

namespace A100549

/-- `A006530(∏{d}[n+1, A006530(A000005(#))])` -/
def P7189436976111963470.Spec : Prop :=
  ∀ n, P7189436976111963470.a n = A100549 (n + 1)

end A100549

/-! ## A100549.P2226095443919652458

`A105561(A293514(n+1))`
-/

namespace A100549.P2226095443919652458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105561 (A293514 (n + 1)).toNat

end

end A100549.P2226095443919652458

namespace A100549

/-- `A105561(A293514(n+1))` -/
def P2226095443919652458.Spec : Prop :=
  ∀ n, P2226095443919652458.a n = A100549 (n + 1)

end A100549

/-!
# A100550: a(n) = a(n-1) + 2*a(n-2) + 3*a(n-3), for n>3, otherwise a(n) = n.

The programs for A100550, the canonical program `A100550.P15786857945722358900` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100550 has offset 0).

The definition of A100550 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+3*a(n-3)` (program `A100550.P15786857945722358900`, by `A100550.P15786857945722358900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100550.P15786857945722358900

`a(n-1)+2*a(n-2)+3*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100550

/-- `a(n-1)+2*a(n-2)+3*a(n-3)` -/
def P15786857945722358900.Spec : Prop :=
  ∀ n, (P15786857945722358900.a n : ℤ) = A100550 n

theorem P15786857945722358900.correct : P15786857945722358900.Spec := by
  intro n
  simp only [A100550]

end A100550

/-! ## A100550.P1487457141159697719

`ogf((x+x^2)/(1-x-2x^2-3x^3))`
-/

namespace A100550.P1487457141159697719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -1, -2, -3] n

end

end A100550.P1487457141159697719

namespace A100550

/-- `ogf((x+x^2)/(1-x-2x^2-3x^3))` -/
def P1487457141159697719.Spec : Prop :=
  ∀ n, P1487457141159697719.a n = A100550 n

end A100550

/-! ## A100550.P11890799559600219491

`A262689(A263235(∑[n]))`
-/

namespace A100550.P11890799559600219491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A263235 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A100550.P11890799559600219491

namespace A100550

/-- `A262689(A263235(∑[n]))` -/
def P11890799559600219491.Spec : Prop :=
  ∀ n, P11890799559600219491.a n = A100550 n

end A100550

/-! ## A100550.P8366283390939374647

`A261104(n²*A339294(n+1))`
-/

namespace A100550.P8366283390939374647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 ((n ^ 2 : ℤ) * A339294 (n + 1)).toNat

end

end A100550.P8366283390939374647

namespace A100550

/-- `A261104(n²*A339294(n+1))` -/
def P8366283390939374647.Spec : Prop :=
  ∀ n, P8366283390939374647.a n = A100550 n

end A100550

/-!
# A100551: Coefficient list of ChebyshevU(n, 1-x).

The programs for A100551, the canonical program `A100551.P3949748254546549541` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100551 has offset 0).

The definition of A100551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100551.P3949748254546549541

`C(row(n)+col(n)+1, row(n)-col(n))*(-2)^col(n)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100551

/-- `C(row(n)+col(n)+1, row(n)-col(n))*(-2)^col(n)` -/
def P3949748254546549541.Spec : Prop :=
  ∀ n, P3949748254546549541.a n = A100551 n

theorem P3949748254546549541.correct : P3949748254546549541.Spec := by
  intro n
  simp only [A100551]

end A100551

/-! ## A100551.P14272865535871113949

`A078812(n)*A122803(A002262(n))`
-/

namespace A100551.P14272865535871113949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n * A122803 (A002262 n).toNat

end

end A100551.P14272865535871113949

namespace A100551

/-- `A078812(n)*A122803(A002262(n))` -/
def P14272865535871113949.Spec : Prop :=
  ∀ n, P14272865535871113949.a n = A100551 n

end A100551

/-! ## A100551.P2540048415133597903

`A078812(n)*A103316(A112367(n))`
-/

namespace A100551.P2540048415133597903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n * A103316 (A112367 n).toNat

end

end A100551.P2540048415133597903

namespace A100551

/-- `A078812(n)*A103316(A112367(n))` -/
def P2540048415133597903.Spec : Prop :=
  ∀ n, P2540048415133597903.a n = A100551 n

end A100551

/-! ## A100551.P12209342667254583499

`A078812(n)*A123344(A002260(n+1))`
-/

namespace A100551.P12209342667254583499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n * A123344 (A002260 (n + 1)).toNat

end

end A100551.P12209342667254583499

namespace A100551

/-- `A078812(n)*A123344(A002260(n+1))` -/
def P12209342667254583499.Spec : Prop :=
  ∀ n, P12209342667254583499.a n = A100551 n

end A100551

/-! ## A100551.P14761498542533960081

`A059268(n)*A066170(A185869(n+1))`
-/

namespace A100551.P14761498542533960081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A066170 (A185869 (n + 1)).toNat

end

end A100551.P14761498542533960081

namespace A100551

/-- `A059268(n)*A066170(A185869(n+1))` -/
def P14761498542533960081.Spec : Prop :=
  ∀ n, P14761498542533960081.a n = A100551 n

end A100551

/-! ## A100551.P9566532094782503515

`A000079(A002262(n))*A066170(A185869(n+1))`
-/

namespace A100551.P9566532094782503515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A066170 (A185869 (n + 1)).toNat

end

end A100551.P9566532094782503515

namespace A100551

/-- `A000079(A002262(n))*A066170(A185869(n+1))` -/
def P9566532094782503515.Spec : Prop :=
  ∀ n, P9566532094782503515.a n = A100551 n

end A100551

/-! ## A100551.P75671179013569657

`A013620(A112367(n))*A066170(A185869(n+1))`
-/

namespace A100551.P75671179013569657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A112367 n).toNat * A066170 (A185869 (n + 1)).toNat

end

end A100551.P75671179013569657

namespace A100551

/-- `A013620(A112367(n))*A066170(A185869(n+1))` -/
def P75671179013569657.Spec : Prop :=
  ∀ n, P75671179013569657.a n = A100551 n

end A100551

/-! ## A100551.P4337329927679338570

`A066170(A185869(n+1))*A130321(A061579(n))`
-/

namespace A100551.P4337329927679338570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 (A185869 (n + 1)).toNat * A130321 (A061579 n).toNat

end

end A100551.P4337329927679338570

namespace A100551

/-- `A066170(A185869(n+1))*A130321(A061579(n))` -/
def P4337329927679338570.Spec : Prop :=
  ∀ n, P4337329927679338570.a n = A100551 n

end A100551

/-! ## A100551.P11243314064554205732

`A011782(A002260(n+1))*A066170(A185869(n+1))`
-/

namespace A100551.P11243314064554205732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A066170 (A185869 (n + 1)).toNat

end

end A100551.P11243314064554205732

namespace A100551

/-- `A011782(A002260(n+1))*A066170(A185869(n+1))` -/
def P11243314064554205732.Spec : Prop :=
  ∀ n, P11243314064554205732.a n = A100551 n

end A100551

/-! ## A100551.P11179722459997484146

`A060546(2*A002262(n))*A066170(A185869(n+1))`
-/

namespace A100551.P11179722459997484146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * A002262 n).toNat * A066170 (A185869 (n + 1)).toNat

end

end A100551.P11179722459997484146

namespace A100551

/-- `A060546(2*A002262(n))*A066170(A185869(n+1))` -/
def P11179722459997484146.Spec : Prop :=
  ∀ n, P11179722459997484146.a n = A100551 n

end A100551

/-!
# A100552: Single-digit primes, followed recursively by 2k-digit primes obtained by concatenation of pairs of distinct k-digit primes of the sequence.

The programs for A100552, there is no canonical definition to state claims against.
-/

/-! ## A100552.P10576916229271079988

`A019546(C(lt[∏{p}[2*n, 2*n/#²], n], n))`
-/

namespace A100552.P10576916229271079988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 * n : ℚ) / (p ^ 2 : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (Nat.choose (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n) n)

end

end A100552.P10576916229271079988

/-! ## A100552.P15847256295001122806

`A019546(A010352(n+1))`
-/

namespace A100552.P15847256295001122806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (A010352 (n + 1)).toNat

end

end A100552.P15847256295001122806

/-! ## A100552.P12688042544794872790

`A104179(A342728(n)+1)`
-/

namespace A100552.P12688042544794872790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104179 (A342728 n + 1).toNat

end

end A100552.P12688042544794872790

/-! ## A100552.P17522950165662821633

`A019546(C(A209638(n), n))`
-/

namespace A100552.P17522950165662821633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (Nat.choose (A209638 n).toNat n)

end

end A100552.P17522950165662821633

/-! ## A100552.P1641724115316930391

`A019546(C(A018676(n+1), n))`
-/

namespace A100552.P1641724115316930391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (Nat.choose (A018676 (n + 1)).toNat n)

end

end A100552.P1641724115316930391

/-!
# A100555: Smallest square that is equal to the sum of n not-necessarily-distinct primes plus 1.

The programs for A100555, there is no canonical definition to state claims against.
-/

/-! ## A100555.P4944080843361929775

`ceil(sqrt(Δ[n²]))²`
-/

namespace A100555.P4944080843361929775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉ ^ 2

end

end A100555.P4944080843361929775

/-! ## A100555.P10534383297078979948

`ceil(record[sqrt(xor(1, n))])^2`
-/

namespace A100555.P10534383297078979948
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 1 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ ^ 2

end

end A100555.P10534383297078979948

/-! ## A100555.P4874818717770621064

`ceil(sqrt(or(1, n)+n))^2`
-/

namespace A100555.P4874818717770621064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.lor 1 n + n : ℝ)⌉ ^ 2

end

end A100555.P4874818717770621064

/-! ## A100555.P6346231777650353620

`(comp[∑[and(n, -2)]]-n)^2`
-/

namespace A100555.P6346231777650353620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) ^ 2

end

end A100555.P6346231777650353620

/-! ## A100555.P15009913864185692953

`ceil(sqrt(cos(1)+2*n))^2`
-/

namespace A100555.P15009913864185692953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.cos (1 : ℝ) + (2 * n : ℝ))⌉ ^ 2

end

end A100555.P15009913864185692953

/-! ## A100555.P11759210858019962110

`(floor(sqrt(comp[or(2, n)]))+1)^2`
-/

namespace A100555.P11759210858019962110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1) ^ 2

end

end A100555.P11759210858019962110

/-! ## A100555.P17330432038521209105

`ceil(sqrt(tan(7)+2*n))^2`
-/

namespace A100555.P17330432038521209105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.tan (7 : ℝ) + (2 * n : ℝ))⌉ ^ 2

end

end A100555.P17330432038521209105

/-! ## A100555.P11310957867872670438

`or(ceil(sqrt(2*n+1))², char[2])`
-/

namespace A100555.P11310957867872670438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (⌈Real.sqrt (2 * n + 1 : ℝ)⌉ ^ 2) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A100555.P11310957867872670438

/-!
# A100556: Composite numbers q such that 2^q + q is prime.

The programs for A100556, there is no canonical definition to state claims against.
-/

/-! ## A100556.P11020655243584729604

`A052007(comp[∑[A003415(2*n+1)]])`
-/

namespace A100556.P11020655243584729604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052007 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A100556.P11020655243584729604

/-! ## A100556.P12575643633946157172

`filter[A052007(n+1), A066247(#)]`
-/

namespace A100556.P12575643633946157172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A100556.P12575643633946157172

/-! ## A100556.P403512705535445465

`filter[A052007(n+1), A174898(#)]`
-/

namespace A100556.P403512705535445465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A100556.P403512705535445465

/-! ## A100556.P14994655596054741564

`filter[A052007(n+1), A202238(#)]`
-/

namespace A100556.P14994655596054741564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A100556.P14994655596054741564

/-! ## A100556.P4740436108025421990

`filter[A052007(n+1), A323162(#)]`
-/

namespace A100556.P4740436108025421990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A100556.P4740436108025421990

/-!
# A100557: Smallest prime of the form (prime(n)*prime(n+1)+q)/2 for some integer n and some prime q.

The programs for A100557, there is no canonical definition to state claims against.
-/

/-! ## A100557.P3525725530827411910

`A171561(A167499(n)+A111284(n+1))`
-/

namespace A100557.P3525725530827411910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (A167499 n + A111284 (n + 1)).toNat

end

end A100557.P3525725530827411910

/-! ## A100557.P13560066232727072613

`A224031(A329225(2*n+5))+A007590(3*(n+1))`
-/

namespace A100557.P13560066232727072613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224031 (A329225 (2 * n + 5)).toNat + A007590 (3 * (n + 1))

end

end A100557.P13560066232727072613

/-!
# A100558: Primes of the form [prime(n)*prime(n+1)+p]/2 with increasing p.

The programs for A100558, there is no canonical definition to state claims against.
-/

/-! ## A100558.P3268351446824578677

`A354748(2*(∑[n]+1))`
-/

namespace A100558.P3268351446824578677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354748 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A100558.P3268351446824578677

/-! ## A100558.P9303994971925529134

`A094897(∑[3*n]+2)`
-/

namespace A100558.P9303994971925529134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094897 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A100558.P9303994971925529134

/-! ## A100558.P4017901903164330696

`A006530(A001538(∑[n]))`
-/

namespace A100558.P4017901903164330696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001538 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A100558.P4017901903164330696

/-!
# A100559: Smallest prime equal to the sum of n distinct squares.

The programs for A100559, there is no canonical definition to state claims against.
-/

/-! ## A100559.P5880308885925931454

`∑{p}[A224498(n+2)², #]`
-/

namespace A100559.P5880308885925931454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224498 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A100559.P5880308885925931454

/-! ## A100559.P4398817762369358706

`A060653(A224498(n+2))`
-/

namespace A100559.P4398817762369358706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (A224498 (n + 2)).toNat

end

end A100559.P4398817762369358706

/-!
# A100560: Numerator of Sum_{k=0..[n/2]} 1/binomial(n,k).

The programs for A100560, there is no canonical definition to state claims against.
-/

/-! ## A100560.P12437104531000174124

`A025534(n)/A002944(n+1)*A100561(n)`
-/

namespace A100560.P12437104531000174124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025534 n : ℚ) / (A002944 (n + 1) : ℚ) * (A100561 n : ℚ)

end

end A100560.P12437104531000174124

/-! ## A100560.P2153810667132944063

`A024419(n)/gcd(A000142(n), A024419(n))`
-/

namespace A100560.P2153810667132944063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024419 n : ℚ) / (Int.gcd (A000142 n) (A024419 n) : ℚ)

end

end A100560.P2153810667132944063

/-! ## A100560.P13403667636717427412

`A024419(n)/A025527(n+1)*A100561(n)/A002944(n+1)`
-/

namespace A100560.P13403667636717427412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024419 n : ℚ) / (A025527 (n + 1) : ℚ) * ((A100561 n : ℚ) / (A002944 (n + 1) : ℚ))

end

end A100560.P13403667636717427412

/-! ## A100560.P2277357998580054884

`lcm(A024421(n)-A052849(n), n!)/n!`
-/

namespace A100560.P2277357998580054884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A024421 n - A052849 n) (Nat.factorial n : ℤ) : ℚ) / (Nat.factorial n : ℚ)

end

end A100560.P2277357998580054884

/-!
# A100561: Denominator of Sum_{k=0..[n/2]} 1/binomial(n,k).

The programs for A100561, there is no canonical definition to state claims against.
-/

/-! ## A100561.P2456464202445900795

`A002944(n+1)/A025534(n)*A100560(n)`
-/

namespace A100561.P2456464202445900795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A025534 n : ℚ) * (A100560 n : ℚ)

end

end A100561.P2456464202445900795

/-! ## A100561.P16079516476536696726

`A000142(n)/gcd(A000142(n), A024419(n))`
-/

namespace A100561.P16079516476536696726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A024419 n) : ℚ)

end

end A100561.P16079516476536696726

/-! ## A100561.P17633877789710591673

`lcm(A000142(n), A024421(n))/A024421(n)`
-/

namespace A100561.P17633877789710591673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000142 n) (A024421 n) : ℚ) / (A024421 n : ℚ)

end

end A100561.P17633877789710591673

/-! ## A100561.P1234460269296697366

`A002944(n+1)/A055642(A194496(n+1))`
-/

namespace A100561.P1234460269296697366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A055642 (A194496 (n + 1)).toNat : ℚ)

end

end A100561.P1234460269296697366

/-!
# A100562: Write down the numbers from 7 to infinity. Take next number, M say, that has not been crossed off and cross off all the numbers i*M - 1 for i >= 2. Repeat. The numbers that are left form the sequence.

The programs for A100562, there is no canonical definition to state claims against.
-/

/-! ## A100562.P10210934786981707228

`lt[A250120(n+1), A022295(A291041(n+1))]`
-/

namespace A100562.P10210934786981707228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022295 (A291041 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100562.P10210934786981707228

/-! ## A100562.P15983604760660499661

`lt[A020882(n+1), A022295(A291041(n+1))]`
-/

namespace A100562.P15983604760660499661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022295 (A291041 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100562.P15983604760660499661

/-! ## A100562.P1857260258834059228

`lt[A085267(n+1), A030130(A291041(n+1))]`
-/

namespace A100562.P1857260258834059228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (A291041 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100562.P1857260258834059228

/-! ## A100562.P11056176924063538999

`lt[A165336(2*n+1), A024431(A291041(n+1))]`
-/

namespace A100562.P11056176924063538999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165336 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024431 (A291041 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100562.P11056176924063538999

/-! ## A100562.P5614047089461944430

`lt[A324698(n+5), A022295(A291041(n+1))]`
-/

namespace A100562.P5614047089461944430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324698 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022295 (A291041 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100562.P5614047089461944430

/-!
# A100563: Number of bases less than sqrt(n) in which n is a palindrome.

The programs for A100563, there is no canonical definition to state claims against.
-/

/-! ## A100563.P7817310171836283184

`A135551(n+1)-A033831(n+1)`
-/

namespace A100563.P7817310171836283184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (n + 1) - A033831 (n + 1)

end

end A100563.P7817310171836283184

/-! ## A100563.P12057520603406763812

`A126071(n+1)-(A033831(n+1)+1)`
-/

namespace A100563.P12057520603406763812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (n + 1) - (A033831 (n + 1) + 1)

end

end A100563.P12057520603406763812

/-! ## A100563.P14509837076473846057

`A001633(A126071(n+1)-A033831(n+1))`
-/

namespace A100563.P14509837076473846057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001633 (A126071 (n + 1) - A033831 (n + 1)).toNat

end

end A100563.P14509837076473846057

/-! ## A100563.P5175782477932155905

`A002113(A126071(n+1)-A033831(n+1))`
-/

namespace A100563.P5175782477932155905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A126071 (n + 1) - A033831 (n + 1)).toNat

end

end A100563.P5175782477932155905

/-! ## A100563.P7680756367847273042

`A004871(A126071(n+1)-A033831(n+1))`
-/

namespace A100563.P7680756367847273042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004871 (A126071 (n + 1) - A033831 (n + 1)).toNat

end

end A100563.P7680756367847273042

/-! ## A100563.P6875517118687930420

`A004882(A126071(n+1)-A033831(n+1))`
-/

namespace A100563.P6875517118687930420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004882 (A126071 (n + 1) - A033831 (n + 1)).toNat

end

end A100563.P6875517118687930420

/-!
# A100564: Normal sequence of primes with a(1) = 3.

The programs for A100564, there is no canonical definition to state claims against.
-/

/-! ## A100564.P5067632863686987540

`p?[A227455(n+1)]`
-/

namespace A100564.P5067632863686987540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100564.P5067632863686987540

/-! ## A100564.P2718500493415995205

`record[p?[A227455(A324347(n))]]`
-/

namespace A100564.P2718500493415995205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100564.P2718500493415995205

/-! ## A100564.P10197798283450167315

`record[A006530(A227455(n+2))]`
-/

namespace A100564.P10197798283450167315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A227455 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100564.P10197798283450167315

/-! ## A100564.P5537226263815690580

`∩[A000040(n+1), A227455(n+1)]`
-/

namespace A100564.P5537226263815690580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P5537226263815690580

/-! ## A100564.P14004751053306249776

`∩[A040028(n+1), A227455(n+1)]`
-/

namespace A100564.P14004751053306249776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P14004751053306249776

/-! ## A100564.P10325468427658405285

`∩[A040036(n+1), A227455(n+1)]`
-/

namespace A100564.P10325468427658405285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P10325468427658405285

/-! ## A100564.P13146453306899463222

`∩[A040044(n+1), A227455(n+1)]`
-/

namespace A100564.P13146453306899463222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P13146453306899463222

/-! ## A100564.P17536697580906632473

`∩[A040046(n+1), A227455(n+1)]`
-/

namespace A100564.P17536697580906632473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P17536697580906632473

/-! ## A100564.P1266568819123744954

`∩[A040049(n+1), A227455(n+1)]`
-/

namespace A100564.P1266568819123744954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P1266568819123744954

/-! ## A100564.P16430563357407955710

`∩[A040054(n+1), A227455(n+1)]`
-/

namespace A100564.P16430563357407955710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P16430563357407955710

/-! ## A100564.P14045714808667660489

`∩[A040060(n+1), A227455(n+1)]`
-/

namespace A100564.P14045714808667660489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P14045714808667660489

/-! ## A100564.P17469792344996898407

`∩[A040062(n+1), A227455(n+1)]`
-/

namespace A100564.P17469792344996898407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P17469792344996898407

/-! ## A100564.P208692830913147616

`∩[A040065(n+1), A227455(n+1)]`
-/

namespace A100564.P208692830913147616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P208692830913147616

/-! ## A100564.P7141209090583998180

`∩[A040067(n+1), A227455(n+1)]`
-/

namespace A100564.P7141209090583998180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P7141209090583998180

/-! ## A100564.P9162157007024881170

`∩[A040078(n+1), A227455(n+1)]`
-/

namespace A100564.P9162157007024881170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P9162157007024881170

/-! ## A100564.P2143686155111947677

`∩[A040083(n+1), A227455(n+1)]`
-/

namespace A100564.P2143686155111947677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P2143686155111947677

/-! ## A100564.P16683332341994856313

`∩[A040085(n+1), A227455(n+1)]`
-/

namespace A100564.P16683332341994856313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P16683332341994856313

/-! ## A100564.P12522757221977442279

`∩[A040087(n+1), A227455(n+1)]`
-/

namespace A100564.P12522757221977442279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P12522757221977442279

/-! ## A100564.P7863357676544912530

`∩[A040089(n+1), A227455(n+1)]`
-/

namespace A100564.P7863357676544912530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P7863357676544912530

/-! ## A100564.P7533265933693627068

`∩[A040095(n+1), A227455(n+1)]`
-/

namespace A100564.P7533265933693627068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100564.P7533265933693627068

/-!
# A100565: a(n) = Card{(x,y,z) : x <= y <= z, x|n, y|n, z|n, gcd(x,y)=1, gcd(x,z)=1, gcd(y,z)=1}.

The programs for A100565, the canonical program `A100565.P10112205214680248188` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100565 has offset 1).

The definition of A100565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100565.P10112205214680248188

`(A000005((n+1)^3)+3*A000005(n+1)+2)/6`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100565

/-- `(A000005((n+1)^3)+3*A000005(n+1)+2)/6` -/
def P10112205214680248188.Spec : Prop :=
  ∀ n, P10112205214680248188.a n = (A100565 (n + 1) : ℚ)

end A100565

/-! ## A100565.P7025897185891135944

`A066620(n+1)+2^∑{e}[n+1, log2(#+1)]`
-/

namespace A100565.P7025897185891135944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066620 (n + 1) : ℝ) + (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ))

end

end A100565.P7025897185891135944

namespace A100565

/-- `A066620(n+1)+2^∑{e}[n+1, log2(#+1)]` -/
def P7025897185891135944.Spec : Prop :=
  ∀ n, P7025897185891135944.a n = (A100565 (n + 1) : ℝ)

end A100565

/-! ## A100565.P3845467801574896899

`A066620(n+1)+A000005(n+1)`
-/

namespace A100565.P3845467801574896899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066620 (n + 1) + A000005 (n + 1)

end

end A100565.P3845467801574896899

namespace A100565

/-- `A066620(n+1)+A000005(n+1)` -/
def P3845467801574896899.Spec : Prop :=
  ∀ n, P3845467801574896899.a n = A100565 (n + 1)

end A100565

/-! ## A100565.P14675558013176569240

`A015995(n+1)-A066620(n+1)`
-/

namespace A100565.P14675558013176569240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015995 (n + 1) - A066620 (n + 1)

end

end A100565.P14675558013176569240

namespace A100565

/-- `A015995(n+1)-A066620(n+1)` -/
def P14675558013176569240.Spec : Prop :=
  ∀ n, P14675558013176569240.a n = A100565 (n + 1)

end A100565

/-! ## A100565.P8939291366296096860

`A032741(n+1)+A066620(n+1)+1`
-/

namespace A100565.P8939291366296096860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (A066620 (n + 1) + 1)

end

end A100565.P8939291366296096860

namespace A100565

/-- `A032741(n+1)+A066620(n+1)+1` -/
def P8939291366296096860.Spec : Prop :=
  ∀ n, P8939291366296096860.a n = A100565 (n + 1)

end A100565

/-! ## A100565.P11472611910675134076

`(A015995(n+1)+A000005(n+1))/2`
-/

namespace A100565.P11472611910675134076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015995 (n + 1) + A000005 (n + 1) : ℚ) / 2

end

end A100565.P11472611910675134076

namespace A100565

/-- `(A015995(n+1)+A000005(n+1))/2` -/
def P11472611910675134076.Spec : Prop :=
  ∀ n, P11472611910675134076.a n = (A100565 (n + 1) : ℚ)

end A100565

/-! ## A100565.P11953186338888274406

`A110654(A015995(n+1)+A000005(n+1))`
-/

namespace A100565.P11953186338888274406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A015995 (n + 1) + A000005 (n + 1)).toNat

end

end A100565.P11953186338888274406

namespace A100565

/-- `A110654(A015995(n+1)+A000005(n+1))` -/
def P11953186338888274406.Spec : Prop :=
  ∀ n, P11953186338888274406.a n = A100565 (n + 1)

end A100565

/-! ## A100565.P17434326923220982179

`A006218(n+1)+A066620(n+1)-A006218(n)`
-/

namespace A100565.P17434326923220982179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (A066620 (n + 1) - A006218 n)

end

end A100565.P17434326923220982179

namespace A100565

/-- `A006218(n+1)+A066620(n+1)-A006218(n)` -/
def P17434326923220982179.Spec : Prop :=
  ∀ n, P17434326923220982179.a n = A100565 (n + 1)

end A100565

/-! ## A100565.P2810252478851119496

`A018892(n+1)+A066620(n+1)-A089233(n+1)`
-/

namespace A100565.P2810252478851119496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) + (A066620 (n + 1) - A089233 (n + 1))

end

end A100565.P2810252478851119496

namespace A100565

/-- `A018892(n+1)+A066620(n+1)-A089233(n+1)` -/
def P2810252478851119496.Spec : Prop :=
  ∀ n, P2810252478851119496.a n = A100565 (n + 1)

end A100565

/-! ## A100565.P12912872249718573909

`A001281(A225520(n+1)²)/A225520(n+1)`
-/

namespace A100565.P12912872249718573909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001281 (A225520 (n + 1) ^ 2).toNat : ℚ) / (A225520 (n + 1) : ℚ)

end

end A100565.P12912872249718573909

namespace A100565

/-- `A001281(A225520(n+1)²)/A225520(n+1)` -/
def P12912872249718573909.Spec : Prop :=
  ∀ n, P12912872249718573909.a n = (A100565 (n + 1) : ℚ)

end A100565

/-!
# A100566: 2*a(n) = prime(prime(n)) + prime(prime(2n)).

The programs for A100566, the canonical program `A100566.P9068379759931913626` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100566 has offset 2).

The definition of A100566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100566.P9068379759931913626

`(A006450(n+2)+A006450(2*(n+2)))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100566

/-- `(A006450(n+2)+A006450(2*(n+2)))/2` -/
def P9068379759931913626.Spec : Prop :=
  ∀ n, P9068379759931913626.a n = (A100566 (n + 2) : ℚ)

end A100566

/-! ## A100566.P12013916385963006797

`(A217622(n+2)+A006450(n+2))/2`
-/

namespace A100566.P12013916385963006797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217622 (n + 2) + A006450 (n + 2) : ℚ) / 2

end

end A100566.P12013916385963006797

namespace A100566

/-- `(A217622(n+2)+A006450(n+2))/2` -/
def P12013916385963006797.Spec : Prop :=
  ∀ n, P12013916385963006797.a n = (A100566 (n + 2) : ℚ)

end A100566

/-! ## A100566.P1486598395276571632

`A014682(A006450(2*(n+2))+A006450(n+2))`
-/

namespace A100566.P1486598395276571632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A006450 (2 * (n + 2)) + A006450 (n + 2)).toNat

end

end A100566.P1486598395276571632

namespace A100566

/-- `A014682(A006450(2*(n+2))+A006450(n+2))` -/
def P1486598395276571632.Spec : Prop :=
  ∀ n, P1486598395276571632.a n = A100566 (n + 2)

end A100566

/-! ## A100566.P16428106091400391758

`A004525(A006450(2*(n+2))+A006450(n+2))`
-/

namespace A100566.P16428106091400391758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A006450 (2 * (n + 2)) + A006450 (n + 2)).toNat

end

end A100566.P16428106091400391758

namespace A100566

/-- `A004525(A006450(2*(n+2))+A006450(n+2))` -/
def P16428106091400391758.Spec : Prop :=
  ∀ n, P16428106091400391758.a n = A100566 (n + 2)

end A100566

/-! ## A100566.P12603635941123986848

`A025480(A006450(2*(n+2))+A006450(n+2))`
-/

namespace A100566.P12603635941123986848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A006450 (2 * (n + 2)) + A006450 (n + 2)).toNat

end

end A100566.P12603635941123986848

namespace A100566

/-- `A025480(A006450(2*(n+2))+A006450(n+2))` -/
def P12603635941123986848.Spec : Prop :=
  ∀ n, P12603635941123986848.a n = A100566 (n + 2)

end A100566

/-! ## A100566.P2624022618321491062

`A026741(A006450(2*(n+2))+A006450(n+2))`
-/

namespace A100566.P2624022618321491062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A006450 (2 * (n + 2)) + A006450 (n + 2)).toNat

end

end A100566.P2624022618321491062

namespace A100566

/-- `A026741(A006450(2*(n+2))+A006450(n+2))` -/
def P2624022618321491062.Spec : Prop :=
  ∀ n, P2624022618321491062.a n = A100566 (n + 2)

end A100566

/-!
# A100567: Prime-indexed primes as n runs through the integers congruent to 0 or 1 mod 3.

The programs for A100567, the canonical program `A100567.P7524990123290842635` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100567 has offset 1).

The definition of A100567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100567.P7524990123290842635

`A006450(A032766(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100567

/-- `A006450(A032766(n+1))` -/
def P7524990123290842635.Spec : Prop :=
  ∀ n, P7524990123290842635.a n = A100567 (n + 1)

theorem P7524990123290842635.correct : P7524990123290842635.Spec := by
  intro n
  simp only [A100567, Nat.add_sub_cancel]

end A100567

/-! ## A100567.P10372355797948485653

`A006450(ceil(3*n/2)+1)`
-/

namespace A100567.P10372355797948485653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (⌈3 * ((n : ℚ) / 2)⌉ + 1).toNat

end

end A100567.P10372355797948485653

namespace A100567

/-- `A006450(ceil(3*n/2)+1)` -/
def P10372355797948485653.Spec : Prop :=
  ∀ n, P10372355797948485653.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P13995082817061057028

`A175247(A001651(n+2))`
-/

namespace A100567.P13995082817061057028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (A001651 (n + 2)).toNat

end

end A100567.P13995082817061057028

namespace A100567

/-- `A175247(A001651(n+2))` -/
def P13995082817061057028.Spec : Prop :=
  ∀ n, P13995082817061057028.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P8842673160327781302

`A006450(A008619(3*n+1))%A024450(n+1)`
-/

namespace A100567.P8842673160327781302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (A008619 (3 * n + 1)).toNat) (A024450 (n + 1))

end

end A100567.P8842673160327781302

namespace A100567

/-- `A006450(A008619(3*n+1))%A024450(n+1)` -/
def P8842673160327781302.Spec : Prop :=
  ∀ n, P8842673160327781302.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P16000158778465632970

`or(1, A006450(A004526(3*(n+1))))`
-/

namespace A100567.P16000158778465632970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006450 (A004526 (3 * (n + 1))).toNat)

end

end A100567.P16000158778465632970

namespace A100567

/-- `or(1, A006450(A004526(3*(n+1))))` -/
def P16000158778465632970.Spec : Prop :=
  ∀ n, P16000158778465632970.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P12410465075917116245

`A006450(A004526(3*(n+1)))+A000007(2*(n+2))`
-/

namespace A100567.P12410465075917116245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A004526 (3 * (n + 1))).toNat + A000007 (2 * (n + 2))

end

end A100567.P12410465075917116245

namespace A100567

/-- `A006450(A004526(3*(n+1)))+A000007(2*(n+2))` -/
def P12410465075917116245.Spec : Prop :=
  ∀ n, P12410465075917116245.a n = A100567 (n + 1)

theorem P12410465075917116245.correct : P12410465075917116245.Spec := by
  intro n
  simp only [A100567, Nat.add_sub_cancel, A100567.P12410465075917116245.a, A100567.P7524990123290842635.a, A000007, A000007.P6599383543502402472.a, A004526, A004526.P10084182425416171735.a, A006450, A006450.P16445646407241112379.a, A032766, A032766.P1975864606945388751.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100567

/-! ## A100567.P16584987830629402538

`A007814(2*n+5)+A006450(A004526(3*(n+1)))`
-/

namespace A100567.P16584987830629402538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 5) + A006450 (A004526 (3 * (n + 1))).toNat

end

end A100567.P16584987830629402538

namespace A100567

/-- `A007814(2*n+5)+A006450(A004526(3*(n+1)))` -/
def P16584987830629402538.Spec : Prop :=
  ∀ n, P16584987830629402538.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P10980067144112037149

`A006450(A008619(3*n+1))*A131736(3*n+2)`
-/

namespace A100567.P10980067144112037149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A008619 (3 * n + 1)).toNat * A131736 (3 * n + 2)

end

end A100567.P10980067144112037149

namespace A100567

/-- `A006450(A008619(3*n+1))*A131736(3*n+2)` -/
def P10980067144112037149.Spec : Prop :=
  ∀ n, P10980067144112037149.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P5393441121097464846

`A000040(A162753(3*(n+1)))`
-/

namespace A100567.P5393441121097464846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A162753 (3 * (n + 1))).toNat

end

end A100567.P5393441121097464846

namespace A100567

/-- `A000040(A162753(3*(n+1)))` -/
def P5393441121097464846.Spec : Prop :=
  ∀ n, P5393441121097464846.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P9548478189363011690

`A000040(p?[A008578(comp[3*n])])`
-/

namespace A100567.P9548478189363011690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100567.P9548478189363011690

namespace A100567

/-- `A000040(p?[A008578(comp[3*n])])` -/
def P9548478189363011690.Spec : Prop :=
  ∀ n, P9548478189363011690.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P17125984169269327675

`A000040(A000040(∑[n%2+1]))`
-/

namespace A100567.P17125984169269327675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A100567.P17125984169269327675

namespace A100567

/-- `A000040(A000040(∑[n%2+1]))` -/
def P17125984169269327675.Spec : Prop :=
  ∀ n, P17125984169269327675.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P6394523415539319765

`A000040(A000040(∑[gcd(2, n+1)]))`
-/

namespace A100567.P6394523415539319765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A100567.P6394523415539319765

namespace A100567

/-- `A000040(A000040(∑[gcd(2, n+1)]))` -/
def P6394523415539319765.Spec : Prop :=
  ∀ n, P6394523415539319765.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P9065923283009613621

`A000040(A000040(∑[and(1, n)+1]))`
-/

namespace A100567.P9065923283009613621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A100567.P9065923283009613621

namespace A100567

/-- `A000040(A000040(∑[and(1, n)+1]))` -/
def P9065923283009613621.Spec : Prop :=
  ∀ n, P9065923283009613621.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P11969729384401953229

`A000040(A000040(∑[2^and(1, n)]))`
-/

namespace A100567.P11969729384401953229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A100567.P11969729384401953229

namespace A100567

/-- `A000040(A000040(∑[2^and(1, n)]))` -/
def P11969729384401953229.Spec : Prop :=
  ∀ n, P11969729384401953229.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P6030877663033499526

`A000040(A109763(2*n+n+2))`
-/

namespace A100567.P6030877663033499526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A109763 (2 * n + (n + 2))).toNat

end

end A100567.P6030877663033499526

namespace A100567

/-- `A000040(A109763(2*n+n+2))` -/
def P6030877663033499526.Spec : Prop :=
  ∀ n, P6030877663033499526.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P5178507683363359158

`A000040(p?[comp[A158611(3*n+1)]])`
-/

namespace A100567.P5178507683363359158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (3 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A100567.P5178507683363359158

namespace A100567

/-- `A000040(p?[comp[A158611(3*n+1)]])` -/
def P5178507683363359158.Spec : Prop :=
  ∀ n, P5178507683363359158.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P11737209273188705703

`A000040(A000040(floor(3*(n+1)/2)))`
-/

namespace A100567.P11737209273188705703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 ⌊3 * ((n + 1 : ℚ) / 2)⌋.toNat).toNat

end

end A100567.P11737209273188705703

namespace A100567

/-- `A000040(A000040(floor(3*(n+1)/2)))` -/
def P11737209273188705703.Spec : Prop :=
  ∀ n, P11737209273188705703.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P8436089772640845774

`A008578(A008864(∑[2/a(n-1)]))` with `a(0)=1`
-/

namespace A100567.P8436089772640845774
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A008864 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A100567.P8436089772640845774

namespace A100567

/-- `A008578(A008864(∑[2/a(n-1)]))` -/
def P8436089772640845774.Spec : Prop :=
  ∀ n, P8436089772640845774.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P3196159108794191628

`A008578(A000040(comp[3*n+1]+1)+1)`
-/

namespace A100567.P3196159108794191628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1).toNat

end

end A100567.P3196159108794191628

namespace A100567

/-- `A008578(A000040(comp[3*n+1]+1)+1)` -/
def P3196159108794191628.Spec : Prop :=
  ∀ n, P3196159108794191628.a n = A100567 (n + 1)

end A100567

/-! ## A100567.P2294159784315766591

`A000040(p?[comp[A207790(3*n+1)]])`
-/

namespace A100567.P2294159784315766591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (3 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A100567.P2294159784315766591

namespace A100567

/-- `A000040(p?[comp[A207790(3*n+1)]])` -/
def P2294159784315766591.Spec : Prop :=
  ∀ n, P2294159784315766591.a n = A100567 (n + 1)

end A100567

/-!
# A100568: Number of compositions of n(n^2+1)/2 into n distinct parts each no more than n^2.

The programs for A100568, there is no canonical definition to state claims against.
-/

/-! ## A100568.P10305874152558118199

`n!*A052456(n)`
-/

namespace A100568.P10305874152558118199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052456 n

end

end A100568.P10305874152558118199

/-! ## A100568.P13230921175869239115

`A000142(n)*A052456(n)`
-/

namespace A100568.P13230921175869239115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052456 n

end

end A100568.P13230921175869239115

/-! ## A100568.P13274201992428126251

`∏[A028310(n)]*A052456(n)`
-/

namespace A100568.P13274201992428126251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052456 n

end

end A100568.P13274201992428126251

/-! ## A100568.P1594640395313628891

`n!*A204459(A046092(n))`
-/

namespace A100568.P1594640395313628891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A204459 (A046092 n).toNat

end

end A100568.P1594640395313628891

/-! ## A100568.P8271784197813238890

`A000142(n)*A204459(A046092(n))`
-/

namespace A100568.P8271784197813238890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A204459 (A046092 n).toNat

end

end A100568.P8271784197813238890

/-!
# A100569: Number of labeled n-node oriented graphs without endpoints.

The programs for A100569, there is no canonical definition to state claims against.
-/

/-! ## A100569.P15570619665252748748

`A105774(∏[n!])`
-/

namespace A100569.P15570619665252748748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A100569.P15570619665252748748

/-!
# A100570: Numbers that are not the sum of a square and a semiprime.

The programs for A100570, there is no canonical definition to state claims against.
-/

/-! ## A100570.P3552676103800279805

`eq[2, A241922(n+1)]+1`
-/

namespace A100570.P3552676103800279805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241922 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100570.P3552676103800279805

/-!
# A100571: Cubes m^3 such that m^3 is the sum of m-1 consecutive primes plus a larger prime.

The programs for A100571, there is no canonical definition to state claims against.
-/

/-! ## A100571.P4816050810634482785

`comp[xor(1, C(n, 8))]^3`
-/

namespace A100571.P4816050810634482785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.choose n 8)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 3

end

end A100571.P4816050810634482785

/-! ## A100571.P15117568125485389127

`comp[n²*n!]^3`
-/

namespace A100571.P15117568125485389127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * Nat.factorial n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 3

end

end A100571.P15117568125485389127

/-! ## A100571.P4449097643735250192

`comp[ceil(n^4/2)]^3`
-/

namespace A100571.P4449097643735250192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 4 : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A100571.P4449097643735250192

/-! ## A100571.P3133361231787896843

`abs((-A102352(n+1))^3)`
-/

namespace A100571.P3133361231787896843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A102352 (n + 1)) ^ 3|

end

end A100571.P3133361231787896843

/-! ## A100571.P16606521196589492639

`A000578(A102352(n+1))`
-/

namespace A100571.P16606521196589492639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A102352 (n + 1)).toNat

end

end A100571.P16606521196589492639

/-!
# A100572: Largest prime p such that the sum of n consecutive primes plus p is equal to (n+1)^3.

The programs for A100572, there is no canonical definition to state claims against.
-/

/-! ## A100572.P3150501901512463306

`A343775(A089055(n))`
-/

namespace A100572.P3150501901512463306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343775 (A089055 n).toNat

end

end A100572.P3150501901512463306

/-! ## A100572.P15615396641347823685

`A154727(A090034(n)*A302161(n+1))`
-/

namespace A100572.P15615396641347823685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154727 (A090034 n * A302161 (n + 1)).toNat

end

end A100572.P15615396641347823685

/-!
# A100573: Smallest difference between distinct prime divisors of n, or 0 if n is a prime power.

The programs for A100573, the canonical program `A100573.P2408409470225235997` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100573 has offset 1).

The definition of A100573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3717 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100573.P2408409470225235997

`A297173(A318885(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A100573

/-- `A297173(A318885(n+1))` -/
def P2408409470225235997.Spec : Prop :=
  ∀ n, P2408409470225235997.a n = A100573 (n + 1)

theorem P2408409470225235997.correct : P2408409470225235997.Spec := by
  intro n
  simp only [A100573, Nat.add_sub_cancel]

end A100573

/-! ## A100573.P15000061861638553679

`A297173(∏{p}[n+1, A008578(#)])`
-/

namespace A100573.P15000061861638553679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (∏ p ∈ Nat.primeFactors (f1 n), A008578 p).toNat

end

end A100573.P15000061861638553679

namespace A100573

/-- `A297173(∏{p}[n+1, A008578(#)])` -/
def P15000061861638553679.Spec : Prop :=
  ∀ n, P15000061861638553679.a n = A100573 (n + 1)

end A100573

/-! ## A100573.P13024271298236551307

`A297173(A290641(n+1))`
-/

namespace A100573.P13024271298236551307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A290641 (n + 1)).toNat

end

end A100573.P13024271298236551307

namespace A100573

/-- `A297173(A290641(n+1))` -/
def P13024271298236551307.Spec : Prop :=
  ∀ n, P13024271298236551307.a n = A100573 (n + 1)

end A100573

/-! ## A100573.P16938684337886370416

`A297173(A328878(n+1))`
-/

namespace A100573.P16938684337886370416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A328878 (n + 1)).toNat

end

end A100573.P16938684337886370416

namespace A100573

/-- `A297173(A328878(n+1))` -/
def P16938684337886370416.Spec : Prop :=
  ∀ n, P16938684337886370416.a n = A100573 (n + 1)

end A100573

/-! ## A100573.P714410633848187075

`A297173(∏{p}[n+1, A000040(#)])`
-/

namespace A100573.P714410633848187075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (∏ p ∈ Nat.primeFactors (f1 n), A000040 p).toNat

end

end A100573.P714410633848187075

namespace A100573

/-- `A297173(∏{p}[n+1, A000040(#)])` -/
def P714410633848187075.Spec : Prop :=
  ∀ n, P714410633848187075.a n = A100573 (n + 1)

end A100573

/-! ## A100573.P7661618227039158837

`A297173(A064988(n+1))`
-/

namespace A100573.P7661618227039158837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A064988 (n + 1)).toNat

end

end A100573.P7661618227039158837

namespace A100573

/-- `A297173(A064988(n+1))` -/
def P7661618227039158837.Spec : Prop :=
  ∀ n, P7661618227039158837.a n = A100573 (n + 1)

end A100573

/-! ## A100573.P4970385598615619348

`A297173(A064554(n+1)²)`
-/

namespace A100573.P4970385598615619348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A064554 (n + 1) ^ 2).toNat

end

end A100573.P4970385598615619348

namespace A100573

/-- `A297173(A064554(n+1)²)` -/
def P4970385598615619348.Spec : Prop :=
  ∀ n, P4970385598615619348.a n = A100573 (n + 1)

end A100573

/-!
# A100574: If n = product{p|n, p=prime} p^b(p,n), where each b(p,n) is a positive integer and the product is over distinct prime divisors of n, a(n) = difference between the maximum p^b(p,n) and minimum p^b(p,n).

The programs for A100574, there is no canonical definition to state claims against.
-/

/-! ## A100574.P9348213063722036909

`A034699(n+1)-A034684(n+1)`
-/

namespace A100574.P9348213063722036909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) - A034684 (n + 1)

end

end A100574.P9348213063722036909

/-! ## A100574.P10400327972700189475

`gcd(A027620(n), A139082(n+1))-A034684(n+1)`
-/

namespace A100574.P10400327972700189475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A027620 n) (A139082 (n + 1)) : ℤ) - A034684 (n + 1)

end

end A100574.P10400327972700189475

/-! ## A100574.P3300376021994691147

`A028233(n-A081805(n+1)+1)-A034684(n+1)`
-/

namespace A100574.P3300376021994691147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 ((n : ℤ) - A081805 (n + 1) + 1).toNat - A034684 (n + 1)

end

end A100574.P3300376021994691147

/-! ## A100574.P14121620414151728525

`A034684(n-A081805(n+1)+1)-A034684(n+1)`
-/

namespace A100574.P14121620414151728525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 ((n : ℤ) - A081805 (n + 1) + 1).toNat - A034684 (n + 1)

end

end A100574.P14121620414151728525

/-! ## A100574.P15925069648463127843

`A304233(n+1)/A034684(n+1)-A034684(n+1)`
-/

namespace A100574.P15925069648463127843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304233 (n + 1) : ℚ) / (A034684 (n + 1) : ℚ) - (A034684 (n + 1) : ℚ)

end

end A100574.P15925069648463127843

/-! ## A100574.P16592279453121229715

`A034699(n+1)-A304233(n+1)/A034699(n+1)`
-/

namespace A100574.P16592279453121229715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034699 (n + 1) : ℚ) - (A304233 (n + 1) : ℚ) / (A034699 (n + 1) : ℚ)

end

end A100574.P16592279453121229715

/-! ## A100574.P12133010782393370681

`A088387(n+1)^A088388(n+1)-A034684(n+1)`
-/

namespace A100574.P12133010782393370681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088387 (n + 1) : ℚ) ^ (A088388 (n + 1) : ℤ) - (A034684 (n + 1) : ℚ)

end

end A100574.P12133010782393370681

/-! ## A100574.P13194213459156400702

`A210208(A210241(n+1))-A034684(n+1)`
-/

namespace A100574.P13194213459156400702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (A210241 (n + 1)).toNat - A034684 (n + 1)

end

end A100574.P13194213459156400702

/-! ## A100574.P5953858330640166519

`A210208(∑[A073093(n+1)])-A034684(n+1)`
-/

namespace A100574.P5953858330640166519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210208 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A034684 (n + 1)

end

end A100574.P5953858330640166519

/-! ## A100574.P6444070344264380889

`A081472(n+1)-(A034684(n+1)+n+1)`
-/

namespace A100574.P6444070344264380889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081472 (n + 1) - (A034684 (n + 1) + (n + 1 : ℤ))

end

end A100574.P6444070344264380889

/-! ## A100574.P2233938789484605407

`A354933(A304233(n+1))-A034684(A304233(n+1))`
-/

namespace A100574.P2233938789484605407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (A304233 (n + 1)).toNat - A034684 (A304233 (n + 1)).toNat

end

end A100574.P2233938789484605407

/-!
# A100575: Half the number of permutations of 0..n with exactly two maxima.

The programs for A100575, the canonical program `A100575.P18093860325147550231` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100575 has offset 0).

The definition of A100575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100575.P18093860325147550231

`2^(n-2)*(2^n-(n+1))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100575

/-- `2^(n-2)*(2^n-(n+1))` -/
def P18093860325147550231.Spec : Prop :=
  ∀ n, P18093860325147550231.a n = (A100575 n : ℚ)

end A100575

/-! ## A100575.P15604839224116843479

`A000295(n)/2^(2-n)`
-/

namespace A100575.P15604839224116843479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000295 n : ℚ) / (2 : ℚ) ^ (2 - (n : ℤ) : ℤ)

end

end A100575.P15604839224116843479

namespace A100575

/-- `A000295(n)/2^(2-n)` -/
def P15604839224116843479.Spec : Prop :=
  ∀ n, P15604839224116843479.a n = (A100575 n : ℚ)

end A100575

/-! ## A100575.P7589398107735325871

`A154223(2*n)-A154222(n)`
-/

namespace A100575.P7589398107735325871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154223 (2 * n) - A154222 n

end

end A100575.P7589398107735325871

namespace A100575

/-- `A154223(2*n)-A154222(n)` -/
def P7589398107735325871.Spec : Prop :=
  ∀ n, P7589398107735325871.a n = A100575 n

end A100575

/-! ## A100575.P13080656303827773378

`A011782(n)*A094373(n)-A045623(n)`
-/

namespace A100575.P13080656303827773378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A094373 n - A045623 n

end

end A100575.P13080656303827773378

namespace A100575

/-- `A011782(n)*A094373(n)-A045623(n)` -/
def P13080656303827773378.Spec : Prop :=
  ∀ n, P13080656303827773378.a n = A100575 n

end A100575

/-! ## A100575.P173274901164099334

`A123166(n)+A154222(n)-A154222(n+1)`
-/

namespace A100575.P173274901164099334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123166 n + (A154222 n - A154222 (n + 1))

end

end A100575.P173274901164099334

namespace A100575

/-- `A123166(n)+A154222(n)-A154222(n+1)` -/
def P173274901164099334.Spec : Prop :=
  ∀ n, P173274901164099334.a n = A100575 n

end A100575

/-! ## A100575.P442523400049831018

`A000431(n+1)/2`
-/

namespace A100575.P442523400049831018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000431 (n + 1) : ℚ) / 2

end

end A100575.P442523400049831018

namespace A100575

/-- `A000431(n+1)/2` -/
def P442523400049831018.Spec : Prop :=
  ∀ n, P442523400049831018.a n = (A100575 n : ℚ)

end A100575

/-! ## A100575.P17613495515221709664

`A000302(n)-A087438(n)`
-/

namespace A100575.P17613495515221709664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A087438 n

end

end A100575.P17613495515221709664

namespace A100575

/-- `A000302(n)-A087438(n)` -/
def P17613495515221709664.Spec : Prop :=
  ∀ n, P17613495515221709664.a n = A100575 n

end A100575

/-! ## A100575.P16172245714783832707

`A155543(n)%A087438(n)`
-/

namespace A100575.P16172245714783832707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155543 n) (A087438 n)

end

end A100575.P16172245714783832707

namespace A100575

/-- `A155543(n)%A087438(n)` -/
def P16172245714783832707.Spec : Prop :=
  ∀ n, P16172245714783832707.a n = A100575 n

end A100575

/-! ## A100575.P14451047994450967672

`A002001(n)-A346317(n+2)`
-/

namespace A100575.P14451047994450967672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n - A346317 (n + 2)

end

end A100575.P14451047994450967672

namespace A100575

/-- `A002001(n)-A346317(n+2)` -/
def P14451047994450967672.Spec : Prop :=
  ∀ n, P14451047994450967672.a n = A100575 n

end A100575

/-!
# A100576: Smallest difference between distinct prime divisors of the n-th non-prime-power.

The programs for A100576, the canonical program `A100576.P14722533203068367608` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100576 has offset 1).

The definition of A100576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100576.P14722533203068367608

`A100573(A024619(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A100576

/-- `A100573(A024619(n+1))` -/
def P14722533203068367608.Spec : Prop :=
  ∀ n, P14722533203068367608.a n = A100576 (n + 1)

theorem P14722533203068367608.correct : P14722533203068367608.Spec := by
  intro n
  simp only [A100576, Nat.add_sub_cancel]

end A100576

/-! ## A100576.P10270320302665858163

`A100573(A084365(n+1))`
-/

namespace A100576.P10270320302665858163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100573 (A084365 (n + 1)).toNat

end

end A100576.P10270320302665858163

namespace A100576

/-- `A100573(A084365(n+1))` -/
def P10270320302665858163.Spec : Prop :=
  ∀ n, P10270320302665858163.a n = A100576 (n + 1)

end A100576

/-! ## A100576.P9585556256680852823

`A100573(A360529(n+1))`
-/

namespace A100576.P9585556256680852823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100573 (A360529 (n + 1)).toNat

end

end A100576.P9585556256680852823

namespace A100576

/-- `A100573(A360529(n+1))` -/
def P9585556256680852823.Spec : Prop :=
  ∀ n, P9585556256680852823.a n = A100576 (n + 1)

end A100576

/-! ## A100576.P8061120730301046579

`A100573(A361102(n+2))`
-/

namespace A100576.P8061120730301046579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100573 (A361102 (n + 2)).toNat

end

end A100576.P8061120730301046579

namespace A100576

/-- `A100573(A361102(n+2))` -/
def P8061120730301046579.Spec : Prop :=
  ∀ n, P8061120730301046579.a n = A100576 (n + 1)

end A100576

/-! ## A100576.P17901372817974733339

`A100573(A080765(n+1)+1)`
-/

namespace A100576.P17901372817974733339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100573 (A080765 (n + 1) + 1).toNat

end

end A100576.P17901372817974733339

namespace A100576

/-- `A100573(A080765(n+1)+1)` -/
def P17901372817974733339.Spec : Prop :=
  ∀ n, P17901372817974733339.a n = A100576 (n + 1)

end A100576

/-! ## A100576.P16346223923691304990

`A297173(∏{p}[A024619(n+1), A000040(#)])`
-/

namespace A100576.P16346223923691304990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p).toNat

end

end A100576.P16346223923691304990

namespace A100576

/-- `A297173(∏{p}[A024619(n+1), A000040(#)])` -/
def P16346223923691304990.Spec : Prop :=
  ∀ n, P16346223923691304990.a n = A100576 (n + 1)

end A100576

/-! ## A100576.P5969728599724540603

`A297173(∏{p}[A084365(n+1), A000040(#)])`
-/

namespace A100576.P5969728599724540603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p).toNat

end

end A100576.P5969728599724540603

namespace A100576

/-- `A297173(∏{p}[A084365(n+1), A000040(#)])` -/
def P5969728599724540603.Spec : Prop :=
  ∀ n, P5969728599724540603.a n = A100576 (n + 1)

end A100576

/-!
# A100577: Number of sets of divisors of n with an odd sum.

The programs for A100577, the canonical program `A100577.P14492990794952470121` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100577 has offset 1).

The definition of A100577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100577.P14492990794952470121

`2^(A000005(n+1)-1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100577

/-- `2^(A000005(n+1)-1)` -/
def P14492990794952470121.Spec : Prop :=
  ∀ n, P14492990794952470121.a n = (A100577 (n + 1) : ℚ)

end A100577

/-! ## A100577.P4205492571807540048

`∏{d}[n+1, ceil(atan(#))]`
-/

namespace A100577.P4205492571807540048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ⌈Real.arctan (d : ℝ)⌉

end

end A100577.P4205492571807540048

namespace A100577

/-- `∏{d}[n+1, ceil(atan(#))]` -/
def P4205492571807540048.Spec : Prop :=
  ∀ n, P4205492571807540048.a n = A100577 (n + 1)

end A100577

/-! ## A100577.P15645666999845389160

`∏{d}[n+1, 2-floor(1/#)]`
-/

namespace A100577.P15645666999845389160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (2 - ⌊1 / (d : ℚ)⌋)

end

end A100577.P15645666999845389160

namespace A100577

/-- `∏{d}[n+1, 2-floor(1/#)]` -/
def P15645666999845389160.Spec : Prop :=
  ∀ n, P15645666999845389160.a n = A100577 (n + 1)

end A100577

/-! ## A100577.P9223202031374365232

`2^∑{d}[n+1, n²%#]`
-/

namespace A100577.P9223202031374365232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d)

end

end A100577.P9223202031374365232

namespace A100577

/-- `2^∑{d}[n+1, n²%#]` -/
def P9223202031374365232.Spec : Prop :=
  ∀ n, (P9223202031374365232.a n : ℤ) = A100577 (n + 1)

end A100577

/-! ## A100577.P2127234419633439969

`2^(∏{e}[n+1, #+1]-1)`
-/

namespace A100577.P2127234419633439969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1 : ℤ)

end

end A100577.P2127234419633439969

namespace A100577

/-- `2^(∏{e}[n+1, #+1]-1)` -/
def P2127234419633439969.Spec : Prop :=
  ∀ n, P2127234419633439969.a n = (A100577 (n + 1) : ℚ)

end A100577

/-! ## A100577.P12066130202568779056

`A338506(n+1)/2`
-/

namespace A100577.P12066130202568779056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338506 (n + 1) : ℚ) / 2

end

end A100577.P12066130202568779056

namespace A100577

/-- `A338506(n+1)/2` -/
def P12066130202568779056.Spec : Prop :=
  ∀ n, P12066130202568779056.a n = (A100577 (n + 1) : ℚ)

end A100577

/-! ## A100577.P11110786583624233182

`2^A032741(n+1)`
-/

namespace A100577.P11110786583624233182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A032741 (n + 1) : ℤ)

end

end A100577.P11110786583624233182

namespace A100577

/-- `2^A032741(n+1)` -/
def P11110786583624233182.Spec : Prop :=
  ∀ n, P11110786583624233182.a n = (A100577 (n + 1) : ℚ)

end A100577

/-! ## A100577.P13555403610651325912

`∑{d}[n+1, A069626(#)]`
-/

namespace A100577.P13555403610651325912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069626 d

end

end A100577.P13555403610651325912

namespace A100577

/-- `∑{d}[n+1, A069626(#)]` -/
def P13555403610651325912.Spec : Prop :=
  ∀ n, P13555403610651325912.a n = A100577 (n + 1)

end A100577

/-! ## A100577.P10465584910264249957

`round(A100587(n+1)/2)`
-/

namespace A100577.P10465584910264249957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A100587 (n + 1) : ℚ) / 2)

end

end A100577.P10465584910264249957

namespace A100577

/-- `round(A100587(n+1)/2)` -/
def P10465584910264249957.Spec : Prop :=
  ∀ n, P10465584910264249957.a n = A100577 (n + 1)

end A100577

/-! ## A100577.P6228452568040504123

`2^(1-A378216(n+1))`
-/

namespace A100577.P6228452568040504123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 - A378216 (n + 1) : ℤ)

end

end A100577.P6228452568040504123

namespace A100577

/-- `2^(1-A378216(n+1))` -/
def P6228452568040504123.Spec : Prop :=
  ∀ n, P6228452568040504123.a n = (A100577 (n + 1) : ℚ)

end A100577

/-! ## A100577.P5224395301024627661

`2^(A334954(n+1)-2)`
-/

namespace A100577.P5224395301024627661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A334954 (n + 1) - 2 : ℤ)

end

end A100577.P5224395301024627661

namespace A100577

/-- `2^(A334954(n+1)-2)` -/
def P5224395301024627661.Spec : Prop :=
  ∀ n, P5224395301024627661.a n = (A100577 (n + 1) : ℚ)

end A100577

/-! ## A100577.P8435228336912994470

`2^A338117(2*(n+1))`
-/

namespace A100577.P8435228336912994470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A338117 (2 * (n + 1)) : ℤ)

end

end A100577.P8435228336912994470

namespace A100577

/-- `2^A338117(2*(n+1))` -/
def P8435228336912994470.Spec : Prop :=
  ∀ n, P8435228336912994470.a n = (A100577 (n + 1) : ℚ)

end A100577

/-! ## A100577.P7330493364610196614

`2^(n-A049820(n+1))`
-/

namespace A100577.P7330493364610196614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A049820 (n + 1) : ℤ)

end

end A100577.P7330493364610196614

namespace A100577

/-- `2^(n-A049820(n+1))` -/
def P7330493364610196614.Spec : Prop :=
  ∀ n, P7330493364610196614.a n = (A100577 (n + 1) : ℚ)

end A100577

/-! ## A100577.P4468744564640206616

`2^(n+1-A062968(n+1))`
-/

namespace A100577.P4468744564640206616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A062968 (n + 1) : ℤ)

end

end A100577.P4468744564640206616

namespace A100577

/-- `2^(n+1-A062968(n+1))` -/
def P4468744564640206616.Spec : Prop :=
  ∀ n, P4468744564640206616.a n = (A100577 (n + 1) : ℚ)

end A100577

/-! ## A100577.P3671497462324210253

`2^(A158907(n+1)-(n+1))`
-/

namespace A100577.P3671497462324210253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A158907 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A100577.P3671497462324210253

namespace A100577

/-- `2^(A158907(n+1)-(n+1))` -/
def P3671497462324210253.Spec : Prop :=
  ∀ n, P3671497462324210253.a n = (A100577 (n + 1) : ℚ)

end A100577

/-! ## A100577.P17600838917919146676

`∏{d}[n+1, A020639(2*#)]/2`
-/

namespace A100577.P17600838917919146676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), A020639 (2 * d) : ℤ) : ℚ) / 2

end

end A100577.P17600838917919146676

namespace A100577

/-- `∏{d}[n+1, A020639(2*#)]/2` -/
def P17600838917919146676.Spec : Prop :=
  ∀ n, P17600838917919146676.a n = (A100577 (n + 1) : ℚ)

end A100577

/-! ## A100577.P399720446635637617

`A011782(Δ[A006218(n)])`
-/

namespace A100577.P399720446635637617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (f1 (n + 1) - f1 n).toNat

end

end A100577.P399720446635637617

namespace A100577

/-- `A011782(Δ[A006218(n)])` -/
def P399720446635637617.Spec : Prop :=
  ∀ n, P399720446635637617.a n = A100577 (n + 1)

end A100577

/-! ## A100577.P7105513097582735643

`A011782(A000005(n+1))`
-/

namespace A100577.P7105513097582735643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000005 (n + 1)).toNat

end

end A100577.P7105513097582735643

namespace A100577

/-- `A011782(A000005(n+1))` -/
def P7105513097582735643.Spec : Prop :=
  ∀ n, P7105513097582735643.a n = A100577 (n + 1)

end A100577

/-! ## A100577.P2912827749336354091

`A000079(A032741(n+1))`
-/

namespace A100577.P2912827749336354091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A032741 (n + 1)).toNat

end

end A100577.P2912827749336354091

namespace A100577

/-- `A000079(A032741(n+1))` -/
def P2912827749336354091.Spec : Prop :=
  ∀ n, P2912827749336354091.a n = A100577 (n + 1)

end A100577

/-! ## A100577.P9518092581492393873

`A004175(A066446(n+1))`
-/

namespace A100577.P9518092581492393873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (A066446 (n + 1)).toNat

end

end A100577.P9518092581492393873

namespace A100577

/-- `A004175(A066446(n+1))` -/
def P9518092581492393873.Spec : Prop :=
  ∀ n, P9518092581492393873.a n = A100577 (n + 1)

end A100577

/-!
# A100578: Table read by rows: T(n,k) = if n<=k then n else Sum(T(n-i,k):1<=i<=k), 1<=k<=n, triangle read by rows.

The programs for A100578, there is no canonical definition to state claims against.
-/

/-! ## A100578.P6191044142969773010

`A002262(n)+A173022(A173043(n))%28`
-/

namespace A100578.P6191044142969773010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + Int.tmod (A173022 (A173043 n).toNat) 28

end

end A100578.P6191044142969773010

/-! ## A100578.P15616784293364326586

`A022307(3^A183342(n+1))+A002262(n)`
-/

namespace A100578.P15616784293364326586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A183342 (n + 1) : ℤ))).toNat + A002262 n

end

end A100578.P15616784293364326586

/-! ## A100578.P2983785669219105031

`A002262(n)+A054225(n)^A325616(A220738(n+1))`
-/

namespace A100578.P2983785669219105031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) + (A054225 n : ℚ) ^ (A325616 (A220738 (n + 1)).toNat : ℤ)

end

end A100578.P2983785669219105031

/-! ## A100578.P3009637646678065435

`A298629(n+1)+A055642(A162711(n+1))`
-/

namespace A100578.P3009637646678065435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (n + 1) + A055642 (A162711 (n + 1)).toNat

end

end A100578.P3009637646678065435

/-! ## A100578.P398240883423854901

`A297978(n+1)+A001227(A107788(n+1))`
-/

namespace A100578.P398240883423854901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (n + 1) + A001227 (A107788 (n + 1)).toNat

end

end A100578.P398240883423854901

/-!
# A100580: Palindromic primes containing digits 0 and 1 only. (Palindromic terms in A020449.)

The programs for A100580, there is no canonical definition to state claims against.
-/

/-! ## A100580.P9045156882503875523

`∩[A057148(n+1), A068188(n+1)]`
-/

namespace A100580.P9045156882503875523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100580.P9045156882503875523

/-! ## A100580.P792387395758411181

`∩[A057148(n+1), A088562(n+1)]`
-/

namespace A100580.P792387395758411181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100580.P792387395758411181

/-! ## A100580.P9719332508674568027

`∩[A057148(n+1), A370447(n+1)]`
-/

namespace A100580.P9719332508674568027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100580.P9719332508674568027

/-! ## A100580.P19278785433384641

`∩[A068188(n+1), A118594(n+1)]`
-/

namespace A100580.P19278785433384641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100580.P19278785433384641

/-! ## A100580.P14245867538553755451

`∩[A007088(2*n+3), A007597(n+1)]`
-/

namespace A100580.P14245867538553755451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100580.P14245867538553755451

/-!
# A100581: Male of (1/(n+1), n/(1+n)) pair function used to get a dual population Fibonacci.

The programs for A100581, there is no canonical definition to state claims against.
-/

/-! ## A100581.P9469341255027474358

`A000196(A171854(n)+Δ[or(1, n)])`
-/

namespace A100581.P9469341255027474358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A171854 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A100581.P9469341255027474358

/-! ## A100581.P16377435646372886780

`A000196(A152173(n+2)-(-1)^n)`
-/

namespace A100581.P16377435646372886780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A152173 (n + 2) - (-1) ^ n).toNat

end

end A100581.P16377435646372886780

/-! ## A100581.P552303604757435428

`A000196(A071879(n)-A337667(n))`
-/

namespace A100581.P552303604757435428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A071879 n - A337667 n).toNat

end

end A100581.P552303604757435428

/-! ## A100581.P16056613048407502180

`A000196(xor(A081579(n), A152173(n+2)))`
-/

namespace A100581.P16056613048407502180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A081579 n) (A152173 (n + 2))).toNat

end

end A100581.P16056613048407502180

/-! ## A100581.P18116551127451343608

`A000196(A071879(n)-A050370(3*n+4))`
-/

namespace A100581.P18116551127451343608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A071879 n - A050370 (3 * n + 4)).toNat

end

end A100581.P18116551127451343608

/-!
# A100582: Female of (1/(n+1),n/(1+n)) pair function used to get a dual population Fibonacci.

The programs for A100582, there is no canonical definition to state claims against.
-/

/-! ## A100582.P8549575723630536569

`xor(A212804(n), A353331(A000105(n)))`
-/

namespace A100582.P8549575723630536569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A212804 n) (A353331 (A000105 n).toNat)

end

end A100582.P8549575723630536569

/-! ## A100582.P12518961239173121105

`Δ[A172471(A049075(n+1)+3)]`
-/

namespace A100582.P12518961239173121105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A049075 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100582.P12518961239173121105

/-! ## A100582.P7275856727387334901

`xor(A212804(n), A217096(A293064(n)))`
-/

namespace A100582.P7275856727387334901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A212804 n) (A217096 (A293064 n).toNat)

end

end A100582.P7275856727387334901

/-! ## A100582.P17722955073904305804

`xor(A212804(n), A288640(A174366(n+1)))`
-/

namespace A100582.P17722955073904305804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A212804 n) (A288640 (A174366 (n + 1)).toNat)

end

end A100582.P17722955073904305804

/-! ## A100582.P1931063677029302329

`Δ[A259361(A174145(n+1))]`
-/

namespace A100582.P1931063677029302329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A174145 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100582.P1931063677029302329

/-!
# A100583: Number of triangles in an n X n grid of squares with diagonals.

The programs for A100583, the canonical program `A100583.P2286243835092044647` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100583 has offset 0).

The definition of A100583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100583.P2286243835092044647

`(2*n*(6*n²+9*n+2)+(-1)^n-1)/4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100583

/-- `(2*n*(6*n²+9*n+2)+(-1)^n-1)/4` -/
def P2286243835092044647.Spec : Prop :=
  ∀ n, P2286243835092044647.a n = (A100583 n : ℚ)

end A100583

/-! ## A100583.P2940220215929587501

`∑[and(-2, (3*n)²)]`
-/

namespace A100583.P2940220215929587501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((3 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100583.P2940220215929587501

namespace A100583

/-- `∑[and(-2, (3*n)²)]` -/
def P2940220215929587501.Spec : Prop :=
  ∀ n, P2940220215929587501.a n = A100583 n

end A100583

/-! ## A100583.P14588858835704689302

`∑[or(1, (3*n)²)-1]`
-/

namespace A100583.P14588858835704689302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 ((3 * n) ^ 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100583.P14588858835704689302

namespace A100583

/-- `∑[or(1, (3*n)²)-1]` -/
def P14588858835704689302.Spec : Prop :=
  ∀ n, P14588858835704689302.a n = A100583 n

end A100583

/-! ## A100583.P2254215471699033661

`∑[xor(1, or(1, (3*n)²))]`
-/

namespace A100583.P2254215471699033661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 ((3 * n) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100583.P2254215471699033661

namespace A100583

/-- `∑[xor(1, or(1, (3*n)²))]` -/
def P2254215471699033661.Spec : Prop :=
  ∀ n, (P2254215471699033661.a n : ℤ) = A100583 n

end A100583

/-! ## A100583.P6199876548314033689

`∑[(3*n)²-n%2]`
-/

namespace A100583.P6199876548314033689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100583.P6199876548314033689

namespace A100583

/-- `∑[(3*n)²-n%2]` -/
def P6199876548314033689.Spec : Prop :=
  ∀ n, P6199876548314033689.a n = A100583 n

end A100583

/-! ## A100583.P18076739993258649147

`∑[(3*n)²-and(1, n)]`
-/

namespace A100583.P18076739993258649147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100583.P18076739993258649147

namespace A100583

/-- `∑[(3*n)²-and(1, n)]` -/
def P18076739993258649147.Spec : Prop :=
  ∀ n, P18076739993258649147.a n = A100583 n

end A100583

/-! ## A100583.P9982963022556905055

`A027903(n)+A007590(n)`
-/

namespace A100583.P9982963022556905055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027903 n + A007590 n

end

end A100583.P9982963022556905055

namespace A100583

/-- `A027903(n)+A007590(n)` -/
def P9982963022556905055.Spec : Prop :=
  ∀ n, P9982963022556905055.a n = A100583 n

end A100583

/-! ## A100583.P8246998609004408654

`A067389(n)+A032526(n)`
-/

namespace A100583.P8246998609004408654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n + A032526 n

end

end A100583.P8246998609004408654

namespace A100583

/-- `A067389(n)+A032526(n)` -/
def P8246998609004408654.Spec : Prop :=
  ∀ n, P8246998609004408654.a n = A100583 n

end A100583

/-! ## A100583.P2492397823615645140

`A249354(n)+A032528(n)`
-/

namespace A100583.P2492397823615645140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 n + A032528 n

end

end A100583.P2492397823615645140

namespace A100583

/-- `A249354(n)+A032528(n)` -/
def P2492397823615645140.Spec : Prop :=
  ∀ n, P2492397823615645140.a n = A100583 n

end A100583

/-! ## A100583.P16398432000065134315

`A139757(n)-A111500(n)`
-/

namespace A100583.P16398432000065134315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n - A111500 n

end

end A100583.P16398432000065134315

namespace A100583

/-- `A139757(n)-A111500(n)` -/
def P16398432000065134315.Spec : Prop :=
  ∀ n, P16398432000065134315.a n = A100583 n

end A100583

/-! ## A100583.P12404889641363727190

`A220443(n)-A110654(n)`
-/

namespace A100583.P12404889641363727190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n - A110654 n

end

end A100583.P12404889641363727190

namespace A100583

/-- `A220443(n)-A110654(n)` -/
def P12404889641363727190.Spec : Prop :=
  ∀ n, P12404889641363727190.a n = A100583 n

end A100583

/-! ## A100583.P8401925242108563492

`A374384(n)-A016777(n)`
-/

namespace A100583.P8401925242108563492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374384 n - A016777 n

end

end A100583.P8401925242108563492

namespace A100583

/-- `A374384(n)-A016777(n)` -/
def P8401925242108563492.Spec : Prop :=
  ∀ n, P8401925242108563492.a n = A100583 n

end A100583

/-! ## A100583.P5789684057217764355

`A300758(n)-A212960(n)`
-/

namespace A100583.P5789684057217764355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n - A212960 n

end

end A100583.P5789684057217764355

namespace A100583

/-- `A300758(n)-A212960(n)` -/
def P5789684057217764355.Spec : Prop :=
  ∀ n, P5789684057217764355.a n = A100583 n

end A100583

/-! ## A100583.P7692875042155572232

`A229620(n)+A047238(n+1)`
-/

namespace A100583.P7692875042155572232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229620 n + A047238 (n + 1)

end

end A100583.P7692875042155572232

namespace A100583

/-- `A229620(n)+A047238(n+1)` -/
def P7692875042155572232.Spec : Prop :=
  ∀ n, P7692875042155572232.a n = A100583 n

end A100583

/-! ## A100583.P4240675236966708073

`A005915(n)-A032528(n+1)`
-/

namespace A100583.P4240675236966708073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n - A032528 (n + 1)

end

end A100583.P4240675236966708073

namespace A100583

/-- `A005915(n)-A032528(n+1)` -/
def P4240675236966708073.Spec : Prop :=
  ∀ n, P4240675236966708073.a n = A100583 n

end A100583

/-! ## A100583.P56410557009038371

`A196507(n)-A238410(n+1)`
-/

namespace A100583.P56410557009038371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196507 n - A238410 (n + 1)

end

end A100583.P56410557009038371

namespace A100583

/-- `A196507(n)-A238410(n+1)` -/
def P56410557009038371.Spec : Prop :=
  ∀ n, P56410557009038371.a n = A100583 n

end A100583

/-! ## A100583.P2759019822612642294

`2*(A007202(n)-A005898(n))`
-/

namespace A100583.P2759019822612642294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007202 n - A005898 n)

end

end A100583.P2759019822612642294

namespace A100583

/-- `2*(A007202(n)-A005898(n))` -/
def P2759019822612642294.Spec : Prop :=
  ∀ n, P2759019822612642294.a n = A100583 n

end A100583

/-! ## A100583.P12891837992734749046

`2*A055112(n)-A212960(n)`
-/

namespace A100583.P12891837992734749046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055112 n - A212960 n

end

end A100583.P12891837992734749046

namespace A100583

/-- `2*A055112(n)-A212960(n)` -/
def P12891837992734749046.Spec : Prop :=
  ∀ n, P12891837992734749046.a n = A100583 n

end A100583

/-! ## A100583.P13617062937772391340

`2*(A299290(n)-A005894(n))`
-/

namespace A100583.P13617062937772391340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A299290 n - A005894 n)

end

end A100583.P13617062937772391340

namespace A100583

/-- `2*(A299290(n)-A005894(n))` -/
def P13617062937772391340.Spec : Prop :=
  ∀ n, P13617062937772391340.a n = A100583 n

end A100583

/-! ## A100583.P242106159206198578

`A032528(n)+n*A003215(n)`
-/

namespace A100583.P242106159206198578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n + (n : ℤ) * A003215 n

end

end A100583.P242106159206198578

namespace A100583

/-- `A032528(n)+n*A003215(n)` -/
def P242106159206198578.Spec : Prop :=
  ∀ n, P242106159206198578.a n = A100583 n

end A100583

/-!
# A100584: a(n) = A000676(n) - A000677(n).

The programs for A100584, there is no canonical definition to state claims against.
-/

/-! ## A100584.P11434491656356688000

`A000676(n)-A000677(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100584.P11434491656356688000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000676 n - A000677 n

end

end A100584.P11434491656356688000

/-! ## A100584.P6084206542590172822

`A000055(n)-2*A000677(n)`
-/

namespace A100584.P6084206542590172822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - 2 * A000677 n

end

end A100584.P6084206542590172822

/-! ## A100584.P12996945042198495051

`2*A000676(n)-A000055(n)`
-/

namespace A100584.P12996945042198495051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000676 n - A000055 n

end

end A100584.P12996945042198495051

/-! ## A100584.P389267898774983971

`2*A000676(n)-A105821(A133263(n))`
-/

namespace A100584.P389267898774983971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000676 n - A105821 (A133263 n).toNat

end

end A100584.P389267898774983971

/-! ## A100584.P14131079290514054323

`A105821(A133263(n))-2*A000677(n)`
-/

namespace A100584.P14131079290514054323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A133263 n).toNat - 2 * A000677 n

end

end A100584.P14131079290514054323

/-! ## A100584.P4623941001445674111

`2*A000676(n)-sqrt(A001256(n))`
-/

namespace A100584.P4623941001445674111
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A000676 n : ℝ) - Real.sqrt (A001256 n : ℝ)

end

end A100584.P4623941001445674111

/-! ## A100584.P8422760972676342737

`sqrt(A001256(n))-2*A000677(n)`
-/

namespace A100584.P8422760972676342737
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001256 n : ℝ) - (2 * A000677 n : ℝ)

end

end A100584.P8422760972676342737

/-!
# A100585: a(n+1) = a(n)+floor(a(n)/3), a(1) = 3.

The programs for A100585, the canonical program `A100585.P15752562870528647766` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100585 has offset 1).

The definition of A100585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100585.P15752562870528647766

`floor(4/3*a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100585

/-- `floor(4/3*a(n-1))` -/
def P15752562870528647766.Spec : Prop :=
  ∀ n, P15752562870528647766.a n = A100585 (n + 1)

theorem P15752562870528647766.correct : P15752562870528647766.Spec := by
  intro n
  simp only [A100585, Nat.add_sub_cancel]

end A100585

/-! ## A100585.P12009385054814636016

`floor(a(n-1)/(1-1/4))` with `a(0)=3`
-/

namespace A100585.P12009385054814636016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (1 : ℚ) / 4)⌋

end

end A100585.P12009385054814636016

namespace A100585

/-- `floor(a(n-1)/(1-1/4))` -/
def P12009385054814636016.Spec : Prop :=
  ∀ n, P12009385054814636016.a n = A100585 (n + 1)

theorem P12009385054814636016.correct : P12009385054814636016.Spec := by
  intro n
  simp only [A100585, Nat.add_sub_cancel, A100585.P12009385054814636016.a, A100585.P15752562870528647766.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A100585

/-! ## A100585.P9730597101944188406

`A390254(n)+1`
-/

namespace A100585.P9730597101944188406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390254 n + 1

end

end A100585.P9730597101944188406

namespace A100585

/-- `A390254(n)+1` -/
def P9730597101944188406.Spec : Prop :=
  ∀ n, P9730597101944188406.a n = A100585 (n + 1)

end A100585

/-! ## A100585.P14329241977790771444

`A087192(n+1)+2`
-/

namespace A100585.P14329241977790771444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087192 (n + 1) + 2

end

end A100585.P14329241977790771444

namespace A100585

/-- `A087192(n+1)+2` -/
def P14329241977790771444.Spec : Prop :=
  ∀ n, P14329241977790771444.a n = A100585 (n + 1)

end A100585

/-! ## A100585.P14083508412859127389

`∑[A072493(n+1)]+2`
-/

namespace A100585.P14083508412859127389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A100585.P14083508412859127389

namespace A100585

/-- `∑[A072493(n+1)]+2` -/
def P14083508412859127389.Spec : Prop :=
  ∀ n, P14083508412859127389.a n = A100585 (n + 1)

end A100585

/-! ## A100585.P9392945370454997326

`a(n-1)+A245356(n+1)/4` with `a(0)=3`
-/

namespace A100585.P9392945370454997326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A245356 (n + 1) : ℚ) / 4

end

end A100585.P9392945370454997326

namespace A100585

/-- `a(n-1)+A245356(n+1)/4` -/
def P9392945370454997326.Spec : Prop :=
  ∀ n, P9392945370454997326.a n = (A100585 (n + 1) : ℚ)

end A100585

/-! ## A100585.P13499226896543758568

`ceil((4*a(n-1)-2)/3)` with `a(0)=3`
-/

namespace A100585.P13499226896543758568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈(4 * a (n - 1) - 2 : ℚ) / 3⌉

end

end A100585.P13499226896543758568

namespace A100585

/-- `ceil((4*a(n-1)-2)/3)` -/
def P13499226896543758568.Spec : Prop :=
  ∀ n, P13499226896543758568.a n = A100585 (n + 1)

end A100585

/-! ## A100585.P15079426073030689290

`round((4*a(n-1)-sqrt(ϕ))/3)` with `a(0)=3`
-/

namespace A100585.P15079426073030689290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway (((4 * a (n - 1) : ℝ) - Real.sqrt Real.goldenRatio) / 3)

end

end A100585.P15079426073030689290

namespace A100585

/-- `round((4*a(n-1)-sqrt(ϕ))/3)` -/
def P15079426073030689290.Spec : Prop :=
  ∀ n, P15079426073030689290.a n = A100585 (n + 1)

end A100585

/-! ## A100585.P1728032125371755330

`(4*a(n-1)-a(n-1)%3)/3` with `a(0)=3`
-/

namespace A100585.P1728032125371755330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (4 * a (n - 1) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 3 : ℚ)) / 3

end

end A100585.P1728032125371755330

namespace A100585

/-- `(4*a(n-1)-a(n-1)%3)/3` -/
def P1728032125371755330.Spec : Prop :=
  ∀ n, P1728032125371755330.a n = (A100585 (n + 1) : ℚ)

end A100585

/-! ## A100585.P17143354812455202627

`A367882(∑[n])+3`
-/

namespace A100585.P17143354812455202627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367882 (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A100585.P17143354812455202627

namespace A100585

/-- `A367882(∑[n])+3` -/
def P17143354812455202627.Spec : Prop :=
  ∀ n, P17143354812455202627.a n = A100585 (n + 1)

end A100585

/-! ## A100585.P7074663651684614178

`A191671(A000124(n))+2`
-/

namespace A100585.P7074663651684614178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191671 (A000124 n).toNat + 2

end

end A100585.P7074663651684614178

namespace A100585

/-- `A191671(A000124(n))+2` -/
def P7074663651684614178.Spec : Prop :=
  ∀ n, P7074663651684614178.a n = A100585 (n + 1)

end A100585

/-! ## A100585.P5453558864992187133

`A191671(A000217(n)+1)+2`
-/

namespace A100585.P5453558864992187133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191671 (A000217 n + 1).toNat + 2

end

end A100585.P5453558864992187133

namespace A100585

/-- `A191671(A000217(n)+1)+2` -/
def P5453558864992187133.Spec : Prop :=
  ∀ n, P5453558864992187133.a n = A100585 (n + 1)

end A100585

/-!
# A100586: Write down the numbers from 3 to infinity. Take next number, M say, that has not been crossed off. Counting through the numbers that have not yet been crossed off after that M, cross off every 5th term. Repeat, always crossing off every 5th term of those that remain. The numbers that are left form the sequence.

The programs for A100586, there is no canonical definition to state claims against.
-/

/-! ## A100586.P14598853642793216314

`floor((5*a(n-1)+1)/4)` with `a(0)=3`
-/

namespace A100586.P14598853642793216314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(5 * a (n - 1) + 1 : ℚ) / 4⌋

end

end A100586.P14598853642793216314

/-! ## A100586.P3345972234101432791

`round((5*a(n-1)-1)/4)` with `a(0)=3`
-/

namespace A100586.P3345972234101432791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway ((5 * a (n - 1) - 1 : ℚ) / 4)

end

end A100586.P3345972234101432791

/-! ## A100586.P18022216418365546410

`ceil((5*a(n-1)-2)/4)` with `a(0)=3`
-/

namespace A100586.P18022216418365546410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈(5 * a (n - 1) - 2 : ℚ) / 4⌉

end

end A100586.P18022216418365546410

/-! ## A100586.P16908479178541774948

`floor((6-5*(1-a(n-1)))/4)` with `a(0)=3`
-/

namespace A100586.P16908479178541774948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(6 - 5 * (1 - a (n - 1)) : ℚ) / 4⌋

end

end A100586.P16908479178541774948

/-! ## A100586.P2414008306635945291

`floor(a(n-1)+(a(n-1)+1)/4)` with `a(0)=3`
-/

namespace A100586.P2414008306635945291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 1) + 1 : ℚ) / 4⌋

end

end A100586.P2414008306635945291

/-!
# A100587: Number of nonempty subsets of divisors of n.

The programs for A100587, the canonical program `A100587.P4523483955726030569` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100587 has offset 1).

The definition of A100587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100587.P4523483955726030569

`2^A000005(n+1)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100587

/-- `2^A000005(n+1)-1` -/
def P4523483955726030569.Spec : Prop :=
  ∀ n, P4523483955726030569.a n = (A100587 (n + 1) : ℚ)

end A100587

/-! ## A100587.P15829610820436838301

`2^∏{e}[n+1, #+1]-1`
-/

namespace A100587.P15829610820436838301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℤ) - 1

end

end A100587.P15829610820436838301

namespace A100587

/-- `2^∏{e}[n+1, #+1]-1` -/
def P15829610820436838301.Spec : Prop :=
  ∀ n, P15829610820436838301.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P15328290051297084904

`A338506(n+1)-1`
-/

namespace A100587.P15328290051297084904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338506 (n + 1) - 1

end

end A100587.P15328290051297084904

namespace A100587

/-- `A338506(n+1)-1` -/
def P15328290051297084904.Spec : Prop :=
  ∀ n, P15328290051297084904.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P10031934926649842275

`∑{d}[n+1, A076078(#)]`
-/

namespace A100587.P10031934926649842275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076078 d

end

end A100587.P10031934926649842275

namespace A100587

/-- `∑{d}[n+1, A076078(#)]` -/
def P10031934926649842275.Spec : Prop :=
  ∀ n, P10031934926649842275.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P1987461153664368222

`2^Δ[A006218(n)]-1`
-/

namespace A100587.P1987461153664368222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) - 1

end

end A100587.P1987461153664368222

namespace A100587

/-- `2^Δ[A006218(n)]-1` -/
def P1987461153664368222.Spec : Prop :=
  ∀ n, P1987461153664368222.a n = (A100587 (n + 1) : ℚ)

end A100587

/-! ## A100587.P16927721288669869351

`2*A100577(n+1)-1`
-/

namespace A100587.P16927721288669869351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100577 (n + 1) - 1

end

end A100587.P16927721288669869351

namespace A100587

/-- `2*A100577(n+1)-1` -/
def P16927721288669869351.Spec : Prop :=
  ∀ n, P16927721288669869351.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P6345278099105482406

`∏{d}[n+1, A020639(2*#)]-1`
-/

namespace A100587.P6345278099105482406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A020639 (2 * d) - 1

end

end A100587.P6345278099105482406

namespace A100587

/-- `∏{d}[n+1, A020639(2*#)]-1` -/
def P6345278099105482406.Spec : Prop :=
  ∀ n, P6345278099105482406.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P3396575029816089087

`A000225(A000005(n+1))`
-/

namespace A100587.P3396575029816089087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000005 (n + 1)).toNat

end

end A100587.P3396575029816089087

namespace A100587

/-- `A000225(A000005(n+1))` -/
def P3396575029816089087.Spec : Prop :=
  ∀ n, P3396575029816089087.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P9263692171450823032

`A078446(A035116(n+1))`
-/

namespace A100587.P9263692171450823032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (A035116 (n + 1)).toNat

end

end A100587.P9263692171450823032

namespace A100587

/-- `A078446(A035116(n+1))` -/
def P9263692171450823032.Spec : Prop :=
  ∀ n, P9263692171450823032.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P1375382538730842677

`A053440(A066446(n+1))`
-/

namespace A100587.P1375382538730842677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053440 (A066446 (n + 1)).toNat

end

end A100587.P1375382538730842677

namespace A100587

/-- `A053440(A066446(n+1))` -/
def P1375382538730842677.Spec : Prop :=
  ∀ n, P1375382538730842677.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P17314510828858688908

`A052551(A086369(n+1))`
-/

namespace A100587.P17314510828858688908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A086369 (n + 1)).toNat

end

end A100587.P17314510828858688908

namespace A100587

/-- `A052551(A086369(n+1))` -/
def P17314510828858688908.Spec : Prop :=
  ∀ n, P17314510828858688908.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P3570230428745953597

`A126646(A032741(n+1))`
-/

namespace A100587.P3570230428745953597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A032741 (n + 1)).toNat

end

end A100587.P3570230428745953597

namespace A100587

/-- `A126646(A032741(n+1))` -/
def P3570230428745953597.Spec : Prop :=
  ∀ n, P3570230428745953597.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P8958296709490856065

`A052551(A114003(n+1))`
-/

namespace A100587.P8958296709490856065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A114003 (n + 1)).toNat

end

end A100587.P8958296709490856065

namespace A100587

/-- `A052551(A114003(n+1))` -/
def P8958296709490856065.Spec : Prop :=
  ∀ n, P8958296709490856065.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P2117667526455336507

`A243071(A105555(n+1))`
-/

namespace A100587.P2117667526455336507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A105555 (n + 1)).toNat

end

end A100587.P2117667526455336507

namespace A100587

/-- `A243071(A105555(n+1))` -/
def P2117667526455336507.Spec : Prop :=
  ∀ n, P2117667526455336507.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P16275151805591877808

`A288663(A062011(n+1))`
-/

namespace A100587.P16275151805591877808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 (A062011 (n + 1)).toNat

end

end A100587.P16275151805591877808

namespace A100587

/-- `A288663(A062011(n+1))` -/
def P16275151805591877808.Spec : Prop :=
  ∀ n, P16275151805591877808.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P1592801148413351762

`A078446(A000005(n+1)²)`
-/

namespace A100587.P1592801148413351762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (A000005 (n + 1) ^ 2).toNat

end

end A100587.P1592801148413351762

namespace A100587

/-- `A078446(A000005(n+1)²)` -/
def P1592801148413351762.Spec : Prop :=
  ∀ n, P1592801148413351762.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P2494669319995472887

`A000079(Δ[A006218(n)])-1`
-/

namespace A100587.P2494669319995472887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat - 1

end

end A100587.P2494669319995472887

namespace A100587

/-- `A000079(Δ[A006218(n)])-1` -/
def P2494669319995472887.Spec : Prop :=
  ∀ n, P2494669319995472887.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P5796883386268227078

`A000225(A032741(n+1)+1)`
-/

namespace A100587.P5796883386268227078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A032741 (n + 1) + 1).toNat

end

end A100587.P5796883386268227078

namespace A100587

/-- `A000225(A032741(n+1)+1)` -/
def P5796883386268227078.Spec : Prop :=
  ∀ n, P5796883386268227078.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P17335221286931343089

`A049063(A035116(n+1)+1)`
-/

namespace A100587.P17335221286931343089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049063 (A035116 (n + 1) + 1).toNat

end

end A100587.P17335221286931343089

namespace A100587

/-- `A049063(A035116(n+1)+1)` -/
def P17335221286931343089.Spec : Prop :=
  ∀ n, P17335221286931343089.a n = A100587 (n + 1)

end A100587

/-! ## A100587.P17438612115842033730

`A126646(A000005(n+1)-1)`
-/

namespace A100587.P17438612115842033730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A000005 (n + 1) - 1).toNat

end

end A100587.P17438612115842033730

namespace A100587

/-- `A126646(A000005(n+1)-1)` -/
def P17438612115842033730.Spec : Prop :=
  ∀ n, P17438612115842033730.a n = A100587 (n + 1)

end A100587

/-!
# A100588: Numerical value of the following string operation iterated n-1 times on the string "1": (1) Concatenate "0" to the left and to the right to the old string and initialize a new string. (2) Scan the old string from left to right. Whenever "00" occurs in the old string, write "0" to the new string; whenever "01" or "10" occurs in the old string, write "1" to the new string; whenever "11" occurs in the old string, write "10" to the new string.

The programs for A100588, there is no canonical definition to state claims against.
-/

/-! ## A100588.P8667989913256903297

`floor(p?[A104144(n)-1]/log(10))`
-/

namespace A100588.P8667989913256903297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) / Real.log (10 : ℝ)⌋

end

end A100588.P8667989913256903297

/-!
# A100589: Primes of the form 2p+3q, p and q consecutive primes, which are also the sum of three distinct primes.

The programs for A100589, there is no canonical definition to state claims against.
-/

/-! ## A100589.P13473960101254273639

`p?[A001748(n+1)+A001747(n+1)]`
-/

namespace A100589.P13473960101254273639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + A001747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100589.P13473960101254273639

/-! ## A100589.P6146570548400343930

`p?[A100484(n+1)+A001748(n+2)]`
-/

namespace A100589.P6146570548400343930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A001748 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100589.P6146570548400343930

/-! ## A100589.P15559852680810660303

`p?[A000040(n+1)+2*A011974(n+1)]`
-/

namespace A100589.P15559852680810660303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A011974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100589.P15559852680810660303

/-! ## A100589.P914561113461210495

`p?[A000040(n+2)+2*A001043(n+1)]`
-/

namespace A100589.P914561113461210495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + 2 * A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100589.P914561113461210495

/-! ## A100589.P15822550929469231272

`p?[A001747(n+1)+3*A000040(n+1)]`
-/

namespace A100589.P15822550929469231272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + 3 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100589.P15822550929469231272

/-!
# A100594: Floor of Pi^(2*n)/Zeta(2*n).

The programs for A100594, there is no canonical definition to state claims against.
-/

/-! ## A100594.P669206827272728050

`A309946(2*(n+1))`
-/

namespace A100594.P669206827272728050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309946 (2 * (n + 1))

end

end A100594.P669206827272728050

/-! ## A100594.P13106441862966965040

`record[A309946(A133265(n))]`
-/

namespace A100594.P13106441862966965040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309946 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100594.P13106441862966965040

/-! ## A100594.P16134433239074466263

`record[A309946(A103889(n+1))]`
-/

namespace A100594.P16134433239074466263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309946 (A103889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100594.P16134433239074466263

/-!
# A100596: Numbers k such that (prime(k)-1)! + prime(k)^10 is prime.

The programs for A100596, there is no canonical definition to state claims against.
-/

/-! ## A100596.P2747215648842440826

`A369652(A267539(n+1))`
-/

namespace A100596.P2747215648842440826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369652 (A267539 (n + 1)).toNat

end

end A100596.P2747215648842440826

/-!
# A100597: Based on the first matrix inverse of transformed Bernoulli numbers as defined in the Comments line.

The programs for A100597, there is no canonical definition to state claims against.
-/

/-! ## A100597.P4504401778017906987

`A342266(A304969(n))+1`
-/

namespace A100597.P4504401778017906987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342266 (A304969 n).toNat + 1

end

end A100597.P4504401778017906987

/-! ## A100597.P12795739081294037579

`∑[A112689(∑[A076320(n+1)])]`
-/

namespace A100597.P12795739081294037579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076320 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100597.P12795739081294037579

/-! ## A100597.P8502794038995091430

`A230980(lcm(2, record[A226978(n+1)]))`
-/

namespace A100597.P8502794038995091430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A100597.P8502794038995091430

