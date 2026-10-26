import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A376901: a(n) = (n*(n-1)+(-1)^n+5)/2.

The programs for A376901, the canonical program `A376901.P12821249002666012520` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376901 has offset 0).

The definition of A376901 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n*(n-1)+(-1)^n+5)/2` (program `A376901.P7007714196151462732`, by `A376901.P7007714196151462732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376901.P7007714196151462732

`(n*(n-1)+(-1)^n+5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376901.P7007714196151462732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) + (-1) ^ n + 5 : ℚ) / 2

end

end A376901.P7007714196151462732

namespace A376901

/-- `(n*(n-1)+(-1)^n+5)/2` -/
def P7007714196151462732.Spec : Prop :=
  ∀ n, P7007714196151462732.a n = (A376901 n : ℚ)

theorem P7007714196151462732.correct : P7007714196151462732.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A376901, Nat.add_sub_cancel, A376901.P7007714196151462732.a, A376901.P12821249002666012520.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A376901, Nat.add_sub_cancel, A376901.P7007714196151462732.a, A376901.P12821249002666012520.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A376901

/-! ## A376901.P17326551130944090870

`or(3, n²)-∑[n]`
-/

namespace A376901.P17326551130944090870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (n ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A376901.P17326551130944090870

namespace A376901

/-- `or(3, n²)-∑[n]` -/
def P17326551130944090870.Spec : Prop :=
  ∀ n, P17326551130944090870.a n = A376901 n

end A376901

/-! ## A376901.P7362011570067246426

`∑[xor(1, n)-1]+3`
-/

namespace A376901.P7362011570067246426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A376901.P7362011570067246426

namespace A376901

/-- `∑[xor(1, n)-1]+3` -/
def P7362011570067246426.Spec : Prop :=
  ∀ n, P7362011570067246426.a n = A376901 n

end A376901

/-! ## A376901.P17016584260323148376

`3-∑[xor(1, 1-n)]`
-/

namespace A376901.P17016584260323148376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376901.P17016584260323148376

namespace A376901

/-- `3-∑[xor(1, 1-n)]` -/
def P17016584260323148376.Spec : Prop :=
  ∀ n, P17016584260323148376.a n = A376901 n

end A376901

/-! ## A376901.P9807846343114234891

`∑[n]+or(1, 2-n)`
-/

namespace A376901.P9807846343114234891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.lor 1 (2 - (n : ℤ))

end

end A376901.P9807846343114234891

namespace A376901

/-- `∑[n]+or(1, 2-n)` -/
def P9807846343114234891.Spec : Prop :=
  ∀ n, P9807846343114234891.a n = A376901 n

end A376901

/-! ## A376901.P13587693999022539077

`gcd(2, n)+C(n, 2)+1`
-/

namespace A376901.P13587693999022539077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + (Nat.choose n 2 + 1)

end

end A376901.P13587693999022539077

namespace A376901

/-- `gcd(2, n)+C(n, 2)+1` -/
def P13587693999022539077.Spec : Prop :=
  ∀ n, (P13587693999022539077.a n : ℤ) = A376901 n

end A376901

/-! ## A376901.P13695063650240166577

`2-(or(1, n-1)-∑[n])`
-/

namespace A376901.P13695063650240166577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.lor 1 ((n : ℤ) - 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A376901.P13695063650240166577

namespace A376901

/-- `2-(or(1, n-1)-∑[n])` -/
def P13695063650240166577.Spec : Prop :=
  ∀ n, P13695063650240166577.a n = A376901 n

end A376901

/-! ## A376901.P6068779291877080711

`∑[n-1]-and(1, n)+4`
-/

namespace A376901.P6068779291877080711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 1 n : ℤ) + 4

end

end A376901.P6068779291877080711

namespace A376901

/-- `∑[n-1]-and(1, n)+4` -/
def P6068779291877080711.Spec : Prop :=
  ∀ n, P6068779291877080711.a n = A376901 n

end A376901

/-! ## A376901.P17194683920563634348

`4-(and(1, n)-∑[n-1])`
-/

namespace A376901.P17194683920563634348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((Nat.land 1 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376901.P17194683920563634348

namespace A376901

/-- `4-(and(1, n)-∑[n-1])` -/
def P17194683920563634348.Spec : Prop :=
  ∀ n, P17194683920563634348.a n = A376901 n

end A376901

/-! ## A376901.P6151988464473474597

`∑[a(n-2)+2]` with `a(0)=3, a(1)=-1, a(2)=2`
-/

namespace A376901.P6151988464473474597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, 2] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376901.P6151988464473474597

namespace A376901

/-- `∑[a(n-2)+2]` -/
def P6151988464473474597.Spec : Prop :=
  ∀ n, P6151988464473474597.a n = A376901 n

end A376901

/-! ## A376901.P990878652759204157

`3-∑[a(n-2)-2]` with `a(0)=0, a(1)=1`
-/

namespace A376901.P990878652759204157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376901.P990878652759204157

namespace A376901

/-- `3-∑[a(n-2)-2]` -/
def P990878652759204157.Spec : Prop :=
  ∀ n, P990878652759204157.a n = A376901 n

end A376901

/-! ## A376901.P9043472826877348994

`and(1, n+1)+C(n, 2)+2`
-/

namespace A376901.P9043472826877348994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + (Nat.choose n 2 + 2)

end

end A376901.P9043472826877348994

namespace A376901

/-- `and(1, n+1)+C(n, 2)+2` -/
def P9043472826877348994.Spec : Prop :=
  ∀ n, (P9043472826877348994.a n : ℤ) = A376901 n

end A376901

/-! ## A376901.P343011429242173656

`xor(1, n)+a(n-1)-1` with `a(0)=3`
-/

namespace A376901.P343011429242173656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Nat.xor 1 n : ℤ) + (a (n - 1) - 1)

end

end A376901.P343011429242173656

namespace A376901

/-- `xor(1, n)+a(n-1)-1` -/
def P343011429242173656.Spec : Prop :=
  ∀ n, P343011429242173656.a n = A376901 n

end A376901

/-! ## A376901.P17325278006611735881

`xor(1, n)-(1-a(n-1))` with `a(0)=3`
-/

namespace A376901.P17325278006611735881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Nat.xor 1 n : ℤ) - (1 - a (n - 1))

end

end A376901.P17325278006611735881

namespace A376901

/-- `xor(1, n)-(1-a(n-1))` -/
def P17325278006611735881.Spec : Prop :=
  ∀ n, P17325278006611735881.a n = A376901 n

end A376901

/-! ## A376901.P5216117053827646382

`ogf((3-4x+3x^3)/(1-2x+2x^3-x^4))`
-/

namespace A376901.P5216117053827646382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, 0, 3] [1, -2, 0, 2, -1] n

end

end A376901.P5216117053827646382

namespace A376901

/-- `ogf((3-4x+3x^3)/(1-2x+2x^3-x^4))` -/
def P5216117053827646382.Spec : Prop :=
  ∀ n, P5216117053827646382.a n = A376901 n

end A376901

/-! ## A376901.P3252103832929265882

`2*n+a(n-2)-3` with `a(0)=3, a(1)=2`
-/

namespace A376901.P3252103832929265882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  (2 * n : ℤ) + (a (n - 2) - 3)

end

end A376901.P3252103832929265882

namespace A376901

/-- `2*n+a(n-2)-3` -/
def P3252103832929265882.Spec : Prop :=
  ∀ n, P3252103832929265882.a n = A376901 n

end A376901

/-! ## A376901.P9917711742879833912

`2*n-(3-a(n-2))` with `a(0)=3, a(1)=2`
-/

namespace A376901.P9917711742879833912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  (2 * n : ℤ) - (3 - a (n - 2))

end

end A376901.P9917711742879833912

namespace A376901

/-- `2*n-(3-a(n-2))` -/
def P9917711742879833912.Spec : Prop :=
  ∀ n, P9917711742879833912.a n = A376901 n

end A376901

/-! ## A376901.P13623738951278312963

`a(n-2)-3+n+n` with `a(0)=3, a(1)=2`
-/

namespace A376901.P13623738951278312963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 2) - 3 + (n : ℤ) + (n : ℤ)

end

end A376901.P13623738951278312963

namespace A376901

/-- `a(n-2)-3+n+n` -/
def P13623738951278312963.Spec : Prop :=
  ∀ n, P13623738951278312963.a n = A376901 n

theorem P13623738951278312963.correct : P13623738951278312963.Spec := by
  intro n
  simp only [A376901, Nat.add_sub_cancel, A376901.P13623738951278312963.a, A376901.P12821249002666012520.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A376901

/-! ## A376901.P12821249002666012520

`a(n-2)-(3-n-n)` with `a(0)=3, a(1)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A376901

/-- `a(n-2)-(3-n-n)` -/
def P12821249002666012520.Spec : Prop :=
  ∀ n, P12821249002666012520.a n = A376901 n

theorem P12821249002666012520.correct : P12821249002666012520.Spec := by
  intro n
  simp only [A376901]

end A376901

/-! ## A376901.P3248475844339572306

`(n+1)%2+∑[n-1]+3`
-/

namespace A376901.P3248475844339572306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A376901.P3248475844339572306

namespace A376901

/-- `(n+1)%2+∑[n-1]+3` -/
def P3248475844339572306.Spec : Prop :=
  ∀ n, P3248475844339572306.a n = A376901 n

end A376901

/-!
# A376905: Lexicographically earliest sequence of distinct positive integers with a(1) multiples of a number b(1) followed by a(2) multiples of a number b(2) etc.

The programs for A376905, there is no canonical definition to state claims against.
-/

/-! ## A376905.P14838966862113689095

`Δ[record[A376906(n+1)]]`
-/

namespace A376905.P14838966862113689095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376906 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376905.P14838966862113689095

/-!
# A376907: a(n) is the least n-digit cuban prime.

The programs for A376907, there is no canonical definition to state claims against.
-/

/-! ## A376907.P2235585631793348627

`A002407(A113478(n)+1)`
-/

namespace A376907.P2235585631793348627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002407 (A113478 n + 1).toNat

end

end A376907.P2235585631793348627

/-! ## A376907.P16508871959532636401

`A334520(A113478(n)+2)`
-/

namespace A376907.P16508871959532636401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334520 (A113478 n + 2).toNat

end

end A376907.P16508871959532636401

/-! ## A376907.P5504536896403814683

`A002407(A210520(2*n)+1)`
-/

namespace A376907.P5504536896403814683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002407 (A210520 (2 * n) + 1).toNat

end

end A376907.P5504536896403814683

/-!
# A376916: Primes that are the sum of some number of consecutive prime squares.

The programs for A376916, there is no canonical definition to state claims against.
-/

/-! ## A376916.P1934489853151302168

`p?[A340771(n+1)]`
-/

namespace A376916.P1934489853151302168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A376916.P1934489853151302168

/-! ## A376916.P4612131418725099213

`∩[A244637(n+1), A340771(n+1)]`
-/

namespace A376916.P4612131418725099213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376916.P4612131418725099213

/-! ## A376916.P11861579806483368016

`record[A020639(A340771(n+3))]`
-/

namespace A376916.P11861579806483368016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A340771 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376916.P11861579806483368016

/-! ## A376916.P3957221806235570443

`filter[A340771(n+1), A010051(#)]`
-/

namespace A376916.P3957221806235570443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A376916.P3957221806235570443

/-! ## A376916.P5720692507083273373

`∩[A000040(n+1), A340771(n+1)]`
-/

namespace A376916.P5720692507083273373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376916.P5720692507083273373

/-!
# A376918: Number of digit patterns of length n without common prime factors of a different digital type.

The programs for A376918, there is no canonical definition to state claims against.
-/

/-! ## A376918.P17194289891595041197

`A164864(n+1)-A378199(n+1)`
-/

namespace A376918.P17194289891595041197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164864 (n + 1) - A378199 (n + 1)

end

end A376918.P17194289891595041197

/-! ## A376918.P4344240904289716324

`A267013(n+1)+A377727(n+1)`
-/

namespace A376918.P4344240904289716324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267013 (n + 1) + A377727 (n + 1)

end

end A376918.P4344240904289716324

/-! ## A376918.P3347157170204821878

`A164904(2*n+1)-A378199(n+1)`
-/

namespace A376918.P3347157170204821878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164904 (2 * n + 1) - A378199 (n + 1)

end

end A376918.P3347157170204821878

/-! ## A376918.P3364699297143018872

`A267013(lt[n-floor(sqrt(n))², n%10])`
-/

namespace A376918.P3364699297143018872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267013 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A376918.P3364699297143018872

/-! ## A376918.P6557642720751722797

`A267013(A051885(n+1))`
-/

namespace A376918.P6557642720751722797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267013 (A051885 (n + 1)).toNat

end

end A376918.P6557642720751722797

/-!
# A376919: The nonpowers of 3.

The programs for A376919, the canonical program `A376919.P796769613853549818` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376919 has offset 0).

The definition of A376919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376919.P796769613853549818

`comp[3^n]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A376919

/-- `comp[3^n]` -/
def P796769613853549818.Spec : Prop :=
  ∀ n, (P796769613853549818.a n : ℤ) = A376919 n

theorem P796769613853549818.correct : P796769613853549818.Spec := by
  intro n
  simp only [A376919]

end A376919

/-! ## A376919.P12245712844448184804

`comp[3*a(n-1)]%comp[∑[n]]` with `a(0)=1`
-/

namespace A376919.P12245712844448184804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A376919.P12245712844448184804

namespace A376919

/-- `comp[3*a(n-1)]%comp[∑[n]]` -/
def P12245712844448184804.Spec : Prop :=
  ∀ n, (P12245712844448184804.a n : ℤ) = A376919 n

end A376919

/-! ## A376919.P15459158200436609617

`∪[2*n, A064479(n)]`
-/

namespace A376919.P15459158200436609617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064479 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376919.P15459158200436609617

namespace A376919

/-- `∪[2*n, A064479(n)]` -/
def P15459158200436609617.Spec : Prop :=
  ∀ n, (P15459158200436609617.a n : ℤ) = A376919 n

end A376919

/-! ## A376919.P14857878806233389833

`∪[2*n, A014528(n+1)]`
-/

namespace A376919.P14857878806233389833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376919.P14857878806233389833

namespace A376919

/-- `∪[2*n, A014528(n+1)]` -/
def P14857878806233389833.Spec : Prop :=
  ∀ n, (P14857878806233389833.a n : ℤ) = A376919 n

end A376919

/-! ## A376919.P15592068484175970654

`∪[2*n, A059485(n+1)]`
-/

namespace A376919.P15592068484175970654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376919.P15592068484175970654

namespace A376919

/-- `∪[2*n, A059485(n+1)]` -/
def P15592068484175970654.Spec : Prop :=
  ∀ n, (P15592068484175970654.a n : ℤ) = A376919 n

end A376919

/-! ## A376919.P2673502330658338272

`∪[2*n, A280199(n+1)]`
-/

namespace A376919.P2673502330658338272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376919.P2673502330658338272

namespace A376919

/-- `∪[2*n, A280199(n+1)]` -/
def P2673502330658338272.Spec : Prop :=
  ∀ n, (P2673502330658338272.a n : ℤ) = A376919 n

end A376919

/-! ## A376919.P13795007350626758222

`∪[2*n, A392782(n+1)]`
-/

namespace A376919.P13795007350626758222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376919.P13795007350626758222

namespace A376919

/-- `∪[2*n, A392782(n+1)]` -/
def P13795007350626758222.Spec : Prop :=
  ∀ n, (P13795007350626758222.a n : ℤ) = A376919 n

end A376919

/-! ## A376919.P6615035113257611370

`∪[A059485(n+1), A005843(n)]`
-/

namespace A376919.P6615035113257611370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376919.P6615035113257611370

namespace A376919

/-- `∪[A059485(n+1), A005843(n)]` -/
def P6615035113257611370.Spec : Prop :=
  ∀ n, (P6615035113257611370.a n : ℤ) = A376919 n

end A376919

/-! ## A376919.P13812385348612585722

`∪[A280199(n+1), A005843(n)]`
-/

namespace A376919.P13812385348612585722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376919.P13812385348612585722

namespace A376919

/-- `∪[A280199(n+1), A005843(n)]` -/
def P13812385348612585722.Spec : Prop :=
  ∀ n, (P13812385348612585722.a n : ℤ) = A376919 n

end A376919

/-! ## A376919.P8517164468311545319

`∪[A392782(n+1), A005843(n)]`
-/

namespace A376919.P8517164468311545319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376919.P8517164468311545319

namespace A376919

/-- `∪[A392782(n+1), A005843(n)]` -/
def P8517164468311545319.Spec : Prop :=
  ∀ n, (P8517164468311545319.a n : ℤ) = A376919 n

end A376919

/-! ## A376919.P15763482740414761988

`eq[0, char[3^n]]`
-/

namespace A376919.P15763482740414761988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376919.P15763482740414761988

namespace A376919

/-- `eq[0, char[3^n]]` -/
def P15763482740414761988.Spec : Prop :=
  ∀ n, (P15763482740414761988.a n : ℤ) = A376919 n

end A376919

/-! ## A376919.P13256723222116449949

`lt[char[3^n], 1]`
-/

namespace A376919.P13256723222116449949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A376919.P13256723222116449949

namespace A376919

/-- `lt[char[3^n], 1]` -/
def P13256723222116449949.Spec : Prop :=
  ∀ n, (P13256723222116449949.a n : ℤ) = A376919 n

end A376919

/-!
# A376922: Variance of n-th power of a standard normal random variable.

The programs for A376922, there is no canonical definition to state claims against.
-/

/-! ## A376922.P16963452181804247010

`A001147(n+1)-A177145(n+2)`
-/

namespace A376922.P16963452181804247010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) - A177145 (n + 2)

end

end A376922.P16963452181804247010

/-! ## A376922.P9561251748948971742

`A001147(n+1)-A123023(n+1)²`
-/

namespace A376922.P9561251748948971742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) - A123023 (n + 1) ^ 2

end

end A376922.P9561251748948971742

/-! ## A376922.P721422809488999332

`A072346(2*n+1)-A123023(n+1)²`
-/

namespace A376922.P721422809488999332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072346 (2 * n + 1) - A123023 (n + 1) ^ 2

end

end A376922.P721422809488999332

/-!
# A376926: a(n) is the number of ways n can be written as x + y with x >= y, x and y coprime, and so that the distinct prime factors of x*y*n are consecutive primes starting with 2.

The programs for A376926, there is no canonical definition to state claims against.
-/

/-! ## A376926.P6090403722078294814

`A210255(A299260(n+2)-A082327(n))`
-/

namespace A376926.P6090403722078294814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210255 (A299260 (n + 2) - A082327 n).toNat

end

end A376926.P6090403722078294814

/-! ## A376926.P4143291166828193644

`A286293(A327766(n))%A000005(n+1)`
-/

namespace A376926.P4143291166828193644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286293 (A327766 n).toNat) (A000005 (n + 1))

end

end A376926.P4143291166828193644

/-! ## A376926.P1519522149673561742

`A138149(A001969(3*(n+1)))+A010060(2*n+3)`
-/

namespace A376926.P1519522149673561742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138149 (A001969 (3 * (n + 1))).toNat + A010060 (2 * n + 3)

end

end A376926.P1519522149673561742

/-!
# A376927: Totients whose inverses can be separated into ordered pairs (x, 2*x) with no remainder.

The programs for A376927, there is no canonical definition to state claims against.
-/

/-! ## A376927.P18183000004444028033

`eq[A059126(A057628(n+1)), A237984(n+1)]`
-/

namespace A376927.P18183000004444028033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (A057628 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237984 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376927.P18183000004444028033

/-! ## A376927.P14778262278150627719

`lt[A051444(A192176(n+1)), A049084(n+1)]`
-/

namespace A376927.P14778262278150627719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A192176 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376927.P14778262278150627719

/-! ## A376927.P15363902076388598940

`eq[A010060(A335674(n+2)), A322382(n+1)]`
-/

namespace A376927.P15363902076388598940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A335674 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376927.P15363902076388598940

/-! ## A376927.P6307906990246968996

`eq[A000035(A304714(n+4)), A347963(n+1)]`
-/

namespace A376927.P6307906990246968996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A304714 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376927.P6307906990246968996

/-! ## A376927.P17102342931083316691

`eq[A010060(A210391(2*n+1)), A051953(n+1)]`
-/

namespace A376927.P17102342931083316691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A210391 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376927.P17102342931083316691

/-!
# A376928: The largest noncomposite number k such that n is divisible by all the primes that do not exceed k.

The programs for A376928, there is no canonical definition to state claims against.
-/

/-! ## A376928.P11596294506719783565

`A329900(∏{p}[n+1, #])`
-/

namespace A376928.P11596294506719783565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A376928.P11596294506719783565

/-!
# A376931: Number of points out of n points placed on a circle that can never be reached when starting at one point and then moving clockwise in incrementally increasing steps (first 1, then 2, 3, 4, ...).

The programs for A376931, there is no canonical definition to state claims against.
-/

/-! ## A376931.P8839272395356784392

`n+1-A117484(n+1)`
-/

namespace A376931.P8839272395356784392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A117484 (n + 1)

end

end A376931.P8839272395356784392

/-! ## A376931.P10127755902198467073

`2^val(n+1, 2)*A095972((n+1)/2^val(n+1, 2))`
-/

namespace A376931.P10127755902198467073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A095972 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A376931.P10127755902198467073

/-! ## A376931.P2404872918056910680

`A024000(A117484(n+1))+n`
-/

namespace A376931.P2404872918056910680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A117484 (n + 1)).toNat + (n : ℤ)

end

end A376931.P2404872918056910680

/-! ## A376931.P6414639108563685678

`A024000(2^val(n+1, 2)*A000224((n+1)/2^val(n+1, 2)))+n`
-/

namespace A376931.P6414639108563685678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 ((2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A000224 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat + (n : ℤ)

end

end A376931.P6414639108563685678

/-! ## A376931.P12558680289624898857

`n+1-A290731(2*(n+1))`
-/

namespace A376931.P12558680289624898857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A290731 (2 * (n + 1))

end

end A376931.P12558680289624898857

/-!
# A376932: a(n) is the index of the first GF(2)[X] polynomial that has n distinct irreducible factors.

The programs for A376932, there is no canonical definition to state claims against.
-/

/-! ## A376932.P3086362788231463156

`A091202(A002110(n))`
-/

namespace A376932.P3086362788231463156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A002110 n).toNat

end

end A376932.P3086362788231463156

/-! ## A376932.P15413321038105211297

`A091202(A246868(∑[n]))`
-/

namespace A376932.P15413321038105211297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A246868 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A376932.P15413321038105211297

/-!
# A376933: a(n) = (A376907(n) - 10^(n-1))/3.

The programs for A376933, there is no canonical definition to state claims against.
-/

/-! ## A376933.P12669482747374198128

`(A376907(n+1)-10^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376933.P12669482747374198128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376907 (n + 1) - (10 ^ n : ℤ) : ℚ) / 3

end

end A376933.P12669482747374198128

/-!
# A376934: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, Sum_{k = 1..n} 1/(k*a(k)) < Pi.

The programs for A376934, there is no canonical definition to state claims against.
-/

/-! ## A376934.P3189017636858252509

`A109390(A350695(n))`
-/

namespace A376934.P3189017636858252509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109390 (A350695 n).toNat

end

end A376934.P3189017636858252509

/-! ## A376934.P11908727188333645071

`A048570(A014375(n)*A187829(n+1))`
-/

namespace A376934.P11908727188333645071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048570 (A014375 n * A187829 (n + 1)).toNat

end

end A376934.P11908727188333645071

/-! ## A376934.P13863638704165510484

`A156253(C(A168084(n+4), A168084(n+1)))`
-/

namespace A376934.P13863638704165510484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (Nat.choose (A168084 (n + 4)).toNat (A168084 (n + 1)).toNat)

end

end A376934.P13863638704165510484

/-! ## A376934.P16652160054171952934

`A371178(A000009(A000009(A335746(n))))`
-/

namespace A376934.P16652160054171952934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371178 (A000009 (A000009 (A335746 n).toNat).toNat).toNat

end

end A376934.P16652160054171952934

/-! ## A376934.P14117627741724158172

`A005185(A004001(A202823(A005708(A005708(n)))))`
-/

namespace A376934.P14117627741724158172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A004001 (A202823 (A005708 (A005708 n).toNat).toNat).toNat).toNat

end

end A376934.P14117627741724158172

/-!
# A376935: Array read by antidiagonals: T(n,k) is the number of 2*n X 2*k binary matrices with all row sums k and column sums n.

The programs for A376935, there is no canonical definition to state claims against.
-/

/-! ## A376935.P4051053179543930737

`A289498(A157640(n))`
-/

namespace A376935.P4051053179543930737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (A157640 n).toNat

end

end A376935.P4051053179543930737

/-! ## A376935.P18166492927733656382

`A247306(A132789(n+1)+n²%3)-A001791(A051775(n))`
-/

namespace A376935.P18166492927733656382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247306 (A132789 (n + 1) + ((n ^ 2 % 3 : ℕ) : ℤ)).toNat - A001791 (A051775 n).toNat

end

end A376935.P18166492927733656382

/-! ## A376935.P5773883036514339358

`A051537(A321716(n+1))`
-/

namespace A376935.P5773883036514339358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A321716 (n + 1)).toNat

end

end A376935.P5773883036514339358

/-! ## A376935.P3020459422122752012

`A008300(n)-A349798(A000041(n))`
-/

namespace A376935.P3020459422122752012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008300 n - A349798 (A000041 n).toNat

end

end A376935.P3020459422122752012

/-! ## A376935.P17806123282951477961

`A000666(A025581(n)*A201145(n+1))`
-/

namespace A376935.P17806123282951477961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000666 (A025581 n * A201145 (n + 1)).toNat

end

end A376935.P17806123282951477961

/-!
# A376936: Powerful numbers divisible by cubes of 2 distinct primes.

The programs for A376936, there is no canonical definition to state claims against.
-/

/-! ## A376936.P1254872366023235403

`∪[A372695(n+1), A378769(n+1)]`
-/

namespace A376936.P1254872366023235403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376936.P1254872366023235403

/-! ## A376936.P18203347163696784875

`∪[A378769(n+1), A391896(n+1)]`
-/

namespace A376936.P18203347163696784875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376936.P18203347163696784875

/-! ## A376936.P12563162491831394222

`∩[A001694(n+1), A391968(n+1)]`
-/

namespace A376936.P12563162491831394222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376936.P12563162491831394222

/-! ## A376936.P16909304503919583272

`∩[A192636(n+1), A391968(n+1)]`
-/

namespace A376936.P16909304503919583272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376936.P16909304503919583272

/-! ## A376936.P11226182528806276221

`∩[A286708(n+1), A391968(n+1)]`
-/

namespace A376936.P11226182528806276221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376936.P11226182528806276221

/-! ## A376936.P6204806995588765701

`∩[A320966(n+1), A391968(n+1)]`
-/

namespace A376936.P6204806995588765701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376936.P6204806995588765701

/-! ## A376936.P629038590019728051

`∩[A372404(n+1), A391968(n+1)]`
-/

namespace A376936.P629038590019728051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376936.P629038590019728051

/-!
# A376937: a(1)=1; thereafter a(n) is the smallest k for which the subsequence a(n-k..n-1) has a distinct rhyme scheme from that of any other subsequence of the sequence thus far.

The programs for A376937, there is no canonical definition to state claims against.
-/

/-! ## A376937.P15254997018604537027

`A109129(A050343(n)+A019565(n))`
-/

namespace A376937.P15254997018604537027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A050343 n + A019565 n).toNat

end

end A376937.P15254997018604537027

/-!
# A376938: a(n) is the degree of extension of Q generated by character values of the n-th alternating group A_n.

The programs for A376938, there is no canonical definition to state claims against.
-/

/-! ## A376938.P8010864955397779203

`2^A376939(n+1)`
-/

namespace A376938.P8010864955397779203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A376939 (n + 1) : ℤ)

end

end A376938.P8010864955397779203

/-! ## A376938.P5180371754145526685

`A000079(A376939(n+1))`
-/

namespace A376938.P5180371754145526685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A376939 (n + 1)).toNat

end

end A376938.P5180371754145526685

/-! ## A376938.P14436013893142209249

`A011782(A376939(n+1)+1)`
-/

namespace A376938.P14436013893142209249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A376939 (n + 1) + 1).toNat

end

end A376938.P14436013893142209249

/-! ## A376938.P15064827166941255600

`A000918(A376939(n+1))+A000034(2*n+1)`
-/

namespace A376938.P15064827166941255600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (A376939 (n + 1)).toNat + A000034 (2 * n + 1)

end

end A376938.P15064827166941255600

/-! ## A376938.P15114803862467587490

`A057427(2*n+1)+A000225(A376939(n+1))`
-/

namespace A376938.P15114803862467587490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * n + 1) + A000225 (A376939 (n + 1)).toNat

end

end A376938.P15114803862467587490

/-! ## A376938.P17586020661801046336

`A131534(3*n+2)+A000225(A376939(n+1))`
-/

namespace A376938.P17586020661801046336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (3 * n + 2) + A000225 (A376939 (n + 1)).toNat

end

end A376938.P17586020661801046336

/-!
# A376939: 2^a(n) is the degree of extension of Q generated by character values of the n-th alternating group A_n; a(n) = log_2 A376938(n).

The programs for A376939, there is no canonical definition to state claims against.
-/

/-! ## A376939.P17144807817285485236

`log2(A376938(n+1))`
-/

namespace A376939.P17144807817285485236
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A376938 (n + 1) : ℝ)

end

end A376939.P17144807817285485236

/-! ## A376939.P8718477138914080174

`∑{d}[A376938(n+1), A001221(#)]`
-/

namespace A376939.P8718477138914080174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A376939.P8718477138914080174

/-! ## A376939.P2177471439718683050

`A001222(A376938(floor(sqrt((n+1)²-1))+1))`
-/

namespace A376939.P2177471439718683050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A376938 (Int.sqrt (((n + 1) ^ 2 : ℤ) - 1) + 1).toNat).toNat

end

end A376939.P2177471439718683050

/-! ## A376939.P18130501739230784448

`A001222(A376938(n+1))%A000124(n)`
-/

namespace A376939.P18130501739230784448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A376938 (n + 1)).toNat) (A000124 n)

end

end A376939.P18130501739230784448

/-! ## A376939.P15915703068632360485

`A001222(A376938(n+1)%A041802(n))`
-/

namespace A376939.P15915703068632360485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A376938 (n + 1)) (A041802 n)).toNat

end

end A376939.P15915703068632360485

/-! ## A376939.P2950503886529000366

`A051903(A376938(n+1))%A003215(n)`
-/

namespace A376939.P2950503886529000366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051903 (A376938 (n + 1)).toNat) (A003215 n)

end

end A376939.P2950503886529000366

/-! ## A376939.P339404365700194899

`A001222(A376938(n+1)+A000007(n+3))`
-/

namespace A376939.P339404365700194899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A376938 (n + 1) + A000007 (n + 3)).toNat

end

end A376939.P339404365700194899

/-! ## A376939.P2950132010142058215

`A051903(A376938(n+1)+A000007(n+3))`
-/

namespace A376939.P2950132010142058215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A376938 (n + 1) + A000007 (n + 3)).toNat

end

end A376939.P2950132010142058215

/-!
# A376940: a(n) is the conductor of extension of Q generated by character values of the n-th alternating group A_n; the smallest m such that the extension is a subfield of the m-th cyclotomic field Q(zeta_m).

The programs for A376940, there is no canonical definition to state claims against.
-/

/-! ## A376940.P15959978800670714842

`filter[A334075(n+1), A248863(#)]`
-/

namespace A376940.P15959978800670714842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248863 (f1 j).toNat = 1) n)

end

end A376940.P15959978800670714842

/-! ## A376940.P13796390337708111469

`or(1, n)*A247306(A284435(n+1))`
-/

namespace A376940.P13796390337708111469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * A247306 (A284435 (n + 1)).toNat

end

end A376940.P13796390337708111469

/-! ## A376940.P15643802188904370131

`filter[A056610(2*(n+1)), A248863(#)]`
-/

namespace A376940.P15643802188904370131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248863 (f1 j).toNat = 1) n)

end

end A376940.P15643802188904370131

/-! ## A376940.P6842376257506381359

`A052928(n)+A003094(A250283(n))`
-/

namespace A376940.P6842376257506381359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n + A003094 (A250283 n).toNat

end

end A376940.P6842376257506381359

/-!
# A376951: Characteristic polynomial of the Pappus graph: a(n) = (n-3)*n^4*(n+3)*(n^2-3)^6.

The programs for A376951, the canonical program `A376951.P16228833019865854251` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376951 has offset 0).

The definition of A376951 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-3)*n^4*(n+3)*(n²-3)^6` (program `A376951.P16228833019865854251`, by `A376951.P16228833019865854251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376951.P183463798319295182

`n^4*(n²-9)*(n²-3)^6`
-/

namespace A376951.P183463798319295182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) * ((n ^ 2 : ℤ) - 9) * ((n ^ 2 : ℤ) - 3) ^ 6

end

end A376951.P183463798319295182

namespace A376951

/-- `n^4*(n²-9)*(n²-3)^6` -/
def P183463798319295182.Spec : Prop :=
  ∀ n, P183463798319295182.a n = A376951 n

theorem P183463798319295182.correct : P183463798319295182.Spec := by
  intro n
  simp only [A376951, Nat.add_sub_cancel, A376951.P183463798319295182.a, A376951.P16228833019865854251.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A376951

/-! ## A376951.P16228833019865854251

`(n-3)*n^4*(n+3)*(n²-3)^6`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A376951

/-- `(n-3)*n^4*(n+3)*(n²-3)^6` -/
def P16228833019865854251.Spec : Prop :=
  ∀ n, P16228833019865854251.a n = A376951 n

theorem P16228833019865854251.correct : P16228833019865854251.Spec := by
  intro n
  simp only [A376951]

end A376951

/-!
# A376952: a(n) = least k such that (n*Pi/2)^(2k)/(2 k)! < 1.

The programs for A376952, there is no canonical definition to state claims against.
-/

/-! ## A376952.P2199737689133671186

`A000196(A152828(2*(n+1))+A062741(n))`
-/

namespace A376952.P2199737689133671186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A152828 (2 * (n + 1)) + A062741 n).toNat

end

end A376952.P2199737689133671186

/-! ## A376952.P17179459864433288121

`floor(sqrt(A016028(3*n+2)))%A307534(n+5)`
-/

namespace A376952.P17179459864433288121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A016028 (3 * n + 2))) (A307534 (n + 5))

end

end A376952.P17179459864433288121

/-! ## A376952.P5960540313924279391

`A000196(A152947(3*n+1)%A337435(n+1))`
-/

namespace A376952.P5960540313924279391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A152947 (3 * n + 1)) (A337435 (n + 1))).toNat

end

end A376952.P5960540313924279391

/-! ## A376952.P11482733575350699594

`A000196(A089071(3*n+1)%A224492(2*n+3))`
-/

namespace A376952.P11482733575350699594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A089071 (3 * n + 1)) (A224492 (2 * n + 3))).toNat

end

end A376952.P11482733575350699594

/-! ## A376952.P694264409036295853

`A000196(A238531(3*n)+A127252(2*n+3))`
-/

namespace A376952.P694264409036295853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A238531 (3 * n) + A127252 (2 * n + 3)).toNat

end

end A376952.P694264409036295853

/-!
# A376953: a(n) = least k such that (n*Pi/3)^(2k)/(2 k)! < 1.

The programs for A376953, there is no canonical definition to state claims against.
-/

/-! ## A376953.P2030296728405284691

`A000196(A126759(n)+A000384(n))`
-/

namespace A376953.P2030296728405284691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A126759 n + A000384 n).toNat

end

end A376953.P2030296728405284691

/-! ## A376953.P352994049872895414

`A000196(A051908(n+1)+A000384(n))`
-/

namespace A376953.P352994049872895414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A051908 (n + 1) + A000384 n).toNat

end

end A376953.P352994049872895414

/-! ## A376953.P11464292633508344038

`A000196(A316854(n+1)+A000384(n))`
-/

namespace A376953.P11464292633508344038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A316854 (n + 1) + A000384 n).toNat

end

end A376953.P11464292633508344038

/-! ## A376953.P9724219748631678936

`A000196(A316854(n+1)+A130883(n))`
-/

namespace A376953.P9724219748631678936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A316854 (n + 1) + A130883 n).toNat

end

end A376953.P9724219748631678936

/-! ## A376953.P13205908706536878551

`A003056(A335513(n+1)+A002061(n))`
-/

namespace A376953.P13205908706536878551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A335513 (n + 1) + A002061 n).toNat

end

end A376953.P13205908706536878551

/-! ## A376953.P3594875035955673674

`A049472(2*n+1)+A008683(A094802(n+1))`
-/

namespace A376953.P3594875035955673674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (2 * n + 1) + A008683 (A094802 (n + 1)).toNat

end

end A376953.P3594875035955673674

/-! ## A376953.P17030580552271953333

`A180447(A082068(2*n+1)+A000567(n))`
-/

namespace A376953.P17030580552271953333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A082068 (2 * n + 1) + A000567 n).toNat

end

end A376953.P17030580552271953333

/-!
# A376954: a(n) = least k such that (2n*Pi/3)^(2k)/(2 k)! < 1.

The programs for A376954, there is no canonical definition to state claims against.
-/

/-! ## A376954.P16760904308131876700

`A376953(2*n)`
-/

namespace A376954.P16760904308131876700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 (2 * n)

end

end A376954.P16760904308131876700

/-! ## A376954.P17949429122123025440

`record[A376953(floor(n/2^val(n+1, 2)))]`
-/

namespace A376954.P17949429122123025440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376954.P17949429122123025440

/-! ## A376954.P4938297470359304670

`record[A376953(A026741(n)+1)]`
-/

namespace A376954.P4938297470359304670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376954.P4938297470359304670

/-! ## A376954.P15396273572862188964

`record[A376953(A266539(n+1)+1)]`
-/

namespace A376954.P15396273572862188964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 (A266539 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376954.P15396273572862188964

/-! ## A376954.P10788826906095067736

`A376953(A005843(n))%∑[A000796(n)]`
-/

namespace A376954.P10788826906095067736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376953 (A005843 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376954.P10788826906095067736

/-! ## A376954.P10004557289950412571

`A003056(A325620(n+1)+(2*n)²)`
-/

namespace A376954.P10004557289950412571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A325620 (n + 1) + ((2 * n) ^ 2 : ℤ)).toNat

end

end A376954.P10004557289950412571

/-!
# A376955: a(n) = least k such that (3n*Pi/4)^(2k)/(2 k)! < 1.

The programs for A376955, there is no canonical definition to state claims against.
-/

/-! ## A376955.P332941551116269146

`A048766(A063489(n+1))+comp[2*(n+1)]`
-/

namespace A376955.P332941551116269146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A063489 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A376955.P332941551116269146

/-! ## A376955.P5757781160766411138

`A225687(A005897(n)-A218550(n+1))`
-/

namespace A376955.P5757781160766411138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A005897 n - A218550 (n + 1)).toNat

end

end A376955.P5757781160766411138

/-! ## A376955.P11927991203892263979

`A000196(A299287(n)+A194700(n))`
-/

namespace A376955.P11927991203892263979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A299287 n + A194700 n).toNat

end

end A376955.P11927991203892263979

/-! ## A376955.P5858426880612820397

`A160755(A047263(n+1)+A004277(n))`
-/

namespace A376955.P5858426880612820397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A047263 (n + 1) + A004277 n).toNat

end

end A376955.P5858426880612820397

/-! ## A376955.P4807556987505858165

`A263846(A237616(n+1))`
-/

namespace A376955.P4807556987505858165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A237616 (n + 1)).toNat

end

end A376955.P4807556987505858165

/-!
# A376956: a(n) = least k such that n^(2k)/(2 k)! < 1.

The programs for A376956, there is no canonical definition to state claims against.
-/

/-! ## A376956.P8052701614212658964

`ceil(A065027(n)/2)`
-/

namespace A376956.P8052701614212658964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065027 n : ℚ) / 2⌉

end

end A376956.P8052701614212658964

/-! ## A376956.P4712100892136031900

`floor((A086824(n)+char[1]+1)/2)`
-/

namespace A376956.P4712100892136031900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086824 n + (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) : ℚ) / 2⌋

end

end A376956.P4712100892136031900

/-! ## A376956.P3888787399053613004

`A065033(A065027(n))`
-/

namespace A376956.P3888787399053613004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065027 n).toNat

end

end A376956.P3888787399053613004

/-! ## A376956.P17260206680434479404

`A065033(A086824(n))`
-/

namespace A376956.P17260206680434479404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A086824 n).toNat

end

end A376956.P17260206680434479404

/-! ## A376956.P12481043227057523215

`A004526(A065027(n)+1)`
-/

namespace A376956.P12481043227057523215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A065027 n + 1).toNat

end

end A376956.P12481043227057523215

/-! ## A376956.P13139704533383168569

`A123108(A065027(n)+1)`
-/

namespace A376956.P13139704533383168569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A065027 n + 1).toNat

end

end A376956.P13139704533383168569

/-!
# A376957: a(n) = least k such that (n Pi/2)^(2k+1)/(2k+1)! < 1.

The programs for A376957, there is no canonical definition to state claims against.
-/

/-! ## A376957.P8780172037429084887

`A103994(A060547(2*(n+1)))+2*n`
-/

namespace A376957.P8780172037429084887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103994 (A060547 (2 * (n + 1))).toNat + (2 * n : ℤ)

end

end A376957.P8780172037429084887

/-! ## A376957.P17108157901011737652

`A300287(A158186(n))`
-/

namespace A376957.P17108157901011737652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300287 (A158186 n).toNat

end

end A376957.P17108157901011737652

/-! ## A376957.P17069558039260764974

`A056556(A299260(n))-A056556(A056556(n))`
-/

namespace A376957.P17069558039260764974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A299260 n).toNat - A056556 (A056556 n).toNat

end

end A376957.P17069558039260764974

/-!
# A376958: a(n) = least k such that (n Pi/3)^(2k+1)/(2k+1)! < 1.

The programs for A376958, there is no canonical definition to state claims against.
-/

/-! ## A376958.P12188425440299569512

`A003056(A267682(n))%A291166(2*n+3)`
-/

namespace A376958.P12188425440299569512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A267682 n).toNat) (A291166 (2 * n + 3))

end

end A376958.P12188425440299569512

/-! ## A376958.P12037832401272340219

`A003056(A267682(n))%A270039(n+4)`
-/

namespace A376958.P12037832401272340219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A267682 n).toNat) (A270039 (n + 4))

end

end A376958.P12037832401272340219

/-! ## A376958.P16230997023782589220

`A003056(A267682(n)%A262059(n+1))`
-/

namespace A376958.P16230997023782589220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A267682 n) (A262059 (n + 1))).toNat

end

end A376958.P16230997023782589220

/-! ## A376958.P6754536103823651200

`A248565(A028310(n))%A356237(3*n+4)`
-/

namespace A376958.P6754536103823651200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248565 (A028310 n).toNat) (A356237 (3 * n + 4))

end

end A376958.P6754536103823651200

/-! ## A376958.P5024207213730314281

`A036042(A339560(2*(n+2))-n)`
-/

namespace A376958.P5024207213730314281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A339560 (2 * (n + 2)) - (n : ℤ)).toNat

end

end A376958.P5024207213730314281

/-!
# A376959: a(n) = least k such that (2n Pi/3)^(2k+1)/(2k+1)! < 1.

The programs for A376959, there is no canonical definition to state claims against.
-/

/-! ## A376959.P7512284557588311872

`A376958(2*n)`
-/

namespace A376959.P7512284557588311872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376958 (2 * n)

end

end A376959.P7512284557588311872

/-! ## A376959.P18173767699701664589

`record[A376958(A006257(n)+1)]`
-/

namespace A376959.P18173767699701664589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376958 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376959.P18173767699701664589

/-! ## A376959.P3673802859085554866

`record[A376958(A240828(n+1))]`
-/

namespace A376959.P3673802859085554866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376958 (A240828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376959.P3673802859085554866

/-! ## A376959.P1057028833752075754

`A003056(A246099(n+1)+A002061(2*n))`
-/

namespace A376959.P1057028833752075754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A246099 (n + 1) + A002061 (2 * n)).toNat

end

end A376959.P1057028833752075754

/-! ## A376959.P17307994832718643726

`A259361(A014635(n)+2)`
-/

namespace A376959.P17307994832718643726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A014635 n + 2).toNat

end

end A376959.P17307994832718643726

/-!
# A376960: a(n) = least k such that (3n Pi/4)^(2k+1)/(2k+1)! < 1.

The programs for A376960, there is no canonical definition to state claims against.
-/

/-! ## A376960.P1104198796068013562

`A003056(A186386(n+1)+A135706(n))`
-/

namespace A376960.P1104198796068013562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A186386 (n + 1) + A135706 n).toNat

end

end A376960.P1104198796068013562

/-! ## A376960.P8454170949488276620

`A183110(A190816(n))`
-/

namespace A376960.P8454170949488276620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183110 (A190816 n).toNat

end

end A376960.P8454170949488276620

/-! ## A376960.P709591227642671230

`A183110(A051624(n)+1)`
-/

namespace A376960.P709591227642671230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183110 (A051624 n + 1).toNat

end

end A376960.P709591227642671230

/-! ## A376960.P9137316900664052890

`A259361(n+1)+A048785(A011782(n))`
-/

namespace A376960.P9137316900664052890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (n + 1) + A048785 (A011782 n).toNat

end

end A376960.P9137316900664052890

/-! ## A376960.P9708609157580227345

`A002024(A190816(n)^A077619(2*(n+2)))`
-/

namespace A376960.P9708609157580227345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway ((A190816 n : ℚ) ^ (A077619 (2 * (n + 2)) : ℤ))).toNat

end

end A376960.P9708609157580227345

/-!
# A376962: Number of (binary) heaps of length n whose element set equals {1,2,3}.

The programs for A376962, there is no canonical definition to state claims against.
-/

/-! ## A376962.P2346410110841206860

`A373451(A167614(n+2))`
-/

namespace A376962.P2346410110841206860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (A167614 (n + 2)).toNat

end

end A376962.P2346410110841206860

/-! ## A376962.P2165882429770770085

`A373451(A055999(n)+9)`
-/

namespace A376962.P2165882429770770085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (A055999 n + 9).toNat

end

end A376962.P2165882429770770085

/-! ## A376962.P8158468049029032439

`A373451(A000217(n+3)+3)`
-/

namespace A376962.P8158468049029032439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (A000217 (n + 3) + 3).toNat

end

end A376962.P8158468049029032439

/-! ## A376962.P1764312704241458409

`A373451(eq[4, A002260(n+1)])`
-/

namespace A376962.P1764312704241458409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A376962.P1764312704241458409

/-! ## A376962.P1046816780349372464

`A373451(A166136(n+1)+n)`
-/

namespace A376962.P1046816780349372464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (A166136 (n + 1) + (n : ℤ)).toNat

end

end A376962.P1046816780349372464

/-! ## A376962.P4928438414286729653

`A373451(A167499(n)+A028310(2*n+3))`
-/

namespace A376962.P4928438414286729653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (A167499 n + A028310 (2 * n + 3)).toNat

end

end A376962.P4928438414286729653

/-!
# A376963: Number of (binary) heaps of length n whose element set equals {1,2,3,4}.

The programs for A376963, there is no canonical definition to state claims against.
-/

/-! ## A376963.P8306273554151170642

`A373451(A000124(n+4)+3)`
-/

namespace A376963.P8306273554151170642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (A000124 (n + 4) + 3).toNat

end

end A376963.P8306273554151170642

/-! ## A376963.P2082386904894775327

`A373451(A000217(n+4)+4)`
-/

namespace A376963.P2082386904894775327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (A000217 (n + 4) + 4).toNat

end

end A376963.P2082386904894775327

/-! ## A376963.P3234224770642098744

`A373451(eq[5, A002260(n+1)])`
-/

namespace A376963.P3234224770642098744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A376963.P3234224770642098744

/-! ## A376963.P11993753667590974087

`A373451(A167614(n+4)-(n+4))`
-/

namespace A376963.P11993753667590974087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (A167614 (n + 4) - (n + 4 : ℤ)).toNat

end

end A376963.P11993753667590974087

/-!
# A376964: Number of polycubes of size n and symmetry class I (no symmetry).

The programs for A376964, there is no canonical definition to state claims against.
-/

/-! ## A376964.P12518838047995402010

`A337697(A320160(n+1))`
-/

namespace A376964.P12518838047995402010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337697 (A320160 (n + 1)).toNat

end

end A376964.P12518838047995402010

/-! ## A376964.P14050203841463212519

`A337697(A266925(n+2))`
-/

namespace A376964.P14050203841463212519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337697 (A266925 (n + 2)).toNat

end

end A376964.P14050203841463212519

/-! ## A376964.P2577190622665057564

`A337697(A389742(n)+A240854(n))`
-/

namespace A376964.P2577190622665057564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337697 (A389742 n + A240854 n).toNat

end

end A376964.P2577190622665057564

/-!
# A376966: Number of polycubes of size n and symmetry class B.

The programs for A376966, there is no canonical definition to state claims against.
-/

/-! ## A376966.P1582328167456414695

`A230219(A230451(2*(n+1))+A002464(n))`
-/

namespace A376966.P1582328167456414695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230219 (A230451 (2 * (n + 1)) + A002464 n).toNat

end

end A376966.P1582328167456414695

/-! ## A376966.P4157177223905175613

`A040115(A143137(n+5)%A196418(n+1))`
-/

namespace A376966.P4157177223905175613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040115 (Int.tmod (A143137 (n + 5)) (A196418 (n + 1))).toNat

end

end A376966.P4157177223905175613

/-! ## A376966.P475652066098647497

`A105519(C(A232721(n+1), A062303(n+1)))`
-/

namespace A376966.P475652066098647497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (Nat.choose (A232721 (n + 1)).toNat (A062303 (n + 1)).toNat)

end

end A376966.P475652066098647497

/-!
# A376969: Number of polycubes of size n and symmetry class E.

The programs for A376969, there is no canonical definition to state claims against.
-/

/-! ## A376969.P12874749880769344490

`A008651(A151107(n))`
-/

namespace A376969.P12874749880769344490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A151107 n).toNat

end

end A376969.P12874749880769344490

/-! ## A376969.P10948236017633559120

`A070106(A150867(n))`
-/

namespace A376969.P10948236017633559120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (A150867 n).toNat

end

end A376969.P10948236017633559120

/-! ## A376969.P14260918129320478533

`A105519(A150921(n))`
-/

namespace A376969.P14260918129320478533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A150921 n).toNat

end

end A376969.P14260918129320478533

/-!
# A376971: Number of polycubes of size n and symmetry class G (full symmetry).

The programs for A376971, there is no canonical definition to state claims against.
-/

/-! ## A376971.P3686502276029227304

`A377336(A167614(n+2))`
-/

namespace A376971.P3686502276029227304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377336 (A167614 (n + 2)).toNat

end

end A376971.P3686502276029227304

/-! ## A376971.P13190809418177500208

`A377336(A000217(n+3)+3)`
-/

namespace A376971.P13190809418177500208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377336 (A000217 (n + 3) + 3).toNat

end

end A376971.P13190809418177500208

/-!
# A376979: Number of polycubes of size n and symmetry class CE.

The programs for A376979, there is no canonical definition to state claims against.
-/

/-! ## A376979.P10542099681455364399

`A361801(n)-A260728(A119370(n))`
-/

namespace A376979.P10542099681455364399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361801 n - A260728 (A119370 n).toNat

end

end A376979.P10542099681455364399

/-!
# A376981: Number of polycubes of size n and symmetry class EE.

The programs for A376981, there is no canonical definition to state claims against.
-/

/-! ## A376981.P16540654010601725666

`A106801(A198381(n+1))`
-/

namespace A376981.P16540654010601725666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106801 (A198381 (n + 1)).toNat

end

end A376981.P16540654010601725666

/-! ## A376981.P15043414105944676047

`A106801(A309846(n+2))`
-/

namespace A376981.P15043414105944676047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106801 (A309846 (n + 2)).toNat

end

end A376981.P15043414105944676047

/-!
# A376992: a(n) is the least n-digit prime of the form j^2 + (j+1)^2.

The programs for A376992, there is no canonical definition to state claims against.
-/

/-! ## A376992.P2181266809150538453

`A376993(n+1)+A011557(n)`
-/

namespace A376992.P2181266809150538453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376993 (n + 1) + A011557 n

end

end A376992.P2181266809150538453

/-! ## A376992.P2907868996202644390

`A376993(n+1)+A007089(A238939(n+1))`
-/

namespace A376992.P2907868996202644390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376993 (n + 1) + A007089 (A238939 (n + 1)).toNat

end

end A376992.P2907868996202644390

/-!
# A376993: a(n) = A376992(n) - 10^(n-1).

The programs for A376993, there is no canonical definition to state claims against.
-/

/-! ## A376993.P3898035058348135390

`A376992(n+1)-10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376993.P3898035058348135390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376992 (n + 1) - (10 ^ n : ℤ)

end

end A376993.P3898035058348135390

/-! ## A376993.P14811451958806031046

`abs(A376992(n+1)-A011557(n))`
-/

namespace A376993.P14811451958806031046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A376992 (n + 1) - A011557 n|

end

end A376993.P14811451958806031046

/-! ## A376993.P18141497778887044902

`A052268(n+1)+A376992(n+1)-A011557(n+1)`
-/

namespace A376993.P18141497778887044902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052268 (n + 1) + (A376992 (n + 1) - A011557 (n + 1))

end

end A376993.P18141497778887044902

/-!
# A376995: a(n) = floor(b(n)), where b(1) = 1 and b(n) = b(n-1) + Sum_{k=1..n-1} b(k)/(n-1).

The programs for A376995, there is no canonical definition to state claims against.
-/

/-! ## A376995.P16298287901219632514

`floor(A160617(n)/A160618(n))`
-/

namespace A376995.P16298287901219632514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160617 n : ℚ) / (A160618 n : ℚ)⌋

end

end A376995.P16298287901219632514

/-! ## A376995.P4368724297165948035

`floor(A002720(n)/n!)`
-/

namespace A376995.P4368724297165948035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002720 n : ℚ) / (Nat.factorial n : ℚ)⌋

end

end A376995.P4368724297165948035

/-! ## A376995.P7306885504004651323

`floor(A002720(n)/A000142(n))`
-/

namespace A376995.P7306885504004651323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002720 n : ℚ) / (A000142 n : ℚ)⌋

end

end A376995.P7306885504004651323

/-! ## A376995.P17183296109031721220

`floor(A341200(∑[n]+n)/A000142(n))`
-/

namespace A376995.P17183296109031721220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A341200 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / (A000142 n : ℚ)⌋

end

end A376995.P17183296109031721220

/-! ## A376995.P5526493009730285125

`floor(A341200(∑[n]+n)/A214078(n²))`
-/

namespace A376995.P5526493009730285125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A341200 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / (A214078 (n ^ 2) : ℚ)⌋

end

end A376995.P5526493009730285125

/-!
# A376996: Number of odd terms in the Collatz trajectory of n which are > n and are a new record high among its odd terms.

The programs for A376996, there is no canonical definition to state claims against.
-/

/-! ## A376996.P9991271832042505723

`A221469(A302338(n+1))`
-/

namespace A376996.P9991271832042505723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (A302338 (n + 1)).toNat

end

end A376996.P9991271832042505723

/-! ## A376996.P5501476944801714173

`A124768(A172119(3*n+4)*A334040(n+1))`
-/

namespace A376996.P5501476944801714173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A172119 (3 * n + 4) * A334040 (n + 1)).toNat

end

end A376996.P5501476944801714173

/-! ## A376996.P9185230980355041222

`A319000(A315028(n+1))`
-/

namespace A376996.P9185230980355041222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (A315028 (n + 1)).toNat

end

end A376996.P9185230980355041222

/-! ## A376996.P10031628816813587415

`A046660(A142462(n+1)+n+1)`
-/

namespace A376996.P10031628816813587415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A142462 (n + 1) + (n + 1 : ℤ)).toNat

end

end A376996.P10031628816813587415

/-! ## A376996.P2621758638390495870

`A124762(A052274(n+1)*A124781(n))`
-/

namespace A376996.P2621758638390495870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A052274 (n + 1) * A124781 n).toNat

end

end A376996.P2621758638390495870

/-!
# A376997: Triangular numbers that are pseudoperfect (semiperfect).

The programs for A376997, there is no canonical definition to state claims against.
-/

/-! ## A376997.P4314527121519866157

`filter[A005835(n+1), A073424(#)]`
-/

namespace A376997.P4314527121519866157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A376997.P4314527121519866157

/-! ## A376997.P6245060218351842025

`filter[A005835(n+1), A010054(#)]`
-/

namespace A376997.P6245060218351842025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A376997.P6245060218351842025

/-! ## A376997.P13013150218156387829

`filter[A023196(n+1), A010054(#)]`
-/

namespace A376997.P13013150218156387829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A376997.P13013150218156387829

/-! ## A376997.P12944812976903674762

`filter[A005835(n+1), A185907(#)]`
-/

namespace A376997.P12944812976903674762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185907 (f1 j).toNat = 1) n)

end

end A376997.P12944812976903674762

/-! ## A376997.P14898969960334984893

`filter[A000217(n+1), A210455(#)]`
-/

namespace A376997.P14898969960334984893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A376997.P14898969960334984893

/-! ## A376997.P708662446117025702

`filter[A179865(n+1), A210455(#)]`
-/

namespace A376997.P708662446117025702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A376997.P708662446117025702

/-! ## A376997.P3263363816090423952

`filter[A253145(n+1), A210455(#)]`
-/

namespace A376997.P3263363816090423952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A376997.P3263363816090423952

/-! ## A376997.P17075386998511536299

`filter[A272549(n+1), A210455(#)]`
-/

namespace A376997.P17075386998511536299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A376997.P17075386998511536299

/-! ## A376997.P16349920247924462787

`filter[A161680(n+2), A210455(#)]`
-/

namespace A376997.P16349920247924462787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A376997.P16349920247924462787

/-! ## A376997.P4609708576870167050

`filter[A186783(n+2), A210455(#)]`
-/

namespace A376997.P4609708576870167050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A376997.P4609708576870167050

