import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

/-!
# A229600: Number of defective 3-colorings of an n X 2 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229600, the canonical program `A229600.P1930957637929007472` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229600 has offset 1).

The definition of A229600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229600.P8998099884926939258

`ogf((6x-15x^2+13x^3-2x^4)/(1-9x+27x^2-27x^3))`
-/

namespace A229600.P8998099884926939258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -15, 13, -2] [1, -9, 27, -27] n

end

end A229600.P8998099884926939258

namespace A229600

/-- `ogf((6x-15x^2+13x^3-2x^4)/(1-9x+27x^2-27x^3))` -/
def P8998099884926939258.Spec : Prop :=
  ∀ n, P8998099884926939258.a n = A229600 (n + 1)

end A229600

/-! ## A229600.P1930957637929007472

`9*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=0, a(1)=6, a(2)=39, a(3)=202, a(4)=925`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229600

/-- `9*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P1930957637929007472.Spec : Prop :=
  ∀ n, P1930957637929007472.a n = A229600 (n + 1)

theorem P1930957637929007472.correct : P1930957637929007472.Spec := by
  intro n
  simp only [A229600, Nat.add_sub_cancel]

end A229600

/-! ## A229600.P1963833810196473336

`A229606(∑[n+1]+2)`
-/

namespace A229600.P1963833810196473336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229600.P1963833810196473336

namespace A229600

/-- `A229606(∑[n+1]+2)` -/
def P1963833810196473336.Spec : Prop :=
  ∀ n, P1963833810196473336.a n = A229600 (n + 1)

end A229600

/-! ## A229600.P3890950728858707042

`A229637(∑[n+2])`
-/

namespace A229600.P3890950728858707042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229600.P3890950728858707042

namespace A229600

/-- `A229637(∑[n+2])` -/
def P3890950728858707042.Spec : Prop :=
  ∀ n, P3890950728858707042.a n = A229600 (n + 1)

end A229600

/-!
# A229601: Number of defective 3-colorings of an n X 3 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229601, the canonical program `A229601.P13994650035919450563` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229601 has offset 1).

The definition of A229601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229601.P13994650035919450563

`ogf((1+24x-108x^2+74x^3+137x^4-127x^5+8x^6)/(1-15x+81x^2-185x^3+162x^4-60x^5+8x^6))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229601

/-- `ogf((1+24x-108x^2+74x^3+137x^4-127x^5+8x^6)/(1-15x+81x^2-185x^3+162x^4-60x^5+8x^6))` -/
def P13994650035919450563.Spec : Prop :=
  ∀ n, P13994650035919450563.a n = A229601 (n + 1)

theorem P13994650035919450563.correct : P13994650035919450563.Spec := by
  intro n
  simp only [A229601, Nat.add_sub_cancel]

end A229601

/-! ## A229601.P16477016752126727930

`A229606(∑[n+2]+4)`
-/

namespace A229601.P16477016752126727930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229601.P16477016752126727930

namespace A229601

/-- `A229606(∑[n+2]+4)` -/
def P16477016752126727930.Spec : Prop :=
  ∀ n, P16477016752126727930.a n = A229601 (n + 1)

end A229601

/-!
# A229602: Number of defective 3-colorings of an n X 4 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229602, there is no canonical definition to state claims against.
-/

/-! ## A229602.P17002472459939773971

`A229606(A374004(n+1))`
-/

namespace A229602.P17002472459939773971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A374004 (n + 1)).toNat

end

end A229602.P17002472459939773971

/-! ## A229602.P104398651446494052

`A229606(A141214(n+1))`
-/

namespace A229602.P104398651446494052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A141214 (n + 1)).toNat

end

end A229602.P104398651446494052

/-!
# A229603: Number of defective 3-colorings of an n X 5 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229603, there is no canonical definition to state claims against.
-/

/-! ## A229603.P6560394523778637439

`A229606(A374005(n+1))`
-/

namespace A229603.P6560394523778637439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A374005 (n + 1)).toNat

end

end A229603.P6560394523778637439

/-!
# A229604: Number of defective 3-colorings of an n X 6 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229604, there is no canonical definition to state claims against.
-/

/-! ## A229604.P16161212790232757393

`A229606(A374007(n+1))`
-/

namespace A229604.P16161212790232757393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A374007 (n + 1)).toNat

end

end A229604.P16161212790232757393

/-!
# A229605: Number of defective 3-colorings of an n X 7 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229605, there is no canonical definition to state claims against.
-/

/-! ## A229605.P6768791986894638777

`A229606(A374008(n+1))`
-/

namespace A229605.P6768791986894638777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (A374008 (n + 1)).toNat

end

end A229605.P6768791986894638777

/-!
# A229606: T(n,k) = number of defective 3-colorings of an n X k 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229606, there is no canonical definition to state claims against.
-/

/-! ## A229606.P12930090885065239817

`A323243(A151944(n+1)+A151938(n))`
-/

namespace A229606.P12930090885065239817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (A151944 (n + 1) + A151938 n).toNat

end

end A229606.P12930090885065239817

/-! ## A229606.P18178099724006453686

`or(A230337(n+1), A280522(A057693(n)))`
-/

namespace A229606.P18178099724006453686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A230337 (n + 1)) (A280522 (A057693 n).toNat)

end

end A229606.P18178099724006453686

/-! ## A229606.P4341530436935633647

`A221590(A061219(n+1))-A014963(A106408(n+1))`
-/

namespace A229606.P4341530436935633647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221590 (A061219 (n + 1)).toNat - A014963 (A106408 (n + 1)).toNat

end

end A229606.P4341530436935633647

/-!
# A229608: Square array read by antidiagonals downwards: each row starts with the least prime not in a previous row, and each prime p in a row is followed by the least prime > 2*p.

The programs for A229608, there is no canonical definition to state claims against.
-/

/-! ## A229608.P8945023954345544810

`A000040(A194869(n+1)+A172535(n+1))`
-/

namespace A229608.P8945023954345544810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A194869 (n + 1) + A172535 (n + 1)).toNat

end

end A229608.P8945023954345544810

/-! ## A229608.P10341366500496600032

`A178762(A194903(n+1)%A178805(3*n+1))`
-/

namespace A229608.P10341366500496600032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178762 (Int.tmod (A194903 (n + 1)) (A178805 (3 * n + 1))).toNat

end

end A229608.P10341366500496600032

/-!
# A229609: Array: each row starts with the least prime not in a previous row, and each prime p in a row is followed by the greatest prime < 3*p.

The programs for A229609, there is no canonical definition to state claims against.
-/

/-! ## A229609.P14025707081667702448

`A267101(A293014(n)+A078213(n+1))`
-/

namespace A229609.P14025707081667702448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (A293014 n + A078213 (n + 1)).toNat

end

end A229609.P14025707081667702448

/-!
# A229611: Expansion of 1/((1-x)^3*(1-11x)).

The programs for A229611, the canonical program `A229611.P4570613294683482858` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229611 has offset 0).

The definition of A229611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-14x+36x^2-34x^3+11x^4))` (program `A229611.P4570613294683482858`, by `A229611.P4570613294683482858.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229611.P4570613294683482858

`ogf(1/(1-14x+36x^2-34x^3+11x^4))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229611

/-- `ogf(1/(1-14x+36x^2-34x^3+11x^4))` -/
def P4570613294683482858.Spec : Prop :=
  ∀ n, P4570613294683482858.a n = A229611 n

theorem P4570613294683482858.correct : P4570613294683482858.Spec := by
  intro n
  simp only [A229611]

end A229611

/-! ## A229611.P14448749353001521402

`(11^(n+3)-(50*n²+260*n+331))/1000`
-/

namespace A229611.P14448749353001521402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (50 * n ^ 2 + 260 * n + 331 : ℤ) : ℚ) / 1000

end

end A229611.P14448749353001521402

namespace A229611

/-- `(11^(n+3)-(50*n²+260*n+331))/1000` -/
def P14448749353001521402.Spec : Prop :=
  ∀ n, P14448749353001521402.a n = (A229611 n : ℚ)

end A229611

/-! ## A229611.P14505920289234394771

`∑[∑[∑[11^and(n, n)]]]`
-/

namespace A229611.P14505920289234394771
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ Nat.land n n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229611.P14505920289234394771

namespace A229611

/-- `∑[∑[∑[11^and(n, n)]]]` -/
def P14505920289234394771.Spec : Prop :=
  ∀ n, (P14505920289234394771.a n : ℤ) = A229611 n

end A229611

/-! ## A229611.P8695136123938275749

`∑[∑[ogf(1/(1-12x+11x^2))]]`
-/

namespace A229611.P8695136123938275749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 11] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229611.P8695136123938275749

namespace A229611

/-- `∑[∑[ogf(1/(1-12x+11x^2))]]` -/
def P8695136123938275749.Spec : Prop :=
  ∀ n, P8695136123938275749.a n = A229611 n

end A229611

/-! ## A229611.P5353338528140217314

`∑[∑[∑[11*a(n-1)]]]` with `a(0)=1`
-/

namespace A229611.P5353338528140217314
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  11 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229611.P5353338528140217314

namespace A229611

/-- `∑[∑[∑[11*a(n-1)]]]` -/
def P5353338528140217314.Spec : Prop :=
  ∀ n, (P5353338528140217314.a n : ℤ) = A229611 n

end A229611

/-! ## A229611.P17395694543859872042

`∑[∑[record[1+11*T(n-2,k)]]]` with `a(0)=1, a(1)=1`
-/

namespace A229611.P17395694543859872042
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  1 + 11 * SequenceMachineLib.triUp2 f3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229611.P17395694543859872042

namespace A229611

/-- `∑[∑[record[1+11*T(n-2,k)]]]` -/
def P17395694543859872042.Spec : Prop :=
  ∀ n, (P17395694543859872042.a n : ℤ) = A229611 n

end A229611

/-! ## A229611.P3828050490581163023

`C(n+2, 2)+11*a(n-1)` with `a(0)=1`
-/

namespace A229611.P3828050490581163023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (n + 2) 2 + 11 * a (n - 1)

end

end A229611.P3828050490581163023

namespace A229611

/-- `C(n+2, 2)+11*a(n-1)` -/
def P3828050490581163023.Spec : Prop :=
  ∀ n, (P3828050490581163023.a n : ℤ) = A229611 n

end A229611

/-! ## A229611.P17813993159369802729

`∑[∑[A016123(n)]]`
-/

namespace A229611.P17813993159369802729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016123 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229611.P17813993159369802729

namespace A229611

/-- `∑[∑[A016123(n)]]` -/
def P17813993159369802729.Spec : Prop :=
  ∀ n, P17813993159369802729.a n = A229611 n

end A229611

/-! ## A229611.P4113733950425210614

`∑[A014881(n+1)]`
-/

namespace A229611.P4113733950425210614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229611.P4113733950425210614

namespace A229611

/-- `∑[A014881(n+1)]` -/
def P4113733950425210614.Spec : Prop :=
  ∀ n, P4113733950425210614.a n = A229611 n

end A229611

/-! ## A229611.P6200749308982724568

`∑[∑[A268839(n+1)/9]]`
-/

namespace A229611.P6200749308982724568
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268839 (n + 1) : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229611.P6200749308982724568

namespace A229611

/-- `∑[∑[A268839(n+1)/9]]` -/
def P6200749308982724568.Spec : Prop :=
  ∀ n, P6200749308982724568.a n = (A229611 n : ℚ)

end A229611

/-!
# A229613: Primes of the form p*q - 30, where p and q are consecutive primes.

The programs for A229613, there is no canonical definition to state claims against.
-/

/-! ## A229613.P5797201610106121721

`p?[A124669(n+1)-28]`
-/

namespace A229613.P5797201610106121721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124669 (n + 1) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P5797201610106121721

/-! ## A229613.P9623325568490660233

`p?[A023515(n+1)-29]`
-/

namespace A229613.P9623325568490660233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P9623325568490660233

/-! ## A229613.P7869174341665959212

`p?[A006094(n+1)-30]`
-/

namespace A229613.P7869174341665959212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P7869174341665959212

/-! ## A229613.P18192505450545825281

`p?[A023523(n+1)-31]`
-/

namespace A229613.P18192505450545825281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P18192505450545825281

/-! ## A229613.P13358314594023368053

`p?[A116570(2*n)-30]`
-/

namespace A229613.P13358314594023368053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P13358314594023368053

/-! ## A229613.P7928774438215159653

`p?[A033476(2*n+1)-30]`
-/

namespace A229613.P7928774438215159653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P7928774438215159653

/-! ## A229613.P9141442848524428742

`p?[A057602(A005408(n))-30]`
-/

namespace A229613.P9141442848524428742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (A005408 n).toNat - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P9141442848524428742

/-! ## A229613.P16954804317072348936

`p?[A076271(A076273(n))-30]`
-/

namespace A229613.P16954804317072348936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (A076273 n).toNat - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P16954804317072348936

/-! ## A229613.P14597419074731643921

`p?[A000040(n+1)*A000040(n+2)-30]`
-/

namespace A229613.P14597419074731643921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229613.P14597419074731643921

/-!
# A229614: Number of binary strings of length n avoiding "squares" (that is, repeated blocks of the form xx) with |x| > 2.

The programs for A229614, there is no canonical definition to state claims against.
-/

/-! ## A229614.P931802643000265331

`A316470(A153252(n)+1)`
-/

namespace A229614.P931802643000265331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (A153252 n + 1).toNat

end

end A229614.P931802643000265331

/-! ## A229614.P18440966720249534389

`A331873(∑[A049811(2*n+1)])`
-/

namespace A229614.P18440966720249534389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049811 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229614.P18440966720249534389

/-! ## A229614.P2994073823213741199

`∑[A252505(n!)]`
-/

namespace A229614.P2994073823213741199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252505 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229614.P2994073823213741199

/-! ## A229614.P15843844167940197362

`∑[A365173(n!)]`
-/

namespace A229614.P15843844167940197362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365173 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229614.P15843844167940197362

/-!
# A229615: Expansion of q^2 * psi(q^3)^6 / psi(q)^2 in powers of q where psi() is a Ramanujan theta function.

The programs for A229615, the canonical program `A229615.P14699236150142978134` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229615 has offset 2).

The definition of A229615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229615.P14699236150142978134

`A111932(2+n)-A121443(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A229615

/-- `A111932(2+n)-A121443(n+2)` -/
def P14699236150142978134.Spec : Prop :=
  ∀ n, P14699236150142978134.a n = A229615 (n + 2)

theorem P14699236150142978134.correct : P14699236150142978134.Spec := by
  intro n
  simp only [A229615, Nat.add_sub_cancel]

end A229615

/-! ## A229615.P12032587669257577339

`A121443(n+2)-A232356(n+2)`
-/

namespace A229615.P12032587669257577339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (n + 2) - A232356 (n + 2)

end

end A229615.P12032587669257577339

namespace A229615

/-- `A121443(n+2)-A232356(n+2)` -/
def P12032587669257577339.Spec : Prop :=
  ∀ n, P12032587669257577339.a n = A229615 (n + 2)

end A229615

/-! ## A229615.P7221778208384786023

`A002131(A038502(n+2))-A121443(n+2)`
-/

namespace A229615.P7221778208384786023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A038502 (n + 2)).toNat - A121443 (n + 2)

end

end A229615.P7221778208384786023

namespace A229615

/-- `A002131(A038502(n+2))-A121443(n+2)` -/
def P7221778208384786023.Spec : Prop :=
  ∀ n, P7221778208384786023.a n = A229615 (n + 2)

end A229615

/-! ## A229615.P13697128773728305704

`-A321527(2*(n+2))`
-/

namespace A229615.P13697128773728305704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A321527 (2 * (n + 2))

end

end A229615.P13697128773728305704

namespace A229615

/-- `-A321527(2*(n+2))` -/
def P13697128773728305704.Spec : Prop :=
  ∀ n, P13697128773728305704.a n = A229615 (n + 2)

end A229615

/-! ## A229615.P16048700045644607151

`Δ[a(n-1)-A321527(A163300(n+1))]` with `a(0)=1`
-/

namespace A229615.P16048700045644607151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A321527 (A163300 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229615.P16048700045644607151

namespace A229615

/-- `Δ[a(n-1)-A321527(A163300(n+1))]` -/
def P16048700045644607151.Spec : Prop :=
  ∀ n, P16048700045644607151.a n = A229615 (n + 2)

end A229615

/-! ## A229615.P7624078349105515410

`-A224226(2*(n+2))`
-/

namespace A229615.P7624078349105515410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A224226 (2 * (n + 2))

end

end A229615.P7624078349105515410

namespace A229615

/-- `-A224226(2*(n+2))` -/
def P7624078349105515410.Spec : Prop :=
  ∀ n, P7624078349105515410.a n = A229615 (n + 2)

end A229615

/-! ## A229615.P13566394856323808662

`∑{#}[n, A093829(#+1)*A093829(n-#+1)]`
-/

namespace A229615.P13566394856323808662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A093829 (k + 1) * A093829 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A229615.P13566394856323808662

namespace A229615

/-- `∑{#}[n, A093829(#+1)*A093829(n-#+1)]` -/
def P13566394856323808662.Spec : Prop :=
  ∀ n, P13566394856323808662.a n = A229615 (n + 2)

end A229615

/-!
# A229616: Expansion of (phi(-q)^3 / phi(-q^3))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A229616, there is no canonical definition to state claims against.
-/

/-! ## A229616.P3328095734691786613

`A033999(n)*A321465(n)`
-/

namespace A229616.P3328095734691786613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A321465 n

end

end A229616.P3328095734691786613

/-! ## A229616.P14837802448524662097

`∑[A280560(n)]*A321465(n)`
-/

namespace A229616.P14837802448524662097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A321465 n

end

end A229616.P14837802448524662097

/-! ## A229616.P5214790384177306055

`A009001(2*n)*A321465(n)`
-/

namespace A229616.P5214790384177306055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A321465 n

end

end A229616.P5214790384177306055

/-! ## A229616.P11549460594136384029

`A227226(n)*A321465(n)/A321466(n)`
-/

namespace A229616.P11549460594136384029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227226 n * A321465 n : ℚ) / (A321466 n : ℚ)

end

end A229616.P11549460594136384029

/-! ## A229616.P6476683585612696421

`∑{#}[n, A122859(#)*A122859(n-#)]`
-/

namespace A229616.P6476683585612696421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A122859 k * A122859 (n - k)

end

end A229616.P6476683585612696421

/-! ## A229616.P16658359551758487014

`A008585(A008653(n))-2*A004011(n)`
-/

namespace A229616.P16658359551758487014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A008653 n).toNat - 2 * A004011 n

end

end A229616.P16658359551758487014

/-! ## A229616.P17508178029780509097

`A008585(A008653(n))-A005843(A004011(n))`
-/

namespace A229616.P17508178029780509097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A008653 n).toNat - A005843 (A004011 n).toNat

end

end A229616.P17508178029780509097

/-! ## A229616.P5103056472934148462

`A008683(A116570(n))*A321465(n)`
-/

namespace A229616.P5103056472934148462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A116570 n).toNat * A321465 n

end

end A229616.P5103056472934148462

/-!
# A229617: Number of binary strings of length n containing at most 3 distinct squares, where a square is a nonempty block of the form xx.

The programs for A229617, there is no canonical definition to state claims against.
-/

/-! ## A229617.P11501919628131139671

`record[A327526(A090802(n))]`
-/

namespace A229617.P11501919628131139671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327526 (A090802 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229617.P11501919628131139671

/-! ## A229617.P4930874786291145760

`record[A046523(record[A123490(n)])]`
-/

namespace A229617.P4930874786291145760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123490 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229617.P4930874786291145760

/-! ## A229617.P5118496340787444669

`2^n-A181340(A093040(n))`
-/

namespace A229617.P5118496340787444669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A181340 (A093040 n).toNat

end

end A229617.P5118496340787444669

/-! ## A229617.P4482049047758309604

`record[A046523(record[A278984(n+1)])]`
-/

namespace A229617.P4482049047758309604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229617.P4482049047758309604

/-! ## A229617.P7307980944976634107

`record[A046523(record[A304926(n+1)])]`
-/

namespace A229617.P7307980944976634107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304926 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229617.P7307980944976634107

/-!
# A229618: Numbers that are the distance between a square and the next larger cube.

The programs for A229618, there is no canonical definition to state claims against.
-/

/-! ## A229618.P6279033548880179411

`lt[0, char[ceil(root(n²+1, 3))^3-n²]]`
-/

namespace A229618.P6279033548880179411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ))⌉ ^ 3 - (n ^ 2 : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229618.P6279033548880179411

/-! ## A229618.P15417256277540013153

`eq[1, char[ceil(root(n²+1, 3))^3-n²]]`
-/

namespace A229618.P15417256277540013153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ))⌉ ^ 3 - (n ^ 2 : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229618.P15417256277540013153

/-!
# A229619: G.f. satisfies: A(x) = Series_Reversion(x - x^2*A'(x)).

The programs for A229619, there is no canonical definition to state claims against.
-/

/-! ## A229619.P11666334046944480134

`A360950(n)/(n+1)`
-/

namespace A229619.P11666334046944480134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360950 n : ℚ) / (n + 1 : ℚ)

end

end A229619.P11666334046944480134

/-!
# A229620: Incorrect version of A045949.

The programs for A229620, the canonical program `A229620.P15480091126661372649` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229620 has offset 0).

The definition of A229620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229620.P9171781093245225779

`ogf((6x+20x^2+14x^3-4x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A229620.P9171781093245225779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 20, 14, -4] [1, -3, 2, 2, -3, 1] n

end

end A229620.P9171781093245225779

namespace A229620

/-- `ogf((6x+20x^2+14x^3-4x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P9171781093245225779.Spec : Prop :=
  ∀ n, P9171781093245225779.a n = A229620 n

end A229620

/-! ## A229620.P15480091126661372649

`(1-(-1)^n-8*n+18*n²+12*n^3)/4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229620

/-- `(1-(-1)^n-8*n+18*n²+12*n^3)/4` -/
def P15480091126661372649.Spec : Prop :=
  ∀ n, P15480091126661372649.a n = (A229620 n : ℚ)

end A229620

/-! ## A229620.P14872035985710648244

`∑[and(1, n)+(3*n)²]-4*n`
-/

namespace A229620.P14872035985710648244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (4 * n : ℤ)

end

end A229620.P14872035985710648244

namespace A229620

/-- `∑[and(1, n)+(3*n)²]-4*n` -/
def P14872035985710648244.Spec : Prop :=
  ∀ n, P14872035985710648244.a n = A229620 n

end A229620

/-! ## A229620.P11180571986808871314

`A248575(n)-4*n`
-/

namespace A229620.P11180571986808871314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248575 n - (4 * n : ℤ)

end

end A229620.P11180571986808871314

namespace A229620

/-- `A248575(n)-4*n` -/
def P11180571986808871314.Spec : Prop :=
  ∀ n, P11180571986808871314.a n = A229620 n

end A229620

/-! ## A229620.P2880178937612883084

`∑[A244636(n)%A007899(n)]`
-/

namespace A229620.P2880178937612883084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244636 n) (A007899 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229620.P2880178937612883084

namespace A229620

/-- `∑[A244636(n)%A007899(n)]` -/
def P2880178937612883084.Spec : Prop :=
  ∀ n, P2880178937612883084.a n = A229620 n

end A229620

/-! ## A229620.P8770691168768549458

`A100583(n)-A047238(n+1)`
-/

namespace A229620.P8770691168768549458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100583 n - A047238 (n + 1)

end

end A229620.P8770691168768549458

namespace A229620

/-- `A100583(n)-A047238(n+1)` -/
def P8770691168768549458.Spec : Prop :=
  ∀ n, P8770691168768549458.a n = A229620 n

end A229620

/-! ## A229620.P5579735496168815175

`A220443(n)-A047355(n+1)`
-/

namespace A229620.P5579735496168815175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n - A047355 (n + 1)

end

end A229620.P5579735496168815175

namespace A229620

/-- `A220443(n)-A047355(n+1)` -/
def P5579735496168815175.Spec : Prop :=
  ∀ n, P5579735496168815175.a n = A229620 n

end A229620

/-! ## A229620.P10464184766074432264

`2*(A026810(A016921(n)+1)-2*n)`
-/

namespace A229620.P10464184766074432264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026810 (A016921 n + 1).toNat - (2 * n : ℤ))

end

end A229620.P10464184766074432264

namespace A229620

/-- `2*(A026810(A016921(n)+1)-2*n)` -/
def P10464184766074432264.Spec : Prop :=
  ∀ n, P10464184766074432264.a n = A229620 n

end A229620

/-! ## A229620.P2282622796085394246

`2*(A026810(2*A016777(n))-2*n)`
-/

namespace A229620.P2282622796085394246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026810 (2 * A016777 n).toNat - (2 * n : ℤ))

end

end A229620.P2282622796085394246

namespace A229620

/-- `2*(A026810(2*A016777(n))-2*n)` -/
def P2282622796085394246.Spec : Prop :=
  ∀ n, P2282622796085394246.a n = A229620 n

end A229620

/-! ## A229620.P8781209427305775188

`∑[A047238(A008486(n²))]`
-/

namespace A229620.P8781209427305775188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (A008486 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229620.P8781209427305775188

namespace A229620

/-- `∑[A047238(A008486(n²))]` -/
def P8781209427305775188.Spec : Prop :=
  ∀ n, P8781209427305775188.a n = A229620 n

end A229620

/-!
# A229621: Numbers n such that n - (sum of digits of n) is a palindrome.

The programs for A229621, there is no canonical definition to state claims against.
-/

/-! ## A229621.P10677394303826920426

`eq[0, A256756(A066568(n))]`
-/

namespace A229621.P10677394303826920426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A066568 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229621.P10677394303826920426

/-! ## A229621.P13308666805850732266

`lt[A256756(A066568(n)), A357973(n)]`
-/

namespace A229621.P13308666805850732266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A066568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357973 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229621.P13308666805850732266

/-! ## A229621.P10291164242820636619

`lt[A256756(A066568(n)), A061373(n+1)]`
-/

namespace A229621.P10291164242820636619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A066568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229621.P10291164242820636619

/-! ## A229621.P11859710426659313048

`lt[A256756(A066568(n)), A065559(n+1)]`
-/

namespace A229621.P11859710426659313048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A066568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229621.P11859710426659313048

/-! ## A229621.P2183134789612757463

`lt[A256756(A066568(n)), A130260(3*(n+1))]`
-/

namespace A229621.P2183134789612757463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A066568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229621.P2183134789612757463

/-!
# A229622: Palindromes m such that m + (sum of digits of m) is also a palindrome.

The programs for A229622, there is no canonical definition to state claims against.
-/

/-! ## A229622.P14123325974150048952

`filter[A229545(n+1), A136522(#)]`
-/

namespace A229622.P14123325974150048952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A229622.P14123325974150048952

/-! ## A229622.P585767106619443056

`∩[A229545(n+1), A056142(n)]`
-/

namespace A229622.P585767106619443056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229622.P585767106619443056

/-! ## A229622.P16657101470268724109

`∩[A002113(n+1), A229545(n+1)]`
-/

namespace A229622.P16657101470268724109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229622.P16657101470268724109

/-! ## A229622.P12561763335840796115

`∩[A050783(n+1), A229545(n+1)]`
-/

namespace A229622.P12561763335840796115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229622.P12561763335840796115

/-! ## A229622.P4842174348672644174

`∩[A229545(n+1), A240601(n+1)]`
-/

namespace A229622.P4842174348672644174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229622.P4842174348672644174

/-!
# A229623: Palindromes m such that m - sum_of_digits(m) is also a palindrome.

The programs for A229623, there is no canonical definition to state claims against.
-/

/-! ## A229623.P7380372942899491296

`∩[A002113(n+1), A229621(n+1)]`
-/

namespace A229623.P7380372942899491296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229623.P7380372942899491296

/-! ## A229623.P18349885968513460536

`∩[A229621(n+1), A335779(n+1)]`
-/

namespace A229623.P18349885968513460536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229623.P18349885968513460536

/-! ## A229623.P8715288739135139133

`filter[A229621(n+1), A136522(#)]`
-/

namespace A229623.P8715288739135139133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A229623.P8715288739135139133

/-! ## A229623.P7425528250183946907

`eq[A256756(A066568(n))², A256756(n)]`
-/

namespace A229623.P7425528250183946907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A066568 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229623.P7425528250183946907

/-! ## A229623.P11616363694873006941

`∩[A229621(n+1), A240601(n+1)]`
-/

namespace A229623.P11616363694873006941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229623.P11616363694873006941

/-!
# A229628: Hankel transform of A000265 (odd part of n).

The programs for A229628, there is no canonical definition to state claims against.
-/

/-! ## A229628.P15038836995013578000

`A057077(n)*A321266(A088996(3*n+2))`
-/

namespace A229628.P15038836995013578000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A321266 (A088996 (3 * n + 2)).toNat

end

end A229628.P15038836995013578000

/-!
# A229631: Number of defective 3-colorings of an n X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229631, there is no canonical definition to state claims against.
-/

/-! ## A229631.P10197820059781406348

`A229637(∑[4*n]+1)`
-/

namespace A229631.P10197820059781406348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229631.P10197820059781406348

/-!
# A229632: Number of defective 3-colorings of an nX3 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229632, there is no canonical definition to state claims against.
-/

/-! ## A229632.P12430508989162747968

`A229637(∑[n+3]+1)`
-/

namespace A229632.P12430508989162747968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229632.P12430508989162747968

/-! ## A229632.P17225891262803855817

`record[gcd(A105806(n+5), A229637(n+4))]`
-/

namespace A229632.P17225891262803855817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105806 (n + 5)) (A229637 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229632.P17225891262803855817

/-!
# A229633: Number of defective 3-colorings of an n X 4 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229633, there is no canonical definition to state claims against.
-/

/-! ## A229633.P9444037363610350268

`A229637(A141214(n+1))`
-/

namespace A229633.P9444037363610350268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A141214 (n + 1)).toNat

end

end A229633.P9444037363610350268

/-!
# A229634: Number of defective 3-colorings of an n X 5 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229634, there is no canonical definition to state claims against.
-/

/-! ## A229634.P4125122879416863484

`A229637(Δ[A264443(n)])`
-/

namespace A229634.P4125122879416863484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (f1 (n + 1) - f1 n).toNat

end

end A229634.P4125122879416863484

/-!
# A229635: Number of defective 3-colorings of an n X 6 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229635, there is no canonical definition to state claims against.
-/

/-! ## A229635.P2773230662783260300

`A229637(A052905(n+3))`
-/

namespace A229635.P2773230662783260300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A052905 (n + 3)).toNat

end

end A229635.P2773230662783260300

/-!
# A229636: Number of defective 3-colorings of an n X 7 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229636, there is no canonical definition to state claims against.
-/

/-! ## A229636.P12304677389473060893

`A229637(A055999(n+4))`
-/

namespace A229636.P12304677389473060893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A055999 (n + 4)).toNat

end

end A229636.P12304677389473060893

/-!
# A229637: T(n,k) = number of defective 3-colorings of an n X k 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229637, there is no canonical definition to state claims against.
-/

/-! ## A229637.P12344494477156262072

`A264128(A032559(n+1))-A194979(n+1)`
-/

namespace A229637.P12344494477156262072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A032559 (n + 1)).toNat - A194979 (n + 1)

end

end A229637.P12344494477156262072

/-! ## A229637.P1064464789272241818

`A264128(A077739(n+1))-A194979(n+1)`
-/

namespace A229637.P1064464789272241818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A077739 (n + 1)).toNat - A194979 (n + 1)

end

end A229637.P1064464789272241818

/-! ## A229637.P2316582243351192933

`A264128(n+1)-A194979(n+1)%A095631(n)`
-/

namespace A229637.P2316582243351192933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (n + 1) - Int.tmod (A194979 (n + 1)) (A095631 n)

end

end A229637.P2316582243351192933

/-! ## A229637.P7620458579760851745

`A005940(A347940(n))-A194979(A032559(n+1))`
-/

namespace A229637.P7620458579760851745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A347940 n).toNat - A194979 (A032559 (n + 1)).toNat

end

end A229637.P7620458579760851745

/-! ## A229637.P2563638230316753215

`A005940(A347940(n)%A095631(n))-A194979(n+1)`
-/

namespace A229637.P2563638230316753215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (Int.tmod (A347940 n) (A095631 n)).toNat - A194979 (n + 1)

end

end A229637.P2563638230316753215

/-!
# A229638: Number of defective 3-colorings of a 2 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229638, the canonical program `A229638.P4016806436169305178` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229638 has offset 1).

The definition of A229638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229638.P4016806436169305178

`ogf((6x+4x^2-82x^3+92x^4-20x^5)/(1-6x+6x^2+16x^3-12x^4-24x^5-8x^6))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229638

/-- `ogf((6x+4x^2-82x^3+92x^4-20x^5)/(1-6x+6x^2+16x^3-12x^4-24x^5-8x^6))` -/
def P4016806436169305178.Spec : Prop :=
  ∀ n, P4016806436169305178.a n = A229638 (n + 1)

theorem P4016806436169305178.correct : P4016806436169305178.Spec := by
  intro n
  simp only [A229638, Nat.add_sub_cancel]

end A229638

/-! ## A229638.P4208709438651146860

`A229637(∑[n+1]+2)`
-/

namespace A229638.P4208709438651146860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229638.P4208709438651146860

namespace A229638

/-- `A229637(∑[n+1]+2)` -/
def P4208709438651146860.Spec : Prop :=
  ∀ n, P4208709438651146860.a n = A229638 (n + 1)

end A229638

/-!
# A229639: Number of defective 3-colorings of a 3 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229639, there is no canonical definition to state claims against.
-/

/-! ## A229639.P12853239628338417378

`A229637(∑[n+2]+4)`
-/

namespace A229639.P12853239628338417378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229639.P12853239628338417378

/-!
# A229640: Number of defective 3-colorings of a 4 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229640, there is no canonical definition to state claims against.
-/

/-! ## A229640.P3738248019467312868

`A229637(A141214(n)+7)`
-/

namespace A229640.P3738248019467312868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A141214 n + 7).toNat

end

end A229640.P3738248019467312868

/-!
# A229641: Number of defective 3-colorings of a 5 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229641, there is no canonical definition to state claims against.
-/

/-! ## A229641.P10510111553086601325

`A229637(A167499(n+3))`
-/

namespace A229641.P10510111553086601325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A167499 (n + 3)).toNat

end

end A229641.P10510111553086601325

/-!
# A229642: Number of defective 3-colorings of a 6 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229642, there is no canonical definition to state claims against.
-/

/-! ## A229642.P12088540456228083825

`A229637(A056115(n)+21)`
-/

namespace A229642.P12088540456228083825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A056115 n + 21).toNat

end

end A229642.P12088540456228083825

/-!
# A229643: Number of defective 3-colorings of a 7 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229643, there is no canonical definition to state claims against.
-/

/-! ## A229643.P8657255257147198736

`A229637(A056119(n)+28)`
-/

namespace A229643.P8657255257147198736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A056119 n + 28).toNat

end

end A229643.P8657255257147198736

/-!
# A229644: Cogrowth function of the group Baumslag-Solitar(2,2).

The programs for A229644, there is no canonical definition to state claims against.
-/

/-! ## A229644.P14107212882109935841

`A108598(A381915(n))-Δ[n!]`
-/

namespace A229644.P14107212882109935841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (A381915 n).toNat - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A229644.P14107212882109935841

/-!
# A229645: Cogrowth function of the group Baumslag-Solitar(3,3).

The programs for A229645, there is no canonical definition to state claims against.
-/

/-! ## A229645.P1490701117816528505

`A359798(n)-A308980(A356752(n))`
-/

namespace A229645.P1490701117816528505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359798 n - A308980 (A356752 n).toNat

end

end A229645.P1490701117816528505

/-!
# A229646: Cogrowth function of the group Baumslag-Solitar(4,4).

The programs for A229646, there is no canonical definition to state claims against.
-/

/-! ## A229646.P2353908200448029162

`A229648(n)+A059297(A013529(n))`
-/

namespace A229646.P2353908200448029162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229648 n + A059297 (A013529 n).toNat

end

end A229646.P2353908200448029162

/-! ## A229646.P17576244952188730531

`A229648(n)+A102748(A101125(n))`
-/

namespace A229646.P17576244952188730531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229648 n + A102748 (A101125 n).toNat

end

end A229646.P17576244952188730531

/-!
# A229647: Cogrowth function of the group Baumslag-Solitar(5,5).

The programs for A229647, there is no canonical definition to state claims against.
-/

/-! ## A229647.P3071359764669028227

`A229651(n)+A004016(A098999(n+1))`
-/

namespace A229647.P3071359764669028227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229651 n + A004016 (A098999 (n + 1)).toNat

end

end A229647.P3071359764669028227

/-! ## A229647.P2455656185225442391

`A035610(n)+A035584(A333431(n+1))`
-/

namespace A229647.P2455656185225442391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 n + A035584 (A333431 (n + 1)).toNat

end

end A229647.P2455656185225442391

/-! ## A229647.P422858358776874627

`A357647(A201648(n+1))+A229650(n)`
-/

namespace A229647.P422858358776874627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357647 (A201648 (n + 1)).toNat + A229650 n

end

end A229647.P422858358776874627

/-!
# A229648: Cogrowth function of the group Baumslag-Solitar(6,6).

The programs for A229648, there is no canonical definition to state claims against.
-/

/-! ## A229648.P13292602916997581470

`A229650(lcm(n, comp[or(7, n)]))`
-/

namespace A229648.P13292602916997581470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229650 (Nat.lcm n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A229648.P13292602916997581470

/-!
# A229650: Cogrowth function of the group Baumslag-Solitar(8,8).

The programs for A229650, there is no canonical definition to state claims against.
-/

/-! ## A229650.P10327492462422797454

`∏{e}[5^n, A229652(#)]`
-/

namespace A229650.P10327492462422797454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A229652 (Nat.factorization (f1 n) p)

end

end A229650.P10327492462422797454

/-! ## A229650.P17049470446261966985

`A229651(A029965(n+1))`
-/

namespace A229650.P17049470446261966985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229651 (A029965 (n + 1)).toNat

end

end A229650.P17049470446261966985

/-! ## A229650.P12267884964995472088

`A035610(A267116(3^n))`
-/

namespace A229650.P12267884964995472088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 (A267116 (3 ^ n)).toNat

end

end A229650.P12267884964995472088

/-! ## A229650.P7766195079031894752

`A229652(n*A287378(n))`
-/

namespace A229650.P7766195079031894752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229652 ((n : ℤ) * A287378 n).toNat

end

end A229650.P7766195079031894752

/-!
# A229651: Cogrowth function of the group Baumslag-Solitar(9,9).

The programs for A229651, there is no canonical definition to state claims against.
-/

/-! ## A229651.P3468631286570167456

`A035610(A082216(n))`
-/

namespace A229651.P3468631286570167456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 (A082216 n).toNat

end

end A229651.P3468631286570167456

/-! ## A229651.P6785506029480000985

`A128386(A169919(n))`
-/

namespace A229651.P6785506029480000985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128386 (A169919 n).toNat

end

end A229651.P6785506029480000985

/-! ## A229651.P17787292387307286919

`A229652(A087019(n))`
-/

namespace A229651.P17787292387307286919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229652 (A087019 n).toNat

end

end A229651.P17787292387307286919

/-!
# A229652: Cogrowth function of the group Baumslag-Solitar(10,10).

The programs for A229652, there is no canonical definition to state claims against.
-/

/-! ## A229652.P7932582813236115375

`A035610(A120126(n))`
-/

namespace A229652.P7932582813236115375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035610 (A120126 n).toNat

end

end A229652.P7932582813236115375

/-! ## A229652.P11453103117184449973

`A128386(record[A322038(n)])`
-/

namespace A229652.P11453103117184449973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128386 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229652.P11453103117184449973

/-!
# A229653: Trisection a(3n+k) gives k-th differences of a for k=0..2 with a(n)=0 for n<2 and a(2)=1.

The programs for A229653, there is no canonical definition to state claims against.
-/

/-! ## A229653.P5016995289735016319

`A000005(A143015(n+1))-A274451(n+1)`
-/

namespace A229653.P5016995289735016319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A143015 (n + 1)).toNat - A274451 (n + 1)

end

end A229653.P5016995289735016319

/-!
# A229659: 9-section a(9n+k) gives k-th differences of a for k=0..8 with a(n)=0 for n<8 and a(8)=1.

The programs for A229659, there is no canonical definition to state claims against.
-/

/-! ## A229659.P11780792506797129845

`A229660(A088476(1+n))`
-/

namespace A229659.P11780792506797129845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229660 (A088476 (1 + n)).toNat

end

end A229659.P11780792506797129845

/-!
# A229661: Rounded percentage of primes less than 10^n.

The programs for A229661, there is no canonical definition to state claims against.
-/

/-! ## A229661.P12458567541479153816

`floor(52*n*acot(n²))`
-/

namespace A229661.P12458567541479153816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊52 * ((n : ℝ) * SequenceMachineLib.acot (n ^ 2 : ℝ))⌋

end

end A229661.P12458567541479153816

/-! ## A229661.P12380947032911527204

`ceil(52*n*acot(n²)-n²%(n+1))`
-/

namespace A229661.P12380947032911527204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈52 * ((n : ℝ) * SequenceMachineLib.acot (n ^ 2 : ℝ)) - ((n ^ 2 % (n + 1) : ℕ) : ℝ)⌉

end

end A229661.P12380947032911527204

/-! ## A229661.P5083461114001859585

`ceil(A057428(n)+52*n*acot(n²))`
-/

namespace A229661.P5083461114001859585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + 52 * ((n : ℝ) * SequenceMachineLib.acot (n ^ 2 : ℝ))⌉

end

end A229661.P5083461114001859585

/-! ## A229661.P465374949941399947

`ceil(52*n*acot(n²)-A057427(n))`
-/

namespace A229661.P465374949941399947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈52 * ((n : ℝ) * SequenceMachineLib.acot (n ^ 2 : ℝ)) - (A057427 n : ℝ)⌉

end

end A229661.P465374949941399947

/-! ## A229661.P8553404865262991042

`ceil(52*n*acot(n²)-char[A026350(n+1)])`
-/

namespace A229661.P8553404865262991042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈52 * ((n : ℝ) * SequenceMachineLib.acot (n ^ 2 : ℝ)) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)⌉

end

end A229661.P8553404865262991042

/-!
# A229662: The number of subsets of integers of cardinality n, produced as the steps in a computation starting with 1 and using the operations of multiplication, addition, or subtraction.

The programs for A229662, there is no canonical definition to state claims against.
-/

/-! ## A229662.P10966668339436909625

`A022844(A317666(n))-1`
-/

namespace A229662.P10966668339436909625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (A317666 n).toNat - 1

end

end A229662.P10966668339436909625

/-!
# A229664: Number of defective 4-colorings of an n X n 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229664, there is no canonical definition to state claims against.
-/

/-! ## A229664.P16252946720275541624

`A229672(∑[4*n]+1)`
-/

namespace A229664.P16252946720275541624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229664.P16252946720275541624

/-! ## A229664.P1015103473510730430

`record[A003982(n)*A229672(n+1)]`
-/

namespace A229664.P1015103473510730430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A229672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229664.P1015103473510730430

/-!
# A229665: Number of defective 4-colorings of an n X 1 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229665, the canonical program `A229665.P3664665695425008477` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229665 has offset 1).

The definition of A229665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229665.P3664665695425008477

`ceil(3^(n-1)/18)*C(n, 2)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229665

/-- `ceil(3^(n-1)/18)*C(n, 2)` -/
def P3664665695425008477.Spec : Prop :=
  ∀ n, P3664665695425008477.a n = A229665 (n + 1)

theorem P3664665695425008477.correct : P3664665695425008477.Spec := by
  intro n
  simp only [A229665, Nat.add_sub_cancel]

end A229665

/-! ## A229665.P11332136604341093039

`A080934(A052905(n))*A161680(n)`
-/

namespace A229665.P11332136604341093039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A052905 n).toNat * A161680 n

end

end A229665.P11332136604341093039

namespace A229665

/-- `A080934(A052905(n))*A161680(n)` -/
def P11332136604341093039.Spec : Prop :=
  ∀ n, P11332136604341093039.a n = A229665 (n + 1)

end A229665

/-! ## A229665.P720249627301963397

`A229755(∑[n]+1)`
-/

namespace A229665.P720249627301963397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229665.P720249627301963397

namespace A229665

/-- `A229755(∑[n]+1)` -/
def P720249627301963397.Spec : Prop :=
  ∀ n, P720249627301963397.a n = A229665 (n + 1)

end A229665

/-! ## A229665.P5643168246918184269

`A229672(∑[n]+1)`
-/

namespace A229665.P5643168246918184269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229665.P5643168246918184269

namespace A229665

/-- `A229672(∑[n]+1)` -/
def P5643168246918184269.Spec : Prop :=
  ∀ n, P5643168246918184269.a n = A229665 (n + 1)

end A229665

/-!
# A229666: Number of defective 4-colorings of an n X 2 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229666, the canonical program `A229666.P15248440872352789467` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229666 has offset 1).

The definition of A229666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229666.P15248440872352789467

`ogf((4x+13x^2+112x^3-104x^4-32x^5)/(1-12x+48x^2-64x^3))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229666

/-- `ogf((4x+13x^2+112x^3-104x^4-32x^5)/(1-12x+48x^2-64x^3))` -/
def P15248440872352789467.Spec : Prop :=
  ∀ n, P15248440872352789467.a n = A229666 (n + 1)

theorem P15248440872352789467.correct : P15248440872352789467.Spec := by
  intro n
  simp only [A229666, Nat.add_sub_cancel]

end A229666

/-! ## A229666.P10384292326964268276

`A229672(∑[n+1]+2)`
-/

namespace A229666.P10384292326964268276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229666.P10384292326964268276

namespace A229666

/-- `A229672(∑[n+1]+2)` -/
def P10384292326964268276.Spec : Prop :=
  ∀ n, P10384292326964268276.a n = A229666 (n + 1)

end A229666

/-! ## A229666.P14925130039442482905

`record[A229672(∑[A152271(n)])]`
-/

namespace A229666.P14925130039442482905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229666.P14925130039442482905

namespace A229666

/-- `record[A229672(∑[A152271(n)])]` -/
def P14925130039442482905.Spec : Prop :=
  ∀ n, P14925130039442482905.a n = A229666 (n + 1)

end A229666

/-! ## A229666.P4614172672113476732

`record[A097806(n)*A229672(n+1)]`
-/

namespace A229666.P4614172672113476732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A229672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229666.P4614172672113476732

namespace A229666

/-- `record[A097806(n)*A229672(n+1)]` -/
def P4614172672113476732.Spec : Prop :=
  ∀ n, P4614172672113476732.a n = A229666 (n + 1)

end A229666

/-! ## A229666.P9620499592689014847

`record[A129186(n)*A229672(n+1)]`
-/

namespace A229666.P9620499592689014847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A229672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229666.P9620499592689014847

namespace A229666

/-- `record[A129186(n)*A229672(n+1)]` -/
def P9620499592689014847.Spec : Prop :=
  ∀ n, P9620499592689014847.a n = A229666 (n + 1)

end A229666

/-!
# A229667: Number of defective 4-colorings of an nX3 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229667, there is no canonical definition to state claims against.
-/

/-! ## A229667.P1386497177954410004

`A229672(∑[n+2]+4)`
-/

namespace A229667.P1386497177954410004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229667.P1386497177954410004

/-!
# A229668: Number of defective 4-colorings of an n X 4 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229668, there is no canonical definition to state claims against.
-/

/-! ## A229668.P15460742873193532129

`A229672(A374004(n+1))`
-/

namespace A229668.P15460742873193532129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A374004 (n + 1)).toNat

end

end A229668.P15460742873193532129

/-! ## A229668.P17121880287338432412

`A229672(A141214(n+1))`
-/

namespace A229668.P17121880287338432412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A141214 (n + 1)).toNat

end

end A229668.P17121880287338432412

/-!
# A229669: Number of defective 4-colorings of an n X 5 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229669, there is no canonical definition to state claims against.
-/

/-! ## A229669.P12451485268430798428

`A229672(A374005(n+1))`
-/

namespace A229669.P12451485268430798428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A374005 (n + 1)).toNat

end

end A229669.P12451485268430798428

/-!
# A229670: Number of defective 4-colorings of an n X 6 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229670, there is no canonical definition to state claims against.
-/

/-! ## A229670.P13651626138392541207

`A229672(A374007(n+1))`
-/

namespace A229670.P13651626138392541207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A374007 (n + 1)).toNat

end

end A229670.P13651626138392541207

/-!
# A229671: Number of defective 4-colorings of an n X 7 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229671, there is no canonical definition to state claims against.
-/

/-! ## A229671.P13735427904341693704

`A229672(A374008(n+1))`
-/

namespace A229671.P13735427904341693704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229672 (A374008 (n + 1)).toNat

end

end A229671.P13735427904341693704

/-!
# A229672: T(n,k) = number of defective 4-colorings of an n X k 0..3 array connected horizontally, antidiagonally and vertically with exactly two mistakes, and colors introduced in row-major 0..3 order.

The programs for A229672, there is no canonical definition to state claims against.
-/

/-! ## A229672.P1531539296228169411

`A229755(A032557(n+1))+A004197(n)`
-/

namespace A229672.P1531539296228169411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229755 (A032557 (n + 1)).toNat + A004197 n

end

end A229672.P1531539296228169411

/-! ## A229672.P14393282963609130920

`A320364(A032557(n+1))+A229755(n+1)`
-/

namespace A229672.P14393282963609130920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320364 (A032557 (n + 1)).toNat + A229755 (n + 1)

end

end A229672.P14393282963609130920

/-! ## A229672.P7936471656623636206

`A280313(A032557(n+1))+A280284(n+1)`
-/

namespace A229672.P7936471656623636206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (A032557 (n + 1)).toNat + A280284 (n + 1)

end

end A229672.P7936471656623636206

/-! ## A229672.P119091544772043187

`A280313(n+1)+A280284(A280355(n+1))`
-/

namespace A229672.P119091544772043187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280313 (n + 1) + A280284 (A280355 (n + 1)).toNat

end

end A229672.P119091544772043187

/-! ## A229672.P12287675923099983562

`A116653(and(A087592(n+1), A197069(n+1)))`
-/

namespace A229672.P12287675923099983562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116653 (Int.land (A087592 (n + 1)) (A197069 (n + 1))).toNat

end

end A229672.P12287675923099983562

/-!
# A229673: The number of subsets of nonzero integers of cardinality n, produced as the steps in a computation starting with 1 and using the operations of multiplication, addition, or subtraction.

The programs for A229673, there is no canonical definition to state claims against.
-/

/-! ## A229673.P6360261630278427068

`∑[A182777(record[A262372(n)])]`
-/

namespace A229673.P6360261630278427068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229673.P6360261630278427068

/-!
# A229675: a(n) = Sum_{k = 0..n} Product_{j = 0..7} C(n+j*k,k).

The programs for A229675, there is no canonical definition to state claims against.
-/

/-! ## A229675.P13689278012337209314

`A229142(eq[8, A195664(n)])`
-/

namespace A229675.P13689278012337209314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229675.P13689278012337209314

/-!
# A229676: a(n) = Sum_{k = 0..n} Product_{j = 0..8} C(n+j*k,k).

The programs for A229676, there is no canonical definition to state claims against.
-/

/-! ## A229676.P12932116747918957478

`A229142(A000217(n+9)+n)`
-/

namespace A229676.P12932116747918957478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (A000217 (n + 9) + (n : ℤ)).toNat

end

end A229676.P12932116747918957478

/-!
# A229677: a(n) = Sum_{k = 0..n} Product_{j = 0..9} C(n+j*k,k).

The programs for A229677, there is no canonical definition to state claims against.
-/

/-! ## A229677.P15955367229662080366

`A229142(eq[10, A025581(n)])`
-/

namespace A229677.P15955367229662080366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229677.P15955367229662080366

/-!
# A229678: Number of defective 3-colorings of an n X n 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229678, there is no canonical definition to state claims against.
-/

/-! ## A229678.P17232952894128312356

`A229685(∑[4*n]+1)`
-/

namespace A229678.P17232952894128312356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229678.P17232952894128312356

/-! ## A229678.P16169493162880106852

`record[A003982(n)*A229685(n+1)]`
-/

namespace A229678.P16169493162880106852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A229685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229678.P16169493162880106852

/-!
# A229679: Number of defective 3-colorings of an n X 2 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229679, the canonical program `A229679.P202136642927744127` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229679 has offset 1).

The definition of A229679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229679.P12992556052604022569

`ogf((2x+12x^2+24x^3-32x^4)/(1-12x+48x^2-64x^3))`
-/

namespace A229679.P12992556052604022569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 12, 24, -32] [1, -12, 48, -64] n

end

end A229679.P12992556052604022569

namespace A229679

/-- `ogf((2x+12x^2+24x^3-32x^4)/(1-12x+48x^2-64x^3))` -/
def P12992556052604022569.Spec : Prop :=
  ∀ n, P12992556052604022569.a n = A229679 (n + 1)

end A229679

/-! ## A229679.P3483011214993306166

`C(2*n, 2)*A098011(2*n+1)`
-/

namespace A229679.P3483011214993306166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 : ℤ) * A098011 (2 * n + 1)

end

end A229679.P3483011214993306166

namespace A229679

/-- `C(2*n, 2)*A098011(2*n+1)` -/
def P3483011214993306166.Spec : Prop :=
  ∀ n, P3483011214993306166.a n = A229679 (n + 1)

end A229679

/-! ## A229679.P202136642927744127

`record[A280370(n)]*A000384(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A229679

/-- `record[A280370(n)]*A000384(n)` -/
def P202136642927744127.Spec : Prop :=
  ∀ n, P202136642927744127.a n = A229679 (n + 1)

theorem P202136642927744127.correct : P202136642927744127.Spec := by
  intro n
  simp only [A229679, Nat.add_sub_cancel]

end A229679

/-! ## A229679.P12791095436197361347

`A000384(n)*A084509(n+1)`
-/

namespace A229679.P12791095436197361347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n * A084509 (n + 1)

end

end A229679.P12791095436197361347

namespace A229679

/-- `A000384(n)*A084509(n+1)` -/
def P12791095436197361347.Spec : Prop :=
  ∀ n, P12791095436197361347.a n = A229679 (n + 1)

end A229679

/-! ## A229679.P245367226479735430

`A000384(n)*A098011(2*n+1)`
-/

namespace A229679.P245367226479735430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n * A098011 (2 * n + 1)

end

end A229679.P245367226479735430

namespace A229679

/-- `A000384(n)*A098011(2*n+1)` -/
def P245367226479735430.Spec : Prop :=
  ∀ n, P245367226479735430.a n = A229679 (n + 1)

end A229679

/-! ## A229679.P16539083126832059296

`n*A098011(2*n+1)*A289207(2*n+1)`
-/

namespace A229679.P16539083126832059296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A098011 (2 * n + 1) * A289207 (2 * n + 1))

end

end A229679.P16539083126832059296

namespace A229679

/-- `n*A098011(2*n+1)*A289207(2*n+1)` -/
def P16539083126832059296.Spec : Prop :=
  ∀ n, P16539083126832059296.a n = A229679 (n + 1)

end A229679

/-! ## A229679.P14192789298716502036

`A036561(A152947(n+1))*A086950(n)`
-/

namespace A229679.P14192789298716502036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A152947 (n + 1)).toNat * A086950 n

end

end A229679.P14192789298716502036

namespace A229679

/-- `A036561(A152947(n+1))*A086950(n)` -/
def P14192789298716502036.Spec : Prop :=
  ∀ n, P14192789298716502036.a n = A229679 (n + 1)

end A229679

/-! ## A229679.P6629988810631465423

`n*A133086(A004273(n))-A002699(n)`
-/

namespace A229679.P6629988810631465423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133086 (A004273 n).toNat - A002699 n

end

end A229679.P6629988810631465423

namespace A229679

/-- `n*A133086(A004273(n))-A002699(n)` -/
def P6629988810631465423.Spec : Prop :=
  ∀ n, P6629988810631465423.a n = A229679 (n + 1)

end A229679

/-! ## A229679.P3126658631775082546

`A000384(n)*A119440(n²)`
-/

namespace A229679.P3126658631775082546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n * A119440 (n ^ 2)

end

end A229679.P3126658631775082546

namespace A229679

/-- `A000384(n)*A119440(n²)` -/
def P3126658631775082546.Spec : Prop :=
  ∀ n, P3126658631775082546.a n = A229679 (n + 1)

end A229679

/-!
# A229680: Number of defective 3-colorings of an n X 3 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229680, there is no canonical definition to state claims against.
-/

/-! ## A229680.P9605593014965477231

`A229685(∑[n+2]+4)`
-/

namespace A229680.P9605593014965477231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229680.P9605593014965477231

/-!
# A229681: Number of defective 3-colorings of an n X 4 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229681, there is no canonical definition to state claims against.
-/

/-! ## A229681.P10537534195239371538

`A229685(∑[n+3]+7)`
-/

namespace A229681.P10537534195239371538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A229681.P10537534195239371538

/-! ## A229681.P6238510301690955932

`record[A010054(n+4)*A229685(n+1)]`
-/

namespace A229681.P6238510301690955932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4) * A229685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229681.P6238510301690955932

/-!
# A229682: Number of defective 3-colorings of an n X 5 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229682, there is no canonical definition to state claims against.
-/

/-! ## A229682.P14128524152433709484

`A229685(A374005(n+1))`
-/

namespace A229682.P14128524152433709484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A374005 (n + 1)).toNat

end

end A229682.P14128524152433709484

/-!
# A229683: Number of defective 3-colorings of an n X 6 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229683, there is no canonical definition to state claims against.
-/

/-! ## A229683.P39486072249007599

`A229685(A374007(n+1))`
-/

namespace A229683.P39486072249007599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A374007 (n + 1)).toNat

end

end A229683.P39486072249007599

/-!
# A229684: Number of defective 3-colorings of an n X 7 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229684, there is no canonical definition to state claims against.
-/

/-! ## A229684.P8553586410265267382

`A229685(A374008(n+1))`
-/

namespace A229684.P8553586410265267382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229685 (A374008 (n + 1)).toNat

end

end A229684.P8553586410265267382

/-!
# A229685: T(n,k) = number of defective 3-colorings of an n X k 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229685, there is no canonical definition to state claims against.
-/

/-! ## A229685.P11938490199663686995

`A025429(7^A007318(n))`
-/

namespace A229685.P11938490199663686995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A229685.P11938490199663686995

/-! ## A229685.P4895636336816987609

`A126164(A007318(n)!²)`
-/

namespace A229685.P4895636336816987609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126164 (Nat.factorial (A007318 n).toNat ^ 2)

end

end A229685.P4895636336816987609

/-! ## A229685.P10373448918349749067

`A284270(A027164(n+1))`
-/

namespace A229685.P10373448918349749067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284270 (A027164 (n + 1)).toNat

end

end A229685.P10373448918349749067

/-! ## A229685.P14080079697801279379

`A279360(A280224(A033461(A280225(n+2))))`
-/

namespace A229685.P14080079697801279379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279360 (A280224 (A033461 (A280225 (n + 2)).toNat).toNat).toNat

end

end A229685.P14080079697801279379

/-!
# A229687: Odd squares whose binary reversal is also a square.

The programs for A229687, there is no canonical definition to state claims against.
-/

/-! ## A229687.P16326801781538613051

`A229766(n+1)²`
-/

namespace A229687.P16326801781538613051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229766 (n + 1) ^ 2

end

end A229687.P16326801781538613051

/-! ## A229687.P17794128387477194791

`record[A229766(A344180(n))²]`
-/

namespace A229687.P17794128387477194791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229766 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229687.P17794128387477194791

/-! ## A229687.P11038242931906344447

`A229766(1+n)*A229766(n+1)`
-/

namespace A229687.P11038242931906344447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229766 (1 + n) * A229766 (n + 1)

end

end A229687.P11038242931906344447

/-! ## A229687.P11388120589696930297

`A229766(n+1)^A000040(A007318(∑[n]))`
-/

namespace A229687.P11388120589696930297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229766 (n + 1) : ℚ) ^ (A000040 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A229687.P11388120589696930297

/-!
# A229688: Number of defective 3-colorings of an n X n 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229688, there is no canonical definition to state claims against.
-/

/-! ## A229688.P1430071431989920643

`A229694(∑[4*n]+1)`
-/

namespace A229688.P1430071431989920643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229688.P1430071431989920643

/-! ## A229688.P3431005059991100643

`record[A229694(n*A008619(n)+1)]`
-/

namespace A229688.P3431005059991100643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 ((n : ℤ) * A008619 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229688.P3431005059991100643

/-!
# A229689: Number of defective 3-colorings of an n X 3 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229689, there is no canonical definition to state claims against.
-/

/-! ## A229689.P7362942561725086818

`A229694(∑[n+3]+1)`
-/

namespace A229689.P7362942561725086818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229689.P7362942561725086818

/-!
# A229690: Number of defective 3-colorings of an nX4 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229690, there is no canonical definition to state claims against.
-/

/-! ## A229690.P9800680559572902129

`A229695(2*(1+n))`
-/

namespace A229690.P9800680559572902129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229695 (2 * (1 + n))

end

end A229690.P9800680559572902129

/-! ## A229690.P14266291544901440905

`A229694(A141214(n+1))`
-/

namespace A229690.P14266291544901440905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A141214 (n + 1)).toNat

end

end A229690.P14266291544901440905

/-! ## A229690.P9970273495070918789

`A229694(A096376(n+1))`
-/

namespace A229690.P9970273495070918789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A096376 (n + 1)).toNat

end

end A229690.P9970273495070918789

/-!
# A229691: Number of defective 3-colorings of an nX5 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229691, there is no canonical definition to state claims against.
-/

/-! ## A229691.P12130866842439366506

`A229694(Δ[A264443(n)])`
-/

namespace A229691.P12130866842439366506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (f1 (n + 1) - f1 n).toNat

end

end A229691.P12130866842439366506

/-!
# A229692: Number of defective 3-colorings of an n X 6 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229692, there is no canonical definition to state claims against.
-/

/-! ## A229692.P16431259882234447187

`A229694(eq[3, A219347(n)])`
-/

namespace A229692.P16431259882234447187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229692.P16431259882234447187

/-!
# A229693: Number of defective 3-colorings of an n X 7 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229693, there is no canonical definition to state claims against.
-/

/-! ## A229693.P8043967009073609237

`A229694(eq[4, A219347(n)])`
-/

namespace A229693.P8043967009073609237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229693.P8043967009073609237

/-!
# A229695: Number of defective 3-colorings of a 2Xn 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229695, there is no canonical definition to state claims against.
-/

/-! ## A229695.P5443147910244881579

`A229694(∑[n+1]+2)`
-/

namespace A229695.P5443147910244881579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229695.P5443147910244881579

/-! ## A229695.P6098414706798164304

`record[A229694(A106247(n)+1)]`
-/

namespace A229695.P6098414706798164304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A106247 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229695.P6098414706798164304

/-! ## A229695.P12734977556833059537

`record[A229694(A133263(∑{digits}[n, #]))]`
-/

namespace A229695.P12734977556833059537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A133263 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229695.P12734977556833059537

/-!
# A229696: Number of defective 3-colorings of a 3 X n 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229696, there is no canonical definition to state claims against.
-/

/-! ## A229696.P9695759573606016407

`A229694(∑[n+2]+4)`
-/

namespace A229696.P9695759573606016407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229696.P9695759573606016407

/-!
# A229697: Number of defective 3-colorings of a 4 X n 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229697, there is no canonical definition to state claims against.
-/

/-! ## A229697.P6806301374963289135

`A229694(A141214(n)+7)`
-/

namespace A229697.P6806301374963289135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A141214 n + 7).toNat

end

end A229697.P6806301374963289135

/-!
# A229698: Number of defective 3-colorings of a 5 X n 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229698, there is no canonical definition to state claims against.
-/

/-! ## A229698.P11975993764546196412

`A229694(A167499(n+3))`
-/

namespace A229698.P11975993764546196412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A167499 (n + 3)).toNat

end

end A229698.P11975993764546196412

/-!
# A229699: Number of defective 3-colorings of a 6 X n 0..2 array connected horizontally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229699, there is no canonical definition to state claims against.
-/

/-! ## A229699.P416457612236587282

`A229694(A166136(n+4))`
-/

namespace A229699.P416457612236587282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229694 (A166136 (n + 4)).toNat

end

end A229699.P416457612236587282

