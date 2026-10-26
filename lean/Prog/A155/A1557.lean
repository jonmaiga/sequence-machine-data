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
import Seq.B000.C032
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
import Seq.B001.C012
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A155701: a(n) = (4^n + 8)/3.

The programs for A155701, the canonical program `A155701.P9678384755752345565` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155701 has offset 0).

The definition of A155701 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^n+8)/3` (program `A155701.P2246045740196862987`, by `A155701.P2246045740196862987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155701.P2246045740196862987

`(4^n+8)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155701.P2246045740196862987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n + 8 : ℚ) / 3

end

end A155701.P2246045740196862987

namespace A155701

/-- `(4^n+8)/3` -/
def P2246045740196862987.Spec : Prop :=
  ∀ n, P2246045740196862987.a n = (A155701 n : ℚ)

theorem P2246045740196862987.correct : P2246045740196862987.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A155701, Nat.add_sub_cancel, A155701.P2246045740196862987.a, A155701.P9678384755752345565.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A155701, Nat.add_sub_cancel, A155701.P2246045740196862987.a, A155701.P9678384755752345565.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A155701

/-! ## A155701.P9678384755752345565

`4*a(n-1)-8` with `a(0)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155701

/-- `4*a(n-1)-8` -/
def P9678384755752345565.Spec : Prop :=
  ∀ n, P9678384755752345565.a n = A155701 n

theorem P9678384755752345565.correct : P9678384755752345565.Spec := by
  intro n
  simp only [A155701]

end A155701

/-! ## A155701.P14494788222835542305

`3+A002450(n)`
-/

namespace A155701.P14494788222835542305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + A002450 n

end

end A155701.P14494788222835542305

namespace A155701

/-- `3+A002450(n)` -/
def P14494788222835542305.Spec : Prop :=
  ∀ n, P14494788222835542305.a n = A155701 n

end A155701

/-! ## A155701.P9058033389550330832

`A154879(2*n)`
-/

namespace A155701.P9058033389550330832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154879 (2 * n)

end

end A155701.P9058033389550330832

namespace A155701

/-- `A154879(2*n)` -/
def P9058033389550330832.Spec : Prop :=
  ∀ n, P9058033389550330832.a n = A155701 n

end A155701

/-! ## A155701.P2985969499562815713

`A154890(2*n)`
-/

namespace A155701.P2985969499562815713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154890 (2 * n)

end

end A155701.P2985969499562815713

namespace A155701

/-- `A154890(2*n)` -/
def P2985969499562815713.Spec : Prop :=
  ∀ n, P2985969499562815713.a n = A155701 n

end A155701

/-! ## A155701.P4924463460855947814

`ogf((3-11x)/(1-5x+4x^2))`
-/

namespace A155701.P4924463460855947814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -11] [1, -5, 4] n

end

end A155701.P4924463460855947814

namespace A155701

/-- `ogf((3-11x)/(1-5x+4x^2))` -/
def P4924463460855947814.Spec : Prop :=
  ∀ n, P4924463460855947814.a n = A155701 n

end A155701

/-! ## A155701.P12725382949803937866

`floor(xor(8, 4^n)/3)`
-/

namespace A155701.P12725382949803937866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 8 (4 ^ n) : ℚ) / 3⌋

end

end A155701.P12725382949803937866

namespace A155701

/-- `floor(xor(8, 4^n)/3)` -/
def P12725382949803937866.Spec : Prop :=
  ∀ n, P12725382949803937866.a n = A155701 n

end A155701

/-! ## A155701.P8427715062691486413

`lcm(8, 2-a(n-1))` with `a(0)=3, a(1)=4`
-/

namespace A155701.P8427715062691486413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  Int.lcm 8 (2 - (a (n - 1) : ℤ))

end

end A155701.P8427715062691486413

namespace A155701

/-- `lcm(8, 2-a(n-1))` -/
def P8427715062691486413.Spec : Prop :=
  ∀ n, (P8427715062691486413.a n : ℤ) = A155701 n

end A155701

/-! ## A155701.P11456094307106455751

`a(n-1)+4^(n-1)` with `a(0)=3`
-/

namespace A155701.P11456094307106455751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A155701.P11456094307106455751

namespace A155701

/-- `a(n-1)+4^(n-1)` -/
def P11456094307106455751.Spec : Prop :=
  ∀ n, P11456094307106455751.a n = (A155701 n : ℚ)

end A155701

/-! ## A155701.P1999287307189454958

`a(n-1)/(4/8)²-8` with `a(0)=3`
-/

namespace A155701.P1999287307189454958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / ((4 : ℚ) / 8) ^ 2 - 8

end

end A155701.P1999287307189454958

namespace A155701

/-- `a(n-1)/(4/8)²-8` -/
def P1999287307189454958.Spec : Prop :=
  ∀ n, P1999287307189454958.a n = (A155701 n : ℚ)

end A155701

/-! ## A155701.P11154117228758263547

`∑[4^((n-1)%(n+1))]+2`
-/

namespace A155701.P11154117228758263547
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A155701.P11154117228758263547

namespace A155701

/-- `∑[4^((n-1)%(n+1))]+2` -/
def P11154117228758263547.Spec : Prop :=
  ∀ n, P11154117228758263547.a n = (A155701 n : ℚ)

end A155701

/-! ## A155701.P7576908001639252852

`∑[4^(n-gcd(5, a(n-1)))]` with `a(0)=3`
-/

namespace A155701.P7576908001639252852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  (4 : ℚ) ^ ((n : ℤ) - (Int.gcd 5 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155701.P7576908001639252852

namespace A155701

/-- `∑[4^(n-gcd(5, a(n-1)))]` -/
def P7576908001639252852.Spec : Prop :=
  ∀ n, P7576908001639252852.a n = (A155701 n : ℚ)

end A155701

/-! ## A155701.P3063665684675867719

`∑[4^(n-a(n-1)%3)]` with `a(0)=3, a(1)=1`
-/

namespace A155701.P3063665684675867719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  (4 : ℚ) ^ ((n : ℤ) - Int.tmod (SequenceMachineLib.roundAway (f1 (n - 1))) 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155701.P3063665684675867719

namespace A155701

/-- `∑[4^(n-a(n-1)%3)]` -/
def P3063665684675867719.Spec : Prop :=
  ∀ n, P3063665684675867719.a n = (A155701 n : ℚ)

end A155701

/-! ## A155701.P8683433877102126346

`-xor(-a(n-1), 4^(n-1))` with `a(0)=3`
-/

namespace A155701.P8683433877102126346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  -Int.xor (-a (n - 1)) (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A155701.P8683433877102126346

namespace A155701

/-- `-xor(-a(n-1), 4^(n-1))` -/
def P8683433877102126346.Spec : Prop :=
  ∀ n, P8683433877102126346.a n = A155701 n

end A155701

/-! ## A155701.P18153773719790521932

`record[a(n-1)-(-2)^(n-1)]` with `a(0)=3`
-/

namespace A155701.P18153773719790521932
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155701.P18153773719790521932

namespace A155701

/-- `record[a(n-1)-(-2)^(n-1)]` -/
def P18153773719790521932.Spec : Prop :=
  ∀ n, P18153773719790521932.a n = (A155701 n : ℚ)

end A155701

/-! ## A155701.P11894832075699652068

`A163834(n)+1`
-/

namespace A155701.P11894832075699652068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163834 n + 1

end

end A155701.P11894832075699652068

namespace A155701

/-- `A163834(n)+1` -/
def P11894832075699652068.Spec : Prop :=
  ∀ n, P11894832075699652068.a n = A155701 n

end A155701

/-! ## A155701.P8067157907005538827

`A047849(n)+2`
-/

namespace A155701.P8067157907005538827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n + 2

end

end A155701.P8067157907005538827

namespace A155701

/-- `A047849(n)+2` -/
def P8067157907005538827.Spec : Prop :=
  ∀ n, P8067157907005538827.a n = A155701 n

end A155701

/-! ## A155701.P3068589435048092101

`A163868(n)-1`
-/

namespace A155701.P3068589435048092101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163868 n - 1

end

end A155701.P3068589435048092101

namespace A155701

/-- `A163868(n)-1` -/
def P3068589435048092101.Spec : Prop :=
  ∀ n, P3068589435048092101.a n = A155701 n

end A155701

/-! ## A155701.P8276236327809312729

`A156605(n)-4`
-/

namespace A155701.P8276236327809312729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156605 n - 4

end

end A155701.P8276236327809312729

namespace A155701

/-- `A156605(n)-4` -/
def P8276236327809312729.Spec : Prop :=
  ∀ n, P8276236327809312729.a n = A155701 n

end A155701

/-! ## A155701.P249237897257021481

`Δ[A323397(n)]+1`
-/

namespace A155701.P249237897257021481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A155701.P249237897257021481

namespace A155701

/-- `Δ[A323397(n)]+1` -/
def P249237897257021481.Spec : Prop :=
  ∀ n, P249237897257021481.a n = A155701 n

end A155701

/-!
# A155702: Primes of the form 2n^2-9.

The programs for A155702, the canonical program `A155702.P16283865420383834653` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155702 has offset 1).

The definition of A155702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155702.P16283865420383834653

`p?[2*n²-9]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155702

/-- `p?[2*n²-9]` -/
def P16283865420383834653.Spec : Prop :=
  ∀ n, P16283865420383834653.a n = A155702 (n + 1)

theorem P16283865420383834653.correct : P16283865420383834653.Spec := by
  intro n
  simp only [A155702, Nat.add_sub_cancel]

end A155702

/-! ## A155702.P14608086201341557935

`or(1, p?[n*2*n-9])`
-/

namespace A155702.P14608086201341557935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A155702.P14608086201341557935

namespace A155702

/-- `or(1, p?[n*2*n-9])` -/
def P14608086201341557935.Spec : Prop :=
  ∀ n, P14608086201341557935.a n = A155702 (n + 1)

end A155702

/-! ## A155702.P4752555978080845284

`xor(1, xor(1, p?[n*2*n-9]))`
-/

namespace A155702.P4752555978080845284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n) : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)))

end

end A155702.P4752555978080845284

namespace A155702

/-- `xor(1, xor(1, p?[n*2*n-9]))` -/
def P4752555978080845284.Spec : Prop :=
  ∀ n, P4752555978080845284.a n = A155702 (n + 1)

end A155702

/-! ## A155702.P831801394393823875

`round(sqrt(p?[A067728(n+2)-1]²+1))`
-/

namespace A155702.P831801394393823875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067728 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℝ))

end

end A155702.P831801394393823875

namespace A155702

/-- `round(sqrt(p?[A067728(n+2)-1]²+1))` -/
def P831801394393823875.Spec : Prop :=
  ∀ n, P831801394393823875.a n = A155702 (n + 1)

end A155702

/-! ## A155702.P13928722676833325808

`p?[A153037(n)]%A001546(n)`
-/

namespace A155702.P13928722676833325808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001546 n)

end

end A155702.P13928722676833325808

namespace A155702

/-- `p?[A153037(n)]%A001546(n)` -/
def P13928722676833325808.Spec : Prop :=
  ∀ n, P13928722676833325808.a n = A155702 (n + 1)

end A155702

/-! ## A155702.P536305238003236933

`record[p?[A161532(A324344(n))-2]]`
-/

namespace A155702.P536305238003236933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 (A324344 n).toNat - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155702.P536305238003236933

namespace A155702

/-- `record[p?[A161532(A324344(n))-2]]` -/
def P536305238003236933.Spec : Prop :=
  ∀ n, P536305238003236933.a n = A155702 (n + 1)

end A155702

/-! ## A155702.P5390801394441023892

`char[A017212(n)]+p?[A153037(n)]`
-/

namespace A155702.P5390801394441023892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A155702.P5390801394441023892

namespace A155702

/-- `char[A017212(n)]+p?[A153037(n)]` -/
def P5390801394441023892.Spec : Prop :=
  ∀ n, P5390801394441023892.a n = A155702 (n + 1)

end A155702

/-! ## A155702.P792375661384623369

`A000007(n+1)+p?[A153037(n)]`
-/

namespace A155702.P792375661384623369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155702.P792375661384623369

namespace A155702

/-- `A000007(n+1)+p?[A153037(n)]` -/
def P792375661384623369.Spec : Prop :=
  ∀ n, P792375661384623369.a n = A155702 (n + 1)

end A155702

/-! ## A155702.P710638877553004679

`A000038(n+1)+p?[A153037(n)]`
-/

namespace A155702.P710638877553004679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155702.P710638877553004679

namespace A155702

/-- `A000038(n+1)+p?[A153037(n)]` -/
def P710638877553004679.Spec : Prop :=
  ∀ n, P710638877553004679.a n = A155702 (n + 1)

end A155702

/-! ## A155702.P6939249871916798827

`p?[A153037(n)]*A158388(n+1)`
-/

namespace A155702.P6939249871916798827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A158388 (n + 1)

end

end A155702.P6939249871916798827

namespace A155702

/-- `p?[A153037(n)]*A158388(n+1)` -/
def P6939249871916798827.Spec : Prop :=
  ∀ n, P6939249871916798827.a n = A155702 (n + 1)

end A155702

/-! ## A155702.P14403898179753911764

`A007318(C(2, n))*p?[A153037(n)]`
-/

namespace A155702.P14403898179753911764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155702.P14403898179753911764

namespace A155702

/-- `A007318(C(2, n))*p?[A153037(n)]` -/
def P14403898179753911764.Spec : Prop :=
  ∀ n, P14403898179753911764.a n = A155702 (n + 1)

end A155702

/-! ## A155702.P14901502887271147356

`record[p?[A161532(A003963(n+1))-2]]`
-/

namespace A155702.P14901502887271147356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 (A003963 (n + 1)).toNat - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155702.P14901502887271147356

namespace A155702

/-- `record[p?[A161532(A003963(n+1))-2]]` -/
def P14901502887271147356.Spec : Prop :=
  ∀ n, P14901502887271147356.a n = A155702 (n + 1)

end A155702

/-! ## A155702.P12835578836920885295

`(A000034(n)-1)!*p?[A153037(n)]`
-/

namespace A155702.P12835578836920885295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000034 n - 1).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155702.P12835578836920885295

namespace A155702

/-- `(A000034(n)-1)!*p?[A153037(n)]` -/
def P12835578836920885295.Spec : Prop :=
  ∀ n, P12835578836920885295.a n = A155702 (n + 1)

end A155702

/-! ## A155702.P796208989340823115

`p?[A153037(n)]+C(2, A000203(n+2))`
-/

namespace A155702.P796208989340823115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A155702.P796208989340823115

namespace A155702

/-- `p?[A153037(n)]+C(2, A000203(n+2))` -/
def P796208989340823115.Spec : Prop :=
  ∀ n, P796208989340823115.a n = A155702 (n + 1)

end A155702

/-! ## A155702.P5980776978166326822

`p?[A153037(n)]/A007318(and(2, n²-1))`
-/

namespace A155702.P5980776978166326822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Int.land 2 ((n ^ 2 : ℤ) - 1)).toNat : ℚ)

end

end A155702.P5980776978166326822

namespace A155702

/-- `p?[A153037(n)]/A007318(and(2, n²-1))` -/
def P5980776978166326822.Spec : Prop :=
  ∀ n, P5980776978166326822.a n = (A155702 (n + 1) : ℚ)

end A155702

/-! ## A155702.P15810699609358015395

`∩[A256397(n+1), A153037(n)]`
-/

namespace A155702.P15810699609358015395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155702.P15810699609358015395

namespace A155702

/-- `∩[A256397(n+1), A153037(n)]` -/
def P15810699609358015395.Spec : Prop :=
  ∀ n, (P15810699609358015395.a n : ℤ) = A155702 (n + 1)

end A155702

/-!
# A155703: Primes p such that 2*p^2 + 16*p + 23 is also prime.

The programs for A155703, there is no canonical definition to state claims against.
-/

/-! ## A155703.P5158582914801449339

`p?[eq[1, A001221(A153037(n))]]`
-/

namespace A155703.P5158582914801449339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A153037 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155703.P5158582914801449339

/-! ## A155703.P4839542977298912408

`or(1, A069290(A206981(n+1)))`
-/

namespace A155703.P4839542977298912408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A069290 (A206981 (n + 1)).toNat)

end

end A155703.P4839542977298912408

/-! ## A155703.P8399508342787913693

`∩[A069677(n+1), A274829(n+1)]`
-/

namespace A155703.P8399508342787913693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155703.P8399508342787913693

/-!
# A155704: Triangle read by rows where T(m,n)=2*m*n + m + n + 10.

The programs for A155704, the canonical program `A155704.P8650019513373998533` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155704 has offset 1).

The definition of A155704 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1+10` (program `A155704.P8650019513373998533`, by `A155704.P8650019513373998533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155704.P8650019513373998533

`2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1+10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155704

/-- `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1+10` -/
def P8650019513373998533.Spec : Prop :=
  ∀ n, (P8650019513373998533.a n : ℤ) = A155704 (n + 1)

theorem P8650019513373998533.correct : P8650019513373998533.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel]

end A155704

/-! ## A155704.P4662872735598390219

`A163674(n+1)+1`
-/

namespace A155704.P4662872735598390219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163674 (n + 1) + 1

end

end A155704.P4662872735598390219

namespace A155704

/-- `A163674(n+1)+1` -/
def P4662872735598390219.Spec : Prop :=
  ∀ n, P4662872735598390219.a n = A155704 (n + 1)

theorem P4662872735598390219.correct : P4662872735598390219.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P4662872735598390219.a, A155704.P8650019513373998533.a, A163674, A163674.P13425160265099091409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P7471533164086711156

`A163657(n+1)+2`
-/

namespace A155704.P7471533164086711156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163657 (n + 1) + 2

end

end A155704.P7471533164086711156

namespace A155704

/-- `A163657(n+1)+2` -/
def P7471533164086711156.Spec : Prop :=
  ∀ n, P7471533164086711156.a n = A155704 (n + 1)

theorem P7471533164086711156.correct : P7471533164086711156.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P7471533164086711156.a, A155704.P8650019513373998533.a, A163657, A163657.P12720512025270475605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P15791285518571465576

`A163672(n+1)+3`
-/

namespace A155704.P15791285518571465576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) + 3

end

end A155704.P15791285518571465576

namespace A155704

/-- `A163672(n+1)+3` -/
def P15791285518571465576.Spec : Prop :=
  ∀ n, P15791285518571465576.a n = A155704 (n + 1)

theorem P15791285518571465576.correct : P15791285518571465576.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P15791285518571465576.a, A155704.P8650019513373998533.a, A163672, A163672.P97015289542930309.a, A163652, A163652.P14560044892926155095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P12690838082342256277

`A163652(n+1)+4`
-/

namespace A155704.P12690838082342256277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) + 4

end

end A155704.P12690838082342256277

namespace A155704

/-- `A163652(n+1)+4` -/
def P12690838082342256277.Spec : Prop :=
  ∀ n, P12690838082342256277.a n = A155704 (n + 1)

theorem P12690838082342256277.correct : P12690838082342256277.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P12690838082342256277.a, A155704.P8650019513373998533.a, A163652, A163652.P14560044892926155095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P15520301816576092202

`A154631(n+1)+5`
-/

namespace A155704.P15520301816576092202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) + 5

end

end A155704.P15520301816576092202

namespace A155704

/-- `A154631(n+1)+5` -/
def P15520301816576092202.Spec : Prop :=
  ∀ n, P15520301816576092202.a n = A155704 (n + 1)

theorem P15520301816576092202.correct : P15520301816576092202.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P15520301816576092202.a, A155704.P8650019513373998533.a, A154631, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P17941847991558611743

`A154685(n+1)+6`
-/

namespace A155704.P17941847991558611743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) + 6

end

end A155704.P17941847991558611743

namespace A155704

/-- `A154685(n+1)+6` -/
def P17941847991558611743.Spec : Prop :=
  ∀ n, P17941847991558611743.a n = A155704 (n + 1)

theorem P17941847991558611743.correct : P17941847991558611743.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P17941847991558611743.a, A155704.P8650019513373998533.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P4258355171792802067

`A154681(n+1)+7`
-/

namespace A155704.P4258355171792802067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) + 7

end

end A155704.P4258355171792802067

namespace A155704

/-- `A154681(n+1)+7` -/
def P4258355171792802067.Spec : Prop :=
  ∀ n, P4258355171792802067.a n = A155704 (n + 1)

theorem P4258355171792802067.correct : P4258355171792802067.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P4258355171792802067.a, A155704.P8650019513373998533.a, A154681, A154681.P7152750088420565166.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P18243113277805086944

`A155705(n+1)+8`
-/

namespace A155704.P18243113277805086944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) + 8

end

end A155704.P18243113277805086944

namespace A155704

/-- `A155705(n+1)+8` -/
def P18243113277805086944.Spec : Prop :=
  ∀ n, P18243113277805086944.a n = A155704 (n + 1)

theorem P18243113277805086944.correct : P18243113277805086944.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P18243113277805086944.a, A155704.P8650019513373998533.a, A155705, A155705.P4288212106648644331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P11911931975703868397

`A144650(n+1)+9`
-/

namespace A155704.P11911931975703868397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) + 9

end

end A155704.P11911931975703868397

namespace A155704

/-- `A144650(n+1)+9` -/
def P11911931975703868397.Spec : Prop :=
  ∀ n, P11911931975703868397.a n = A155704 (n + 1)

theorem P11911931975703868397.correct : P11911931975703868397.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P11911931975703868397.a, A155704.P8650019513373998533.a, A144650, A144650.P1368958266719371934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P3327145546573561414

`A144562(n+1)+11`
-/

namespace A155704.P3327145546573561414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) + 11

end

end A155704.P3327145546573561414

namespace A155704

/-- `A144562(n+1)+11` -/
def P3327145546573561414.Spec : Prop :=
  ∀ n, P3327145546573561414.a n = A155704 (n + 1)

theorem P3327145546573561414.correct : P3327145546573561414.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P3327145546573561414.a, A155704.P8650019513373998533.a, A144562, A144562.P16025350127225318845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P14147991913403276930

`A155550(n+1)+16`
-/

namespace A155704.P14147991913403276930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + 16

end

end A155704.P14147991913403276930

namespace A155704

/-- `A155550(n+1)+16` -/
def P14147991913403276930.Spec : Prop :=
  ∀ n, P14147991913403276930.a n = A155704 (n + 1)

theorem P14147991913403276930.correct : P14147991913403276930.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P14147991913403276930.a, A155704.P8650019513373998533.a, A155550, A155550.P8821418468961937899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P9712768987601777294

`4/2+A083487(n+1)+8`
-/

namespace A155704.P9712768987601777294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 2 + (A083487 (n + 1) + 8 : ℚ)

end

end A155704.P9712768987601777294

namespace A155704

/-- `4/2+A083487(n+1)+8` -/
def P9712768987601777294.Spec : Prop :=
  ∀ n, P9712768987601777294.a n = (A155704 (n + 1) : ℚ)

theorem P9712768987601777294.correct : P9712768987601777294.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P9712768987601777294.a, A155704.P8650019513373998533.a, A083487, A083487.P8449240486603242499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P6461016195806484013

`A172292(n+1)-A155551(n+1)`
-/

namespace A155704.P6461016195806484013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - A155551 (n + 1)

end

end A155704.P6461016195806484013

namespace A155704

/-- `A172292(n+1)-A155551(n+1)` -/
def P6461016195806484013.Spec : Prop :=
  ∀ n, P6461016195806484013.a n = A155704 (n + 1)

theorem P6461016195806484013.correct : P6461016195806484013.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P6461016195806484013.a, A155704.P8650019513373998533.a, A155551, A155551.P15753300162867372955.a, A172292, A172292.P15210621315686720524.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P6970451911434282072

`A155151(n+1)-A324937(n+1)`
-/

namespace A155704.P6970451911434282072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - A324937 (n + 1)

end

end A155704.P6970451911434282072

namespace A155704

/-- `A155151(n+1)-A324937(n+1)` -/
def P6970451911434282072.Spec : Prop :=
  ∀ n, P6970451911434282072.a n = A155704 (n + 1)

theorem P6970451911434282072.correct : P6970451911434282072.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P6970451911434282072.a, A155704.P8650019513373998533.a, A155151, A155151.P14048722157311829906.a, A324937, A324937.P12117470399023503512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P10438472155117011015

`A155151(n+1)+1-A144670(n+1)`
-/

namespace A155704.P10438472155117011015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) + (1 - A144670 (n + 1))

end

end A155704.P10438472155117011015

namespace A155704

/-- `A155151(n+1)+1-A144670(n+1)` -/
def P10438472155117011015.Spec : Prop :=
  ∀ n, P10438472155117011015.a n = A155704 (n + 1)

theorem P10438472155117011015.correct : P10438472155117011015.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P10438472155117011015.a, A155704.P8650019513373998533.a, A144670, A144670.P16046816963376564463.a, A155151, A155151.P14048722157311829906.a, A324937, A324937.P12117470399023503512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P15620488553209507286

`A155156(n+1)+1-A155551(n+1)`
-/

namespace A155704.P15620488553209507286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) + (1 - A155551 (n + 1))

end

end A155704.P15620488553209507286

namespace A155704

/-- `A155156(n+1)+1-A155551(n+1)` -/
def P15620488553209507286.Spec : Prop :=
  ∀ n, P15620488553209507286.a n = A155704 (n + 1)

theorem P15620488553209507286.correct : P15620488553209507286.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P15620488553209507286.a, A155704.P8650019513373998533.a, A155156, A155156.P11088672852986007837.a, A155551, A155551.P15753300162867372955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P16825725630436624166

`A172292(n+1)+1-A324937(n+1)`
-/

namespace A155704.P16825725630436624166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) + (1 - A324937 (n + 1))

end

end A155704.P16825725630436624166

namespace A155704

/-- `A172292(n+1)+1-A324937(n+1)` -/
def P16825725630436624166.Spec : Prop :=
  ∀ n, P16825725630436624166.a n = A155704 (n + 1)

theorem P16825725630436624166.correct : P16825725630436624166.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P16825725630436624166.a, A155704.P8650019513373998533.a, A172292, A172292.P15210621315686720524.a, A324937, A324937.P12117470399023503512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P7163661273902185141

`A172292(n+1)+2-A144670(n+1)`
-/

namespace A155704.P7163661273902185141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) + (2 - A144670 (n + 1))

end

end A155704.P7163661273902185141

namespace A155704

/-- `A172292(n+1)+2-A144670(n+1)` -/
def P7163661273902185141.Spec : Prop :=
  ∀ n, P7163661273902185141.a n = A155704 (n + 1)

theorem P7163661273902185141.correct : P7163661273902185141.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P7163661273902185141.a, A155704.P8650019513373998533.a, A144670, A144670.P16046816963376564463.a, A172292, A172292.P15210621315686720524.a, A324937, A324937.P12117470399023503512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-! ## A155704.P5555546348078233364

`A163676(n+1)+2-A155551(n+1)`
-/

namespace A155704.P5555546348078233364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) + (2 - A155551 (n + 1))

end

end A155704.P5555546348078233364

namespace A155704

/-- `A163676(n+1)+2-A155551(n+1)` -/
def P5555546348078233364.Spec : Prop :=
  ∀ n, P5555546348078233364.a n = A155704 (n + 1)

theorem P5555546348078233364.correct : P5555546348078233364.Spec := by
  intro n
  simp only [A155704, Nat.add_sub_cancel, A155704.P5555546348078233364.a, A155704.P8650019513373998533.a, A155551, A155551.P15753300162867372955.a, A163676, A163676.P4041084556409764895.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155704

/-!
# A155705: Triangle read by rows where T(m,n) = 2*m*n + m + n + 2.

The programs for A155705, the canonical program `A155705.P4288212106648644331` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155705 has offset 1).

The definition of A155705 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1+2` (program `A155705.P4288212106648644331`, by `A155705.P4288212106648644331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155705.P4288212106648644331

`2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1+2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155705

/-- `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1+2` -/
def P4288212106648644331.Spec : Prop :=
  ∀ n, (P4288212106648644331.a n : ℤ) = A155705 (n + 1)

theorem P4288212106648644331.correct : P4288212106648644331.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel]

end A155705

/-! ## A155705.P7822807093824708051

`A144650(n+1)+1`
-/

namespace A155705.P7822807093824708051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) + 1

end

end A155705.P7822807093824708051

namespace A155705

/-- `A144650(n+1)+1` -/
def P7822807093824708051.Spec : Prop :=
  ∀ n, P7822807093824708051.a n = A155705 (n + 1)

theorem P7822807093824708051.correct : P7822807093824708051.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P7822807093824708051.a, A155705.P4288212106648644331.a, A144650, A144650.P1368958266719371934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P8826044266406297818

`A083487(n+1)+2`
-/

namespace A155705.P8826044266406297818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) + 2

end

end A155705.P8826044266406297818

namespace A155705

/-- `A083487(n+1)+2` -/
def P8826044266406297818.Spec : Prop :=
  ∀ n, P8826044266406297818.a n = A155705 (n + 1)

theorem P8826044266406297818.correct : P8826044266406297818.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P8826044266406297818.a, A155705.P4288212106648644331.a, A083487, A083487.P8449240486603242499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P7873471038007855521

`A154681(n+1)-1`
-/

namespace A155705.P7873471038007855521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) - 1

end

end A155705.P7873471038007855521

namespace A155705

/-- `A154681(n+1)-1` -/
def P7873471038007855521.Spec : Prop :=
  ∀ n, P7873471038007855521.a n = A155705 (n + 1)

theorem P7873471038007855521.correct : P7873471038007855521.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P7873471038007855521.a, A155705.P4288212106648644331.a, A154681, A154681.P7152750088420565166.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P14998603833008385818

`A144562(n+1)+3`
-/

namespace A155705.P14998603833008385818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) + 3

end

end A155705.P14998603833008385818

namespace A155705

/-- `A144562(n+1)+3` -/
def P14998603833008385818.Spec : Prop :=
  ∀ n, P14998603833008385818.a n = A155705 (n + 1)

theorem P14998603833008385818.correct : P14998603833008385818.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P14998603833008385818.a, A155705.P4288212106648644331.a, A144562, A144562.P16025350127225318845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P10801029224185168873

`A154685(n+1)-2`
-/

namespace A155705.P10801029224185168873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) - 2

end

end A155705.P10801029224185168873

namespace A155705

/-- `A154685(n+1)-2` -/
def P10801029224185168873.Spec : Prop :=
  ∀ n, P10801029224185168873.a n = A155705 (n + 1)

theorem P10801029224185168873.correct : P10801029224185168873.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P10801029224185168873.a, A155705.P4288212106648644331.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P3434131509527824159

`A154631(n+1)-3`
-/

namespace A155705.P3434131509527824159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) - 3

end

end A155705.P3434131509527824159

namespace A155705

/-- `A154631(n+1)-3` -/
def P3434131509527824159.Spec : Prop :=
  ∀ n, P3434131509527824159.a n = A155705 (n + 1)

theorem P3434131509527824159.correct : P3434131509527824159.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P3434131509527824159.a, A155705.P4288212106648644331.a, A154631, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P2064733102526765480

`A154680(n+1)+4`
-/

namespace A155705.P2064733102526765480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) + 4

end

end A155705.P2064733102526765480

namespace A155705

/-- `A154680(n+1)+4` -/
def P2064733102526765480.Spec : Prop :=
  ∀ n, P2064733102526765480.a n = A155705 (n + 1)

theorem P2064733102526765480.correct : P2064733102526765480.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P2064733102526765480.a, A155705.P4288212106648644331.a, A154680, A154680.P11179278242672813373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P13698088758533708838

`A154684(n+1)+5`
-/

namespace A155705.P13698088758533708838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + 5

end

end A155705.P13698088758533708838

namespace A155705

/-- `A154684(n+1)+5` -/
def P13698088758533708838.Spec : Prop :=
  ∀ n, P13698088758533708838.a n = A155705 (n + 1)

theorem P13698088758533708838.correct : P13698088758533708838.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P13698088758533708838.a, A155705.P4288212106648644331.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P14797871733564645022

`A163652(n+1)-4`
-/

namespace A155705.P14797871733564645022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) - 4

end

end A155705.P14797871733564645022

namespace A155705

/-- `A163652(n+1)-4` -/
def P14797871733564645022.Spec : Prop :=
  ∀ n, P14797871733564645022.a n = A155705 (n + 1)

theorem P14797871733564645022.correct : P14797871733564645022.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P14797871733564645022.a, A155705.P4288212106648644331.a, A163652, A163652.P14560044892926155095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P9867971227936275115

`A155724(n+1)+6`
-/

namespace A155705.P9867971227936275115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) + 6

end

end A155705.P9867971227936275115

namespace A155705

/-- `A155724(n+1)+6` -/
def P9867971227936275115.Spec : Prop :=
  ∀ n, P9867971227936275115.a n = A155705 (n + 1)

theorem P9867971227936275115.correct : P9867971227936275115.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P9867971227936275115.a, A155705.P4288212106648644331.a, A155724, A155724.P13035978009969684852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P11609589303498390107

`A163672(n+1)-5`
-/

namespace A155705.P11609589303498390107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) - 5

end

end A155705.P11609589303498390107

namespace A155705

/-- `A163672(n+1)-5` -/
def P11609589303498390107.Spec : Prop :=
  ∀ n, P11609589303498390107.a n = A155705 (n + 1)

theorem P11609589303498390107.correct : P11609589303498390107.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P11609589303498390107.a, A155705.P4288212106648644331.a, A163672, A163672.P97015289542930309.a, A163652, A163652.P14560044892926155095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P12285102569016622355

`A155546(n+1)+7`
-/

namespace A155705.P12285102569016622355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 7

end

end A155705.P12285102569016622355

namespace A155705

/-- `A155546(n+1)+7` -/
def P12285102569016622355.Spec : Prop :=
  ∀ n, P12285102569016622355.a n = A155705 (n + 1)

theorem P12285102569016622355.correct : P12285102569016622355.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P12285102569016622355.a, A155705.P4288212106648644331.a, A155546, A155546.P2386952917106834247.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P7638097191293060395

`A163657(n+1)-6`
-/

namespace A155705.P7638097191293060395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163657 (n + 1) - 6

end

end A155705.P7638097191293060395

namespace A155705

/-- `A163657(n+1)-6` -/
def P7638097191293060395.Spec : Prop :=
  ∀ n, P7638097191293060395.a n = A155705 (n + 1)

theorem P7638097191293060395.correct : P7638097191293060395.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P7638097191293060395.a, A155705.P4288212106648644331.a, A163657, A163657.P12720512025270475605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P8467428407999614972

`A155550(n+1)+8`
-/

namespace A155705.P8467428407999614972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + 8

end

end A155705.P8467428407999614972

namespace A155705

/-- `A155550(n+1)+8` -/
def P8467428407999614972.Spec : Prop :=
  ∀ n, P8467428407999614972.a n = A155705 (n + 1)

theorem P8467428407999614972.correct : P8467428407999614972.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P8467428407999614972.a, A155705.P4288212106648644331.a, A155550, A155550.P8821418468961937899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P8133336354227194034

`A163674(n+1)-7`
-/

namespace A155705.P8133336354227194034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163674 (n + 1) - 7

end

end A155705.P8133336354227194034

namespace A155705

/-- `A163674(n+1)-7` -/
def P8133336354227194034.Spec : Prop :=
  ∀ n, P8133336354227194034.a n = A155705 (n + 1)

theorem P8133336354227194034.correct : P8133336354227194034.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P8133336354227194034.a, A155705.P4288212106648644331.a, A163674, A163674.P13425160265099091409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P809322146504564930

`A144670(n+1)+9`
-/

namespace A155705.P809322146504564930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144670 (n + 1) + 9

end

end A155705.P809322146504564930

namespace A155705

/-- `A144670(n+1)+9` -/
def P809322146504564930.Spec : Prop :=
  ∀ n, P809322146504564930.a n = A155705 (n + 1)

theorem P809322146504564930.correct : P809322146504564930.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P809322146504564930.a, A155705.P4288212106648644331.a, A144670, A144670.P16046816963376564463.a, A324937, A324937.P12117470399023503512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P9617414820497985775

`A155704(n+1)-8`
-/

namespace A155705.P9617414820497985775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155704 (n + 1) - 8

end

end A155705.P9617414820497985775

namespace A155705

/-- `A155704(n+1)-8` -/
def P9617414820497985775.Spec : Prop :=
  ∀ n, P9617414820497985775.a n = A155705 (n + 1)

theorem P9617414820497985775.correct : P9617414820497985775.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P9617414820497985775.a, A155705.P4288212106648644331.a, A155704, A155704.P8650019513373998533.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P13362446818250361871

`A155551(n+1)+11`
-/

namespace A155705.P13362446818250361871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155551 (n + 1) + 11

end

end A155705.P13362446818250361871

namespace A155705

/-- `A155551(n+1)+11` -/
def P13362446818250361871.Spec : Prop :=
  ∀ n, P13362446818250361871.a n = A155705 (n + 1)

theorem P13362446818250361871.correct : P13362446818250361871.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P13362446818250361871.a, A155705.P4288212106648644331.a, A155551, A155551.P15753300162867372955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-! ## A155705.P6947665549213923089

`A155151(n+1)/2+1`
-/

namespace A155705.P6947665549213923089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155151 (n + 1) : ℚ) / 2 + 1

end

end A155705.P6947665549213923089

namespace A155705

/-- `A155151(n+1)/2+1` -/
def P6947665549213923089.Spec : Prop :=
  ∀ n, P6947665549213923089.a n = (A155705 (n + 1) : ℚ)

theorem P6947665549213923089.correct : P6947665549213923089.Spec := by
  intro n
  simp only [A155705, Nat.add_sub_cancel, A155705.P6947665549213923089.a, A155705.P4288212106648644331.a, A155151, A155151.P14048722157311829906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155705

/-!
# A155706: A(n,m,k)=If[m less than n, 1, -1]; p(x,k)=(-1)^n*CharacteristicPolynomial[A[n,m,k],x]; t(n,m)=coefficients(p(x,n)+x^n*p(1/x,n)), triangle read by rows.

The programs for A155706, there is no canonical definition to state claims against.
-/

/-! ## A155706.P9700705258085206272

`ceil(A154690(n)/2)`
-/

namespace A155706.P9700705258085206272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154690 n : ℚ) / 2⌉

end

end A155706.P9700705258085206272

/-! ## A155706.P11253576174890931828

`ceil((A174669(n)+∏[char[∑[n+1]]+1])/2)`
-/

namespace A155706.P11253576174890931828
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174669 n + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2⌉

end

end A155706.P11253576174890931828

/-! ## A155706.P14393701539079427003

`ceil((A038207(n)+A013609(n))/2)`
-/

namespace A155706.P14393701539079427003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038207 n + A013609 n : ℚ) / 2⌉

end

end A155706.P14393701539079427003

/-! ## A155706.P14763855149227096526

`ceil(A007318(n)/2*A271709(n))`
-/

namespace A155706.P14763855149227096526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 n : ℚ) / 2 * (A271709 n : ℚ)⌉

end

end A155706.P14763855149227096526

/-! ## A155706.P12734914508665990190

`ceil((A013609(n)+abs(A065109(n)))/2)`
-/

namespace A155706.P12734914508665990190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A013609 n + |A065109 n| : ℚ) / 2⌉

end

end A155706.P12734914508665990190

/-! ## A155706.P7048235304980239384

`ceil((A038207(n)+abs(A303872(n)))/2)`
-/

namespace A155706.P7048235304980239384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038207 n + |A303872 n| : ℚ) / 2⌉

end

end A155706.P7048235304980239384

/-! ## A155706.P3762133216351727630

`ceil(abs(A108086(n)*A271709(n))/2)`
-/

namespace A155706.P3762133216351727630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|A108086 n * A271709 n| : ℚ) / 2⌉

end

end A155706.P3762133216351727630

/-! ## A155706.P5037288802835116849

`ceil(abs(A117440(n)*A271709(n))/2)`
-/

namespace A155706.P5037288802835116849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|A117440 n * A271709 n| : ℚ) / 2⌉

end

end A155706.P5037288802835116849

/-! ## A155706.P14385544273946788009

`ceil(A007318(n)+A350771(n+1)/2)`
-/

namespace A155706.P14385544273946788009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 n : ℚ) + (A350771 (n + 1) : ℚ) / 2⌉

end

end A155706.P14385544273946788009

/-! ## A155706.P6338646120158266182

`ceil((A131816(n)+1)*A007318(n)/2)`
-/

namespace A155706.P6338646120158266182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A131816 n + 1) * A007318 n : ℚ) / 2⌉

end

end A155706.P6338646120158266182

/-!
# A155707: Numbers expressible as a^2 + k b^2 with nonzero integers a,b, for k=2, k=3, k=5 and k=7.

The programs for A155707, there is no canonical definition to state claims against.
-/

/-! ## A155707.P14120177257574096399

`∩[A155708(n+1), A155717(n+1)]`
-/

namespace A155707.P14120177257574096399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155707.P14120177257574096399

/-!
# A155708: Numbers expressible as a^2 + k*b^2 with nonzero integers a,b, for k=2, k=3 and k=5.

The programs for A155708, there is no canonical definition to state claims against.
-/

/-! ## A155708.P2177232677099909600

`∩[A154777(n+1), A155710(n+1)]`
-/

namespace A155708.P2177232677099909600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155708.P2177232677099909600

/-! ## A155708.P7498235725881566000

`∩[A092572(n+1), A155577(n+1)]`
-/

namespace A155708.P7498235725881566000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155708.P7498235725881566000

/-! ## A155708.P10122709903059760846

`∩[A155577(n+1), A155710(n+1)]`
-/

namespace A155708.P10122709903059760846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155708.P10122709903059760846

/-! ## A155708.P15348612827392471714

`∩[A154778(n+1), A155574(n+1)]`
-/

namespace A155708.P15348612827392471714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155708.P15348612827392471714

/-! ## A155708.P1733945516719806011

`∩[A155574(n+1), A155577(n+1)]`
-/

namespace A155708.P1733945516719806011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155708.P1733945516719806011

/-!
# A155709: Intersection of A154777 and A155716: N = a^2 + 2b^2 = c^2 + 6d^2 for some positive integers a,b,c,d.

The programs for A155709, there is no canonical definition to state claims against.
-/

/-! ## A155709.P12444337950025998488

`∩[A154777(n+1), A155716(n+1)]`
-/

namespace A155709.P12444337950025998488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155709.P12444337950025998488

/-! ## A155709.P13571039105689348114

`∩[lt[2, A033715(n)], A155716(n+1)]`
-/

namespace A155709.P13571039105689348114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155709.P13571039105689348114

/-! ## A155709.P9907833771786884067

`∩[lt[2, A046113(n)], A154777(n+1)]`
-/

namespace A155709.P9907833771786884067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155709.P9907833771786884067

/-! ## A155709.P17110186635335750662

`∩[lt[4, A133692(n)²], A155716(n+1)]`
-/

namespace A155709.P17110186635335750662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155709.P17110186635335750662

/-! ## A155709.P8677952698815868113

`∩[lt[2, A108563(2*n)], A154777(n+1)]`
-/

namespace A155709.P8677952698815868113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155709.P8677952698815868113

/-! ## A155709.P11861476065257600904

`∩[lt[2, A133692(2*n)], A155716(n+2)]`
-/

namespace A155709.P11861476065257600904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155709.P11861476065257600904

/-! ## A155709.P3775607605654957124

`∩[lt[1, A115660(n+1)]+1, A154777(n+1)]`
-/

namespace A155709.P3775607605654957124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155709.P3775607605654957124

/-! ## A155709.P12405238285866960994

`∩[lt[1, A128581(2*(n+1))]+1, A154777(n+1)]`
-/

namespace A155709.P12405238285866960994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155709.P12405238285866960994

/-!
# A155710: Intersection of A092572 and A154778: N = a^2 + 3b^2 = c^2 + 5d^2 for some positive integers a,b,c,d.

The programs for A155710, there is no canonical definition to state claims against.
-/

/-! ## A155710.P17034070746718060475

`∩[A092572(n+1), A154778(n+1)]`
-/

namespace A155710.P17034070746718060475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155710.P17034070746718060475

/-! ## A155710.P13534296606030464511

`∩[lt[0, A092573(n)], A154778(n+1)]`
-/

namespace A155710.P13534296606030464511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155710.P13534296606030464511

/-! ## A155710.P17084840049055975146

`∩[lt[2, A033718(n)], A092572(n+1)]`
-/

namespace A155710.P17084840049055975146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155710.P17084840049055975146

/-! ## A155710.P5652781930029884726

`∩[lt[2, A028586(2*n)], A092572(n+1)]`
-/

namespace A155710.P5652781930029884726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155710.P5652781930029884726

/-! ## A155710.P17617578310334601805

`∩[lt[0, A216279(n+1)]+1, A092572(n+1)]`
-/

namespace A155710.P17617578310334601805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216279 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155710.P17617578310334601805

/-!
# A155711: Intersection of A154777 and A155717: N = a^2 + 2b^2 = c^2 + 7d^2 for some positive integers a,b,c,d.

The programs for A155711, there is no canonical definition to state claims against.
-/

/-! ## A155711.P16292876829241166488

`∩[A154777(n+1), A155717(n+1)]`
-/

namespace A155711.P16292876829241166488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155711.P16292876829241166488

/-! ## A155711.P4332375410705943792

`∩[lt[2, A033719(n)], A154777(n+1)]`
-/

namespace A155711.P4332375410705943792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155711.P4332375410705943792

/-! ## A155711.P2734029300151250705

`∩[lt[2, A033715(n)], A155717(n+1)]`
-/

namespace A155711.P2734029300151250705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155711.P2734029300151250705

/-! ## A155711.P15619490047918529928

`∩[lt[4, A133692(n)²], A155717(n+1)]`
-/

namespace A155711.P15619490047918529928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155711.P15619490047918529928

/-! ## A155711.P13478938688081967314

`∩[lt[4, A139093(n)²], A155717(n+1)]`
-/

namespace A155711.P13478938688081967314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139093 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155711.P13478938688081967314

/-!
# A155712: Intersection of A092572 and A155716: N = a^2 + 3b^2 = c^2 + 6d^2 for some positive integers a,b,c,d.

The programs for A155712, there is no canonical definition to state claims against.
-/

/-! ## A155712.P7255816332773882019

`∩[A092572(n+1), A155716(n+1)]`
-/

namespace A155712.P7255816332773882019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155712.P7255816332773882019

/-! ## A155712.P5822111225353001083

`∩[lt[2, A033716(n)], A155716(n+1)]`
-/

namespace A155712.P5822111225353001083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155712.P5822111225353001083

/-! ## A155712.P4240429024148879376

`∩[lt[4, A217220(n)], A155716(n+1)]`
-/

namespace A155712.P4240429024148879376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155712.P4240429024148879376

/-! ## A155712.P263752079249226869

`∩[lt[0, A092573(n)], A155716(n+1)]`
-/

namespace A155712.P263752079249226869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155712.P263752079249226869

/-! ## A155712.P16970434143810992533

`∩[lt[2, A046113(n)], A092572(n+1)]`
-/

namespace A155712.P16970434143810992533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155712.P16970434143810992533

/-! ## A155712.P12010395845651979086

`∩[lt[1, A115660(n+1)]+1, A092572(n+1)]`
-/

namespace A155712.P12010395845651979086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155712.P12010395845651979086

/-! ## A155712.P13439476448726027896

`∩[lt[4, A115978(n)²], A155716(n+1)]`
-/

namespace A155712.P13439476448726027896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155712.P13439476448726027896

/-! ## A155712.P933213516909322063

`∩[lt[2, A108563(2*n)], A092572(n+1)]`
-/

namespace A155712.P933213516909322063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155712.P933213516909322063

/-!
# A155713: Intersection of A154778 and A155716: N = a^2 + 5b^2 = c^2 + 6d^2 for some positive integers a,b,c,d.

The programs for A155713, there is no canonical definition to state claims against.
-/

/-! ## A155713.P12028103703145292879

`∩[A154778(n+1), A155716(n+1)]`
-/

namespace A155713.P12028103703145292879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155713.P12028103703145292879

/-! ## A155713.P17955700428566826988

`∩[lt[2, A033718(n)], A155716(n+1)]`
-/

namespace A155713.P17955700428566826988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155713.P17955700428566826988

/-! ## A155713.P2346197559150776390

`∩[lt[2, A028586(2*n)], A155716(n+1)]`
-/

namespace A155713.P2346197559150776390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155713.P2346197559150776390

/-! ## A155713.P15122235635376283557

`∩[lt[0, A216279(n+1)]+1, A155716(n+1)]`
-/

namespace A155713.P15122235635376283557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216279 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155713.P15122235635376283557

/-! ## A155713.P441085190680933636

`∩[lt[1, A111949(n+1)]+1, A155716(n+1)]`
-/

namespace A155713.P441085190680933636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A155713.P441085190680933636

/-!
# A155714: Least number expressible as a^2 + p b^2 with positive integers a,b, for each prime p <= prime(n) = A000040(n).

The programs for A155714, there is no canonical definition to state claims against.
-/

/-! ## A155714.P6265153282520834132

`∏[A078147(∏[n+3])]`
-/

namespace A155714.P6265153282520834132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A155714.P6265153282520834132

/-!
# A155715: Least number expressible as a^2 + k b^2 with positive integers a,b, for each k=1,...,n.

The programs for A155715, there is no canonical definition to state claims against.
-/

/-! ## A155715.P8940036581295442382

`A338088(lcm(2^∑{digits}[n, #%C(n, #)]+n, n+1))`
-/

namespace A155715.P8940036581295442382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338088 (Nat.lcm (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum + n) (n + 1))

end

end A155715.P8940036581295442382

/-! ## A155715.P17312837620392407245

`A338088(A043315(n+1))`
-/

namespace A155715.P17312837620392407245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338088 (A043315 (n + 1)).toNat

end

end A155715.P17312837620392407245

/-! ## A155715.P18048616609820907599

`A338088(A044912(n+1))`
-/

namespace A155715.P18048616609820907599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338088 (A044912 (n + 1)).toNat

end

end A155715.P18048616609820907599

/-! ## A155715.P11425168265367788465

`A338088(A055649(n+1))`
-/

namespace A155715.P11425168265367788465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338088 (A055649 (n + 1)).toNat

end

end A155715.P11425168265367788465

/-!
# A155716: Numbers of the form N = a^2 + 6b^2 for some positive integers a,b.

The programs for A155716, there is no canonical definition to state claims against.
-/

/-! ## A155716.P8571627522019994016

`lt[2, A046113(n)]`
-/

namespace A155716.P8571627522019994016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155716.P8571627522019994016

/-! ## A155716.P15449909422133058851

`lt[1, A115660(n+1)]+1`
-/

namespace A155716.P15449909422133058851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A155716.P15449909422133058851

/-! ## A155716.P11422022772672310249

`eq[A000038(n), A135863(A046113(n))]`
-/

namespace A155716.P11422022772672310249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135863 (A046113 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155716.P11422022772672310249

/-! ## A155716.P7017604285445080566

`eq[A089803(n), A135863(A046113(n))]`
-/

namespace A155716.P7017604285445080566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089803 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135863 (A046113 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155716.P7017604285445080566

/-! ## A155716.P221366783659017307

`eq[A261143(A046113(n)), A283149(n+1)]`
-/

namespace A155716.P221366783659017307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A046113 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155716.P221366783659017307

/-! ## A155716.P8391819458056499877

`lt[2, A108563(2*n)]`
-/

namespace A155716.P8391819458056499877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155716.P8391819458056499877

/-! ## A155716.P17408338530217562391

`lt[1, A128581(2*(n+1))]+1`
-/

namespace A155716.P17408338530217562391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A155716.P17408338530217562391

/-! ## A155716.P13490588340184148251

`eq[A046113(2*n), A135863(A046113(n))]`
-/

namespace A155716.P13490588340184148251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135863 (A046113 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155716.P13490588340184148251

/-! ## A155716.P17802523058114910903

`eq[A014087(A108563(2*n)), A108563(n)]`
-/

namespace A155716.P17802523058114910903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014087 (A108563 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155716.P17802523058114910903

/-! ## A155716.P8199805494253222530

`eq[A046113(2*n), A240349(A000377(n))]`
-/

namespace A155716.P8199805494253222530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240349 (A000377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155716.P8199805494253222530

/-! ## A155716.P18233911780868434229

`lt[2, A028590(2*n)]/2`
-/

namespace A155716.P18233911780868434229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028590 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A155716.P18233911780868434229

/-!
# A155717: Numbers of the form N = a^2 + 7*b^2 for some positive integers a, b.

The programs for A155717, there is no canonical definition to state claims against.
-/

/-! ## A155717.P11700150727053072095

`lt[2, A033719(n)]`
-/

namespace A155717.P11700150727053072095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155717.P11700150727053072095

/-! ## A155717.P18134522081987123255

`lt[1, A110399(n+1)]+1`
-/

namespace A155717.P18134522081987123255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A155717.P18134522081987123255

/-! ## A155717.P9711242812412494130

`lt[1, A110399(A028310(n))]`
-/

namespace A155717.P9711242812412494130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155717.P9711242812412494130

/-! ## A155717.P11018792351807072933

`eq[0, A122257(or(2, A033719(n)))]`
-/

namespace A155717.P11018792351807072933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122257 (Int.lor 2 (A033719 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155717.P11018792351807072933

/-! ## A155717.P5992536553032686633

`eq[1, A014963(or(2, A033719(n)))]`
-/

namespace A155717.P5992536553032686633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lor 2 (A033719 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155717.P5992536553032686633

/-!
# A155718: Symmetrical form of A039683 using polynomials: p(x,n)=Product[x - (2*i), {i, 0, Floor[n/2]}]/x; t(n,m)=coefficients(p(x,n)+x^n*p(1/x,n)); t(n,m)=A039683(n,m)+A039683(n,n-m).

The programs for A155718, there is no canonical definition to state claims against.
-/

/-! ## A155718.P329402771919168062

`A039683(A038722(n+1))+A039683(n+1)`
-/

namespace A155718.P329402771919168062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039683 (A038722 (n + 1)).toNat + A039683 (n + 1)

end

end A155718.P329402771919168062

/-! ## A155718.P1489156097395228117

`A039683(n+1)+A039683(A061579(n)+1)`
-/

namespace A155718.P1489156097395228117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039683 (n + 1) + A039683 (A061579 n + 1).toNat

end

end A155718.P1489156097395228117

/-! ## A155718.P13390659234125408820

`A039683(n+1)+A039683(∑[A198954(n)]-n)`
-/

namespace A155718.P13390659234125408820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039683 (n + 1) + A039683 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A155718.P13390659234125408820

/-! ## A155718.P14749306034927513487

`A039683(n+1)+A039683(A114327(n)+1+n)`
-/

namespace A155718.P14749306034927513487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039683 (n + 1) + A039683 (A114327 n + 1 + (n : ℤ)).toNat

end

end A155718.P14749306034927513487

/-! ## A155718.P9895315569339325665

`A039683(n+1)+A008276(n+1)*A059268(n)`
-/

namespace A155718.P9895315569339325665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039683 (n + 1) + A008276 (n + 1) * A059268 n

end

end A155718.P9895315569339325665

/-!
# A155719: Triangle t(n,m)=A039757(n,m)+A039757(n,n-m) read by rows.

The programs for A155719, there is no canonical definition to state claims against.
-/

/-! ## A155719.P10097460650191992286

`A039758(n)+A039757(n)`
-/

namespace A155719.P10097460650191992286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039758 n + A039757 n

end

end A155719.P10097460650191992286

/-! ## A155719.P609456953697364756

`A039757(n)+A039757(A061579(n))`
-/

namespace A155719.P609456953697364756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 n + A039757 (A061579 n).toNat

end

end A155719.P609456953697364756

/-! ## A155719.P5059656492023584748

`A039758(n)+A039758(A061579(n))`
-/

namespace A155719.P5059656492023584748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039758 n + A039758 (A061579 n).toNat

end

end A155719.P5059656492023584748

/-! ## A155719.P5903455715786916233

`A039758(A038722(n+2))+A039758(n)`
-/

namespace A155719.P5903455715786916233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039758 (A038722 (n + 2)).toNat + A039758 n

end

end A155719.P5903455715786916233

/-! ## A155719.P17909764267824664611

`A039757(n)+A039757(A114327(n)+n)`
-/

namespace A155719.P17909764267824664611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 n + A039757 (A114327 n + (n : ℤ)).toNat

end

end A155719.P17909764267824664611

/-!
# A155721: Positions of parity change in A033035.

The programs for A155721, the canonical program `A155721.P8746508821877636613` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155721 has offset 1).

The definition of A155721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155721.P7595949659001848005

`4/3*(4^(n+1)-1)`
-/

namespace A155721.P7595949659001848005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * ((4 ^ (n + 1) : ℤ) - 1 : ℚ)

end

end A155721.P7595949659001848005

namespace A155721

/-- `4/3*(4^(n+1)-1)` -/
def P7595949659001848005.Spec : Prop :=
  ∀ n, P7595949659001848005.a n = (A155721 (n + 1) : ℚ)

theorem P7595949659001848005.correct : P7595949659001848005.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A155721, Nat.add_sub_cancel, A155721.P7595949659001848005.a, A155721.P8746508821877636613.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A155721, Nat.add_sub_cancel, A155721.P7595949659001848005.a, A155721.P8746508821877636613.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A155721

/-! ## A155721.P8746508821877636613

`5*a(n-1)-4*a(n-2)` with `a(0)=4, a(1)=20`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155721

/-- `5*a(n-1)-4*a(n-2)` -/
def P8746508821877636613.Spec : Prop :=
  ∀ n, P8746508821877636613.a n = A155721 (n + 1)

theorem P8746508821877636613.correct : P8746508821877636613.Spec := by
  intro n
  simp only [A155721, Nat.add_sub_cancel]

end A155721

/-! ## A155721.P16425634739955159285

`A080674(n+1)`
-/

namespace A155721.P16425634739955159285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080674 (n + 1)

end

end A155721.P16425634739955159285

namespace A155721

/-- `A080674(n+1)` -/
def P16425634739955159285.Spec : Prop :=
  ∀ n, P16425634739955159285.a n = A155721 (n + 1)

end A155721

/-! ## A155721.P201735473786343603

`lcm(4, ∑[4^n])`
-/

namespace A155721.P201735473786343603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155721.P201735473786343603

namespace A155721

/-- `lcm(4, ∑[4^n])` -/
def P201735473786343603.Spec : Prop :=
  ∀ n, (P201735473786343603.a n : ℤ) = A155721 (n + 1)

end A155721

/-! ## A155721.P14068742686669411262

`ogf(4/(1-5x+4x^2))`
-/

namespace A155721.P14068742686669411262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -5, 4] n

end

end A155721.P14068742686669411262

namespace A155721

/-- `ogf(4/(1-5x+4x^2))` -/
def P14068742686669411262.Spec : Prop :=
  ∀ n, P14068742686669411262.a n = A155721 (n + 1)

end A155721

/-! ## A155721.P13335021062925365012

`4+4*a(n-1)` with `a(0)=4`
-/

namespace A155721.P13335021062925365012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  4 + 4 * a (n - 1)

end

end A155721.P13335021062925365012

namespace A155721

/-- `4+4*a(n-1)` -/
def P13335021062925365012.Spec : Prop :=
  ∀ n, (P13335021062925365012.a n : ℤ) = A155721 (n + 1)

end A155721

/-! ## A155721.P2950529753413105031

`or(4, 4*a(n-1))` with `a(0)=4`
-/

namespace A155721.P2950529753413105031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor 4 (4 * a (n - 1))

end

end A155721.P2950529753413105031

namespace A155721

/-- `or(4, 4*a(n-1))` -/
def P2950529753413105031.Spec : Prop :=
  ∀ n, (P2950529753413105031.a n : ℤ) = A155721 (n + 1)

end A155721

/-! ## A155721.P12871416425100923546

`abs(∑[4*a(n-1)])` with `a(0)=4`
-/

namespace A155721.P12871416425100923546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155721.P12871416425100923546

namespace A155721

/-- `abs(∑[4*a(n-1)])` -/
def P12871416425100923546.Spec : Prop :=
  ∀ n, (P12871416425100923546.a n : ℤ) = A155721 (n + 1)

end A155721

/-! ## A155721.P8796677685938749666

`floor(∑[4*a(n-1)])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A155721.P8796677685938749666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155721.P8796677685938749666

namespace A155721

/-- `floor(∑[4*a(n-1)])` -/
def P8796677685938749666.Spec : Prop :=
  ∀ n, (P8796677685938749666.a n : ℤ) = A155721 (n + 1)

end A155721

/-! ## A155721.P3924062347003105705

`ceil(∑[4*a(n-1)])` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A155721.P3924062347003105705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155721.P3924062347003105705

namespace A155721

/-- `ceil(∑[4*a(n-1)])` -/
def P3924062347003105705.Spec : Prop :=
  ∀ n, (P3924062347003105705.a n : ℤ) = A155721 (n + 1)

end A155721

/-! ## A155721.P6373704311616037246

`round(∑[4*a(n-1)])` with `a(0)=4`

`round` is left out, it is the identity on integers.
-/

namespace A155721.P6373704311616037246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155721.P6373704311616037246

namespace A155721

/-- `round(∑[4*a(n-1)])` -/
def P6373704311616037246.Spec : Prop :=
  ∀ n, (P6373704311616037246.a n : ℤ) = A155721 (n + 1)

end A155721

/-! ## A155721.P2781756371889711899

`xor(1, floor(4^(n+2)/3))`
-/

namespace A155721.P2781756371889711899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(4 ^ (n + 2) : ℚ) / 3⌋

end

end A155721.P2781756371889711899

namespace A155721

/-- `xor(1, floor(4^(n+2)/3))` -/
def P2781756371889711899.Spec : Prop :=
  ∀ n, P2781756371889711899.a n = A155721 (n + 1)

end A155721

/-! ## A155721.P16551252221948248430

`∑[4*a(n-1)]/2` with `a(0)=8`
-/

namespace A155721.P16551252221948248430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A155721.P16551252221948248430

namespace A155721

/-- `∑[4*a(n-1)]/2` -/
def P16551252221948248430.Spec : Prop :=
  ∀ n, P16551252221948248430.a n = (A155721 (n + 1) : ℚ)

end A155721

/-! ## A155721.P17637032078755231495

`8-4*(1-a(n-1))` with `a(0)=4`
-/

namespace A155721.P17637032078755231495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  8 - 4 * (1 - a (n - 1))

end

end A155721.P17637032078755231495

namespace A155721

/-- `8-4*(1-a(n-1))` -/
def P17637032078755231495.Spec : Prop :=
  ∀ n, P17637032078755231495.a n = A155721 (n + 1)

end A155721

/-! ## A155721.P448192173627839300

`a(n-1)+4^(n+1)` with `a(0)=4`
-/

namespace A155721.P448192173627839300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 4 ^ (n + 1)

end

end A155721.P448192173627839300

namespace A155721

/-- `a(n-1)+4^(n+1)` -/
def P448192173627839300.Spec : Prop :=
  ∀ n, (P448192173627839300.a n : ℤ) = A155721 (n + 1)

end A155721

/-! ## A155721.P11918105604602628798

`∑[a(n-1)/(1/2)²]` with `a(0)=4`
-/

namespace A155721.P11918105604602628798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155721.P11918105604602628798

namespace A155721

/-- `∑[a(n-1)/(1/2)²]` -/
def P11918105604602628798.Spec : Prop :=
  ∀ n, P11918105604602628798.a n = (A155721 (n + 1) : ℚ)

end A155721

/-! ## A155721.P17113650166976899435

`(a(n-1)+1)/(1/2)²` with `a(0)=4`
-/

namespace A155721.P17113650166976899435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (a (n - 1) + 1) / ((1 : ℚ) / 2) ^ 2

end

end A155721.P17113650166976899435

namespace A155721

/-- `(a(n-1)+1)/(1/2)²` -/
def P17113650166976899435.Spec : Prop :=
  ∀ n, P17113650166976899435.a n = (A155721 (n + 1) : ℚ)

end A155721

/-! ## A155721.P10837827266972942571

`a(n-1)/(1-3/4)+4` with `a(0)=4`
-/

namespace A155721.P10837827266972942571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) / (1 - (3 : ℚ) / 4) + 4

end

end A155721.P10837827266972942571

namespace A155721

/-- `a(n-1)/(1-3/4)+4` -/
def P10837827266972942571.Spec : Prop :=
  ∀ n, P10837827266972942571.a n = (A155721 (n + 1) : ℚ)

end A155721

/-! ## A155721.P17033637818992070938

`4-a(n-1)/(3/4-1)` with `a(0)=4`
-/

namespace A155721.P17033637818992070938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  4 - a (n - 1) / ((3 : ℚ) / 4 - 1)

end

end A155721.P17033637818992070938

namespace A155721

/-- `4-a(n-1)/(3/4-1)` -/
def P17033637818992070938.Spec : Prop :=
  ∀ n, P17033637818992070938.a n = (A155721 (n + 1) : ℚ)

end A155721

/-! ## A155721.P3919079774476372011

`∑[∑[a(n-1)+a(n-1)]²]` with `a(0)=2, a(1)=2`
-/

namespace A155721.P3919079774476372011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  f2 (n - 1) + f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155721.P3919079774476372011

namespace A155721

/-- `∑[∑[a(n-1)+a(n-1)]²]` -/
def P3919079774476372011.Spec : Prop :=
  ∀ n, (P3919079774476372011.a n : ℤ) = A155721 (n + 1)

end A155721

/-!
# A155722: Numbers k such that 2*k + 9 is prime.

The programs for A155722, the canonical program `A155722.P2170865937026942924` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155722 has offset 1).

The definition of A155722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155722.P2170865937026942924

`A101448(n+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A155722

/-- `A101448(n+1)+1` -/
def P2170865937026942924.Spec : Prop :=
  ∀ n, P2170865937026942924.a n = A155722 (n + 1)

theorem P2170865937026942924.correct : P2170865937026942924.Spec := by
  intro n
  simp only [A155722, Nat.add_sub_cancel]

end A155722

/-! ## A155722.P17074406121889472587

`A088967(n+1)/2`
-/

namespace A155722.P17074406121889472587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088967 (n + 1) : ℚ) / 2

end

end A155722.P17074406121889472587

namespace A155722

/-- `A088967(n+1)/2` -/
def P17074406121889472587.Spec : Prop :=
  ∀ n, P17074406121889472587.a n = (A155722 (n + 1) : ℚ)

end A155722

/-! ## A155722.P14117083081013878609

`(A172407(n+1)+1)/2`
-/

namespace A155722.P14117083081013878609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172407 (n + 1) + 1 : ℚ) / 2

end

end A155722.P14117083081013878609

namespace A155722

/-- `(A172407(n+1)+1)/2` -/
def P14117083081013878609.Spec : Prop :=
  ∀ n, P14117083081013878609.a n = (A155722 (n + 1) : ℚ)

end A155722

/-! ## A155722.P6675028886691886297

`∑[A001223(n+4)]/2-1`
-/

namespace A155722.P6675028886691886297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 - 1

end

end A155722.P6675028886691886297

namespace A155722

/-- `∑[A001223(n+4)]/2-1` -/
def P6675028886691886297.Spec : Prop :=
  ∀ n, P6675028886691886297.a n = (A155722 (n + 1) : ℚ)

end A155722

/-! ## A155722.P9498883169326932064

`A105760(n+2)-1`
-/

namespace A155722.P9498883169326932064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 2) - 1

end

end A155722.P9498883169326932064

namespace A155722

/-- `A105760(n+2)-1` -/
def P9498883169326932064.Spec : Prop :=
  ∀ n, P9498883169326932064.a n = A155722 (n + 1)

end A155722

/-! ## A155722.P11246848607357871393

`(A086304(n+2)-3)/2`
-/

namespace A155722.P11246848607357871393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086304 (n + 2) - 3 : ℚ) / 2

end

end A155722.P11246848607357871393

namespace A155722

/-- `(A086304(n+2)-3)/2` -/
def P11246848607357871393.Spec : Prop :=
  ∀ n, P11246848607357871393.a n = (A155722 (n + 1) : ℚ)

end A155722

/-! ## A155722.P11575881760458554732

`A089038(n+3)-2`
-/

namespace A155722.P11575881760458554732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 3) - 2

end

end A155722.P11575881760458554732

namespace A155722

/-- `A089038(n+3)-2` -/
def P11575881760458554732.Spec : Prop :=
  ∀ n, P11575881760458554732.a n = A155722 (n + 1)

end A155722

/-! ## A155722.P13792120645704968166

`A024675(n+3)-A097069(n+3)`
-/

namespace A155722.P13792120645704968166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 3) - A097069 (n + 3)

end

end A155722.P13792120645704968166

namespace A155722

/-- `A024675(n+3)-A097069(n+3)` -/
def P13792120645704968166.Spec : Prop :=
  ∀ n, P13792120645704968166.a n = A155722 (n + 1)

end A155722

/-! ## A155722.P3327115322402598689

`A008507(n+4)+n`
-/

namespace A155722.P3327115322402598689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 4) + (n : ℤ)

end

end A155722.P3327115322402598689

namespace A155722

/-- `A008507(n+4)+n` -/
def P3327115322402598689.Spec : Prop :=
  ∀ n, P3327115322402598689.a n = A155722 (n + 1)

end A155722

/-! ## A155722.P12383803367737837346

`Δ[A005521(n+3)]-4`
-/

namespace A155722.P12383803367737837346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005521 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A155722.P12383803367737837346

namespace A155722

/-- `Δ[A005521(n+3)]-4` -/
def P12383803367737837346.Spec : Prop :=
  ∀ n, P12383803367737837346.a n = A155722 (n + 1)

end A155722

/-! ## A155722.P15615279851549444828

`(A000040(n+5)-9)/2`
-/

namespace A155722.P15615279851549444828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 5) - 9 : ℚ) / 2

end

end A155722.P15615279851549444828

namespace A155722

/-- `(A000040(n+5)-9)/2` -/
def P15615279851549444828.Spec : Prop :=
  ∀ n, P15615279851549444828.a n = (A155722 (n + 1) : ℚ)

end A155722

/-! ## A155722.P15703115105212231832

`eq[1, A001222(2*n+9)]`
-/

namespace A155722.P15703115105212231832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155722.P15703115105212231832

namespace A155722

/-- `eq[1, A001222(2*n+9)]` -/
def P15703115105212231832.Spec : Prop :=
  ∀ n, (P15703115105212231832.a n : ℤ) = A155722 (n + 1)

end A155722

/-! ## A155722.P14121026844920132577

`eq[2, A000005(2*n+9)]`
-/

namespace A155722.P14121026844920132577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155722.P14121026844920132577

namespace A155722

/-- `eq[2, A000005(2*n+9)]` -/
def P14121026844920132577.Spec : Prop :=
  ∀ n, (P14121026844920132577.a n : ℤ) = A155722 (n + 1)

end A155722

/-! ## A155722.P1303122537911056642

`lt[A000005(n+9+n), 3]`
-/

namespace A155722.P1303122537911056642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 9 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155722.P1303122537911056642

namespace A155722

/-- `lt[A000005(n+9+n), 3]` -/
def P1303122537911056642.Spec : Prop :=
  ∀ n, (P1303122537911056642.a n : ℤ) = A155722 (n + 1)

end A155722

/-! ## A155722.P14704154726139536720

`record[A000010(n+11)-8]/2`
-/

namespace A155722.P14704154726139536720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 11) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A155722.P14704154726139536720

namespace A155722

/-- `record[A000010(n+11)-8]/2` -/
def P14704154726139536720.Spec : Prop :=
  ∀ n, P14704154726139536720.a n = (A155722 (n + 1) : ℚ)

end A155722

/-! ## A155722.P273957162939227762

`lt[A001222(2*(n+3)+3), 2]`
-/

namespace A155722.P273957162939227762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 3) + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155722.P273957162939227762

namespace A155722

/-- `lt[A001222(2*(n+3)+3), 2]` -/
def P273957162939227762.Spec : Prop :=
  ∀ n, (P273957162939227762.a n : ℤ) = A155722 (n + 1)

end A155722

/-! ## A155722.P16670186006190432261

`eq[1, A001222(n+11+n)]+1`
-/

namespace A155722.P16670186006190432261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 11 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A155722.P16670186006190432261

namespace A155722

/-- `eq[1, A001222(n+11+n)]+1` -/
def P16670186006190432261.Spec : Prop :=
  ∀ n, (P16670186006190432261.a n : ℤ) = A155722 (n + 1)

end A155722

/-! ## A155722.P10598441245953547599

`lt[n+3, A006530(2*n+9)]`
-/

namespace A155722.P10598441245953547599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155722.P10598441245953547599

namespace A155722

/-- `lt[n+3, A006530(2*n+9)]` -/
def P10598441245953547599.Spec : Prop :=
  ∀ n, (P10598441245953547599.a n : ℤ) = A155722 (n + 1)

end A155722

/-! ## A155722.P8375365874061157092

`lt[n+3, A020639(2*n+9)]`
-/

namespace A155722.P8375365874061157092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155722.P8375365874061157092

namespace A155722

/-- `lt[n+3, A020639(2*n+9)]` -/
def P8375365874061157092.Spec : Prop :=
  ∀ n, (P8375365874061157092.a n : ℤ) = A155722 (n + 1)

end A155722

/-! ## A155722.P8811210581146872782

`eq[1, A067760(n+3)]`
-/

namespace A155722.P8811210581146872782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155722.P8811210581146872782

namespace A155722

/-- `eq[1, A067760(n+3)]` -/
def P8811210581146872782.Spec : Prop :=
  ∀ n, (P8811210581146872782.a n : ℤ) = A155722 (n + 1)

end A155722

/-!
# A155723: Numbers k such that 2*k + 9 is not prime.

The programs for A155723, the canonical program `A155723.P13840957345735942896` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155723 has offset 1).

The definition of A155723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155723.P2921207062727941610

`comp[A155722(n+1)]`
-/

namespace A155723.P2921207062727941610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155723.P2921207062727941610

namespace A155723

/-- `comp[A155722(n+1)]` -/
def P2921207062727941610.Spec : Prop :=
  ∀ n, (P2921207062727941610.a n : ℤ) = A155723 (n + 1)

end A155723

/-! ## A155723.P13840957345735942896

`A153053(n+1)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A155723

/-- `A153053(n+1)-1` -/
def P13840957345735942896.Spec : Prop :=
  ∀ n, P13840957345735942896.a n = A155723 (n + 1)

theorem P13840957345735942896.correct : P13840957345735942896.Spec := by
  intro n
  simp only [A155723, Nat.add_sub_cancel]

end A155723

/-! ## A155723.P2589127500870971147

`A153052(n+1)-2`
-/

namespace A155723.P2589127500870971147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) - 2

end

end A155723.P2589127500870971147

namespace A155723

/-- `A153052(n+1)-2` -/
def P2589127500870971147.Spec : Prop :=
  ∀ n, P2589127500870971147.a n = A155723 (n + 1)

theorem P2589127500870971147.correct : P2589127500870971147.Spec := by
  intro n
  simp only [A155723, Nat.add_sub_cancel, A155723.P2589127500870971147.a, A155723.P13840957345735942896.a, A153052, A153052.P215135875194931627.f1, A153052.P215135875194931627.f2, A153052.P215135875194931627.a, A153053, A153053.P11375225491096847210.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A155723

/-! ## A155723.P6208591912052027001

`A153238(n+1)-3`
-/

namespace A155723.P6208591912052027001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) - 3

end

end A155723.P6208591912052027001

namespace A155723

/-- `A153238(n+1)-3` -/
def P6208591912052027001.Spec : Prop :=
  ∀ n, P6208591912052027001.a n = A155723 (n + 1)

theorem P6208591912052027001.correct : P6208591912052027001.Spec := by
  intro n
  simp only [A155723, Nat.add_sub_cancel, A155723.P6208591912052027001.a, A155723.P13840957345735942896.a, A153053, A153053.P11375225491096847210.a, A153238, A153238.P13831251492164971693.a, A153052, A153052.P215135875194931627.f1, A153052.P215135875194931627.f2, A153052.P215135875194931627.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A155723

/-! ## A155723.P4378233790019532431

`A053726(n+1)-5`
-/

namespace A155723.P4378233790019532431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) - 5

end

end A155723.P4378233790019532431

namespace A155723

/-- `A053726(n+1)-5` -/
def P4378233790019532431.Spec : Prop :=
  ∀ n, P4378233790019532431.a n = A155723 (n + 1)

end A155723

/-! ## A155723.P14140208203641735716

`A104275(n+2)-5`
-/

namespace A155723.P14140208203641735716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) - 5

end

end A155723.P14140208203641735716

namespace A155723

/-- `A104275(n+2)-5` -/
def P14140208203641735716.Spec : Prop :=
  ∀ n, P14140208203641735716.a n = A155723 (n + 1)

end A155723

/-! ## A155723.P7617368476484376878

`A153040(n+1)-7`
-/

namespace A155723.P7617368476484376878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) - 7

end

end A155723.P7617368476484376878

namespace A155723

/-- `A153040(n+1)-7` -/
def P7617368476484376878.Spec : Prop :=
  ∀ n, P7617368476484376878.a n = A155723 (n + 1)

end A155723

/-! ## A155723.P794266817995429157

`A153039(n+1)-8`
-/

namespace A155723.P794266817995429157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 1) - 8

end

end A155723.P794266817995429157

namespace A155723

/-- `A153039(n+1)-8` -/
def P794266817995429157.Spec : Prop :=
  ∀ n, P794266817995429157.a n = A155723 (n + 1)

end A155723

/-! ## A155723.P9535617585217422044

`A153045(n+1)-10`
-/

namespace A155723.P9535617585217422044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153045 (n + 1) - 10

end

end A155723.P9535617585217422044

namespace A155723

/-- `A153045(n+1)-10` -/
def P9535617585217422044.Spec : Prop :=
  ∀ n, P9535617585217422044.a n = A155723 (n + 1)

end A155723

/-! ## A155723.P17924095216893064899

`∑[A196274(n+1)]-4`
-/

namespace A155723.P17924095216893064899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A155723.P17924095216893064899

namespace A155723

/-- `∑[A196274(n+1)]-4` -/
def P17924095216893064899.Spec : Prop :=
  ∀ n, P17924095216893064899.a n = A155723 (n + 1)

end A155723

/-! ## A155723.P12565905844390935206

`comp[A101448(n+1)+1]`
-/

namespace A155723.P12565905844390935206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155723.P12565905844390935206

namespace A155723

/-- `comp[A101448(n+1)+1]` -/
def P12565905844390935206.Spec : Prop :=
  ∀ n, (P12565905844390935206.a n : ℤ) = A155723 (n + 1)

end A155723

/-! ## A155723.P14781555068974949654

`comp[A105760(n+1)-1]`
-/

namespace A155723.P14781555068974949654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155723.P14781555068974949654

namespace A155723

/-- `comp[A105760(n+1)-1]` -/
def P14781555068974949654.Spec : Prop :=
  ∀ n, (P14781555068974949654.a n : ℤ) = A155723 (n + 1)

end A155723

/-! ## A155723.P10529181124579227590

`comp[A089038(n+1)-2]`
-/

namespace A155723.P10529181124579227590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155723.P10529181124579227590

namespace A155723

/-- `comp[A089038(n+1)-2]` -/
def P10529181124579227590.Spec : Prop :=
  ∀ n, (P10529181124579227590.a n : ℤ) = A155723 (n + 1)

end A155723

/-! ## A155723.P8460934321582234457

`comp[A161720(n+3)-1]`
-/

namespace A155723.P8460934321582234457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155723.P8460934321582234457

namespace A155723

/-- `comp[A161720(n+3)-1]` -/
def P8460934321582234457.Spec : Prop :=
  ∀ n, (P8460934321582234457.a n : ℤ) = A155723 (n + 1)

end A155723

/-! ## A155723.P16217667456191477972

`comp[A005097(n+1)-4]`
-/

namespace A155723.P16217667456191477972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155723.P16217667456191477972

namespace A155723

/-- `comp[A005097(n+1)-4]` -/
def P16217667456191477972.Spec : Prop :=
  ∀ n, (P16217667456191477972.a n : ℤ) = A155723 (n + 1)

end A155723

/-! ## A155723.P18273840106161726591

`A146538(n+1)/2-3`
-/

namespace A155723.P18273840106161726591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146538 (n + 1) : ℚ) / 2 - 3

end

end A155723.P18273840106161726591

namespace A155723

/-- `A146538(n+1)/2-3` -/
def P18273840106161726591.Spec : Prop :=
  ∀ n, P18273840106161726591.a n = (A155723 (n + 1) : ℚ)

end A155723

/-! ## A155723.P13483112375796558857

`A309355(n+1)/2-4`
-/

namespace A155723.P13483112375796558857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309355 (n + 1) : ℚ) / 2 - 4

end

end A155723.P13483112375796558857

namespace A155723

/-- `A309355(n+1)/2-4` -/
def P13483112375796558857.Spec : Prop :=
  ∀ n, P13483112375796558857.a n = (A155723 (n + 1) : ℚ)

end A155723

/-! ## A155723.P18214904938370048087

`lt[1, A001222(2*n+9)]`
-/

namespace A155723.P18214904938370048087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155723.P18214904938370048087

namespace A155723

/-- `lt[1, A001222(2*n+9)]` -/
def P18214904938370048087.Spec : Prop :=
  ∀ n, (P18214904938370048087.a n : ℤ) = A155723 (n + 1)

end A155723

/-! ## A155723.P11161877935023027653

`lt[2, A000005(2*n+9)]`
-/

namespace A155723.P11161877935023027653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155723.P11161877935023027653

namespace A155723

/-- `lt[2, A000005(2*n+9)]` -/
def P11161877935023027653.Spec : Prop :=
  ∀ n, (P11161877935023027653.a n : ℤ) = A155723 (n + 1)

end A155723

/-! ## A155723.P9983285210443994952

`A008508(n+1)-3+n`
-/

namespace A155723.P9983285210443994952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008508 (n + 1) - 3 + (n : ℤ)

end

end A155723.P9983285210443994952

namespace A155723

/-- `A008508(n+1)-3+n` -/
def P9983285210443994952.Spec : Prop :=
  ∀ n, P9983285210443994952.a n = A155723 (n + 1)

end A155723

/-!
# A155724: Triangle read by rows: T(n, k) = 2*n*k + n + k - 4.

The programs for A155724, the canonical program `A155724.P13035978009969684852` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155724 has offset 1).

The definition of A155724 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1-4` (program `A155724.P13035978009969684852`, by `A155724.P13035978009969684852.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155724.P13035978009969684852

`2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1-4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155724

/-- `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1-4` -/
def P13035978009969684852.Spec : Prop :=
  ∀ n, P13035978009969684852.a n = A155724 (n + 1)

theorem P13035978009969684852.correct : P13035978009969684852.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel]

end A155724

/-! ## A155724.P4877932996777807972

`A155546(n+1)+1`
-/

namespace A155724.P4877932996777807972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 1

end

end A155724.P4877932996777807972

namespace A155724

/-- `A155546(n+1)+1` -/
def P4877932996777807972.Spec : Prop :=
  ∀ n, P4877932996777807972.a n = A155724 (n + 1)

theorem P4877932996777807972.correct : P4877932996777807972.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P4877932996777807972.a, A155724.P13035978009969684852.a, A155546, A155546.P2386952917106834247.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P8017233095944325200

`A154684(n+1)-1`
-/

namespace A155724.P8017233095944325200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) - 1

end

end A155724.P8017233095944325200

namespace A155724

/-- `A154684(n+1)-1` -/
def P8017233095944325200.Spec : Prop :=
  ∀ n, P8017233095944325200.a n = A155724 (n + 1)

theorem P8017233095944325200.correct : P8017233095944325200.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P8017233095944325200.a, A155724.P13035978009969684852.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P15212310540242061716

`A155550(n+1)+2`
-/

namespace A155724.P15212310540242061716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + 2

end

end A155724.P15212310540242061716

namespace A155724

/-- `A155550(n+1)+2` -/
def P15212310540242061716.Spec : Prop :=
  ∀ n, P15212310540242061716.a n = A155724 (n + 1)

theorem P15212310540242061716.correct : P15212310540242061716.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P15212310540242061716.a, A155724.P13035978009969684852.a, A155550, A155550.P8821418468961937899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P13353312137728327536

`A144670(n+1)+3`
-/

namespace A155724.P13353312137728327536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144670 (n + 1) + 3

end

end A155724.P13353312137728327536

namespace A155724

/-- `A144670(n+1)+3` -/
def P13353312137728327536.Spec : Prop :=
  ∀ n, P13353312137728327536.a n = A155724 (n + 1)

theorem P13353312137728327536.correct : P13353312137728327536.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P13353312137728327536.a, A155724.P13035978009969684852.a, A144670, A144670.P16046816963376564463.a, A324937, A324937.P12117470399023503512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P18211986401961620637

`A154680(n+1)-2`
-/

namespace A155724.P18211986401961620637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) - 2

end

end A155724.P18211986401961620637

namespace A155724

/-- `A154680(n+1)-2` -/
def P18211986401961620637.Spec : Prop :=
  ∀ n, P18211986401961620637.a n = A155724 (n + 1)

theorem P18211986401961620637.correct : P18211986401961620637.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P18211986401961620637.a, A155724.P13035978009969684852.a, A154680, A154680.P11179278242672813373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P13496479173519884236

`A144562(n+1)-3`
-/

namespace A155724.P13496479173519884236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) - 3

end

end A155724.P13496479173519884236

namespace A155724

/-- `A144562(n+1)-3` -/
def P13496479173519884236.Spec : Prop :=
  ∀ n, P13496479173519884236.a n = A155724 (n + 1)

theorem P13496479173519884236.correct : P13496479173519884236.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P13496479173519884236.a, A155724.P13035978009969684852.a, A144562, A144562.P16025350127225318845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P15264812795225401018

`A324937(n+1)+4`
-/

namespace A155724.P15264812795225401018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324937 (n + 1) + 4

end

end A155724.P15264812795225401018

namespace A155724

/-- `A324937(n+1)+4` -/
def P15264812795225401018.Spec : Prop :=
  ∀ n, P15264812795225401018.a n = A155724 (n + 1)

theorem P15264812795225401018.correct : P15264812795225401018.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P15264812795225401018.a, A155724.P13035978009969684852.a, A324937, A324937.P12117470399023503512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P6318564267622948177

`A083487(n+1)-4`
-/

namespace A155724.P6318564267622948177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) - 4

end

end A155724.P6318564267622948177

namespace A155724

/-- `A083487(n+1)-4` -/
def P6318564267622948177.Spec : Prop :=
  ∀ n, P6318564267622948177.a n = A155724 (n + 1)

theorem P6318564267622948177.correct : P6318564267622948177.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P6318564267622948177.a, A155724.P13035978009969684852.a, A083487, A083487.P8449240486603242499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P14474015246997387998

`A155551(n+1)+5`
-/

namespace A155724.P14474015246997387998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155551 (n + 1) + 5

end

end A155724.P14474015246997387998

namespace A155724

/-- `A155551(n+1)+5` -/
def P14474015246997387998.Spec : Prop :=
  ∀ n, P14474015246997387998.a n = A155724 (n + 1)

theorem P14474015246997387998.correct : P14474015246997387998.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P14474015246997387998.a, A155724.P13035978009969684852.a, A155551, A155551.P15753300162867372955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P3572630402723560228

`A144650(n+1)-5`
-/

namespace A155724.P3572630402723560228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - 5

end

end A155724.P3572630402723560228

namespace A155724

/-- `A144650(n+1)-5` -/
def P3572630402723560228.Spec : Prop :=
  ∀ n, P3572630402723560228.a n = A155724 (n + 1)

theorem P3572630402723560228.correct : P3572630402723560228.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P3572630402723560228.a, A155724.P13035978009969684852.a, A144650, A144650.P1368958266719371934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P7110679074241841380

`A155705(n+1)-6`
-/

namespace A155724.P7110679074241841380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) - 6

end

end A155724.P7110679074241841380

namespace A155724

/-- `A155705(n+1)-6` -/
def P7110679074241841380.Spec : Prop :=
  ∀ n, P7110679074241841380.a n = A155724 (n + 1)

theorem P7110679074241841380.correct : P7110679074241841380.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P7110679074241841380.a, A155724.P13035978009969684852.a, A155705, A155705.P4288212106648644331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P13455779152013120098

`A154681(n+1)-7`
-/

namespace A155724.P13455779152013120098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) - 7

end

end A155724.P13455779152013120098

namespace A155724

/-- `A154681(n+1)-7` -/
def P13455779152013120098.Spec : Prop :=
  ∀ n, P13455779152013120098.a n = A155724 (n + 1)

theorem P13455779152013120098.correct : P13455779152013120098.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P13455779152013120098.a, A155724.P13035978009969684852.a, A154681, A154681.P7152750088420565166.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P6660829856627714049

`A154685(n+1)-8`
-/

namespace A155724.P6660829856627714049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) - 8

end

end A155724.P6660829856627714049

namespace A155724

/-- `A154685(n+1)-8` -/
def P6660829856627714049.Spec : Prop :=
  ∀ n, P6660829856627714049.a n = A155724 (n + 1)

theorem P6660829856627714049.correct : P6660829856627714049.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P6660829856627714049.a, A155724.P13035978009969684852.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P844102391004687777

`A154631(n+1)-9`
-/

namespace A155724.P844102391004687777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) - 9

end

end A155724.P844102391004687777

namespace A155724

/-- `A154631(n+1)-9` -/
def P844102391004687777.Spec : Prop :=
  ∀ n, P844102391004687777.a n = A155724 (n + 1)

theorem P844102391004687777.correct : P844102391004687777.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P844102391004687777.a, A155724.P13035978009969684852.a, A154631, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P3700993914617578792

`A155156(n+1)/2-4`
-/

namespace A155724.P3700993914617578792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155156 (n + 1) : ℚ) / 2 - 4

end

end A155724.P3700993914617578792

namespace A155724

/-- `A155156(n+1)/2-4` -/
def P3700993914617578792.Spec : Prop :=
  ∀ n, P3700993914617578792.a n = (A155724 (n + 1) : ℚ)

theorem P3700993914617578792.correct : P3700993914617578792.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P3700993914617578792.a, A155724.P13035978009969684852.a, A155156, A155156.P11088672852986007837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P987162755314700376

`A155151(n+1)/2-5`
-/

namespace A155724.P987162755314700376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155151 (n + 1) : ℚ) / 2 - 5

end

end A155724.P987162755314700376

namespace A155724

/-- `A155151(n+1)/2-5` -/
def P987162755314700376.Spec : Prop :=
  ∀ n, P987162755314700376.a n = (A155724 (n + 1) : ℚ)

theorem P987162755314700376.correct : P987162755314700376.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P987162755314700376.a, A155724.P13035978009969684852.a, A155151, A155151.P14048722157311829906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P15995059382229570425

`A131421(n+1)+A151890(n)-1`
-/

namespace A155724.P15995059382229570425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131421 (n + 1) + (A151890 n - 1)

end

end A155724.P15995059382229570425

namespace A155724

/-- `A131421(n+1)+A151890(n)-1` -/
def P15995059382229570425.Spec : Prop :=
  ∀ n, P15995059382229570425.a n = A155724 (n + 1)

theorem P15995059382229570425.correct : P15995059382229570425.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P15995059382229570425.a, A155724.P13035978009969684852.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P5503425347835727592

`A155151(n+1)-A163652(n+1)`
-/

namespace A155724.P5503425347835727592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - A163652 (n + 1)

end

end A155724.P5503425347835727592

namespace A155724

/-- `A155151(n+1)-A163652(n+1)` -/
def P5503425347835727592.Spec : Prop :=
  ∀ n, P5503425347835727592.a n = A155724 (n + 1)

theorem P5503425347835727592.correct : P5503425347835727592.Spec := by
  intro n
  simp only [A155724, Nat.add_sub_cancel, A155724.P5503425347835727592.a, A155724.P13035978009969684852.a, A155151, A155151.P14048722157311829906.a, A163652, A163652.P14560044892926155095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155724

/-! ## A155724.P14427425462885828348

`A155156(n+1)%A154685(n+1)`
-/

namespace A155724.P14427425462885828348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155156 (n + 1)) (A154685 (n + 1))

end

end A155724.P14427425462885828348

namespace A155724

/-- `A155156(n+1)%A154685(n+1)` -/
def P14427425462885828348.Spec : Prop :=
  ∀ n, P14427425462885828348.a n = A155724 (n + 1)

end A155724

/-!
# A155725: Symmetrical product form polynomial as triangle sequence coefficients: q(x,n)=Product[x + 2*n - i + 1, {i, 0, n - 1}]; p(x,n)=q(x,n)+x^2+x^n*q(1/x,m);t(n,m)=coefficients(p(x,n).

The programs for A155725, there is no canonical definition to state claims against.
-/

/-! ## A155725.P547595934124925909

`A038455(n+1)+A038455(∑[char[∑[n]]]²-n)`
-/

namespace A155725.P547595934124925909
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038455 (n + 1) + A038455 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A155725.P547595934124925909

/-! ## A155725.P3512529366915362663

`A100641(n)+A050315(A297198(n))`
-/

namespace A155725.P3512529366915362663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100641 n + A050315 (A297198 n).toNat

end

end A155725.P3512529366915362663

/-!
# A155726: Production matrix for Fibonacci numbers, read by row.

The programs for A155726, there is no canonical definition to state claims against.
-/

/-! ## A155726.P10669715766848734212

`round(A155727(n)/2)`
-/

namespace A155726.P10669715766848734212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155727 n : ℚ) / 2)

end

end A155726.P10669715766848734212

/-! ## A155726.P17154294266112094689

`A127701(n+1)-char[∑[n-2]]`
-/

namespace A155726.P17154294266112094689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127701 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A155726.P17154294266112094689

/-! ## A155726.P13052287176337112961

`A127648(n)-∑[A185018(n)]`
-/

namespace A155726.P13052287176337112961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155726.P13052287176337112961

/-! ## A155726.P4150620513322332500

`A167374(n+1)+A127648(n)`
-/

namespace A155726.P4150620513322332500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (n + 1) + A127648 n

end

end A155726.P4150620513322332500

/-! ## A155726.P10795369635969526381

`A127648(n)-A103452(n+2)`
-/

namespace A155726.P10795369635969526381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n - A103452 (n + 2)

end

end A155726.P10795369635969526381

/-! ## A155726.P3261334657504395989

`Δ[A057944(n)+abs(A117568(n))]`
-/

namespace A155726.P3261334657504395989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + |A117568 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155726.P3261334657504395989

/-! ## A155726.P5474347964298904049

`A127648(n)+Δ[abs(A117568(n))]`
-/

namespace A155726.P5474347964298904049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117568 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n + (f1 (n + 1) - f1 n)

end

end A155726.P5474347964298904049

/-! ## A155726.P7887412168012699798

`Δ[A057944(n)+A023532(n+1)]`
-/

namespace A155726.P7887412168012699798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A023532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155726.P7887412168012699798

/-! ## A155726.P15337603947114153575

`Δ[A057944(n)-A023531(n+1)]`
-/

namespace A155726.P15337603947114153575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n - A023531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155726.P15337603947114153575

/-! ## A155726.P4970029657222147616

`A128132(n+2)+A007318(n)*A128132(n+1)`
-/

namespace A155726.P4970029657222147616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128132 (n + 2) + A007318 n * A128132 (n + 1)

end

end A155726.P4970029657222147616

/-!
# A155727: Production matrix of the Jacobsthal numbers, read by row.

The programs for A155727, there is no canonical definition to state claims against.
-/

/-! ## A155727.P6937717596492396144

`A127775(n+1)-∑[A185018(n)]`
-/

namespace A155727.P6937717596492396144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127775 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155727.P6937717596492396144

/-! ## A155727.P14574207295115698216

`A167374(n+1)+A127775(n+1)`
-/

namespace A155727.P14574207295115698216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (n + 1) + A127775 (n + 1)

end

end A155727.P14574207295115698216

/-! ## A155727.P12680751972932935906

`A127775(n+1)-A103452(n+2)`
-/

namespace A155727.P12680751972932935906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127775 (n + 1) - A103452 (n + 2)

end

end A155727.P12680751972932935906

/-! ## A155727.P6044610156705897100

`Δ[A023532(n+1)+A003056(n)²]`
-/

namespace A155727.P6044610156705897100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (n + 1) + A003056 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155727.P6044610156705897100

/-! ## A155727.P13176543898312016231

`abs(Δ[A061579(n)])-A166124(n+2)`
-/

namespace A155727.P13176543898312016231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A166124 (n + 2)

end

end A155727.P13176543898312016231

/-! ## A155727.P7034674821188458626

`Δ[A003056(n)²-A023531(n+1)]`
-/

namespace A155727.P7034674821188458626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 - A023531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155727.P7034674821188458626

/-! ## A155727.P15955836478241571557

`Δ[A003056(n)²-A042974(n+1)]`
-/

namespace A155727.P15955836478241571557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 - A042974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155727.P15955836478241571557

/-! ## A155727.P8995640371200683733

`Δ[A003056(n)²-A129184(n+1)]`
-/

namespace A155727.P8995640371200683733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 - A129184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155727.P8995640371200683733

/-! ## A155727.P18072036726077302143

`Δ[A117707(n)²-A042974(n+1)]`
-/

namespace A155727.P18072036726077302143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 n ^ 2 - A042974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155727.P18072036726077302143

/-! ## A155727.P9290769684592704911

`Δ[A003056(n)²-A010054(n+2)]`
-/

namespace A155727.P9290769684592704911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 - A010054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155727.P9290769684592704911

/-!
# A155728: INVERTi transform of A054765: (1, 3, 19, 160, 1744, ...).

The programs for A155728, there is no canonical definition to state claims against.
-/

/-! ## A155728.P1443121340355646980

`A155729(A108895(n))`
-/

namespace A155728.P1443121340355646980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155729 (A108895 n).toNat

end

end A155728.P1443121340355646980

/-! ## A155728.P6705947988418854888

`record[A155729(A000008(n))]`
-/

namespace A155728.P6705947988418854888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155729 (A000008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155728.P6705947988418854888

/-! ## A155728.P1596894692436916659

`record[A155729(A001302(n))]`
-/

namespace A155728.P1596894692436916659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155729 (A001302 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155728.P1596894692436916659

/-!
# A155729: Triangle read by rows, M * Q; M = (T(n,k) = A155728(n-k+1)); Q = (A155728 * 0^(n-k)).

The programs for A155729, there is no canonical definition to state claims against.
-/

/-! ## A155729.P2784574887029745645

`A365332(A170919(n+3))+A347870(n+1)`
-/

namespace A155729.P2784574887029745645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365332 (A170919 (n + 3)).toNat + A347870 (n + 1)

end

end A155729.P2784574887029745645

/-!
# A155730: Indices of Bell numbers that are divisible by 5.

The programs for A155730, there is no canonical definition to state claims against.
-/

/-! ## A155730.P3208102241181047425

`eq[1, A015714(A146120(n))]`
-/

namespace A155730.P3208102241181047425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015714 (A146120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155730.P3208102241181047425

/-! ## A155730.P6707291994531137435

`eq[1, A016044(A146110(n))]`
-/

namespace A155730.P6707291994531137435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016044 (A146110 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155730.P6707291994531137435

/-! ## A155730.P12072869557595563833

`eq[A146095(n), A185012(n)]`
-/

namespace A155730.P12072869557595563833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155730.P12072869557595563833

/-! ## A155730.P12149588643379345499

`eq[A146095(n), A185015(n)]`
-/

namespace A155730.P12149588643379345499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155730.P12149588643379345499

/-! ## A155730.P6323658160685581707

`eq[A146095(n), A185016(n)]`
-/

namespace A155730.P6323658160685581707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155730.P6323658160685581707

/-! ## A155730.P14348510614615305724

`eq[A146095(n), A185017(n)]`
-/

namespace A155730.P14348510614615305724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155730.P14348510614615305724

/-! ## A155730.P17211937586271552399

`eq[tan(A113052(n)), A146095(n)]`
-/

namespace A155730.P17211937586271552399
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A113052 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A155730.P17211937586271552399

/-! ## A155730.P1358054402867563186

`eq[A146095(n), A181405(n+1)]`
-/

namespace A155730.P1358054402867563186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155730.P1358054402867563186

/-! ## A155730.P11633064116888936041

`eq[char[A146089(n+3)], A146095(n)]`
-/

namespace A155730.P11633064116888936041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146089 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A155730.P11633064116888936041

/-! ## A155730.P15222641748286529866

`eq[A138471(A123391(n+1)), A146095(n)]`
-/

namespace A155730.P15222641748286529866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (A123391 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155730.P15222641748286529866

/-! ## A155730.P15780778796519590994

`eq[A146095(n)+A016777(n), A016777(n)]`
-/

namespace A155730.P15780778796519590994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146095 n + A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155730.P15780778796519590994

/-! ## A155730.P16972290042204657516

`eq[A138471(n)-A146095(n), A138471(n)]`
-/

namespace A155730.P16972290042204657516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 n - A146095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155730.P16972290042204657516

/-! ## A155730.P15429969287332815313

`eq[1, A016777(A016777(n)*A146095(n))]`
-/

namespace A155730.P15429969287332815313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A016777 n * A146095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155730.P15429969287332815313

/-!
# A155731: 

The programs for A155731, there is no canonical definition to state claims against.
-/

/-! ## A155731.P17422218769164767990

`record[a(n-1)^n+n]` with `a(0)=1, a(1)=-1`
-/

namespace A155731.P17422218769164767990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 1) ^ n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155731.P17422218769164767990

/-!
# A155732: Numbers k such that k^3 + 8*k^2 + 10*k - 8 is prime.

The programs for A155732, there is no canonical definition to state claims against.
-/

/-! ## A155732.P1117725471321886181

`eq[A088663(A338243(n)), A167294(n+1)]`
-/

namespace A155732.P1117725471321886181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088663 (A338243 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155732.P1117725471321886181

/-! ## A155732.P11243477228867653401

`lt[A357488(n+5), A272644(A071883(n+4))]`
-/

namespace A155732.P11243477228867653401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357488 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272644 (A071883 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155732.P11243477228867653401

/-! ## A155732.P708607339850419871

`A014261(lt[A343611(4*n+13), A285471(8*n+5)])`
-/

namespace A155732.P708607339850419871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343611 (4 * n + 13)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285471 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155732.P708607339850419871

/-! ## A155732.P7624189230044137406

`record[gcd(A000265(n+1), A370333(n))]`
-/

namespace A155732.P7624189230044137406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 1)) (A370333 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155732.P7624189230044137406

/-! ## A155732.P8918685159854544513

`lt[A196563(n), A000035(A062993(n))]`
-/

namespace A155732.P8918685159854544513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A062993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155732.P8918685159854544513

/-!
# A155733: 

The programs for A155733, there is no canonical definition to state claims against.
-/

/-! ## A155733.P10673262316110111777

`a(n-1)^(n+1)+n` with `a(0)=1`
-/

namespace A155733.P10673262316110111777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ (n + 1) + n

end

end A155733.P10673262316110111777

/-!
# A155734: Binomial transform of A154879.

The programs for A155734, the canonical program `A155734.P8046281951794478413` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155734 has offset 0).

The definition of A155734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155734.P8046281951794478413

`3*a(n-1)` with `a(0)=3, a(1)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155734

/-- `3*a(n-1)` -/
def P8046281951794478413.Spec : Prop :=
  ∀ n, (P8046281951794478413.a n : ℤ) = A155734 n

theorem P8046281951794478413.correct : P8046281951794478413.Spec := by
  intro n
  simp only [A155734]

end A155734

/-! ## A155734.P5022665827327921963

`3^abs(1-n)`
-/

namespace A155734.P5022665827327921963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

end

end A155734.P5022665827327921963

namespace A155734

/-- `3^abs(1-n)` -/
def P5022665827327921963.Spec : Prop :=
  ∀ n, P5022665827327921963.a n = (A155734 n : ℚ)

end A155734

/-! ## A155734.P4828393739190857941

`ogf((3-8x)/(1-3x))`
-/

namespace A155734.P4828393739190857941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8] [1, -3] n

end

end A155734.P4828393739190857941

namespace A155734

/-- `ogf((3-8x)/(1-3x))` -/
def P4828393739190857941.Spec : Prop :=
  ∀ n, P4828393739190857941.a n = A155734 n

end A155734

/-! ## A155734.P13406271508377462579

`a(n-1)/cot(atan(3))` with `a(0)=3, a(1)=1`
-/

namespace A155734.P13406271508377462579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A155734.P13406271508377462579

namespace A155734

/-- `a(n-1)/cot(atan(3))` -/
def P13406271508377462579.Spec : Prop :=
  ∀ n, P13406271508377462579.a n = (A155734 n : ℝ)

end A155734

/-! ## A155734.P5258972020893139987

`or(ceil(3^(n-1)), ceil(acot(n)))`
-/

namespace A155734.P5258972020893139987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A155734.P5258972020893139987

namespace A155734

/-- `or(ceil(3^(n-1)), ceil(acot(n)))` -/
def P5258972020893139987.Spec : Prop :=
  ∀ n, P5258972020893139987.a n = A155734 n

end A155734

/-! ## A155734.P13963839253375710116

`a(n-1)/sqrt(1/9)` with `a(0)=3, a(1)=1`
-/

namespace A155734.P13963839253375710116
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A155734.P13963839253375710116

namespace A155734

/-- `a(n-1)/sqrt(1/9)` -/
def P13963839253375710116.Spec : Prop :=
  ∀ n, P13963839253375710116.a n = (A155734 n : ℝ)

end A155734

/-! ## A155734.P2073916301992448524

`3*3^((n-2)%(n+1))`
-/

namespace A155734.P2073916301992448524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (3 : ℚ) ^ (Int.tmod ((n : ℤ) - 2) (n + 1 : ℤ) : ℤ)

end

end A155734.P2073916301992448524

namespace A155734

/-- `3*3^((n-2)%(n+1))` -/
def P2073916301992448524.Spec : Prop :=
  ∀ n, P2073916301992448524.a n = (A155734 n : ℚ)

end A155734

/-! ## A155734.P9085586537291165064

`lcm(3^(n-1), a(n-1))` with `a(0)=3, a(1)=1`
-/

namespace A155734.P9085586537291165064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A155734.P9085586537291165064

namespace A155734

/-- `lcm(3^(n-1), a(n-1))` -/
def P9085586537291165064.Spec : Prop :=
  ∀ n, (P9085586537291165064.a n : ℤ) = A155734 n

end A155734

/-! ## A155734.P6783541015863699247

`floor(a(gcd(3, n)-1)^(n-1))` with `a(0)=3`
-/

namespace A155734.P6783541015863699247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (Nat.gcd 3 n - 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A155734.P6783541015863699247

namespace A155734

/-- `floor(a(gcd(3, n)-1)^(n-1))` -/
def P6783541015863699247.Spec : Prop :=
  ∀ n, P6783541015863699247.a n = A155734 n

end A155734

/-! ## A155734.P4967164157158003986

`lcm(3, a(n-1)+1)-3` with `a(0)=3, a(1)=1, a(2)=3`
-/

namespace A155734.P4967164157158003986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 3] fun n a =>
  (Int.lcm 3 (a (n - 1) + 1) : ℤ) - 3

end

end A155734.P4967164157158003986

namespace A155734

/-- `lcm(3, a(n-1)+1)-3` -/
def P4967164157158003986.Spec : Prop :=
  ∀ n, P4967164157158003986.a n = A155734 n

end A155734

/-! ## A155734.P8476783671947099560

`or(1, 3^((2*n+1)%(n+2)))`
-/

namespace A155734.P8476783671947099560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 ^ ((2 * n + 1) % (n + 2)))

end

end A155734.P8476783671947099560

namespace A155734

/-- `or(1, 3^((2*n+1)%(n+2)))` -/
def P8476783671947099560.Spec : Prop :=
  ∀ n, (P8476783671947099560.a n : ℤ) = A155734 n

end A155734

/-! ## A155734.P4903235196138454617

`val(a(n-1), 2)+3^(n-1)` with `a(0)=3`
-/

namespace A155734.P4903235196138454617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (SequenceMachineLib.valuation (SequenceMachineLib.roundAway (a (n - 1))).toNat 2 : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A155734.P4903235196138454617

namespace A155734

/-- `val(a(n-1), 2)+3^(n-1)` -/
def P4903235196138454617.Spec : Prop :=
  ∀ n, P4903235196138454617.a n = (A155734 n : ℚ)

end A155734

/-! ## A155734.P5779073667927070084

`3^(n-1)/gcd(2, a(n-1))` with `a(0)=3`
-/

namespace A155734.P5779073667927070084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A155734.P5779073667927070084

namespace A155734

/-- `3^(n-1)/gcd(2, a(n-1))` -/
def P5779073667927070084.Spec : Prop :=
  ∀ n, P5779073667927070084.a n = (A155734 n : ℚ)

end A155734

/-! ## A155734.P9115904702942958662

`3^(n-1)-val(a(n-1), 2)` with `a(0)=3`
-/

namespace A155734.P9115904702942958662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (SequenceMachineLib.valuation (SequenceMachineLib.roundAway (a (n - 1))).toNat 2 : ℚ)

end

end A155734.P9115904702942958662

namespace A155734

/-- `3^(n-1)-val(a(n-1), 2)` -/
def P9115904702942958662.Spec : Prop :=
  ∀ n, P9115904702942958662.a n = (A155734 n : ℚ)

end A155734

/-! ## A155734.P146799557506901276

`3^(n-1)/and(1, a(n-1))` with `a(0)=3`
-/

namespace A155734.P146799557506901276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / (Int.land 1 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A155734.P146799557506901276

namespace A155734

/-- `3^(n-1)/and(1, a(n-1))` -/
def P146799557506901276.Spec : Prop :=
  ∀ n, P146799557506901276.a n = (A155734 n : ℚ)

end A155734

/-! ## A155734.P15153424558203858308

`and(4, a(n-1))+3^(n-1)` with `a(0)=3`
-/

namespace A155734.P15153424558203858308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (Int.land 4 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A155734.P15153424558203858308

namespace A155734

/-- `and(4, a(n-1))+3^(n-1)` -/
def P15153424558203858308.Spec : Prop :=
  ∀ n, P15153424558203858308.a n = (A155734 n : ℚ)

end A155734

/-! ## A155734.P11076226065615679571

`3^(n-1)-and(4, a(n-1))` with `a(0)=3`
-/

namespace A155734.P11076226065615679571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (Int.land 4 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A155734.P11076226065615679571

namespace A155734

/-- `3^(n-1)-and(4, a(n-1))` -/
def P11076226065615679571.Spec : Prop :=
  ∀ n, P11076226065615679571.a n = (A155734 n : ℚ)

end A155734

/-! ## A155734.P967740635342508860

`floor(3^(C(2, 2*n+1)+n-1))`
-/

namespace A155734.P967740635342508860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((Nat.choose 2 (2 * n + 1) : ℤ) + ((n : ℤ) - 1) : ℤ)⌋

end

end A155734.P967740635342508860

namespace A155734

/-- `floor(3^(C(2, 2*n+1)+n-1))` -/
def P967740635342508860.Spec : Prop :=
  ∀ n, P967740635342508860.a n = A155734 n

end A155734

/-! ## A155734.P11439260539437768331

`ceil(C(2, 2*n+1)+3^(n-1))`
-/

namespace A155734.P11439260539437768331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose 2 (2 * n + 1) : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A155734.P11439260539437768331

namespace A155734

/-- `ceil(C(2, 2*n+1)+3^(n-1))` -/
def P11439260539437768331.Spec : Prop :=
  ∀ n, P11439260539437768331.a n = A155734 n

end A155734

/-! ## A155734.P4983493590962354591

`round(3^(C(2, 2*n+1)+n-1))`
-/

namespace A155734.P4983493590962354591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ ((Nat.choose 2 (2 * n + 1) : ℤ) + ((n : ℤ) - 1) : ℤ))

end

end A155734.P4983493590962354591

namespace A155734

/-- `round(3^(C(2, 2*n+1)+n-1))` -/
def P4983493590962354591.Spec : Prop :=
  ∀ n, P4983493590962354591.a n = A155734 n

end A155734

/-!
# A155736: Numbers n such that 4*n^2+2*n-1 is a prime.

The programs for A155736, there is no canonical definition to state claims against.
-/

/-! ## A155736.P12886201629005890930

`floor(sqrt(A155737(n+1))/2)`
-/

namespace A155736.P12886201629005890930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A155737 (n + 1) : ℝ) / 2⌋

end

end A155736.P12886201629005890930

/-! ## A155736.P1551946511638272203

`record[A045546(n+1)/A020639(A045546(n+1))]`
-/

namespace A155736.P1551946511638272203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045546 (n + 1) : ℚ) / (A020639 (A045546 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155736.P1551946511638272203

/-! ## A155736.P11769358705928628368

`eq[1, A289357(2*(n+1))]+1`
-/

namespace A155736.P11769358705928628368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289357 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A155736.P11769358705928628368

/-! ## A155736.P18241665952454491438

`eq[2, A278247(2*n+1)]+1`
-/

namespace A155736.P18241665952454491438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A155736.P18241665952454491438

/-! ## A155736.P3269520237739968577

`lt[A272903(2*n+3), 2]+1`
-/

namespace A155736.P3269520237739968577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272903 (2 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A155736.P3269520237739968577

/-! ## A155736.P10795804385151801383

`record[A032742(A045546(n+1))]`
-/

namespace A155736.P10795804385151801383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A045546 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155736.P10795804385151801383

/-! ## A155736.P744282290061638653

`lt[8, A108151(A004280(n+1))]`
-/

namespace A155736.P744282290061638653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (A004280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155736.P744282290061638653

/-! ## A155736.P6817306202451492527

`A026741(floor(sqrt(A155737(n+1))))`
-/

namespace A155736.P6817306202451492527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.sqrt (A155737 (n + 1))).toNat

end

end A155736.P6817306202451492527

/-! ## A155736.P454854677333247210

`record[A001057(A002328(n+1))-1]`
-/

namespace A155736.P454854677333247210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A002328 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155736.P454854677333247210

/-! ## A155736.P13433885228758370631

`eq[A060576(n+1), A272903(2*n+3)]+1`
-/

namespace A155736.P13433885228758370631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272903 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A155736.P13433885228758370631

/-! ## A155736.P9998765285515221729

`eq[A157928(n+1), A272903(2*n+3)]+1`
-/

namespace A155736.P9998765285515221729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272903 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A155736.P9998765285515221729

/-! ## A155736.P7773286559487651451

`eq[A267922(2*n+1), A272903(2*n+3)]+1`
-/

namespace A155736.P7773286559487651451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267922 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272903 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A155736.P7773286559487651451

/-! ## A155736.P9803311386749208782

`eq[1, ∑{e}[1-∑[2-8*n], #]]`
-/

namespace A155736.P9803311386749208782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (8 * n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155736.P9803311386749208782

/-! ## A155736.P16774857822915048942

`lt[n², ∑{p}[A125202(n+1), #]]`
-/

namespace A155736.P16774857822915048942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155736.P16774857822915048942

/-!
# A155737: Primes of the form 4*n^2 + 2*n -1.

The programs for A155737, there is no canonical definition to state claims against.
-/

/-! ## A155737.P12470562559167864455

`A002327(eq[1, A002328(n+1)%2]+1)`
-/

namespace A155737.P12470562559167864455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002328 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A155737.P12470562559167864455

/-! ## A155737.P12022488413118554278

`A002327(eq[1, gcd(2, A002328(n+1))]+1)`
-/

namespace A155737.P12022488413118554278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A002328 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A155737.P12022488413118554278

/-! ## A155737.P9615629988916965463

`A125202(A155736(n+1)+1)`
-/

namespace A155737.P9615629988916965463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (A155736 (n + 1) + 1).toNat

end

end A155737.P9615629988916965463

/-! ## A155737.P12026970410503560942

`∩[A002327(n+1), A125202(n+1)]`
-/

namespace A155737.P12026970410503560942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155737.P12026970410503560942

/-! ## A155737.P5129169110739822779

`∩[A084720(n+1), A125202(n+1)]`
-/

namespace A155737.P5129169110739822779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155737.P5129169110739822779

/-! ## A155737.P446226191862415973

`∩[A125202(n+1), A179273(n+1)]`
-/

namespace A155737.P446226191862415973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155737.P446226191862415973

/-! ## A155737.P10249004999316193666

`∩[A125202(n+1), A239709(n+1)]`
-/

namespace A155737.P10249004999316193666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155737.P10249004999316193666

/-! ## A155737.P16461905968892330706

`record[A108151(2*n+1)]`
-/

namespace A155737.P16461905968892330706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155737.P16461905968892330706

/-! ## A155737.P12791015842268232973

`record[A209188(2*(n+1))]`
-/

namespace A155737.P12791015842268232973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155737.P12791015842268232973

/-! ## A155737.P6949863371890305871

`record[A356247(2*n+3)]`
-/

namespace A155737.P6949863371890305871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356247 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155737.P6949863371890305871

/-! ## A155737.P6138948384034343036

`∩[A002327(n+1), A081353(n)]`
-/

namespace A155737.P6138948384034343036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155737.P6138948384034343036

/-! ## A155737.P10918886595203030667

`∩[A084720(n+1), A081353(n)]`
-/

namespace A155737.P10918886595203030667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155737.P10918886595203030667

/-! ## A155737.P4818476189875237951

`∩[A161550(n+1), A081353(n)]`
-/

namespace A155737.P4818476189875237951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155737.P4818476189875237951

/-! ## A155737.P2426660495552471879

`∩[A179273(n+1), A081353(n)]`
-/

namespace A155737.P2426660495552471879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155737.P2426660495552471879

/-! ## A155737.P15342775873661258900

`∩[A125202(n+1), A161550(n+1)]`
-/

namespace A155737.P15342775873661258900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155737.P15342775873661258900

/-! ## A155737.P14548921015388235319

`A165900(record[A000265(A002328(n+1))])`
-/

namespace A155737.P14548921015388235319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155737.P14548921015388235319

/-! ## A155737.P16988871227785377783

`A165900(record[A131738(A045546(n+1))])`
-/

namespace A155737.P16988871227785377783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (A045546 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155737.P16988871227785377783

/-! ## A155737.P2401749132199986051

`∩[A161550(2*(n+1)), A264754(n)]`
-/

namespace A155737.P2401749132199986051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155737.P2401749132199986051

/-! ## A155737.P18431485164048287127

`∩[A161550(2*(n+1)), A024206(n+2)]`
-/

namespace A155737.P18431485164048287127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155737.P18431485164048287127

/-! ## A155737.P17954062188268619862

`∩[A161550(2*(n+1)), A217571(n+2)]`
-/

namespace A155737.P17954062188268619862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217571 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155737.P17954062188268619862

/-!
# A155738: Primes p such that 4*p^2+2*p-1 is also prime.

The programs for A155738, there is no canonical definition to state claims against.
-/

/-! ## A155738.P13200952256664899510

`p?[A155736(n+1)]`
-/

namespace A155738.P13200952256664899510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155738.P13200952256664899510

/-! ## A155738.P10313719546175002685

`record[A006530(A155736(n+2))]`
-/

namespace A155738.P10313719546175002685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A155736 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155738.P10313719546175002685

/-! ## A155738.P9260946469275220629

`filter[A155736(n+1), A010051(#)]`
-/

namespace A155738.P9260946469275220629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A155738.P9260946469275220629

/-! ## A155738.P13574896787453386548

`∩[A000040(n+1), A155736(n+1)]`
-/

namespace A155738.P13574896787453386548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P13574896787453386548

/-! ## A155738.P6001287357246958615

`∩[A040159(n+1), A155736(n+1)]`
-/

namespace A155738.P6001287357246958615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P6001287357246958615

/-! ## A155738.P5466391158115786666

`∩[A040161(n+1), A155736(n+1)]`
-/

namespace A155738.P5466391158115786666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P5466391158115786666

/-! ## A155738.P15689073586773618579

`∩[A040165(n+1), A155736(n+1)]`
-/

namespace A155738.P15689073586773618579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P15689073586773618579

/-! ## A155738.P14869427322083553948

`∩[A040169(n+1), A155736(n+1)]`
-/

namespace A155738.P14869427322083553948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P14869427322083553948

/-! ## A155738.P2264923384489348133

`∩[A040171(n+1), A155736(n+1)]`
-/

namespace A155738.P2264923384489348133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P2264923384489348133

/-! ## A155738.P14903017483695772258

`∩[A040177(n+1), A155736(n+1)]`
-/

namespace A155738.P14903017483695772258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P14903017483695772258

/-! ## A155738.P15339136945202168219

`∩[A040179(n+1), A155736(n+1)]`
-/

namespace A155738.P15339136945202168219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P15339136945202168219

/-! ## A155738.P1927016510860155923

`∩[A040184(n+1), A155736(n+1)]`
-/

namespace A155738.P1927016510860155923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P1927016510860155923

/-! ## A155738.P12646880726405808170

`∩[A040970(n+1), A155736(n+1)]`
-/

namespace A155738.P12646880726405808170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P12646880726405808170

/-! ## A155738.P18169759393166958870

`∩[A040972(n+1), A155736(n+1)]`
-/

namespace A155738.P18169759393166958870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P18169759393166958870

/-! ## A155738.P13260259512195761921

`∩[A040974(n+1), A155736(n+1)]`
-/

namespace A155738.P13260259512195761921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P13260259512195761921

/-! ## A155738.P8181093535754702507

`∩[A040978(n+1), A155736(n+1)]`
-/

namespace A155738.P8181093535754702507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P8181093535754702507

/-! ## A155738.P7240679501299958187

`∩[A040980(n+1), A155736(n+1)]`
-/

namespace A155738.P7240679501299958187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P7240679501299958187

/-! ## A155738.P8506361578080081783

`∩[A040982(n+1), A155736(n+1)]`
-/

namespace A155738.P8506361578080081783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P8506361578080081783

/-! ## A155738.P8483606913694827405

`∩[A040986(n+1), A155736(n+1)]`
-/

namespace A155738.P8483606913694827405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P8483606913694827405

/-! ## A155738.P6343638558546076656

`∩[A040990(n+1), A155736(n+1)]`
-/

namespace A155738.P6343638558546076656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155738.P6343638558546076656

/-!
# A155742: Triangle T(n, k) = (-1)^n*StirlingS1(n, k)*StirlingS1(n, n-k), read by rows.

The programs for A155742, the canonical program `A155742.P15062511152008247460` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155742 has offset 0).

The definition of A155742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155742.P14654066523461824335

`A155868(n)%A155744(n)`
-/

namespace A155742.P14654066523461824335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155868 n) (A155744 n)

end

end A155742.P14654066523461824335

namespace A155742

/-- `A155868(n)%A155744(n)` -/
def P14654066523461824335.Spec : Prop :=
  ∀ n, P14654066523461824335.a n = A155742 n

end A155742

/-! ## A155742.P4699823273608998479

`abs(A048994(n)*A054654(n))`
-/

namespace A155742.P4699823273608998479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 n * A054654 n|

end

end A155742.P4699823273608998479

namespace A155742

/-- `abs(A048994(n)*A054654(n))` -/
def P4699823273608998479.Spec : Prop :=
  ∀ n, P4699823273608998479.a n = A155742 n

end A155742

/-! ## A155742.P7940064228477661565

`abs(A054654(n)*A132393(n))`
-/

namespace A155742.P7940064228477661565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 n * A132393 n|

end

end A155742.P7940064228477661565

namespace A155742

/-- `abs(A054654(n)*A132393(n))` -/
def P7940064228477661565.Spec : Prop :=
  ∀ n, P7940064228477661565.a n = A155742 n

end A155742

/-! ## A155742.P15062511152008247460

`A132393(A061579(n))*A132393(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A155742

/-- `A132393(A061579(n))*A132393(n)` -/
def P15062511152008247460.Spec : Prop :=
  ∀ n, P15062511152008247460.a n = A155742 n

theorem P15062511152008247460.correct : P15062511152008247460.Spec := by
  intro n
  simp only [A155742]

end A155742

/-! ## A155742.P5008670115174381856

`abs(A048994(n)*A048994(A061579(n)))`
-/

namespace A155742.P5008670115174381856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 n * A048994 (A061579 n).toNat|

end

end A155742.P5008670115174381856

namespace A155742

/-- `abs(A048994(n)*A048994(A061579(n)))` -/
def P5008670115174381856.Spec : Prop :=
  ∀ n, P5008670115174381856.a n = A155742 n

end A155742

/-! ## A155742.P13505789780883712956

`abs(A054654(n)*A054654(A061579(n)))`
-/

namespace A155742.P13505789780883712956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 n * A054654 (A061579 n).toNat|

end

end A155742.P13505789780883712956

namespace A155742

/-- `abs(A054654(n)*A054654(A061579(n)))` -/
def P13505789780883712956.Spec : Prop :=
  ∀ n, P13505789780883712956.a n = A155742 n

end A155742

/-! ## A155742.P3566833411449954076

`abs((A054654(n)-A154843(n))*A054654(n))`
-/

namespace A155742.P3566833411449954076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A054654 n - A154843 n) * A054654 n|

end

end A155742.P3566833411449954076

namespace A155742

/-- `abs((A054654(n)-A154843(n))*A054654(n))` -/
def P3566833411449954076.Spec : Prop :=
  ∀ n, P3566833411449954076.a n = A155742 n

end A155742

/-! ## A155742.P14289692806823951536

`A132393(A038722(n+1)-1)*A132393(n)`
-/

namespace A155742.P14289692806823951536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A038722 (n + 1) - 1).toNat * A132393 n

end

end A155742.P14289692806823951536

namespace A155742

/-- `A132393(A038722(n+1)-1)*A132393(n)` -/
def P14289692806823951536.Spec : Prop :=
  ∀ n, P14289692806823951536.a n = A155742 n

end A155742

/-! ## A155742.P10828573127242706318

`A155825(n)/A098361(n)`
-/

namespace A155742.P10828573127242706318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155825 n : ℚ) / (A098361 n : ℚ)

end

end A155742.P10828573127242706318

namespace A155742

/-- `A155825(n)/A098361(n)` -/
def P10828573127242706318.Spec : Prop :=
  ∀ n, P10828573127242706318.a n = (A155742 n : ℚ)

end A155742

/-!
# A155744: Triangle T(n, k) = (-1)^(n-k)*StirlingS1(n, k) + (-1)^k*StirlingS1(n, n-k) + (-1)^n*StirlingS1(n, k)*StirlingS1(n, n-k), read by rows.

The programs for A155744, there is no canonical definition to state claims against.
-/

/-! ## A155744.P13020951865040769019

`A130743(A055652(n)²)`
-/

namespace A155744.P13020951865040769019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130743 (A055652 n ^ 2).toNat

end

end A155744.P13020951865040769019

/-! ## A155744.P4844565064568023793

`A005652(A055652(n)!)`
-/

namespace A155744.P4844565064568023793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (Nat.factorial (A055652 n).toNat)

end

end A155744.P4844565064568023793

/-! ## A155744.P4552782038968649610

`A130743(2^A055652(n))`
-/

namespace A155744.P4552782038968649610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130743 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A055652 n : ℤ))).toNat

end

end A155744.P4552782038968649610

/-! ## A155744.P5936329869580167532

`A140126(2^A062275(n))`
-/

namespace A155744.P5936329869580167532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140126 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A062275 n : ℤ))).toNat

end

end A155744.P5936329869580167532

/-! ## A155744.P12978408300320950138

`A035236((A062275(n)+1)!)`
-/

namespace A155744.P12978408300320950138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035236 (Nat.factorial (A062275 n + 1).toNat)

end

end A155744.P12978408300320950138

/-!
# A155745: a(n) = number of distinct (n+1)- nonnegative integer vectors describing, up to symmetry, the hyperplanes of the real n-dimensional cube.

The programs for A155745, there is no canonical definition to state claims against.
-/

/-! ## A155745.P4234116360121135054

`floor(C(n*a(n-2), 2)/n)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A155745.P4234116360121135054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  ⌊(Nat.choose ((n : ℤ) * a (n - 2)).toNat 2 : ℚ) / (n : ℚ)⌋

end

end A155745.P4234116360121135054

/-! ## A155745.P10734126951261490523

`(a(n-1)-1)*a(n-2)+3` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A155745.P10734126951261490523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  (a (n - 1) - 1) * a (n - 2) + 3

end

end A155745.P10734126951261490523

/-! ## A155745.P4233316407783434990

`3-(1-a(n-1))*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A155745.P4233316407783434990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  3 - (1 - a (n - 1)) * a (n - 2)

end

end A155745.P4233316407783434990

/-!
# A155747: Smallest number m with property that 2^m-1 is divisible by first n odd primes.

The programs for A155747, there is no canonical definition to state claims against.
-/

/-! ## A155747.P14855208284674388704

`lcm(a(n-1), A014664(n+2))` with `a(0)=2`
-/

namespace A155747.P14855208284674388704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A014664 (n + 2))

end

end A155747.P14855208284674388704

/-! ## A155747.P2772998503010042721

`lcm(abs(a(n-1)), A337878(n+2))` with `a(0)=2`
-/

namespace A155747.P2772998503010042721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A337878 (n + 2))

end

end A155747.P2772998503010042721

/-! ## A155747.P11681305658014949279

`lcm(ceil(a(n-1)), A270600(n+2))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A155747.P11681305658014949279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A270600 (n + 2))

end

end A155747.P11681305658014949279

/-! ## A155747.P17627768889812742018

`lcm(-a(n-1), A007733(A000040(n+2)))` with `a(0)=2`
-/

namespace A155747.P17627768889812742018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (A007733 (A000040 (n + 2)).toNat)

end

end A155747.P17627768889812742018

/-!
# A155750: First differences of A031215.

The programs for A155750, the canonical program `A155750.P12905767560372955311` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155750 has offset 1).

The definition of A155750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155750.P9480929842472074607

`A001223(2*(n+1))+A001223(2*(n+1)+1)`
-/

namespace A155750.P9480929842472074607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * (n + 1)) + A001223 (2 * (n + 1) + 1)

end

end A155750.P9480929842472074607

namespace A155750

/-- `A001223(2*(n+1))+A001223(2*(n+1)+1)` -/
def P9480929842472074607.Spec : Prop :=
  ∀ n, P9480929842472074607.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P12905767560372955311

`A031131(2*(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A155750

/-- `A031131(2*(n+1))` -/
def P12905767560372955311.Spec : Prop :=
  ∀ n, P12905767560372955311.a n = A155750 (n + 1)

theorem P12905767560372955311.correct : P12905767560372955311.Spec := by
  intro n
  simp only [A155750, Nat.add_sub_cancel]

end A155750

/-! ## A155750.P18337287611572338521

`A000040(2*(n+1)+2)-A000040(2*(n+1))`
-/

namespace A155750.P18337287611572338521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1) + 2) - A000040 (2 * (n + 1))

end

end A155750.P18337287611572338521

namespace A155750

/-- `A000040(2*(n+1)+2)-A000040(2*(n+1))` -/
def P18337287611572338521.Spec : Prop :=
  ∀ n, P18337287611572338521.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P18230758297377238904

`A255171(n+1)+A001223(n+1)`
-/

namespace A155750.P18230758297377238904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255171 (n + 1) + A001223 (n + 1)

end

end A155750.P18230758297377238904

namespace A155750

/-- `A255171(n+1)+A001223(n+1)` -/
def P18230758297377238904.Spec : Prop :=
  ∀ n, P18230758297377238904.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P11667871956816010548

`A155067(n+1)+A110854(n+1)`
-/

namespace A155750.P11667871956816010548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155067 (n + 1) + A110854 (n + 1)

end

end A155750.P11667871956816010548

namespace A155750

/-- `A155067(n+1)+A110854(n+1)` -/
def P11667871956816010548.Spec : Prop :=
  ∀ n, P11667871956816010548.a n = A155750 (n + 1)

theorem P11667871956816010548.correct : P11667871956816010548.Spec := by
  intro n
  simp only [A155750, Nat.add_sub_cancel, A155750.P11667871956816010548.a, A155750.P12905767560372955311.a, A031131, A031131.P2453725465626413076.a, A110854, A110854.P2471624004047318377.a, A155067, A155067.P7765073929489632747.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155750

/-! ## A155750.P2953647423449284309

`A088680(n+1)+A001223(2*n+3)`
-/

namespace A155750.P2953647423449284309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) + A001223 (2 * n + 3)

end

end A155750.P2953647423449284309

namespace A155750

/-- `A088680(n+1)+A001223(2*n+3)` -/
def P2953647423449284309.Spec : Prop :=
  ∀ n, P2953647423449284309.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P15082088047516277583

`A079424(n+1)+A079424(n+1)-A092163(n+1)`
-/

namespace A155750.P15082088047516277583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079424 (n + 1) + (A079424 (n + 1) - A092163 (n + 1))

end

end A155750.P15082088047516277583

namespace A155750

/-- `A079424(n+1)+A079424(n+1)-A092163(n+1)` -/
def P15082088047516277583.Spec : Prop :=
  ∀ n, P15082088047516277583.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P8353642490086691143

`Δ[A031215(n+1)]`
-/

namespace A155750.P8353642490086691143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155750.P8353642490086691143

namespace A155750

/-- `Δ[A031215(n+1)]` -/
def P8353642490086691143.Spec : Prop :=
  ∀ n, P8353642490086691143.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P2549787173617595617

`Δ[A141101(n+1)]+2`
-/

namespace A155750.P2549787173617595617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A155750.P2549787173617595617

namespace A155750

/-- `Δ[A141101(n+1)]+2` -/
def P2549787173617595617.Spec : Prop :=
  ∀ n, P2549787173617595617.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P4229987370511302897

`Δ[A055670(2*(n+1))]`
-/

namespace A155750.P4229987370511302897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155750.P4229987370511302897

namespace A155750

/-- `Δ[A055670(2*(n+1))]` -/
def P4229987370511302897.Spec : Prop :=
  ∀ n, P4229987370511302897.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P6808986850014328447

`A088680(n+1)+A078584(n+2)`
-/

namespace A155750.P6808986850014328447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) + A078584 (n + 2)

end

end A155750.P6808986850014328447

namespace A155750

/-- `A088680(n+1)+A078584(n+2)` -/
def P6808986850014328447.Spec : Prop :=
  ∀ n, P6808986850014328447.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P1791190687324578177

`A031215(n+2)-A031215(n+1)`
-/

namespace A155750.P1791190687324578177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 2) - A031215 (n + 1)

end

end A155750.P1791190687324578177

namespace A155750

/-- `A031215(n+2)-A031215(n+1)` -/
def P1791190687324578177.Spec : Prop :=
  ∀ n, P1791190687324578177.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P12064469461978632402

`A100479(n+2)-A092163(n+1)`
-/

namespace A155750.P12064469461978632402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 2) - A092163 (n + 1)

end

end A155750.P12064469461978632402

namespace A155750

/-- `A100479(n+2)-A092163(n+1)` -/
def P12064469461978632402.Spec : Prop :=
  ∀ n, P12064469461978632402.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P4378951154465513127

`Δ[A072473(n+1)+Δ[A007504(n)]]`
-/

namespace A155750.P4378951154465513127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155750.P4378951154465513127

namespace A155750

/-- `Δ[A072473(n+1)+Δ[A007504(n)]]` -/
def P4378951154465513127.Spec : Prop :=
  ∀ n, P4378951154465513127.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P1182683312788279624

`A078584(n+2)+A001223(2*(n+1))`
-/

namespace A155750.P1182683312788279624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (n + 2) + A001223 (2 * (n + 1))

end

end A155750.P1182683312788279624

namespace A155750

/-- `A078584(n+2)+A001223(2*(n+1))` -/
def P1182683312788279624.Spec : Prop :=
  ∀ n, P1182683312788279624.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P3859392465613931127

`A001223(n+1)+A072473(n+2)-A072473(n+1)`
-/

namespace A155750.P3859392465613931127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A072473 (n + 2) - A072473 (n + 1))

end

end A155750.P3859392465613931127

namespace A155750

/-- `A001223(n+1)+A072473(n+2)-A072473(n+1)` -/
def P3859392465613931127.Spec : Prop :=
  ∀ n, P3859392465613931127.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P71208542118927615

`A110854(n+1)+A031368(n+2)-A031368(n+1)`
-/

namespace A155750.P71208542118927615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110854 (n + 1) + (A031368 (n + 2) - A031368 (n + 1))

end

end A155750.P71208542118927615

namespace A155750

/-- `A110854(n+1)+A031368(n+2)-A031368(n+1)` -/
def P71208542118927615.Spec : Prop :=
  ∀ n, P71208542118927615.a n = A155750 (n + 1)

theorem P71208542118927615.correct : P71208542118927615.Spec := by
  intro n
  simp only [A155750, Nat.add_sub_cancel, A155750.P71208542118927615.a, A155750.P12905767560372955311.a, A031131, A031131.P2453725465626413076.a, A031368, A031368.P13740709942306963407.a, A110854, A110854.P2471624004047318377.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A155067, A155067.P7765073929489632747.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155750

/-! ## A155750.P14993159509617901470

`A088680(n+1)+A077133(n+2)-A077133(n+1)`
-/

namespace A155750.P14993159509617901470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) + (A077133 (n + 2) - A077133 (n + 1))

end

end A155750.P14993159509617901470

namespace A155750

/-- `A088680(n+1)+A077133(n+2)-A077133(n+1)` -/
def P14993159509617901470.Spec : Prop :=
  ∀ n, P14993159509617901470.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P2072488180806851345

`Δ[p?[A066207(n+1)]]`
-/

namespace A155750.P2072488180806851345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155750.P2072488180806851345

namespace A155750

/-- `Δ[p?[A066207(n+1)]]` -/
def P2072488180806851345.Spec : Prop :=
  ∀ n, P2072488180806851345.a n = A155750 (n + 1)

end A155750

/-! ## A155750.P5483359235271451482

`2*A052288(Δ[n²])`
-/

namespace A155750.P5483359235271451482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052288 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A155750.P5483359235271451482

namespace A155750

/-- `2*A052288(Δ[n²])` -/
def P5483359235271451482.Spec : Prop :=
  ∀ n, P5483359235271451482.a n = A155750 (n + 1)

end A155750

/-!
# A155751: A variation on 10^n mod 17.

The programs for A155751, the canonical program `A155751.P4093067894446623254` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155751 has offset 0).

The definition of A155751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155751.P4093067894446623254

`-a(n-8)` with `a(0)=1, a(1)=-7, a(2)=-2, a(3)=-3, a(4)=4, a(5)=6, a(6)=-8, a(7)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155751

/-- `-a(n-8)` -/
def P4093067894446623254.Spec : Prop :=
  ∀ n, P4093067894446623254.a n = A155751 n

theorem P4093067894446623254.correct : P4093067894446623254.Spec := by
  intro n
  simp only [A155751]

end A155751

/-!
# A155752: Where 2's occur in the prime differences A001223.

The programs for A155752, the canonical program `A155752.P6228689506561445427` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155752 has offset 1).

The definition of A155752 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A155752.P6228689506561445427

`A029707(n+1)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A155752

/-- `A029707(n+1)-1` -/
def P6228689506561445427.Spec : Prop :=
  ∀ n, P6228689506561445427.a n = A155752 (n + 1)

theorem P6228689506561445427.correct : P6228689506561445427.Spec := by
  intro n
  simp only [A155752, Nat.add_sub_cancel]

end A155752

/-! ## A155752.P13006952044900714727

`∑[A242767(n+2)]`
-/

namespace A155752.P13006952044900714727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155752.P13006952044900714727

namespace A155752

/-- `∑[A242767(n+2)]` -/
def P13006952044900714727.Spec : Prop :=
  ∀ n, P13006952044900714727.a n = A155752 (n + 1)

theorem P13006952044900714727.correct : P13006952044900714727.Spec := by
  intro n
  simp only [A155752, Nat.add_sub_cancel, A155752.P13006952044900714727.f1, A155752.P13006952044900714727.a, A155752.P6228689506561445427.a, A029707, A029707.P9157915946838587551.f1, A029707.P9157915946838587551.a, A242767, A242767.P6276449245007787369.a, A027833, A027833.P2673229578852313683.f2, A027833.P2673229578852313683.f3, A027833.P2673229578852313683.f1, A027833.P2673229578852313683.a, A001223, A001223.P5034056745985311719.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A155752

/-! ## A155752.P7459518252332119809

`A107770(n+1)-2`
-/

namespace A155752.P7459518252332119809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1) - 2

end

end A155752.P7459518252332119809

namespace A155752

/-- `A107770(n+1)-2` -/
def P7459518252332119809.Spec : Prop :=
  ∀ n, P7459518252332119809.a n = A155752 (n + 1)

theorem P7459518252332119809.correct : P7459518252332119809.Spec := by
  intro n
  simp only [A155752, Nat.add_sub_cancel, A155752.P7459518252332119809.a, A155752.P6228689506561445427.a, A029707, A029707.P9157915946838587551.f1, A029707.P9157915946838587551.a, A107770, A107770.P17401578179323890031.a, A242767, A242767.P6276449245007787369.a, A027833, A027833.P2673229578852313683.f2, A027833.P2673229578852313683.f3, A027833.P2673229578852313683.f1, A027833.P2673229578852313683.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A155752

/-! ## A155752.P13318044937829466067

`A027833(n)+a(n-1)` with `a(0)=1`
-/

namespace A155752.P13318044937829466067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027833 n + a (n - 1)

end

end A155752.P13318044937829466067

namespace A155752

/-- `A027833(n)+a(n-1)` -/
def P13318044937829466067.Spec : Prop :=
  ∀ n, P13318044937829466067.a n = A155752 (n + 1)

end A155752

/-! ## A155752.P9179256131980933011

`A144834(n+1)-A169643(n+1)`
-/

namespace A155752.P9179256131980933011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) - A169643 (n + 1)

end

end A155752.P9179256131980933011

namespace A155752

/-- `A144834(n+1)-A169643(n+1)` -/
def P9179256131980933011.Spec : Prop :=
  ∀ n, P9179256131980933011.a n = A155752 (n + 1)

end A155752

/-! ## A155752.P2411324856163050518

`A057428(A028310(n))+A029707(n+1)`
-/

namespace A155752.P2411324856163050518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A028310 n).toNat + A029707 (n + 1)

end

end A155752.P2411324856163050518

namespace A155752

/-- `A057428(A028310(n))+A029707(n+1)` -/
def P2411324856163050518.Spec : Prop :=
  ∀ n, P2411324856163050518.a n = A155752 (n + 1)

end A155752

/-! ## A155752.P9526880177131554676

`A033999(A000265(n+1))+A029707(n+1)`
-/

namespace A155752.P9526880177131554676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000265 (n + 1)).toNat + A029707 (n + 1)

end

end A155752.P9526880177131554676

namespace A155752

/-- `A033999(A000265(n+1))+A029707(n+1)` -/
def P9526880177131554676.Spec : Prop :=
  ∀ n, P9526880177131554676.a n = A155752 (n + 1)

end A155752

/-! ## A155752.P5393320182438247178

`A057428(A000005(n+1))+A029707(n+1)`
-/

namespace A155752.P5393320182438247178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000005 (n + 1)).toNat + A029707 (n + 1)

end

end A155752.P5393320182438247178

namespace A155752

/-- `A057428(A000005(n+1))+A029707(n+1)` -/
def P5393320182438247178.Spec : Prop :=
  ∀ n, P5393320182438247178.a n = A155752 (n + 1)

end A155752

/-! ## A155752.P5584804496314812919

`A057428(A002322(n+1))+A029707(n+1)`
-/

namespace A155752.P5584804496314812919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A002322 (n + 1)).toNat + A029707 (n + 1)

end

end A155752.P5584804496314812919

namespace A155752

/-- `A057428(A002322(n+1))+A029707(n+1)` -/
def P5584804496314812919.Spec : Prop :=
  ∀ n, P5584804496314812919.a n = A155752 (n + 1)

end A155752

/-! ## A155752.P4899244007866103387

`A209635(A136027(n+1))+A029707(n+1)`
-/

namespace A155752.P4899244007866103387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (A136027 (n + 1)).toNat + A029707 (n + 1)

end

end A155752.P4899244007866103387

namespace A155752

/-- `A209635(A136027(n+1))+A029707(n+1)` -/
def P4899244007866103387.Spec : Prop :=
  ∀ n, P4899244007866103387.a n = A155752 (n + 1)

end A155752

/-! ## A155752.P16579046385618665797

`eq[2, A001223(n+1)]`
-/

namespace A155752.P16579046385618665797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155752.P16579046385618665797

namespace A155752

/-- `eq[2, A001223(n+1)]` -/
def P16579046385618665797.Spec : Prop :=
  ∀ n, (P16579046385618665797.a n : ℤ) = A155752 (n + 1)

end A155752

/-! ## A155752.P754227120665998768

`lt[A000700(A001223(n+1)²), A001223(n+1)]`
-/

namespace A155752.P754227120665998768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A001223 (n + 1) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155752.P754227120665998768

namespace A155752

/-- `lt[A000700(A001223(n+1)²), A001223(n+1)]` -/
def P754227120665998768.Spec : Prop :=
  ∀ n, (P754227120665998768.a n : ℤ) = A155752 (n + 1)

end A155752

/-! ## A155752.P17380719295561179587

`eq[0, A345366(n+1)]`
-/

namespace A155752.P17380719295561179587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345366 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155752.P17380719295561179587

namespace A155752

/-- `eq[0, A345366(n+1)]` -/
def P17380719295561179587.Spec : Prop :=
  ∀ n, (P17380719295561179587.a n : ℤ) = A155752 (n + 1)

end A155752

/-! ## A155752.P4358084988962349198

`eq[1, A046933(n+1)]`
-/

namespace A155752.P4358084988962349198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155752.P4358084988962349198

namespace A155752

/-- `eq[1, A046933(n+1)]` -/
def P4358084988962349198.Spec : Prop :=
  ∀ n, (P4358084988962349198.a n : ℤ) = A155752 (n + 1)

end A155752

/-! ## A155752.P14979534456160720433

`eq[1, A074927(n+1)]`
-/

namespace A155752.P14979534456160720433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074927 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155752.P14979534456160720433

namespace A155752

/-- `eq[1, A074927(n+1)]` -/
def P14979534456160720433.Spec : Prop :=
  ∀ n, (P14979534456160720433.a n : ℤ) = A155752 (n + 1)

end A155752

/-! ## A155752.P3916166586630935236

`eq[1, A083269(n+1)]`
-/

namespace A155752.P3916166586630935236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155752.P3916166586630935236

namespace A155752

/-- `eq[1, A083269(n+1)]` -/
def P3916166586630935236.Spec : Prop :=
  ∀ n, (P3916166586630935236.a n : ℤ) = A155752 (n + 1)

end A155752

/-! ## A155752.P1793600569597286465

`eq[1, A100380(n+1)]`
-/

namespace A155752.P1793600569597286465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155752.P1793600569597286465

namespace A155752

/-- `eq[1, A100380(n+1)]` -/
def P1793600569597286465.Spec : Prop :=
  ∀ n, (P1793600569597286465.a n : ℤ) = A155752 (n + 1)

end A155752

/-! ## A155752.P11656993565892554053

`eq[1, A106149(n+1)]`
-/

namespace A155752.P11656993565892554053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155752.P11656993565892554053

namespace A155752

/-- `eq[1, A106149(n+1)]` -/
def P11656993565892554053.Spec : Prop :=
  ∀ n, (P11656993565892554053.a n : ℤ) = A155752 (n + 1)

end A155752

/-! ## A155752.P2675337007385015241

`eq[1, A106667(n+1)]`
-/

namespace A155752.P2675337007385015241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155752.P2675337007385015241

namespace A155752

/-- `eq[1, A106667(n+1)]` -/
def P2675337007385015241.Spec : Prop :=
  ∀ n, (P2675337007385015241.a n : ℤ) = A155752 (n + 1)

end A155752

/-!
# A155753: a(n) = (n^3 - n + 9)/3.

The programs for A155753, the canonical program `A155753.P8513849485728899815` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155753 has offset 1).

The definition of A155753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1)+9)/3` (program `A155753.P11329043922361135486`, by `A155753.P11329043922361135486.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155753.P8513849485728899815

`a(n-1)+(n+1)*n` with `a(0)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155753

/-- `a(n-1)+(n+1)*n` -/
def P8513849485728899815.Spec : Prop :=
  ∀ n, (P8513849485728899815.a n : ℤ) = A155753 (n + 1)

theorem P8513849485728899815.correct : P8513849485728899815.Spec := by
  intro n
  simp only [A155753, Nat.add_sub_cancel]

end A155753

/-! ## A155753.P16865036265303142837

`((n+1)^3-(n+1))/3+3`
-/

namespace A155753.P16865036265303142837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 : ℤ) - (n + 1 : ℤ) : ℚ) / 3 + 3

end

end A155753.P16865036265303142837

namespace A155753

/-- `((n+1)^3-(n+1))/3+3` -/
def P16865036265303142837.Spec : Prop :=
  ∀ n, P16865036265303142837.a n = (A155753 (n + 1) : ℚ)

theorem P16865036265303142837.correct : P16865036265303142837.Spec := by
  intro n
  induction n with
  | zero => simp [A155753, A155753.P16865036265303142837.a, A155753.P8513849485728899815.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A155753, Nat.add_sub_cancel, A155753.P16865036265303142837.a, A155753.P8513849485728899815.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A155753

/-! ## A155753.P11329043922361135486

`((n+1)^3-(n+1)+9)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155753.P11329043922361135486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 : ℤ) - (n + 1 : ℤ) + 9 : ℚ) / 3

end

end A155753.P11329043922361135486

namespace A155753

/-- `((n+1)^3-(n+1)+9)/3` -/
def P11329043922361135486.Spec : Prop :=
  ∀ n, P11329043922361135486.a n = (A155753 (n + 1) : ℚ)

theorem P11329043922361135486.correct : P11329043922361135486.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A155753, Nat.add_sub_cancel, A155753.P11329043922361135486.a, A155753.P8513849485728899815.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A155753, Nat.add_sub_cancel, A155753.P11329043922361135486.a, A155753.P8513849485728899815.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A155753

/-! ## A155753.P5320153007031248319

`or(1, ∑[n²+n]+3)`
-/

namespace A155753.P5320153007031248319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A155753.P5320153007031248319

namespace A155753

/-- `or(1, ∑[n²+n]+3)` -/
def P5320153007031248319.Spec : Prop :=
  ∀ n, (P5320153007031248319.a n : ℤ) = A155753 (n + 1)

end A155753

/-! ## A155753.P1079042652897705294

`floor(2*(C(n+2, 3)+ϕ))`
-/

namespace A155753.P1079042652897705294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((Nat.choose (n + 2) 3 : ℝ) + Real.goldenRatio)⌋

end

end A155753.P1079042652897705294

namespace A155753

/-- `floor(2*(C(n+2, 3)+ϕ))` -/
def P1079042652897705294.Spec : Prop :=
  ∀ n, P1079042652897705294.a n = A155753 (n + 1)

end A155753

/-! ## A155753.P13350073920663264305

`round(2*(C(n+2, 3)+ϕ))`
-/

namespace A155753.P13350073920663264305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((Nat.choose (n + 2) 3 : ℝ) + Real.goldenRatio))

end

end A155753.P13350073920663264305

namespace A155753

/-- `round(2*(C(n+2, 3)+ϕ))` -/
def P13350073920663264305.Spec : Prop :=
  ∀ n, P13350073920663264305.a n = A155753 (n + 1)

end A155753

/-! ## A155753.P3570600117226816139

`∑[a(n-1)+n+n]` with `a(0)=3, a(1)=2`
-/

namespace A155753.P3570600117226816139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 1) + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155753.P3570600117226816139

namespace A155753

/-- `∑[a(n-1)+n+n]` -/
def P3570600117226816139.Spec : Prop :=
  ∀ n, (P3570600117226816139.a n : ℤ) = A155753 (n + 1)

end A155753

/-! ## A155753.P9558644945130643019

`abs(a(n-1)+n²+n)` with `a(0)=3`
-/

namespace A155753.P9558644945130643019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (n ^ 2 + n)

end

end A155753.P9558644945130643019

namespace A155753

/-- `abs(a(n-1)+n²+n)` -/
def P9558644945130643019.Spec : Prop :=
  ∀ n, (P9558644945130643019.a n : ℤ) = A155753 (n + 1)

theorem P9558644945130643019.correct : P9558644945130643019.Spec := by
  intro n
  simp only [A155753, Nat.add_sub_cancel, A155753.P9558644945130643019.a, A155753.P8513849485728899815.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155753

/-! ## A155753.P15255739710290279745

`floor(a(n-1)+n²+n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A155753.P15255739710290279745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (n ^ 2 + n)

end

end A155753.P15255739710290279745

namespace A155753

/-- `floor(a(n-1)+n²+n)` -/
def P15255739710290279745.Spec : Prop :=
  ∀ n, (P15255739710290279745.a n : ℤ) = A155753 (n + 1)

theorem P15255739710290279745.correct : P15255739710290279745.Spec := by
  intro n
  simp only [A155753, Nat.add_sub_cancel, A155753.P15255739710290279745.a, A155753.P8513849485728899815.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155753

/-! ## A155753.P2640566986715413530

`ceil(a(n-1)+n²+n)` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A155753.P2640566986715413530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (n ^ 2 + n)

end

end A155753.P2640566986715413530

namespace A155753

/-- `ceil(a(n-1)+n²+n)` -/
def P2640566986715413530.Spec : Prop :=
  ∀ n, (P2640566986715413530.a n : ℤ) = A155753 (n + 1)

theorem P2640566986715413530.correct : P2640566986715413530.Spec := by
  intro n
  simp only [A155753, Nat.add_sub_cancel, A155753.P2640566986715413530.a, A155753.P8513849485728899815.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155753

/-! ## A155753.P11183244843406580492

`round(a(n-1)+n²+n)` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A155753.P11183244843406580492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (n ^ 2 + n)

end

end A155753.P11183244843406580492

namespace A155753

/-- `round(a(n-1)+n²+n)` -/
def P11183244843406580492.Spec : Prop :=
  ∀ n, (P11183244843406580492.a n : ℤ) = A155753 (n + 1)

theorem P11183244843406580492.correct : P11183244843406580492.Spec := by
  intro n
  simp only [A155753, Nat.add_sub_cancel, A155753.P11183244843406580492.a, A155753.P8513849485728899815.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155753

/-! ## A155753.P14743716022598542940

`floor(∑[lcm(n, n+1)]+ϕ+ϕ)`
-/

namespace A155753.P14743716022598542940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.goldenRatio + Real.goldenRatio⌋

end

end A155753.P14743716022598542940

namespace A155753

/-- `floor(∑[lcm(n, n+1)]+ϕ+ϕ)` -/
def P14743716022598542940.Spec : Prop :=
  ∀ n, P14743716022598542940.a n = A155753 (n + 1)

end A155753

/-! ## A155753.P15043771445497182455

`∑[2*n²-a(n-1)]` with `a(0)=3, a(1)=2`
-/

namespace A155753.P15043771445497182455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  (2 * n ^ 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155753.P15043771445497182455

namespace A155753

/-- `∑[2*n²-a(n-1)]` -/
def P15043771445497182455.Spec : Prop :=
  ∀ n, P15043771445497182455.a n = A155753 (n + 1)

end A155753

/-! ## A155753.P12475637446169683926

`∑[n^a((n+1)%n)+n]` with `a(0)=3`
-/

namespace A155753.P12475637446169683926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n ^ f1 ((n + 1) % n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155753.P12475637446169683926

namespace A155753

/-- `∑[n^a((n+1)%n)+n]` -/
def P12475637446169683926.Spec : Prop :=
  ∀ n, (P12475637446169683926.a n : ℤ) = A155753 (n + 1)

end A155753

/-! ## A155753.P15875710618106668938

`∑[3*n-(n-a(n-1))]` with `a(0)=3, a(1)=2`
-/

namespace A155753.P15875710618106668938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  (3 * n : ℤ) - ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155753.P15875710618106668938

namespace A155753

/-- `∑[3*n-(n-a(n-1))]` -/
def P15875710618106668938.Spec : Prop :=
  ∀ n, P15875710618106668938.a n = A155753 (n + 1)

end A155753

/-! ## A155753.P16863353702298640357

`∑[n²-(a(n-1)-n²)]` with `a(0)=3, a(1)=2`
-/

namespace A155753.P16863353702298640357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  (n ^ 2 : ℤ) - (f1 (n - 1) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155753.P16863353702298640357

namespace A155753

/-- `∑[n²-(a(n-1)-n²)]` -/
def P16863353702298640357.Spec : Prop :=
  ∀ n, P16863353702298640357.a n = A155753 (n + 1)

end A155753

/-! ## A155753.P16784948216923064579

`∑[(C(2, n+2)+n+1)²-(n+1)]`
-/

namespace A155753.P16784948216923064579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 (n + 2) + (n + 1)) ^ 2 : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155753.P16784948216923064579

namespace A155753

/-- `∑[(C(2, n+2)+n+1)²-(n+1)]` -/
def P16784948216923064579.Spec : Prop :=
  ∀ n, P16784948216923064579.a n = A155753 (n + 1)

end A155753

/-! ## A155753.P10823083623941332918

`∑[A254667(n+1)²-(n+1)]`
-/

namespace A155753.P10823083623941332918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (n + 1) ^ 2 - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155753.P10823083623941332918

namespace A155753

/-- `∑[A254667(n+1)²-(n+1)]` -/
def P10823083623941332918.Spec : Prop :=
  ∀ n, P10823083623941332918.a n = A155753 (n + 1)

end A155753

/-! ## A155753.P11723751757520009241

`∑[A170950(n²+2)]`
-/

namespace A155753.P11723751757520009241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170950 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155753.P11723751757520009241

namespace A155753

/-- `∑[A170950(n²+2)]` -/
def P11723751757520009241.Spec : Prop :=
  ∀ n, P11723751757520009241.a n = A155753 (n + 1)

end A155753

/-! ## A155753.P14154615960371347470

`∑[A066560((n+1)²)-(n+1)]`
-/

namespace A155753.P14154615960371347470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 ((n + 1) ^ 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155753.P14154615960371347470

namespace A155753

/-- `∑[A066560((n+1)²)-(n+1)]` -/
def P14154615960371347470.Spec : Prop :=
  ∀ n, P14154615960371347470.a n = A155753 (n + 1)

end A155753

/-!
# A155754: A variation on 10^n mod 19.

The programs for A155754, the canonical program `A155754.P4127176287690698785` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155754 has offset 0).

The definition of A155754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155754.P4127176287690698785

`-a(n-9)` with `a(0)=1, a(1)=-9, a(2)=5, a(3)=-7, a(4)=6, a(5)=3, a(6)=-8, a(7)=-4, a(8)=-2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155754

/-- `-a(n-9)` -/
def P4127176287690698785.Spec : Prop :=
  ∀ n, P4127176287690698785.a n = A155754 n

theorem P4127176287690698785.correct : P4127176287690698785.Spec := by
  intro n
  simp only [A155754]

end A155754

/-!
# A155755: Triangle T(n, k) = A143491(n+2, k+2) + A143491(n+2, n-k+2), read by rows.

The programs for A155755, the canonical program `A155755.P15617599271686111311` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155755 has offset 0).

The definition of A155755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155755.P15617599271686111311

`A145324(n+1)+A136124(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A155755

/-- `A145324(n+1)+A136124(n+2)` -/
def P15617599271686111311.Spec : Prop :=
  ∀ n, P15617599271686111311.a n = A155755 n

theorem P15617599271686111311.correct : P15617599271686111311.Spec := by
  intro n
  simp only [A155755]

end A155755

/-! ## A155755.P10583604557079646923

`A145324(A038722(n+1))+A145324(n+1)`
-/

namespace A155755.P10583604557079646923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (A038722 (n + 1)).toNat + A145324 (n + 1)

end

end A155755.P10583604557079646923

namespace A155755

/-- `A145324(A038722(n+1))+A145324(n+1)` -/
def P10583604557079646923.Spec : Prop :=
  ∀ n, P10583604557079646923.a n = A155755 n

end A155755

/-! ## A155755.P11361861489539983265

`A145324(n+1)+A145324(A061579(n)+1)`
-/

namespace A155755.P11361861489539983265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (n + 1) + A145324 (A061579 n + 1).toNat

end

end A155755.P11361861489539983265

namespace A155755

/-- `A145324(n+1)+A145324(A061579(n)+1)` -/
def P11361861489539983265.Spec : Prop :=
  ∀ n, P11361861489539983265.a n = A155755 n

end A155755

/-! ## A155755.P9120353963916242685

`A136124(n+2)+A136124(A061579(n)+2)`
-/

namespace A155755.P9120353963916242685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (n + 2) + A136124 (A061579 n + 2).toNat

end

end A155755.P9120353963916242685

namespace A155755

/-- `A136124(n+2)+A136124(A061579(n)+2)` -/
def P9120353963916242685.Spec : Prop :=
  ∀ n, P9120353963916242685.a n = A155755 n

end A155755

/-! ## A155755.P12888510460396696759

`A136124(A038722(n+1)+1)+A136124(n+2)`
-/

namespace A155755.P12888510460396696759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A038722 (n + 1) + 1).toNat + A136124 (n + 2)

end

end A155755.P12888510460396696759

namespace A155755

/-- `A136124(A038722(n+1)+1)+A136124(n+2)` -/
def P12888510460396696759.Spec : Prop :=
  ∀ n, P12888510460396696759.a n = A155755 n

end A155755

/-! ## A155755.P6490210381008765307

`A136124(A093995(n+1)-A023443(n))+A136124(n+2)`
-/

namespace A155755.P6490210381008765307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A093995 (n + 1) - A023443 n).toNat + A136124 (n + 2)

end

end A155755.P6490210381008765307

namespace A155755

/-- `A136124(A093995(n+1)-A023443(n))+A136124(n+2)` -/
def P6490210381008765307.Spec : Prop :=
  ∀ n, P6490210381008765307.a n = A155755 n

end A155755

/-!
# A155757: a(n) = (n^3 - n + 15)/3.

The programs for A155757, the canonical program `A155757.P2739971489978842111` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155757 has offset 1).

The definition of A155757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3-(n+1)+15)/3` (program `A155757.P7542573099573874038`, by `A155757.P7542573099573874038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155757.P2739971489978842111

`(n+1)*n+a(n-1)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155757

/-- `(n+1)*n+a(n-1)` -/
def P2739971489978842111.Spec : Prop :=
  ∀ n, (P2739971489978842111.a n : ℤ) = A155757 (n + 1)

theorem P2739971489978842111.correct : P2739971489978842111.Spec := by
  intro n
  simp only [A155757, Nat.add_sub_cancel]

end A155757

/-! ## A155757.P7999740075793580907

`((n+1)^3-(n+1))/3+5`
-/

namespace A155757.P7999740075793580907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 : ℤ) - (n + 1 : ℤ) : ℚ) / 3 + 5

end

end A155757.P7999740075793580907

namespace A155757

/-- `((n+1)^3-(n+1))/3+5` -/
def P7999740075793580907.Spec : Prop :=
  ∀ n, P7999740075793580907.a n = (A155757 (n + 1) : ℚ)

theorem P7999740075793580907.correct : P7999740075793580907.Spec := by
  intro n
  induction n with
  | zero => simp [A155757, A155757.P7999740075793580907.a, A155757.P2739971489978842111.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A155757, Nat.add_sub_cancel, A155757.P7999740075793580907.a, A155757.P2739971489978842111.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A155757

/-! ## A155757.P7542573099573874038

`((n+1)^3-(n+1)+15)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155757.P7542573099573874038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 : ℤ) - (n + 1 : ℤ) + 15 : ℚ) / 3

end

end A155757.P7542573099573874038

namespace A155757

/-- `((n+1)^3-(n+1)+15)/3` -/
def P7542573099573874038.Spec : Prop :=
  ∀ n, P7542573099573874038.a n = (A155757 (n + 1) : ℚ)

theorem P7542573099573874038.correct : P7542573099573874038.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A155757, Nat.add_sub_cancel, A155757.P7542573099573874038.a, A155757.P2739971489978842111.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A155757, Nat.add_sub_cancel, A155757.P7542573099573874038.a, A155757.P2739971489978842111.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A155757

/-! ## A155757.P9915134154513483431

`∑[a(n-1)+n+n]` with `a(0)=5, a(1)=2`
-/

namespace A155757.P9915134154513483431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  f1 (n - 1) + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155757.P9915134154513483431

namespace A155757

/-- `∑[a(n-1)+n+n]` -/
def P9915134154513483431.Spec : Prop :=
  ∀ n, (P9915134154513483431.a n : ℤ) = A155757 (n + 1)

end A155757

/-! ## A155757.P10636062771326858567

`abs(a(n-1)+n²+n)` with `a(0)=5`
-/

namespace A155757.P10636062771326858567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (n ^ 2 + n)

end

end A155757.P10636062771326858567

namespace A155757

/-- `abs(a(n-1)+n²+n)` -/
def P10636062771326858567.Spec : Prop :=
  ∀ n, (P10636062771326858567.a n : ℤ) = A155757 (n + 1)

end A155757

/-! ## A155757.P889218063860834545

`floor(a(n-1)+n²+n)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A155757.P889218063860834545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (n ^ 2 + n)

end

end A155757.P889218063860834545

namespace A155757

/-- `floor(a(n-1)+n²+n)` -/
def P889218063860834545.Spec : Prop :=
  ∀ n, (P889218063860834545.a n : ℤ) = A155757 (n + 1)

end A155757

/-! ## A155757.P10612829234054831268

`ceil(a(n-1)+n²+n)` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A155757.P10612829234054831268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (n ^ 2 + n)

end

end A155757.P10612829234054831268

namespace A155757

/-- `ceil(a(n-1)+n²+n)` -/
def P10612829234054831268.Spec : Prop :=
  ∀ n, (P10612829234054831268.a n : ℤ) = A155757 (n + 1)

end A155757

/-! ## A155757.P14160887040512464807

`round(a(n-1)+n²+n)` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A155757.P14160887040512464807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (n ^ 2 + n)

end

end A155757.P14160887040512464807

namespace A155757

/-- `round(a(n-1)+n²+n)` -/
def P14160887040512464807.Spec : Prop :=
  ∀ n, (P14160887040512464807.a n : ℤ) = A155757 (n + 1)

end A155757

/-! ## A155757.P13348226897273238060

`abs(2*(C(n+2, 3)+3)-1)`
-/

namespace A155757.P13348226897273238060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (Nat.choose (n + 2) 3 + 3) : ℤ) - 1|

end

end A155757.P13348226897273238060

namespace A155757

/-- `abs(2*(C(n+2, 3)+3)-1)` -/
def P13348226897273238060.Spec : Prop :=
  ∀ n, P13348226897273238060.a n = A155757 (n + 1)

end A155757

/-! ## A155757.P15963745230423801082

`∑[2*n²-a(n-1)]` with `a(0)=5, a(1)=2`
-/

namespace A155757.P15963745230423801082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  (2 * n ^ 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155757.P15963745230423801082

namespace A155757

/-- `∑[2*n²-a(n-1)]` -/
def P15963745230423801082.Spec : Prop :=
  ∀ n, P15963745230423801082.a n = A155757 (n + 1)

end A155757

/-! ## A155757.P8144276826131948374

`or(1, a(n-1)+n²+n)` with `a(0)=5`
-/

namespace A155757.P8144276826131948374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.lor 1 (a (n - 1) + (n ^ 2 + n))

end

end A155757.P8144276826131948374

namespace A155757

/-- `or(1, a(n-1)+n²+n)` -/
def P8144276826131948374.Spec : Prop :=
  ∀ n, (P8144276826131948374.a n : ℤ) = A155757 (n + 1)

end A155757

/-! ## A155757.P6628160393496939870

`∑[3*n-(n-a(n-1))]` with `a(0)=5, a(1)=2`
-/

namespace A155757.P6628160393496939870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  (3 * n : ℤ) - ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155757.P6628160393496939870

namespace A155757

/-- `∑[3*n-(n-a(n-1))]` -/
def P6628160393496939870.Spec : Prop :=
  ∀ n, P6628160393496939870.a n = A155757 (n + 1)

end A155757

/-! ## A155757.P5814355301328873277

`∑[n²-(a(n-1)-n²)]` with `a(0)=5, a(1)=2`
-/

namespace A155757.P5814355301328873277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  (n ^ 2 : ℤ) - (f1 (n - 1) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155757.P5814355301328873277

namespace A155757

/-- `∑[n²-(a(n-1)-n²)]` -/
def P5814355301328873277.Spec : Prop :=
  ∀ n, P5814355301328873277.a n = A155757 (n + 1)

end A155757

/-! ## A155757.P4366274474229215445

`abs(n-a(n-1)-n²-2*n)` with `a(0)=5`
-/

namespace A155757.P4366274474229215445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |(n : ℤ) - a (n - 1) - (n ^ 2 : ℤ) - (2 * n : ℤ)|

end

end A155757.P4366274474229215445

namespace A155757

/-- `abs(n-a(n-1)-n²-2*n)` -/
def P4366274474229215445.Spec : Prop :=
  ∀ n, P4366274474229215445.a n = A155757 (n + 1)

end A155757

/-! ## A155757.P2290288830819091254

`abs(n-4-∑[∑[A004277(n)]])`
-/

namespace A155757.P2290288830819091254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 4 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A155757.P2290288830819091254

namespace A155757

/-- `abs(n-4-∑[∑[A004277(n)]])` -/
def P2290288830819091254.Spec : Prop :=
  ∀ n, P2290288830819091254.a n = A155757 (n + 1)

end A155757

/-! ## A155757.P13626846443480528535

`abs(abs(∑[(n+1)²]+5-n)-A000124(n))`
-/

namespace A155757.P13626846443480528535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℕ) : ℤ) - (n : ℤ)| - A000124 n)|

end

end A155757.P13626846443480528535

namespace A155757

/-- `abs(abs(∑[(n+1)²]+5-n)-A000124(n))` -/
def P13626846443480528535.Spec : Prop :=
  ∀ n, P13626846443480528535.a n = A155757 (n + 1)

end A155757

/-! ## A155757.P10991360826333574199

`Δ[A059173(n+2)-(1-n)²]`
-/

namespace A155757.P10991360826333574199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059173 (n + 2) - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155757.P10991360826333574199

namespace A155757

/-- `Δ[A059173(n+2)-(1-n)²]` -/
def P10991360826333574199.Spec : Prop :=
  ∀ n, P10991360826333574199.a n = A155757 (n + 1)

end A155757

/-!
# A155760: Primes p such that p+30 and p+60 are prime.

The programs for A155760, the canonical program `A155760.P8725941739082997170` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155760 has offset 1).

The definition of A155760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155760.P10693931818468148735

`A161725(n+1)-30`
-/

namespace A155760.P10693931818468148735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161725 (n + 1) - 30

end

end A155760.P10693931818468148735

namespace A155760

/-- `A161725(n+1)-30` -/
def P10693931818468148735.Spec : Prop :=
  ∀ n, P10693931818468148735.a n = A155760 (n + 1)

end A155760

/-! ## A155760.P9562531326279669525

`p?[A049481(n+1)-30]`
-/

namespace A155760.P9562531326279669525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049481 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155760.P9562531326279669525

namespace A155760

/-- `p?[A049481(n+1)-30]` -/
def P9562531326279669525.Spec : Prop :=
  ∀ n, P9562531326279669525.a n = A155760 (n + 1)

end A155760

/-! ## A155760.P8725941739082997170

`p?[p?[A000040(n+1)-30]-30]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A155760

/-- `p?[p?[A000040(n+1)-30]-30]` -/
def P8725941739082997170.Spec : Prop :=
  ∀ n, P8725941739082997170.a n = A155760 (n + 1)

theorem P8725941739082997170.correct : P8725941739082997170.Spec := by
  intro n
  simp only [A155760, Nat.add_sub_cancel]

end A155760

/-! ## A155760.P359675375869729498

`p?[p?[A008578(n+1)-30]-30]`
-/

namespace A155760.P359675375869729498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 30

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155760.P359675375869729498

namespace A155760

/-- `p?[p?[A008578(n+1)-30]-30]` -/
def P359675375869729498.Spec : Prop :=
  ∀ n, P359675375869729498.a n = A155760 (n + 1)

end A155760

/-! ## A155760.P7365037868633079189

`∩[A000040(n+1), A049481(n+1)-30]`
-/

namespace A155760.P7365037868633079189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049481 (n + 1) - 30

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155760.P7365037868633079189

namespace A155760

/-- `∩[A000040(n+1), A049481(n+1)-30]` -/
def P7365037868633079189.Spec : Prop :=
  ∀ n, (P7365037868633079189.a n : ℤ) = A155760 (n + 1)

end A155760

/-! ## A155760.P15128319181577355631

`A023472(A161725(n+1))`
-/

namespace A155760.P15128319181577355631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023472 (A161725 (n + 1)).toNat

end

end A155760.P15128319181577355631

namespace A155760

/-- `A023472(A161725(n+1))` -/
def P15128319181577355631.Spec : Prop :=
  ∀ n, P15128319181577355631.a n = A155760 (n + 1)

end A155760

/-! ## A155760.P217499167877092461

`p?[A023472(A049481(n+1))]`
-/

namespace A155760.P217499167877092461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023472 (A049481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155760.P217499167877092461

namespace A155760

/-- `p?[A023472(A049481(n+1))]` -/
def P217499167877092461.Spec : Prop :=
  ∀ n, P217499167877092461.a n = A155760 (n + 1)

end A155760

/-!
# A155761: Riordan array (c(2*x^2), x*c(2*x^2)) where c(x) is the g.f. of A000108.

The programs for A155761, the canonical program `A155761.P15069823807788748563` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155761 has offset 0).

The definition of A155761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155761.P15069823807788748563

`A053121(n)*A156663(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A155761

/-- `A053121(n)*A156663(n)` -/
def P15069823807788748563.Spec : Prop :=
  ∀ n, P15069823807788748563.a n = A155761 n

theorem P15069823807788748563.correct : P15069823807788748563.Spec := by
  intro n
  simp only [A155761]

end A155761

/-! ## A155761.P935338292405816055

`A156663(n)*A165621(n)`
-/

namespace A155761.P935338292405816055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 n * A165621 n

end

end A155761.P935338292405816055

namespace A155761

/-- `A156663(n)*A165621(n)` -/
def P935338292405816055.Spec : Prop :=
  ∀ n, P935338292405816055.a n = A155761 n

end A155761

/-! ## A155761.P7741905335343887352

`sqrt(A130321(n))*A053121(n)`
-/

namespace A155761.P7741905335343887352
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130321 n : ℝ) * (A053121 n : ℝ)

end

end A155761.P7741905335343887352

namespace A155761

/-- `sqrt(A130321(n))*A053121(n)` -/
def P7741905335343887352.Spec : Prop :=
  ∀ n, P7741905335343887352.a n = (A155761 n : ℝ)

end A155761

/-! ## A155761.P105528804477581385

`A016116(A025581(n))*A053121(n)`
-/

namespace A155761.P105528804477581385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A025581 n).toNat * A053121 n

end

end A155761.P105528804477581385

namespace A155761

/-- `A016116(A025581(n))*A053121(n)` -/
def P105528804477581385.Spec : Prop :=
  ∀ n, P105528804477581385.a n = A155761 n

end A155761

/-! ## A155761.P4864962807750665318

`A016116(A193739(n))*A053121(n)`
-/

namespace A155761.P4864962807750665318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A193739 n).toNat * A053121 n

end

end A155761.P4864962807750665318

namespace A155761

/-- `A016116(A193739(n))*A053121(n)` -/
def P4864962807750665318.Spec : Prop :=
  ∀ n, P4864962807750665318.a n = A155761 n

end A155761

/-! ## A155761.P6414767815736835808

`A016116(A004736(n+1))*A053121(n)`
-/

namespace A155761.P6414767815736835808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004736 (n + 1)).toNat * A053121 n

end

end A155761.P6414767815736835808

namespace A155761

/-- `A016116(A004736(n+1))*A053121(n)` -/
def P6414767815736835808.Spec : Prop :=
  ∀ n, P6414767815736835808.a n = A155761 n

end A155761

/-! ## A155761.P3259370622323478325

`A011782(A209278(n+1))*A053121(n)`
-/

namespace A155761.P3259370622323478325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A209278 (n + 1)).toNat * A053121 n

end

end A155761.P3259370622323478325

namespace A155761

/-- `A011782(A209278(n+1))*A053121(n)` -/
def P3259370622323478325.Spec : Prop :=
  ∀ n, P3259370622323478325.a n = A155761 n

end A155761

/-! ## A155761.P15385562747239412458

`A011782(A135840(n+1))*A053121(n)`
-/

namespace A155761.P15385562747239412458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A135840 (n + 1)).toNat * A053121 n

end

end A155761.P15385562747239412458

namespace A155761

/-- `A011782(A135840(n+1))*A053121(n)` -/
def P15385562747239412458.Spec : Prop :=
  ∀ n, P15385562747239412458.a n = A155761 n

end A155761

/-! ## A155761.P4912194057049143764

`A002024(A155038(n+1))*A053121(n)`
-/

namespace A155761.P4912194057049143764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A155038 (n + 1)).toNat * A053121 n

end

end A155761.P4912194057049143764

namespace A155761

/-- `A002024(A155038(n+1))*A053121(n)` -/
def P4912194057049143764.Spec : Prop :=
  ∀ n, P4912194057049143764.a n = A155761 n

end A155761

/-! ## A155761.P15888114712323828906

`A051933(A130330(n))*A053121(n)`
-/

namespace A155761.P15888114712323828906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 (A130330 n).toNat * A053121 n

end

end A155761.P15888114712323828906

namespace A155761

/-- `A051933(A130330(n))*A053121(n)` -/
def P15888114712323828906.Spec : Prop :=
  ∀ n, P15888114712323828906.a n = A155761 n

end A155761

/-!
# A155762: Prime numbers p such that prepending any single decimal digit to p does not produce a prime.

The programs for A155762, there is no canonical definition to state claims against.
-/

/-! ## A155762.P13095904668301012480

`A000040(eq[0, A101115(n+1)]+1)`
-/

namespace A155762.P13095904668301012480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A155762.P13095904668301012480

/-! ## A155762.P11458188991868921257

`record[gcd(A008578(n+2), A101115(n+1))]`
-/

namespace A155762.P11458188991868921257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008578 (n + 2)) (A101115 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155762.P11458188991868921257

/-! ## A155762.P10449217990315196798

`p?[(A014692(n+1)+n)*(A101115(n+1)+1)]`
-/

namespace A155762.P10449217990315196798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * (A101115 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155762.P10449217990315196798

/-!
# A155763: Indices of primes with digits in strictly increasing order.

The programs for A155763, there is no canonical definition to state claims against.
-/

/-! ## A155763.P7297171302826927534

`A000720(A052015(n+1))`
-/

namespace A155763.P7297171302826927534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A052015 (n + 1)).toNat

end

end A155763.P7297171302826927534

/-! ## A155763.P16971760167441682365

`A000720(p?[A009993(n+1)])`
-/

namespace A155763.P16971760167441682365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155763.P16971760167441682365

/-! ## A155763.P12225981881285514436

`A061395(p?[A009993(n+1)])`
-/

namespace A155763.P12225981881285514436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155763.P12225981881285514436

/-! ## A155763.P9913373030192458951

`A066328(p?[A009993(n+1)])`
-/

namespace A155763.P9913373030192458951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155763.P9913373030192458951

/-! ## A155763.P18028458411069030389

`A000720(p?[A190218(n+1)])`
-/

namespace A155763.P18028458411069030389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155763.P18028458411069030389

/-! ## A155763.P5347679098270746861

`A061395(p?[A190218(n+1)])`
-/

namespace A155763.P5347679098270746861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155763.P5347679098270746861

/-! ## A155763.P3821972339508963413

`A061395(2*A052015(n+1))`
-/

namespace A155763.P3821972339508963413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A052015 (n + 1)).toNat

end

end A155763.P3821972339508963413

/-! ## A155763.P4357426513245243459

`A061395(lcm(2, A052015(n+1)))`
-/

namespace A155763.P4357426513245243459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A052015 (n + 1)))

end

end A155763.P4357426513245243459

/-!
# A155764: Records in A047160.

The programs for A155764, there is no canonical definition to state claims against.
-/

/-! ## A155764.P10240107167862543102

`A047160(A155765(n+1))`
-/

namespace A155764.P10240107167862543102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (A155765 (n + 1)).toNat

end

end A155764.P10240107167862543102

/-! ## A155764.P15451338568684296337

`A066286(n)/2`
-/

namespace A155764.P15451338568684296337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066286 n : ℚ) / 2

end

end A155764.P15451338568684296337

/-! ## A155764.P14293849944522989888

`A014682(A066286(n))`
-/

namespace A155764.P14293849944522989888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A066286 n).toNat

end

end A155764.P14293849944522989888

/-! ## A155764.P9688008467483108385

`A249122(A066286(n)+1)`
-/

namespace A155764.P9688008467483108385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A066286 n + 1).toNat

end

end A155764.P9688008467483108385

/-! ## A155764.P14634344597123492457

`A038572(lcm(2, A066286(n)))`
-/

namespace A155764.P14634344597123492457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lcm 2 (A066286 n))

end

end A155764.P14634344597123492457

/-! ## A155764.P609638201012917024

`A249122(or(1, A066286(n)))`
-/

namespace A155764.P609638201012917024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (Int.lor 1 (A066286 n)).toNat

end

end A155764.P609638201012917024

/-! ## A155764.P1044331680309416688

`A038572(A066286(n)+2)-1`
-/

namespace A155764.P1044331680309416688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A066286 n + 2).toNat - 1

end

end A155764.P1044331680309416688

/-! ## A155764.P9861866764272760908

`A175126(A066286(n)+2)-1`
-/

namespace A155764.P9861866764272760908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A066286 n + 2).toNat - 1

end

end A155764.P9861866764272760908

/-! ## A155764.P11289221667419243892

`A273943(A066286(n)+2)-1`
-/

namespace A155764.P11289221667419243892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A066286 n + 2).toNat - 1

end

end A155764.P11289221667419243892

/-! ## A155764.P45366804336206326

`log2(sqrt(2))*A066286(A118759(n))`
-/

namespace A155764.P45366804336206326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (A066286 (A118759 n).toNat : ℝ)

end

end A155764.P45366804336206326

/-!
# A155765: Where records occur in A047160.

The programs for A155765, there is no canonical definition to state claims against.
-/

/-! ## A155765.P1375515327077889704

`A065978(n+1)/2`
-/

namespace A155765.P1375515327077889704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065978 (n + 1) : ℚ) / 2

end

end A155765.P1375515327077889704

/-! ## A155765.P2493999405015698301

`record[A065978(A152271(n))/2]`
-/

namespace A155765.P2493999405015698301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065978 (A152271 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155765.P2493999405015698301

/-! ## A155765.P4170685022235173714

`floor(A065978(A152271(Δ[n²]))/2)`
-/

namespace A155765.P4170685022235173714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065978 (A152271 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat : ℚ) / 2⌋

end

end A155765.P4170685022235173714

/-! ## A155765.P8506517680028102295

`A107926(A155764(n+1))/2`
-/

namespace A155765.P8506517680028102295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107926 (A155764 (n + 1)).toNat : ℚ) / 2

end

end A155765.P8506517680028102295

/-! ## A155765.P1553421654493725752

`A107926(A066286(n)/2)/2`
-/

namespace A155765.P1553421654493725752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107926 (SequenceMachineLib.roundAway ((A066286 n : ℚ) / 2)).toNat : ℚ) / 2

end

end A155765.P1553421654493725752

/-!
# A155766: Least prime p such that p + 2n is prime, but not both p+2k and p+2(n-k) are prime for 0 < k < n.

The programs for A155766, there is no canonical definition to state claims against.
-/

/-! ## A155766.P9444762951198483455

`A103147(n)-n`
-/

namespace A155766.P9444762951198483455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103147 n - (n : ℤ)

end

end A155766.P9444762951198483455

/-! ## A155766.P6623316838870244242

`A155767(n)-2*n`
-/

namespace A155766.P6623316838870244242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155767 n - (2 * n : ℤ)

end

end A155766.P6623316838870244242

/-! ## A155766.P15737340936831556146

`A107926(n)/2-n`
-/

namespace A155766.P15737340936831556146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107926 n : ℚ) / 2 - (n : ℚ)

end

end A155766.P15737340936831556146

/-! ## A155766.P5940655662532952670

`A107926(n)-A155767(n)`
-/

namespace A155766.P5940655662532952670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107926 n - A155767 n

end

end A155766.P5940655662532952670

/-! ## A155766.P15115450378173013277

`A166711(3*n)+A103147(n)`
-/

namespace A155766.P15115450378173013277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 (3 * n) + A103147 n

end

end A155766.P15115450378173013277

/-! ## A155766.P12379875914570072194

`A001489(n)+A155767(n)-n`
-/

namespace A155766.P12379875914570072194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A155767 n - (n : ℤ))

end

end A155766.P12379875914570072194

/-! ## A155766.P2117847988403612321

`A020639(A155767(n)-(n+n))`
-/

namespace A155766.P2117847988403612321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155767 n - (n + n : ℤ)).toNat

end

end A155766.P2117847988403612321

/-! ## A155766.P4783753162722450181

`A020639(A155767(n)-n-n)`
-/

namespace A155766.P4783753162722450181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155767 n - (n : ℤ) - (n : ℤ)).toNat

end

end A155766.P4783753162722450181

/-! ## A155766.P7150959889042820347

`A006530(A107926(n)-2*n)`
-/

namespace A155766.P7150959889042820347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A107926 n - (2 * n : ℤ)).toNat

end

end A155766.P7150959889042820347

/-! ## A155766.P8510856470938061778

`A014682(A107926(n)-2*n)`
-/

namespace A155766.P8510856470938061778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A107926 n - (2 * n : ℤ)).toNat

end

end A155766.P8510856470938061778

/-! ## A155766.P13038185991920309754

`A006530(A107926(n)-n-n)`
-/

namespace A155766.P13038185991920309754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A107926 n - (n : ℤ) - (n : ℤ)).toNat

end

end A155766.P13038185991920309754

/-! ## A155766.P8169968778211578707

`A014682(A107926(n)-n-n)`
-/

namespace A155766.P8169968778211578707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A107926 n - (n : ℤ) - (n : ℤ)).toNat

end

end A155766.P8169968778211578707

/-!
# A155767: Least prime p such that p - 2n is prime, but not both p-2k and p-2(n-k) are prime for 0 < k < n.

The programs for A155767, there is no canonical definition to state claims against.
-/

/-! ## A155767.P7877541379713009830

`A103147(n)+n`
-/

namespace A155767.P7877541379713009830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103147 n + (n : ℤ)

end

end A155767.P7877541379713009830

/-! ## A155767.P5840695935316135718

`A155766(n)+2*n`
-/

namespace A155767.P5840695935316135718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155766 n + (2 * n : ℤ)

end

end A155767.P5840695935316135718

/-! ## A155767.P8075458129993438103

`A107926(n)/2+n`
-/

namespace A155767.P8075458129993438103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107926 n : ℚ) / 2 + (n : ℚ)

end

end A155767.P8075458129993438103

/-! ## A155767.P18396513561754570835

`A107926(n)-A155766(n)`
-/

namespace A155767.P18396513561754570835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107926 n - A155766 n

end

end A155767.P18396513561754570835

/-! ## A155767.P4623345475518865479

`2*A103147(n)-A155766(n)`
-/

namespace A155767.P4623345475518865479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103147 n - A155766 n

end

end A155767.P4623345475518865479

/-! ## A155767.P3397967810373435952

`A005843(n)-(n-A103147(n))`
-/

namespace A155767.P3397967810373435952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A103147 n)

end

end A155767.P3397967810373435952

/-! ## A155767.P3759927156474087267

`n-(A001489(n)-A155766(n))`
-/

namespace A155767.P3759927156474087267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A001489 n - A155766 n)

end

end A155767.P3759927156474087267

/-! ## A155767.P12364967607994714941

`A000027(A155766(n)+1+n)+n-1`
-/

namespace A155767.P12364967607994714941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A155766 n + 1 + (n : ℤ)).toNat + ((n : ℤ) - 1)

end

end A155767.P12364967607994714941

/-! ## A155767.P6463700186927442541

`A006530(A107926(n)+2*n)`
-/

namespace A155767.P6463700186927442541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A107926 n + (2 * n : ℤ)).toNat

end

end A155767.P6463700186927442541

/-! ## A155767.P7831486600958832132

`A014682(A107926(n)+2*n)`
-/

namespace A155767.P7831486600958832132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A107926 n + (2 * n : ℤ)).toNat

end

end A155767.P7831486600958832132

/-! ## A155767.P4070566892217627485

`A006530(A107926(n)+n+n)`
-/

namespace A155767.P4070566892217627485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A107926 n + (n : ℤ) + (n : ℤ)).toNat

end

end A155767.P4070566892217627485

/-! ## A155767.P15479669007583295095

`A014682(A107926(n)+n+n)`
-/

namespace A155767.P15479669007583295095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A107926 n + (n : ℤ) + (n : ℤ)).toNat

end

end A155767.P15479669007583295095

/-!
# A155768: Indices of primes with digits in strictly decreasing order.

The programs for A155768, there is no canonical definition to state claims against.
-/

/-! ## A155768.P1094424108893670794

`A000720(A052014(n+1))`
-/

namespace A155768.P1094424108893670794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A052014 (n + 1)).toNat

end

end A155768.P1094424108893670794

/-! ## A155768.P4851469356800761256

`record[A263111(A009995(n+1))]`
-/

namespace A155768.P4851469356800761256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (A009995 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155768.P4851469356800761256

/-! ## A155768.P8972998906454057290

`A000720(p?[A009995(n+1)])`
-/

namespace A155768.P8972998906454057290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155768.P8972998906454057290

/-! ## A155768.P11458437408915711247

`A003963(p?[A009995(n+1)])`
-/

namespace A155768.P11458437408915711247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155768.P11458437408915711247

/-! ## A155768.P10059701607073622281

`A026233(p?[A009995(n+1)])`
-/

namespace A155768.P10059701607073622281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155768.P10059701607073622281

/-! ## A155768.P14284815181860504377

`A026238(p?[A009995(n+1)])`
-/

namespace A155768.P14284815181860504377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155768.P14284815181860504377

/-! ## A155768.P10829155147685887060

`A049084(p?[A009995(n+1)])`
-/

namespace A155768.P10829155147685887060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155768.P10829155147685887060

/-! ## A155768.P15463689002277730481

`A055396(p?[A009995(n+1)])`
-/

namespace A155768.P15463689002277730481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155768.P15463689002277730481

/-! ## A155768.P69618625681535104

`A064839(p?[A009995(n+1)])`
-/

namespace A155768.P69618625681535104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155768.P69618625681535104

/-!
# A155769: a(n) = 2*n^2 + 2*n - 41.

The programs for A155769, the canonical program `A155769.P3068967547349656107` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155769 has offset 0).

The definition of A155769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+2*n-41` (program `A155769.P3068967547349656107`, by `A155769.P3068967547349656107.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155769.P2729794471746295868

`2*n*(n+1)-41`
-/

namespace A155769.P2729794471746295868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * (n + 1) : ℤ) - 41

end

end A155769.P2729794471746295868

namespace A155769

/-- `2*n*(n+1)-41` -/
def P2729794471746295868.Spec : Prop :=
  ∀ n, P2729794471746295868.a n = A155769 n

theorem P2729794471746295868.correct : P2729794471746295868.Spec := by
  intro n
  simp only [A155769, Nat.add_sub_cancel, A155769.P2729794471746295868.a, A155769.P3068967547349656107.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A155769

/-! ## A155769.P3068967547349656107

`2*n²+2*n-41`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155769

/-- `2*n²+2*n-41` -/
def P3068967547349656107.Spec : Prop :=
  ∀ n, P3068967547349656107.a n = A155769 n

theorem P3068967547349656107.correct : P3068967547349656107.Spec := by
  intro n
  simp only [A155769]

end A155769

/-! ## A155769.P2317566228806199350

`or(1, A142463(n)-40)`
-/

namespace A155769.P2317566228806199350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A142463 n - 40)

end

end A155769.P2317566228806199350

namespace A155769

/-- `or(1, A142463(n)-40)` -/
def P2317566228806199350.Spec : Prop :=
  ∀ n, P2317566228806199350.a n = A155769 n

end A155769

/-! ## A155769.P10579207092688554304

`or(3, A132209(n)-43)`
-/

namespace A155769.P10579207092688554304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A132209 n - 43)

end

end A155769.P10579207092688554304

namespace A155769

/-- `or(3, A132209(n)-43)` -/
def P10579207092688554304.Spec : Prop :=
  ∀ n, P10579207092688554304.a n = A155769 n

end A155769

/-! ## A155769.P3951901103248058065

`Δ[A005900(n)-6*7*n]`
-/

namespace A155769.P3951901103248058065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - (6 * (7 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155769.P3951901103248058065

namespace A155769

/-- `Δ[A005900(n)-6*7*n]` -/
def P3951901103248058065.Spec : Prop :=
  ∀ n, P3951901103248058065.a n = A155769 n

end A155769

/-! ## A155769.P17116099584254321998

`record[A051890(A008615(n))-43]`
-/

namespace A155769.P17116099584254321998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 (A008615 n).toNat - 43

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155769.P17116099584254321998

namespace A155769

/-- `record[A051890(A008615(n))-43]` -/
def P17116099584254321998.Spec : Prop :=
  ∀ n, P17116099584254321998.a n = A155769 n

end A155769

/-! ## A155769.P7465141089481632429

`record[A286145(n)-41]`
-/

namespace A155769.P7465141089481632429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286145 n - 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155769.P7465141089481632429

namespace A155769

/-- `record[A286145(n)-41]` -/
def P7465141089481632429.Spec : Prop :=
  ∀ n, P7465141089481632429.a n = A155769 n

end A155769

/-! ## A155769.P13185295019043785007

`record[A005843(n)-A054057(A256188(n+1))]`
-/

namespace A155769.P13185295019043785007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A054057 (A256188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155769.P13185295019043785007

namespace A155769

/-- `record[A005843(n)-A054057(A256188(n+1))]` -/
def P13185295019043785007.Spec : Prop :=
  ∀ n, P13185295019043785007.a n = A155769 n

end A155769

/-!
# A155770: Primes of form: 2*n^2+2*n-41.

The programs for A155770, the canonical program `A155770.P11294526074375665109` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155770 has offset 1).

The definition of A155770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155770.P11294526074375665109

`A155769(A155771(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A155770

/-- `A155769(A155771(n+1))` -/
def P11294526074375665109.Spec : Prop :=
  ∀ n, P11294526074375665109.a n = A155770 (n + 1)

theorem P11294526074375665109.correct : P11294526074375665109.Spec := by
  intro n
  simp only [A155770, Nat.add_sub_cancel]

end A155770

/-! ## A155770.P6672000950631973667

`p?[ceil(n²/2)-42]`
-/

namespace A155770.P6672000950631973667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155770.P6672000950631973667

namespace A155770

/-- `p?[ceil(n²/2)-42]` -/
def P6672000950631973667.Spec : Prop :=
  ∀ n, P6672000950631973667.a n = A155770 (n + 1)

end A155770

/-! ## A155770.P11352558588694021011

`or(1, p?[A155769(n)])`
-/

namespace A155770.P11352558588694021011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A155770.P11352558588694021011

namespace A155770

/-- `or(1, p?[A155769(n)])` -/
def P11352558588694021011.Spec : Prop :=
  ∀ n, P11352558588694021011.a n = A155770 (n + 1)

end A155770

/-! ## A155770.P10492075843949070815

`p?[A155769(n)]%A016887(n)`
-/

namespace A155770.P10492075843949070815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016887 n)

end

end A155770.P10492075843949070815

namespace A155770

/-- `p?[A155769(n)]%A016887(n)` -/
def P10492075843949070815.Spec : Prop :=
  ∀ n, P10492075843949070815.a n = A155770 (n + 1)

end A155770

/-! ## A155770.P4146519399497828528

`A089798(2*n+1)+p?[A155769(n)]`
-/

namespace A155770.P4146519399497828528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155770.P4146519399497828528

namespace A155770

/-- `A089798(2*n+1)+p?[A155769(n)]` -/
def P4146519399497828528.Spec : Prop :=
  ∀ n, P4146519399497828528.a n = A155770 (n + 1)

end A155770

/-! ## A155770.P10854704430721009669

`p?[A155769(n)]*A187969(A187971(n+1))`
-/

namespace A155770.P10854704430721009669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A187969 (A187971 (n + 1)).toNat

end

end A155770.P10854704430721009669

namespace A155770

/-- `p?[A155769(n)]*A187969(A187971(n+1))` -/
def P10854704430721009669.Spec : Prop :=
  ∀ n, P10854704430721009669.a n = A155770 (n + 1)

end A155770

/-! ## A155770.P16726983806370240346

`p?[A155769(n)]*A187969(A187975(n+1))`
-/

namespace A155770.P16726983806370240346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A187969 (A187975 (n + 1)).toNat

end

end A155770.P16726983806370240346

namespace A155770

/-- `p?[A155769(n)]*A187969(A187975(n+1))` -/
def P16726983806370240346.Spec : Prop :=
  ∀ n, P16726983806370240346.a n = A155770 (n + 1)

end A155770

/-! ## A155770.P13170386091560616322

`∩[A038969(n+1), A155769(n)]`
-/

namespace A155770.P13170386091560616322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155770.P13170386091560616322

namespace A155770

/-- `∩[A038969(n+1), A155769(n)]` -/
def P13170386091560616322.Spec : Prop :=
  ∀ n, (P13170386091560616322.a n : ℤ) = A155770 (n + 1)

end A155770

/-! ## A155770.P7225173290064252514

`∩[A002145(n+1), A155769(n)]`
-/

namespace A155770.P7225173290064252514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155770.P7225173290064252514

namespace A155770

/-- `∩[A002145(n+1), A155769(n)]` -/
def P7225173290064252514.Spec : Prop :=
  ∀ n, (P7225173290064252514.a n : ℤ) = A155770 (n + 1)

end A155770

/-! ## A155770.P18322802956854858226

`∩[A015919(n+1), A155769(n)]`
-/

namespace A155770.P18322802956854858226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155770.P18322802956854858226

namespace A155770

/-- `∩[A015919(n+1), A155769(n)]` -/
def P18322802956854858226.Spec : Prop :=
  ∀ n, (P18322802956854858226.a n : ℤ) = A155770 (n + 1)

end A155770

/-! ## A155770.P4516540826254381374

`∩[A045326(n+1), A155769(n)]`
-/

namespace A155770.P4516540826254381374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155770.P4516540826254381374

namespace A155770

/-- `∩[A045326(n+1), A155769(n)]` -/
def P4516540826254381374.Spec : Prop :=
  ∀ n, (P4516540826254381374.a n : ℤ) = A155770 (n + 1)

end A155770

/-! ## A155770.P1551856136583141377

`∩[A085760(n+1), A155769(n)]`
-/

namespace A155770.P1551856136583141377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155770.P1551856136583141377

namespace A155770

/-- `∩[A085760(n+1), A155769(n)]` -/
def P1551856136583141377.Spec : Prop :=
  ∀ n, (P1551856136583141377.a n : ℤ) = A155770 (n + 1)

end A155770

/-! ## A155770.P16150263180002110115

`∩[A191082(n+1), A155769(n)]`
-/

namespace A155770.P16150263180002110115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155770.P16150263180002110115

namespace A155770

/-- `∩[A191082(n+1), A155769(n)]` -/
def P16150263180002110115.Spec : Prop :=
  ∀ n, (P16150263180002110115.a n : ℤ) = A155770 (n + 1)

end A155770

/-! ## A155770.P8729773970994594465

`∩[A197504(n+1), A155769(n)]`
-/

namespace A155770.P8729773970994594465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155770.P8729773970994594465

namespace A155770

/-- `∩[A197504(n+1), A155769(n)]` -/
def P8729773970994594465.Spec : Prop :=
  ∀ n, (P8729773970994594465.a n : ℤ) = A155770 (n + 1)

end A155770

/-! ## A155770.P5889903984635043073

`∩[A332555(n+1), A155769(n)]`
-/

namespace A155770.P5889903984635043073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155770.P5889903984635043073

namespace A155770

/-- `∩[A332555(n+1), A155769(n)]` -/
def P5889903984635043073.Spec : Prop :=
  ∀ n, (P5889903984635043073.a n : ℤ) = A155770 (n + 1)

end A155770

/-! ## A155770.P18079251198583445443

`∩[A066720(n+1), A155769(n)]`
-/

namespace A155770.P18079251198583445443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155770.P18079251198583445443

namespace A155770

/-- `∩[A066720(n+1), A155769(n)]` -/
def P18079251198583445443.Spec : Prop :=
  ∀ n, (P18079251198583445443.a n : ℤ) = A155770 (n + 1)

end A155770

/-! ## A155770.P3517142661569325349

`∩[A285015(n+1), A155769(n)]`
-/

namespace A155770.P3517142661569325349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155770.P3517142661569325349

namespace A155770

/-- `∩[A285015(n+1), A155769(n)]` -/
def P3517142661569325349.Spec : Prop :=
  ∀ n, (P3517142661569325349.a n : ℤ) = A155770 (n + 1)

end A155770

/-! ## A155770.P16225240931446761282

`∩[A385221(n+1), A155769(n)]`
-/

namespace A155770.P16225240931446761282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155770.P16225240931446761282

namespace A155770

/-- `∩[A385221(n+1), A155769(n)]` -/
def P16225240931446761282.Spec : Prop :=
  ∀ n, (P16225240931446761282.a n : ℤ) = A155770 (n + 1)

end A155770

/-! ## A155770.P18300742123806658345

`∩[A049098(n+1), A155769(n)]`
-/

namespace A155770.P18300742123806658345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155770.P18300742123806658345

namespace A155770

/-- `∩[A049098(n+1), A155769(n)]` -/
def P18300742123806658345.Spec : Prop :=
  ∀ n, (P18300742123806658345.a n : ℤ) = A155770 (n + 1)

end A155770

/-!
# A155771: Numbers n such that 2*n^2+2*n-41 is a prime.

The programs for A155771, the canonical program `A155771.P775361544863186254` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155771 has offset 1).

The definition of A155771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155771.P775361544863186254

`eq[∑{p}[A155769(n), #], A155769(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A155771

/-- `eq[∑{p}[A155769(n), #], A155769(n)]` -/
def P775361544863186254.Spec : Prop :=
  ∀ n, (P775361544863186254.a n : ℤ) = A155771 (n + 1)

theorem P775361544863186254.correct : P775361544863186254.Spec := by
  intro n
  simp only [A155771, Nat.add_sub_cancel]

end A155771

/-! ## A155771.P10960755653851033584

`A002260(A155770(n+1)+41)`
-/

namespace A155771.P10960755653851033584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A155770 (n + 1) + 41).toNat

end

end A155771.P10960755653851033584

namespace A155771

/-- `A002260(A155770(n+1)+41)` -/
def P10960755653851033584.Spec : Prop :=
  ∀ n, P10960755653851033584.a n = A155771 (n + 1)

end A155771

/-! ## A155771.P14554919270966812857

`A336820(A155770(n+1)+42)`
-/

namespace A155771.P14554919270966812857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A155770 (n + 1) + 42).toNat

end

end A155771.P14554919270966812857

namespace A155771

/-- `A336820(A155770(n+1)+42)` -/
def P14554919270966812857.Spec : Prop :=
  ∀ n, P14554919270966812857.a n = A155771 (n + 1)

end A155771

/-! ## A155771.P6621651351586788383

`A025581(∩[A045438(n+1), A155769(n)]+41)`
-/

namespace A155771.P6621651351586788383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 41)

end

end A155771.P6621651351586788383

namespace A155771

/-- `A025581(∩[A045438(n+1), A155769(n)]+41)` -/
def P6621651351586788383.Spec : Prop :=
  ∀ n, P6621651351586788383.a n = A155771 (n + 1)

end A155771

/-! ## A155771.P418399532572239077

`A025581(∩[A045448(n+1), A155769(n)]+41)`
-/

namespace A155771.P418399532572239077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 41)

end

end A155771.P418399532572239077

namespace A155771

/-- `A025581(∩[A045448(n+1), A155769(n)]+41)` -/
def P418399532572239077.Spec : Prop :=
  ∀ n, P418399532572239077.a n = A155771 (n + 1)

end A155771

/-!
# A155772: Primes p such that 2*p^2+2*p-41 is a prime.

The programs for A155772, the canonical program `A155772.P13785239630017138189` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155772 has offset 1).

The definition of A155772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155772.P13785239630017138189

`p?[A155771(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A155772

/-- `p?[A155771(n+1)]` -/
def P13785239630017138189.Spec : Prop :=
  ∀ n, P13785239630017138189.a n = A155772 (n + 1)

theorem P13785239630017138189.correct : P13785239630017138189.Spec := by
  intro n
  simp only [A155772, Nat.add_sub_cancel]

end A155772

/-! ## A155772.P16706705673236082694

`record[A001414(A155771(n+2))]`
-/

namespace A155772.P16706705673236082694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A155771 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155772.P16706705673236082694

namespace A155772

/-- `record[A001414(A155771(n+2))]` -/
def P16706705673236082694.Spec : Prop :=
  ∀ n, P16706705673236082694.a n = A155772 (n + 1)

end A155772

/-! ## A155772.P14775071173225044914

`filter[A155771(n+1), A010051(#)]`
-/

namespace A155772.P14775071173225044914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A155772.P14775071173225044914

namespace A155772

/-- `filter[A155771(n+1), A010051(#)]` -/
def P14775071173225044914.Spec : Prop :=
  ∀ n, P14775071173225044914.a n = A155772 (n + 1)

end A155772

/-! ## A155772.P1859138826599126329

`record[A006530(2*A155771(n+1))]`
-/

namespace A155772.P1859138826599126329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A155771 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155772.P1859138826599126329

namespace A155772

/-- `record[A006530(2*A155771(n+1))]` -/
def P1859138826599126329.Spec : Prop :=
  ∀ n, P1859138826599126329.a n = A155772 (n + 1)

end A155772

/-! ## A155772.P15686224114489905666

`∩[A000040(n+1), A155771(n+1)]`
-/

namespace A155772.P15686224114489905666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155772.P15686224114489905666

namespace A155772

/-- `∩[A000040(n+1), A155771(n+1)]` -/
def P15686224114489905666.Spec : Prop :=
  ∀ n, (P15686224114489905666.a n : ℤ) = A155772 (n + 1)

end A155772

/-! ## A155772.P584999807536596479

`∩[A006005(n+1), A155771(n+1)]`
-/

namespace A155772.P584999807536596479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155772.P584999807536596479

namespace A155772

/-- `∩[A006005(n+1), A155771(n+1)]` -/
def P584999807536596479.Spec : Prop :=
  ∀ n, (P584999807536596479.a n : ℤ) = A155772 (n + 1)

end A155772

/-! ## A155772.P2716896534444816677

`∩[A008578(n+1), A155771(n+1)]`
-/

namespace A155772.P2716896534444816677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155772.P2716896534444816677

namespace A155772

/-- `∩[A008578(n+1), A155771(n+1)]` -/
def P2716896534444816677.Spec : Prop :=
  ∀ n, (P2716896534444816677.a n : ℤ) = A155772 (n + 1)

end A155772

/-! ## A155772.P13835696539016828195

`∩[A045344(n+1), A155771(n+1)]`
-/

namespace A155772.P13835696539016828195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155772.P13835696539016828195

namespace A155772

/-- `∩[A045344(n+1), A155771(n+1)]` -/
def P13835696539016828195.Spec : Prop :=
  ∀ n, (P13835696539016828195.a n : ℤ) = A155772 (n + 1)

end A155772

/-! ## A155772.P5228559564970943781

`∩[A046022(n+1), A155771(n+1)]`
-/

namespace A155772.P5228559564970943781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155772.P5228559564970943781

namespace A155772

/-- `∩[A046022(n+1), A155771(n+1)]` -/
def P5228559564970943781.Spec : Prop :=
  ∀ n, (P5228559564970943781.a n : ℤ) = A155772 (n + 1)

end A155772

/-! ## A155772.P18193502740632710367

`∩[A049569(n+1), A155771(n+1)]`
-/

namespace A155772.P18193502740632710367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155772.P18193502740632710367

namespace A155772

/-- `∩[A049569(n+1), A155771(n+1)]` -/
def P18193502740632710367.Spec : Prop :=
  ∀ n, (P18193502740632710367.a n : ℤ) = A155772 (n + 1)

end A155772

/-! ## A155772.P5379262560861345479

`∩[A065091(n+1), A155771(n+1)]`
-/

namespace A155772.P5379262560861345479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155772.P5379262560861345479

namespace A155772

/-- `∩[A065091(n+1), A155771(n+1)]` -/
def P5379262560861345479.Spec : Prop :=
  ∀ n, (P5379262560861345479.a n : ℤ) = A155772 (n + 1)

end A155772

/-! ## A155772.P9360721069700942817

`∩[A140475(n+1), A155771(n+1)]`
-/

namespace A155772.P9360721069700942817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155772.P9360721069700942817

namespace A155772

/-- `∩[A140475(n+1), A155771(n+1)]` -/
def P9360721069700942817.Spec : Prop :=
  ∀ n, (P9360721069700942817.a n : ℤ) = A155772 (n + 1)

end A155772

/-! ## A155772.P6709804356655301320

`∩[A155771(n+1), A158611(n+1)]`
-/

namespace A155772.P6709804356655301320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155772.P6709804356655301320

namespace A155772

/-- `∩[A155771(n+1), A158611(n+1)]` -/
def P6709804356655301320.Spec : Prop :=
  ∀ n, (P6709804356655301320.a n : ℤ) = A155772 (n + 1)

end A155772

/-! ## A155772.P14709887176606117204

`∩[A155771(n+1), A171577(n+1)]`
-/

namespace A155772.P14709887176606117204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155772.P14709887176606117204

namespace A155772

/-- `∩[A155771(n+1), A171577(n+1)]` -/
def P14709887176606117204.Spec : Prop :=
  ∀ n, (P14709887176606117204.a n : ℤ) = A155772 (n + 1)

end A155772

/-! ## A155772.P14681143062190672536

`∩[A155771(n+1), A175787(n+1)]`
-/

namespace A155772.P14681143062190672536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155772.P14681143062190672536

namespace A155772

/-- `∩[A155771(n+1), A175787(n+1)]` -/
def P14681143062190672536.Spec : Prop :=
  ∀ n, (P14681143062190672536.a n : ℤ) = A155772 (n + 1)

end A155772

/-! ## A155772.P15801338211788086495

`∩[A155771(n+1), A182986(n+1)]`
-/

namespace A155772.P15801338211788086495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155772.P15801338211788086495

namespace A155772

/-- `∩[A155771(n+1), A182986(n+1)]` -/
def P15801338211788086495.Spec : Prop :=
  ∀ n, (P15801338211788086495.a n : ℤ) = A155772 (n + 1)

end A155772

/-! ## A155772.P6365541134880617197

`∩[A155771(n+1), A215848(n+1)]`
-/

namespace A155772.P6365541134880617197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155772.P6365541134880617197

namespace A155772

/-- `∩[A155771(n+1), A215848(n+1)]` -/
def P6365541134880617197.Spec : Prop :=
  ∀ n, (P6365541134880617197.a n : ℤ) = A155772 (n + 1)

end A155772

/-! ## A155772.P10527405023570519935

`A020639(record[A008472(A155771(n+1))])`
-/

namespace A155772.P10527405023570519935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A155771 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155772.P10527405023570519935

namespace A155772

/-- `A020639(record[A008472(A155771(n+1))])` -/
def P10527405023570519935.Spec : Prop :=
  ∀ n, P10527405023570519935.a n = A155772 (n + 1)

end A155772

/-! ## A155772.P14632051267219843081

`A000040(record[A061395(A155771(n+1))])`
-/

namespace A155772.P14632051267219843081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A155771 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155772.P14632051267219843081

namespace A155772

/-- `A000040(record[A061395(A155771(n+1))])` -/
def P14632051267219843081.Spec : Prop :=
  ∀ n, P14632051267219843081.a n = A155772 (n + 1)

end A155772

/-! ## A155772.P8700004001422512980

`record[A020639(A155771(A156253(n+1)))]`
-/

namespace A155772.P8700004001422512980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155771 (A156253 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155772.P8700004001422512980

namespace A155772

/-- `record[A020639(A155771(A156253(n+1)))]` -/
def P8700004001422512980.Spec : Prop :=
  ∀ n, P8700004001422512980.a n = A155772 (n + 1)

end A155772

/-!
# A155774: Prime indices of primes with digits in strictly increasing order.

The programs for A155774, there is no canonical definition to state claims against.
-/

/-! ## A155774.P9850983766318897092

`p?[A155763(n+4)]`
-/

namespace A155774.P9850983766318897092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155763 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155774.P9850983766318897092

/-! ## A155774.P17057423558523616140

`∩[A066047(n+1), A155763(n+1)]`
-/

namespace A155774.P17057423558523616140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155774.P17057423558523616140

/-! ## A155774.P1071549809773041597

`∩[A108719(n+1), A155763(n+1)]`
-/

namespace A155774.P1071549809773041597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155774.P1071549809773041597

/-! ## A155774.P2511596598466673776

`∩[A155763(n+1), A215848(n+1)]`
-/

namespace A155774.P2511596598466673776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155774.P2511596598466673776

/-! ## A155774.P18078290875315009287

`∩[A155763(n+1), A163996(n+1)]`
-/

namespace A155774.P18078290875315009287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155774.P18078290875315009287

/-!
# A155775: Indices j in A000040 such that j is an odd composite and the distinct digits of the prime A000040(j) are in increasing order.

The programs for A155775, there is no canonical definition to state claims against.
-/

/-! ## A155775.P17085593876372440618

`∩[A071904(n+1), A155763(n+1)]`
-/

namespace A155775.P17085593876372440618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155775.P17085593876372440618

/-! ## A155775.P14195032480163513382

`∩[record[A191558(2*n+1)], A155763(n+2)]`
-/

namespace A155775.P14195032480163513382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155763 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A155775.P14195032480163513382

/-! ## A155775.P484764346223799304

`∩[A000720(A052015(n+1)), A071904(n+1)]`
-/

namespace A155775.P484764346223799304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A052015 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155775.P484764346223799304

/-!
# A155776: Even indices of multidigit primes with digits in strictly increasing order.

The programs for A155776, there is no canonical definition to state claims against.
-/

/-! ## A155776.P2293506690063435344

`∩[2*(n+3), A155763(n+1)]`
-/

namespace A155776.P2293506690063435344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155776.P2293506690063435344

/-! ## A155776.P14142440203685223698

`∩[A155763(n+1), A020739(n)]`
-/

namespace A155776.P14142440203685223698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155776.P14142440203685223698

/-! ## A155776.P18398649203394949524

`∩[A155763(n+1), A004277(n+3)]`
-/

namespace A155776.P18398649203394949524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155776.P18398649203394949524

/-! ## A155776.P6704833589888222568

`record[A038608(A155763(n+5))]`
-/

namespace A155776.P6704833589888222568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A155763 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155776.P6704833589888222568

/-! ## A155776.P9885506184138776574

`∩[2*n, A265145(A052015(n+5))]`
-/

namespace A155776.P9885506184138776574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265145 (A052015 (n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155776.P9885506184138776574

/-!
# A155777: Primes with largest digit prime.

The programs for A155777, the canonical program `A155777.P2703332547044059422` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155777 has offset 1).

The definition of A155777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155777.P2703332547044059422

`p?[(n+1)*A001222(A262401(n+1))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A155777

/-- `p?[(n+1)*A001222(A262401(n+1))]` -/
def P2703332547044059422.Spec : Prop :=
  ∀ n, P2703332547044059422.a n = A155777 (n + 1)

theorem P2703332547044059422.correct : P2703332547044059422.Spec := by
  intro n
  simp only [A155777, Nat.add_sub_cancel]

end A155777

/-! ## A155777.P6675957340636242156

`p?[A000027(n+1)*A032741(A262401(n+1))]`
-/

namespace A155777.P6675957340636242156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A032741 (A262401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155777.P6675957340636242156

namespace A155777

/-- `p?[A000027(n+1)*A032741(A262401(n+1))]` -/
def P6675957340636242156.Spec : Prop :=
  ∀ n, P6675957340636242156.a n = A155777 (n + 1)

end A155777

/-! ## A155777.P8207377672092036391

`p?[A019554(n+1)*A032741(A262401(n+1))]`
-/

namespace A155777.P8207377672092036391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A032741 (A262401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155777.P8207377672092036391

namespace A155777

/-- `p?[A019554(n+1)*A032741(A262401(n+1))]` -/
def P8207377672092036391.Spec : Prop :=
  ∀ n, P8207377672092036391.a n = A155777 (n + 1)

end A155777

/-! ## A155777.P7569335549486156706

`p?[(A005408(n)-n)*A032741(A262401(n+1))]`
-/

namespace A155777.P7569335549486156706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ)) * A032741 (A262401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155777.P7569335549486156706

namespace A155777

/-- `p?[(A005408(n)-n)*A032741(A262401(n+1))]` -/
def P7569335549486156706.Spec : Prop :=
  ∀ n, P7569335549486156706.a n = A155777 (n + 1)

end A155777

/-! ## A155777.P3137866605313269546

`eq[A003415(n), A359901(A000010(n+5))]`
-/

namespace A155777.P3137866605313269546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359901 (A000010 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155777.P3137866605313269546

namespace A155777

/-- `eq[A003415(n), A359901(A000010(n+5))]` -/
def P3137866605313269546.Spec : Prop :=
  ∀ n, (P3137866605313269546.a n : ℤ) = A155777 (n + 1)

end A155777

/-!
# A155778: Primes p such that 2^p + p + 6 is also prime.

The programs for A155778, there is no canonical definition to state claims against.
-/

/-! ## A155778.P953688776205726116

`A108702(A022630(n))`
-/

namespace A155778.P953688776205726116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108702 (A022630 n).toNat

end

end A155778.P953688776205726116

/-!
# A155779: Primes p such that 2^(p-1)+7 is prime.

The programs for A155779, there is no canonical definition to state claims against.
-/

/-! ## A155779.P6940580677318109471

`p?[A057195(n+1)+1]`
-/

namespace A155779.P6940580677318109471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057195 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155779.P6940580677318109471

/-! ## A155779.P10288173077084775786

`p?[2*A217349(n+1)+1]`
-/

namespace A155779.P10288173077084775786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217349 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155779.P10288173077084775786

/-! ## A155779.P6006222884170771150

`p?[A141310(A057195(n+1))]`
-/

namespace A155779.P6006222884170771150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A057195 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155779.P6006222884170771150

/-! ## A155779.P14082553972901918018

`p?[A005408(A217349(n+1))]`
-/

namespace A155779.P14082553972901918018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A217349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155779.P14082553972901918018

/-! ## A155779.P17577084484227115874

`record[A020639(A057195(n+1)+1)]`
-/

namespace A155779.P17577084484227115874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A057195 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155779.P17577084484227115874

/-!
# A155780: Primes p such that 2^p+11 is a prime.

The programs for A155780, there is no canonical definition to state claims against.
-/

/-! ## A155780.P2749017709448648484

`p?[A102633(n+1)]`
-/

namespace A155780.P2749017709448648484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155780.P2749017709448648484

/-! ## A155780.P190248210833597971

`p?[record[A102633(A012257(n))]]`
-/

namespace A155780.P190248210833597971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102633 (A012257 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155780.P190248210833597971

/-! ## A155780.P17045079960873746690

`p?[record[A102633(A022446(n))]]`
-/

namespace A155780.P17045079960873746690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102633 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155780.P17045079960873746690

/-! ## A155780.P15448795545970293995

`p?[record[A102633(A028920(n))]]`
-/

namespace A155780.P15448795545970293995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102633 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155780.P15448795545970293995

/-! ## A155780.P11246870869851671875

`p?[record[A102633(A051340(n))]]`
-/

namespace A155780.P11246870869851671875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102633 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155780.P11246870869851671875

/-!
# A155785: Nonprimes where the first digit equals the final digit and also equals the number of digits.

The programs for A155785, there is no canonical definition to state claims against.
-/

/-! ## A155785.P202550294159986544

`A265547(A000219(3*n)%A005529(2*n+5))`
-/

namespace A155785.P202550294159986544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265547 (Int.tmod (A000219 (3 * n)) (A005529 (2 * n + 5))).toNat

end

end A155785.P202550294159986544

/-!
# A155786: Primes whose first and last digits differ by 1.

The programs for A155786, the canonical program `A155786.P8875892173280878446` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155786 has offset 1).

The definition of A155786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1579 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155786.P8875892173280878446

`A045344(eq[1, A040164(n+1)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A155786

/-- `A045344(eq[1, A040164(n+1)])` -/
def P8875892173280878446.Spec : Prop :=
  ∀ n, P8875892173280878446.a n = A155786 (n + 1)

theorem P8875892173280878446.correct : P8875892173280878446.Spec := by
  intro n
  simp only [A155786, Nat.add_sub_cancel]

end A155786

/-! ## A155786.P7234075621207201474

`p?[A000040(n+1)*A040164(n+1)]`
-/

namespace A155786.P7234075621207201474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A040164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155786.P7234075621207201474

namespace A155786

/-- `p?[A000040(n+1)*A040164(n+1)]` -/
def P7234075621207201474.Spec : Prop :=
  ∀ n, P7234075621207201474.a n = A155786 (n + 1)

end A155786

/-! ## A155786.P12941335027446965062

`p?[(A006093(n+1)+1)*A040164(n+1)]`
-/

namespace A155786.P12941335027446965062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A040164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155786.P12941335027446965062

namespace A155786

/-- `p?[(A006093(n+1)+1)*A040164(n+1)]` -/
def P12941335027446965062.Spec : Prop :=
  ∀ n, P12941335027446965062.a n = A155786 (n + 1)

end A155786

/-! ## A155786.P15900873311077760380

`p?[(A008864(n+1)-1)*A040164(n+1)]`
-/

namespace A155786.P15900873311077760380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A040164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155786.P15900873311077760380

namespace A155786

/-- `p?[(A008864(n+1)-1)*A040164(n+1)]` -/
def P15900873311077760380.Spec : Prop :=
  ∀ n, P15900873311077760380.a n = A155786 (n + 1)

end A155786

/-! ## A155786.P18170156295136608024

`p?[(n+1)*A040163(n+1)]`
-/

namespace A155786.P18170156295136608024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A040163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155786.P18170156295136608024

namespace A155786

/-- `p?[(n+1)*A040163(n+1)]` -/
def P18170156295136608024.Spec : Prop :=
  ∀ n, P18170156295136608024.a n = A155786 (n + 1)

end A155786

/-!
# A155788: Renewal array for 1/(x+sqrt(1-4x)).

The programs for A155788, there is no canonical definition to state claims against.
-/

/-! ## A155788.P9571441143561816285

`A109267(n)+A068932(A289978(n))`
-/

namespace A155788.P9571441143561816285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109267 n + A068932 (A289978 n).toNat

end

end A155788.P9571441143561816285

/-! ## A155788.P12951200037028405053

`A105224(A094527(n)²)`
-/

namespace A155788.P12951200037028405053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A094527 n ^ 2).toNat

end

end A155788.P12951200037028405053

/-! ## A155788.P7940694179127588505

`A273190(A094527(n)²)`
-/

namespace A155788.P7940694179127588505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A094527 n ^ 2).toNat

end

end A155788.P7940694179127588505

/-! ## A155788.P9067993098834608940

`A273190(A094527(n)^2)`
-/

namespace A155788.P9067993098834608940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A094527 n ^ 2).toNat

end

end A155788.P9067993098834608940

/-! ## A155788.P4183200212867927448

`A000196(A004747(n+1)+1)`
-/

namespace A155788.P4183200212867927448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004747 (n + 1) + 1).toNat

end

end A155788.P4183200212867927448

/-!
# A155794: Triangle read by rows: t(n,m)=(m*(m-n))!

The programs for A155794, the canonical program `A155794.P2715441487080169983` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155794 has offset 0).

The definition of A155794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155794.P16137451086208464643

`(col(n)*(row(n)-col(n)))!`
-/

namespace A155794.P16137451086208464643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A155794.P16137451086208464643

namespace A155794

/-- `(col(n)*(row(n)-col(n)))!` -/
def P16137451086208464643.Spec : Prop :=
  ∀ n, (P16137451086208464643.a n : ℤ) = A155794 n

end A155794

/-! ## A155794.P2715441487080169983

`A004247(n)!`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A155794

/-- `A004247(n)!` -/
def P2715441487080169983.Spec : Prop :=
  ∀ n, (P2715441487080169983.a n : ℤ) = A155794 n

theorem P2715441487080169983.correct : P2715441487080169983.Spec := by
  intro n
  simp only [A155794]

end A155794

/-! ## A155794.P43784882597557310

`A086460(n)!`
-/

namespace A155794.P43784882597557310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A086460 n).toNat

end

end A155794.P43784882597557310

namespace A155794

/-- `A086460(n)!` -/
def P43784882597557310.Spec : Prop :=
  ∀ n, (P43784882597557310.a n : ℤ) = A155794 n

end A155794

/-! ## A155794.P16462141919499606676

`A086461(n)!`
-/

namespace A155794.P16462141919499606676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A086461 n).toNat

end

end A155794.P16462141919499606676

namespace A155794

/-- `A086461(n)!` -/
def P16462141919499606676.Spec : Prop :=
  ∀ n, (P16462141919499606676.a n : ℤ) = A155794 n

end A155794

/-! ## A155794.P14308228967646696980

`log2(A117401(n))!`
-/

namespace A155794.P14308228967646696980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A117401 n : ℝ))).toNat

end

end A155794.P14308228967646696980

namespace A155794

/-- `log2(A117401(n))!` -/
def P14308228967646696980.Spec : Prop :=
  ∀ n, (P14308228967646696980.a n : ℤ) = A155794 n

end A155794

/-! ## A155794.P14397522612239964091

`(A077028(n)-1)!`
-/

namespace A155794.P14397522612239964091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A077028 n - 1).toNat

end

end A155794.P14397522612239964091

namespace A155794

/-- `(A077028(n)-1)!` -/
def P14397522612239964091.Spec : Prop :=
  ∀ n, (P14397522612239964091.a n : ℤ) = A155794 n

theorem P14397522612239964091.correct : P14397522612239964091.Spec := by
  intro n
  simp only [A155794, Nat.add_sub_cancel, A155794.P14397522612239964091.a, A155794.P2715441487080169983.a, A004247, A004247.P2751605162508615148.a, A077028, A077028.P18404356772921913843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155794

/-! ## A155794.P18267824926108739347

`A000142(col(n)*(row(n)-col(n)))`
-/

namespace A155794.P18267824926108739347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A155794.P18267824926108739347

namespace A155794

/-- `A000142(col(n)*(row(n)-col(n)))` -/
def P18267824926108739347.Spec : Prop :=
  ∀ n, P18267824926108739347.a n = A155794 n

end A155794

/-! ## A155794.P2796540205630158602

`A033295(A082043(n))`
-/

namespace A155794.P2796540205630158602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033295 (A082043 n).toNat

end

end A155794.P2796540205630158602

namespace A155794

/-- `A033295(A082043(n))` -/
def P2796540205630158602.Spec : Prop :=
  ∀ n, P2796540205630158602.a n = A155794 n

end A155794

/-! ## A155794.P8295669440885118400

`A081123(A157528(n))`
-/

namespace A155794.P8295669440885118400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A157528 n).toNat

end

end A155794.P8295669440885118400

namespace A155794

/-- `A081123(A157528(n))` -/
def P8295669440885118400.Spec : Prop :=
  ∀ n, P8295669440885118400.a n = A155794 n

end A155794

/-! ## A155794.P9421078308416558231

`A008279(A285192(n))`
-/

namespace A155794.P9421078308416558231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A285192 n).toNat

end

end A155794.P9421078308416558231

namespace A155794

/-- `A008279(A285192(n))` -/
def P9421078308416558231.Spec : Prop :=
  ∀ n, P9421078308416558231.a n = A155794 n

end A155794

/-! ## A155794.P15224383669177848019

`A214080(A082039(n))`
-/

namespace A155794.P15224383669177848019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (A082039 n).toNat

end

end A155794.P15224383669177848019

namespace A155794

/-- `A214080(A082039(n))` -/
def P15224383669177848019.Spec : Prop :=
  ∀ n, P15224383669177848019.a n = A155794 n

end A155794

/-! ## A155794.P3962215107088141238

`A081123(A130154(n+1))`
-/

namespace A155794.P3962215107088141238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A130154 (n + 1)).toNat

end

end A155794.P3962215107088141238

namespace A155794

/-- `A081123(A130154(n+1))` -/
def P3962215107088141238.Spec : Prop :=
  ∀ n, P3962215107088141238.a n = A155794 n

end A155794

/-! ## A155794.P2687279283841284515

`A000142(A077028(n)-1)`
-/

namespace A155794.P2687279283841284515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A077028 n - 1).toNat

end

end A155794.P2687279283841284515

namespace A155794

/-- `A000142(A077028(n)-1)` -/
def P2687279283841284515.Spec : Prop :=
  ∀ n, P2687279283841284515.a n = A155794 n

theorem P2687279283841284515.correct : P2687279283841284515.Spec := by
  intro n
  simp only [A155794, Nat.add_sub_cancel, A155794.P2687279283841284515.a, A155794.P2715441487080169983.a, A000142, A000142.P3272619076580183195.a, A004247, A004247.P2751605162508615148.a, A077028, A077028.P18404356772921913843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155794

/-! ## A155794.P11904883483105630047

`A000142(1-A176270(n))`
-/

namespace A155794.P11904883483105630047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (1 - A176270 n).toNat

end

end A155794.P11904883483105630047

namespace A155794

/-- `A000142(1-A176270(n))` -/
def P11904883483105630047.Spec : Prop :=
  ∀ n, P11904883483105630047.a n = A155794 n

theorem P11904883483105630047.correct : P11904883483105630047.Spec := by
  intro n
  simp only [A155794, Nat.add_sub_cancel, A155794.P11904883483105630047.a, A155794.P2715441487080169983.a, A000142, A000142.P3272619076580183195.a, A004247, A004247.P2751605162508615148.a, A176270, A176270.P15264438552937889960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155794

/-! ## A155794.P8771023320136573991

`A358185(A086460(n)+2)`
-/

namespace A155794.P8771023320136573991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358185 (A086460 n + 2).toNat

end

end A155794.P8771023320136573991

namespace A155794

/-- `A358185(A086460(n)+2)` -/
def P8771023320136573991.Spec : Prop :=
  ∀ n, P8771023320136573991.a n = A155794 n

end A155794

/-! ## A155794.P13347685080761042846

`A187783(n)*A225816(n)`
-/

namespace A155794.P13347685080761042846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 n * A225816 n

end

end A155794.P13347685080761042846

namespace A155794

/-- `A187783(n)*A225816(n)` -/
def P13347685080761042846.Spec : Prop :=
  ∀ n, P13347685080761042846.a n = A155794 n

end A155794

/-! ## A155794.P14312079012781085337

`A000142(A002262(n)*A025581(n))`
-/

namespace A155794.P14312079012781085337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A002262 n * A025581 n).toNat

end

end A155794.P14312079012781085337

namespace A155794

/-- `A000142(A002262(n)*A025581(n))` -/
def P14312079012781085337.Spec : Prop :=
  ∀ n, P14312079012781085337.a n = A155794 n

end A155794

/-!
# A155795: Triangle read by rows: t(n,k)=n!/(n - k*(n - k)).

The programs for A155795, there is no canonical definition to state claims against.
-/

/-! ## A155795.P2738172762087787580

`and(A050186(n)!, A116188(n)!)`
-/

namespace A155795.P2738172762087787580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (Nat.factorial (A050186 n).toNat) (Nat.factorial (A116188 n).toNat)

end

end A155795.P2738172762087787580

/-! ## A155795.P17714543404842668498

`A050186(n)!%A329383(n+2)`
-/

namespace A155795.P17714543404842668498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A050186 n).toNat : ℤ) (A329383 (n + 2))

end

end A155795.P17714543404842668498

/-! ## A155795.P7652200615596216044

`A050186(n)!%A278219(A095675(n))`
-/

namespace A155795.P7652200615596216044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A050186 n).toNat : ℤ) (A278219 (A095675 n).toNat)

end

end A155795.P7652200615596216044

/-! ## A155795.P11937599559638077743

`A086617(n)!%A086614(2*n+3)`
-/

namespace A155795.P11937599559638077743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A086617 n).toNat : ℤ) (A086614 (2 * n + 3))

end

end A155795.P11937599559638077743

/-! ## A155795.P6520793411982235300

`A099597(n)!%A106232(n+1)`
-/

namespace A155795.P6520793411982235300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A099597 n).toNat : ℤ) (A106232 (n + 1))

end

end A155795.P6520793411982235300

/-!
# A155796: Triangle read by rows: first define the Narayana numbers: Y(n,m)=Binomial[n, m]*Binomial[n + 1, m + 1]/(n - m + 1); then t(n,m)=Sum[(-1)^j *Y(n + 1, j)*(k + 1 - j)^n, {j, 0, k + 1}].

The programs for A155796, there is no canonical definition to state claims against.
-/

/-! ## A155796.P6523469089505726888

`A176124(comp[∑[n-1]])`
-/

namespace A155796.P6523469089505726888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176124 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A155796.P6523469089505726888

/-!
# A155797: Triangle read by rows: t(n,k)=Binomial[k*(n - k), n].

The programs for A155797, the canonical program `A155797.P12648175266448024072` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155797 has offset 0).

The definition of A155797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(col(n)*(row(n)-col(n)), row(n))` (program `A155797.P12648175266448024072`, by `A155797.P12648175266448024072.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155797.P12648175266448024072

`C(col(n)*(row(n)-col(n)), row(n))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155797

/-- `C(col(n)*(row(n)-col(n)), row(n))` -/
def P12648175266448024072.Spec : Prop :=
  ∀ n, (P12648175266448024072.a n : ℤ) = A155797 n

theorem P12648175266448024072.correct : P12648175266448024072.Spec := by
  intro n
  simp only [A155797]

end A155797

/-! ## A155797.P5110692256372341726

`A155798(n)-A007318(n)`
-/

namespace A155797.P5110692256372341726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155798 n - A007318 n

end

end A155797.P5110692256372341726

namespace A155797

/-- `A155798(n)-A007318(n)` -/
def P5110692256372341726.Spec : Prop :=
  ∀ n, P5110692256372341726.a n = A155797 n

theorem P5110692256372341726.correct : P5110692256372341726.Spec := by
  intro n
  simp only [A155797, Nat.add_sub_cancel, A155797.P5110692256372341726.a, A155797.P12648175266448024072.a, A007318, A007318.P11755526479805562006.a, A155798, A155798.P3478378214944984309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155797

/-! ## A155797.P4728819417183218061

`A155798(n)-abs(A108086(n))`
-/

namespace A155797.P4728819417183218061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155798 n - |A108086 n|

end

end A155797.P4728819417183218061

namespace A155797

/-- `A155798(n)-abs(A108086(n))` -/
def P4728819417183218061.Spec : Prop :=
  ∀ n, P4728819417183218061.a n = A155797 n

end A155797

/-! ## A155797.P15980203277212805585

`A155798(n)-abs(A117440(n))`
-/

namespace A155797.P15980203277212805585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155798 n - |A117440 n|

end

end A155797.P15980203277212805585

namespace A155797

/-- `A155798(n)-abs(A117440(n))` -/
def P15980203277212805585.Spec : Prop :=
  ∀ n, P15980203277212805585.a n = A155797 n

end A155797

/-! ## A155797.P11076407435830775379

`A155798(n)-abs(A130595(n))`
-/

namespace A155797.P11076407435830775379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155798 n - |A130595 n|

end

end A155797.P11076407435830775379

namespace A155797

/-- `A155798(n)-abs(A130595(n))` -/
def P11076407435830775379.Spec : Prop :=
  ∀ n, P11076407435830775379.a n = A155797 n

end A155797

/-! ## A155797.P15461026957021722644

`A155798(n)-sqrt(A008459(n))`
-/

namespace A155797.P15461026957021722644
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A155798 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A155797.P15461026957021722644

namespace A155797

/-- `A155798(n)-sqrt(A008459(n))` -/
def P15461026957021722644.Spec : Prop :=
  ∀ n, P15461026957021722644.a n = (A155797 n : ℝ)

end A155797

/-! ## A155797.P15568591541312346360

`A155798(n)-Δ[A102363(n)]`
-/

namespace A155797.P15568591541312346360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155798 n - (f1 (n + 1) - f1 n)

end

end A155797.P15568591541312346360

namespace A155797

/-- `A155798(n)-Δ[A102363(n)]` -/
def P15568591541312346360.Spec : Prop :=
  ∀ n, P15568591541312346360.a n = A155797 n

end A155797

/-! ## A155797.P3396628125084386966

`A155798(n)-(A014473(n)+1)`
-/

namespace A155797.P3396628125084386966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155798 n - (A014473 n + 1)

end

end A155797.P3396628125084386966

namespace A155797

/-- `A155798(n)-(A014473(n)+1)` -/
def P3396628125084386966.Spec : Prop :=
  ∀ n, P3396628125084386966.a n = A155797 n

theorem P3396628125084386966.correct : P3396628125084386966.Spec := by
  intro n
  simp only [A155797, Nat.add_sub_cancel, A155797.P3396628125084386966.a, A155797.P12648175266448024072.a, A014473, A014473.P9301799580602651200.a, A155798, A155798.P3478378214944984309.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155797

/-! ## A155797.P195802035628627557

`A155798(n)-A028326(n)/2`
-/

namespace A155797.P195802035628627557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155798 n : ℚ) - (A028326 n : ℚ) / 2

end

end A155797.P195802035628627557

namespace A155797

/-- `A155798(n)-A028326(n)/2` -/
def P195802035628627557.Spec : Prop :=
  ∀ n, P195802035628627557.a n = (A155797 n : ℚ)

theorem P195802035628627557.correct : P195802035628627557.Spec := by
  intro n
  simp only [A155797, Nat.add_sub_cancel, A155797.P195802035628627557.a, A155797.P12648175266448024072.a, A028326, A028326.P7676793339942299677.a, A155798, A155798.P3478378214944984309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155797

/-! ## A155797.P3993386269109604850

`C(A004247(n), ∑[char[∑[n+1]]])`
-/

namespace A155797.P3993386269109604850
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004247 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155797.P3993386269109604850

namespace A155797

/-- `C(A004247(n), ∑[char[∑[n+1]]])` -/
def P3993386269109604850.Spec : Prop :=
  ∀ n, (P3993386269109604850.a n : ℤ) = A155797 n

end A155797

/-! ## A155797.P9786477843885223687

`C(A077028(n)-1, ∑[char[∑[n+1]]])`
-/

namespace A155797.P9786477843885223687
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077028 n - 1).toNat (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155797.P9786477843885223687

namespace A155797

/-- `C(A077028(n)-1, ∑[char[∑[n+1]]])` -/
def P9786477843885223687.Spec : Prop :=
  ∀ n, (P9786477843885223687.a n : ℤ) = A155797 n

end A155797

/-!
# A155798: Triangle read by rows: t(n,k)=Binomial[n, k] + Binomial[k*(n - k), n].

The programs for A155798, the canonical program `A155798.P3478378214944984309` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155798 has offset 0).

The definition of A155798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))+C(col(n)*(row(n)-col(n)), row(n))` (program `A155798.P3478378214944984309`, by `A155798.P3478378214944984309.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155798.P3478378214944984309

`C(row(n), col(n))+C(col(n)*(row(n)-col(n)), row(n))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155798

/-- `C(row(n), col(n))+C(col(n)*(row(n)-col(n)), row(n))` -/
def P3478378214944984309.Spec : Prop :=
  ∀ n, (P3478378214944984309.a n : ℤ) = A155798 n

theorem P3478378214944984309.correct : P3478378214944984309.Spec := by
  intro n
  simp only [A155798]

end A155798

/-! ## A155798.P11174002557651804679

`A155797(n)+A007318(n)`
-/

namespace A155798.P11174002557651804679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155797 n + A007318 n

end

end A155798.P11174002557651804679

namespace A155798

/-- `A155797(n)+A007318(n)` -/
def P11174002557651804679.Spec : Prop :=
  ∀ n, P11174002557651804679.a n = A155798 n

theorem P11174002557651804679.correct : P11174002557651804679.Spec := by
  intro n
  simp only [A155798, Nat.add_sub_cancel, A155798.P11174002557651804679.a, A155798.P3478378214944984309.a, A007318, A007318.P11755526479805562006.a, A155797, A155797.P12648175266448024072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155798

/-! ## A155798.P13025015850967904613

`A155797(n)+abs(A108086(n))`
-/

namespace A155798.P13025015850967904613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155797 n + |A108086 n|

end

end A155798.P13025015850967904613

namespace A155798

/-- `A155797(n)+abs(A108086(n))` -/
def P13025015850967904613.Spec : Prop :=
  ∀ n, P13025015850967904613.a n = A155798 n

end A155798

/-! ## A155798.P12822105120900410932

`A155797(n)+abs(A117440(n))`
-/

namespace A155798.P12822105120900410932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155797 n + |A117440 n|

end

end A155798.P12822105120900410932

namespace A155798

/-- `A155797(n)+abs(A117440(n))` -/
def P12822105120900410932.Spec : Prop :=
  ∀ n, P12822105120900410932.a n = A155798 n

end A155798

/-! ## A155798.P1784987890477639622

`A155797(n)+abs(A130595(n))`
-/

namespace A155798.P1784987890477639622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155797 n + |A130595 n|

end

end A155798.P1784987890477639622

namespace A155798

/-- `A155797(n)+abs(A130595(n))` -/
def P1784987890477639622.Spec : Prop :=
  ∀ n, P1784987890477639622.a n = A155798 n

end A155798

/-! ## A155798.P13433817705748019994

`A155797(n)+sqrt(A008459(n))`
-/

namespace A155798.P13433817705748019994
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A155797 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A155798.P13433817705748019994

namespace A155798

/-- `A155797(n)+sqrt(A008459(n))` -/
def P13433817705748019994.Spec : Prop :=
  ∀ n, P13433817705748019994.a n = (A155798 n : ℝ)

end A155798

/-! ## A155798.P3507931476800541578

`A155797(n)+Δ[A102363(n)]`
-/

namespace A155798.P3507931476800541578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155797 n + (f1 (n + 1) - f1 n)

end

end A155798.P3507931476800541578

namespace A155798

/-- `A155797(n)+Δ[A102363(n)]` -/
def P3507931476800541578.Spec : Prop :=
  ∀ n, P3507931476800541578.a n = A155798 n

end A155798

/-! ## A155798.P7311436131885837808

`A155797(n)+A028326(n)/2`
-/

namespace A155798.P7311436131885837808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155797 n : ℚ) + (A028326 n : ℚ) / 2

end

end A155798.P7311436131885837808

namespace A155798

/-- `A155797(n)+A028326(n)/2` -/
def P7311436131885837808.Spec : Prop :=
  ∀ n, P7311436131885837808.a n = (A155798 n : ℚ)

theorem P7311436131885837808.correct : P7311436131885837808.Spec := by
  intro n
  simp only [A155798, Nat.add_sub_cancel, A155798.P7311436131885837808.a, A155798.P3478378214944984309.a, A028326, A028326.P7676793339942299677.a, A155797, A155797.P12648175266448024072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155798

/-! ## A155798.P12028833551216505183

`A155797(n)+A074909(A083920(n))`
-/

namespace A155798.P12028833551216505183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155797 n + A074909 (A083920 n).toNat

end

end A155798.P12028833551216505183

namespace A155798

/-- `A155797(n)+A074909(A083920(n))` -/
def P12028833551216505183.Spec : Prop :=
  ∀ n, P12028833551216505183.a n = A155798 n

end A155798

/-! ## A155798.P14839920605317268279

`A155826(n)-2*A155742(n)`
-/

namespace A155798.P14839920605317268279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155826 n - 2 * A155742 n

end

end A155798.P14839920605317268279

namespace A155798

/-- `A155826(n)-2*A155742(n)` -/
def P14839920605317268279.Spec : Prop :=
  ∀ n, P14839920605317268279.a n = A155798 n

theorem P14839920605317268279.correct : P14839920605317268279.Spec := by
  intro n
  simp only [A155798, Nat.add_sub_cancel, A155798.P14839920605317268279.a, A155798.P3478378214944984309.a, A155742, A155742.P15062511152008247460.a, A155826, A155826.P9065841637278000591.a, A061579, A061579.P7462537595056690109.a, A132393, A132393.P16977614496851767761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A155798

/-! ## A155798.P12661685575316957753

`A155797(n)+A008619(A109128(n))`
-/

namespace A155798.P12661685575316957753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155797 n + A008619 (A109128 n).toNat

end

end A155798.P12661685575316957753

namespace A155798

/-- `A155797(n)+A008619(A109128(n))` -/
def P12661685575316957753.Spec : Prop :=
  ∀ n, P12661685575316957753.a n = A155798 n

end A155798

