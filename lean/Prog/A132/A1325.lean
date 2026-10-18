import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B002.C002
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A132537: Egyptian fraction representation for the cube root of 62.

The programs for A132537, there is no canonical definition to state claims against.
-/

/-! ## A132537.P5692956132844833469

`A328475(A337072(n))+A002110(n)`
-/

namespace A132537.P5692956132844833469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328475 (A337072 n).toNat + A002110 n

end

end A132537.P5692956132844833469

/-!
# A132577: Record values in A132575.

The programs for A132577, there is no canonical definition to state claims against.
-/

/-! ## A132577.P11935120948859054468

`record[A132575(n+1)]`
-/

namespace A132577.P11935120948859054468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132577.P11935120948859054468

/-! ## A132577.P2824406211228971633

`A132575(A132578(n+1))`
-/

namespace A132577.P2824406211228971633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132575 (A132578 (n + 1)).toNat

end

end A132577.P2824406211228971633

/-! ## A132577.P18058599211214106571

`record[A132575(A028310(n))%A022305(n)]`
-/

namespace A132577.P18058599211214106571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132575 (A028310 n).toNat) (A022305 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132577.P18058599211214106571

/-! ## A132577.P5006878036413104114

`record[A132575(A080513(n))%A022305(n)]`
-/

namespace A132577.P5006878036413104114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132575 (A080513 n).toNat) (A022305 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132577.P5006878036413104114

/-! ## A132577.P12806010366663230367

`record[A132575(A028310(n))]%A014005(n)`
-/

namespace A132577.P12806010366663230367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132575 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A014005 n)

end

end A132577.P12806010366663230367

/-! ## A132577.P5659441460484508032

`record[A132575(A051340(n))]%A188165(n)`
-/

namespace A132577.P5659441460484508032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132575 (A051340 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A188165 n)

end

end A132577.P5659441460484508032

/-!
# A132578: Where record values occur in A132575.

The programs for A132578, there is no canonical definition to state claims against.
-/

/-! ## A132578.P9848256623953154858

`A132576(A132577(n+1))`
-/

namespace A132578.P9848256623953154858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132576 (A132577 (n + 1)).toNat

end

end A132578.P9848256623953154858

/-! ## A132578.P1704561824568201468

`A132576(record[A132575(n+1)])`
-/

namespace A132578.P1704561824568201468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132576 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A132578.P1704561824568201468

/-! ## A132578.P9010489530962309785

`∑[gcd(A101479(n), A228691(n))]`
-/

namespace A132578.P9010489530962309785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101479 n) (A228691 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132578.P9010489530962309785

/-!
# A132579: Numbers m such that A132575(m) = m.

The programs for A132579, there is no canonical definition to state claims against.
-/

/-! ## A132579.P14039409972676101797

`eq[n, A132575(round(sqrt(n²+1)))]`
-/

namespace A132579.P14039409972676101797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132575 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132579.P14039409972676101797

/-! ## A132579.P10739834783707122461

`eq[n+1, A132575(n+1)]+1`
-/

namespace A132579.P10739834783707122461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132575 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A132579.P10739834783707122461

/-! ## A132579.P14200951937855465232

`eq[0, n-A132575(A028310(n))]`
-/

namespace A132579.P14200951937855465232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A132575 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132579.P14200951937855465232

/-! ## A132579.P13286411289183066678

`eq[n, A132575(A028310(n))%A022305(n)]`
-/

namespace A132579.P13286411289183066678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132575 (A028310 n).toNat) (A022305 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132579.P13286411289183066678

/-!
# A132580: Numbers m such that A132575(m) = A132575(m-1).

The programs for A132580, there is no canonical definition to state claims against.
-/

/-! ## A132580.P14592926763573783550

`A145677(A053348(n+1))+A045918(n+3)`
-/

namespace A132580.P14592926763573783550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 (A053348 (n + 1)).toNat + A045918 (n + 3)

end

end A132580.P14592926763573783550

/-!
# A132581: Number of antichains in the first n elements of the infinite Boolean lattice.

The programs for A132581, there is no canonical definition to state claims against.
-/

/-! ## A132581.P12475923648497317456

`∑[A132582(abs(1-n))]`
-/

namespace A132581.P12475923648497317456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132582 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132581.P12475923648497317456

/-! ## A132581.P6175153027512683861

`A132582(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A132581.P6175153027512683861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132582 (n - 1) + a (n - 1)

end

end A132581.P6175153027512683861

/-! ## A132581.P13923244197025096415

`∑[A132582(n)]+1-A132582(n)`
-/

namespace A132581.P13923244197025096415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A132582 n)

end

end A132581.P13923244197025096415

/-! ## A132581.P12941781643758990072

`A325107(abs(1-n))+1-A000038(n)`
-/

namespace A132581.P12941781643758990072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325107 |1 - (n : ℤ)|.toNat + 1 - A000038 n

end

end A132581.P12941781643758990072

/-! ## A132581.P15111306425031702101

`A325107(n)+1-A132582(n)`
-/

namespace A132581.P15111306425031702101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325107 n + (1 - A132582 n)

end

end A132581.P15111306425031702101

/-!
# A132582: First differences of A132581.

The programs for A132582, there is no canonical definition to state claims against.
-/

/-! ## A132582.P10021389681891852215

`A132581(n+1)-A132581(n)`
-/

namespace A132582.P10021389681891852215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 (n + 1) - A132581 n

end

end A132582.P10021389681891852215

/-! ## A132582.P17201103778861426426

`Δ[A132581(n)]`
-/

namespace A132582.P17201103778861426426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132582.P17201103778861426426

/-! ## A132582.P1633063829757139246

`record[A132581(A103221(n))]-A132581(n)`
-/

namespace A132582.P1633063829757139246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 (A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A132581 n

end

end A132582.P1633063829757139246

/-! ## A132582.P14839788040414842906

`abs(Δ[A325107(abs(1-n))])`
-/

namespace A132582.P14839788040414842906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325107 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A132582.P14839788040414842906

/-! ## A132582.P15303251479948957306

`2-A024000(A325107(n)-A132581(n))`
-/

namespace A132582.P15303251479948957306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (A325107 n - A132581 n).toNat

end

end A132582.P15303251479948957306

/-!
# A132583: a(n) = n 2's sandwiched between two 1's.

The programs for A132583, the canonical program `A132583.P14951066524201243233` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132583 has offset 0).

The definition of A132583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132583.P14951066524201243233

`10*a(n-1)+11` with `a(0)=11`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132583

/-- `10*a(n-1)+11` -/
def P14951066524201243233.Spec : Prop :=
  ∀ n, (P14951066524201243233.a n : ℤ) = A132583 n

theorem P14951066524201243233.correct : P14951066524201243233.Spec := by
  intro n
  simp only [A132583]

end A132583

/-! ## A132583.P6276024046377477843

`20*(10^n-1)/9+10^(n+1)+1`
-/

namespace A132583.P6276024046377477843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  20 * (((10 ^ n : ℤ) - 1 : ℚ) / 9) + (10 ^ (n + 1) : ℚ) + 1

end

end A132583.P6276024046377477843

namespace A132583

/-- `20*(10^n-1)/9+10^(n+1)+1` -/
def P6276024046377477843.Spec : Prop :=
  ∀ n, P6276024046377477843.a n = (A132583 n : ℚ)

theorem P6276024046377477843.correct : P6276024046377477843.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132583, Nat.add_sub_cancel, A132583.P6276024046377477843.a, A132583.P14951066524201243233.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132583, Nat.add_sub_cancel, A132583.P6276024046377477843.a, A132583.P14951066524201243233.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132583

/-! ## A132583.P1715389921374467232

`ogf(11/(1-11x+10x^2))`
-/

namespace A132583.P1715389921374467232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11] [1, -11, 10] n

end

end A132583.P1715389921374467232

namespace A132583

/-- `ogf(11/(1-11x+10x^2))` -/
def P1715389921374467232.Spec : Prop :=
  ∀ n, P1715389921374467232.a n = A132583 n

end A132583

/-! ## A132583.P5539272631437410021

`∑[10*a(n-1)]` with `a(0)=11`
-/

namespace A132583.P5539272631437410021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132583.P5539272631437410021

namespace A132583

/-- `∑[10*a(n-1)]` -/
def P5539272631437410021.Spec : Prop :=
  ∀ n, (P5539272631437410021.a n : ℤ) = A132583 n

end A132583

/-! ## A132583.P3944330234580817305

`∑[A003953(n+1)]`
-/

namespace A132583.P3944330234580817305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132583.P3944330234580817305

namespace A132583

/-- `∑[A003953(n+1)]` -/
def P3944330234580817305.Spec : Prop :=
  ∀ n, P3944330234580817305.a n = A132583 n

end A132583

/-! ## A132583.P17105582682420128077

`A094623(2*(n+1))`
-/

namespace A132583.P17105582682420128077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094623 (2 * (n + 1))

end

end A132583.P17105582682420128077

namespace A132583

/-- `A094623(2*(n+1))` -/
def P17105582682420128077.Spec : Prop :=
  ∀ n, P17105582682420128077.a n = A132583 n

end A132583

/-! ## A132583.P16941521440711158303

`A094624(2*(n+1))`
-/

namespace A132583.P16941521440711158303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094624 (2 * (n + 1))

end

end A132583.P16941521440711158303

namespace A132583

/-- `A094624(2*(n+1))` -/
def P16941521440711158303.Spec : Prop :=
  ∀ n, P16941521440711158303.a n = A132583 n

end A132583

/-! ## A132583.P4559662412206894478

`∑[A038444(∑[n+1])]`
-/

namespace A132583.P4559662412206894478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038444 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132583.P4559662412206894478

namespace A132583

/-- `∑[A038444(∑[n+1])]` -/
def P4559662412206894478.Spec : Prop :=
  ∀ n, P4559662412206894478.a n = A132583 n

end A132583

/-! ## A132583.P12097529367781358607

`∑[A164851(∑[n+1])]`
-/

namespace A132583.P12097529367781358607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164851 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132583.P12097529367781358607

namespace A132583

/-- `∑[A164851(∑[n+1])]` -/
def P12097529367781358607.Spec : Prop :=
  ∀ n, P12097529367781358607.a n = A132583 n

end A132583

/-! ## A132583.P17602530614440988333

`∑[A052216(∑[n+2])]`
-/

namespace A132583.P17602530614440988333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132583.P17602530614440988333

namespace A132583

/-- `∑[A052216(∑[n+2])]` -/
def P17602530614440988333.Spec : Prop :=
  ∀ n, P17602530614440988333.a n = A132583 n

end A132583

/-!
# A132584: a(0)=0, a(1)=4; for n > 1, a(n) = 18*a(n-1) - a(n-2) + 8.

The programs for A132584, the canonical program `A132584.P13037302320609060797` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132584 has offset 0).

The definition of A132584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-a(n-2)+8` (program `A132584.P13037302320609060797`, by `A132584.P13037302320609060797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132584.P13037302320609060797

`18*a(n-1)-a(n-2)+8` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132584

/-- `18*a(n-1)-a(n-2)+8` -/
def P13037302320609060797.Spec : Prop :=
  ∀ n, P13037302320609060797.a n = A132584 n

theorem P13037302320609060797.correct : P13037302320609060797.Spec := by
  intro n
  simp only [A132584]

end A132584

/-! ## A132584.P12099456322272256825

`4*A049683(n)`
-/

namespace A132584.P12099456322272256825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A049683 n

end

end A132584.P12099456322272256825

namespace A132584

/-- `4*A049683(n)` -/
def P12099456322272256825.Spec : Prop :=
  ∀ n, P12099456322272256825.a n = A132584 n

end A132584

/-! ## A132584.P11307609637949422335

`(A023039(n)-1)/2`
-/

namespace A132584.P11307609637949422335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023039 n - 1 : ℚ) / 2

end

end A132584.P11307609637949422335

namespace A132584

/-- `(A023039(n)-1)/2` -/
def P11307609637949422335.Spec : Prop :=
  ∀ n, P11307609637949422335.a n = (A132584 n : ℚ)

end A132584

/-! ## A132584.P2042019527869705019

`∑[ogf((4x+4x^2)/(1-18x+x^2))]`
-/

namespace A132584.P2042019527869705019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 4] [1, -18, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132584.P2042019527869705019

namespace A132584

/-- `∑[ogf((4x+4x^2)/(1-18x+x^2))]` -/
def P2042019527869705019.Spec : Prop :=
  ∀ n, P2042019527869705019.a n = A132584 n

end A132584

/-! ## A132584.P5540472360458802292

`A227047(6*n)`
-/

namespace A132584.P5540472360458802292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227047 (6 * n)

end

end A132584.P5540472360458802292

namespace A132584

/-- `A227047(6*n)` -/
def P5540472360458802292.Spec : Prop :=
  ∀ n, P5540472360458802292.a n = A132584 n

end A132584

/-! ## A132584.P16099439760491627172

`and(-2, A001077(n)²)`
-/

namespace A132584.P16099439760491627172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A001077 n ^ 2)

end

end A132584.P16099439760491627172

namespace A132584

/-- `and(-2, A001077(n)²)` -/
def P16099439760491627172.Spec : Prop :=
  ∀ n, P16099439760491627172.a n = A132584 n

end A132584

/-! ## A132584.P12043693885715210537

`∑[A000032(abs(2-abs(1-6*n)))]-1`
-/

namespace A132584.P12043693885715210537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 |(2 - |1 - (6 * n : ℤ)|)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A132584.P12043693885715210537

namespace A132584

/-- `∑[A000032(abs(2-abs(1-6*n)))]-1` -/
def P12043693885715210537.Spec : Prop :=
  ∀ n, P12043693885715210537.a n = A132584 n

end A132584

/-! ## A132584.P15540341378493065227

`A000032((n+1)²-(2-n)²)+a(n-1)` with `a(0)=0`
-/

namespace A132584.P15540341378493065227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000032 (((n + 1) ^ 2 : ℤ) - (2 - (n : ℤ)) ^ 2).toNat + a (n - 1)

end

end A132584.P15540341378493065227

namespace A132584

/-- `A000032((n+1)²-(2-n)²)+a(n-1)` -/
def P15540341378493065227.Spec : Prop :=
  ∀ n, P15540341378493065227.a n = A132584 n

end A132584

/-! ## A132584.P8683693195682912218

`A053606(n)-A060645(n)`
-/

namespace A132584.P8683693195682912218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053606 n - A060645 n

end

end A132584.P8683693195682912218

namespace A132584

/-- `A053606(n)-A060645(n)` -/
def P8683693195682912218.Spec : Prop :=
  ∀ n, P8683693195682912218.a n = A132584 n

end A132584

/-! ## A132584.P11281007371396104530

`A001077(n)²-A059841(n)`
-/

namespace A132584.P11281007371396104530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n ^ 2 - A059841 n

end

end A132584.P11281007371396104530

namespace A132584

/-- `A001077(n)²-A059841(n)` -/
def P11281007371396104530.Spec : Prop :=
  ∀ n, P11281007371396104530.a n = A132584 n

end A132584

/-!
# A132587: Let b(k) be the k-th term of the flattened irregular array where the m-th row contains the positive divisors of m. (b(k) = A027750(k).) Let c(k) be the k-th term of the flattened irregular array where the m-th row contains the positive integers that are <= m and are coprime to m. (c(k) = A038566(k).) Then a(n) = gcd(b(n),c(n)).

The programs for A132587, there is no canonical definition to state claims against.
-/

/-! ## A132587.P6792884132975380644

`gcd(A027750(n+1), A038566(n+1))`
-/

namespace A132587.P6792884132975380644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027750 (n + 1)) (A038566 (n + 1))

end

end A132587.P6792884132975380644

/-! ## A132587.P13841557511406254530

`gcd(A138256(A034781(n+2)), A306112(n))`
-/

namespace A132587.P13841557511406254530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138256 (A034781 (n + 2)).toNat) (A306112 n)

end

end A132587.P13841557511406254530

/-! ## A132587.P1046590057683052822

`A001055(A302997(n)^floor((A359586(n+1)+1)/2))`
-/

namespace A132587.P1046590057683052822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.roundAway ((A302997 n : ℚ) ^ (⌊(A359586 (n + 1) + 1 : ℚ) / 2⌋ : ℤ))).toNat

end

end A132587.P1046590057683052822

/-! ## A132587.P2857639601504835702

`gcd(A027750(n+1), A322528(A155112(n)))`
-/

namespace A132587.P2857639601504835702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027750 (n + 1)) (A322528 (A155112 n).toNat)

end

end A132587.P2857639601504835702

/-! ## A132587.P1308494864669912239

`gcd(A057145(n+2), A347437(A243506(n+1)))`
-/

namespace A132587.P1308494864669912239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057145 (n + 2)) (A347437 (A243506 (n + 1)).toNat)

end

end A132587.P1308494864669912239

/-!
# A132588: Let b(k) be the k-th term of the flattened irregular array where the m-th row contains the positive divisors of m (b(k) = A027750(k)). Then a(n) = gcd(b(n), n).

The programs for A132588, there is no canonical definition to state claims against.
-/

/-! ## A132588.P16561055116379858898

`gcd(n+1, A027750(n+1))`
-/

namespace A132588.P16561055116379858898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A027750 (n + 1))

end

end A132588.P16561055116379858898

/-! ## A132588.P13011956904654710381

`gcd(A027750(n+1), A153152(n))`
-/

namespace A132588.P13011956904654710381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027750 (n + 1)) (A153152 n)

end

end A132588.P13011956904654710381

/-! ## A132588.P3682109440001184882

`gcd(A131738(n), A233773(n+1))`
-/

namespace A132588.P3682109440001184882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A233773 (n + 1))

end

end A132588.P3682109440001184882

/-! ## A132588.P3739171988404456787

`gcd(abs(A233773(n+1)), A000027(n+1))`
-/

namespace A132588.P3739171988404456787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A233773 (n + 1)| (A000027 (n + 1))

end

end A132588.P3739171988404456787

/-! ## A132588.P3878832746139791072

`gcd(A014682(2*n)+1, A263730(n+2)+1)`
-/

namespace A132588.P3878832746139791072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014682 (2 * n) + 1) (A263730 (n + 2) + 1)

end

end A132588.P3878832746139791072

/-! ## A132588.P14071456306288516430

`A050873(A027750(n+1)+∑[n])`
-/

namespace A132588.P14071456306288516430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A027750 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A132588.P14071456306288516430

/-!
# A132589: a(n) = gcd(A038566(n), n).

The programs for A132589, the canonical program `A132589.P12551463783975499666` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132589 has offset 1).

The definition of A132589 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038566, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132589.P12551463783975499666

`gcd(n+1, A038566(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A132589

/-- `gcd(n+1, A038566(n+1))` -/
def P12551463783975499666.Spec : Prop :=
  ∀ n, (P12551463783975499666.a n : ℤ) = A132589 (n + 1)

theorem P12551463783975499666.correct : P12551463783975499666.Spec := by
  intro n
  simp only [A132589, Nat.add_sub_cancel]

end A132589

/-! ## A132589.P3158225432205484621

`gcd(xor(n, -1), A038569(2*n))`
-/

namespace A132589.P3158225432205484621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A038569 (2 * n))

end

end A132589.P3158225432205484621

namespace A132589

/-- `gcd(xor(n, -1), A038569(2*n))` -/
def P3158225432205484621.Spec : Prop :=
  ∀ n, (P3158225432205484621.a n : ℤ) = A132589 (n + 1)

end A132589

/-! ## A132589.P12454221292300536202

`gcd(n+1, A038568(A004273(n)))`
-/

namespace A132589.P12454221292300536202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A038568 (A004273 n).toNat)

end

end A132589.P12454221292300536202

namespace A132589

/-- `gcd(n+1, A038568(A004273(n)))` -/
def P12454221292300536202.Spec : Prop :=
  ∀ n, (P12454221292300536202.a n : ℤ) = A132589 (n + 1)

end A132589

/-! ## A132589.P6520420285006147684

`gcd(A038566(n+1), A131738(n))`
-/

namespace A132589.P6520420285006147684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038566 (n + 1)) (A131738 n)

end

end A132589.P6520420285006147684

namespace A132589

/-- `gcd(A038566(n+1), A131738(n))` -/
def P6520420285006147684.Spec : Prop :=
  ∀ n, (P6520420285006147684.a n : ℤ) = A132589 (n + 1)

end A132589

/-! ## A132589.P15988420075619017906

`gcd(A038569(2*n), A153152(n))`
-/

namespace A132589.P15988420075619017906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038569 (2 * n)) (A153152 n)

end

end A132589.P15988420075619017906

namespace A132589

/-- `gcd(A038569(2*n), A153152(n))` -/
def P15988420075619017906.Spec : Prop :=
  ∀ n, (P15988420075619017906.a n : ℤ) = A132589 (n + 1)

end A132589

/-! ## A132589.P2270456326460375130

`gcd(A038568(A004273(n)), A131738(n))`
-/

namespace A132589.P2270456326460375130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038568 (A004273 n).toNat) (A131738 n)

end

end A132589.P2270456326460375130

namespace A132589

/-- `gcd(A038568(A004273(n)), A131738(n))` -/
def P2270456326460375130.Spec : Prop :=
  ∀ n, (P2270456326460375130.a n : ℤ) = A132589 (n + 1)

end A132589

/-! ## A132589.P1754499804687738690

`gcd(A038566(A242112(2*n)), A242112(2*n))`
-/

namespace A132589.P1754499804687738690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038566 (A242112 (2 * n)).toNat) (A242112 (2 * n))

end

end A132589.P1754499804687738690

namespace A132589

/-- `gcd(A038566(A242112(2*n)), A242112(2*n))` -/
def P1754499804687738690.Spec : Prop :=
  ∀ n, (P1754499804687738690.a n : ℤ) = A132589 (n + 1)

end A132589

/-! ## A132589.P2315206966020333772

`gcd(1-char[1]+n, A317988(2*n+3))`
-/

namespace A132589.P2315206966020333772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)) (A317988 (2 * n + 3))

end

end A132589.P2315206966020333772

namespace A132589

/-- `gcd(1-char[1]+n, A317988(2*n+3))` -/
def P2315206966020333772.Spec : Prop :=
  ∀ n, (P2315206966020333772.a n : ℤ) = A132589 (n + 1)

end A132589

/-! ## A132589.P13525944789578531640

`gcd(A038567(A002088(n)), A038569(n+n))`
-/

namespace A132589.P13525944789578531640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038567 (A002088 n).toNat) (A038569 (n + n))

end

end A132589.P13525944789578531640

namespace A132589

/-- `gcd(A038567(A002088(n)), A038569(n+n))` -/
def P13525944789578531640.Spec : Prop :=
  ∀ n, (P13525944789578531640.a n : ℤ) = A132589 (n + 1)

end A132589

/-! ## A132589.P4588402623260185073

`A050873(A038566(n+1)+∑[n])`
-/

namespace A132589.P4588402623260185073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A038566 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A132589.P4588402623260185073

namespace A132589

/-- `A050873(A038566(n+1)+∑[n])` -/
def P4588402623260185073.Spec : Prop :=
  ∀ n, P4588402623260185073.a n = A132589 (n + 1)

end A132589

/-!
# A132592: X-values of solutions to the equation X*(X + 1) - 8*Y^2 = 0.

The programs for A132592, the canonical program `A132592.P13056733167517910827` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132592 has offset 0).

The definition of A132592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132592.P13056733167517910827

`34*a(n-1)-a(n-2)+16` with `a(0)=0, a(1)=8`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132592

/-- `34*a(n-1)-a(n-2)+16` -/
def P13056733167517910827.Spec : Prop :=
  ∀ n, P13056733167517910827.a n = A132592 n

theorem P13056733167517910827.correct : P13056733167517910827.Spec := by
  intro n
  simp only [A132592]

end A132592

/-! ## A132592.P8336703299925632956

`A001541(n)²-1`
-/

namespace A132592.P8336703299925632956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n ^ 2 - 1

end

end A132592.P8336703299925632956

namespace A132592

/-- `A001541(n)²-1` -/
def P8336703299925632956.Spec : Prop :=
  ∀ n, P8336703299925632956.a n = A132592 n

end A132592

/-! ## A132592.P3952992798639752216

`A055792(n+1)-1`
-/

namespace A132592.P3952992798639752216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055792 (n + 1) - 1

end

end A132592.P3952992798639752216

namespace A132592

/-- `A055792(n+1)-1` -/
def P3952992798639752216.Spec : Prop :=
  ∀ n, P3952992798639752216.a n = A132592 n

end A132592

/-! ## A132592.P3229162043157002664

`(A056771(n)-1)/2`
-/

namespace A132592.P3229162043157002664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056771 n - 1 : ℚ) / 2

end

end A132592.P3229162043157002664

namespace A132592

/-- `(A056771(n)-1)/2` -/
def P3229162043157002664.Spec : Prop :=
  ∀ n, P3229162043157002664.a n = (A132592 n : ℚ)

end A132592

/-! ## A132592.P8298420608251571054

`(6*sqrt(a(n-1))-sqrt(a(n-2)))²` with `a(0)=0, a(1)=8`
-/

namespace A132592.P8298420608251571054
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 8] fun n a =>
  (6 * Real.sqrt (a (n - 1)) - Real.sqrt (a (n - 2))) ^ 2

end

end A132592.P8298420608251571054

namespace A132592

/-- `(6*sqrt(a(n-1))-sqrt(a(n-2)))²` -/
def P8298420608251571054.Spec : Prop :=
  ∀ n, P8298420608251571054.a n = (A132592 n : ℝ)

end A132592

/-! ## A132592.P12420095268748812187

`record[a(n-2)-a(n-1)-a(n-1)]²-1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A132592.P12420095268748812187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - 1

end

end A132592.P12420095268748812187

namespace A132592

/-- `record[a(n-2)-a(n-1)-a(n-1)]²-1` -/
def P12420095268748812187.Spec : Prop :=
  ∀ n, P12420095268748812187.a n = A132592 n

end A132592

/-! ## A132592.P17000026663343450867

`A001108(2*n)`
-/

namespace A132592.P17000026663343450867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 (2 * n)

end

end A132592.P17000026663343450867

namespace A132592

/-- `A001108(2*n)` -/
def P17000026663343450867.Spec : Prop :=
  ∀ n, P17000026663343450867.a n = A132592 n

end A132592

/-! ## A132592.P1500994914269980696

`2*A084703(n)`
-/

namespace A132592.P1500994914269980696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084703 n

end

end A132592.P1500994914269980696

namespace A132592

/-- `2*A084703(n)` -/
def P1500994914269980696.Spec : Prop :=
  ∀ n, P1500994914269980696.a n = A132592 n

end A132592

/-! ## A132592.P9055703146773173923

`A114619(2*n)`
-/

namespace A132592.P9055703146773173923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114619 (2 * n)

end

end A132592.P9055703146773173923

namespace A132592

/-- `A114619(2*n)` -/
def P9055703146773173923.Spec : Prop :=
  ∀ n, P9055703146773173923.a n = A132592 n

end A132592

/-! ## A132592.P18405114236264173784

`A097076(4*n)`
-/

namespace A132592.P18405114236264173784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (4 * n)

end

end A132592.P18405114236264173784

namespace A132592

/-- `A097076(4*n)` -/
def P18405114236264173784.Spec : Prop :=
  ∀ n, P18405114236264173784.a n = A132592 n

end A132592

/-!
# A132593: Nonnegative integer solutions X to the equation: X(X + 1) - 10*Y^2 = 0.

The programs for A132593, the canonical program `A132593.P1388955406771773366` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132593 has offset 0).

The definition of A132593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132593.P1388955406771773366

`38*a(n-1)-a(n-2)+18` with `a(0)=0, a(1)=9`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132593

/-- `38*a(n-1)-a(n-2)+18` -/
def P1388955406771773366.Spec : Prop :=
  ∀ n, P1388955406771773366.a n = A132593 n

theorem P1388955406771773366.correct : P1388955406771773366.Spec := by
  intro n
  simp only [A132593]

end A132593

/-! ## A132593.P16800585848557022276

`(A078986(n)-1)/2`
-/

namespace A132593.P16800585848557022276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078986 n - 1 : ℚ) / 2

end

end A132593.P16800585848557022276

namespace A132593

/-- `(A078986(n)-1)/2` -/
def P16800585848557022276.Spec : Prop :=
  ∀ n, P16800585848557022276.a n = (A132593 n : ℚ)

end A132593

/-! ## A132593.P5856660311300179967

`A247335(n)-1`
-/

namespace A132593.P5856660311300179967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247335 n - 1

end

end A132593.P5856660311300179967

namespace A132593

/-- `A247335(n)-1` -/
def P5856660311300179967.Spec : Prop :=
  ∀ n, P5856660311300179967.a n = A132593 n

end A132593

/-! ## A132593.P7440308993905338547

`floor(A078986(n)/2)`
-/

namespace A132593.P7440308993905338547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078986 n : ℚ) / 2⌋

end

end A132593.P7440308993905338547

namespace A132593

/-- `floor(A078986(n)/2)` -/
def P7440308993905338547.Spec : Prop :=
  ∀ n, P7440308993905338547.a n = A132593 n

end A132593

/-! ## A132593.P8492093004653504883

`floor(A005667(2*n)/2)`
-/

namespace A132593.P8492093004653504883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005667 (2 * n) : ℚ) / 2⌋

end

end A132593.P8492093004653504883

namespace A132593

/-- `floor(A005667(2*n)/2)` -/
def P8492093004653504883.Spec : Prop :=
  ∀ n, P8492093004653504883.a n = A132593 n

end A132593

/-! ## A132593.P5171079937604843628

`(A343034(2*n+1)-1)/2`
-/

namespace A132593.P5171079937604843628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343034 (2 * n + 1) - 1 : ℚ) / 2

end

end A132593.P5171079937604843628

namespace A132593

/-- `(A343034(2*n+1)-1)/2` -/
def P5171079937604843628.Spec : Prop :=
  ∀ n, P5171079937604843628.a n = (A132593 n : ℚ)

end A132593

/-! ## A132593.P12295489055270259064

`A078986(n)%A247335(n)`
-/

namespace A132593.P12295489055270259064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078986 n) (A247335 n)

end

end A132593.P12295489055270259064

namespace A132593

/-- `A078986(n)%A247335(n)` -/
def P12295489055270259064.Spec : Prop :=
  ∀ n, P12295489055270259064.a n = A132593 n

end A132593

/-! ## A132593.P16501853194165639457

`(A031149(A017005(n))-1)/2`
-/

namespace A132593.P16501853194165639457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031149 (A017005 n).toNat - 1 : ℚ) / 2

end

end A132593.P16501853194165639457

namespace A132593

/-- `(A031149(A017005(n))-1)/2` -/
def P16501853194165639457.Spec : Prop :=
  ∀ n, P16501853194165639457.a n = (A132593 n : ℚ)

end A132593

/-! ## A132593.P2632670006798222884

`(A116559(A017533(n))-1)/2`
-/

namespace A132593.P2632670006798222884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116559 (A017533 n).toNat - 1 : ℚ) / 2

end

end A132593.P2632670006798222884

namespace A132593

/-- `(A116559(A017533(n))-1)/2` -/
def P2632670006798222884.Spec : Prop :=
  ∀ n, P2632670006798222884.a n = (A132593 n : ℚ)

end A132593

/-! ## A132593.P15882870861008731242

`A000034(n)+A005667(n)²-2`
-/

namespace A132593.P15882870861008731242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A005667 n ^ 2 - 2)

end

end A132593.P15882870861008731242

namespace A132593

/-- `A000034(n)+A005667(n)²-2` -/
def P15882870861008731242.Spec : Prop :=
  ∀ n, P15882870861008731242.a n = A132593 n

end A132593

/-!
# A132594: Values X satisfying the equation: X(X + 1) - 7*Y^2 = 0.

The programs for A132594, the canonical program `A132594.P1993061017304293742` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132594 has offset 0).

The definition of A132594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132594.P1993061017304293742

`254*a(n-1)-a(n-2)+126` with `a(0)=0, a(1)=63`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132594

/-- `254*a(n-1)-a(n-2)+126` -/
def P1993061017304293742.Spec : Prop :=
  ∀ n, P1993061017304293742.a n = A132594 n

theorem P1993061017304293742.correct : P1993061017304293742.Spec := by
  intro n
  simp only [A132594]

end A132594

/-! ## A132594.P9443705328365565864

`(A001081(2*n)-1)/2`
-/

namespace A132594.P9443705328365565864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001081 (2 * n) - 1 : ℚ) / 2

end

end A132594.P9443705328365565864

namespace A132594

/-- `(A001081(2*n)-1)/2` -/
def P9443705328365565864.Spec : Prop :=
  ∀ n, P9443705328365565864.a n = (A132594 n : ℚ)

end A132594

/-! ## A132594.P11219519977743590123

`A001081(n)²-1`
-/

namespace A132594.P11219519977743590123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001081 n ^ 2 - 1

end

end A132594.P11219519977743590123

namespace A132594

/-- `A001081(n)²-1` -/
def P11219519977743590123.Spec : Prop :=
  ∀ n, P11219519977743590123.a n = A132594 n

end A132594

/-! ## A132594.P8077836824104947932

`7*A001080(n)²`
-/

namespace A132594.P8077836824104947932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A001080 n ^ 2

end

end A132594.P8077836824104947932

namespace A132594

/-- `7*A001080(n)²` -/
def P8077836824104947932.Spec : Prop :=
  ∀ n, P8077836824104947932.a n = A132594 n

end A132594

/-! ## A132594.P11318118499131943486

`(A090727(n)/2)²-1`
-/

namespace A132594.P11318118499131943486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A090727 n : ℚ) / 2) ^ 2 - 1

end

end A132594.P11318118499131943486

namespace A132594

/-- `(A090727(n)/2)²-1` -/
def P11318118499131943486.Spec : Prop :=
  ∀ n, P11318118499131943486.a n = (A132594 n : ℚ)

end A132594

/-!
# A132595: Number of ways to move a chess queen from the lower left corner to square (n,n), with the queen moving only up, right, or diagonally up-right.

The programs for A132595, there is no canonical definition to state claims against.
-/

/-! ## A132595.P9815567386037990593

`A132439(∑[4*n]+1)`
-/

namespace A132595.P9815567386037990593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132439 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A132595.P9815567386037990593

/-! ## A132595.P9852497946859063474

`record[gcd(A112467(n), A132439(n+1))]`
-/

namespace A132595.P9852497946859063474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A132439 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132595.P9852497946859063474

/-! ## A132595.P14323035198132266582

`A229345(∑[n+3])`
-/

namespace A132595.P14323035198132266582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229345 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132595.P14323035198132266582

/-! ## A132595.P4765017366040213526

`record[A229345(record[n-A210472(n)])]`
-/

namespace A132595.P4765017366040213526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A210472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229345 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132595.P4765017366040213526

/-! ## A132595.P10079279826364184916

`record[gcd(A225094(n+1), A229345(n))]`
-/

namespace A132595.P10079279826364184916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225094 (n + 1)) (A229345 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132595.P10079279826364184916

/-!
# A132596: X-values of solutions to the equation X*(X + 1) - 6*Y^2 = 0.

The programs for A132596, the canonical program `A132596.P16382786537045356623` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132596 has offset 0).

The definition of A132596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132596.P16382786537045356623

`10*a(n-1)-a(n-2)+4` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A132596

/-- `10*a(n-1)-a(n-2)+4` -/
def P16382786537045356623.Spec : Prop :=
  ∀ n, P16382786537045356623.a n = A132596 n

theorem P16382786537045356623.correct : P16382786537045356623.Spec := by
  intro n
  simp only [A132596]

end A132596

/-! ## A132596.P11546875916704465701

`2*A098297(n)`
-/

namespace A132596.P11546875916704465701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098297 n

end

end A132596.P11546875916704465701

namespace A132596

/-- `2*A098297(n)` -/
def P11546875916704465701.Spec : Prop :=
  ∀ n, P11546875916704465701.a n = A132596 n

end A132596

/-! ## A132596.P7563492651092485671

`(A001079(n)-1)/2`
-/

namespace A132596.P7563492651092485671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001079 n - 1 : ℚ) / 2

end

end A132596.P7563492651092485671

namespace A132596

/-- `(A001079(n)-1)/2` -/
def P7563492651092485671.Spec : Prop :=
  ∀ n, P7563492651092485671.a n = (A132596 n : ℚ)

end A132596

/-! ## A132596.P17618658470185994079

`∑[ogf((2x+2x^2)/(1-10x+x^2))]`
-/

namespace A132596.P17618658470185994079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2] [1, -10, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132596.P17618658470185994079

namespace A132596

/-- `∑[ogf((2x+2x^2)/(1-10x+x^2))]` -/
def P17618658470185994079.Spec : Prop :=
  ∀ n, P17618658470185994079.a n = A132596 n

end A132596

/-! ## A132596.P8853395325836957990

`A171640(n+1)-1`
-/

namespace A132596.P8853395325836957990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171640 (n + 1) - 1

end

end A132596.P8853395325836957990

namespace A132596

/-- `A171640(n+1)-1` -/
def P8853395325836957990.Spec : Prop :=
  ∀ n, P8853395325836957990.a n = A132596 n

end A132596

/-! ## A132596.P15523299273471644292

`floor(sqrt(6)*A004189(n))`
-/

namespace A132596.P15523299273471644292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (6 : ℝ) * (A004189 n : ℝ)⌋

end

end A132596.P15523299273471644292

namespace A132596

/-- `floor(sqrt(6)*A004189(n))` -/
def P15523299273471644292.Spec : Prop :=
  ∀ n, P15523299273471644292.a n = A132596 n

end A132596

/-! ## A132596.P867654734698296030

`xor(char[A001057(n)], A171640(n+1))`
-/

namespace A132596.P867654734698296030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A171640 (n + 1))

end

end A132596.P867654734698296030

namespace A132596

/-- `xor(char[A001057(n)], A171640(n+1))` -/
def P867654734698296030.Spec : Prop :=
  ∀ n, P867654734698296030.a n = A132596 n

end A132596

/-! ## A132596.P9373911524979401680

`xor(char[A061579(n)], A171640(n+1))`
-/

namespace A132596.P9373911524979401680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A171640 (n + 1))

end

end A132596.P9373911524979401680

namespace A132596

/-- `xor(char[A061579(n)], A171640(n+1))` -/
def P9373911524979401680.Spec : Prop :=
  ∀ n, P9373911524979401680.a n = A132596 n

end A132596

/-! ## A132596.P13159820281405924830

`xor(A343785(n+1)², A171640(n+1))`
-/

namespace A132596.P13159820281405924830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A343785 (n + 1) ^ 2) (A171640 (n + 1))

end

end A132596.P13159820281405924830

namespace A132596

/-- `xor(A343785(n+1)², A171640(n+1))` -/
def P13159820281405924830.Spec : Prop :=
  ∀ n, P13159820281405924830.a n = A132596 n

end A132596

/-! ## A132596.P1026225624291815135

`xor(A171640(n+1), A189820(3*(n+1)))`
-/

namespace A132596.P1026225624291815135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A171640 (n + 1)) (A189820 (3 * (n + 1)))

end

end A132596.P1026225624291815135

namespace A132596

/-- `xor(A171640(n+1), A189820(3*(n+1)))` -/
def P1026225624291815135.Spec : Prop :=
  ∀ n, P1026225624291815135.a n = A132596 n

end A132596

/-! ## A132596.P5140361261935372550

`xor(A014963(6*∑{d}[n+1, #]), A171640(n+1))`
-/

namespace A132596.P5140361261935372550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (6 * (∑ d ∈ Nat.divisors (f1 n), d))) (A171640 (n + 1))

end

end A132596.P5140361261935372550

namespace A132596

/-- `xor(A014963(6*∑{d}[n+1, #]), A171640(n+1))` -/
def P5140361261935372550.Spec : Prop :=
  ∀ n, P5140361261935372550.a n = A132596 n

end A132596

/-! ## A132596.P3073267696409762571

`xor(A160467(A131061(n)), A171640(n+1))`
-/

namespace A132596.P3073267696409762571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A160467 (A131061 n).toNat) (A171640 (n + 1))

end

end A132596.P3073267696409762571

namespace A132596

/-- `xor(A160467(A131061(n)), A171640(n+1))` -/
def P3073267696409762571.Spec : Prop :=
  ∀ n, P3073267696409762571.a n = A132596 n

end A132596

/-! ## A132596.P10296167332733316866

`A343785(A026179(2*(n+1)))+A171640(n+1)`
-/

namespace A132596.P10296167332733316866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (A026179 (2 * (n + 1))).toNat + A171640 (n + 1)

end

end A132596.P10296167332733316866

namespace A132596

/-- `A343785(A026179(2*(n+1)))+A171640(n+1)` -/
def P10296167332733316866.Spec : Prop :=
  ∀ n, P10296167332733316866.a n = A132596 n

end A132596

/-! ## A132596.P10006995156896781469

`floor(A001079(n)/2)`
-/

namespace A132596.P10006995156896781469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001079 n : ℚ) / 2⌋

end

end A132596.P10006995156896781469

namespace A132596

/-- `floor(A001079(n)/2)` -/
def P10006995156896781469.Spec : Prop :=
  ∀ n, P10006995156896781469.a n = A132596 n

end A132596

/-! ## A132596.P16866198550971310473

`floor(A087799(n)/4)`
-/

namespace A132596.P16866198550971310473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087799 n : ℚ) / 4⌋

end

end A132596.P16866198550971310473

namespace A132596

/-- `floor(A087799(n)/4)` -/
def P16866198550971310473.Spec : Prop :=
  ∀ n, P16866198550971310473.a n = A132596 n

end A132596

/-! ## A132596.P5113909373342529133

`(abs(A146311(n))-1)/2`
-/

namespace A132596.P5113909373342529133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A146311 n| - 1 : ℚ) / 2

end

end A132596.P5113909373342529133

namespace A132596

/-- `(abs(A146311(n))-1)/2` -/
def P5113909373342529133.Spec : Prop :=
  ∀ n, P5113909373342529133.a n = (A132596 n : ℚ)

end A132596

/-! ## A132596.P12709646879844265847

`floor(A080872(2*n)/2)`
-/

namespace A132596.P12709646879844265847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080872 (2 * n) : ℚ) / 2⌋

end

end A132596.P12709646879844265847

namespace A132596

/-- `floor(A080872(2*n)/2)` -/
def P12709646879844265847.Spec : Prop :=
  ∀ n, P12709646879844265847.a n = A132596 n

end A132596

/-! ## A132596.P298468437344780485

`(A142238(A004273(n))-1)/2`
-/

namespace A132596.P298468437344780485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142238 (A004273 n).toNat - 1 : ℚ) / 2

end

end A132596.P298468437344780485

namespace A132596

/-- `(A142238(A004273(n))-1)/2` -/
def P298468437344780485.Spec : Prop :=
  ∀ n, P298468437344780485.a n = (A132596 n : ℚ)

end A132596

/-! ## A132596.P13854622812626674602

`A031138(n+1)-A054320(n)`
-/

namespace A132596.P13854622812626674602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031138 (n + 1) - A054320 n

end

end A132596.P13854622812626674602

namespace A132596

/-- `A031138(n+1)-A054320(n)` -/
def P13854622812626674602.Spec : Prop :=
  ∀ n, P13854622812626674602.a n = A132596 n

end A132596

/-! ## A132596.P15304053114448227949

`A077288(2*n)-A004189(n)`
-/

namespace A132596.P15304053114448227949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077288 (2 * n) - A004189 n

end

end A132596.P15304053114448227949

namespace A132596

/-- `A077288(2*n)-A004189(n)` -/
def P15304053114448227949.Spec : Prop :=
  ∀ n, P15304053114448227949.a n = A132596 n

end A132596

/-!
# A132599: Record values in A132597.

The programs for A132599, there is no canonical definition to state claims against.
-/

/-! ## A132599.P16210773908180854999

`record[A132597(n+1)]`
-/

namespace A132599.P16210773908180854999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132599.P16210773908180854999

/-! ## A132599.P15800558810944813362

`A132597(A132600(n+1))`
-/

namespace A132599.P15800558810944813362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132597 (A132600 (n + 1)).toNat

end

end A132599.P15800558810944813362

/-! ## A132599.P5693229118601868109

`record[A132597(A028310(n))-A178333(n)]`
-/

namespace A132599.P5693229118601868109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132597 (A028310 n).toNat - A178333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132599.P5693229118601868109

/-! ## A132599.P17706033008644892411

`record[A132597(A028310(n))]%A016901(n)`
-/

namespace A132599.P17706033008644892411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132597 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A016901 n)

end

end A132599.P17706033008644892411

/-! ## A132599.P10211511772797093184

`record[A132597(A051340(n))]%A188165(n)`
-/

namespace A132599.P10211511772797093184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132597 (A051340 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A188165 n)

end

end A132599.P10211511772797093184

