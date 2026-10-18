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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A072201: a(n) = 4*a(n-1) + 1, a(1) = 15.

The programs for A072201, the canonical program `A072201.P16901063875416523831` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072201 has offset 1).

The definition of A072201 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+1` (program `A072201.P16901063875416523831`, by `A072201.P16901063875416523831.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072201.P16901063875416523831

`4*a(n-1)+1` with `a(0)=15`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072201

/-- `4*a(n-1)+1` -/
def P16901063875416523831.Spec : Prop :=
  ∀ n, (P16901063875416523831.a n : ℤ) = A072201 (n + 1)

theorem P16901063875416523831.correct : P16901063875416523831.Spec := by
  intro n
  simp only [A072201, Nat.add_sub_cancel]

end A072201

/-! ## A072201.P18262185498949038539

`46*A002450(n)+15`
-/

namespace A072201.P18262185498949038539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  46 * A002450 n + 15

end

end A072201.P18262185498949038539

namespace A072201

/-- `46*A002450(n)+15` -/
def P18262185498949038539.Spec : Prop :=
  ∀ n, P18262185498949038539.a n = A072201 (n + 1)

end A072201

/-! ## A072201.P10554892391983396160

`(23*4^(n+1)-2)/6`
-/

namespace A072201.P10554892391983396160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((23 * 4 ^ (n + 1) : ℤ) - 2 : ℚ) / 6

end

end A072201.P10554892391983396160

namespace A072201

/-- `(23*4^(n+1)-2)/6` -/
def P10554892391983396160.Spec : Prop :=
  ∀ n, P10554892391983396160.a n = (A072201 (n + 1) : ℚ)

theorem P10554892391983396160.correct : P10554892391983396160.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A072201, Nat.add_sub_cancel, A072201.P10554892391983396160.a, A072201.P16901063875416523831.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A072201, Nat.add_sub_cancel, A072201.P10554892391983396160.a, A072201.P16901063875416523831.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A072201

/-! ## A072201.P2665235052483574162

`lcm(4, a(n-1))+1` with `a(0)=15`
-/

namespace A072201.P2665235052483574162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 1

end

end A072201.P2665235052483574162

namespace A072201

/-- `lcm(4, a(n-1))+1` -/
def P2665235052483574162.Spec : Prop :=
  ∀ n, (P2665235052483574162.a n : ℤ) = A072201 (n + 1)

end A072201

/-! ## A072201.P12932938603100869461

`or(1, 4*a(n-1))` with `a(0)=15`
-/

namespace A072201.P12932938603100869461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15] fun n a =>
  Nat.lor 1 (4 * a (n - 1))

end

end A072201.P12932938603100869461

namespace A072201

/-- `or(1, 4*a(n-1))` -/
def P12932938603100869461.Spec : Prop :=
  ∀ n, (P12932938603100869461.a n : ℤ) = A072201 (n + 1)

end A072201

/-! ## A072201.P364151295291320138

`xor(1, 4*a(n-1))` with `a(0)=15`
-/

namespace A072201.P364151295291320138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15] fun n a =>
  Nat.xor 1 (4 * a (n - 1))

end

end A072201.P364151295291320138

namespace A072201

/-- `xor(1, 4*a(n-1))` -/
def P364151295291320138.Spec : Prop :=
  ∀ n, (P364151295291320138.a n : ℤ) = A072201 (n + 1)

end A072201

/-! ## A072201.P12757265354140448191

`∑[4*a(n-1)]` with `a(0)=15, a(1)=46`
-/

namespace A072201.P12757265354140448191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 46] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072201.P12757265354140448191

namespace A072201

/-- `∑[4*a(n-1)]` -/
def P12757265354140448191.Spec : Prop :=
  ∀ n, (P12757265354140448191.a n : ℤ) = A072201 (n + 1)

end A072201

/-! ## A072201.P14690810029277368641

`5-4*(1-a(n-1))` with `a(0)=15`
-/

namespace A072201.P14690810029277368641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  5 - 4 * (1 - a (n - 1))

end

end A072201.P14690810029277368641

namespace A072201

/-- `5-4*(1-a(n-1))` -/
def P14690810029277368641.Spec : Prop :=
  ∀ n, P14690810029277368641.a n = A072201 (n + 1)

end A072201

/-! ## A072201.P7444507081565112098

`A072197(n+1)+2*4^n`
-/

namespace A072201.P7444507081565112098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 (n + 1) + (2 * 4 ^ n : ℤ)

end

end A072201.P7444507081565112098

namespace A072201

/-- `A072197(n+1)+2*4^n` -/
def P7444507081565112098.Spec : Prop :=
  ∀ n, P7444507081565112098.a n = A072201 (n + 1)

end A072201

/-! ## A072201.P3351335119839414513

`or(Δ[2*4^n], A072262(n+1))`
-/

namespace A072201.P3351335119839414513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A072262 (n + 1))

end

end A072201.P3351335119839414513

namespace A072201

/-- `or(Δ[2*4^n], A072262(n+1))` -/
def P3351335119839414513.Spec : Prop :=
  ∀ n, P3351335119839414513.a n = A072201 (n + 1)

end A072201

/-! ## A072201.P13093293837947044834

`A323824(n)+A002063(n)`
-/

namespace A072201.P13093293837947044834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323824 n + A002063 n

end

end A072201.P13093293837947044834

namespace A072201

/-- `A323824(n)+A002063(n)` -/
def P13093293837947044834.Spec : Prop :=
  ∀ n, P13093293837947044834.a n = A072201 (n + 1)

end A072201

/-! ## A072201.P11455360578361618869

`A330246(n)+A002089(n)`
-/

namespace A072201.P11455360578361618869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330246 n + A002089 n

end

end A072201.P11455360578361618869

namespace A072201

/-- `A330246(n)+A002089(n)` -/
def P11455360578361618869.Spec : Prop :=
  ∀ n, P11455360578361618869.a n = A072201 (n + 1)

end A072201

/-! ## A072201.P9052483667795351441

`A206374(n+1)+A002023(n)`
-/

namespace A072201.P9052483667795351441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206374 (n + 1) + A002023 n

end

end A072201.P9052483667795351441

namespace A072201

/-- `A206374(n+1)+A002023(n)` -/
def P9052483667795351441.Spec : Prop :=
  ∀ n, P9052483667795351441.a n = A072201 (n + 1)

end A072201

/-! ## A072201.P2780889607355614761

`A199210(n+1)+A020988(n)`
-/

namespace A072201.P2780889607355614761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199210 (n + 1) + A020988 n

end

end A072201.P2780889607355614761

namespace A072201

/-- `A199210(n+1)+A020988(n)` -/
def P2780889607355614761.Spec : Prop :=
  ∀ n, P2780889607355614761.a n = A072201 (n + 1)

end A072201

/-! ## A072201.P8140418023925787023

`A164346(n+1)+A072197(n)`
-/

namespace A072201.P8140418023925787023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 (n + 1) + A072197 n

end

end A072201.P8140418023925787023

namespace A072201

/-- `A164346(n+1)+A072197(n)` -/
def P8140418023925787023.Spec : Prop :=
  ∀ n, P8140418023925787023.a n = A072201 (n + 1)

end A072201

/-! ## A072201.P10154395581710824586

`A199209(n)+A080674(n+1)`
-/

namespace A072201.P10154395581710824586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199209 n + A080674 (n + 1)

end

end A072201.P10154395581710824586

namespace A072201

/-- `A199209(n)+A080674(n+1)` -/
def P10154395581710824586.Spec : Prop :=
  ∀ n, P10154395581710824586.a n = A072201 (n + 1)

end A072201

/-! ## A072201.P13712207244029984718

`A199209(n)+A155721(n+1)`
-/

namespace A072201.P13712207244029984718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199209 n + A155721 (n + 1)

end

end A072201.P13712207244029984718

namespace A072201

/-- `A199209(n)+A155721(n+1)` -/
def P13712207244029984718.Spec : Prop :=
  ∀ n, P13712207244029984718.a n = A072201 (n + 1)

end A072201

/-! ## A072201.P8702272793130062104

`A321421(n)+A205354(n+1)`
-/

namespace A072201.P8702272793130062104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321421 n + A205354 (n + 1)

end

end A072201.P8702272793130062104

namespace A072201

/-- `A321421(n)+A205354(n+1)` -/
def P8702272793130062104.Spec : Prop :=
  ∀ n, P8702272793130062104.a n = A072201 (n + 1)

end A072201

/-! ## A072201.P6732982574053402822

`A002450(n+2)+A002066(n)`
-/

namespace A072201.P6732982574053402822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 2) + A002066 n

end

end A072201.P6732982574053402822

namespace A072201

/-- `A002450(n+2)+A002066(n)` -/
def P6732982574053402822.Spec : Prop :=
  ∀ n, P6732982574053402822.a n = A072201 (n + 1)

end A072201

/-!
# A072202: Same numbers of prime factors of forms 4*k+1 and 4*k+3, counted with multiplicity.

The programs for A072202, the canonical program `A072202.P15384746897434729582` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072202 has offset 1).

The definition of A072202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072202.P15384746897434729582

`eq[1, A342025(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A072202

/-- `eq[1, A342025(n+1)]+1` -/
def P15384746897434729582.Spec : Prop :=
  ∀ n, (P15384746897434729582.a n : ℤ) = A072202 (n + 1)

theorem P15384746897434729582.correct : P15384746897434729582.Spec := by
  intro n
  simp only [A072202, Nat.add_sub_cancel]

end A072202

/-! ## A072202.P15986241703269235809

`record[(n+1)*A342025(2*(n+1))]`
-/

namespace A072202.P15986241703269235809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A342025 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072202.P15986241703269235809

namespace A072202

/-- `record[(n+1)*A342025(2*(n+1))]` -/
def P15986241703269235809.Spec : Prop :=
  ∀ n, P15986241703269235809.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P4442795256583548116

`filter[A036349(n+1), A342025(#)]`
-/

namespace A072202.P4442795256583548116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P4442795256583548116

namespace A072202

/-- `filter[A036349(n+1), A342025(#)]` -/
def P4442795256583548116.Spec : Prop :=
  ∀ n, P4442795256583548116.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P13120203238391843230

`filter[A268381(n+1), A342025(#)]`
-/

namespace A072202.P13120203238391843230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P13120203238391843230

namespace A072202

/-- `filter[A268381(n+1), A342025(#)]` -/
def P13120203238391843230.Spec : Prop :=
  ∀ n, P13120203238391843230.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P6936838578100558857

`filter[A267894(n+1), A342025(#)]`
-/

namespace A072202.P6936838578100558857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P6936838578100558857

namespace A072202

/-- `filter[A267894(n+1), A342025(#)]` -/
def P6936838578100558857.Spec : Prop :=
  ∀ n, P6936838578100558857.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P13178820775230018479

`filter[A347202(n+1), A342025(#)]`
-/

namespace A072202.P13178820775230018479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P13178820775230018479

namespace A072202

/-- `filter[A347202(n+1), A342025(#)]` -/
def P13178820775230018479.Spec : Prop :=
  ∀ n, P13178820775230018479.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P9072336766687926563

`filter[A065090(n+1), A342025(#)]`
-/

namespace A072202.P9072336766687926563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P9072336766687926563

namespace A072202

/-- `filter[A065090(n+1), A342025(#)]` -/
def P9072336766687926563.Spec : Prop :=
  ∀ n, P9072336766687926563.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P1573640889691798102

`filter[A171581(n+1), A342025(#)]`
-/

namespace A072202.P1573640889691798102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P1573640889691798102

namespace A072202

/-- `filter[A171581(n+1), A342025(#)]` -/
def P1573640889691798102.Spec : Prop :=
  ∀ n, P1573640889691798102.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P3756004812249959350

`filter[A073900(n+1), A342025(#)]`
-/

namespace A072202.P3756004812249959350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P3756004812249959350

namespace A072202

/-- `filter[A073900(n+1), A342025(#)]` -/
def P3756004812249959350.Spec : Prop :=
  ∀ n, P3756004812249959350.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P3558680032311718062

`filter[A338924(n+1), A342025(#)]`
-/

namespace A072202.P3558680032311718062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P3558680032311718062

namespace A072202

/-- `filter[A338924(n+1), A342025(#)]` -/
def P3558680032311718062.Spec : Prop :=
  ∀ n, P3558680032311718062.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P6261540653096281231

`filter[A173905(n+2), A342025(#)]`
-/

namespace A072202.P6261540653096281231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P6261540653096281231

namespace A072202

/-- `filter[A173905(n+2), A342025(#)]` -/
def P6261540653096281231.Spec : Prop :=
  ∀ n, P6261540653096281231.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P17898336175315512014

`filter[A073899(n+1), A342025(#)]`
-/

namespace A072202.P17898336175315512014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P17898336175315512014

namespace A072202

/-- `filter[A073899(n+1), A342025(#)]` -/
def P17898336175315512014.Spec : Prop :=
  ∀ n, P17898336175315512014.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P16933989171439063258

`filter[A089088(n), A342025(#)]`
-/

namespace A072202.P16933989171439063258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P16933989171439063258

namespace A072202

/-- `filter[A089088(n), A342025(#)]` -/
def P16933989171439063258.Spec : Prop :=
  ∀ n, P16933989171439063258.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P11655184756438713094

`filter[A101513(n+1), A342025(#)]`
-/

namespace A072202.P11655184756438713094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P11655184756438713094

namespace A072202

/-- `filter[A101513(n+1), A342025(#)]` -/
def P11655184756438713094.Spec : Prop :=
  ∀ n, P11655184756438713094.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P15205547210807829208

`filter[A161989(n+2), A342025(#)]`
-/

namespace A072202.P15205547210807829208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161989 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P15205547210807829208

namespace A072202

/-- `filter[A161989(n+2), A342025(#)]` -/
def P15205547210807829208.Spec : Prop :=
  ∀ n, P15205547210807829208.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P11906539297320217828

`eq[0, A079635(n+1)]+1`
-/

namespace A072202.P11906539297320217828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072202.P11906539297320217828

namespace A072202

/-- `eq[0, A079635(n+1)]+1` -/
def P11906539297320217828.Spec : Prop :=
  ∀ n, (P11906539297320217828.a n : ℤ) = A072202 (n + 1)

end A072202

/-! ## A072202.P11201798701719731494

`eq[A065339(n+1), A083025(n+1)]+1`
-/

namespace A072202.P11201798701719731494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072202.P11201798701719731494

namespace A072202

/-- `eq[A065339(n+1), A083025(n+1)]+1` -/
def P11201798701719731494.Spec : Prop :=
  ∀ n, (P11201798701719731494.a n : ℤ) = A072202 (n + 1)

end A072202

/-! ## A072202.P12307975762529526341

`record[gcd(n+1, A005843(n)*A079635(n+1))]`
-/

namespace A072202.P12307975762529526341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005843 n * A079635 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072202.P12307975762529526341

namespace A072202

/-- `record[gcd(n+1, A005843(n)*A079635(n+1))]` -/
def P12307975762529526341.Spec : Prop :=
  ∀ n, (P12307975762529526341.a n : ℤ) = A072202 (n + 1)

end A072202

/-! ## A072202.P12407511971584954163

`filter[A083197(n+1), A342025(#)]`
-/

namespace A072202.P12407511971584954163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P12407511971584954163

namespace A072202

/-- `filter[A083197(n+1), A342025(#)]` -/
def P12407511971584954163.Spec : Prop :=
  ∀ n, P12407511971584954163.a n = A072202 (n + 1)

end A072202

/-! ## A072202.P9688111225038617716

`filter[A073846(n+1), A342025(#)]`
-/

namespace A072202.P9688111225038617716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342025 (f1 j).toNat = 1) n)

end

end A072202.P9688111225038617716

namespace A072202

/-- `filter[A073846(n+1), A342025(#)]` -/
def P9688111225038617716.Spec : Prop :=
  ∀ n, P9688111225038617716.a n = A072202 (n + 1)

end A072202

/-!
# A072203: (Number of oddly factored numbers <= n) - (number of evenly factored numbers <= n).

The programs for A072203, the canonical program `A072203.P10607381814224179151` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072203 has offset 1).

The definition of A072203 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002819, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072203.P10607381814224179151

`1-A002819(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072203

/-- `1-A002819(n+1)` -/
def P10607381814224179151.Spec : Prop :=
  ∀ n, P10607381814224179151.a n = A072203 (n + 1)

theorem P10607381814224179151.correct : P10607381814224179151.Spec := by
  intro n
  simp only [A072203, Nat.add_sub_cancel]

end A072203

/-! ## A072203.P17453334331191992014

`1-∑[(-1)^∑{e}[n+1, #]]`
-/

namespace A072203.P17453334331191992014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072203.P17453334331191992014

namespace A072203

/-- `1-∑[(-1)^∑{e}[n+1, #]]` -/
def P17453334331191992014.Spec : Prop :=
  ∀ n, P17453334331191992014.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P17949015938795781397

`1-∑[1-(2*∑{e}[n+1, #])%4]`
-/

namespace A072203.P17949015938795781397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 4 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072203.P17949015938795781397

namespace A072203

/-- `1-∑[1-(2*∑{e}[n+1, #])%4]` -/
def P17949015938795781397.Spec : Prop :=
  ∀ n, P17949015938795781397.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P1152190054305898920

`1-∑[A008836(n+1)]`
-/

namespace A072203.P1152190054305898920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072203.P1152190054305898920

namespace A072203

/-- `1-∑[A008836(n+1)]` -/
def P1152190054305898920.Spec : Prop :=
  ∀ n, P1152190054305898920.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P16626419943076117619

`2*A055038(n+1)-n`
-/

namespace A072203.P16626419943076117619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055038 (n + 1) - (n : ℤ)

end

end A072203.P16626419943076117619

namespace A072203

/-- `2*A055038(n+1)-n` -/
def P16626419943076117619.Spec : Prop :=
  ∀ n, P16626419943076117619.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P6001065572608326680

`∑[2*A066829(n+1)]-n`
-/

namespace A072203.P6001065572608326680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A072203.P6001065572608326680

namespace A072203

/-- `∑[2*A066829(n+1)]-n` -/
def P6001065572608326680.Spec : Prop :=
  ∀ n, P6001065572608326680.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P15256555427187266576

`n+2-2*A055037(n+1)`
-/

namespace A072203.P15256555427187266576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - 2 * A055037 (n + 1)

end

end A072203.P15256555427187266576

namespace A072203

/-- `n+2-2*A055037(n+1)` -/
def P15256555427187266576.Spec : Prop :=
  ∀ n, P15256555427187266576.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P3659458465883639227

`1-∑[(-1)^A001222(n+1)]`
-/

namespace A072203.P3659458465883639227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072203.P3659458465883639227

namespace A072203

/-- `1-∑[(-1)^A001222(n+1)]` -/
def P3659458465883639227.Spec : Prop :=
  ∀ n, P3659458465883639227.a n = (A072203 (n + 1) : ℚ)

end A072203

/-! ## A072203.P3838293583391910692

`1-∑[A020985(or(10, ∑{e}[n+1, #]))]`
-/

namespace A072203.P3838293583391910692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (Nat.lor 10 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072203.P3838293583391910692

namespace A072203

/-- `1-∑[A020985(or(10, ∑{e}[n+1, #]))]` -/
def P3838293583391910692.Spec : Prop :=
  ∀ n, P3838293583391910692.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P6681597633720108596

`∑[A062157(A001222(n+1))]`
-/

namespace A072203.P6681597633720108596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072203.P6681597633720108596

namespace A072203

/-- `∑[A062157(A001222(n+1))]` -/
def P6681597633720108596.Spec : Prop :=
  ∀ n, P6681597633720108596.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P5381083825224034009

`A005843(A055038(n+1))-n`
-/

namespace A072203.P5381083825224034009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A055038 (n + 1)).toNat - (n : ℤ)

end

end A072203.P5381083825224034009

namespace A072203

/-- `A005843(A055038(n+1))-n` -/
def P5381083825224034009.Spec : Prop :=
  ∀ n, P5381083825224034009.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P17962874770813676794

`1-∑[A008683(A007913(n+1))]`
-/

namespace A072203.P17962874770813676794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072203.P17962874770813676794

namespace A072203

/-- `1-∑[A008683(A007913(n+1))]` -/
def P17962874770813676794.Spec : Prop :=
  ∀ n, P17962874770813676794.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P2743103614696427923

`1-A002819(n)-Δ[A002819(n)]`
-/

namespace A072203.P2743103614696427923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002819 n - (f1 (n + 1) - f1 n)

end

end A072203.P2743103614696427923

namespace A072203

/-- `1-A002819(n)-Δ[A002819(n)]` -/
def P2743103614696427923.Spec : Prop :=
  ∀ n, P2743103614696427923.a n = A072203 (n + 1)

theorem P2743103614696427923.correct : P2743103614696427923.Spec := by
  intro n
  simp only [A072203, Nat.add_sub_cancel, A072203.P2743103614696427923.f1, A072203.P2743103614696427923.a, A072203.P10607381814224179151.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A072203

/-! ## A072203.P11499916257667894836

`1-∑[A033999(A001222(n+1)²)]`
-/

namespace A072203.P11499916257667894836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001222 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072203.P11499916257667894836

namespace A072203

/-- `1-∑[A033999(A001222(n+1)²)]` -/
def P11499916257667894836.Spec : Prop :=
  ∀ n, P11499916257667894836.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P1886414839188967370

`∑[A015795(A001222(n+1)+1)]+1`
-/

namespace A072203.P1886414839188967370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015795 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072203.P1886414839188967370

namespace A072203

/-- `∑[A015795(A001222(n+1)+1)]+1` -/
def P1886414839188967370.Spec : Prop :=
  ∀ n, P1886414839188967370.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P2191349744202939247

`∑[A033999(A001222(n+1)+1)]+1`
-/

namespace A072203.P2191349744202939247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072203.P2191349744202939247

namespace A072203

/-- `∑[A033999(A001222(n+1)+1)]+1` -/
def P2191349744202939247.Spec : Prop :=
  ∀ n, P2191349744202939247.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P3503642539016142042

`∑[A008683(A007913(2*(n+1)))]+1`
-/

namespace A072203.P3503642539016142042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007913 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072203.P3503642539016142042

namespace A072203

/-- `∑[A008683(A007913(2*(n+1)))]+1` -/
def P3503642539016142042.Spec : Prop :=
  ∀ n, P3503642539016142042.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P11949935997783773058

`1-∑[A033999(A046079(2*(n+1)))]`
-/

namespace A072203.P11949935997783773058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A046079 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072203.P11949935997783773058

namespace A072203

/-- `1-∑[A033999(A046079(2*(n+1)))]` -/
def P11949935997783773058.Spec : Prop :=
  ∀ n, P11949935997783773058.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P9701100551945706957

`A055038(n+1)+1-A055037(n+1)`
-/

namespace A072203.P9701100551945706957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055038 (n + 1) + (1 - A055037 (n + 1))

end

end A072203.P9701100551945706957

namespace A072203

/-- `A055038(n+1)+1-A055037(n+1)` -/
def P9701100551945706957.Spec : Prop :=
  ∀ n, P9701100551945706957.a n = A072203 (n + 1)

end A072203

/-! ## A072203.P12917993393740984955

`Δ[n-∑[A002819(n)]]`
-/

namespace A072203.P12917993393740984955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072203.P12917993393740984955

namespace A072203

/-- `Δ[n-∑[A002819(n)]]` -/
def P12917993393740984955.Spec : Prop :=
  ∀ n, P12917993393740984955.a n = A072203 (n + 1)

end A072203

/-!
# A072205: a(n) = (p^2 - p + 2)/2 for p = prime(n); number of squares modulo p^2.

The programs for A072205, the canonical program `A072205.P4241057387685092381` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072205 has offset 1).

The definition of A072205 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008837, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072205.P4241057387685092381

`A008837(n+1)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072205

/-- `A008837(n+1)+1` -/
def P4241057387685092381.Spec : Prop :=
  ∀ n, P4241057387685092381.a n = A072205 (n + 1)

theorem P4241057387685092381.correct : P4241057387685092381.Spec := by
  intro n
  simp only [A072205, Nat.add_sub_cancel]

end A072205

/-! ## A072205.P1581805775731127473

`∑[A371201(n)]+1`
-/

namespace A072205.P1581805775731127473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072205.P1581805775731127473

namespace A072205

/-- `∑[A371201(n)]+1` -/
def P1581805775731127473.Spec : Prop :=
  ∀ n, P1581805775731127473.a n = A072205 (n + 1)

end A072205

/-! ## A072205.P444129699508018990

`ceil(A119959(n+1)/2)`
-/

namespace A072205.P444129699508018990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A119959 (n + 1) : ℚ) / 2⌉

end

end A072205.P444129699508018990

namespace A072205

/-- `ceil(A119959(n+1)/2)` -/
def P444129699508018990.Spec : Prop :=
  ∀ n, P444129699508018990.a n = A072205 (n + 1)

end A072205

/-! ## A072205.P5096782101781481673

`C(Δ[A007504(n)], 2)+1`
-/

namespace A072205.P5096782101781481673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2 + 1

end

end A072205.P5096782101781481673

namespace A072205

/-- `C(Δ[A007504(n)], 2)+1` -/
def P5096782101781481673.Spec : Prop :=
  ∀ n, (P5096782101781481673.a n : ℤ) = A072205 (n + 1)

end A072205

/-! ## A072205.P16165367103800605834

`C(p?[A259153(n)], 2)+1`
-/

namespace A072205.P16165367103800605834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2 + 1

end

end A072205.P16165367103800605834

namespace A072205

/-- `C(p?[A259153(n)], 2)+1` -/
def P16165367103800605834.Spec : Prop :=
  ∀ n, (P16165367103800605834.a n : ℤ) = A072205 (n + 1)

end A072205

/-! ## A072205.P13166739797428185748

`A036689(n+1)/2+1`
-/

namespace A072205.P13166739797428185748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036689 (n + 1) : ℚ) / 2 + 1

end

end A072205.P13166739797428185748

namespace A072205

/-- `A036689(n+1)/2+1` -/
def P13166739797428185748.Spec : Prop :=
  ∀ n, P13166739797428185748.a n = (A072205 (n + 1) : ℚ)

end A072205

/-! ## A072205.P8881883549214192956

`A179545(n+1)/3+1`
-/

namespace A072205.P8881883549214192956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179545 (n + 1) : ℚ) / 3 + 1

end

end A072205.P8881883549214192956

namespace A072205

/-- `A179545(n+1)/3+1` -/
def P8881883549214192956.Spec : Prop :=
  ∀ n, P8881883549214192956.a n = (A072205 (n + 1) : ℚ)

end A072205

/-! ## A072205.P7674485726816980416

`(A306190(n+1)+3)/2`
-/

namespace A072205.P7674485726816980416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306190 (n + 1) + 3 : ℚ) / 2

end

end A072205.P7674485726816980416

namespace A072205

/-- `(A306190(n+1)+3)/2` -/
def P7674485726816980416.Spec : Prop :=
  ∀ n, P7674485726816980416.a n = (A072205 (n + 1) : ℚ)

end A072205

/-! ## A072205.P2819935361310771377

`C(A000040(n+1), 2)+1`
-/

namespace A072205.P2819935361310771377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat 2 + 1

end

end A072205.P2819935361310771377

namespace A072205

/-- `C(A000040(n+1), 2)+1` -/
def P2819935361310771377.Spec : Prop :=
  ∀ n, (P2819935361310771377.a n : ℤ) = A072205 (n + 1)

end A072205

/-! ## A072205.P5484028871414523124

`A045717(n+1)+A014284(n+1)`
-/

namespace A072205.P5484028871414523124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045717 (n + 1) + A014284 (n + 1)

end

end A072205.P5484028871414523124

namespace A072205

/-- `A045717(n+1)+A014284(n+1)` -/
def P5484028871414523124.Spec : Prop :=
  ∀ n, P5484028871414523124.a n = A072205 (n + 1)

end A072205

/-! ## A072205.P2071759392354471016

`A079725(n+1)+A036439(n+1)`
-/

namespace A072205.P2071759392354471016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079725 (n + 1) + A036439 (n + 1)

end

end A072205.P2071759392354471016

namespace A072205

/-- `A079725(n+1)+A036439(n+1)` -/
def P2071759392354471016.Spec : Prop :=
  ∀ n, P2071759392354471016.a n = A072205 (n + 1)

end A072205

/-! ## A072205.P8254673345670787508

`A034953(n+1)-A006093(n+1)`
-/

namespace A072205.P8254673345670787508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A006093 (n + 1)

end

end A072205.P8254673345670787508

namespace A072205

/-- `A034953(n+1)-A006093(n+1)` -/
def P8254673345670787508.Spec : Prop :=
  ∀ n, P8254673345670787508.a n = A072205 (n + 1)

end A072205

/-! ## A072205.P11729772382051515912

`A066872(n+1)-A034953(n+1)`
-/

namespace A072205.P11729772382051515912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - A034953 (n + 1)

end

end A072205.P11729772382051515912

namespace A072205

/-- `A066872(n+1)-A034953(n+1)` -/
def P11729772382051515912.Spec : Prop :=
  ∀ n, P11729772382051515912.a n = A072205 (n + 1)

end A072205

/-! ## A072205.P9220846630960697610

`A116995(n+1)-A084920(n+1)`
-/

namespace A072205.P9220846630960697610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116995 (n + 1) - A084920 (n + 1)

end

end A072205.P9220846630960697610

namespace A072205

/-- `A116995(n+1)-A084920(n+1)` -/
def P9220846630960697610.Spec : Prop :=
  ∀ n, P9220846630960697610.a n = A072205 (n + 1)

end A072205

/-! ## A072205.P14755374718406592897

`A110494(n+1)-A130290(n+1)`
-/

namespace A072205.P14755374718406592897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 1) - A130290 (n + 1)

end

end A072205.P14755374718406592897

namespace A072205

/-- `A110494(n+1)-A130290(n+1)` -/
def P14755374718406592897.Spec : Prop :=
  ∀ n, P14755374718406592897.a n = A072205 (n + 1)

end A072205

/-! ## A072205.P2472844349255983716

`A271511(n+1)-A100484(n+1)`
-/

namespace A072205.P2472844349255983716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271511 (n + 1) - A100484 (n + 1)

end

end A072205.P2472844349255983716

namespace A072205

/-- `A271511(n+1)-A100484(n+1)` -/
def P2472844349255983716.Spec : Prop :=
  ∀ n, P2472844349255983716.a n = A072205 (n + 1)

end A072205

/-! ## A072205.P10095282078247841765

`A179545(n+1)-A306190(n+1)`
-/

namespace A072205.P10095282078247841765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179545 (n + 1) - A306190 (n + 1)

end

end A072205.P10095282078247841765

namespace A072205

/-- `A179545(n+1)-A306190(n+1)` -/
def P10095282078247841765.Spec : Prop :=
  ∀ n, P10095282078247841765.a n = A072205 (n + 1)

end A072205

/-! ## A072205.P5592984073539157744

`A110496(n+1)%A066872(n+1)`
-/

namespace A072205.P5592984073539157744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110496 (n + 1)) (A066872 (n + 1))

end

end A072205.P5592984073539157744

namespace A072205

/-- `A110496(n+1)%A066872(n+1)` -/
def P5592984073539157744.Spec : Prop :=
  ∀ n, P5592984073539157744.a n = A072205 (n + 1)

end A072205

/-! ## A072205.P17424550292850951091

`A138416(n+1)%A110494(n+1)`
-/

namespace A072205.P17424550292850951091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138416 (n + 1)) (A110494 (n + 1))

end

end A072205.P17424550292850951091

namespace A072205

/-- `A138416(n+1)%A110494(n+1)` -/
def P17424550292850951091.Spec : Prop :=
  ∀ n, P17424550292850951091.a n = A072205 (n + 1)

end A072205

/-! ## A072205.P2472658797667154547

`A138439(n+1)%A119959(n+1)`
-/

namespace A072205.P2472658797667154547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138439 (n + 1)) (A119959 (n + 1))

end

end A072205.P2472658797667154547

namespace A072205

/-- `A138439(n+1)%A119959(n+1)` -/
def P2472658797667154547.Spec : Prop :=
  ∀ n, P2472658797667154547.a n = A072205 (n + 1)

end A072205

/-!
# A072206: Third terms of triple Peano sequence A071988.

The programs for A072206, the canonical program `A072206.P1665309574646380212` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072206 has offset 1).

The definition of A072206 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072206.P1665309574646380212

`A000125(A006093(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072206

/-- `A000125(A006093(n+1))` -/
def P1665309574646380212.Spec : Prop :=
  ∀ n, P1665309574646380212.a n = A072206 (n + 1)

theorem P1665309574646380212.correct : P1665309574646380212.Spec := by
  intro n
  simp only [A072206, Nat.add_sub_cancel]

end A072206

/-! ## A072206.P4149540929331126354

`A000040(n+1)+C(A000040(n+1), 3)`
-/

namespace A072206.P4149540929331126354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (Nat.choose (A000040 (n + 1)).toNat 3 : ℤ)

end

end A072206.P4149540929331126354

namespace A072206

/-- `A000040(n+1)+C(A000040(n+1), 3)` -/
def P4149540929331126354.Spec : Prop :=
  ∀ n, P4149540929331126354.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P7607272531959638287

`C(A040976(n+1)+2, 3)+A040976(n+1)+2`
-/

namespace A072206.P7607272531959638287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A040976 (n + 1) + 2).toNat 3 : ℤ) + (A040976 (n + 1) + 2)

end

end A072206.P7607272531959638287

namespace A072206

/-- `C(A040976(n+1)+2, 3)+A040976(n+1)+2` -/
def P7607272531959638287.Spec : Prop :=
  ∀ n, P7607272531959638287.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P8959145616524194210

`A034953(n+1)+A127920(n+1)-A036689(n+1)`
-/

namespace A072206.P8959145616524194210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) + (A127920 (n + 1) - A036689 (n + 1))

end

end A072206.P8959145616524194210

namespace A072206

/-- `A034953(n+1)+A127920(n+1)-A036689(n+1)` -/
def P8959145616524194210.Spec : Prop :=
  ∀ n, P8959145616524194210.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P9671760371670752592

`A071988(3*(n+1))`
-/

namespace A072206.P9671760371670752592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071988 (3 * (n + 1))

end

end A072206.P9671760371670752592

namespace A072206

/-- `A071988(3*(n+1))` -/
def P9671760371670752592.Spec : Prop :=
  ∀ n, P9671760371670752592.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P10834924788538947837

`A011826(Δ[A007504(n)])-1`
-/

namespace A072206.P10834924788538947837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011826 (f1 (n + 1) - f1 n).toNat - 1

end

end A072206.P10834924788538947837

namespace A072206

/-- `A011826(Δ[A007504(n)])-1` -/
def P10834924788538947837.Spec : Prop :=
  ∀ n, P10834924788538947837.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P2373751080350803812

`A000125(record[A000010(n+1)])`
-/

namespace A072206.P2373751080350803812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072206.P2373751080350803812

namespace A072206

/-- `A000125(record[A000010(n+1)])` -/
def P2373751080350803812.Spec : Prop :=
  ∀ n, P2373751080350803812.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P3193933799087896186

`A000125(A000040(n+1)-1)`
-/

namespace A072206.P3193933799087896186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A000040 (n + 1) - 1).toNat

end

end A072206.P3193933799087896186

namespace A072206

/-- `A000125(A000040(n+1)-1)` -/
def P3193933799087896186.Spec : Prop :=
  ∀ n, P3193933799087896186.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P15364021480767582404

`A000125(A008578(n+2)-1)`
-/

namespace A072206.P15364021480767582404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A008578 (n + 2) - 1).toNat

end

end A072206.P15364021480767582404

namespace A072206

/-- `A000125(A008578(n+2)-1)` -/
def P15364021480767582404.Spec : Prop :=
  ∀ n, P15364021480767582404.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P13708422752975858381

`A000125(A008864(n+1)-2)`
-/

namespace A072206.P13708422752975858381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A008864 (n + 1) - 2).toNat

end

end A072206.P13708422752975858381

namespace A072206

/-- `A000125(A008864(n+1)-2)` -/
def P13708422752975858381.Spec : Prop :=
  ∀ n, P13708422752975858381.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P16236908272087502392

`A004006(A000040(n+1)-1)+1`
-/

namespace A072206.P16236908272087502392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (A000040 (n + 1) - 1).toNat + 1

end

end A072206.P16236908272087502392

namespace A072206

/-- `A004006(A000040(n+1)-1)+1` -/
def P16236908272087502392.Spec : Prop :=
  ∀ n, P16236908272087502392.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P2307808179863194239

`A011826(eq[2, A000005(n+1)]+1)-1`
-/

namespace A072206.P2307808179863194239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011826 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A072206.P2307808179863194239

namespace A072206

/-- `A011826(eq[2, A000005(n+1)]+1)-1` -/
def P2307808179863194239.Spec : Prop :=
  ∀ n, P2307808179863194239.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P10463066240505388497

`p?[A352844(n)]+C(A040976(n+1)+2, 3)`
-/

namespace A072206.P10463066240505388497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (Nat.choose (A040976 (n + 1) + 2).toNat 3 : ℤ)

end

end A072206.P10463066240505388497

namespace A072206

/-- `p?[A352844(n)]+C(A040976(n+1)+2, 3)` -/
def P10463066240505388497.Spec : Prop :=
  ∀ n, P10463066240505388497.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P15274551297877845340

`A000292(A000040(n+1)-2)+A000040(n+1)`
-/

namespace A072206.P15274551297877845340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A000040 (n + 1) - 2).toNat + A000040 (n + 1)

end

end A072206.P15274551297877845340

namespace A072206

/-- `A000292(A000040(n+1)-2)+A000040(n+1)` -/
def P15274551297877845340.Spec : Prop :=
  ∀ n, P15274551297877845340.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P2786198315092914506

`record[A000292(A002472(2*n+1))+A006530(2*n+1)]`
-/

namespace A072206.P2786198315092914506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002472 (2 * n + 1)).toNat + A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072206.P2786198315092914506

namespace A072206

/-- `record[A000292(A002472(2*n+1))+A006530(2*n+1)]` -/
def P2786198315092914506.Spec : Prop :=
  ∀ n, P2786198315092914506.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P2857219217393342230

`record[A014963(2*n+1)+A000292(A002472(2*n+1))]`
-/

namespace A072206.P2857219217393342230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1) + A000292 (A002472 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072206.P2857219217393342230

namespace A072206

/-- `record[A014963(2*n+1)+A000292(A002472(2*n+1))]` -/
def P2857219217393342230.Spec : Prop :=
  ∀ n, P2857219217393342230.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P1085752485129618771

`record[A000292(A002472(2*n+1))+A020639(2*n+1)]`
-/

namespace A072206.P1085752485129618771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002472 (2 * n + 1)).toNat + A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072206.P1085752485129618771

namespace A072206

/-- `record[A000292(A002472(2*n+1))+A020639(2*n+1)]` -/
def P1085752485129618771.Spec : Prop :=
  ∀ n, P1085752485129618771.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P3402705177200507285

`A263614(A100484(n+1))`
-/

namespace A072206.P3402705177200507285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263614 (A100484 (n + 1)).toNat

end

end A072206.P3402705177200507285

namespace A072206

/-- `A263614(A100484(n+1))` -/
def P3402705177200507285.Spec : Prop :=
  ∀ n, P3402705177200507285.a n = A072206 (n + 1)

end A072206

/-! ## A072206.P28161268726012754

`A263614(A001747(n+2))`
-/

namespace A072206.P28161268726012754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263614 (A001747 (n + 2)).toNat

end

end A072206.P28161268726012754

namespace A072206

/-- `A263614(A001747(n+2))` -/
def P28161268726012754.Spec : Prop :=
  ∀ n, P28161268726012754.a n = A072206 (n + 1)

end A072206

/-!
# A072207: a(0) = 1; for n>0, a(n) = number of distinct sums of subsets of {1, 1/2, 1/3, 1/4, ..., 1/n} (allowing the empty subset).

The programs for A072207, there is no canonical definition to state claims against.
-/

/-! ## A072207.P10031763531489735900

`record[A005940(A007614(2^n))]`
-/

namespace A072207.P10031763531489735900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A007614 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072207.P10031763531489735900

/-! ## A072207.P5662148037461721246

`∪[A008621(A198274(n+4)), A000079(n)]`
-/

namespace A072207.P5662148037461721246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A198274 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072207.P5662148037461721246

/-! ## A072207.P11532008243407109078

`A051638(A383324(n))`
-/

namespace A072207.P11532008243407109078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 (A383324 n).toNat

end

end A072207.P11532008243407109078

/-! ## A072207.P8177281497468704857

`A018442(∑[A227153(n)])`
-/

namespace A072207.P8177281497468704857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018442 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072207.P8177281497468704857

/-! ## A072207.P16385546294834565539

`A018671(record[A192262(n)])`
-/

namespace A072207.P16385546294834565539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018671 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072207.P16385546294834565539

/-!
# A072209: Number of primitive roots of those integers with at least one primitive root.

The programs for A072209, the canonical program `A072209.P5251402996353045043` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072209 has offset 1).

The definition of A072209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072209.P5251402996353045043

`A000010(A000010(A033948(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A072209

/-- `A000010(A000010(A033948(n+1)))` -/
def P5251402996353045043.Spec : Prop :=
  ∀ n, P5251402996353045043.a n = A072209 (n + 1)

theorem P5251402996353045043.correct : P5251402996353045043.Spec := by
  intro n
  simp only [A072209, Nat.add_sub_cancel]

end A072209

/-! ## A072209.P510296129984714035

`A010554(A033948(n+1))`
-/

namespace A072209.P510296129984714035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A033948 (n + 1)).toNat

end

end A072209.P510296129984714035

namespace A072209

/-- `A010554(A033948(n+1))` -/
def P510296129984714035.Spec : Prop :=
  ∀ n, P510296129984714035.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P14071140923749676522

`A258615(record[A141258(n+1)])`
-/

namespace A072209.P14071140923749676522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258615 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072209.P14071140923749676522

namespace A072209

/-- `A258615(record[A141258(n+1)])` -/
def P14071140923749676522.Spec : Prop :=
  ∀ n, P14071140923749676522.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P8785652179970422271

`A258615(record[A160377(n+1)+1])`
-/

namespace A072209.P8785652179970422271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160377 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258615 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072209.P8785652179970422271

namespace A072209

/-- `A258615(record[A160377(n+1)+1])` -/
def P8785652179970422271.Spec : Prop :=
  ∀ n, P8785652179970422271.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P6732782929099960629

`A258615(eq[1, A034380(n+1)]+1)`
-/

namespace A072209.P6732782929099960629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072209.P6732782929099960629

namespace A072209

/-- `A258615(eq[1, A034380(n+1)]+1)` -/
def P6732782929099960629.Spec : Prop :=
  ∀ n, P6732782929099960629.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P16136477345370224940

`A258615(lt[A060594(n+1), 3]+1)`
-/

namespace A072209.P16136477345370224940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258615 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A072209.P16136477345370224940

namespace A072209

/-- `A258615(lt[A060594(n+1), 3]+1)` -/
def P16136477345370224940.Spec : Prop :=
  ∀ n, P16136477345370224940.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P13816055170990476968

`A046144(A033948(2*n+1-n))`
-/

namespace A072209.P13816055170990476968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (A033948 (2 * n + 1 - n)).toNat

end

end A072209.P13816055170990476968

namespace A072209

/-- `A046144(A033948(2*n+1-n))` -/
def P13816055170990476968.Spec : Prop :=
  ∀ n, P13816055170990476968.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P7663384668565666337

`A000010(A000010(record[A141258(n+1)]))`
-/

namespace A072209.P7663384668565666337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A072209.P7663384668565666337

namespace A072209

/-- `A000010(A000010(record[A141258(n+1)]))` -/
def P7663384668565666337.Spec : Prop :=
  ∀ n, P7663384668565666337.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P18039315960061497326

`A258615(record[A051953(n+1)+A002322(n+1)])`
-/

namespace A072209.P18039315960061497326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258615 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072209.P18039315960061497326

namespace A072209

/-- `A258615(record[A051953(n+1)+A002322(n+1)])` -/
def P18039315960061497326.Spec : Prop :=
  ∀ n, P18039315960061497326.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P16038552836660913714

`A302257(2*A033948(n+1)-A033948(n+1))`
-/

namespace A072209.P16038552836660913714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302257 (2 * A033948 (n + 1) - A033948 (n + 1)).toNat

end

end A072209.P16038552836660913714

namespace A072209

/-- `A302257(2*A033948(n+1)-A033948(n+1))` -/
def P16038552836660913714.Spec : Prop :=
  ∀ n, P16038552836660913714.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P3391301740472609093

`A327790(2*A033948(n+1)-A033948(n+1))`
-/

namespace A072209.P3391301740472609093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327790 (2 * A033948 (n + 1) - A033948 (n + 1)).toNat

end

end A072209.P3391301740472609093

namespace A072209

/-- `A327790(2*A033948(n+1)-A033948(n+1))` -/
def P3391301740472609093.Spec : Prop :=
  ∀ n, P3391301740472609093.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P1581211130676045416

`A010554(eq[A010554(n+1), A046144(n+1)]+1)`
-/

namespace A072209.P1581211130676045416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A072209.P1581211130676045416

namespace A072209

/-- `A010554(eq[A010554(n+1), A046144(n+1)]+1)` -/
def P1581211130676045416.Spec : Prop :=
  ∀ n, P1581211130676045416.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P16601382615983951208

`A258615(eq[A104192(n+1), A104193(n+1)]+1)`
-/

namespace A072209.P16601382615983951208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258615 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A072209.P16601382615983951208

namespace A072209

/-- `A258615(eq[A104192(n+1), A104193(n+1)]+1)` -/
def P16601382615983951208.Spec : Prop :=
  ∀ n, P16601382615983951208.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P7483601840140039100

`A206941(2*A033948(n+1))`
-/

namespace A072209.P7483601840140039100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206941 (2 * A033948 (n + 1)).toNat

end

end A072209.P7483601840140039100

namespace A072209

/-- `A206941(2*A033948(n+1))` -/
def P7483601840140039100.Spec : Prop :=
  ∀ n, P7483601840140039100.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P8096954056971134478

`A327790(2*A033948(n+1))`
-/

namespace A072209.P8096954056971134478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327790 (2 * A033948 (n + 1)).toNat

end

end A072209.P8096954056971134478

namespace A072209

/-- `A327790(2*A033948(n+1))` -/
def P8096954056971134478.Spec : Prop :=
  ∀ n, P8096954056971134478.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P12661941665901642857

`A206941(A033948(n+1)+A033948(n+1))`
-/

namespace A072209.P12661941665901642857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206941 (A033948 (n + 1) + A033948 (n + 1)).toNat

end

end A072209.P12661941665901642857

namespace A072209

/-- `A206941(A033948(n+1)+A033948(n+1))` -/
def P12661941665901642857.Spec : Prop :=
  ∀ n, P12661941665901642857.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P12254015314588403050

`A327790(A033948(n+1)+A033948(n+1))`
-/

namespace A072209.P12254015314588403050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327790 (A033948 (n + 1) + A033948 (n + 1)).toNat

end

end A072209.P12254015314588403050

namespace A072209

/-- `A327790(A033948(n+1)+A033948(n+1))` -/
def P12254015314588403050.Spec : Prop :=
  ∀ n, P12254015314588403050.a n = A072209 (n + 1)

end A072209

/-! ## A072209.P6516865577144004403

`A302257(A033948(n+1))%A305236(n+1)`
-/

namespace A072209.P6516865577144004403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302257 (A033948 (n + 1)).toNat) (A305236 (n + 1))

end

end A072209.P6516865577144004403

namespace A072209

/-- `A302257(A033948(n+1))%A305236(n+1)` -/
def P6516865577144004403.Spec : Prop :=
  ∀ n, P6516865577144004403.a n = A072209 (n + 1)

end A072209

/-!
# A072210: a(1)=a(2)=1; a(n)=reverse(reverse(a(n-1))+reverse(a(n-2))) for n > 2.

The programs for A072210, there is no canonical definition to state claims against.
-/

/-! ## A072210.P15186409790320471455

`A004086(A004086(a(n-1))+A004086(a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A072210.P15186409790320471455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A004086 (A004086 (a (n - 1)).toNat + A004086 (a (n - 2)).toNat).toNat

end

end A072210.P15186409790320471455

/-! ## A072210.P16233231173400643352

`A004091(A187829(n+1))`
-/

namespace A072210.P16233231173400643352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 (A187829 (n + 1)).toNat

end

end A072210.P16233231173400643352

/-! ## A072210.P18439512413277222475

`A004091(C(A005496(n), n))`
-/

namespace A072210.P18439512413277222475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 (Nat.choose (A005496 n).toNat n)

end

end A072210.P18439512413277222475

/-! ## A072210.P15754151698583902048

`A004091(C(A252493(n+1), n))`
-/

namespace A072210.P15754151698583902048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 (Nat.choose (A252493 (n + 1)).toNat n)

end

end A072210.P15754151698583902048

/-! ## A072210.P6069829492717229359

`A004086(A245328(ceil(2^(n-1))))`
-/

namespace A072210.P6069829492717229359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A245328 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A072210.P6069829492717229359

/-!
# A072211: a(n) = p-1 if n=p, p if n=p^e and e<>1, 1 otherwise; p a prime.

The programs for A072211, the canonical program `A072211.P14229134148904539020` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072211 has offset 1).

The definition of A072211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072211.P14229134148904539020

`ceil((n+1)*∏{p}[n+1, #/(n+3)])`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072211

/-- `ceil((n+1)*∏{p}[n+1, #/(n+3)])` -/
def P14229134148904539020.Spec : Prop :=
  ∀ n, P14229134148904539020.a n = A072211 (n + 1)

theorem P14229134148904539020.correct : P14229134148904539020.Spec := by
  intro n
  simp only [A072211, Nat.add_sub_cancel]

end A072211

/-! ## A072211.P11241254552226954564

`ceil((n+1)/∏{p}[n+1, (n+3)/#])`
-/

namespace A072211.P11241254552226954564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 3 : ℚ) / (p : ℚ))⌉

end

end A072211.P11241254552226954564

namespace A072211

/-- `ceil((n+1)/∏{p}[n+1, (n+3)/#])` -/
def P11241254552226954564.Spec : Prop :=
  ∀ n, P11241254552226954564.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P15367096922734442760

`round(A014963(n+1)/ratio[n+1])`
-/

namespace A072211.P15367096922734442760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014963 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A072211.P15367096922734442760

namespace A072211

/-- `round(A014963(n+1)/ratio[n+1])` -/
def P15367096922734442760.Spec : Prop :=
  ∀ n, P15367096922734442760.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P5012994832857670542

`A028310(ceil(n/A048671(n+1)))`
-/

namespace A072211.P5012994832857670542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌈(n : ℚ) / (A048671 (n + 1) : ℚ)⌉.toNat

end

end A072211.P5012994832857670542

namespace A072211

/-- `A028310(ceil(n/A048671(n+1)))` -/
def P5012994832857670542.Spec : Prop :=
  ∀ n, P5012994832857670542.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P16928615720314317001

`A014963(n+1)-Δ[A230980(n)]`
-/

namespace A072211.P16928615720314317001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - (f1 (n + 1) - f1 n)

end

end A072211.P16928615720314317001

namespace A072211

/-- `A014963(n+1)-Δ[A230980(n)]` -/
def P16928615720314317001.Spec : Prop :=
  ∀ n, P16928615720314317001.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P8865847519874363573

`A014963(n+1)-A010051(n+1)`
-/

namespace A072211.P8865847519874363573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - A010051 (n + 1)

end

end A072211.P8865847519874363573

namespace A072211

/-- `A014963(n+1)-A010051(n+1)` -/
def P8865847519874363573.Spec : Prop :=
  ∀ n, P8865847519874363573.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P6684947565533755018

`A014684(n+1)/A048671(n+1)`
-/

namespace A072211.P6684947565533755018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014684 (n + 1) : ℚ) / (A048671 (n + 1) : ℚ)

end

end A072211.P6684947565533755018

namespace A072211

/-- `A014684(n+1)/A048671(n+1)` -/
def P6684947565533755018.Spec : Prop :=
  ∀ n, P6684947565533755018.a n = (A072211 (n + 1) : ℚ)

end A072211

/-! ## A072211.P17128785365269731705

`gcd(A000010(n+1), A182936(n+1))`
-/

namespace A072211.P17128785365269731705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A182936 (n + 1))

end

end A072211.P17128785365269731705

namespace A072211

/-- `gcd(A000010(n+1), A182936(n+1))` -/
def P17128785365269731705.Spec : Prop :=
  ∀ n, (P17128785365269731705.a n : ℤ) = A072211 (n + 1)

end A072211

/-! ## A072211.P11273895623434403287

`gcd(A063918(n+1), A133937(n+1))`
-/

namespace A072211.P11273895623434403287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063918 (n + 1)) (A133937 (n + 1))

end

end A072211.P11273895623434403287

namespace A072211

/-- `gcd(A063918(n+1), A133937(n+1))` -/
def P11273895623434403287.Spec : Prop :=
  ∀ n, (P11273895623434403287.a n : ℤ) = A072211 (n + 1)

end A072211

/-! ## A072211.P13002044173626081611

`A014963(n+1)-char[A006093(n+1)]`
-/

namespace A072211.P13002044173626081611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072211.P13002044173626081611

namespace A072211

/-- `A014963(n+1)-char[A006093(n+1)]` -/
def P13002044173626081611.Spec : Prop :=
  ∀ n, P13002044173626081611.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P7609831134869190475

`A014963(n+1)-char[A007918(n)-1]`
-/

namespace A072211.P7609831134869190475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072211.P7609831134869190475

namespace A072211

/-- `A014963(n+1)-char[A007918(n)-1]` -/
def P7609831134869190475.Spec : Prop :=
  ∀ n, P7609831134869190475.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P8312672555659644964

`A014963(n+1)-char[A051697(n)-1]`
-/

namespace A072211.P8312672555659644964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072211.P8312672555659644964

namespace A072211

/-- `A014963(n+1)-char[A051697(n)-1]` -/
def P8312672555659644964.Spec : Prop :=
  ∀ n, P8312672555659644964.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P7353447786443729042

`A014963(n+1)-char[A151800(n)-1]`
-/

namespace A072211.P7353447786443729042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072211.P7353447786443729042

namespace A072211

/-- `A014963(n+1)-char[A151800(n)-1]` -/
def P7353447786443729042.Spec : Prop :=
  ∀ n, P7353447786443729042.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P8987622666609104438

`A005171(n+1)+A014963(n+1)-1`
-/

namespace A072211.P8987622666609104438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + (A014963 (n + 1) - 1)

end

end A072211.P8987622666609104438

namespace A072211

/-- `A005171(n+1)+A014963(n+1)-1` -/
def P8987622666609104438.Spec : Prop :=
  ∀ n, P8987622666609104438.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P2424600909442335317

`∏{p}[A014963(n+1), A008683(n+1)+#]`
-/

namespace A072211.P2424600909442335317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A008683 (n + 1) + (p : ℤ))

end

end A072211.P2424600909442335317

namespace A072211

/-- `∏{p}[A014963(n+1), A008683(n+1)+#]` -/
def P2424600909442335317.Spec : Prop :=
  ∀ n, P2424600909442335317.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P14820776364453080523

`A014963(n+1)-char[record[A000010(n+1)]]`
-/

namespace A072211.P14820776364453080523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072211.P14820776364453080523

namespace A072211

/-- `A014963(n+1)-char[record[A000010(n+1)]]` -/
def P14820776364453080523.Spec : Prop :=
  ∀ n, P14820776364453080523.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P15359769035225336101

`A014963(n+1)-char[A000040(n+1)-1]`
-/

namespace A072211.P15359769035225336101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072211.P15359769035225336101

namespace A072211

/-- `A014963(n+1)-char[A000040(n+1)-1]` -/
def P15359769035225336101.Spec : Prop :=
  ∀ n, P15359769035225336101.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P8164224500206479880

`A014963(n+1)-char[A006530(n+2)-1]`
-/

namespace A072211.P8164224500206479880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072211.P8164224500206479880

namespace A072211

/-- `A014963(n+1)-char[A006530(n+2)-1]` -/
def P8164224500206479880.Spec : Prop :=
  ∀ n, P8164224500206479880.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P7486714148655370861

`A014963(n+1)-char[A020639(n+2)-1]`
-/

namespace A072211.P7486714148655370861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072211.P7486714148655370861

namespace A072211

/-- `A014963(n+1)-char[A020639(n+2)-1]` -/
def P7486714148655370861.Spec : Prop :=
  ∀ n, P7486714148655370861.a n = A072211 (n + 1)

end A072211

/-! ## A072211.P17433368247561298176

`A120007(n+1)+A008683(A100994(n+1))`
-/

namespace A072211.P17433368247561298176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (n + 1) + A008683 (A100994 (n + 1)).toNat

end

end A072211.P17433368247561298176

namespace A072211

/-- `A120007(n+1)+A008683(A100994(n+1))` -/
def P17433368247561298176.Spec : Prop :=
  ∀ n, P17433368247561298176.a n = A072211 (n + 1)

end A072211

/-!
# A072212: Smallest m such that number of partitions of m exceeds 10^n.

The programs for A072212, there is no canonical definition to state claims against.
-/

/-! ## A072212.P2965023016662551447

`∑[A097985(n+1)]+1`
-/

namespace A072212.P2965023016662551447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072212.P2965023016662551447

/-! ## A072212.P16783326052252250546

`A020725(∑[A097985(n+1)])`
-/

namespace A072212.P16783326052252250546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072212.P16783326052252250546

/-! ## A072212.P6928372068724115238

`A065475(∑[A097985(n+1)])`
-/

namespace A072212.P6928372068724115238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072212.P6928372068724115238

/-! ## A072212.P5282401732832955672

`A114637(∑[A097985(n+1)])`
-/

namespace A072212.P5282401732832955672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072212.P5282401732832955672

/-!
# A072213: Number of partitions of n^2.

The programs for A072213, there is no canonical definition to state claims against.
-/

/-! ## A072213.P11145441461390192536

`A000041(n²)`
-/

namespace A072213.P11145441461390192536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n ^ 2)

end

end A072213.P11145441461390192536

/-! ## A072213.P10714291894430477038

`A000065(n²)+1`
-/

namespace A072213.P10714291894430477038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n ^ 2) + 1

end

end A072213.P10714291894430477038

/-! ## A072213.P17513192016820030881

`A133041(n²)-n²`
-/

namespace A072213.P17513192016820030881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 (n ^ 2) - (n ^ 2 : ℤ)

end

end A072213.P17513192016820030881

/-! ## A072213.P10935286429140424254

`and(1, 2*n)+A000041(∑[2*n]-n)`
-/

namespace A072213.P10935286429140424254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (2 * n) : ℤ) + A000041 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A072213.P10935286429140424254

/-! ## A072213.P5158239549215702647

`A000041(∑[2*n+1]-(2*n+1))+C(2, n+3)`
-/

namespace A072213.P5158239549215702647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1)) + (Nat.choose 2 (n + 3) : ℤ)

end

end A072213.P5158239549215702647

/-! ## A072213.P384697442834474301

`∑{d}[A002522(n), A133732(#)]`
-/

namespace A072213.P384697442834474301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A133732 d

end

end A072213.P384697442834474301

/-! ## A072213.P17462631276345961907

`or(A000041(A000290(n)), char[1])`
-/

namespace A072213.P17462631276345961907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000041 (A000290 n).toNat) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A072213.P17462631276345961907

/-! ## A072213.P9558280042975840997

`gcd(A000038(n), A000041(A000290(n)))`
-/

namespace A072213.P9558280042975840997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A000041 (A000290 n).toNat)

end

end A072213.P9558280042975840997

/-! ## A072213.P7720880529778627668

`lcm(A000041(A000290(n)), A020985(n))`
-/

namespace A072213.P7720880529778627668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000041 (A000290 n).toNat) (A020985 n)

end

end A072213.P7720880529778627668

/-! ## A072213.P11344707791318177162

`or(A000007(n), A000041(A000290(n)))`
-/

namespace A072213.P11344707791318177162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A000041 (A000290 n).toNat)

end

end A072213.P11344707791318177162

/-!
# A072214: Number of partitions of Fibonacci(n).

The programs for A072214, there is no canonical definition to state claims against.
-/

/-! ## A072214.P17044897445534814681

`A000041(A000045(n))`
-/

namespace A072214.P17044897445534814681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000045 n).toNat

end

end A072214.P17044897445534814681

/-! ## A072214.P12419352225403981891

`A000041(round(ϕ^n/sqrt(5)))`
-/

namespace A072214.P12419352225403981891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A072214.P12419352225403981891

/-! ## A072214.P1156093358524813508

`A000065(A324969(n+1))+1`
-/

namespace A072214.P1156093358524813508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A324969 (n + 1)).toNat + 1

end

end A072214.P1156093358524813508

/-! ## A072214.P15813912871068977539

`A139582(A053602(2*n))/2`
-/

namespace A072214.P15813912871068977539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 (A053602 (2 * n)).toNat : ℚ) / 2

end

end A072214.P15813912871068977539

/-! ## A072214.P11823011074655713124

`A000041(A157726(n)-3)^ceil(acot(n))`
-/

namespace A072214.P11823011074655713124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A157726 n - 3).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A072214.P11823011074655713124

/-!
# A072215: a(0) = 4; for n >= 0, a(n+1) = number of partitions of a(n).

The programs for A072215, there is no canonical definition to state claims against.
-/

/-! ## A072215.P12597777185946550116

`A000041(a(n-1))` with `a(0)=4`
-/

namespace A072215.P12597777185946550116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A000041 (a (n - 1)).toNat

end

end A072215.P12597777185946550116

/-!
# A072219: Any number n can be written uniquely in the form n = 2^k_1 - 2^k_2 + 2^k_3 - ... + 2^k_{2r+1} where the signs alternate, there are an odd number of terms, and k_1 > k_2 > k_3 > ... > k_{2r+1} >= 0; sequence gives number of terms 2r+1.

The programs for A072219, the canonical program `A072219.P6909177911158723994` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072219 has offset 1).

The definition of A072219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072219.P6909177911158723994

`∑[Δ[xor(n, 2*n-1)]%2]-n%2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072219

/-- `∑[Δ[xor(n, 2*n-1)]%2]-n%2` -/
def P6909177911158723994.Spec : Prop :=
  ∀ n, P6909177911158723994.a n = A072219 (n + 1)

theorem P6909177911158723994.correct : P6909177911158723994.Spec := by
  intro n
  simp only [A072219, Nat.add_sub_cancel]

end A072219

/-! ## A072219.P6148983896516824111

`(-1)^n+a(n-1-and(n, 2*n))+1` with `a(0)=1`
-/

namespace A072219.P6148983896516824111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n + (a ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1)

end

end A072219.P6148983896516824111

namespace A072219

/-- `(-1)^n+a(n-1-and(n, 2*n))+1` -/
def P6148983896516824111.Spec : Prop :=
  ∀ n, P6148983896516824111.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P11762003303797567527

`or(1, A005811(n))`
-/

namespace A072219.P11762003303797567527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005811 n)

end

end A072219.P11762003303797567527

namespace A072219

/-- `or(1, A005811(n))` -/
def P11762003303797567527.Spec : Prop :=
  ∀ n, P11762003303797567527.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P4820300175726954617

`or(1, ∑[A112347(n)])`
-/

namespace A072219.P4820300175726954617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072219.P4820300175726954617

namespace A072219

/-- `or(1, ∑[A112347(n)])` -/
def P4820300175726954617.Spec : Prop :=
  ∀ n, P4820300175726954617.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P16716293155837862287

`2*A033264(n)+1`
-/

namespace A072219.P16716293155837862287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033264 n + 1

end

end A072219.P16716293155837862287

namespace A072219

/-- `2*A033264(n)+1` -/
def P16716293155837862287.Spec : Prop :=
  ∀ n, P16716293155837862287.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P17677420512872951811

`or(1, A072339(n+1))`
-/

namespace A072219.P17677420512872951811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A072339 (n + 1))

end

end A072219.P17677420512872951811

namespace A072219

/-- `or(1, A072339(n+1))` -/
def P17677420512872951811.Spec : Prop :=
  ∀ n, P17677420512872951811.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P2249221542030080748

`or(1, A088748(n)-1)`
-/

namespace A072219.P2249221542030080748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A088748 n - 1)

end

end A072219.P2249221542030080748

namespace A072219

/-- `or(1, A088748(n)-1)` -/
def P2249221542030080748.Spec : Prop :=
  ∀ n, P2249221542030080748.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P2668129416157287426

`A088748(and(n, n+1))`
-/

namespace A072219.P2668129416157287426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (Nat.land n (n + 1))

end

end A072219.P2668129416157287426

namespace A072219

/-- `A088748(and(n, n+1))` -/
def P2668129416157287426.Spec : Prop :=
  ∀ n, P2668129416157287426.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P6945498933938300087

`or(1, n-A236840(n))`
-/

namespace A072219.P6945498933938300087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - A236840 n)

end

end A072219.P6945498933938300087

namespace A072219

/-- `or(1, n-A236840(n))` -/
def P6945498933938300087.Spec : Prop :=
  ∀ n, P6945498933938300087.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P12618799225794870003

`∑{e}[A382255(2*n+1), #]`
-/

namespace A072219.P12618799225794870003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382255 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A072219.P12618799225794870003

namespace A072219

/-- `∑{e}[A382255(2*n+1), #]` -/
def P12618799225794870003.Spec : Prop :=
  ∀ n, (P12618799225794870003.a n : ℤ) = A072219 (n + 1)

end A072219

/-! ## A072219.P8435482368340893733

`A109613(A005811(n))`
-/

namespace A072219.P8435482368340893733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A005811 n).toNat

end

end A072219.P8435482368340893733

namespace A072219

/-- `A109613(A005811(n))` -/
def P8435482368340893733.Spec : Prop :=
  ∀ n, P8435482368340893733.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P9760854841954110029

`A088748(A153733(n))`
-/

namespace A072219.P9760854841954110029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A153733 n).toNat

end

end A072219.P9760854841954110029

namespace A072219

/-- `A088748(A153733(n))` -/
def P9760854841954110029.Spec : Prop :=
  ∀ n, P9760854841954110029.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P11808920547323783373

`A088748(A129760(n+1))`
-/

namespace A072219.P11808920547323783373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A129760 (n + 1)).toNat

end

end A072219.P11808920547323783373

namespace A072219

/-- `A088748(A129760(n+1))` -/
def P11808920547323783373.Spec : Prop :=
  ∀ n, P11808920547323783373.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P13645173497036238449

`A088748(2*A025480(n))`
-/

namespace A072219.P13645173497036238449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (2 * A025480 n).toNat

end

end A072219.P13645173497036238449

namespace A072219

/-- `A088748(2*A025480(n))` -/
def P13645173497036238449.Spec : Prop :=
  ∀ n, P13645173497036238449.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P17250586391906233681

`A059841(n)+A005811(n)`
-/

namespace A072219.P17250586391906233681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A005811 n

end

end A072219.P17250586391906233681

namespace A072219

/-- `A059841(n)+A005811(n)` -/
def P17250586391906233681.Spec : Prop :=
  ∀ n, P17250586391906233681.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P9484812096654622377

`A088748(n)-A000035(n)`
-/

namespace A072219.P9484812096654622377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n - A000035 n

end

end A072219.P9484812096654622377

namespace A072219

/-- `A088748(n)-A000035(n)` -/
def P9484812096654622377.Spec : Prop :=
  ∀ n, P9484812096654622377.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P7942674239512913833

`A136004(n)-A010702(n)`
-/

namespace A072219.P7942674239512913833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n - A010702 n

end

end A072219.P7942674239512913833

namespace A072219

/-- `A136004(n)-A010702(n)` -/
def P7942674239512913833.Spec : Prop :=
  ∀ n, P7942674239512913833.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P228095076116425819

`A109613(n-A236840(n))`
-/

namespace A072219.P228095076116425819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 ((n : ℤ) - A236840 n).toNat

end

end A072219.P228095076116425819

namespace A072219

/-- `A109613(n-A236840(n))` -/
def P228095076116425819.Spec : Prop :=
  ∀ n, P228095076116425819.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P377661762050578756

`A072339(n+1)+A014707(n)`
-/

namespace A072219.P377661762050578756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 (n + 1) + A014707 n

end

end A072219.P377661762050578756

namespace A072219

/-- `A072339(n+1)+A014707(n)` -/
def P377661762050578756.Spec : Prop :=
  ∀ n, P377661762050578756.a n = A072219 (n + 1)

end A072219

/-! ## A072219.P3225651745407694326

`A005811(n)+2-A000034(n)`
-/

namespace A072219.P3225651745407694326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n + (2 - A000034 n)

end

end A072219.P3225651745407694326

namespace A072219

/-- `A005811(n)+2-A000034(n)` -/
def P3225651745407694326.Spec : Prop :=
  ∀ n, P3225651745407694326.a n = A072219 (n + 1)

end A072219

/-!
# A072221: a(n) = 6*a(n-1) - a(n-2) + 2, with a(0)=1, a(1)=4.

The programs for A072221, the canonical program `A072221.P2930931014994446438` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072221 has offset 0).

The definition of A072221 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)+2` (program `A072221.P2930931014994446438`, by `A072221.P2930931014994446438.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072221.P2930931014994446438

`6*a(n-1)-a(n-2)+2` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072221

/-- `6*a(n-1)-a(n-2)+2` -/
def P2930931014994446438.Spec : Prop :=
  ∀ n, P2930931014994446438.a n = A072221 n

theorem P2930931014994446438.correct : P2930931014994446438.Spec := by
  intro n
  simp only [A072221]

end A072221

/-! ## A072221.P7346145161602822475

`3*A001108(n)+1`
-/

namespace A072221.P7346145161602822475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001108 n + 1

end

end A072221.P7346145161602822475

namespace A072221

/-- `3*A001108(n)+1` -/
def P7346145161602822475.Spec : Prop :=
  ∀ n, P7346145161602822475.a n = A072221 n

end A072221

/-! ## A072221.P15020139758239432847

`(3*A001541(n)-1)/2`
-/

namespace A072221.P15020139758239432847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A001541 n - 1 : ℚ) / 2

end

end A072221.P15020139758239432847

namespace A072221

/-- `(3*A001541(n)-1)/2` -/
def P15020139758239432847.Spec : Prop :=
  ∀ n, P15020139758239432847.a n = (A072221 n : ℚ)

end A072221

/-! ## A072221.P2271040024384793628

`round(a(n-1)/(3-sqrt(8)))+2` with `a(0)=1, a(1)=4`
-/

namespace A072221.P2271040024384793628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))) + 2

end

end A072221.P2271040024384793628

namespace A072221

/-- `round(a(n-1)/(3-sqrt(8)))+2` -/
def P2271040024384793628.Spec : Prop :=
  ∀ n, P2271040024384793628.a n = A072221 n

end A072221

/-! ## A072221.P13806994756664599901

`2-(a(n-2)-6*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A072221.P13806994756664599901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 - (a (n - 2) - 6 * a (n - 1))

end

end A072221.P13806994756664599901

namespace A072221

/-- `2-(a(n-2)-6*a(n-1))` -/
def P13806994756664599901.Spec : Prop :=
  ∀ n, P13806994756664599901.a n = A072221 n

end A072221

/-! ## A072221.P12607087058026467388

`A270889(n)-2`
-/

namespace A072221.P12607087058026467388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270889 n - 2

end

end A072221.P12607087058026467388

namespace A072221

/-- `A270889(n)-2` -/
def P12607087058026467388.Spec : Prop :=
  ∀ n, P12607087058026467388.a n = A072221 n

end A072221

/-! ## A072221.P15890955733415010482

`A033539(Δ[n²])`
-/

namespace A072221.P15890955733415010482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072221.P15890955733415010482

namespace A072221

/-- `A033539(Δ[n²])` -/
def P15890955733415010482.Spec : Prop :=
  ∀ n, P15890955733415010482.a n = A072221 n

end A072221

/-! ## A072221.P11801084303031437344

`floor(A106329(n+1)/2)`
-/

namespace A072221.P11801084303031437344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106329 (n + 1) : ℚ) / 2⌋

end

end A072221.P11801084303031437344

namespace A072221

/-- `floor(A106329(n+1)/2)` -/
def P11801084303031437344.Spec : Prop :=
  ∀ n, P11801084303031437344.a n = A072221 n

end A072221

/-! ## A072221.P7411680258462906817

`3*A055997(n+1)-2`
-/

namespace A072221.P7411680258462906817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A055997 (n + 1) - 2

end

end A072221.P7411680258462906817

namespace A072221

/-- `3*A055997(n+1)-2` -/
def P7411680258462906817.Spec : Prop :=
  ∀ n, P7411680258462906817.a n = A072221 n

end A072221

/-! ## A072221.P4408219829137932853

`3*(A099938(n+1)/2-1)+1`
-/

namespace A072221.P4408219829137932853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A099938 (n + 1) : ℚ) / 2 - 1) + 1

end

end A072221.P4408219829137932853

namespace A072221

/-- `3*(A099938(n+1)/2-1)+1` -/
def P4408219829137932853.Spec : Prop :=
  ∀ n, P4408219829137932853.a n = (A072221 n : ℚ)

end A072221

/-! ## A072221.P15449060841183257064

`A001541(n)+A001108(n)`
-/

namespace A072221.P15449060841183257064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + A001108 n

end

end A072221.P15449060841183257064

namespace A072221

/-- `A001541(n)+A001108(n)` -/
def P15449060841183257064.Spec : Prop :=
  ∀ n, P15449060841183257064.a n = A072221 n

end A072221

/-! ## A072221.P6868098456367689095

`record[A033539(A014681(n)+1)]`
-/

namespace A072221.P6868098456367689095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033539 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072221.P6868098456367689095

namespace A072221

/-- `record[A033539(A014681(n)+1)]` -/
def P6868098456367689095.Spec : Prop :=
  ∀ n, P6868098456367689095.a n = A072221 n

end A072221

/-! ## A072221.P6848113662239786706

`A001108(n)+Δ[A182435(n)]`
-/

namespace A072221.P6848113662239786706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n + (f1 (n + 1) - f1 n)

end

end A072221.P6848113662239786706

namespace A072221

/-- `A001108(n)+Δ[A182435(n)]` -/
def P6848113662239786706.Spec : Prop :=
  ∀ n, P6848113662239786706.a n = A072221 n

end A072221

/-! ## A072221.P17610291615356415670

`Δ[A001109(n)]-A182435(n)`
-/

namespace A072221.P17610291615356415670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A182435 n

end

end A072221.P17610291615356415670

namespace A072221

/-- `Δ[A001109(n)]-A182435(n)` -/
def P17610291615356415670.Spec : Prop :=
  ∀ n, P17610291615356415670.a n = A072221 n

end A072221

/-! ## A072221.P10149482189831053035

`record[A033539(A033999(n)+n)]`
-/

namespace A072221.P10149482189831053035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033539 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072221.P10149482189831053035

namespace A072221

/-- `record[A033539(A033999(n)+n)]` -/
def P10149482189831053035.Spec : Prop :=
  ∀ n, P10149482189831053035.a n = A072221 n

end A072221

/-! ## A072221.P3671419252935500678

`record[A077985(n)]-A182435(n)`
-/

namespace A072221.P3671419252935500678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A182435 n

end

end A072221.P3671419252935500678

namespace A072221

/-- `record[A077985(n)]-A182435(n)` -/
def P3671419252935500678.Spec : Prop :=
  ∀ n, P3671419252935500678.a n = A072221 n

end A072221

/-! ## A072221.P4479452293010434102

`A001108(n+1)-A005319(n)`
-/

namespace A072221.P4479452293010434102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 (n + 1) - A005319 n

end

end A072221.P4479452293010434102

namespace A072221

/-- `A001108(n+1)-A005319(n)` -/
def P4479452293010434102.Spec : Prop :=
  ∀ n, P4479452293010434102.a n = A072221 n

end A072221

/-! ## A072221.P3061446730370456752

`A003499(n)-A055997(n+1)`
-/

namespace A072221.P3061446730370456752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 n - A055997 (n + 1)

end

end A072221.P3061446730370456752

namespace A072221

/-- `A003499(n)-A055997(n+1)` -/
def P3061446730370456752.Spec : Prop :=
  ∀ n, P3061446730370456752.a n = A072221 n

end A072221

/-!
# A072222: a(n) = (abs(n-1-a(n-2)) mod n) + (abs(n-1-a(n-1)) mod (n-1)), a(0) = 1, a(1) = 1.

The programs for A072222, the canonical program `A072222.P2693099119287992099` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072222 has offset 0).

The definition of A072222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072222.P2693099119287992099

`a(n-3)+2` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=5, a(5)=4, a(6)=1, a(7)=7, a(8)=6`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072222

/-- `a(n-3)+2` -/
def P2693099119287992099.Spec : Prop :=
  ∀ n, (P2693099119287992099.a n : ℤ) = A072222 n

theorem P2693099119287992099.correct : P2693099119287992099.Spec := by
  intro n
  simp only [A072222]

end A072222

/-!
# A072225: Numbers k such that prime(k) + prime(k+1) + prime(k+2) is prime.

The programs for A072225, there is no canonical definition to state claims against.
-/

/-! ## A072225.P7260284309430262637

`eq[2, A248498(n+1)]+1`
-/

namespace A072225.P7260284309430262637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072225.P7260284309430262637

/-! ## A072225.P16451313805577555498

`eq[3, A071194(n+1)]+1`
-/

namespace A072225.P16451313805577555498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072225.P16451313805577555498

/-! ## A072225.P586944743621675873

`A000720(A073681(n+1))`
-/

namespace A072225.P586944743621675873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073681 (n + 1)).toNat

end

end A072225.P586944743621675873

/-! ## A072225.P11351655391023045099

`A061395(A073681(n+1))%A139606(n)`
-/

namespace A072225.P11351655391023045099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A073681 (n + 1)).toNat) (A139606 n)

end

end A072225.P11351655391023045099

/-! ## A072225.P7935612820815584399

`A061395(A073681(n+1)%A007488(n+1))`
-/

namespace A072225.P7935612820815584399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A073681 (n + 1)) (A007488 (n + 1))).toNat

end

end A072225.P7935612820815584399

/-! ## A072225.P12757932315290520574

`A000720(A152470(n+1))-2`
-/

namespace A072225.P12757932315290520574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A152470 (n + 1)).toNat - 2

end

end A072225.P12757932315290520574

/-! ## A072225.P14082170614586605142

`A000720(A152469(n+1)-1)`
-/

namespace A072225.P14082170614586605142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A152469 (n + 1) - 1).toNat

end

end A072225.P14082170614586605142

/-! ## A072225.P11005365937501241465

`eq[1, A001222(A034961(n+1))]+1`
-/

namespace A072225.P11005365937501241465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034961 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072225.P11005365937501241465

/-! ## A072225.P17067003790608076295

`A084360(A152470(n+1))`
-/

namespace A072225.P17067003790608076295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A152470 (n + 1)).toNat

end

end A072225.P17067003790608076295

/-! ## A072225.P2969508394999553243

`A033270(A152469(n+1))`
-/

namespace A072225.P2969508394999553243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A152469 (n + 1)).toNat

end

end A072225.P2969508394999553243

/-! ## A072225.P6599627415822900303

`A082513(2*A152470(n+1)-A152470(n+1))`
-/

namespace A072225.P6599627415822900303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (2 * A152470 (n + 1) - A152470 (n + 1)).toNat

end

end A072225.P6599627415822900303

/-! ## A072225.P1065822768753268306

`A372627(∑[n+1]+2)`
-/

namespace A072225.P1065822768753268306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372627 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A072225.P1065822768753268306

/-!
# A072226: Numbers k such that the k-th cyclotomic polynomial evaluated at 2 (=A019320(k)) is prime.

The programs for A072226, the canonical program `A072226.P6963126692468635077` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072226 has offset 1).

The definition of A072226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072226.P833744706466960598

`eq[2, A085398(n+1)]+1`
-/

namespace A072226.P833744706466960598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072226.P833744706466960598

namespace A072226

/-- `eq[2, A085398(n+1)]+1` -/
def P833744706466960598.Spec : Prop :=
  ∀ n, (P833744706466960598.a n : ℤ) = A072226 (n + 1)

end A072226

/-! ## A072226.P6434794900463563489

`eq[2, A085398(A028310(n))]`
-/

namespace A072226.P6434794900463563489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072226.P6434794900463563489

namespace A072226

/-- `eq[2, A085398(A028310(n))]` -/
def P6434794900463563489.Spec : Prop :=
  ∀ n, (P6434794900463563489.a n : ℤ) = A072226 (n + 1)

end A072226

/-! ## A072226.P7867298368260948555

`A020725(eq[2, A085398(n+1)])`
-/

namespace A072226.P7867298368260948555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072226.P7867298368260948555

namespace A072226

/-- `A020725(eq[2, A085398(n+1)])` -/
def P7867298368260948555.Spec : Prop :=
  ∀ n, P7867298368260948555.a n = A072226 (n + 1)

end A072226

/-! ## A072226.P8775529504700991698

`eq[2, A085398(xor(n, A178225(2*n)))]`
-/

namespace A072226.P8775529504700991698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (Int.xor (n : ℤ) (A178225 (2 * n))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072226.P8775529504700991698

namespace A072226

/-- `eq[2, A085398(xor(n, A178225(2*n)))]` -/
def P8775529504700991698.Spec : Prop :=
  ∀ n, (P8775529504700991698.a n : ℤ) = A072226 (n + 1)

end A072226

/-! ## A072226.P15642750578332672975

`record[A005843(n+2)/A085398(n+2)]`
-/

namespace A072226.P15642750578332672975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 2) : ℚ) / (A085398 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072226.P15642750578332672975

namespace A072226

/-- `record[A005843(n+2)/A085398(n+2)]` -/
def P15642750578332672975.Spec : Prop :=
  ∀ n, P15642750578332672975.a n = (A072226 (n + 1) : ℚ)

end A072226

/-! ## A072226.P8015457559134054080

`A344180(eq[2, A085398(A344180(n))])`
-/

namespace A072226.P8015457559134054080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072226.P8015457559134054080

namespace A072226

/-- `A344180(eq[2, A085398(A344180(n))])` -/
def P8015457559134054080.Spec : Prop :=
  ∀ n, P8015457559134054080.a n = A072226 (n + 1)

end A072226

/-! ## A072226.P9464907569687361931

`eq[2, A252503(n+1)]+1`
-/

namespace A072226.P9464907569687361931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072226.P9464907569687361931

namespace A072226

/-- `eq[2, A252503(n+1)]+1` -/
def P9464907569687361931.Spec : Prop :=
  ∀ n, (P9464907569687361931.a n : ℤ) = A072226 (n + 1)

end A072226

/-! ## A072226.P6963126692468635077

`eq[1, A085021(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A072226

/-- `eq[1, A085021(n+1)]+1` -/
def P6963126692468635077.Spec : Prop :=
  ∀ n, (P6963126692468635077.a n : ℤ) = A072226 (n + 1)

theorem P6963126692468635077.correct : P6963126692468635077.Spec := by
  intro n
  simp only [A072226, Nat.add_sub_cancel]

end A072226

/-! ## A072226.P12728176372868216230

`eq[1, a(A085021(n))-2]` with `a(0)=5`
-/

namespace A072226.P12728176372868216230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (A085021 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072226.P12728176372868216230

namespace A072226

/-- `eq[1, a(A085021(n))-2]` -/
def P12728176372868216230.Spec : Prop :=
  ∀ n, (P12728176372868216230.a n : ℤ) = A072226 (n + 1)

end A072226

/-! ## A072226.P3525275229750703906

`eq[1, A085021(A123108(2*n))]`
-/

namespace A072226.P3525275229750703906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085021 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072226.P3525275229750703906

namespace A072226

/-- `eq[1, A085021(A123108(2*n))]` -/
def P3525275229750703906.Spec : Prop :=
  ∀ n, (P3525275229750703906.a n : ℤ) = A072226 (n + 1)

end A072226

/-!
# A072227: Numbers n such that reverse(d) divides reverse(n) for all divisors d of n.

The programs for A072227, there is no canonical definition to state claims against.
-/

/-! ## A072227.P7016336266321015894

`record[A056964(n+1)-A188649(n+1)]`
-/

namespace A072227.P7016336266321015894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (n + 1) - A188649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072227.P7016336266321015894

/-! ## A072227.P2513379874305149370

`record[A061205(n+1)/A188649(n+1)]`
-/

namespace A072227.P2513379874305149370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061205 (n + 1) : ℚ) / (A188649 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072227.P2513379874305149370

/-! ## A072227.P4752412723739225319

`eq[A004086(n+1), A188649(n+1)]+1`
-/

namespace A072227.P4752412723739225319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072227.P4752412723739225319

/-! ## A072227.P99164951228828176

`eq[A004086(n), A188649(A065033(2*n))]`
-/

namespace A072227.P99164951228828176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188649 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072227.P99164951228828176

/-! ## A072227.P9652854223727695741

`eq[A004086(n), A188649(A123108(2*n))]`
-/

namespace A072227.P9652854223727695741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188649 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072227.P9652854223727695741

/-!
# A072228: Numbers k such that k equals the sum of the reverses of the proper divisors of k.

The programs for A072228, there is no canonical definition to state claims against.
-/

/-! ## A072228.P8568838745364282967

`A254009(A245235(n)+A081125(n))`
-/

namespace A072228.P8568838745364282967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254009 (A245235 n + A081125 n).toNat

end

end A072228.P8568838745364282967

/-!
# A072229: Witt index of the standard bilinear form over the 2-adic rationals.

The programs for A072229, the canonical program `A072229.P7082952697567616856` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072229 has offset 0).

The definition of A072229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072229.P7082952697567616856

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=2, a(6)=3, a(7)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072229

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P7082952697567616856.Spec : Prop :=
  ∀ n, P7082952697567616856.a n = A072229 n

theorem P7082952697567616856.correct : P7082952697567616856.Spec := by
  intro n
  simp only [A072229]

end A072229

/-! ## A072229.P17383405610576203924

`∑[round((n-1)%7/5)]`
-/

namespace A072229.P17383405610576203924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.tmod ((n : ℤ) - 1) 7 : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072229.P17383405610576203924

namespace A072229

/-- `∑[round((n-1)%7/5)]` -/
def P17383405610576203924.Spec : Prop :=
  ∀ n, P17383405610576203924.a n = A072229 n

end A072229

/-! ## A072229.P12139238298197263207

`∑[char[∑[(char[4*n]+1)²]]]`
-/

namespace A072229.P12139238298197263207
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f4 j = n then 1 else 0) + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072229.P12139238298197263207

namespace A072229

/-- `∑[char[∑[(char[4*n]+1)²]]]` -/
def P12139238298197263207.Spec : Prop :=
  ∀ n, (P12139238298197263207.a n : ℤ) = A072229 n

end A072229

/-! ## A072229.P10723461720609122878

`abs(∑[((5*n)%7)%2]-n)`
-/

namespace A072229.P10723461720609122878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n % 7 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|

end

end A072229.P10723461720609122878

namespace A072229

/-- `abs(∑[((5*n)%7)%2]-n)` -/
def P10723461720609122878.Spec : Prop :=
  ∀ n, P10723461720609122878.a n = A072229 n

end A072229

/-! ## A072229.P10785213251850371946

`∑[char[A047312(n+1)]]-1`
-/

namespace A072229.P10785213251850371946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047312 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A072229.P10785213251850371946

namespace A072229

/-- `∑[char[A047312(n+1)]]-1` -/
def P10785213251850371946.Spec : Prop :=
  ∀ n, P10785213251850371946.a n = A072229 n

end A072229

/-! ## A072229.P15267521936443174570

`n-∑[char[A047360(n+1)]]`
-/

namespace A072229.P15267521936443174570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047360 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A072229.P15267521936443174570

namespace A072229

/-- `n-∑[char[A047360(n+1)]]` -/
def P15267521936443174570.Spec : Prop :=
  ∀ n, P15267521936443174570.a n = A072229 n

end A072229

/-! ## A072229.P14841115939184881496

`A011860(n)-A011860(A004275(n)-n)`
-/

namespace A072229.P14841115939184881496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n - A011860 (A004275 n - (n : ℤ)).toNat

end

end A072229.P14841115939184881496

namespace A072229

/-- `A011860(n)-A011860(A004275(n)-n)` -/
def P14841115939184881496.Spec : Prop :=
  ∀ n, P14841115939184881496.a n = A072229 n

end A072229

/-! ## A072229.P14574826968332280476

`n-∑[∑[A238470(n+1)]]`
-/

namespace A072229.P14574826968332280476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238470 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072229.P14574826968332280476

namespace A072229

/-- `n-∑[∑[A238470(n+1)]]` -/
def P14574826968332280476.Spec : Prop :=
  ∀ n, P14574826968332280476.a n = A072229 n

end A072229

/-! ## A072229.P11134245159656668059

`∑[A130657(n+3)]-1`
-/

namespace A072229.P11134245159656668059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130657 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A072229.P11134245159656668059

namespace A072229

/-- `∑[A130657(n+3)]-1` -/
def P11134245159656668059.Spec : Prop :=
  ∀ n, P11134245159656668059.a n = A072229 n

end A072229

/-! ## A072229.P9401178546976180921

`∑[A099859(n+4)²]-1`
-/

namespace A072229.P9401178546976180921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099859 (n + 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A072229.P9401178546976180921

namespace A072229

/-- `∑[A099859(n+4)²]-1` -/
def P9401178546976180921.Spec : Prop :=
  ∀ n, P9401178546976180921.a n = A072229 n

end A072229

/-! ## A072229.P12742036229562240061

`A140427(A004776(n+1))`
-/

namespace A072229.P12742036229562240061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140427 (A004776 (n + 1)).toNat

end

end A072229.P12742036229562240061

namespace A072229

/-- `A140427(A004776(n+1))` -/
def P12742036229562240061.Spec : Prop :=
  ∀ n, P12742036229562240061.a n = A072229 n

end A072229

/-! ## A072229.P3307080777372932679

`A140427(A047588(n+1))`
-/

namespace A072229.P3307080777372932679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140427 (A047588 (n + 1)).toNat

end

end A072229.P3307080777372932679

namespace A072229

/-- `A140427(A047588(n+1))` -/
def P3307080777372932679.Spec : Prop :=
  ∀ n, P3307080777372932679.a n = A072229 n

end A072229

/-! ## A072229.P17544049519689706435

`(A060464(n+1)-A271800(A060464(n+1)))/2`
-/

namespace A072229.P17544049519689706435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060464 (n + 1) - A271800 (A060464 (n + 1)).toNat : ℚ) / 2

end

end A072229.P17544049519689706435

namespace A072229

/-- `(A060464(n+1)-A271800(A060464(n+1)))/2` -/
def P17544049519689706435.Spec : Prop :=
  ∀ n, P17544049519689706435.a n = (A072229 n : ℚ)

end A072229

/-! ## A072229.P4472678290961198221

`n-∑[A000035(A060107(n+2))]`
-/

namespace A072229.P4472678290961198221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A060107 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072229.P4472678290961198221

namespace A072229

/-- `n-∑[A000035(A060107(n+2))]` -/
def P4472678290961198221.Spec : Prop :=
  ∀ n, P4472678290961198221.a n = A072229 n

end A072229

/-! ## A072229.P17865336791567092475

`A195062(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A072229.P17865336791567092475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195062 (2 * n) + a (n - 1)

end

end A072229.P17865336791567092475

namespace A072229

/-- `A195062(2*n)+a(n-1)` -/
def P17865336791567092475.Spec : Prop :=
  ∀ n, P17865336791567092475.a n = A072229 n

end A072229

/-! ## A072229.P9143806013140262301

`A036405(2*n+1)-(A036405(2*n)+1)`
-/

namespace A072229.P9143806013140262301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036405 (2 * n + 1) - (A036405 (2 * n) + 1)

end

end A072229.P9143806013140262301

namespace A072229

/-- `A036405(2*n+1)-(A036405(2*n)+1)` -/
def P9143806013140262301.Spec : Prop :=
  ∀ n, P9143806013140262301.a n = A072229 n

end A072229

/-! ## A072229.P13149215282141928536

`∑[A195062(2*(n+1))]-A195062(2*(n+1))`
-/

namespace A072229.P13149215282141928536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195062 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195062 (2 * (n + 1))

end

end A072229.P13149215282141928536

namespace A072229

/-- `∑[A195062(2*(n+1))]-A195062(2*(n+1))` -/
def P13149215282141928536.Spec : Prop :=
  ∀ n, P13149215282141928536.a n = A072229 n

end A072229

/-! ## A072229.P998803694971523570

`n-∑[A258869(2*(n+2))]`
-/

namespace A072229.P998803694971523570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258869 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072229.P998803694971523570

namespace A072229

/-- `n-∑[A258869(2*(n+2))]` -/
def P998803694971523570.Spec : Prop :=
  ∀ n, P998803694971523570.a n = A072229 n

end A072229

/-! ## A072229.P6782124496660870157

`n-A194225(n+3)`
-/

namespace A072229.P6782124496660870157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194225 (n + 3)

end

end A072229.P6782124496660870157

namespace A072229

/-- `n-A194225(n+3)` -/
def P6782124496660870157.Spec : Prop :=
  ∀ n, P6782124496660870157.a n = A072229 n

end A072229

/-! ## A072229.P15317282234674645216

`n-A242062(3*(n+2))`
-/

namespace A072229.P15317282234674645216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A242062 (3 * (n + 2))

end

end A072229.P15317282234674645216

namespace A072229

/-- `n-A242062(3*(n+2))` -/
def P15317282234674645216.Spec : Prop :=
  ∀ n, P15317282234674645216.a n = A072229 n

end A072229

/-!
# A072230: a(n) = n! (mod n^2), that is, n factorial modulo n^2.

The programs for A072230, the canonical program `A072230.P11015554675581198549` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072230 has offset 1).

The definition of A072230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072230.P11015554675581198549

`∑{d}[n+1, #-1]*∑{p}[ceil(∏{d}[n+1, #^(#-n)]), #]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072230

/-- `∑{d}[n+1, #-1]*∑{p}[ceil(∏{d}[n+1, #^(#-n)]), #]` -/
def P11015554675581198549.Spec : Prop :=
  ∀ n, P11015554675581198549.a n = A072230 (n + 1)

theorem P11015554675581198549.correct : P11015554675581198549.Spec := by
  intro n
  simp only [A072230, Nat.add_sub_cancel]

end A072230

/-! ## A072230.P12904354854489179148

`(ceil(∏{d}[n+1, #^(#-n)])-1)*(n+1)²/∏{p}[n+1, #]`
-/

namespace A072230.P12904354854489179148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ ((d : ℤ) - (n : ℤ) : ℤ)⌉ - 1 : ℚ) * (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))

end

end A072230.P12904354854489179148

namespace A072230

/-- `(ceil(∏{d}[n+1, #^(#-n)])-1)*(n+1)²/∏{p}[n+1, #]` -/
def P12904354854489179148.Spec : Prop :=
  ∀ n, P12904354854489179148.a n = (A072230 (n + 1) : ℚ)

end A072230

/-! ## A072230.P16596794398093265384

`lcm(ceil(∏{d}[n+1, #^(#-n)])-1, (n+1)²/∏{p}[n+1, #])`
-/

namespace A072230.P16596794398093265384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌈∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ ((d : ℤ) - (n : ℤ) : ℤ)⌉ - 1) (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)))

end

end A072230.P16596794398093265384

namespace A072230

/-- `lcm(ceil(∏{d}[n+1, #^(#-n)])-1, (n+1)²/∏{p}[n+1, #])` -/
def P16596794398093265384.Spec : Prop :=
  ∀ n, (P16596794398093265384.a n : ℤ) = A072230 (n + 1)

end A072230

/-! ## A072230.P18416646612316854790

`((2*(n+1)-∑{d}[n+1, #])²+n)*floor(∑{e}[n+1, #]^(4-n))`
-/

namespace A072230.P18416646612316854790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)) ^ 2 + (n : ℤ)) * ⌊((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ) ^ (4 - (n : ℤ) : ℤ)⌋

end

end A072230.P18416646612316854790

namespace A072230

/-- `((2*(n+1)-∑{d}[n+1, #])²+n)*floor(∑{e}[n+1, #]^(4-n))` -/
def P18416646612316854790.Spec : Prop :=
  ∀ n, P18416646612316854790.a n = A072230 (n + 1)

end A072230

/-! ## A072230.P1638584414813656881

`(n+1)*A061006(n+1)`
-/

namespace A072230.P1638584414813656881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061006 (n + 1)

end

end A072230.P1638584414813656881

namespace A072230

/-- `(n+1)*A061006(n+1)` -/
def P1638584414813656881.Spec : Prop :=
  ∀ n, P1638584414813656881.a n = A072230 (n + 1)

end A072230

/-! ## A072230.P5838756473530198044

`A242427(n+1)%(n+1)²`
-/

namespace A072230.P5838756473530198044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242427 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A072230.P5838756473530198044

namespace A072230

/-- `A242427(n+1)%(n+1)²` -/
def P5838756473530198044.Spec : Prop :=
  ∀ n, P5838756473530198044.a n = A072230 (n + 1)

end A072230

/-! ## A072230.P1843815820945934695

`(n+1)*and(n, -A061007(n+1))`
-/

namespace A072230.P1843815820945934695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land (n : ℤ) (-A061007 (n + 1))

end

end A072230.P1843815820945934695

namespace A072230

/-- `(n+1)*and(n, -A061007(n+1))` -/
def P1843815820945934695.Spec : Prop :=
  ∀ n, P1843815820945934695.a n = A072230 (n + 1)

end A072230

/-! ## A072230.P5391628520353778350

`A061006(n+1)*A199343(n)`
-/

namespace A072230.P5391628520353778350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (n + 1) * A199343 n

end

end A072230.P5391628520353778350

namespace A072230

/-- `A061006(n+1)*A199343(n)` -/
def P5391628520353778350.Spec : Prop :=
  ∀ n, P5391628520353778350.a n = A072230 (n + 1)

end A072230

/-! ## A072230.P12687126149390165916

`A061006(n+1)*A199344(n)`
-/

namespace A072230.P12687126149390165916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (n + 1) * A199344 n

end

end A072230.P12687126149390165916

namespace A072230

/-- `A061006(n+1)*A199344(n)` -/
def P12687126149390165916.Spec : Prop :=
  ∀ n, P12687126149390165916.a n = A072230 (n + 1)

end A072230

/-! ## A072230.P6651158862190542570

`A061006(n+1)*A222257(n)`
-/

namespace A072230.P6651158862190542570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (n + 1) * A222257 n

end

end A072230.P6651158862190542570

namespace A072230

/-- `A061006(n+1)*A222257(n)` -/
def P6651158862190542570.Spec : Prop :=
  ∀ n, P6651158862190542570.a n = A072230 (n + 1)

end A072230

/-! ## A072230.P3110792944734591796

`A061006(n+1)*A244734(n)`
-/

namespace A072230.P3110792944734591796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (n + 1) * A244734 n

end

end A072230.P3110792944734591796

namespace A072230

/-- `A061006(n+1)*A244734(n)` -/
def P3110792944734591796.Spec : Prop :=
  ∀ n, P3110792944734591796.a n = A072230 (n + 1)

end A072230

/-! ## A072230.P13723912224129356873

`lcm(A061006(n+1), A093353(n))`
-/

namespace A072230.P13723912224129356873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061006 (n + 1)) (A093353 n)

end

end A072230.P13723912224129356873

namespace A072230

/-- `lcm(A061006(n+1), A093353(n))` -/
def P13723912224129356873.Spec : Prop :=
  ∀ n, (P13723912224129356873.a n : ℤ) = A072230 (n + 1)

end A072230

/-! ## A072230.P17233422559501881723

`A009262(n+1)*A061007(n+1)`
-/

namespace A072230.P17233422559501881723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009262 (n + 1) * A061007 (n + 1)

end

end A072230.P17233422559501881723

namespace A072230

/-- `A009262(n+1)*A061007(n+1)` -/
def P17233422559501881723.Spec : Prop :=
  ∀ n, P17233422559501881723.a n = A072230 (n + 1)

end A072230

/-! ## A072230.P7458393727365846971

`lcm(A002618(n+1), A061007(n+1))`
-/

namespace A072230.P7458393727365846971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002618 (n + 1)) (A061007 (n + 1))

end

end A072230.P7458393727365846971

namespace A072230

/-- `lcm(A002618(n+1), A061007(n+1))` -/
def P7458393727365846971.Spec : Prop :=
  ∀ n, (P7458393727365846971.a n : ℤ) = A072230 (n + 1)

end A072230

/-! ## A072230.P293393623152708102

`A089026(A063659(n+1))²-A089026(n+1)`
-/

namespace A072230.P293393623152708102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A063659 (n + 1)).toNat ^ 2 - A089026 (n + 1)

end

end A072230.P293393623152708102

namespace A072230

/-- `A089026(A063659(n+1))²-A089026(n+1)` -/
def P293393623152708102.Spec : Prop :=
  ∀ n, P293393623152708102.a n = A072230 (n + 1)

end A072230

/-! ## A072230.P4240142883856914548

`A304233(n+1)-A304233(n+1)/A014973(n+1)`
-/

namespace A072230.P4240142883856914548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304233 (n + 1) : ℚ) - (A304233 (n + 1) : ℚ) / (A014973 (n + 1) : ℚ)

end

end A072230.P4240142883856914548

namespace A072230

/-- `A304233(n+1)-A304233(n+1)/A014973(n+1)` -/
def P4240142883856914548.Spec : Prop :=
  ∀ n, P4240142883856914548.a n = (A072230 (n + 1) : ℚ)

end A072230

/-! ## A072230.P9398322845439522535

`(n+1)²-A170826(n+1)`
-/

namespace A072230.P9398322845439522535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A170826 (n + 1)

end

end A072230.P9398322845439522535

namespace A072230

/-- `(n+1)²-A170826(n+1)` -/
def P9398322845439522535.Spec : Prop :=
  ∀ n, P9398322845439522535.a n = A072230 (n + 1)

end A072230

/-! ## A072230.P7449260075768702834

`(n+1)²-A181859(n+1)*A181861(n+1)`
-/

namespace A072230.P7449260075768702834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A181859 (n + 1) * A181861 (n + 1)

end

end A072230.P7449260075768702834

namespace A072230

/-- `(n+1)²-A181859(n+1)*A181861(n+1)` -/
def P7449260075768702834.Spec : Prop :=
  ∀ n, P7449260075768702834.a n = A072230 (n + 1)

end A072230

/-! ## A072230.P4029976316214489500

`floor(∑{e}[n+1, #]^(4-n))*A000010((n+1)*∏{p}[n+1, #])`
-/

namespace A072230.P4029976316214489500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) ^ (4 - (n : ℤ) : ℤ)⌋ * A000010 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A072230.P4029976316214489500

namespace A072230

/-- `floor(∑{e}[n+1, #]^(4-n))*A000010((n+1)*∏{p}[n+1, #])` -/
def P4029976316214489500.Spec : Prop :=
  ∀ n, P4029976316214489500.a n = A072230 (n + 1)

end A072230

/-! ## A072230.P4480328196518672864

`A139717(A170826(n+1))`
-/

namespace A072230.P4480328196518672864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139717 (A170826 (n + 1)).toNat

end

end A072230.P4480328196518672864

namespace A072230

/-- `A139717(A170826(n+1))` -/
def P4480328196518672864.Spec : Prop :=
  ∀ n, P4480328196518672864.a n = A072230 (n + 1)

end A072230

/-!
# A072231: a(n) = floor(n^2/A005185(n-1)), where A005185 is Hofstadter's Q-sequence.

The programs for A072231, the canonical program `A072231.P5944342534428297672` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072231 has offset 1).

The definition of A072231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)²/A005185(n+1))` (program `A072231.P5944342534428297672`, by `A072231.P5944342534428297672.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072231.P5944342534428297672

`floor((n+1)²/A005185(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072231

/-- `floor((n+1)²/A005185(n+1))` -/
def P5944342534428297672.Spec : Prop :=
  ∀ n, P5944342534428297672.a n = A072231 (n + 1)

theorem P5944342534428297672.correct : P5944342534428297672.Spec := by
  intro n
  simp only [A072231, Nat.add_sub_cancel]

end A072231

/-! ## A072231.P410916228978860835

`floor((n+1)²/(1-A239913(n+1)+n))`
-/

namespace A072231.P410916228978860835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (1 - A239913 (n + 1) + (n : ℤ) : ℚ)⌋

end

end A072231.P410916228978860835

namespace A072231

/-- `floor((n+1)²/(1-A239913(n+1)+n))` -/
def P410916228978860835.Spec : Prop :=
  ∀ n, P410916228978860835.a n = A072231 (n + 1)

end A072231

/-! ## A072231.P13516024703223876020

`floor((n+1)²/(A284478(n+1)+A055748(n+1)))`
-/

namespace A072231.P13516024703223876020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (A284478 (n + 1) + A055748 (n + 1) : ℚ)⌋

end

end A072231.P13516024703223876020

namespace A072231

/-- `floor((n+1)²/(A284478(n+1)+A055748(n+1)))` -/
def P13516024703223876020.Spec : Prop :=
  ∀ n, P13516024703223876020.a n = A072231 (n + 1)

end A072231

/-! ## A072231.P17020924998376164940

`floor((n+1)²/(A004001(n+1)-A284019(n+1)))`
-/

namespace A072231.P17020924998376164940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (A004001 (n + 1) - A284019 (n + 1) : ℚ)⌋

end

end A072231.P17020924998376164940

namespace A072231

/-- `floor((n+1)²/(A004001(n+1)-A284019(n+1)))` -/
def P17020924998376164940.Spec : Prop :=
  ∀ n, P17020924998376164940.a n = A072231 (n + 1)

end A072231

/-! ## A072231.P1844960772609625147

`floor((n+1)²/(∑[A081827(n+1)]+1-A081827(n+1)))`
-/

namespace A072231.P1844960772609625147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j + (1 - A081827 (n + 1)) : ℤ) : ℚ)⌋

end

end A072231.P1844960772609625147

namespace A072231

/-- `floor((n+1)²/(∑[A081827(n+1)]+1-A081827(n+1)))` -/
def P1844960772609625147.Spec : Prop :=
  ∀ n, P1844960772609625147.a n = A072231 (n + 1)

end A072231

/-! ## A072231.P16377240871938458446

`A118013(A005185(n+1)+∑[n])`
-/

namespace A072231.P16377240871938458446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118013 (A005185 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A072231.P16377240871938458446

namespace A072231

/-- `A118013(A005185(n+1)+∑[n])` -/
def P16377240871938458446.Spec : Prop :=
  ∀ n, P16377240871938458446.a n = A072231 (n + 1)

end A072231

/-!
# A072232: 

The programs for A072232, there is no canonical definition to state claims against.
-/

/-! ## A072232.P14525797453195781193

`A072220(n+1)!`
-/

namespace A072232.P14525797453195781193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A072220 (n + 1)).toNat

end

end A072232.P14525797453195781193

/-! ## A072232.P11586296393073600830

`lcm(A000142(A072220(n+1)), A000142(n))`
-/

namespace A072232.P11586296393073600830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000142 (A072220 (n + 1)).toNat) (A000142 n)

end

end A072232.P11586296393073600830

/-!
# A072233: Square array T(n,k) read by antidiagonals giving number of ways to distribute n indistinguishable objects in k indistinguishable containers; containers may be left empty.

The programs for A072233, there is no canonical definition to state claims against.
-/

/-! ## A072233.P16610175903197283691

`A327549(n)/A130321(n)`
-/

namespace A072233.P16610175903197283691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327549 n : ℚ) / (A130321 n : ℚ)

end

end A072233.P16610175903197283691

/-! ## A072233.P8033515666360937594

`A327549(n)/A057728(n+1)`
-/

namespace A072233.P8033515666360937594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327549 n : ℚ) / (A057728 (n + 1) : ℚ)

end

end A072233.P8033515666360937594

/-! ## A072233.P10881852422855634935

`2*A370207(n)-A370005(n)`
-/

namespace A072233.P10881852422855634935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A370207 n - A370005 n

end

end A072233.P10881852422855634935

/-! ## A072233.P12509240666654702082

`A327549(n)/A000079(A025581(n))`
-/

namespace A072233.P12509240666654702082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327549 n : ℚ) / (A000079 (A025581 n).toNat : ℚ)

end

end A072233.P12509240666654702082

/-! ## A072233.P5486026074870262312

`A327549(n)/A059268(A061579(n))`
-/

namespace A072233.P5486026074870262312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327549 n : ℚ) / (A059268 (A061579 n).toNat : ℚ)

end

end A072233.P5486026074870262312

/-! ## A072233.P1041974033765102236

`A327549(n)/A011782(A004736(n+1))`
-/

namespace A072233.P1041974033765102236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327549 n : ℚ) / (A011782 (A004736 (n + 1)).toNat : ℚ)

end

end A072233.P1041974033765102236

/-! ## A072233.P14820248272416877078

`A386584(n)+A386583(n)`
-/

namespace A072233.P14820248272416877078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386584 n + A386583 n

end

end A072233.P14820248272416877078

/-! ## A072233.P13651573003784314437

`A388712(n)+A388711(n)`
-/

namespace A072233.P13651573003784314437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388712 n + A388711 n

end

end A072233.P13651573003784314437

/-! ## A072233.P8702944548118270026

`A386586(n)+A386585(n)`
-/

namespace A072233.P8702944548118270026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386586 n + A386585 n

end

end A072233.P8702944548118270026

/-! ## A072233.P17609262452126453190

`A319453(n)%A001986(n+1)`
-/

namespace A072233.P17609262452126453190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319453 n) (A001986 (n + 1))

end

end A072233.P17609262452126453190

/-!
# A072234: Numbers k such that reverse(k) = sum of the proper divisors of k.

The programs for A072234, there is no canonical definition to state claims against.
-/

/-! ## A072234.P12887837558568001183

`A254005(∑[A254048(3*n+4)]+1)`
-/

namespace A072234.P12887837558568001183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254005 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A072234.P12887837558568001183

/-!
# A072235: Years of recorded observations of Comet Halley.

The programs for A072235, there is no canonical definition to state claims against.
-/

/-! ## A072235.P11360228225645395068

`A100748(n+1)-A316341(A305122(n))`
-/

namespace A072235.P11360228225645395068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100748 (n + 1) - A316341 (A305122 n).toNat

end

end A072235.P11360228225645395068

/-! ## A072235.P7972301848978468829

`A100748(n+1)-A316341(A000071(n+1))`
-/

namespace A072235.P7972301848978468829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100748 (n + 1) - A316341 (A000071 (n + 1)).toNat

end

end A072235.P7972301848978468829

/-! ## A072235.P12294754496233557263

`A100748(n+1)-A010051(A011260(n+1))`
-/

namespace A072235.P12294754496233557263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100748 (n + 1) - A010051 (A011260 (n + 1)).toNat

end

end A072235.P12294754496233557263

/-! ## A072235.P2766623364529669353

`A100748(n+1)-A010051(A001405(n))`
-/

namespace A072235.P2766623364529669353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100748 (n + 1) - A010051 (A001405 n).toNat

end

end A072235.P2766623364529669353

/-! ## A072235.P1303104695913498225

`A100748(n+1)-A326072(A206419(n+1))`
-/

namespace A072235.P1303104695913498225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100748 (n + 1) - A326072 (A206419 (n + 1)).toNat

end

end A072235.P1303104695913498225

/-!
# A072236: Numbers of primes between successive primorials.

The programs for A072236, there is no canonical definition to state claims against.
-/

/-! ## A072236.P8218542167861289561

`A000849(n+1)-A000849(n)`
-/

namespace A072236.P8218542167861289561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000849 (n + 1) - A000849 n

end

end A072236.P8218542167861289561

/-! ## A072236.P16416176150257623271

`Δ[A000849(n)]`
-/

namespace A072236.P16416176150257623271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072236.P16416176150257623271

/-! ## A072236.P9824054709474435634

`Δ[A048862(n)]+1`
-/

namespace A072236.P9824054709474435634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A072236.P9824054709474435634

/-! ## A072236.P9263018041775999501

`Δ[A048862(n)-A001489(n)]`
-/

namespace A072236.P9263018041775999501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048862 n - A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072236.P9263018041775999501

/-! ## A072236.P14500213051291228842

`Δ[A057857(n)-A048863(n)]`
-/

namespace A072236.P14500213051291228842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057857 n - A048863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072236.P14500213051291228842

/-!
# A072237: 

The programs for A072237, there is no canonical definition to state claims against.
-/

/-! ## A072237.P11030831093089349865

`A072208(n+1)!`
-/

namespace A072237.P11030831093089349865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A072208 (n + 1)).toNat

end

end A072237.P11030831093089349865

/-!
# A072238: 

The programs for A072238, there is no canonical definition to state claims against.
-/

/-! ## A072238.P11557670534524730816

`A072204(n+1)!`
-/

namespace A072238.P11557670534524730816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A072204 (n + 1)).toNat

end

end A072238.P11557670534524730816

/-! ## A072238.P16523852843666328919

`lcm(A000142(A072204(n+1)), A000142(n))`
-/

namespace A072238.P16523852843666328919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000142 (A072204 (n + 1)).toNat) (A000142 n)

end

end A072238.P16523852843666328919

/-!
# A072239: a(0) = 11; a(n) = number of distinct partitions of the previous term.

The programs for A072239, there is no canonical definition to state claims against.
-/

/-! ## A072239.P14862103119876102990

`A000009(a(n-1))` with `a(0)=11`
-/

namespace A072239.P14862103119876102990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A000009 (a (n - 1)).toNat

end

end A072239.P14862103119876102990

/-!
# A072240: 

The programs for A072240, there is no canonical definition to state claims against.
-/

/-! ## A072240.P8034477344709441989

`A072200(n+1)!`
-/

namespace A072240.P8034477344709441989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A072200 (n + 1)).toNat

end

end A072240.P8034477344709441989

/-! ## A072240.P861358269904804242

`lcm(A000142(A072200(n+1)), A000142(n))`
-/

namespace A072240.P861358269904804242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000142 (A072200 (n + 1)).toNat) (A000142 n)

end

end A072240.P861358269904804242

/-!
# A072241: Number of distinct partitions of Fibonacci(n).

The programs for A072241, there is no canonical definition to state claims against.
-/

/-! ## A072241.P10965744573272791058

`A000009(A000045(n))`
-/

namespace A072241.P10965744573272791058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000045 n).toNat

end

end A072241.P10965744573272791058

/-! ## A072241.P9756070808319619691

`A000009(∑[a(n-2)+a(n-1)])` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A072241.P9756070808319619691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072241.P9756070808319619691

/-! ## A072241.P18312674112719734615

`A000009(abs(A236191(n)))`
-/

namespace A072241.P18312674112719734615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 |A236191 n|.toNat

end

end A072241.P18312674112719734615

/-! ## A072241.P18156242444263959935

`A000009(A212804(n+1))`
-/

namespace A072241.P18156242444263959935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A212804 (n + 1)).toNat

end

end A072241.P18156242444263959935

/-!
# A072242: 

The programs for A072242, there is no canonical definition to state claims against.
-/

/-! ## A072242.P6180139214000706870

`A072199(n+1)!`
-/

namespace A072242.P6180139214000706870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A072199 (n + 1)).toNat

end

end A072242.P6180139214000706870

/-!
# A072243: Number of distinct partitions of n^2.

The programs for A072243, there is no canonical definition to state claims against.
-/

/-! ## A072243.P5712427859436441692

`A000009(A000290(n))`
-/

namespace A072243.P5712427859436441692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A000290 n).toNat

end

end A072243.P5712427859436441692

/-! ## A072243.P4313342432866772695

`A000009(n²)`
-/

namespace A072243.P4313342432866772695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n ^ 2)

end

end A072243.P4313342432866772695

/-! ## A072243.P637613825287333619

`abs(A081360(n²))`
-/

namespace A072243.P637613825287333619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 (n ^ 2)|

end

end A072243.P637613825287333619

/-! ## A072243.P3203497879242307117

`A111133(n²)+1`
-/

namespace A072243.P3203497879242307117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (n ^ 2) + 1

end

end A072243.P3203497879242307117

/-! ## A072243.P13997573887223984591

`ceil(A087135(n²)/2)`
-/

namespace A072243.P13997573887223984591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 (n ^ 2) : ℚ) / 2⌉

end

end A072243.P13997573887223984591

/-! ## A072243.P11629491655819021982

`ceil(A333147(n²)/2)`
-/

namespace A072243.P11629491655819021982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 (n ^ 2) : ℚ) / 2⌉

end

end A072243.P11629491655819021982

/-! ## A072243.P16641439239774454081

`A117409(A010000(n))`
-/

namespace A072243.P16641439239774454081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (A010000 n).toNat

end

end A072243.P16641439239774454081

/-! ## A072243.P1714062510853001095

`A052839(A028310(n²))-1`
-/

namespace A072243.P1714062510853001095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (A028310 (n ^ 2)).toNat - 1

end

end A072243.P1714062510853001095

/-! ## A072243.P10101920229899027844

`A057428(n)+A052839(n²)`
-/

namespace A072243.P10101920229899027844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A052839 (n ^ 2)

end

end A072243.P10101920229899027844

/-! ## A072243.P109291958666593295

`A331848(n²)+A281489(n)`
-/

namespace A072243.P109291958666593295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331848 (n ^ 2) + A281489 n

end

end A072243.P109291958666593295

/-! ## A072243.P8153744368541032803

`A052839(n²)-A057427(n)`
-/

namespace A072243.P8153744368541032803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (n ^ 2) - A057427 n

end

end A072243.P8153744368541032803

/-! ## A072243.P10328505407339932541

`A033999(n)*A081360(n²)`
-/

namespace A072243.P10328505407339932541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A081360 (n ^ 2)

end

end A072243.P10328505407339932541

/-! ## A072243.P1702568670773668798

`gcd(A000038(n), A081360(n²))`
-/

namespace A072243.P1702568670773668798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A081360 (n ^ 2))

end

end A072243.P1702568670773668798

/-! ## A072243.P3298120405758213919

`lcm(A020985(n), A081360(n²))`
-/

namespace A072243.P3298120405758213919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A081360 (n ^ 2))

end

end A072243.P3298120405758213919

/-!
# A072244: 

The programs for A072244, there is no canonical definition to state claims against.
-/

/-! ## A072244.P817306574195370335

`A072178(n+1)!`
-/

namespace A072244.P817306574195370335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A072178 (n + 1)).toNat

end

end A072244.P817306574195370335

/-!
# A072245: Smallest m such that number of distinct partitions of m exceeds 10^n.

The programs for A072245, there is no canonical definition to state claims against.
-/

/-! ## A072245.P18417223475193268079

`A140206(A052905(n))+A005563(n)`
-/

namespace A072245.P18417223475193268079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140206 (A052905 n).toNat + A005563 n

end

end A072245.P18417223475193268079

/-! ## A072245.P11722064473386011655

`∑[A288993(n+1)-A156257(A126285(n))]`
-/

namespace A072245.P11722064473386011655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288993 (n + 1) - A156257 (A126285 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072245.P11722064473386011655

/-! ## A072245.P12214022424050518086

`∑[∑[A053692(A195278(n+5))+3]]-4`
-/

namespace A072245.P12214022424050518086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053692 (A195278 (n + 5)).toNat + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A072245.P12214022424050518086

/-! ## A072245.P1884695001526677488

`A052905(2*n)-A137579(A058331(n))`
-/

namespace A072245.P1884695001526677488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (2 * n) - A137579 (A058331 n).toNat

end

end A072245.P1884695001526677488

/-!
# A072250: Related to cyclotomic numbers of hypergraphs.

The programs for A072250, there is no canonical definition to state claims against.
-/

/-! ## A072250.P5509277468624783573

`A007290(A132264(n+1))+A000241(n)`
-/

namespace A072250.P5509277468624783573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 (A132264 (n + 1)).toNat + A000241 n

end

end A072250.P5509277468624783573

/-! ## A072250.P16016550541186170491

`∑[∑[A247185(A154701(n+1))]]`
-/

namespace A072250.P16016550541186170491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247185 (A154701 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072250.P16016550541186170491

/-!
# A072251: (3*a(n)+1)/2^(2*n + 1) = 23-6*n.

The programs for A072251, the canonical program `A072251.P4308487452525966764` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072251 has offset 0).

The definition of A072251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072251.P8802341440298125611

`((46-12*n)*4^n-1)/3`
-/

namespace A072251.P8802341440298125611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((46 - (12 * n : ℤ)) * (4 ^ n : ℤ) - 1 : ℚ) / 3

end

end A072251.P8802341440298125611

namespace A072251

/-- `((46-12*n)*4^n-1)/3` -/
def P8802341440298125611.Spec : Prop :=
  ∀ n, P8802341440298125611.a n = (A072251 n : ℚ)

theorem P8802341440298125611.correct : P8802341440298125611.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A072251, Nat.add_sub_cancel, A072251.P8802341440298125611.a, A072251.P4308487452525966764.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A072251, Nat.add_sub_cancel, A072251.P8802341440298125611.a, A072251.P4308487452525966764.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A072251

/-! ## A072251.P4308487452525966764

`9*a(n-1)-24*a(n-2)+16*a(n-3)` with `a(0)=15, a(1)=45, a(2)=117`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072251

/-- `9*a(n-1)-24*a(n-2)+16*a(n-3)` -/
def P4308487452525966764.Spec : Prop :=
  ∀ n, P4308487452525966764.a n = A072251 n

theorem P4308487452525966764.correct : P4308487452525966764.Spec := by
  intro n
  simp only [A072251]

end A072251

/-! ## A072251.P1872506805802687362

`2*a(n-1)-A072257(n)` with `a(0)=15`
-/

namespace A072251.P1872506805802687362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  2 * a (n - 1) - A072257 n

end

end A072251.P1872506805802687362

namespace A072251

/-- `2*a(n-1)-A072257(n)` -/
def P1872506805802687362.Spec : Prop :=
  ∀ n, P1872506805802687362.a n = A072251 n

end A072251

/-! ## A072251.P2832296659812968359

`A072260(n)-Δ[A072257(n)]`
-/

namespace A072251.P2832296659812968359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072260 n - (f1 (n + 1) - f1 n)

end

end A072251.P2832296659812968359

namespace A072251

/-- `A072260(n)-Δ[A072257(n)]` -/
def P2832296659812968359.Spec : Prop :=
  ∀ n, P2832296659812968359.a n = A072251 n

end A072251

/-! ## A072251.P7274463831792372321

`A072201(n+1)-A132314(4*n)`
-/

namespace A072251.P7274463831792372321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072201 (n + 1) - A132314 (4 * n)

end

end A072251.P7274463831792372321

namespace A072251

/-- `A072201(n+1)-A132314(4*n)` -/
def P7274463831792372321.Spec : Prop :=
  ∀ n, P7274463831792372321.a n = A072251 n

end A072251

/-! ## A072251.P7140709214465858193

`A072201(n+1)-2*n*A004171(n)`
-/

namespace A072251.P7140709214465858193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072201 (n + 1) - 2 * ((n : ℤ) * A004171 n)

end

end A072251.P7140709214465858193

namespace A072251

/-- `A072201(n+1)-2*n*A004171(n)` -/
def P7140709214465858193.Spec : Prop :=
  ∀ n, P7140709214465858193.a n = A072251 n

end A072251

/-! ## A072251.P5387788216495379124

`A072257(n)+A072260(n)-A072257(n+1)`
-/

namespace A072251.P5387788216495379124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072257 n + (A072260 n - A072257 (n + 1))

end

end A072251.P5387788216495379124

namespace A072251

/-- `A072257(n)+A072260(n)-A072257(n+1)` -/
def P5387788216495379124.Spec : Prop :=
  ∀ n, P5387788216495379124.a n = A072251 n

end A072251

/-! ## A072251.P12844218119909937040

`A072258(n)+A072258(n)-A072257(n+1)`
-/

namespace A072251.P12844218119909937040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072258 n + (A072258 n - A072257 (n + 1))

end

end A072251.P12844218119909937040

namespace A072251

/-- `A072258(n)+A072258(n)-A072257(n+1)` -/
def P12844218119909937040.Spec : Prop :=
  ∀ n, P12844218119909937040.a n = A072251 n

end A072251

/-! ## A072251.P4158370490139905703

`A072259(n)+A072259(n)-A072258(n+1)`
-/

namespace A072251.P4158370490139905703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072259 n + (A072259 n - A072258 (n + 1))

end

end A072251.P4158370490139905703

namespace A072251

/-- `A072259(n)+A072259(n)-A072258(n+1)` -/
def P4158370490139905703.Spec : Prop :=
  ∀ n, P4158370490139905703.a n = A072251 n

end A072251

/-!
# A072252: Numbers n for which one step of the Collatz iteration (3n+1)/2^r gives rise to values 41,35,29,23,17,11, and 5 for r=1,3,5,..,13.

The programs for A072252, there is no canonical definition to state claims against.
-/

/-! ## A072252.P12785197329253171642

`((82-12*n)*4^n-1)/3`
-/

namespace A072252.P12785197329253171642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((82 - (12 * n : ℤ)) * (4 ^ n : ℤ) - 1 : ℚ) / 3

end

end A072252.P12785197329253171642

/-! ## A072252.P13796284241748775320

`A238476(n+22)`
-/

namespace A072252.P13796284241748775320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238476 (n + 22)

end

end A072252.P13796284241748775320

/-! ## A072252.P14676394834648573181

`A072251(n)+6*2*4^n`
-/

namespace A072252.P14676394834648573181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072251 n + (6 * (2 * 4 ^ n) : ℤ)

end

end A072252.P14676394834648573181

/-!
# A072253: Numbers n for which one step of the Collatz iteration (3n+1)/2^r gives rise to values 59,53,47,41,35,29,23,17,11 and 5 for r=1,3,5,..,19.

The programs for A072253, there is no canonical definition to state claims against.
-/

/-! ## A072253.P16346986628335066923

`((118-12*n)*4^n-1)/3`
-/

namespace A072253.P16346986628335066923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((118 - (12 * n : ℤ)) * (4 ^ n : ℤ) - 1 : ℚ) / 3

end

end A072253.P16346986628335066923

/-! ## A072253.P3171832412802084775

`A072258(n+1)+Δ[A072251(n)]`
-/

namespace A072253.P3171832412802084775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072258 (n + 1) + (f1 (n + 1) - f1 n)

end

end A072253.P3171832412802084775

/-! ## A072253.P12113209111154030362

`A072259(n)+A072259(n)-A072257(n+1)`
-/

namespace A072253.P12113209111154030362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072259 n + (A072259 n - A072257 (n + 1))

end

end A072253.P12113209111154030362

/-!
# A072254: Numbers n such that triples generated by {2*(n-1),2*n,2*(n+1)} form A007534.

The programs for A072254, there is no canonical definition to state claims against.
-/

/-! ## A072254.P417629427215409963

`A007534(3*n+1)/2`
-/

namespace A072254.P417629427215409963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007534 (3 * n + 1) : ℚ) / 2

end

end A072254.P417629427215409963

/-! ## A072254.P1608379584614935889

`floor(A051345(3*n+2)/2)`
-/

namespace A072254.P1608379584614935889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051345 (3 * n + 2) : ℚ) / 2⌋

end

end A072254.P1608379584614935889

/-! ## A072254.P16578551271468696221

`(A051345(3*(n+1))-3)/2`
-/

namespace A072254.P16578551271468696221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051345 (3 * (n + 1)) - 3 : ℚ) / 2

end

end A072254.P16578551271468696221

/-! ## A072254.P16639039258553268655

`A001281(A007534(3*n+1))`
-/

namespace A072254.P16639039258553268655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A007534 (3 * n + 1)).toNat

end

end A072254.P16639039258553268655

/-! ## A072254.P11967075891565798221

`A335024(A321221(n+1)/2)`
-/

namespace A072254.P11967075891565798221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335024 (SequenceMachineLib.roundAway ((A321221 (n + 1) : ℚ) / 2)).toNat

end

end A072254.P11967075891565798221

/-!
# A072256: a(n) = 10*a(n-1) - a(n-2) for n > 1, a(0) = a(1) = 1.

The programs for A072256, the canonical program `A072256.P9120941789255463504` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072256 has offset 0).

The definition of A072256 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)` (program `A072256.P9120941789255463504`, by `A072256.P9120941789255463504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072256.P9120941789255463504

`10*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072256

/-- `10*a(n-1)-a(n-2)` -/
def P9120941789255463504.Spec : Prop :=
  ∀ n, P9120941789255463504.a n = A072256 n

theorem P9120941789255463504.correct : P9120941789255463504.Spec := by
  intro n
  simp only [A072256]

end A072256

/-! ## A072256.P8875858913219608213

`lcm(10, a(n-1))-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A072256.P8875858913219608213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.lcm 10 (a (n - 1)) : ℤ) - a (n - 2)

end

end A072256.P8875858913219608213

namespace A072256

/-- `lcm(10, a(n-1))-a(n-2)` -/
def P8875858913219608213.Spec : Prop :=
  ∀ n, P8875858913219608213.a n = A072256 n

end A072256

/-! ## A072256.P12315765319039996653

`A080872(comp[2*(n+1)])`
-/

namespace A072256.P12315765319039996653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A072256.P12315765319039996653

namespace A072256

/-- `A080872(comp[2*(n+1)])` -/
def P12315765319039996653.Spec : Prop :=
  ∀ n, P12315765319039996653.a n = A072256 n

end A072256

/-! ## A072256.P18158077596641698471

`A138288(abs(ceil(n*sin(11))))`
-/

namespace A072256.P18158077596641698471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 |⌈(n : ℝ) * Real.sin (11 : ℝ)⌉|.toNat

end

end A072256.P18158077596641698471

namespace A072256

/-- `A138288(abs(ceil(n*sin(11))))` -/
def P18158077596641698471.Spec : Prop :=
  ∀ n, P18158077596641698471.a n = A072256 n

end A072256

/-! ## A072256.P101862240148468895

`A138288(n-ceil(abs(sin(n))))`
-/

namespace A072256.P101862240148468895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 ((n : ℤ) - ⌈|Real.sin (n : ℝ)|⌉).toNat

end

end A072256.P101862240148468895

namespace A072256

/-- `A138288(n-ceil(abs(sin(n))))` -/
def P101862240148468895.Spec : Prop :=
  ∀ n, P101862240148468895.a n = A072256 n

end A072256

/-! ## A072256.P2749510666816836167

`A138288((n-1)%(n+1))`
-/

namespace A072256.P2749510666816836167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A072256.P2749510666816836167

namespace A072256

/-- `A138288((n-1)%(n+1))` -/
def P2749510666816836167.Spec : Prop :=
  ∀ n, P2749510666816836167.a n = A072256 n

end A072256

/-! ## A072256.P1169780226853199715

`A138288(comp[2*(n+1)]-n)`
-/

namespace A072256.P1169780226853199715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A072256.P1169780226853199715

namespace A072256

/-- `A138288(comp[2*(n+1)]-n)` -/
def P1169780226853199715.Spec : Prop :=
  ∀ n, P1169780226853199715.a n = A072256 n

end A072256

/-! ## A072256.P3606155684010995400

`A204518(3*n)-a(n-1)` with `a(0)=1`
-/

namespace A072256.P3606155684010995400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A204518 (3 * n) - a (n - 1)

end

end A072256.P3606155684010995400

namespace A072256

/-- `A204518(3*n)-a(n-1)` -/
def P3606155684010995400.Spec : Prop :=
  ∀ n, P3606155684010995400.a n = A072256 n

end A072256

/-! ## A072256.P17390324972833483133

`A041039(A004275(n))`
-/

namespace A072256.P17390324972833483133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041039 (A004275 n).toNat

end

end A072256.P17390324972833483133

namespace A072256

/-- `A041039(A004275(n))` -/
def P17390324972833483133.Spec : Prop :=
  ∀ n, P17390324972833483133.a n = A072256 n

end A072256

/-! ## A072256.P14205550236960625435

`A041007(2*(A004273(n)-n))`
-/

namespace A072256.P14205550236960625435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (2 * (A004273 n - (n : ℤ))).toNat

end

end A072256.P14205550236960625435

namespace A072256

/-- `A041007(2*(A004273(n)-n))` -/
def P14205550236960625435.Spec : Prop :=
  ∀ n, P14205550236960625435.a n = A072256 n

end A072256

/-! ## A072256.P7870838770200073704

`A080873(2*n)-A004189(n)`
-/

namespace A072256.P7870838770200073704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (2 * n) - A004189 n

end

end A072256.P7870838770200073704

namespace A072256

/-- `A080873(2*n)-A004189(n)` -/
def P7870838770200073704.Spec : Prop :=
  ∀ n, P7870838770200073704.a n = A072256 n

end A072256

/-! ## A072256.P6514831273870686978

`A041007(2*(n-A057427(n)))`
-/

namespace A072256.P6514831273870686978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (2 * ((n : ℤ) - A057427 n)).toNat

end

end A072256.P6514831273870686978

namespace A072256

/-- `A041007(2*(n-A057427(n)))` -/
def P6514831273870686978.Spec : Prop :=
  ∀ n, P6514831273870686978.a n = A072256 n

end A072256

/-! ## A072256.P3326348564543143964

`A142239(2*(A004273(n)-n))`
-/

namespace A072256.P3326348564543143964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142239 (2 * (A004273 n - (n : ℤ))).toNat

end

end A072256.P3326348564543143964

namespace A072256

/-- `A142239(2*(A004273(n)-n))` -/
def P3326348564543143964.Spec : Prop :=
  ∀ n, P3326348564543143964.a n = A072256 n

end A072256

/-! ## A072256.P16464125598918665867

`A140781(n)-A001078(n)/2`
-/

namespace A072256.P16464125598918665867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140781 n : ℚ) - (A001078 n : ℚ) / 2

end

end A072256.P16464125598918665867

namespace A072256

/-- `A140781(n)-A001078(n)/2` -/
def P16464125598918665867.Spec : Prop :=
  ∀ n, P16464125598918665867.a n = (A072256 n : ℚ)

end A072256

/-! ## A072256.P4705329877158183386

`A041039(2*n-A134451(2*n))`
-/

namespace A072256.P4705329877158183386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041039 ((2 * n : ℤ) - A134451 (2 * n)).toNat

end

end A072256.P4705329877158183386

namespace A072256

/-- `A041039(2*n-A134451(2*n))` -/
def P4705329877158183386.Spec : Prop :=
  ∀ n, P4705329877158183386.a n = A072256 n

end A072256

/-! ## A072256.P17108671820177092859

`A041007(A004273(n)-A057427(n))`
-/

namespace A072256.P17108671820177092859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (A004273 n - A057427 n).toNat

end

end A072256.P17108671820177092859

namespace A072256

/-- `A041007(A004273(n)-A057427(n))` -/
def P17108671820177092859.Spec : Prop :=
  ∀ n, P17108671820177092859.a n = A072256 n

end A072256

/-! ## A072256.P10678210363015898861

`A142239(A004273(n+1)-A122553(n))`
-/

namespace A072256.P10678210363015898861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142239 (A004273 (n + 1) - A122553 n).toNat

end

end A072256.P10678210363015898861

namespace A072256

/-- `A142239(A004273(n+1)-A122553(n))` -/
def P10678210363015898861.Spec : Prop :=
  ∀ n, P10678210363015898861.a n = A072256 n

end A072256

/-! ## A072256.P3403201098830067414

`A001079(n)-A122652(n)`
-/

namespace A072256.P3403201098830067414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n - A122652 n

end

end A072256.P3403201098830067414

namespace A072256

/-- `A001079(n)-A122652(n)` -/
def P3403201098830067414.Spec : Prop :=
  ∀ n, P3403201098830067414.a n = A072256 n

end A072256

/-! ## A072256.P11928429541262245170

`A140780(n)-A001078(n)`
-/

namespace A072256.P11928429541262245170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140780 n - A001078 n

end

end A072256.P11928429541262245170

namespace A072256

/-- `A140780(n)-A001078(n)` -/
def P11928429541262245170.Spec : Prop :=
  ∀ n, P11928429541262245170.a n = A072256 n

end A072256

/-!
# A072257: a(n) = ((6*n-17)*4^n - 1)/3.

The programs for A072257, the canonical program `A072257.P11124450168986946809` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072257 has offset 0).

The definition of A072257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072257.P11124450168986946809

`((6*n-17)*4^n-1)/3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072257

/-- `((6*n-17)*4^n-1)/3` -/
def P11124450168986946809.Spec : Prop :=
  ∀ n, P11124450168986946809.a n = (A072257 n : ℚ)

end A072257

/-! ## A072257.P11454862466190941798

`A072258(n)-Δ[2*4^n]`
-/

namespace A072257.P11454862466190941798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072258 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A072257.P11454862466190941798

namespace A072257

/-- `A072258(n)-Δ[2*4^n]` -/
def P11454862466190941798.Spec : Prop :=
  ∀ n, P11454862466190941798.a n = A072257 n

end A072257

/-! ## A072257.P6117100662065883881

`A072259(n)-Δ[A002023(n)]`
-/

namespace A072257.P6117100662065883881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072259 n - (f1 (n + 1) - f1 n)

end

end A072257.P6117100662065883881

namespace A072257

/-- `A072259(n)-Δ[A002023(n)]` -/
def P6117100662065883881.Spec : Prop :=
  ∀ n, P6117100662065883881.a n = A072257 n

end A072257

/-! ## A072257.P10029780529660014820

`A127980(A005408(n))-A072261(n+1)`
-/

namespace A072257.P10029780529660014820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127980 (A005408 n).toNat - A072261 (n + 1)

end

end A072257.P10029780529660014820

namespace A072257

/-- `A127980(A005408(n))-A072261(n+1)` -/
def P10029780529660014820.Spec : Prop :=
  ∀ n, P10029780529660014820.a n = A072257 n

end A072257

/-! ## A072257.P16776948788979353478

`A002450(n+1)+A072258(n)-A072261(n+1)`
-/

namespace A072257.P16776948788979353478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 1) + (A072258 n - A072261 (n + 1))

end

end A072257.P16776948788979353478

namespace A072257

/-- `A002450(n+1)+A072258(n)-A072261(n+1)` -/
def P16776948788979353478.Spec : Prop :=
  ∀ n, P16776948788979353478.a n = A072257 n

end A072257

/-! ## A072257.P5484934480488318544

`A072261(n+1)+A072258(n)-A072197(n+1)`
-/

namespace A072257.P5484934480488318544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072261 (n + 1) + (A072258 n - A072197 (n + 1))

end

end A072257.P5484934480488318544

namespace A072257

/-- `A072261(n+1)+A072258(n)-A072197(n+1)` -/
def P5484934480488318544.Spec : Prop :=
  ∀ n, P5484934480488318544.a n = A072257 n

end A072257

/-! ## A072257.P6470250993437456186

`A072262(n+1)+A072259(n)-A072261(n+2)`
-/

namespace A072257.P6470250993437456186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072262 (n + 1) + (A072259 n - A072261 (n + 2))

end

end A072257.P6470250993437456186

namespace A072257

/-- `A072262(n+1)+A072259(n)-A072261(n+2)` -/
def P6470250993437456186.Spec : Prop :=
  ∀ n, P6470250993437456186.a n = A072257 n

end A072257

/-!
# A072258: a(n) = ((6*n+1)*4^n - 1)/3.

The programs for A072258, the canonical program `A072258.P16119579670649258714` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072258 has offset 0).

The definition of A072258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072258.P16119579670649258714

`((6*n+1)*4^n-1)/3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072258

/-- `((6*n+1)*4^n-1)/3` -/
def P16119579670649258714.Spec : Prop :=
  ∀ n, P16119579670649258714.a n = (A072258 n : ℚ)

end A072258

/-! ## A072258.P2340511464391258802

`2*4^n+4*a(n-1)+1` with `a(0)=0`
-/

namespace A072258.P2340511464391258802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * 4 ^ n + (4 * a (n - 1) + 1)

end

end A072258.P2340511464391258802

namespace A072258

/-- `2*4^n+4*a(n-1)+1` -/
def P2340511464391258802.Spec : Prop :=
  ∀ n, (P2340511464391258802.a n : ℤ) = A072258 n

end A072258

/-! ## A072258.P4943230021615328496

`3*A045883(2*n)`
-/

namespace A072258.P4943230021615328496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045883 (2 * n)

end

end A072258.P4943230021615328496

namespace A072258

/-- `3*A045883(2*n)` -/
def P4943230021615328496.Spec : Prop :=
  ∀ n, P4943230021615328496.a n = A072258 n

end A072258

/-! ## A072258.P14996883331111273302

`∑[A084858(2*n)]-1`
-/

namespace A072258.P14996883331111273302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A072258.P14996883331111273302

namespace A072258

/-- `∑[A084858(2*n)]-1` -/
def P14996883331111273302.Spec : Prop :=
  ∀ n, P14996883331111273302.a n = A072258 n

end A072258

/-! ## A072258.P1049428223386923956

`∑[3*A049610(2*n+1)]`
-/

namespace A072258.P1049428223386923956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072258.P1049428223386923956

namespace A072258

/-- `∑[3*A049610(2*n+1)]` -/
def P1049428223386923956.Spec : Prop :=
  ∀ n, P1049428223386923956.a n = A072258 n

end A072258

/-! ## A072258.P13309704205773488481

`A072257(n)+Δ[2*4^n]`
-/

namespace A072258.P13309704205773488481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072257 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A072258.P13309704205773488481

namespace A072258

/-- `A072257(n)+Δ[2*4^n]` -/
def P13309704205773488481.Spec : Prop :=
  ∀ n, P13309704205773488481.a n = A072258 n

end A072258

/-! ## A072258.P5283463106393629878

`A072260(n)-Δ[2*4^n]`
-/

namespace A072258.P5283463106393629878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072260 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A072258.P5283463106393629878

namespace A072258

/-- `A072260(n)-Δ[2*4^n]` -/
def P5283463106393629878.Spec : Prop :=
  ∀ n, P5283463106393629878.a n = A072258 n

end A072258

/-! ## A072258.P4768939443642152670

`∑[(6*n+3)*A131577(n)²]`
-/

namespace A072258.P4768939443642152670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) * A131577 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072258.P4768939443642152670

namespace A072258

/-- `∑[(6*n+3)*A131577(n)²]` -/
def P4768939443642152670.Spec : Prop :=
  ∀ n, P4768939443642152670.a n = A072258 n

end A072258

/-! ## A072258.P6951165983454988923

`∑[floor(2^(n-1))²*A016945(n)]`
-/

namespace A072258.P6951165983454988923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2 * A016945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072258.P6951165983454988923

namespace A072258

/-- `∑[floor(2^(n-1))²*A016945(n)]` -/
def P6951165983454988923.Spec : Prop :=
  ∀ n, P6951165983454988923.a n = A072258 n

end A072258

/-! ## A072258.P8711079056631395019

`∑[(2*n+1)*Δ[A011782(n)²]]`
-/

namespace A072258.P8711079056631395019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072258.P8711079056631395019

namespace A072258

/-- `∑[(2*n+1)*Δ[A011782(n)²]]` -/
def P8711079056631395019.Spec : Prop :=
  ∀ n, P8711079056631395019.a n = A072258 n

end A072258

/-! ## A072258.P14598570539307368168

`record[A168150(n)-A001045(n)]`
-/

namespace A072258.P14598570539307368168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168150 n - A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072258.P14598570539307368168

namespace A072258

/-- `record[A168150(n)-A001045(n)]` -/
def P14598570539307368168.Spec : Prop :=
  ∀ n, P14598570539307368168.a n = A072258 n

end A072258

/-! ## A072258.P9435961012097669697

`A002450(n)+2*A018215(n)`
-/

namespace A072258.P9435961012097669697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + 2 * A018215 n

end

end A072258.P9435961012097669697

namespace A072258

/-- `A002450(n)+2*A018215(n)` -/
def P9435961012097669697.Spec : Prop :=
  ∀ n, P9435961012097669697.a n = A072258 n

end A072258

/-! ## A072258.P17775393112304066293

`A072259(n)-2*A002023(n)`
-/

namespace A072258.P17775393112304066293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072259 n - 2 * A002023 n

end

end A072258.P17775393112304066293

namespace A072258

/-- `A072259(n)-2*A002023(n)` -/
def P17775393112304066293.Spec : Prop :=
  ∀ n, P17775393112304066293.a n = A072258 n

end A072258

/-! ## A072258.P9170546148510402900

`A002450(n)+n*A004171(n)`
-/

namespace A072258.P9170546148510402900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + (n : ℤ) * A004171 n

end

end A072258.P9170546148510402900

namespace A072258

/-- `A002450(n)+n*A004171(n)` -/
def P9170546148510402900.Spec : Prop :=
  ∀ n, P9170546148510402900.a n = A072258 n

end A072258

/-! ## A072258.P13619970370782833522

`∑[A057427(n)*A084858(2*n)]`
-/

namespace A072258.P13619970370782833522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A084858 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072258.P13619970370782833522

namespace A072258

/-- `∑[A057427(n)*A084858(2*n)]` -/
def P13619970370782833522.Spec : Prop :=
  ∀ n, P13619970370782833522.a n = A072258 n

end A072258

/-! ## A072258.P8122610266764928379

`record[A168150(n+1)-A077925(n)]`
-/

namespace A072258.P8122610266764928379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168150 (n + 1) - A077925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072258.P8122610266764928379

namespace A072258

/-- `record[A168150(n+1)-A077925(n)]` -/
def P8122610266764928379.Spec : Prop :=
  ∀ n, P8122610266764928379.a n = A072258 n

end A072258

/-! ## A072258.P7917110879125474888

`A001787(2*n+1)-A007583(n)`
-/

namespace A072258.P7917110879125474888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (2 * n + 1) - A007583 n

end

end A072258.P7917110879125474888

namespace A072258

/-- `A001787(2*n+1)-A007583(n)` -/
def P7917110879125474888.Spec : Prop :=
  ∀ n, P7917110879125474888.a n = A072258 n

end A072258

/-! ## A072258.P14543611800489930790

`A036289(2*n)+A001045(2*n)`
-/

namespace A072258.P14543611800489930790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (2 * n) + A001045 (2 * n)

end

end A072258.P14543611800489930790

namespace A072258

/-- `A036289(2*n)+A001045(2*n)` -/
def P14543611800489930790.Spec : Prop :=
  ∀ n, P14543611800489930790.a n = A072258 n

end A072258

/-! ## A072258.P1524524264967021175

`A087323(2*n)-∑[A131577(2*n)]`
-/

namespace A072258.P1524524264967021175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072258.P1524524264967021175

namespace A072258

/-- `A087323(2*n)-∑[A131577(2*n)]` -/
def P1524524264967021175.Spec : Prop :=
  ∀ n, P1524524264967021175.a n = A072258 n

end A072258

/-! ## A072258.P9103234741063899019

`A097064(2*n+1)+A001045(2*n)`
-/

namespace A072258.P9103234741063899019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 (2 * n + 1) + A001045 (2 * n)

end

end A072258.P9103234741063899019

namespace A072258

/-- `A097064(2*n+1)+A001045(2*n)` -/
def P9103234741063899019.Spec : Prop :=
  ∀ n, P9103234741063899019.a n = A072258 n

end A072258

/-!
# A072259: a(n) = ((6*n+37)*4^n - 1)/3.

The programs for A072259, the canonical program `A072259.P3223434603892286657` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072259 has offset 0).

The definition of A072259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072259.P3223434603892286657

`((6*n+37)*4^n-1)/3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072259

/-- `((6*n+37)*4^n-1)/3` -/
def P3223434603892286657.Spec : Prop :=
  ∀ n, P3223434603892286657.a n = (A072259 n : ℚ)

end A072259

/-! ## A072259.P3437895206874359528

`2*4^n+4*a(n-1)+1` with `a(0)=12`
-/

namespace A072259.P3437895206874359528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12] fun n a =>
  2 * 4 ^ n + (4 * a (n - 1) + 1)

end

end A072259.P3437895206874359528

namespace A072259

/-- `2*4^n+4*a(n-1)+1` -/
def P3437895206874359528.Spec : Prop :=
  ∀ n, (P3437895206874359528.a n : ℤ) = A072259 n

end A072259

/-! ## A072259.P6223706315604469765

`3*A136298(2*(n+1))`
-/

namespace A072259.P6223706315604469765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A136298 (2 * (n + 1))

end

end A072259.P6223706315604469765

namespace A072259

/-- `3*A136298(2*(n+1))` -/
def P6223706315604469765.Spec : Prop :=
  ∀ n, P6223706315604469765.a n = A072259 n

end A072259

/-! ## A072259.P301388892243864412

`A072260(n)+Δ[2*4^n]`
-/

namespace A072259.P301388892243864412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072260 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A072259.P301388892243864412

namespace A072259

/-- `A072260(n)+Δ[2*4^n]` -/
def P301388892243864412.Spec : Prop :=
  ∀ n, P301388892243864412.a n = A072259 n

end A072259

/-! ## A072259.P17098334696550101099

`A072257(n)+Δ[A002023(n)]`
-/

namespace A072259.P17098334696550101099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072257 n + (f1 (n + 1) - f1 n)

end

end A072259.P17098334696550101099

namespace A072259

/-- `A072257(n)+Δ[A002023(n)]` -/
def P17098334696550101099.Spec : Prop :=
  ∀ n, P17098334696550101099.a n = A072259 n

end A072259

/-! ## A072259.P7106885520045214212

`A001045(2*n)+2*A159694(2*n)`
-/

namespace A072259.P7106885520045214212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n) + 2 * A159694 (2 * n)

end

end A072259.P7106885520045214212

namespace A072259

/-- `A001045(2*n)+2*A159694(2*n)` -/
def P7106885520045214212.Spec : Prop :=
  ∀ n, P7106885520045214212.a n = A072259 n

end A072259

/-! ## A072259.P16011062436316124769

`A072262(n+1)+A001787(A005408(n))`
-/

namespace A072259.P16011062436316124769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072262 (n + 1) + A001787 (A005408 n).toNat

end

end A072259.P16011062436316124769

namespace A072259

/-- `A072262(n+1)+A001787(A005408(n))` -/
def P16011062436316124769.Spec : Prop :=
  ∀ n, P16011062436316124769.a n = A072259 n

end A072259

/-! ## A072259.P6289789975954957367

`A072258(n)+A072260(n)-A072257(n)`
-/

namespace A072259.P6289789975954957367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072258 n + (A072260 n - A072257 n)

end

end A072259.P6289789975954957367

namespace A072259

/-- `A072258(n)+A072260(n)-A072257(n)` -/
def P6289789975954957367.Spec : Prop :=
  ∀ n, P6289789975954957367.a n = A072259 n

end A072259

/-! ## A072259.P808342075951535076

`A072197(n+1)+A072258(n)-A002450(n+1)`
-/

namespace A072259.P808342075951535076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 (n + 1) + (A072258 n - A002450 (n + 1))

end

end A072259.P808342075951535076

namespace A072259

/-- `A072197(n+1)+A072258(n)-A002450(n+1)` -/
def P808342075951535076.Spec : Prop :=
  ∀ n, P808342075951535076.a n = A072259 n

end A072259

/-! ## A072259.P9980653677291094742

`A072197(n+1)+A072260(n)-A072261(n+1)`
-/

namespace A072259.P9980653677291094742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 (n + 1) + (A072260 n - A072261 (n + 1))

end

end A072259.P9980653677291094742

namespace A072259

/-- `A072197(n+1)+A072260(n)-A072261(n+1)` -/
def P9980653677291094742.Spec : Prop :=
  ∀ n, P9980653677291094742.a n = A072259 n

end A072259

/-! ## A072259.P18202799416508234119

`A072261(n+2)+A072257(n)-A072262(n+1)`
-/

namespace A072259.P18202799416508234119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072261 (n + 2) + (A072257 n - A072262 (n + 1))

end

end A072259.P18202799416508234119

namespace A072259

/-- `A072261(n+2)+A072257(n)-A072262(n+1)` -/
def P18202799416508234119.Spec : Prop :=
  ∀ n, P18202799416508234119.a n = A072259 n

end A072259

/-! ## A072259.P2781877441913818257

`A072258(n)+xor(A072261(n+1), A072262(n+1))`
-/

namespace A072259.P2781877441913818257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072258 n + Int.xor (A072261 (n + 1)) (A072262 (n + 1))

end

end A072259.P2781877441913818257

namespace A072259

/-- `A072258(n)+xor(A072261(n+1), A072262(n+1))` -/
def P2781877441913818257.Spec : Prop :=
  ∀ n, P2781877441913818257.a n = A072259 n

end A072259

/-!
# A072260: a(n) = ((6*n+19)*4^n - 1)/3.

The programs for A072260, the canonical program `A072260.P2800007278029826161` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072260 has offset 0).

The definition of A072260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072260.P2800007278029826161

`((6*n+19)*4^n-1)/3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072260

/-- `((6*n+19)*4^n-1)/3` -/
def P2800007278029826161.Spec : Prop :=
  ∀ n, P2800007278029826161.a n = (A072260 n : ℚ)

end A072260

/-! ## A072260.P3129810557638480947

`2*4^n+4*a(n-1)+1` with `a(0)=6`
-/

namespace A072260.P3129810557638480947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  2 * 4 ^ n + (4 * a (n - 1) + 1)

end

end A072260.P3129810557638480947

namespace A072260

/-- `2*4^n+4*a(n-1)+1` -/
def P3129810557638480947.Spec : Prop :=
  ∀ n, (P3129810557638480947.a n : ℤ) = A072260 n

end A072260

/-! ## A072260.P13061820091297682240

`3*A172481(Δ[n²])`
-/

namespace A072260.P13061820091297682240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A172481 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072260.P13061820091297682240

namespace A072260

/-- `3*A172481(Δ[n²])` -/
def P13061820091297682240.Spec : Prop :=
  ∀ n, P13061820091297682240.a n = A072260 n

end A072260

/-! ## A072260.P9749434536104235110

`lcm(3, A172481(2*n+1))`
-/

namespace A072260.P9749434536104235110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A172481 (2 * n + 1))

end

end A072260.P9749434536104235110

namespace A072260

/-- `lcm(3, A172481(2*n+1))` -/
def P9749434536104235110.Spec : Prop :=
  ∀ n, (P9749434536104235110.a n : ℤ) = A072260 n

end A072260

/-! ## A072260.P8623455144008901586

`3*∑[A034007(2*(n+1))]`
-/

namespace A072260.P8623455144008901586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072260.P8623455144008901586

namespace A072260

/-- `3*∑[A034007(2*(n+1))]` -/
def P8623455144008901586.Spec : Prop :=
  ∀ n, P8623455144008901586.a n = A072260 n

end A072260

/-! ## A072260.P15271668230957161514

`∑[3*A109975(2*n+1)]`
-/

namespace A072260.P15271668230957161514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A109975 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072260.P15271668230957161514

namespace A072260

/-- `∑[3*A109975(2*n+1)]` -/
def P15271668230957161514.Spec : Prop :=
  ∀ n, P15271668230957161514.a n = A072260 n

end A072260

/-! ## A072260.P9955354047972980365

`A072258(n)+Δ[2*4^n]`
-/

namespace A072260.P9955354047972980365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072258 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A072260.P9955354047972980365

namespace A072260

/-- `A072258(n)+Δ[2*4^n]` -/
def P9955354047972980365.Spec : Prop :=
  ∀ n, P9955354047972980365.a n = A072260 n

end A072260

/-! ## A072260.P5468662179086467466

`A072259(n)-Δ[2*4^n]`
-/

namespace A072260.P5468662179086467466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072259 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A072260.P5468662179086467466

namespace A072260

/-- `A072259(n)-Δ[2*4^n]` -/
def P5468662179086467466.Spec : Prop :=
  ∀ n, P5468662179086467466.a n = A072260 n

end A072260

/-! ## A072260.P197561500118683982

`floor((A016969(n+2)+2)*4^n/3)`
-/

namespace A072260.P197561500118683982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A016969 (n + 2) + 2) * (4 ^ n : ℤ) : ℚ) / 3⌋

end

end A072260.P197561500118683982

namespace A072260

/-- `floor((A016969(n+2)+2)*4^n/3)` -/
def P197561500118683982.Spec : Prop :=
  ∀ n, P197561500118683982.a n = A072260 n

end A072260

/-! ## A072260.P3284833208717823503

`A072257(n)+2*A002023(n)`
-/

namespace A072260.P3284833208717823503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072257 n + 2 * A002023 n

end

end A072260.P3284833208717823503

namespace A072260

/-- `A072257(n)+2*A002023(n)` -/
def P3284833208717823503.Spec : Prop :=
  ∀ n, P3284833208717823503.a n = A072260 n

end A072260

/-! ## A072260.P14892638469491493802

`2*A072258(n)-A072257(n)`
-/

namespace A072260.P14892638469491493802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072258 n - A072257 n

end

end A072260.P14892638469491493802

namespace A072260

/-- `2*A072258(n)-A072257(n)` -/
def P14892638469491493802.Spec : Prop :=
  ∀ n, P14892638469491493802.a n = A072260 n

end A072260

/-! ## A072260.P3088809792142379643

`A002450(n+2)+A001787(2*n+1)`
-/

namespace A072260.P3088809792142379643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 2) + A001787 (2 * n + 1)

end

end A072260.P3088809792142379643

namespace A072260

/-- `A002450(n+2)+A001787(2*n+1)` -/
def P3088809792142379643.Spec : Prop :=
  ∀ n, P3088809792142379643.a n = A072260 n

end A072260

/-! ## A072260.P7988824425429466833

`A348407(2*n)+2*A175656(2*n)`
-/

namespace A072260.P7988824425429466833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348407 (2 * n) + 2 * A175656 (2 * n)

end

end A072260.P7988824425429466833

namespace A072260

/-- `A348407(2*n)+2*A175656(2*n)` -/
def P7988824425429466833.Spec : Prop :=
  ∀ n, P7988824425429466833.a n = A072260 n

end A072260

/-! ## A072260.P1465499491498031376

`A045623(2*(n+1))+∑[A000079(n)²]`
-/

namespace A072260.P1465499491498031376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072260.P1465499491498031376

namespace A072260

/-- `A045623(2*(n+1))+∑[A000079(n)²]` -/
def P1465499491498031376.Spec : Prop :=
  ∀ n, P1465499491498031376.a n = A072260 n

end A072260

/-! ## A072260.P16525214496949423251

`A045623(2*n+2)+∑[A000079(2*n)]`
-/

namespace A072260.P16525214496949423251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (2 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072260.P16525214496949423251

namespace A072260

/-- `A045623(2*n+2)+∑[A000079(2*n)]` -/
def P16525214496949423251.Spec : Prop :=
  ∀ n, P16525214496949423251.a n = A072260 n

end A072260

/-! ## A072260.P15311131178404316955

`A045623(2*(n+1))+A001045(2*(n+1))`
-/

namespace A072260.P15311131178404316955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (2 * (n + 1)) + A001045 (2 * (n + 1))

end

end A072260.P15311131178404316955

namespace A072260

/-- `A045623(2*(n+1))+A001045(2*(n+1))` -/
def P15311131178404316955.Spec : Prop :=
  ∀ n, P15311131178404316955.a n = A072260 n

end A072260

/-! ## A072260.P18271118154203582348

`A172481(2*(n+1))-A084219(2*n+1)`
-/

namespace A072260.P18271118154203582348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 (2 * (n + 1)) - A084219 (2 * n + 1)

end

end A072260.P18271118154203582348

namespace A072260

/-- `A172481(2*(n+1))-A084219(2*n+1)` -/
def P18271118154203582348.Spec : Prop :=
  ∀ n, P18271118154203582348.a n = A072260 n

end A072260

/-! ## A072260.P14500018099925846926

`A045891(2*n+3)-A001045(2*n+1)`
-/

namespace A072260.P14500018099925846926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (2 * n + 3) - A001045 (2 * n + 1)

end

end A072260.P14500018099925846926

namespace A072260

/-- `A045891(2*n+3)-A001045(2*n+1)` -/
def P14500018099925846926.Spec : Prop :=
  ∀ n, P14500018099925846926.a n = A072260 n

end A072260

/-! ## A072260.P14757361660990717844

`A127984(2*n+3)-A059570(2*n+1)`
-/

namespace A072260.P14757361660990717844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127984 (2 * n + 3) - A059570 (2 * n + 1)

end

end A072260.P14757361660990717844

namespace A072260

/-- `A127984(2*n+3)-A059570(2*n+1)` -/
def P14757361660990717844.Spec : Prop :=
  ∀ n, P14757361660990717844.a n = A072260 n

end A072260

/-! ## A072260.P13364276262657609317

`A092809(2*n+1)+Δ[A059570(2*n+1)]`
-/

namespace A072260.P13364276262657609317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092809 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A072260.P13364276262657609317

namespace A072260

/-- `A092809(2*n+1)+Δ[A059570(2*n+1)]` -/
def P13364276262657609317.Spec : Prop :=
  ∀ n, P13364276262657609317.a n = A072260 n

end A072260

/-!
# A072261: a(n) = 4*a(n-1) + 1, a(1)=7.

The programs for A072261, the canonical program `A072261.P11500819161934748978` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072261 has offset 1).

The definition of A072261 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+1` (program `A072261.P11500819161934748978`, by `A072261.P11500819161934748978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072261.P11500819161934748978

`4*a(n-1)+1` with `a(0)=7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072261

/-- `4*a(n-1)+1` -/
def P11500819161934748978.Spec : Prop :=
  ∀ n, (P11500819161934748978.a n : ℤ) = A072261 (n + 1)

theorem P11500819161934748978.correct : P11500819161934748978.Spec := by
  intro n
  simp only [A072261, Nat.add_sub_cancel]

end A072261

/-! ## A072261.P16832659348178592687

`22*A002450(n)+7`
-/

namespace A072261.P16832659348178592687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * A002450 n + 7

end

end A072261.P16832659348178592687

namespace A072261

/-- `22*A002450(n)+7` -/
def P16832659348178592687.Spec : Prop :=
  ∀ n, P16832659348178592687.a n = A072261 (n + 1)

end A072261

/-! ## A072261.P1958282032707849897

`(11*4^(n+1)-2)/6`
-/

namespace A072261.P1958282032707849897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 4 ^ (n + 1) : ℤ) - 2 : ℚ) / 6

end

end A072261.P1958282032707849897

namespace A072261

/-- `(11*4^(n+1)-2)/6` -/
def P1958282032707849897.Spec : Prop :=
  ∀ n, P1958282032707849897.a n = (A072261 (n + 1) : ℚ)

theorem P1958282032707849897.correct : P1958282032707849897.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A072261, Nat.add_sub_cancel, A072261.P1958282032707849897.a, A072261.P11500819161934748978.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A072261, Nat.add_sub_cancel, A072261.P1958282032707849897.a, A072261.P11500819161934748978.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A072261

/-! ## A072261.P11635230845857363937

`lcm(4, a(n-1))+1` with `a(0)=7`
-/

namespace A072261.P11635230845857363937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 1

end

end A072261.P11635230845857363937

namespace A072261

/-- `lcm(4, a(n-1))+1` -/
def P11635230845857363937.Spec : Prop :=
  ∀ n, (P11635230845857363937.a n : ℤ) = A072261 (n + 1)

end A072261

/-! ## A072261.P15662264341424053046

`or(1, 4*a(n-1))` with `a(0)=7`
-/

namespace A072261.P15662264341424053046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor 1 (4 * a (n - 1))

end

end A072261.P15662264341424053046

namespace A072261

/-- `or(1, 4*a(n-1))` -/
def P15662264341424053046.Spec : Prop :=
  ∀ n, (P15662264341424053046.a n : ℤ) = A072261 (n + 1)

end A072261

/-! ## A072261.P318017129248589699

`xor(1, 4*a(n-1))` with `a(0)=7`
-/

namespace A072261.P318017129248589699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.xor 1 (4 * a (n - 1))

end

end A072261.P318017129248589699

namespace A072261

/-- `xor(1, 4*a(n-1))` -/
def P318017129248589699.Spec : Prop :=
  ∀ n, (P318017129248589699.a n : ℤ) = A072261 (n + 1)

end A072261

/-! ## A072261.P9987097281898640228

`∑[4*a(n-1)]` with `a(0)=7, a(1)=22`
-/

namespace A072261.P9987097281898640228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 22] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072261.P9987097281898640228

namespace A072261

/-- `∑[4*a(n-1)]` -/
def P9987097281898640228.Spec : Prop :=
  ∀ n, (P9987097281898640228.a n : ℤ) = A072261 (n + 1)

end A072261

/-! ## A072261.P12744204661545577519

`5-4*(1-a(n-1))` with `a(0)=7`
-/

namespace A072261.P12744204661545577519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  5 - 4 * (1 - a (n - 1))

end

end A072261.P12744204661545577519

namespace A072261

/-- `5-4*(1-a(n-1))` -/
def P12744204661545577519.Spec : Prop :=
  ∀ n, P12744204661545577519.a n = A072261 (n + 1)

end A072261

/-! ## A072261.P5481021094462692561

`a(n-1)/(1/2)²+1` with `a(0)=7`
-/

namespace A072261.P5481021094462692561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 + 1

end

end A072261.P5481021094462692561

namespace A072261

/-- `a(n-1)/(1/2)²+1` -/
def P5481021094462692561.Spec : Prop :=
  ∀ n, P5481021094462692561.a n = (A072261 (n + 1) : ℚ)

end A072261

/-! ## A072261.P17781845253358063152

`A383953(Δ[n²])`
-/

namespace A072261.P17781845253358063152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383953 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072261.P17781845253358063152

namespace A072261

/-- `A383953(Δ[n²])` -/
def P17781845253358063152.Spec : Prop :=
  ∀ n, P17781845253358063152.a n = A072261 (n + 1)

end A072261

/-! ## A072261.P6883489153693435811

`A052997(2*(n+1))`
-/

namespace A072261.P6883489153693435811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052997 (2 * (n + 1))

end

end A072261.P6883489153693435811

namespace A072261

/-- `A052997(2*(n+1))` -/
def P6883489153693435811.Spec : Prop :=
  ∀ n, P6883489153693435811.a n = A072261 (n + 1)

end A072261

/-! ## A072261.P3295706521823494508

`A283323(2*(n+1))`
-/

namespace A072261.P3295706521823494508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283323 (2 * (n + 1))

end

end A072261.P3295706521823494508

namespace A072261

/-- `A283323(2*(n+1))` -/
def P3295706521823494508.Spec : Prop :=
  ∀ n, P3295706521823494508.a n = A072261 (n + 1)

end A072261

/-! ## A072261.P8111981071746142013

`2*A199210(n)-1`
-/

namespace A072261.P8111981071746142013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199210 n - 1

end

end A072261.P8111981071746142013

namespace A072261

/-- `2*A199210(n)-1` -/
def P8111981071746142013.Spec : Prop :=
  ∀ n, P8111981071746142013.a n = A072261 (n + 1)

end A072261

/-! ## A072261.P16921806402492293037

`A340627(Δ[n²])-1`
-/

namespace A072261.P16921806402492293037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340627 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A072261.P16921806402492293037

namespace A072261

/-- `A340627(Δ[n²])-1` -/
def P16921806402492293037.Spec : Prop :=
  ∀ n, P16921806402492293037.a n = A072261 (n + 1)

end A072261

/-! ## A072261.P12136335023302909036

`record[Δ[A282799(n+1)]]`
-/

namespace A072261.P12136335023302909036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282799 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072261.P12136335023302909036

namespace A072261

/-- `record[Δ[A282799(n+1)]]` -/
def P12136335023302909036.Spec : Prop :=
  ∀ n, P12136335023302909036.a n = A072261 (n + 1)

end A072261

/-! ## A072261.P2106993119624556660

`2*A340627(2*n)+1`
-/

namespace A072261.P2106993119624556660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340627 (2 * n) + 1

end

end A072261.P2106993119624556660

namespace A072261

/-- `2*A340627(2*n)+1` -/
def P2106993119624556660.Spec : Prop :=
  ∀ n, P2106993119624556660.a n = A072261 (n + 1)

end A072261

/-! ## A072261.P3593867264108508921

`A144472(2*n+3)-2`
-/

namespace A072261.P3593867264108508921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144472 (2 * n + 3) - 2

end

end A072261.P3593867264108508921

namespace A072261

/-- `A144472(2*n+3)-2` -/
def P3593867264108508921.Spec : Prop :=
  ∀ n, P3593867264108508921.a n = A072261 (n + 1)

end A072261

/-! ## A072261.P18185698012306926114

`2*A277954(2*n+1)+1`
-/

namespace A072261.P18185698012306926114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277954 (2 * n + 1) + 1

end

end A072261.P18185698012306926114

namespace A072261

/-- `2*A277954(2*n+1)+1` -/
def P18185698012306926114.Spec : Prop :=
  ∀ n, P18185698012306926114.a n = A072261 (n + 1)

end A072261

/-!
# A072262: a(n) = 4*a(n-1) + 1, a(1)=11.

The programs for A072262, the canonical program `A072262.P12671303992846112071` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072262 has offset 1).

The definition of A072262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+1` (program `A072262.P12671303992846112071`, by `A072262.P12671303992846112071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072262.P12671303992846112071

`4*a(n-1)+1` with `a(0)=11`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072262

/-- `4*a(n-1)+1` -/
def P12671303992846112071.Spec : Prop :=
  ∀ n, (P12671303992846112071.a n : ℤ) = A072262 (n + 1)

theorem P12671303992846112071.correct : P12671303992846112071.Spec := by
  intro n
  simp only [A072262, Nat.add_sub_cancel]

end A072262

/-! ## A072262.P151003889372004896

`34*A002450(n)+11`
-/

namespace A072262.P151003889372004896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  34 * A002450 n + 11

end

end A072262.P151003889372004896

namespace A072262

/-- `34*A002450(n)+11` -/
def P151003889372004896.Spec : Prop :=
  ∀ n, P151003889372004896.a n = A072262 (n + 1)

end A072262

/-! ## A072262.P3416539402765851439

`(17*4^(n+1)-2)/6`
-/

namespace A072262.P3416539402765851439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((17 * 4 ^ (n + 1) : ℤ) - 2 : ℚ) / 6

end

end A072262.P3416539402765851439

namespace A072262

/-- `(17*4^(n+1)-2)/6` -/
def P3416539402765851439.Spec : Prop :=
  ∀ n, P3416539402765851439.a n = (A072262 (n + 1) : ℚ)

theorem P3416539402765851439.correct : P3416539402765851439.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A072262, Nat.add_sub_cancel, A072262.P3416539402765851439.a, A072262.P12671303992846112071.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A072262, Nat.add_sub_cancel, A072262.P3416539402765851439.a, A072262.P12671303992846112071.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A072262

/-! ## A072262.P14230930409291337508

`lcm(4, a(n-1))+1` with `a(0)=11`
-/

namespace A072262.P14230930409291337508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 1

end

end A072262.P14230930409291337508

namespace A072262

/-- `lcm(4, a(n-1))+1` -/
def P14230930409291337508.Spec : Prop :=
  ∀ n, (P14230930409291337508.a n : ℤ) = A072262 (n + 1)

end A072262

/-! ## A072262.P7079094090695288427

`or(1, 4*a(n-1))` with `a(0)=11`
-/

namespace A072262.P7079094090695288427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  Nat.lor 1 (4 * a (n - 1))

end

end A072262.P7079094090695288427

namespace A072262

/-- `or(1, 4*a(n-1))` -/
def P7079094090695288427.Spec : Prop :=
  ∀ n, (P7079094090695288427.a n : ℤ) = A072262 (n + 1)

end A072262

/-! ## A072262.P4509023205195087981

`xor(1, 4*a(n-1))` with `a(0)=11`
-/

namespace A072262.P4509023205195087981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  Nat.xor 1 (4 * a (n - 1))

end

end A072262.P4509023205195087981

namespace A072262

/-- `xor(1, 4*a(n-1))` -/
def P4509023205195087981.Spec : Prop :=
  ∀ n, (P4509023205195087981.a n : ℤ) = A072262 (n + 1)

end A072262

/-! ## A072262.P11860429640681655358

`∑[4*a(n-1)]` with `a(0)=11, a(1)=34`
-/

namespace A072262.P11860429640681655358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 34] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072262.P11860429640681655358

namespace A072262

/-- `∑[4*a(n-1)]` -/
def P11860429640681655358.Spec : Prop :=
  ∀ n, (P11860429640681655358.a n : ℤ) = A072262 (n + 1)

end A072262

/-! ## A072262.P7747710843743001719

`5-4*(1-a(n-1))` with `a(0)=11`
-/

namespace A072262.P7747710843743001719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  5 - 4 * (1 - a (n - 1))

end

end A072262.P7747710843743001719

namespace A072262

/-- `5-4*(1-a(n-1))` -/
def P7747710843743001719.Spec : Prop :=
  ∀ n, P7747710843743001719.a n = A072262 (n + 1)

end A072262

/-! ## A072262.P293232206265283316

`A266721(2*n+3)`
-/

namespace A072262.P293232206265283316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266721 (2 * n + 3)

end

end A072262.P293232206265283316

namespace A072262

/-- `A266721(2*n+3)` -/
def P293232206265283316.Spec : Prop :=
  ∀ n, P293232206265283316.a n = A072262 (n + 1)

end A072262

/-! ## A072262.P8939756475060370766

`or(∑[4^n], A002089(n))`
-/

namespace A072262.P8939756475060370766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A002089 n)

end

end A072262.P8939756475060370766

namespace A072262

/-- `or(∑[4^n], A002089(n))` -/
def P8939756475060370766.Spec : Prop :=
  ∀ n, P8939756475060370766.a n = A072262 (n + 1)

end A072262

/-! ## A072262.P3200221209826944088

`A026633(2*n+3)+1`
-/

namespace A072262.P3200221209826944088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026633 (2 * n + 3) + 1

end

end A072262.P3200221209826944088

namespace A072262

/-- `A026633(2*n+3)+1` -/
def P3200221209826944088.Spec : Prop :=
  ∀ n, P3200221209826944088.a n = A072262 (n + 1)

end A072262

/-! ## A072262.P11786471161784127858

`A072197(n+1)-2*4^n`
-/

namespace A072262.P11786471161784127858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 (n + 1) - (2 * 4 ^ n : ℤ)

end

end A072262.P11786471161784127858

namespace A072262

/-- `A072197(n+1)-2*4^n` -/
def P11786471161784127858.Spec : Prop :=
  ∀ n, P11786471161784127858.a n = A072262 (n + 1)

end A072262

/-! ## A072262.P7678200261456556445

`12*4^n-A255138(comp[2*n])`
-/

namespace A072262.P7678200261456556445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * 4 ^ n : ℤ) - A255138 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A072262.P7678200261456556445

namespace A072262

/-- `12*4^n-A255138(comp[2*n])` -/
def P7678200261456556445.Spec : Prop :=
  ∀ n, P7678200261456556445.a n = A072262 (n + 1)

end A072262

/-! ## A072262.P4150645660675772937

`A000975(2*(n+2))+record[∑[(-2)^n]]`
-/

namespace A072262.P4150645660675772937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (2 * (n + 2)) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072262.P4150645660675772937

namespace A072262

/-- `A000975(2*(n+2))+record[∑[(-2)^n]]` -/
def P4150645660675772937.Spec : Prop :=
  ∀ n, P4150645660675772937.a n = A072262 (n + 1)

end A072262

/-! ## A072262.P4234074649984808922

`A002450(n)+A002089(n)`
-/

namespace A072262.P4234074649984808922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + A002089 n

end

end A072262.P4234074649984808922

namespace A072262

/-- `A002450(n)+A002089(n)` -/
def P4234074649984808922.Spec : Prop :=
  ∀ n, P4234074649984808922.a n = A072262 (n + 1)

end A072262

/-! ## A072262.P7644044961120015574

`A206374(n)+A002063(n)`
-/

namespace A072262.P7644044961120015574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206374 n + A002063 n

end

end A072262.P7644044961120015574

namespace A072262

/-- `A206374(n)+A002063(n)` -/
def P7644044961120015574.Spec : Prop :=
  ∀ n, P7644044961120015574.a n = A072262 (n + 1)

end A072262

/-! ## A072262.P3714647226247439472

`A198695(n)+A047849(n)`
-/

namespace A072262.P3714647226247439472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198695 n + A047849 n

end

end A072262.P3714647226247439472

namespace A072262

/-- `A198695(n)+A047849(n)` -/
def P3714647226247439472.Spec : Prop :=
  ∀ n, P3714647226247439472.a n = A072262 (n + 1)

end A072262

/-! ## A072262.P16287176068893854711

`A199209(n)+A080674(n)`
-/

namespace A072262.P16287176068893854711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199209 n + A080674 n

end

end A072262.P16287176068893854711

namespace A072262

/-- `A199209(n)+A080674(n)` -/
def P16287176068893854711.Spec : Prop :=
  ∀ n, P16287176068893854711.a n = A072262 (n + 1)

end A072262

/-! ## A072262.P13223915909977463228

`A199208(n)+A083597(n)`
-/

namespace A072262.P13223915909977463228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199208 n + A083597 n

end

end A072262.P13223915909977463228

namespace A072262

/-- `A199208(n)+A083597(n)` -/
def P13223915909977463228.Spec : Prop :=
  ∀ n, P13223915909977463228.a n = A072262 (n + 1)

end A072262

/-!
# A072263: a(n) = 3*a(n-1) + 5*a(n-2), with a(0)=2, a(1)=3.

The programs for A072263, the canonical program `A072263.P10339553969602129257` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072263 has offset 0).

The definition of A072263 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+5*a(n-2)` (program `A072263.P10339553969602129257`, by `A072263.P10339553969602129257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072263.P10339553969602129257

`3*a(n-1)+5*a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072263

/-- `3*a(n-1)+5*a(n-2)` -/
def P10339553969602129257.Spec : Prop :=
  ∀ n, (P10339553969602129257.a n : ℤ) = A072263 n

theorem P10339553969602129257.correct : P10339553969602129257.Spec := by
  intro n
  simp only [A072263]

end A072263

/-! ## A072263.P8347884917907170331

`2*A015523(n+1)-3*A015523(n)`
-/

namespace A072263.P8347884917907170331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015523 (n + 1) - 3 * A015523 n

end

end A072263.P8347884917907170331

namespace A072263

/-- `2*A015523(n+1)-3*A015523(n)` -/
def P8347884917907170331.Spec : Prop :=
  ∀ n, P8347884917907170331.a n = A072263 n

end A072263

/-! ## A072263.P10666022160650776534

`((3+sqrt(29))/2)^n+((3-sqrt(29))/2)^n`
-/

namespace A072263.P10666022160650776534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (29 : ℝ)) / 2) ^ n + ((3 - Real.sqrt (29 : ℝ)) / 2) ^ n

end

end A072263.P10666022160650776534

namespace A072263

/-- `((3+sqrt(29))/2)^n+((3-sqrt(29))/2)^n` -/
def P10666022160650776534.Spec : Prop :=
  ∀ n, P10666022160650776534.a n = (A072263 n : ℝ)

end A072263

/-! ## A072263.P18170814831418261238

`floor(4*a(n-1)-(a(n-1)-5*a(n-2)))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A072263.P18170814831418261238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A072263.P18170814831418261238

namespace A072263

/-- `floor(4*a(n-1)-(a(n-1)-5*a(n-2)))` -/
def P18170814831418261238.Spec : Prop :=
  ∀ n, P18170814831418261238.a n = A072263 n

end A072263

/-! ## A072263.P5379916045311714479

`abs(A189739(n+1)-A197189(n))`
-/

namespace A072263.P5379916045311714479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A189739 (n + 1) - A197189 n|

end

end A072263.P5379916045311714479

namespace A072263

/-- `abs(A189739(n+1)-A197189(n))` -/
def P5379916045311714479.Spec : Prop :=
  ∀ n, P5379916045311714479.a n = A072263 n

end A072263

/-! ## A072263.P16494843156026121295

`or(A197189(n)+A072264(n), char[14])`
-/

namespace A072263.P16494843156026121295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A197189 n + A072264 n) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A072263.P16494843156026121295

namespace A072263

/-- `or(A197189(n)+A072264(n), char[14])` -/
def P16494843156026121295.Spec : Prop :=
  ∀ n, P16494843156026121295.a n = A072263 n

end A072263

/-! ## A072263.P16463172497381189981

`(A189739(n+1)+A072264(n))/2`
-/

namespace A072263.P16463172497381189981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189739 (n + 1) + A072264 n : ℚ) / 2

end

end A072263.P16463172497381189981

namespace A072263

/-- `(A189739(n+1)+A072264(n))/2` -/
def P16463172497381189981.Spec : Prop :=
  ∀ n, P16463172497381189981.a n = (A072263 n : ℚ)

end A072263

/-! ## A072263.P10245304994171682098

`(A197189(n)+A072264(n))*A010153(2*n+1)`
-/

namespace A072263.P10245304994171682098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A197189 n + A072264 n) * A010153 (2 * n + 1)

end

end A072263.P10245304994171682098

namespace A072263

/-- `(A197189(n)+A072264(n))*A010153(2*n+1)` -/
def P10245304994171682098.Spec : Prop :=
  ∀ n, P10245304994171682098.a n = A072263 n

end A072263

/-! ## A072263.P7980244567466254938

`(A197189(n)+A072264(n))*A010195(2*n+1)`
-/

namespace A072263.P7980244567466254938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A197189 n + A072264 n) * A010195 (2 * n + 1)

end

end A072263.P7980244567466254938

namespace A072263

/-- `(A197189(n)+A072264(n))*A010195(2*n+1)` -/
def P7980244567466254938.Spec : Prop :=
  ∀ n, P7980244567466254938.a n = A072263 n

end A072263

/-! ## A072263.P17831873835175646053

`(A197189(n)+A072264(n))*A337335(A002033(n))`
-/

namespace A072263.P17831873835175646053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A197189 n + A072264 n) * A337335 (A002033 n).toNat

end

end A072263.P17831873835175646053

namespace A072263

/-- `(A197189(n)+A072264(n))*A337335(A002033(n))` -/
def P17831873835175646053.Spec : Prop :=
  ∀ n, P17831873835175646053.a n = A072263 n

end A072263

/-! ## A072263.P8787740684248956732

`(A197189(n)+A072264(n))*A014491(A006530(n+1))`
-/

namespace A072263.P8787740684248956732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A197189 n + A072264 n) * A014491 (A006530 (n + 1)).toNat

end

end A072263.P8787740684248956732

namespace A072263

/-- `(A197189(n)+A072264(n))*A014491(A006530(n+1))` -/
def P8787740684248956732.Spec : Prop :=
  ∀ n, P8787740684248956732.a n = A072263 n

end A072263

/-! ## A072263.P15819031279939389218

`(A197189(n)+A072264(n))*A001222(A045468(n+1))`
-/

namespace A072263.P15819031279939389218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A197189 n + A072264 n) * A001222 (A045468 (n + 1)).toNat

end

end A072263.P15819031279939389218

namespace A072263

/-- `(A197189(n)+A072264(n))*A001222(A045468(n+1))` -/
def P15819031279939389218.Spec : Prop :=
  ∀ n, P15819031279939389218.a n = A072263 n

end A072263

/-! ## A072263.P9769431841625359050

`(A197189(n)+A072264(n))*A263919(n²)`
-/

namespace A072263.P9769431841625359050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A197189 n + A072264 n) * A263919 (n ^ 2)

end

end A072263.P9769431841625359050

namespace A072263

/-- `(A197189(n)+A072264(n))*A263919(n²)` -/
def P9769431841625359050.Spec : Prop :=
  ∀ n, P9769431841625359050.a n = A072263 n

end A072263

/-!
# A072264: a(n) = 3*a(n-1) + 5*a(n-2), with a(0)=1, a(1)=1.

The programs for A072264, the canonical program `A072264.P3815657059335987824` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072264 has offset 0).

The definition of A072264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+5*a(n-2)` (program `A072264.P3815657059335987824`, by `A072264.P3815657059335987824.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072264.P3815657059335987824

`3*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072264

/-- `3*a(n-1)+5*a(n-2)` -/
def P3815657059335987824.Spec : Prop :=
  ∀ n, (P3815657059335987824.a n : ℤ) = A072264 n

theorem P3815657059335987824.correct : P3815657059335987824.Spec := by
  intro n
  simp only [A072264]

end A072264

/-! ## A072264.P11659180519679076604

`lcm(3, a(n-1))+lcm(5, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A072264.P11659180519679076604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm 3 (a (n - 1)) + Nat.lcm 5 (a (n - 2))

end

end A072264.P11659180519679076604

namespace A072264

/-- `lcm(3, a(n-1))+lcm(5, a(n-2))` -/
def P11659180519679076604.Spec : Prop :=
  ∀ n, (P11659180519679076604.a n : ℤ) = A072264 n

end A072264

/-! ## A072264.P5177724942445030001

`4*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A072264.P5177724942445030001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A072264.P5177724942445030001

namespace A072264

/-- `4*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P5177724942445030001.Spec : Prop :=
  ∀ n, P5177724942445030001.a n = A072264 n

end A072264

/-! ## A072264.P842573575859908109

`A197189(n)-A015523(n)`
-/

namespace A072264.P842573575859908109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197189 n - A015523 n

end

end A072264.P842573575859908109

namespace A072264

/-- `A197189(n)-A015523(n)` -/
def P842573575859908109.Spec : Prop :=
  ∀ n, P842573575859908109.a n = A072264 n

end A072264

/-! ## A072264.P6586136802467316433

`A072263(n)-A197189(n)`
-/

namespace A072264.P6586136802467316433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072263 n - A197189 n

end

end A072264.P6586136802467316433

namespace A072264

/-- `A072263(n)-A197189(n)` -/
def P6586136802467316433.Spec : Prop :=
  ∀ n, P6586136802467316433.a n = A072264 n

end A072264

/-! ## A072264.P16720801776781439926

`(A072263(n)-A015523(n))/2`
-/

namespace A072264.P16720801776781439926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072263 n - A015523 n : ℚ) / 2

end

end A072264.P16720801776781439926

namespace A072264

/-- `(A072263(n)-A015523(n))/2` -/
def P16720801776781439926.Spec : Prop :=
  ∀ n, P16720801776781439926.a n = (A072264 n : ℚ)

end A072264

/-! ## A072264.P11811779476604200713

`A015523(n+1)-2*A015523(n)`
-/

namespace A072264.P11811779476604200713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015523 (n + 1) - 2 * A015523 n

end

end A072264.P11811779476604200713

namespace A072264

/-- `A015523(n+1)-2*A015523(n)` -/
def P11811779476604200713.Spec : Prop :=
  ∀ n, P11811779476604200713.a n = A072264 n

end A072264

/-! ## A072264.P1549906545446504267

`2*A072263(n)-A189739(n+1)`
-/

namespace A072264.P1549906545446504267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072263 n - A189739 (n + 1)

end

end A072264.P1549906545446504267

namespace A072264

/-- `2*A072263(n)-A189739(n+1)` -/
def P1549906545446504267.Spec : Prop :=
  ∀ n, P1549906545446504267.a n = A072264 n

end A072264

/-! ## A072264.P8407412590032927004

`A189739(n+1)-2*A197189(n)`
-/

namespace A072264.P8407412590032927004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189739 (n + 1) - 2 * A197189 n

end

end A072264.P8407412590032927004

namespace A072264

/-- `A189739(n+1)-2*A197189(n)` -/
def P8407412590032927004.Spec : Prop :=
  ∀ n, P8407412590032927004.a n = A072264 n

end A072264

/-! ## A072264.P1753545053406454226

`A179606(n)+A197189(n)-A152187(n)`
-/

namespace A072264.P1753545053406454226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179606 n + (A197189 n - A152187 n)

end

end A072264.P1753545053406454226

namespace A072264

/-- `A179606(n)+A197189(n)-A152187(n)` -/
def P1753545053406454226.Spec : Prop :=
  ∀ n, P1753545053406454226.a n = A072264 n

end A072264

/-! ## A072264.P1185902195923178259

`A152187(n+1)-(A180140(n+1)+A015523(n))`
-/

namespace A072264.P1185902195923178259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152187 (n + 1) - (A180140 (n + 1) + A015523 n)

end

end A072264.P1185902195923178259

namespace A072264

/-- `A152187(n+1)-(A180140(n+1)+A015523(n))` -/
def P1185902195923178259.Spec : Prop :=
  ∀ n, P1185902195923178259.a n = A072264 n

end A072264

/-! ## A072264.P8488121023249500124

`A180140(n+1)+A072263(n)-A152187(n+1)`
-/

namespace A072264.P8488121023249500124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180140 (n + 1) + (A072263 n - A152187 (n + 1))

end

end A072264.P8488121023249500124

namespace A072264

/-- `A180140(n+1)+A072263(n)-A152187(n+1)` -/
def P8488121023249500124.Spec : Prop :=
  ∀ n, P8488121023249500124.a n = A072264 n

end A072264

/-! ## A072264.P9239072516173545004

`A179606(n+1)+A197189(n)-A180140(n+1)`
-/

namespace A072264.P9239072516173545004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179606 (n + 1) + (A197189 n - A180140 (n + 1))

end

end A072264.P9239072516173545004

namespace A072264

/-- `A179606(n+1)+A197189(n)-A180140(n+1)` -/
def P9239072516173545004.Spec : Prop :=
  ∀ n, P9239072516173545004.a n = A072264 n

end A072264

/-!
# A072265: Variant of Lucas numbers: a(n) = a(n-1) + 4*a(n-2) starting with a(0)=2 and a(1)=1.

The programs for A072265, the canonical program `A072265.P9021610257129004148` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072265 has offset 0).

The definition of A072265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+4*a(n-2)` (program `A072265.P9021610257129004148`, by `A072265.P9021610257129004148.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072265.P9021610257129004148

`a(n-1)+4*a(n-2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072265

/-- `a(n-1)+4*a(n-2)` -/
def P9021610257129004148.Spec : Prop :=
  ∀ n, (P9021610257129004148.a n : ℤ) = A072265 n

theorem P9021610257129004148.correct : P9021610257129004148.Spec := by
  intro n
  simp only [A072265]

end A072265

/-! ## A072265.P8964992115970670377

`a(n-1)+a(n-2)/(1/2)²` with `a(0)=2, a(1)=1`
-/

namespace A072265.P8964992115970670377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A072265.P8964992115970670377

namespace A072265

/-- `a(n-1)+a(n-2)/(1/2)²` -/
def P8964992115970670377.Spec : Prop :=
  ∀ n, P8964992115970670377.a n = (A072265 n : ℚ)

end A072265

/-! ## A072265.P8562464677228695843

`4-(4*(1-a(n-2))-a(n-1))` with `a(0)=2, a(1)=1`
-/

namespace A072265.P8562464677228695843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  4 - (4 * (1 - a (n - 2)) - a (n - 1))

end

end A072265.P8562464677228695843

namespace A072265

/-- `4-(4*(1-a(n-2))-a(n-1))` -/
def P8562464677228695843.Spec : Prop :=
  ∀ n, P8562464677228695843.a n = A072265 n

end A072265

/-! ## A072265.P17491977685460462377

`((1+sqrt(17))/2)^n+((1-sqrt(17))/2)^n`
-/

namespace A072265.P17491977685460462377
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (17 : ℝ)) / 2) ^ n + ((1 - Real.sqrt (17 : ℝ)) / 2) ^ n

end

end A072265.P17491977685460462377

namespace A072265

/-- `((1+sqrt(17))/2)^n+((1-sqrt(17))/2)^n` -/
def P17491977685460462377.Spec : Prop :=
  ∀ n, P17491977685460462377.a n = (A072265 n : ℝ)

end A072265

/-! ## A072265.P12657794444232941463

`floor(A052923(n)+A102446(n)/2)`
-/

namespace A072265.P12657794444232941463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052923 n : ℚ) + (A102446 n : ℚ) / 2⌋

end

end A072265.P12657794444232941463

namespace A072265

/-- `floor(A052923(n)+A102446(n)/2)` -/
def P12657794444232941463.Spec : Prop :=
  ∀ n, P12657794444232941463.a n = A072265 n

end A072265

/-! ## A072265.P15059457364900029499

`abs(A052923(n)+2*A026597(n)-A026581(n))`
-/

namespace A072265.P15059457364900029499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052923 n + (2 * A026597 n - A026581 n)|

end

end A072265.P15059457364900029499

namespace A072265

/-- `abs(A052923(n)+2*A026597(n)-A026581(n))` -/
def P15059457364900029499.Spec : Prop :=
  ∀ n, P15059457364900029499.a n = A072265 n

end A072265

/-! ## A072265.P14514028841364325267

`abs(A052923(n)+2*A344261(n)-A033999(n))`
-/

namespace A072265.P14514028841364325267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052923 n + (2 * A344261 n - A033999 n)|

end

end A072265.P14514028841364325267

namespace A072265

/-- `abs(A052923(n)+2*A344261(n)-A033999(n))` -/
def P14514028841364325267.Spec : Prop :=
  ∀ n, P14514028841364325267.a n = A072265 n

end A072265

/-! ## A072265.P6419433917520055093

`Δ[A006131(2*n+1)/(4*A006131(n))]`
-/

namespace A072265.P6419433917520055093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006131 (2 * n + 1) : ℚ) / (4 * A006131 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072265.P6419433917520055093

namespace A072265

/-- `Δ[A006131(2*n+1)/(4*A006131(n))]` -/
def P6419433917520055093.Spec : Prop :=
  ∀ n, P6419433917520055093.a n = (A072265 n : ℚ)

end A072265

/-! ## A072265.P8141240080392058185

`Δ[A102446(2*n+1)/(4*A102446(n))]`
-/

namespace A072265.P8141240080392058185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102446 (2 * n + 1) : ℚ) / (4 * A102446 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072265.P8141240080392058185

namespace A072265

/-- `Δ[A102446(2*n+1)/(4*A102446(n))]` -/
def P8141240080392058185.Spec : Prop :=
  ∀ n, P8141240080392058185.a n = (A072265 n : ℚ)

end A072265

/-!
# A072266: Number of words of length 2n generated by the two letters s and t that reduce to the identity 1 using the relations sssssss=1, tt=1 and stst=1. The generators s and t along with the three relations generate the 14-element dihedral group D7.

The programs for A072266, the canonical program `A072266.P7602661377852322942` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072266 has offset 0).

The definition of A072266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072266.P7602661377852322942

`9*a(n-1)-26*a(n-2)+25*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=10, a(4)=35`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072266

/-- `9*a(n-1)-26*a(n-2)+25*a(n-3)-4*a(n-4)` -/
def P7602661377852322942.Spec : Prop :=
  ∀ n, P7602661377852322942.a n = A072266 n

theorem P7602661377852322942.correct : P7602661377852322942.Spec := by
  intro n
  simp only [A072266]

end A072266

/-! ## A072266.P11642882942641513649

`A377573(2*n)`
-/

namespace A072266.P11642882942641513649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377573 (2 * n)

end

end A072266.P11642882942641513649

namespace A072266

/-- `A377573(2*n)` -/
def P11642882942641513649.Spec : Prop :=
  ∀ n, P11642882942641513649.a n = A072266 n

end A072266

/-! ## A072266.P6547326268592697326

`A094052(abs(1-2*n))`
-/

namespace A072266.P6547326268592697326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094052 |1 - (2 * n : ℤ)|.toNat

end

end A072266.P6547326268592697326

namespace A072266

/-- `A094052(abs(1-2*n))` -/
def P6547326268592697326.Spec : Prop :=
  ∀ n, P6547326268592697326.a n = A072266 n

end A072266

/-! ## A072266.P2768872072493798092

`ceil(A094659(2*n)/2)`
-/

namespace A072266.P2768872072493798092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094659 (2 * n) : ℚ) / 2⌉

end

end A072266.P2768872072493798092

namespace A072266

/-- `ceil(A094659(2*n)/2)` -/
def P2768872072493798092.Spec : Prop :=
  ∀ n, P2768872072493798092.a n = A072266 n

end A072266

/-! ## A072266.P14483144236884362883

`A094659(2*n)/A036453(2*n+1)`
-/

namespace A072266.P14483144236884362883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 (2 * n) : ℚ) / (A036453 (2 * n + 1) : ℚ)

end

end A072266.P14483144236884362883

namespace A072266

/-- `A094659(2*n)/A036453(2*n+1)` -/
def P14483144236884362883.Spec : Prop :=
  ∀ n, P14483144236884362883.a n = (A072266 n : ℚ)

end A072266

/-! ## A072266.P11575102287537485010

`A094659(2*n)/A104435(2*n+1)`
-/

namespace A072266.P11575102287537485010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 (2 * n) : ℚ) / (A104435 (2 * n + 1) : ℚ)

end

end A072266.P11575102287537485010

namespace A072266

/-- `A094659(2*n)/A104435(2*n+1)` -/
def P11575102287537485010.Spec : Prop :=
  ∀ n, P11575102287537485010.a n = (A072266 n : ℚ)

end A072266

/-! ## A072266.P1282041556360610937

`A094659(2*n)/A020639(A008574(n))`
-/

namespace A072266.P1282041556360610937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 (2 * n) : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A072266.P1282041556360610937

namespace A072266

/-- `A094659(2*n)/A020639(A008574(n))` -/
def P1282041556360610937.Spec : Prop :=
  ∀ n, P1282041556360610937.a n = (A072266 n : ℚ)

end A072266

/-! ## A072266.P8269685695096286507

`A094659(2*n)/A020639(A000010(n+2))`
-/

namespace A072266.P8269685695096286507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 (2 * n) : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)

end

end A072266.P8269685695096286507

namespace A072266

/-- `A094659(2*n)/A020639(A000010(n+2))` -/
def P8269685695096286507.Spec : Prop :=
  ∀ n, P8269685695096286507.a n = (A072266 n : ℚ)

end A072266

/-! ## A072266.P11453341973311542563

`A094659(2*n)/A057467(A057467(2*n+1))`
-/

namespace A072266.P11453341973311542563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 (2 * n) : ℚ) / (A057467 (A057467 (2 * n + 1)).toNat : ℚ)

end

end A072266.P11453341973311542563

namespace A072266

/-- `A094659(2*n)/A057467(A057467(2*n+1))` -/
def P11453341973311542563.Spec : Prop :=
  ∀ n, P11453341973311542563.a n = (A072266 n : ℚ)

end A072266

/-!
# A072268: a(0)=1; a(n+1) = 1 + f(a(n))^2, where f(x) is the largest prime factor of x (A006530).

The programs for A072268, there is no canonical definition to state claims against.
-/

/-! ## A072268.P6461264347752143263

`A074767(a(n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A072268.P6461264347752143263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A074767 (a (n - 1)).toNat + 1

end

end A072268.P6461264347752143263

/-! ## A072268.P7397655529415529531

`A357408(a(n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A072268.P7397655529415529531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A357408 (a (n - 1)).toNat + 1

end

end A072268.P7397655529415529531

/-! ## A072268.P16700686175465602438

`A306933(a(n-1))+2` with `a(0)=1, a(1)=2`
-/

namespace A072268.P16700686175465602438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A306933 (a (n - 1)).toNat + 2

end

end A072268.P16700686175465602438

/-! ## A072268.P1198316349890656346

`A002034(a(n-1))²+1` with `a(0)=1`
-/

namespace A072268.P1198316349890656346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002034 (a (n - 1)).toNat ^ 2 + 1

end

end A072268.P1198316349890656346

/-!
# A072269: 

The programs for A072269, there is no canonical definition to state claims against.
-/

/-! ## A072269.P14817513912221513461

`A072177(n+1)!`
-/

namespace A072269.P14817513912221513461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A072177 (n + 1)).toNat

end

end A072269.P14817513912221513461

/-!
# A072270: A partial product representation of A006131 and A072265.

The programs for A072270, there is no canonical definition to state claims against.
-/

/-! ## A072270.P17867460305033905447

`A097272(n^7+1)-n`
-/

namespace A072270.P17867460305033905447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (n ^ 7 + 1) - (n : ℤ)

end

end A072270.P17867460305033905447

/-!
# A072271: A partial product representation of f(n) = A015523(n) and L(n) = A072263(n).

The programs for A072271, there is no canonical definition to state claims against.
-/

/-! ## A072271.P8057251344267360842

`A213892(A109395(a(n-1)))` with `a(0)=3, a(1)=1, a(2)=24`
-/

namespace A072271.P8057251344267360842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 24] fun n a =>
  A213892 (A109395 (a (n - 1)).toNat).toNat

end

end A072271.P8057251344267360842

/-!
# A072272: Number of active cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 614", based on the 5-celled von Neumann neighborhood.

The programs for A072272, there is no canonical definition to state claims against.
-/

/-! ## A072272.P8442618980701999329

`A170878(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A072272.P8442618980701999329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A170878 (n - 1) + a (n - 1)

end

end A072272.P8442618980701999329

/-! ## A072272.P11081586684020947891

`A253908(n+1)-(A253908(n)+A170878(n))`
-/

namespace A072272.P11081586684020947891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253908 (n + 1) - (A253908 n + A170878 n)

end

end A072272.P11081586684020947891

/-! ## A072272.P1054839207980895227

`A271805(2*n+1)-(A271806(2*n)+A271805(2*n))`
-/

namespace A072272.P1054839207980895227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271805 (2 * n + 1) - (A271806 (2 * n) + A271805 (2 * n))

end

end A072272.P1054839207980895227

/-! ## A072272.P13123424851200338696

`A271803(A109043(n))`
-/

namespace A072272.P13123424851200338696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 (A109043 n).toNat

end

end A072272.P13123424851200338696

/-! ## A072272.P935556236236822333

`A271803(2*n)`
-/

namespace A072272.P935556236236822333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 (2 * n)

end

end A072272.P935556236236822333

/-! ## A072272.P1656607326369911896

`A151885(Δ[n²])`
-/

namespace A072272.P1656607326369911896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072272.P1656607326369911896

/-! ## A072272.P17752916043836235174

`A151888(2*n+1)+A151885(2*n)`
-/

namespace A072272.P17752916043836235174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151888 (2 * n + 1) + A151885 (2 * n)

end

end A072272.P17752916043836235174

/-! ## A072272.P6827569369572052854

`∑[A151888(2*n+1)+A151888(2*n)]`
-/

namespace A072272.P6827569369572052854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151888 (2 * n + 1) + A151888 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072272.P6827569369572052854

/-! ## A072272.P17030337602136063899

`A151885(2*(n+1))-A151886(2*(n+1))`
-/

namespace A072272.P17030337602136063899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 (2 * (n + 1)) - A151886 (2 * (n + 1))

end

end A072272.P17030337602136063899

/-! ## A072272.P8768955203196763907

`A151885(n+1+n)/A055399(A151885(n)+3)`
-/

namespace A072272.P8768955203196763907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151885 (n + 1 + n) : ℚ) / (A055399 (A151885 n + 3).toNat : ℚ)

end

end A072272.P8768955203196763907

/-! ## A072272.P2593212905812718838

`A151887(A139251(n))+A151885(n+1+n)`
-/

namespace A072272.P2593212905812718838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151887 (A139251 n).toNat + A151885 (n + 1 + n)

end

end A072272.P2593212905812718838

/-! ## A072272.P6989398591690510813

`and(-3, A151885(A016813(n)))`
-/

namespace A072272.P6989398591690510813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A151885 (A016813 n).toNat)

end

end A072272.P6989398591690510813

/-! ## A072272.P17098048043769257434

`A151888(2*n+1)+A151886(4*n)/2`
-/

namespace A072272.P17098048043769257434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151888 (2 * n + 1) : ℚ) + (A151886 (4 * n) : ℚ) / 2

end

end A072272.P17098048043769257434

/-! ## A072272.P10192987601015073067

`A151888(2*n+1)+A151888(4*n)/2`
-/

namespace A072272.P10192987601015073067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151888 (2 * n + 1) : ℚ) + (A151888 (4 * n) : ℚ) / 2

end

end A072272.P10192987601015073067

/-! ## A072272.P8503461263095004424

`A247649(A048678(n))`
-/

namespace A072272.P8503461263095004424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A048678 n).toNat

end

end A072272.P8503461263095004424

/-! ## A072272.P9332462077124764580

`A247649(A124108(n)/2)`
-/

namespace A072272.P9332462077124764580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat

end

end A072272.P9332462077124764580

/-! ## A072272.P1849209995731205392

`A247649(A212591(n+1))`
-/

namespace A072272.P1849209995731205392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A212591 (n + 1)).toNat

end

end A072272.P1849209995731205392

/-! ## A072272.P8750362994230134038

`A247649(A000695(n))`
-/

namespace A072272.P8750362994230134038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A000695 n).toNat

end

end A072272.P8750362994230134038

/-!
# A072273: Index of powers of 2 that equal the number of noncongruent roots to the congruence x^2 == k (mod n) for (k,n)=1 and assuming solvability.

The programs for A072273, the canonical program `A072273.P12501191474515330046` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072273 has offset 1).

The definition of A072273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072273.P18073549848140649520

`log2(A060594(n+1))`
-/

namespace A072273.P18073549848140649520
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060594 (n + 1) : ℝ)

end

end A072273.P18073549848140649520

namespace A072273

/-- `log2(A060594(n+1))` -/
def P18073549848140649520.Spec : Prop :=
  ∀ n, P18073549848140649520.a n = (A072273 (n + 1) : ℝ)

end A072273

/-! ## A072273.P17485640619292519863

`val(A319100(n+1), 2)`
-/

namespace A072273.P17485640619292519863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319100 (n + 1)).toNat 2

end

end A072273.P17485640619292519863

namespace A072273

/-- `val(A319100(n+1), 2)` -/
def P17485640619292519863.Spec : Prop :=
  ∀ n, (P17485640619292519863.a n : ℤ) = A072273 (n + 1)

end A072273

/-! ## A072273.P10149869607827703748

`∑{e}[A364925(n+1), #]`
-/

namespace A072273.P10149869607827703748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364925 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A072273.P10149869607827703748

namespace A072273

/-- `∑{e}[A364925(n+1), #]` -/
def P10149869607827703748.Spec : Prop :=
  ∀ n, (P10149869607827703748.a n : ℤ) = A072273 (n + 1)

end A072273

/-! ## A072273.P15743281511513738399

`log2(A155828(n+1)+1)`
-/

namespace A072273.P15743281511513738399
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A155828 (n + 1) + 1 : ℝ)

end

end A072273.P15743281511513738399

namespace A072273

/-- `log2(A155828(n+1)+1)` -/
def P15743281511513738399.Spec : Prop :=
  ∀ n, P15743281511513738399.a n = (A072273 (n + 1) : ℝ)

end A072273

/-! ## A072273.P577303478873786889

`A046072(n+1)-C(n, n²)`
-/

namespace A072273.P577303478873786889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (n + 1) - (Nat.choose n (n ^ 2) : ℤ)

end

end A072273.P577303478873786889

namespace A072273

/-- `A046072(n+1)-C(n, n²)` -/
def P577303478873786889.Spec : Prop :=
  ∀ n, P577303478873786889.a n = A072273 (n + 1)

end A072273

/-! ## A072273.P7728041057496769007

`A000120(A155828(n+1))`
-/

namespace A072273.P7728041057496769007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A155828 (n + 1)).toNat

end

end A072273.P7728041057496769007

namespace A072273

/-- `A000120(A155828(n+1))` -/
def P7728041057496769007.Spec : Prop :=
  ∀ n, P7728041057496769007.a n = A072273 (n + 1)

end A072273

/-! ## A072273.P3889297098322320862

`A007814(A319100(n+1))`
-/

namespace A072273.P3889297098322320862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A319100 (n + 1)).toNat

end

end A072273.P3889297098322320862

namespace A072273

/-- `A007814(A319100(n+1))` -/
def P3889297098322320862.Spec : Prop :=
  ∀ n, P3889297098322320862.a n = A072273 (n + 1)

end A072273

/-! ## A072273.P16590610045374731093

`A001222(A364925(n+1))`
-/

namespace A072273.P16590610045374731093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A364925 (n + 1)).toNat

end

end A072273.P16590610045374731093

namespace A072273

/-- `A001222(A364925(n+1))` -/
def P16590610045374731093.Spec : Prop :=
  ∀ n, P16590610045374731093.a n = A072273 (n + 1)

end A072273

/-! ## A072273.P5429405856431731304

`A000523(A155828(n+1)+1)`
-/

namespace A072273.P5429405856431731304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A155828 (n + 1) + 1).toNat

end

end A072273.P5429405856431731304

namespace A072273

/-- `A000523(A155828(n+1)+1)` -/
def P5429405856431731304.Spec : Prop :=
  ∀ n, P5429405856431731304.a n = A072273 (n + 1)

end A072273

/-! ## A072273.P9715986449353333129

`A156140(A155828(n+1)+1)`
-/

namespace A072273.P9715986449353333129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156140 (A155828 (n + 1) + 1).toNat

end

end A072273.P9715986449353333129

namespace A072273

/-- `A156140(A155828(n+1)+1)` -/
def P9715986449353333129.Spec : Prop :=
  ∀ n, P9715986449353333129.a n = A072273 (n + 1)

end A072273

/-! ## A072273.P12501191474515330046

`A000120(A060594(n+1)-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A072273

/-- `A000120(A060594(n+1)-1)` -/
def P12501191474515330046.Spec : Prop :=
  ∀ n, P12501191474515330046.a n = A072273 (n + 1)

theorem P12501191474515330046.correct : P12501191474515330046.Spec := by
  intro n
  simp only [A072273, Nat.add_sub_cancel]

end A072273

/-! ## A072273.P12047383995855519937

`A112329(2*A060594(n+1))`
-/

namespace A072273.P12047383995855519937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (2 * A060594 (n + 1)).toNat

end

end A072273.P12047383995855519937

namespace A072273

/-- `A112329(2*A060594(n+1))` -/
def P12047383995855519937.Spec : Prop :=
  ∀ n, P12047383995855519937.a n = A072273 (n + 1)

end A072273

/-! ## A072273.P17119097192957047314

`A046072(n+1)*A157928(n)`
-/

namespace A072273.P17119097192957047314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (n + 1) * A157928 n

end

end A072273.P17119097192957047314

namespace A072273

/-- `A046072(n+1)*A157928(n)` -/
def P17119097192957047314.Spec : Prop :=
  ∀ n, P17119097192957047314.a n = A072273 (n + 1)

end A072273

/-! ## A072273.P9470919886600315618

`A046072(n+1)%A036059(n)`
-/

namespace A072273.P9470919886600315618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046072 (n + 1)) (A036059 n)

end

end A072273.P9470919886600315618

namespace A072273

/-- `A046072(n+1)%A036059(n)` -/
def P9470919886600315618.Spec : Prop :=
  ∀ n, P9470919886600315618.a n = A072273 (n + 1)

end A072273

/-! ## A072273.P5495277898915892902

`A284556(A060594(n+1)²-1)`
-/

namespace A072273.P5495277898915892902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (A060594 (n + 1) ^ 2 - 1).toNat

end

end A072273.P5495277898915892902

namespace A072273

/-- `A284556(A060594(n+1)²-1)` -/
def P5495277898915892902.Spec : Prop :=
  ∀ n, P5495277898915892902.a n = A072273 (n + 1)

end A072273

/-! ## A072273.P16105955187260998629

`A007814(A060594(n+1)²)/2`
-/

namespace A072273.P16105955187260998629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (A060594 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A072273.P16105955187260998629

namespace A072273

/-- `A007814(A060594(n+1)²)/2` -/
def P16105955187260998629.Spec : Prop :=
  ∀ n, P16105955187260998629.a n = (A072273 (n + 1) : ℚ)

end A072273

/-! ## A072273.P296015740093560700

`A023416(A060594(n+1)²)/2`
-/

namespace A072273.P296015740093560700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023416 (A060594 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A072273.P296015740093560700

namespace A072273

/-- `A023416(A060594(n+1)²)/2` -/
def P296015740093560700.Spec : Prop :=
  ∀ n, P296015740093560700.a n = (A072273 (n + 1) : ℚ)

end A072273

/-! ## A072273.P6504655946176113357

`A087179(A060594(n+1)²)/2`
-/

namespace A072273.P6504655946176113357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087179 (A060594 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A072273.P6504655946176113357

namespace A072273

/-- `A087179(A060594(n+1)²)/2` -/
def P6504655946176113357.Spec : Prop :=
  ∀ n, P6504655946176113357.a n = (A072273 (n + 1) : ℚ)

end A072273

/-! ## A072273.P5829917182744246600

`∑{d}[A157230(n+1), A035263(#²)]`
-/

namespace A072273.P5829917182744246600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A035263 (d ^ 2)

end

end A072273.P5829917182744246600

namespace A072273

/-- `∑{d}[A157230(n+1), A035263(#²)]` -/
def P5829917182744246600.Spec : Prop :=
  ∀ n, P5829917182744246600.a n = A072273 (n + 1)

end A072273

/-! ## A072273.P5977731729891986939

`∑{d}[A157230(n+1), A154269(#²)]`
-/

namespace A072273.P5977731729891986939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A154269 (d ^ 2)

end

end A072273.P5977731729891986939

namespace A072273

/-- `∑{d}[A157230(n+1), A154269(#²)]` -/
def P5977731729891986939.Spec : Prop :=
  ∀ n, P5977731729891986939.a n = A072273 (n + 1)

end A072273

/-!
# A072274: List of Ormiston prime pairs.

The programs for A072274, there is no canonical definition to state claims against.
-/

/-! ## A072274.P9395744632968917293

`∪[A069567(n+1), A151800(A069567(n+1))]`
-/

namespace A072274.P9395744632968917293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A069567 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072274.P9395744632968917293

/-!
# A072275: Least m such that one less than m-th prime has n divisors (or 0 if no such prime exists).

The programs for A072275, there is no canonical definition to state claims against.
-/

/-! ## A072275.P639610631905508710

`A000720(A066814(n+2)+1)`
-/

namespace A072275.P639610631905508710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A066814 (n + 2) + 1).toNat

end

end A072275.P639610631905508710

/-! ## A072275.P296929166572616676

`A230980(A066814(n+2))`
-/

namespace A072275.P296929166572616676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A066814 (n + 2)).toNat

end

end A072275.P296929166572616676

/-! ## A072275.P17517324305330601774

`A056239(or(1, A066814(n+2)))`
-/

namespace A072275.P17517324305330601774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A066814 (n + 2))).toNat

end

end A072275.P17517324305330601774

/-!
# A072276: Strong pseudoprimes to bases 2 and 3.

The programs for A072276, there is no canonical definition to state claims against.
-/

/-! ## A072276.P13190208596611236700

`∩[A001262(n+1), A020229(n+1)]`
-/

namespace A072276.P13190208596611236700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072276.P13190208596611236700

/-! ## A072276.P9057111898815847927

`∩[A001262(n+1), A020274(n+1)]`
-/

namespace A072276.P9057111898815847927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072276.P9057111898815847927

/-! ## A072276.P742760253879337194

`∩[A020229(n+1), A020244(n+1)]`
-/

namespace A072276.P742760253879337194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072276.P742760253879337194

/-! ## A072276.P4936583767776282640

`∩[A020274(n+1), A020322(n+1)]`
-/

namespace A072276.P4936583767776282640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072276.P4936583767776282640

/-! ## A072276.P14539110339594212847

`∩[A020229(n+1), A020280(n+1)]`
-/

namespace A072276.P14539110339594212847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072276.P14539110339594212847

/-!
# A072277: Smallest integer > 1 which is both n-gonal and centered n-gonal.

The programs for A072277, the canonical program `A072277.P5409103867302828858` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072277 has offset 3).

The definition of A072277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072277.P14111214206044515323

`((n+3)^3-(n+3)²+2)/2`
-/

namespace A072277.P14111214206044515323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) ^ 3 : ℤ) - ((n + 3) ^ 2 : ℤ) + 2 : ℚ) / 2

end

end A072277.P14111214206044515323

namespace A072277

/-- `((n+3)^3-(n+3)²+2)/2` -/
def P14111214206044515323.Spec : Prop :=
  ∀ n, P14111214206044515323.a n = (A072277 (n + 3) : ℚ)

theorem P14111214206044515323.correct : P14111214206044515323.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A072277, Nat.add_sub_cancel, A072277.P14111214206044515323.a, A072277.P5409103867302828858.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A072277, Nat.add_sub_cancel, A072277.P14111214206044515323.a, A072277.P5409103867302828858.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A072277

/-! ## A072277.P5409103867302828858

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=10, a(1)=25, a(2)=51, a(3)=91`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A072277

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5409103867302828858.Spec : Prop :=
  ∀ n, P5409103867302828858.a n = A072277 (n + 3)

theorem P5409103867302828858.correct : P5409103867302828858.Spec := by
  intro n
  simp only [A072277, Nat.add_sub_cancel]

end A072277

/-! ## A072277.P12016336945528685851

`∑[∑[a(n-1)+3]]` with `a(0)=10, a(1)=5, a(2)=11`
-/

namespace A072277.P12016336945528685851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [10, 5, 11] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072277.P12016336945528685851

namespace A072277

/-- `∑[∑[a(n-1)+3]]` -/
def P12016336945528685851.Spec : Prop :=
  ∀ n, (P12016336945528685851.a n : ℤ) = A072277 (n + 3)

end A072277

/-! ## A072277.P4387501108193638646

`(n+3)*C(n+3, 2)+1`
-/

namespace A072277.P4387501108193638646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.choose (n + 3) 2 + 1

end

end A072277.P4387501108193638646

namespace A072277

/-- `(n+3)*C(n+3, 2)+1` -/
def P4387501108193638646.Spec : Prop :=
  ∀ n, (P4387501108193638646.a n : ℤ) = A072277 (n + 3)

end A072277

/-! ## A072277.P18215192224830628372

`Δ[C(C(n+3, 2), 2)]-∑[n+2]`
-/

namespace A072277.P18215192224830628372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n + 3) 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A072277.P18215192224830628372

namespace A072277

/-- `Δ[C(C(n+3, 2), 2)]-∑[n+2]` -/
def P18215192224830628372.Spec : Prop :=
  ∀ n, P18215192224830628372.a n = A072277 (n + 3)

end A072277

/-! ## A072277.P11756573617008945589

`A154560(n)+(n+3)²`
-/

namespace A072277.P11756573617008945589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154560 n + ((n + 3) ^ 2 : ℤ)

end

end A072277.P11756573617008945589

namespace A072277

/-- `A154560(n)+(n+3)²` -/
def P11756573617008945589.Spec : Prop :=
  ∀ n, P11756573617008945589.a n = A072277 (n + 3)

end A072277

/-! ## A072277.P3728951653092907217

`A164845(n+1)-(n+1)`
-/

namespace A072277.P3728951653092907217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164845 (n + 1) - (n + 1 : ℤ)

end

end A072277.P3728951653092907217

namespace A072277

/-- `A164845(n+1)-(n+1)` -/
def P3728951653092907217.Spec : Prop :=
  ∀ n, P3728951653092907217.a n = A072277 (n + 3)

end A072277

/-! ## A072277.P9900165132820523735

`A005564(n+3)+4+n`
-/

namespace A072277.P9900165132820523735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005564 (n + 3) + 4 + (n : ℤ)

end

end A072277.P9900165132820523735

namespace A072277

/-- `A005564(n+3)+4+n` -/
def P9900165132820523735.Spec : Prop :=
  ∀ n, P9900165132820523735.a n = A072277 (n + 3)

end A072277

/-! ## A072277.P6558304203752153668

`A020705(n)+A005564(n+3)`
-/

namespace A072277.P6558304203752153668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n + A005564 (n + 3)

end

end A072277.P6558304203752153668

namespace A072277

/-- `A020705(n)+A005564(n+3)` -/
def P6558304203752153668.Spec : Prop :=
  ∀ n, P6558304203752153668.a n = A072277 (n + 3)

end A072277

/-! ## A072277.P9698771874960310807

`A080956(n+1)+A154560(n+1)-n`
-/

namespace A072277.P9698771874960310807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 (n + 1) + (A154560 (n + 1) - (n : ℤ))

end

end A072277.P9698771874960310807

namespace A072277

/-- `A080956(n+1)+A154560(n+1)-n` -/
def P9698771874960310807.Spec : Prop :=
  ∀ n, P9698771874960310807.a n = A072277 (n + 3)

end A072277

/-! ## A072277.P5862538081640114981

`Δ[C(∑[n]+n, 2)]+(n+3)²`
-/

namespace A072277.P5862538081640114981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n + 3) ^ 2 : ℤ)

end

end A072277.P5862538081640114981

namespace A072277

/-- `Δ[C(∑[n]+n, 2)]+(n+3)²` -/
def P5862538081640114981.Spec : Prop :=
  ∀ n, P5862538081640114981.a n = A072277 (n + 3)

end A072277

/-! ## A072277.P5183637172499383415

`Δ[A290312(n)]+n+3`
-/

namespace A072277.P5183637172499383415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 3 : ℤ)

end

end A072277.P5183637172499383415

namespace A072277

/-- `Δ[A290312(n)]+n+3` -/
def P5183637172499383415.Spec : Prop :=
  ∀ n, P5183637172499383415.a n = A072277 (n + 3)

end A072277

/-! ## A072277.P5832625050470334816

`A114364(n+2)/2+1`
-/

namespace A072277.P5832625050470334816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114364 (n + 2) : ℚ) / 2 + 1

end

end A072277.P5832625050470334816

namespace A072277

/-- `A114364(n+2)/2+1` -/
def P5832625050470334816.Spec : Prop :=
  ∀ n, P5832625050470334816.a n = (A072277 (n + 3) : ℚ)

end A072277

/-! ## A072277.P13796181337276966335

`A085788(n+2)/3+1`
-/

namespace A072277.P13796181337276966335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085788 (n + 2) : ℚ) / 3 + 1

end

end A072277.P13796181337276966335

namespace A072277

/-- `A085788(n+2)/3+1` -/
def P13796181337276966335.Spec : Prop :=
  ∀ n, P13796181337276966335.a n = (A072277 (n + 3) : ℚ)

end A072277

/-! ## A072277.P17985320766775945711

`A006000(n+2)-(n+2)`
-/

namespace A072277.P17985320766775945711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 (n + 2) - (n + 2 : ℤ)

end

end A072277.P17985320766775945711

namespace A072277

/-- `A006000(n+2)-(n+2)` -/
def P17985320766775945711.Spec : Prop :=
  ∀ n, P17985320766775945711.a n = A072277 (n + 3)

end A072277

/-! ## A072277.P11249799683767142434

`A127736(n+2)+3+n`
-/

namespace A072277.P11249799683767142434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127736 (n + 2) + 3 + (n : ℤ)

end

end A072277.P11249799683767142434

namespace A072277

/-- `A127736(n+2)+3+n` -/
def P11249799683767142434.Spec : Prop :=
  ∀ n, P11249799683767142434.a n = A072277 (n + 3)

end A072277

/-! ## A072277.P16977457982018260601

`A077414(n+1)+A014105(n+2)`
-/

namespace A072277.P16977457982018260601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077414 (n + 1) + A014105 (n + 2)

end

end A072277.P16977457982018260601

namespace A072277

/-- `A077414(n+1)+A014105(n+2)` -/
def P16977457982018260601.Spec : Prop :=
  ∀ n, P16977457982018260601.a n = A072277 (n + 3)

end A072277

/-!
# A072279: Dimension of n-th graded section of a certain Lie algebra.

The programs for A072279, there is no canonical definition to state claims against.
-/

/-! ## A072279.P3953873400717179654

`A322903(a(n-1)+1)+n` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A072279.P3953873400717179654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6] fun n a =>
  A322903 (a (n - 1) + 1).toNat + (n : ℤ)

end

end A072279.P3953873400717179654

/-! ## A072279.P3190513509715199904

`A083166(A004089(n+1))`
-/

namespace A072279.P3190513509715199904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083166 (A004089 (n + 1)).toNat

end

end A072279.P3190513509715199904

/-!
# A072281: Numbers n such that phi(n) + 1 and phi(n) - 1 are twin primes.

The programs for A072281, there is no canonical definition to state claims against.
-/

/-! ## A072281.P5754239033163980253

`∪[A006512(n+1), A068019(n+1)]`
-/

namespace A072281.P5754239033163980253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072281.P5754239033163980253

/-! ## A072281.P2938929078679134475

`filter[A078892(n+1), A296079(#)]`
-/

namespace A072281.P2938929078679134475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A072281.P2938929078679134475

/-! ## A072281.P8114935228806392401

`∩[A039698(n+1), A078892(n+1)]`
-/

namespace A072281.P8114935228806392401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072281.P8114935228806392401

/-! ## A072281.P1094817118635604269

`eq[2, A096501(A000010(n+1)+1)]+1`
-/

namespace A072281.P1094817118635604269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072281.P1094817118635604269

/-! ## A072281.P15503941330436650157

`eq[1, A071558(A000010(n+1))]+1`
-/

namespace A072281.P15503941330436650157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072281.P15503941330436650157

/-! ## A072281.P4059633445712984221

`eq[1, A071558(A000010(A028310(n)))]`
-/

namespace A072281.P4059633445712984221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A000010 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072281.P4059633445712984221

/-! ## A072281.P8352911830831995619

`eq[1, A071558(A225530(n))]`
-/

namespace A072281.P8352911830831995619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072281.P8352911830831995619

/-!
# A072282: Numbers n such that sigma(n) + 1 and sigma(n) - 1 are twin primes.

The programs for A072282, the canonical program `A072282.P3000432434789102091` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072282 has offset 1).

The definition of A072282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072282.P3000432434789102091

`∪[A001359(n+1), A068017(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A072282

/-- `∪[A001359(n+1), A068017(n+1)]` -/
def P3000432434789102091.Spec : Prop :=
  ∀ n, (P3000432434789102091.a n : ℤ) = A072282 (n + 1)

theorem P3000432434789102091.correct : P3000432434789102091.Spec := by
  intro n
  simp only [A072282, Nat.add_sub_cancel]

end A072282

/-! ## A072282.P2957820684051120184

`filter[A065512(n+1), A296211(#)]`
-/

namespace A072282.P2957820684051120184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A072282.P2957820684051120184

namespace A072282

/-- `filter[A065512(n+1), A296211(#)]` -/
def P2957820684051120184.Spec : Prop :=
  ∀ n, P2957820684051120184.a n = A072282 (n + 1)

end A072282

/-! ## A072282.P8626573192902473246

`filter[A248792(n+1), A296212(#)]`
-/

namespace A072282.P8626573192902473246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A072282.P8626573192902473246

namespace A072282

/-- `filter[A248792(n+1), A296212(#)]` -/
def P8626573192902473246.Spec : Prop :=
  ∀ n, P8626573192902473246.a n = A072282 (n + 1)

end A072282

/-! ## A072282.P16326625579893262893

`∩[A065512(n+1), A248792(n+1)]`
-/

namespace A072282.P16326625579893262893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072282.P16326625579893262893

namespace A072282

/-- `∩[A065512(n+1), A248792(n+1)]` -/
def P16326625579893262893.Spec : Prop :=
  ∀ n, (P16326625579893262893.a n : ℤ) = A072282 (n + 1)

end A072282

/-! ## A072282.P17011719702787467567

`eq[A072341(n+1), A296211(n+1)]+1`
-/

namespace A072282.P17011719702787467567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296211 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072282.P17011719702787467567

namespace A072282

/-- `eq[A072341(n+1), A296211(n+1)]+1` -/
def P17011719702787467567.Spec : Prop :=
  ∀ n, (P17011719702787467567.a n : ℤ) = A072282 (n + 1)

end A072282

/-! ## A072282.P17119141680961279829

`A020725(eq[A072341(n+1), A296211(n+1)])`
-/

namespace A072282.P17119141680961279829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A072282.P17119141680961279829

namespace A072282

/-- `A020725(eq[A072341(n+1), A296211(n+1)])` -/
def P17119141680961279829.Spec : Prop :=
  ∀ n, P17119141680961279829.a n = A072282 (n + 1)

end A072282

/-! ## A072282.P13353179618457093212

`eq[2, A096501(A000203(n+1)+1)]+1`
-/

namespace A072282.P13353179618457093212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072282.P13353179618457093212

namespace A072282

/-- `eq[2, A096501(A000203(n+1)+1)]+1` -/
def P13353179618457093212.Spec : Prop :=
  ∀ n, (P13353179618457093212.a n : ℤ) = A072282 (n + 1)

end A072282

/-! ## A072282.P14475421105719154684

`eq[1, A245716(∑{d}[n+1, #])]+1`
-/

namespace A072282.P14475421105719154684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245716 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072282.P14475421105719154684

namespace A072282

/-- `eq[1, A245716(∑{d}[n+1, #])]+1` -/
def P14475421105719154684.Spec : Prop :=
  ∀ n, (P14475421105719154684.a n : ℤ) = A072282 (n + 1)

end A072282

/-! ## A072282.P13135876371466427848

`eq[1, A241425(A000203(n+1))]+1`
-/

namespace A072282.P13135876371466427848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241425 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072282.P13135876371466427848

namespace A072282

/-- `eq[1, A241425(A000203(n+1))]+1` -/
def P13135876371466427848.Spec : Prop :=
  ∀ n, (P13135876371466427848.a n : ℤ) = A072282 (n + 1)

end A072282

/-! ## A072282.P16368180034051586891

`eq[1, A241425(A000203(A028310(n)))]`
-/

namespace A072282.P16368180034051586891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241425 (A000203 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072282.P16368180034051586891

namespace A072282

/-- `eq[1, A241425(A000203(A028310(n)))]` -/
def P16368180034051586891.Spec : Prop :=
  ∀ n, (P16368180034051586891.a n : ℤ) = A072282 (n + 1)

end A072282

/-!
# A072283: Number of raised dots to represent n in Braille.

The programs for A072283, the canonical program `A072283.P11466262856498811159` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072283 has offset 0).

The definition of A072283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072283.P11466262856498811159

`A079399(n)+4`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072283

/-- `A079399(n)+4` -/
def P11466262856498811159.Spec : Prop :=
  ∀ n, P11466262856498811159.a n = A072283 n

theorem P11466262856498811159.correct : P11466262856498811159.Spec := by
  intro n
  simp only [A072283]

end A072283

/-! ## A072283.P10112927571620168187

`A020705(A079399(n))`
-/

namespace A072283.P10112927571620168187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A079399 n).toNat

end

end A072283.P10112927571620168187

namespace A072283

/-- `A020705(A079399(n))` -/
def P10112927571620168187.Spec : Prop :=
  ∀ n, P10112927571620168187.a n = A072283 n

end A072283

/-! ## A072283.P6767350672770873536

`A020710(∑{digits}[n, A079399(#)]-1)`
-/

namespace A072283.P6767350672770873536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A079399 x).sum - 1).toNat

end

end A072283.P6767350672770873536

namespace A072283

/-- `A020710(∑{digits}[n, A079399(#)]-1)` -/
def P6767350672770873536.Spec : Prop :=
  ∀ n, P6767350672770873536.a n = A072283 n

end A072283

/-! ## A072283.P6467014698054975351

`A030546(∑{digits}[n, A079399(#)])-2`
-/

namespace A072283.P6467014698054975351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030546 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A079399 x).sum.toNat - 2

end

end A072283.P6467014698054975351

namespace A072283

/-- `A030546(∑{digits}[n, A079399(#)])-2` -/
def P6467014698054975351.Spec : Prop :=
  ∀ n, P6467014698054975351.a n = A072283 n

end A072283

/-! ## A072283.P11412816701573335079

`A020719(∑{digits}[n, A079399(#)])-3`
-/

namespace A072283.P11412816701573335079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A079399 x).sum.toNat - 3

end

end A072283.P11412816701573335079

namespace A072283

/-- `A020719(∑{digits}[n, A079399(#)])-3` -/
def P11412816701573335079.Spec : Prop :=
  ∀ n, P11412816701573335079.a n = A072283 n

end A072283

/-! ## A072283.P14877539762867502747

`∑{digits}[n, A000120(A121018(#))]+4`
-/

namespace A072283.P14877539762867502747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000120 (A121018 x).toNat).sum + 4

end

end A072283.P14877539762867502747

namespace A072283

/-- `∑{digits}[n, A000120(A121018(#))]+4` -/
def P14877539762867502747.Spec : Prop :=
  ∀ n, P14877539762867502747.a n = A072283 n

end A072283

/-! ## A072283.P17013329140735651125

`n-(A023446(n)-A079399(n))`
-/

namespace A072283.P17013329140735651125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023446 n - A079399 n)

end

end A072283.P17013329140735651125

namespace A072283

/-- `n-(A023446(n)-A079399(n))` -/
def P17013329140735651125.Spec : Prop :=
  ∀ n, P17013329140735651125.a n = A072283 n

end A072283

/-! ## A072283.P14941858264784728170

`A017233(n)-(A017185(n)-A079399(n))`
-/

namespace A072283.P14941858264784728170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n - (A017185 n - A079399 n)

end

end A072283.P14941858264784728170

namespace A072283

/-- `A017233(n)-(A017185(n)-A079399(n))` -/
def P14941858264784728170.Spec : Prop :=
  ∀ n, P14941858264784728170.a n = A072283 n

end A072283

/-!
# A072284: Numbers k begins a new chain of squarefree integers. I.e., k is squarefree but k-1 is not.

The programs for A072284, the canonical program `A072284.P10214590110291181418` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072284 has offset 1).

The definition of A072284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072284.P5307790899083444531

`comp[A008966(n+1)+n]+1`
-/

namespace A072284.P5307790899083444531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A072284.P5307790899083444531

namespace A072284

/-- `comp[A008966(n+1)+n]+1` -/
def P5307790899083444531.Spec : Prop :=
  ∀ n, (P5307790899083444531.a n : ℤ) = A072284 (n + 1)

end A072284

/-! ## A072284.P15361692476842283119

`comp[A008683(n+1)²+n]+1`
-/

namespace A072284.P15361692476842283119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A072284.P15361692476842283119

namespace A072284

/-- `comp[A008683(n+1)²+n]+1` -/
def P15361692476842283119.Spec : Prop :=
  ∀ n, (P15361692476842283119.a n : ℤ) = A072284 (n + 1)

end A072284

/-! ## A072284.P17058203118571733526

`eq[1, lcm(a(n-1)+1, A008683(n))]` with `a(0)=0`
-/

namespace A072284.P17058203118571733526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.lcm (f2 (n - 1) + 1 : ℤ) (A008683 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072284.P17058203118571733526

namespace A072284

/-- `eq[1, lcm(a(n-1)+1, A008683(n))]` -/
def P17058203118571733526.Spec : Prop :=
  ∀ n, (P17058203118571733526.a n : ℤ) = A072284 (n + 1)

end A072284

/-! ## A072284.P10214590110291181418

`record[A007913(A105570(n)+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072284

/-- `record[A007913(A105570(n)+1)]` -/
def P10214590110291181418.Spec : Prop :=
  ∀ n, P10214590110291181418.a n = A072284 (n + 1)

theorem P10214590110291181418.correct : P10214590110291181418.Spec := by
  intro n
  simp only [A072284, Nat.add_sub_cancel]

end A072284

/-! ## A072284.P16192420154358393060

`record[A007947(A105570(n)+1)]`
-/

namespace A072284.P16192420154358393060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A105570 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072284.P16192420154358393060

namespace A072284

/-- `record[A007947(A105570(n)+1)]` -/
def P16192420154358393060.Spec : Prop :=
  ∀ n, P16192420154358393060.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P9508343330671024634

`A053806(n+1)-A120992(n+1)`
-/

namespace A072284.P9508343330671024634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1) - A120992 (n + 1)

end

end A072284.P9508343330671024634

namespace A072284

/-- `A053806(n+1)-A120992(n+1)` -/
def P9508343330671024634.Spec : Prop :=
  ∀ n, P9508343330671024634.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P8610537476863899699

`record[A007913(comp[A007913(n+1)]+1)]`
-/

namespace A072284.P8610537476863899699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072284.P8610537476863899699

namespace A072284

/-- `record[A007913(comp[A007913(n+1)]+1)]` -/
def P8610537476863899699.Spec : Prop :=
  ∀ n, P8610537476863899699.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P7482642432843962371

`record[A007947(comp[A007947(n+1)]+1)]`
-/

namespace A072284.P7482642432843962371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072284.P7482642432843962371

namespace A072284

/-- `record[A007947(comp[A007947(n+1)]+1)]` -/
def P7482642432843962371.Spec : Prop :=
  ∀ n, P7482642432843962371.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P10510780924292912146

`record[A325978(A105570(n)+1)]`
-/

namespace A072284.P10510780924292912146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (A105570 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072284.P10510780924292912146

namespace A072284

/-- `record[A325978(A105570(n)+1)]` -/
def P10510780924292912146.Spec : Prop :=
  ∀ n, P10510780924292912146.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P11927564531969654956

`A162902(Δ[n²])`
-/

namespace A072284.P11927564531969654956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072284.P11927564531969654956

namespace A072284

/-- `A162902(Δ[n²])` -/
def P11927564531969654956.Spec : Prop :=
  ∀ n, P11927564531969654956.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P13681821194440912378

`∏{p}[A162902(2*n+1), #]`
-/

namespace A072284.P13681821194440912378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072284.P13681821194440912378

namespace A072284

/-- `∏{p}[A162902(2*n+1), #]` -/
def P13681821194440912378.Spec : Prop :=
  ∀ n, (P13681821194440912378.a n : ℤ) = A072284 (n + 1)

end A072284

/-! ## A072284.P13681504089213658767

`A055231(A162902(2*n+1))`
-/

namespace A072284.P13681504089213658767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A162902 (2 * n + 1)).toNat

end

end A072284.P13681504089213658767

namespace A072284

/-- `A055231(A162902(2*n+1))` -/
def P13681504089213658767.Spec : Prop :=
  ∀ n, P13681504089213658767.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P14781384681284710898

`filter[A162902(n+1), A008966(#)]`
-/

namespace A072284.P14781384681284710898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A072284.P14781384681284710898

namespace A072284

/-- `filter[A162902(n+1), A008966(#)]` -/
def P14781384681284710898.Spec : Prop :=
  ∀ n, P14781384681284710898.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P13898126219964665239

`filter[A162902(2*n+1), A105597(#)]`
-/

namespace A072284.P13898126219964665239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A072284.P13898126219964665239

namespace A072284

/-- `filter[A162902(2*n+1), A105597(#)]` -/
def P13898126219964665239.Spec : Prop :=
  ∀ n, P13898126219964665239.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P14624562122710573553

`filter[A162902(2*n+1), A166486(#)]`
-/

namespace A072284.P14624562122710573553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A072284.P14624562122710573553

namespace A072284

/-- `filter[A162902(2*n+1), A166486(#)]` -/
def P14624562122710573553.Spec : Prop :=
  ∀ n, P14624562122710573553.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P3168001542354642441

`filter[A162902(2*n+1), A168185(#)]`
-/

namespace A072284.P3168001542354642441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A072284.P3168001542354642441

namespace A072284

/-- `filter[A162902(2*n+1), A168185(#)]` -/
def P3168001542354642441.Spec : Prop :=
  ∀ n, P3168001542354642441.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P11251851420930874294

`filter[A162902(2*n+1), A181183(#)]`
-/

namespace A072284.P11251851420930874294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A072284.P11251851420930874294

namespace A072284

/-- `filter[A162902(2*n+1), A181183(#)]` -/
def P11251851420930874294.Spec : Prop :=
  ∀ n, P11251851420930874294.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P341844955433274193

`filter[A162902(2*n+1), A212793(#)]`
-/

namespace A072284.P341844955433274193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A072284.P341844955433274193

namespace A072284

/-- `filter[A162902(2*n+1), A212793(#)]` -/
def P341844955433274193.Spec : Prop :=
  ∀ n, P341844955433274193.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P7485510592040868798

`filter[A162902(2*n+1), A295316(#)]`
-/

namespace A072284.P7485510592040868798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A072284.P7485510592040868798

namespace A072284

/-- `filter[A162902(2*n+1), A295316(#)]` -/
def P7485510592040868798.Spec : Prop :=
  ∀ n, P7485510592040868798.a n = A072284 (n + 1)

end A072284

/-! ## A072284.P17427009948571684563

`∩[A005117(n+1), A162902(n+1)]`
-/

namespace A072284.P17427009948571684563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072284.P17427009948571684563

namespace A072284

/-- `∩[A005117(n+1), A162902(n+1)]` -/
def P17427009948571684563.Spec : Prop :=
  ∀ n, (P17427009948571684563.a n : ℤ) = A072284 (n + 1)

end A072284

/-!
# A072285: Numerators of inverse unimodal analog of binomial coefficients: binomial(n,m) = Sum_{k=0..n-m} a(2*k+m-1, 2*k).

The programs for A072285, there is no canonical definition to state claims against.
-/

/-! ## A072285.P13989794652701115984

`lcm(A054335(n), A104684(n))/A054335(n)`
-/

namespace A072285.P13989794652701115984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A054335 n) (A104684 n) : ℚ) / (A054335 n : ℚ)

end

end A072285.P13989794652701115984

/-! ## A072285.P9450326052675077776

`∏{p}[A293558(A265241(n+1)), #]`
-/

namespace A072285.P9450326052675077776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293558 (A265241 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072285.P9450326052675077776

/-! ## A072285.P3381653911211863912

`A023118(A086602(n)^A004197(n))`
-/

namespace A072285.P3381653911211863912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023118 (SequenceMachineLib.roundAway ((A086602 n : ℚ) ^ (A004197 n : ℤ))).toNat

end

end A072285.P3381653911211863912

/-! ## A072285.P4315297661955296274

`gcd(A001497(n), A008726(A001333(n)))`
-/

namespace A072285.P4315297661955296274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001497 n) (A008726 (A001333 n).toNat)

end

end A072285.P4315297661955296274

/-! ## A072285.P10825676284471977186

`A061931(n+1)%A102866(A180360(n+1))`
-/

namespace A072285.P10825676284471977186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061931 (n + 1)) (A102866 (A180360 (n + 1)).toNat)

end

end A072285.P10825676284471977186

/-!
# A072286: Denominators of inverse unimodal analog of binomial coefficients: binomial(n,m) = Sum_{k=0..n-m} a(2*k+m-1, 2*k).

The programs for A072286, there is no canonical definition to state claims against.
-/

/-! ## A072286.P14886767741647527290

`lcm(A054335(n), A104684(n))/A104684(n)`
-/

namespace A072286.P14886767741647527290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A054335 n) (A104684 n) : ℚ) / (A104684 n : ℚ)

end

end A072286.P14886767741647527290

/-! ## A072286.P14397652419402794396

`gcd(A095836(n+1), A180956(n))`
-/

namespace A072286.P14397652419402794396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095836 (n + 1)) (A180956 n)

end

end A072286.P14397652419402794396

/-! ## A072286.P6681500688743802987

`A318454(gcd(A009998(n), A099884(n)))`
-/

namespace A072286.P6681500688743802987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318454 (Int.gcd (A009998 n) (A099884 n))

end

end A072286.P6681500688743802987

/-! ## A072286.P15736711729733878825

`A318454(gcd(A067417(n), A130321(n)))`
-/

namespace A072286.P15736711729733878825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318454 (Int.gcd (A067417 n) (A130321 n))

end

end A072286.P15736711729733878825

/-! ## A072286.P11905367003207726199

`A318454(gcd(A036561(n), A051129(n+1)))`
-/

namespace A072286.P11905367003207726199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318454 (Int.gcd (A036561 n) (A051129 (n + 1)))

end

end A072286.P11905367003207726199

/-! ## A072286.P11297987973749862851

`gcd(A180956(n), A353953(n))`
-/

namespace A072286.P11297987973749862851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180956 n) (A353953 n)

end

end A072286.P11297987973749862851

/-!
# A072287: Let f(n, m) = binomial(n - m/2 + 1, n - m + 1) - binomial(n - m/2, n - m + 1) and let s(n) = Sum_{k=0..n} f(n, k); then a(n) = numerator of s(n).

The programs for A072287, there is no canonical definition to state claims against.
-/

/-! ## A072287.P4372547660974320590

`∑[A336926((n^n)²+1)]`
-/

namespace A072287.P4372547660974320590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336926 ((n ^ n) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072287.P4372547660974320590

/-!
# A072290: Number of digits in the decimal expansion of the Champernowne constant that must be scanned to encounter all n-digit strings.

The programs for A072290, the canonical program `A072290.P3902387421664433821` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072290 has offset 0).

The definition of A072290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072290.P12634213106862523918

`n+1+A033713(n+1)`
-/

namespace A072290.P12634213106862523918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 + A033713 (n + 1))

end

end A072290.P12634213106862523918

namespace A072290

/-- `n+1+A033713(n+1)` -/
def P12634213106862523918.Spec : Prop :=
  ∀ n, P12634213106862523918.a n = A072290 n

end A072290

/-! ## A072290.P3902387421664433821

`n+1+A053541(n+1)-A002275(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072290

/-- `n+1+A053541(n+1)-A002275(n+1)` -/
def P3902387421664433821.Spec : Prop :=
  ∀ n, P3902387421664433821.a n = A072290 n

theorem P3902387421664433821.correct : P3902387421664433821.Spec := by
  intro n
  simp only [A072290]

end A072290

/-! ## A072290.P1087383559661628364

`∑[9*n*10^(n-1)+1]`
-/

namespace A072290.P1087383559661628364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n : ℚ) * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072290.P1087383559661628364

namespace A072290

/-- `∑[9*n*10^(n-1)+1]` -/
def P1087383559661628364.Spec : Prop :=
  ∀ n, P1087383559661628364.a n = (A072290 n : ℚ)

end A072290

/-! ## A072290.P7062005039437589282

`A033714(n+1)+n`
-/

namespace A072290.P7062005039437589282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033714 (n + 1) + (n : ℤ)

end

end A072290.P7062005039437589282

namespace A072290

/-- `A033714(n+1)+n` -/
def P7062005039437589282.Spec : Prop :=
  ∀ n, P7062005039437589282.a n = A072290 n

end A072290

/-! ## A072290.P287017395883393358

`A053541(n+1)-∑[10^n-1]`
-/

namespace A072290.P287017395883393358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053541 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072290.P287017395883393358

namespace A072290

/-- `A053541(n+1)-∑[10^n-1]` -/
def P287017395883393358.Spec : Prop :=
  ∀ n, P287017395883393358.a n = A072290 n

end A072290

/-! ## A072290.P8365544179666438691

`A064748(n)+n-A002275(n)`
-/

namespace A072290.P8365544179666438691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064748 n + ((n : ℤ) - A002275 n)

end

end A072290.P8365544179666438691

namespace A072290

/-- `A064748(n)+n-A002275(n)` -/
def P8365544179666438691.Spec : Prop :=
  ∀ n, P8365544179666438691.a n = A072290 n

end A072290

/-! ## A072290.P13443994806994154920

`∑[A081045(n)-A178500(n)]+n`
-/

namespace A072290.P13443994806994154920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 n - A178500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A072290.P13443994806994154920

namespace A072290

/-- `∑[A081045(n)-A178500(n)]+n` -/
def P13443994806994154920.Spec : Prop :=
  ∀ n, P13443994806994154920.a n = A072290 n

end A072290

/-! ## A072290.P11335091238544967838

`n+1+A126431(n)-A002275(n)`
-/

namespace A072290.P11335091238544967838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A126431 n - A002275 n)

end

end A072290.P11335091238544967838

namespace A072290

/-- `n+1+A126431(n)-A002275(n)` -/
def P11335091238544967838.Spec : Prop :=
  ∀ n, P11335091238544967838.a n = A072290 n

end A072290

/-! ## A072290.P5662530990268641109

`∑[A212704(n+1)+1]-A212704(n+1)`
-/

namespace A072290.P5662530990268641109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212704 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212704 (n + 1)

end

end A072290.P5662530990268641109

namespace A072290

/-- `∑[A212704(n+1)+1]-A212704(n+1)` -/
def P5662530990268641109.Spec : Prop :=
  ∀ n, P5662530990268641109.a n = A072290 n

end A072290

/-!
# A072291: a(n) = a(n-1)+a(n-2)^n with a(1) = a(2) = 1.

The programs for A072291, there is no canonical definition to state claims against.
-/

/-! ## A072291.P11370964069370131042

`a(n-1)+a(n-2)^(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A072291.P11370964069370131042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) ^ (n + 1)

end

end A072291.P11370964069370131042

/-!
# A072292: Number of proper powers b^d <= n (b > 1, d > 1).

The programs for A072292, the canonical program `A072292.P7243147247323871744` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072292 has offset 1).

The definition of A072292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072292.P7243147247323871744

`A069623(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072292

/-- `A069623(n+1)-1` -/
def P7243147247323871744.Spec : Prop :=
  ∀ n, P7243147247323871744.a n = A072292 (n + 1)

theorem P7243147247323871744.correct : P7243147247323871744.Spec := by
  intro n
  simp only [A072292, Nat.add_sub_cancel]

end A072292

/-! ## A072292.P7568447940836426414

`∑[char[A045542(n+1)]]`
-/

namespace A072292.P7568447940836426414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072292.P7568447940836426414

namespace A072292

/-- `∑[char[A045542(n+1)]]` -/
def P7568447940836426414.Spec : Prop :=
  ∀ n, (P7568447940836426414.a n : ℤ) = A072292 (n + 1)

end A072292

/-! ## A072292.P8713850203107357100

`∑[A075802(n+1)]-1`
-/

namespace A072292.P8713850203107357100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A072292.P8713850203107357100

namespace A072292

/-- `∑[A075802(n+1)]-1` -/
def P8713850203107357100.Spec : Prop :=
  ∀ n, P8713850203107357100.a n = A072292 (n + 1)

end A072292

/-! ## A072292.P14012135984695451961

`∑[1-A132350(n+1)]`
-/

namespace A072292.P14012135984695451961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A132350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072292.P14012135984695451961

namespace A072292

/-- `∑[1-A132350(n+1)]` -/
def P14012135984695451961.Spec : Prop :=
  ∀ n, P14012135984695451961.a n = A072292 (n + 1)

end A072292

/-! ## A072292.P16058162836610655653

`∑[char[∑[A053289(n+1)]]]`
-/

namespace A072292.P16058162836610655653
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072292.P16058162836610655653

namespace A072292

/-- `∑[char[∑[A053289(n+1)]]]` -/
def P16058162836610655653.Spec : Prop :=
  ∀ n, (P16058162836610655653.a n : ℤ) = A072292 (n + 1)

end A072292

/-! ## A072292.P14062703977555110665

`1-A132351(n+1)+n`
-/

namespace A072292.P14062703977555110665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A132351 (n + 1) + (n : ℤ)

end

end A072292.P14062703977555110665

namespace A072292

/-- `1-A132351(n+1)+n` -/
def P14062703977555110665.Spec : Prop :=
  ∀ n, P14062703977555110665.a n = A072292 (n + 1)

end A072292

/-! ## A072292.P17906910542388760053

`∑[char[A001597(n+2)-1]]`
-/

namespace A072292.P17906910542388760053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072292.P17906910542388760053

namespace A072292

/-- `∑[char[A001597(n+2)-1]]` -/
def P17906910542388760053.Spec : Prop :=
  ∀ n, (P17906910542388760053.a n : ℤ) = A072292 (n + 1)

end A072292

/-! ## A072292.P1546653971878964002

`∑[char[A087320(n+2)-1]]`
-/

namespace A072292.P1546653971878964002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087320 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072292.P1546653971878964002

namespace A072292

/-- `∑[char[A087320(n+2)-1]]` -/
def P1546653971878964002.Spec : Prop :=
  ∀ n, (P1546653971878964002.a n : ℤ) = A072292 (n + 1)

end A072292

/-! ## A072292.P5934522095500390929

`∑[1-floor(sqrt(A175083(n+1)))]`
-/

namespace A072292.P5934522095500390929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.sqrt (A175083 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072292.P5934522095500390929

namespace A072292

/-- `∑[1-floor(sqrt(A175083(n+1)))]` -/
def P5934522095500390929.Spec : Prop :=
  ∀ n, P5934522095500390929.a n = A072292 (n + 1)

end A072292

/-! ## A072292.P11069652414784715791

`A076411(A081676(n+1))`
-/

namespace A072292.P11069652414784715791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (A081676 (n + 1)).toNat

end

end A072292.P11069652414784715791

namespace A072292

/-- `A076411(A081676(n+1))` -/
def P11069652414784715791.Spec : Prop :=
  ∀ n, P11069652414784715791.a n = A072292 (n + 1)

end A072292

/-! ## A072292.P6909338625438121522

`∑[A001221(A327502(n+1))]`
-/

namespace A072292.P6909338625438121522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072292.P6909338625438121522

namespace A072292

/-- `∑[A001221(A327502(n+1))]` -/
def P6909338625438121522.Spec : Prop :=
  ∀ n, P6909338625438121522.a n = A072292 (n + 1)

end A072292

/-! ## A072292.P17629303916949293409

`∑[A052409(A294338(n+1))]`
-/

namespace A072292.P17629303916949293409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A294338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072292.P17629303916949293409

namespace A072292

/-- `∑[A052409(A294338(n+1))]` -/
def P17629303916949293409.Spec : Prop :=
  ∀ n, P17629303916949293409.a n = A072292 (n + 1)

end A072292

/-! ## A072292.P18137743427399473269

`∑[A052409(A316789(n+1))]`
-/

namespace A072292.P18137743427399473269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A316789 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072292.P18137743427399473269

namespace A072292

/-- `∑[A052409(A316789(n+1))]` -/
def P18137743427399473269.Spec : Prop :=
  ∀ n, P18137743427399473269.a n = A072292 (n + 1)

end A072292

/-! ## A072292.P5928108510633696404

`∑[A000035(A316789(n+1)+1)]`
-/

namespace A072292.P5928108510633696404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A316789 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072292.P5928108510633696404

namespace A072292

/-- `∑[A000035(A316789(n+1)+1)]` -/
def P5928108510633696404.Spec : Prop :=
  ∀ n, P5928108510633696404.a n = A072292 (n + 1)

end A072292

/-! ## A072292.P7150892978409822634

`A000027(n+1)%A132351(n+1)`
-/

namespace A072292.P7150892978409822634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A132351 (n + 1))

end

end A072292.P7150892978409822634

namespace A072292

/-- `A000027(n+1)%A132351(n+1)` -/
def P7150892978409822634.Spec : Prop :=
  ∀ n, P7150892978409822634.a n = A072292 (n + 1)

end A072292

/-! ## A072292.P1413056517722607148

`A087156(n+1)%A132351(n+1)`
-/

namespace A072292.P1413056517722607148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A132351 (n + 1))

end

end A072292.P1413056517722607148

namespace A072292

/-- `A087156(n+1)%A132351(n+1)` -/
def P1413056517722607148.Spec : Prop :=
  ∀ n, P1413056517722607148.a n = A072292 (n + 1)

end A072292

/-! ## A072292.P4264832580512106991

`A178915(n+1)%A132351(n+1)`
-/

namespace A072292.P4264832580512106991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178915 (n + 1)) (A132351 (n + 1))

end

end A072292.P4264832580512106991

namespace A072292

/-- `A178915(n+1)%A132351(n+1)` -/
def P4264832580512106991.Spec : Prop :=
  ∀ n, P4264832580512106991.a n = A072292 (n + 1)

end A072292

/-! ## A072292.P9082848538791883059

`∑[A294338(A294338(n+1)²)-1]`
-/

namespace A072292.P9082848538791883059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294338 (A294338 (n + 1) ^ 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072292.P9082848538791883059

namespace A072292

/-- `∑[A294338(A294338(n+1)²)-1]` -/
def P9082848538791883059.Spec : Prop :=
  ∀ n, P9082848538791883059.a n = A072292 (n + 1)

end A072292

/-! ## A072292.P14363970119884910346

`∑[A334195(∑{e}[A295920(n+1), #]+1)]`
-/

namespace A072292.P14363970119884910346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072292.P14363970119884910346

namespace A072292

/-- `∑[A334195(∑{e}[A295920(n+1), #]+1)]` -/
def P14363970119884910346.Spec : Prop :=
  ∀ n, P14363970119884910346.a n = A072292 (n + 1)

end A072292

/-!
# A072293: 

The programs for A072293, there is no canonical definition to state claims against.
-/

/-! ## A072293.P10720361109001165500

`A072163(n+1)!`
-/

namespace A072293.P10720361109001165500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A072163 (n + 1)).toNat

end

end A072293.P10720361109001165500

/-!
# A072295: 

The programs for A072295, there is no canonical definition to state claims against.
-/

/-! ## A072295.P15693486162473449036

`A072124(n+1)!`
-/

namespace A072295.P15693486162473449036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A072124 (n + 1)).toNat

end

end A072295.P15693486162473449036

/-! ## A072295.P15082736688406302225

`lcm(A000142(A072124(n+1)), A000142(n))`
-/

namespace A072295.P15082736688406302225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000142 (A072124 (n + 1)).toNat) (A000142 n)

end

end A072295.P15082736688406302225

/-!
# A072297: Number of even non-cototients not exceeding 2^n.

The programs for A072297, there is no canonical definition to state claims against.
-/

/-! ## A072297.P16340680501459135361

`A162343(A304710(n))`
-/

namespace A072297.P16340680501459135361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162343 (A304710 n).toNat

end

end A072297.P16340680501459135361

/-! ## A072297.P18345900709048920990

`A323733(A014270(n+1))`
-/

namespace A072297.P18345900709048920990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (A014270 (n + 1)).toNat

end

end A072297.P18345900709048920990

/-! ## A072297.P16170039762348378720

`A341936(A005246(n)-1)`
-/

namespace A072297.P16170039762348378720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 (A005246 n - 1).toNat

end

end A072297.P16170039762348378720

/-! ## A072297.P12258652349102632716

`A005843(A114247(n+1))%C(n, ceil(n/2))`
-/

namespace A072297.P12258652349102632716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A114247 (n + 1)).toNat) (Nat.choose n ⌈(n : ℚ) / 2⌉.toNat : ℤ)

end

end A072297.P12258652349102632716

/-! ## A072297.P5970731904726351625

`A000196(A130223(n)-A337225(n))`
-/

namespace A072297.P5970731904726351625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A130223 n - A337225 n).toNat

end

end A072297.P5970731904726351625

/-!
# A072299: Numbers k such that reverse(k) is a prime factor of k.

The programs for A072299, there is no canonical definition to state claims against.
-/

/-! ## A072299.P17943645000497218239

`∩[A061917(n+1), A095179(n+1)]`
-/

namespace A072299.P17943645000497218239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072299.P17943645000497218239

/-! ## A072299.P13108942424353121952

`∩[A095179(n+1), A169824(n+1)]`
-/

namespace A072299.P13108942424353121952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072299.P13108942424353121952

/-! ## A072299.P16363317054536817269

`∩[A071249(n+1), A095179(n+1)]`
-/

namespace A072299.P16363317054536817269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072299.P16363317054536817269

/-! ## A072299.P10441915568968922790

`eq[A004086(n+1), A047814(n+1)]+1`
-/

namespace A072299.P10441915568968922790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072299.P10441915568968922790

/-! ## A072299.P3102633714939675327

`eq[A004086(n+1), A331044(n+1)]+1`
-/

namespace A072299.P3102633714939675327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072299.P3102633714939675327

