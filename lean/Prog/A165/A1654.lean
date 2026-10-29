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
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A165401: Antidiagonally reading the array, formed via: first, writing the primes in the first row (row_1), and forming all successive rows' elements using the previous rows' elements as: row_2(j) = row_1(j)*row_1(j+1) - row_1(j) - row_1(j+1), and so on. The first 'column' of the array, 2 1 -1 -1 -1 -1 -1 -1 ... is converted to its absolute value.

The programs for A165401, there is no canonical definition to state claims against.
-/

/-! ## A165401.P13252237369419613903

`A002024(C(A028815(n), A130191(n)))`
-/

namespace A165401.P13252237369419613903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Nat.choose (A028815 n).toNat (A130191 n).toNat)

end

end A165401.P13252237369419613903

/-! ## A165401.P10075670734413778966

`A081165(A028326(n)*A127954(n+1))`
-/

namespace A165401.P10075670734413778966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081165 (A028326 n * A127954 (n + 1)).toNat

end

end A165401.P10075670734413778966

/-! ## A165401.P12760657174187934295

`A211890(A202605(n+1)+A029964(n+1))`
-/

namespace A165401.P12760657174187934295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211890 (A202605 (n + 1) + A029964 (n + 1)).toNat

end

end A165401.P12760657174187934295

/-! ## A165401.P3212242144137585043

`A020639(C(A035068(n+1), A337107(n+1)))`
-/

namespace A165401.P3212242144137585043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.choose (A035068 (n + 1)).toNat (A337107 (n + 1)).toNat)

end

end A165401.P3212242144137585043

/-!
# A165402: a(n) = (2*10^n - 11)/9.

The programs for A165402, the canonical program `A165402.P2419101198305497563` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165402 has offset 1).

The definition of A165402 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*10^(n+1)-11)/9` (program `A165402.P18137134471055381303`, by `A165402.P18137134471055381303.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165402.P14774498118163981846

`ogf((1+10x)/(1-11x+10x^2))`
-/

namespace A165402.P14774498118163981846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10] [1, -11, 10] n

end

end A165402.P14774498118163981846

namespace A165402

/-- `ogf((1+10x)/(1-11x+10x^2))` -/
def P14774498118163981846.Spec : Prop :=
  ∀ n, P14774498118163981846.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P2419101198305497563

`10*a(n-1)+11` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165402

/-- `10*a(n-1)+11` -/
def P2419101198305497563.Spec : Prop :=
  ∀ n, (P2419101198305497563.a n : ℤ) = A165402 (n + 1)

theorem P2419101198305497563.correct : P2419101198305497563.Spec := by
  intro n
  simp only [A165402, Nat.add_sub_cancel]

end A165402

/-! ## A165402.P18137134471055381303

`(2*10^(n+1)-11)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165402.P18137134471055381303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 10 ^ (n + 1) : ℤ) - 11 : ℚ) / 9

end

end A165402.P18137134471055381303

namespace A165402

/-- `(2*10^(n+1)-11)/9` -/
def P18137134471055381303.Spec : Prop :=
  ∀ n, P18137134471055381303.a n = (A165402 (n + 1) : ℚ)

theorem P18137134471055381303.correct : P18137134471055381303.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A165402, Nat.add_sub_cancel, A165402.P18137134471055381303.a, A165402.P2419101198305497563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A165402, Nat.add_sub_cancel, A165402.P18137134471055381303.a, A165402.P2419101198305497563.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165402

/-! ## A165402.P10409098904316058581

`xor(3, ∑[2*10^n])`
-/

namespace A165402.P10409098904316058581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165402.P10409098904316058581

namespace A165402

/-- `xor(3, ∑[2*10^n])` -/
def P10409098904316058581.Spec : Prop :=
  ∀ n, (P10409098904316058581.a n : ℤ) = A165402 (n + 1)

end A165402

/-! ## A165402.P5550853573245402326

`∑[10*a(n-1)]` with `a(0)=1, a(1)=20`
-/

namespace A165402.P5550853573245402326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165402.P5550853573245402326

namespace A165402

/-- `∑[10*a(n-1)]` -/
def P5550853573245402326.Spec : Prop :=
  ∀ n, (P5550853573245402326.a n : ℤ) = A165402 (n + 1)

end A165402

/-! ## A165402.P17336189099926295227

`∑[10^n*ceil(cosh(sin(n)))]`
-/

namespace A165402.P17336189099926295227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * ⌈Real.cosh (Real.sin (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165402.P17336189099926295227

namespace A165402

/-- `∑[10^n*ceil(cosh(sin(n)))]` -/
def P17336189099926295227.Spec : Prop :=
  ∀ n, P17336189099926295227.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P12156246026346179326

`∑[and(10^n, -2)+10^n]`
-/

namespace A165402.P12156246026346179326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (10 ^ n : ℤ) (-2) + (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165402.P12156246026346179326

namespace A165402

/-- `∑[and(10^n, -2)+10^n]` -/
def P12156246026346179326.Spec : Prop :=
  ∀ n, P12156246026346179326.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P15300777903668774800

`∑[(ceil(sin(n)²)+1)*10^n]`
-/

namespace A165402.P15300777903668774800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ + 1) * (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165402.P15300777903668774800

namespace A165402

/-- `∑[(ceil(sin(n)²)+1)*10^n]` -/
def P15300777903668774800.Spec : Prop :=
  ∀ n, P15300777903668774800.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P2777849051819394180

`A094623(Δ[n²])`
-/

namespace A165402.P2777849051819394180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094623 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A165402.P2777849051819394180

namespace A165402

/-- `A094623(Δ[n²])` -/
def P2777849051819394180.Spec : Prop :=
  ∀ n, P2777849051819394180.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P10393952301960782042

`A322925(Δ[n²])`
-/

namespace A165402.P10393952301960782042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A165402.P10393952301960782042

namespace A165402

/-- `A322925(Δ[n²])` -/
def P10393952301960782042.Spec : Prop :=
  ∀ n, P10393952301960782042.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P3056335754753755407

`A002276(n+1)-1`
-/

namespace A165402.P3056335754753755407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1) - 1

end

end A165402.P3056335754753755407

namespace A165402

/-- `A002276(n+1)-1` -/
def P3056335754753755407.Spec : Prop :=
  ∀ n, P3056335754753755407.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P13291157170646856730

`A093135(n+1)-2`
-/

namespace A165402.P13291157170646856730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093135 (n + 1) - 2

end

end A165402.P13291157170646856730

namespace A165402

/-- `A093135(n+1)-2` -/
def P13291157170646856730.Spec : Prop :=
  ∀ n, P13291157170646856730.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P12182848596479493761

`2*A105279(n)+1`
-/

namespace A165402.P12182848596479493761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105279 n + 1

end

end A165402.P12182848596479493761

namespace A165402

/-- `2*A105279(n)+1` -/
def P12182848596479493761.Spec : Prop :=
  ∀ n, P12182848596479493761.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P14450311949263392491

`4*A002279(n)+1`
-/

namespace A165402.P14450311949263392491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002279 n + 1

end

end A165402.P14450311949263392491

namespace A165402

/-- `4*A002279(n)+1` -/
def P14450311949263392491.Spec : Prop :=
  ∀ n, P14450311949263392491.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P5802829739928356855

`5*A002278(n)+1`
-/

namespace A165402.P5802829739928356855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A002278 n + 1

end

end A165402.P5802829739928356855

namespace A165402

/-- `5*A002278(n)+1` -/
def P5802829739928356855.Spec : Prop :=
  ∀ n, P5802829739928356855.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P11841426629690965460

`A173193(n+1)-6`
-/

namespace A165402.P11841426629690965460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173193 (n + 1) - 6

end

end A165402.P11841426629690965460

namespace A165402

/-- `A173193(n+1)-6` -/
def P11841426629690965460.Spec : Prop :=
  ∀ n, P11841426629690965460.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P10578592691272338152

`4*A093142(n)-3`
-/

namespace A165402.P10578592691272338152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A093142 n - 3

end

end A165402.P10578592691272338152

namespace A165402

/-- `4*A093142(n)-3` -/
def P10578592691272338152.Spec : Prop :=
  ∀ n, P10578592691272338152.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P13348612419790527795

`A173262(n+1)-8`
-/

namespace A165402.P13348612419790527795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173262 (n + 1) - 8

end

end A165402.P13348612419790527795

namespace A165402

/-- `A173262(n+1)-8` -/
def P13348612419790527795.Spec : Prop :=
  ∀ n, P13348612419790527795.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P2795043323263756288

`5*A093140(n)-4`
-/

namespace A165402.P2795043323263756288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A093140 n - 4

end

end A165402.P2795043323263756288

namespace A165402

/-- `5*A093140(n)-4` -/
def P2795043323263756288.Spec : Prop :=
  ∀ n, P2795043323263756288.a n = A165402 (n + 1)

end A165402

/-! ## A165402.P16326325888579497475

`10*A002276(n)+1`
-/

namespace A165402.P16326325888579497475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A002276 n + 1

end

end A165402.P16326325888579497475

namespace A165402

/-- `10*A002276(n)+1` -/
def P16326325888579497475.Spec : Prop :=
  ∀ n, P16326325888579497475.a n = A165402 (n + 1)

end A165402

/-!
# A165403: The positions of zeros in A163898 and A163899.

The programs for A165403, there is no canonical definition to state claims against.
-/

/-! ## A165403.P8488660172889623353

`C(A165404(n)+1, 2)`
-/

namespace A165403.P8488660172889623353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A165404 n + 1).toNat 2

end

end A165403.P8488660172889623353

/-! ## A165403.P8478940841906100080

`A000217(A165404(n))`
-/

namespace A165403.P8478940841906100080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A165404 n).toNat

end

end A165403.P8478940841906100080

/-! ## A165403.P10903745519573257650

`A161680(A165404(n)+1)`
-/

namespace A165403.P10903745519573257650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A165404 n + 1).toNat

end

end A165403.P10903745519573257650

/-! ## A165403.P3322068579991268949

`record[C(A140472(A072009(n))+1, 2)]`
-/

namespace A165403.P3322068579991268949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A140472 (A072009 n).toNat + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165403.P3322068579991268949

/-! ## A165403.P5921680141113347703

`A000124(A165404(n))-A007318(∑[n])`
-/

namespace A165403.P5921680141113347703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A165404 n).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165403.P5921680141113347703

/-!
# A165404: The positions of zeros in the top row of A163898 (and A163899).

The programs for A165404, the canonical program `A165404.P15223557212356883423` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165404 has offset 0).

The definition of A165404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165404.P13860928156631252734

`A025581(A165403(n))`
-/

namespace A165404.P13860928156631252734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A165403 n).toNat

end

end A165404.P13860928156631252734

namespace A165404

/-- `A025581(A165403(n))` -/
def P13860928156631252734.Spec : Prop :=
  ∀ n, P13860928156631252734.a n = A165404 n

end A165404

/-! ## A165404.P6976251351413525275

`eq[A063694(n), A265263(n)]`
-/

namespace A165404.P6976251351413525275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165404.P6976251351413525275

namespace A165404

/-- `eq[A063694(n), A265263(n)]` -/
def P6976251351413525275.Spec : Prop :=
  ∀ n, (P6976251351413525275.a n : ℤ) = A165404 n

end A165404

/-! ## A165404.P1624493574643393718

`eq[A063695(n), A377404(n)]`
-/

namespace A165404.P1624493574643393718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377404 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165404.P1624493574643393718

namespace A165404

/-- `eq[A063695(n), A377404(n)]` -/
def P1624493574643393718.Spec : Prop :=
  ∀ n, (P1624493574643393718.a n : ℤ) = A165404 n

end A165404

/-! ## A165404.P15223557212356883423

`a(n-1)+A010060(a(n-1))+A006519(a(n-1)+1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A165404

/-- `a(n-1)+A010060(a(n-1))+A006519(a(n-1)+1)` -/
def P15223557212356883423.Spec : Prop :=
  ∀ n, P15223557212356883423.a n = A165404 n

theorem P15223557212356883423.correct : P15223557212356883423.Spec := by
  intro n
  simp only [A165404]

end A165404

/-! ## A165404.P13719251609722445978

`record[A140472(A072009(n))]`
-/

namespace A165404.P13719251609722445978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A072009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165404.P13719251609722445978

namespace A165404

/-- `record[A140472(A072009(n))]` -/
def P13719251609722445978.Spec : Prop :=
  ∀ n, P13719251609722445978.a n = A165404 n

end A165404

/-! ## A165404.P9484530326591757221

`record[A140472(A130824(n)-n)]`
-/

namespace A165404.P9484530326591757221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A130824 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165404.P9484530326591757221

namespace A165404

/-- `record[A140472(A130824(n)-n)]` -/
def P9484530326591757221.Spec : Prop :=
  ∀ n, P9484530326591757221.a n = A165404 n

end A165404

/-! ## A165404.P12778841683962192988

`record[A109168(3*n+1)%A117960(n+1)]`
-/

namespace A165404.P12778841683962192988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109168 (3 * n + 1)) (A117960 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165404.P12778841683962192988

namespace A165404

/-- `record[A109168(3*n+1)%A117960(n+1)]` -/
def P12778841683962192988.Spec : Prop :=
  ∀ n, P12778841683962192988.a n = A165404 n

end A165404

/-! ## A165404.P3969723645852644821

`record[gcd(n, A343030(A001969(n+1)))]`
-/

namespace A165404.P3969723645852644821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A343030 (A001969 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165404.P3969723645852644821

namespace A165404

/-- `record[gcd(n, A343030(A001969(n+1)))]` -/
def P3969723645852644821.Spec : Prop :=
  ∀ n, (P3969723645852644821.a n : ℤ) = A165404 n

end A165404

/-! ## A165404.P7651448189639132048

`eq[A000120(n), A343030(A000069(n+1))]`
-/

namespace A165404.P7651448189639132048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A000069 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165404.P7651448189639132048

namespace A165404

/-- `eq[A000120(n), A343030(A000069(n+1))]` -/
def P7651448189639132048.Spec : Prop :=
  ∀ n, (P7651448189639132048.a n : ℤ) = A165404 n

end A165404

/-! ## A165404.P4270332206083880600

`record[A009531(A042965(n+1))*A140472(n)]`
-/

namespace A165404.P4270332206083880600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A042965 (n + 1)).toNat * A140472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165404.P4270332206083880600

namespace A165404

/-- `record[A009531(A042965(n+1))*A140472(n)]` -/
def P4270332206083880600.Spec : Prop :=
  ∀ n, P4270332206083880600.a n = A165404 n

end A165404

/-!
# A165405: a(n) = 6*a(n-2) - a(n-1), with a(0)=1, a(1)=3.

The programs for A165405, the canonical program `A165405.P2504148286683008871` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165405 has offset 0).

The definition of A165405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-2)-a(n-1)` (program `A165405.P2504148286683008871`, by `A165405.P2504148286683008871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165405.P17714868149527721210

`ogf((1+4x)/(1+x-6x^2))`
-/

namespace A165405.P17714868149527721210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 1, -6] n

end

end A165405.P17714868149527721210

namespace A165405

/-- `ogf((1+4x)/(1+x-6x^2))` -/
def P17714868149527721210.Spec : Prop :=
  ∀ n, P17714868149527721210.a n = A165405 n

end A165405

/-! ## A165405.P2504148286683008871

`6*a(n-2)-a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165405

/-- `6*a(n-2)-a(n-1)` -/
def P2504148286683008871.Spec : Prop :=
  ∀ n, P2504148286683008871.a n = A165405 n

theorem P2504148286683008871.correct : P2504148286683008871.Spec := by
  intro n
  simp only [A165405]

end A165405

/-! ## A165405.P10265631270984557748

`(6*2^n-(-3)^n)/5`
-/

namespace A165405.P10265631270984557748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 2 ^ n : ℤ) - (-3) ^ n : ℚ) / 5

end

end A165405.P10265631270984557748

namespace A165405

/-- `(6*2^n-(-3)^n)/5` -/
def P10265631270984557748.Spec : Prop :=
  ∀ n, P10265631270984557748.a n = (A165405 n : ℚ)

theorem P10265631270984557748.correct : P10265631270984557748.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165405, Nat.add_sub_cancel, A165405.P10265631270984557748.a, A165405.P2504148286683008871.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165405, Nat.add_sub_cancel, A165405.P10265631270984557748.a, A165405.P2504148286683008871.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165405

/-! ## A165405.P6962294695331953591

`3*(2^n-a(n-1))` with `a(0)=1`
-/

namespace A165405.P6962294695331953591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((2 ^ n : ℤ) - a (n - 1))

end

end A165405.P6962294695331953591

namespace A165405

/-- `3*(2^n-a(n-1))` -/
def P6962294695331953591.Spec : Prop :=
  ∀ n, P6962294695331953591.a n = A165405 n

end A165405

/-! ## A165405.P9319045152016787701

`A091005(n+1)+2^n`
-/

namespace A165405.P9319045152016787701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 (n + 1) + (2 ^ n : ℤ)

end

end A165405.P9319045152016787701

namespace A165405

/-- `A091005(n+1)+2^n` -/
def P9319045152016787701.Spec : Prop :=
  ∀ n, P9319045152016787701.a n = A165405 n

end A165405

/-! ## A165405.P16011280953271127650

`A007283(n)-3*a(n-1)` with `a(0)=1`
-/

namespace A165405.P16011280953271127650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007283 n - 3 * a (n - 1)

end

end A165405.P16011280953271127650

namespace A165405

/-- `A007283(n)-3*a(n-1)` -/
def P16011280953271127650.Spec : Prop :=
  ∀ n, P16011280953271127650.a n = A165405 n

end A165405

/-! ## A165405.P1080447208574338652

`A001045(n+1)+A091005(n+1)+A001045(n)`
-/

namespace A165405.P1080447208574338652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A091005 (n + 1) + A001045 n)

end

end A165405.P1080447208574338652

namespace A165405

/-- `A001045(n+1)+A091005(n+1)+A001045(n)` -/
def P1080447208574338652.Spec : Prop :=
  ∀ n, P1080447208574338652.a n = A165405 n

end A165405

/-! ## A165405.P1910986092697553316

`a(n-1)+a(n-1)+(-3)^(n-1)` with `a(0)=1`
-/

namespace A165405.P1910986092697553316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A165405.P1910986092697553316

namespace A165405

/-- `a(n-1)+a(n-1)+(-3)^(n-1)` -/
def P1910986092697553316.Spec : Prop :=
  ∀ n, P1910986092697553316.a n = (A165405 n : ℚ)

end A165405

/-! ## A165405.P5285404468089265521

`∑[A091004(n)]+2^n`
-/

namespace A165405.P5285404468089265521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ)

end

end A165405.P5285404468089265521

namespace A165405

/-- `∑[A091004(n)]+2^n` -/
def P5285404468089265521.Spec : Prop :=
  ∀ n, P5285404468089265521.a n = A165405 n

end A165405

/-!
# A165406: Sequence A165404 shown in binary, or equivalently, sequence A163901 in quaternary base.

The programs for A165406, the canonical program `A165406.P12134847753010490514` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165406 has offset 0).

The definition of A165406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165406.P12134847753010490514

`A007088(A165404(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A165406

/-- `A007088(A165404(n))` -/
def P12134847753010490514.Spec : Prop :=
  ∀ n, P12134847753010490514.a n = A165406 n

theorem P12134847753010490514.correct : P12134847753010490514.Spec := by
  intro n
  simp only [A165406]

end A165406

/-! ## A165406.P15584849520676630199

`A007088(eq[A063694(n), A265263(n)])`
-/

namespace A165406.P15584849520676630199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A165406.P15584849520676630199

namespace A165406

/-- `A007088(eq[A063694(n), A265263(n)])` -/
def P15584849520676630199.Spec : Prop :=
  ∀ n, P15584849520676630199.a n = A165406 n

end A165406

/-! ## A165406.P16791639152635381450

`A185544(2*A165404(n))`
-/

namespace A165406.P16791639152635381450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A165404 n).toNat

end

end A165406.P16791639152635381450

namespace A165406

/-- `A185544(2*A165404(n))` -/
def P16791639152635381450.Spec : Prop :=
  ∀ n, P16791639152635381450.a n = A165406 n

end A165406

/-! ## A165406.P15599465550270959919

`A007090(A163901(n))`
-/

namespace A165406.P15599465550270959919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A163901 n).toNat

end

end A165406.P15599465550270959919

namespace A165406

/-- `A007090(A163901(n))` -/
def P15599465550270959919.Spec : Prop :=
  ∀ n, P15599465550270959919.a n = A165406 n

end A165406

/-! ## A165406.P17214814042435158737

`A085209(A165403(n))`
-/

namespace A165406.P17214814042435158737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085209 (A165403 n).toNat

end

end A165406.P17214814042435158737

namespace A165406

/-- `A085209(A165403(n))` -/
def P17214814042435158737.Spec : Prop :=
  ∀ n, P17214814042435158737.a n = A165406 n

end A165406

/-!
# A165407: Expansion of 1/(1-x-x^3*c(x^3)), c(x) the g.f. of A000108.

The programs for A165407, the canonical program `A165407.P14231726836039588069` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165407 has offset 0).

The definition of A165407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165407.P14231726836039588069

`A010752(n)+A010752(n)-A010753(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A165407

/-- `A010752(n)+A010752(n)-A010753(n+1)` -/
def P14231726836039588069.Spec : Prop :=
  ∀ n, P14231726836039588069.a n = A165407 n

theorem P14231726836039588069.correct : P14231726836039588069.Spec := by
  intro n
  simp only [A165407]

end A165407

/-! ## A165407.P14380547553974432775

`A004277(A010752(n))-A010753(n+1)`
-/

namespace A165407.P14380547553974432775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A010752 n).toNat - A010753 (n + 1)

end

end A165407.P14380547553974432775

namespace A165407

/-- `A004277(A010752(n))-A010753(n+1)` -/
def P14380547553974432775.Spec : Prop :=
  ∀ n, P14380547553974432775.a n = A165407 n

end A165407

/-! ## A165407.P4560796828144512298

`A194966(A120415(n))`
-/

namespace A165407.P4560796828144512298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194966 (A120415 n).toNat

end

end A165407.P4560796828144512298

namespace A165407

/-- `A194966(A120415(n))` -/
def P4560796828144512298.Spec : Prop :=
  ∀ n, P4560796828144512298.a n = A165407 n

end A165407

/-! ## A165407.P3512128396055368427

`A003004(A206720(n+1))`
-/

namespace A165407.P3512128396055368427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003004 (A206720 (n + 1)).toNat

end

end A165407.P3512128396055368427

namespace A165407

/-- `A003004(A206720(n+1))` -/
def P3512128396055368427.Spec : Prop :=
  ∀ n, P3512128396055368427.a n = A165407 n

end A165407

/-! ## A165407.P10804375529526697418

`or(A025048(n), A040076(A007283(n)))`
-/

namespace A165407.P10804375529526697418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025048 n) (A040076 (A007283 n).toNat)

end

end A165407.P10804375529526697418

namespace A165407

/-- `or(A025048(n), A040076(A007283(n)))` -/
def P10804375529526697418.Spec : Prop :=
  ∀ n, P10804375529526697418.a n = A165407 n

end A165407

/-!
# A165408: An aerated Catalan triangle.

The programs for A165408, there is no canonical definition to state claims against.
-/

/-! ## A165408.P12497771261551031996

`lcm(A006466(A058710(n)), A124304(n))`
-/

namespace A165408.P12497771261551031996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 (A058710 n).toNat) (A124304 n)

end

end A165408.P12497771261551031996

/-! ## A165408.P18067517270844369265

`A115623((A112517(n)*A124305(n))²)`
-/

namespace A165408.P18067517270844369265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 ((A112517 n * A124305 n) ^ 2).toNat

end

end A165408.P18067517270844369265

/-! ## A165408.P18024479766592266872

`A124305(n)%A068662(n+1)`
-/

namespace A165408.P18024479766592266872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124305 n) (A068662 (n + 1))

end

end A165408.P18024479766592266872

/-! ## A165408.P9508974488282436475

`and(A003294(A329739(n)), A124305(n))`
-/

namespace A165408.P9508974488282436475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003294 (A329739 n).toNat) (A124305 n)

end

end A165408.P9508974488282436475

/-! ## A165408.P3709223436611433857

`A092056(A227655(n))*A319797(n)`
-/

namespace A165408.P3709223436611433857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092056 (A227655 n).toNat * A319797 n

end

end A165408.P3709223436611433857

/-!
# A165409: Transform of 2^n by the aerated Catalan triangle A165408.

The programs for A165409, there is no canonical definition to state claims against.
-/

/-! ## A165409.P8664544913170616968

`∑[A243283(A150084(n))]`
-/

namespace A165409.P8664544913170616968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A150084 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165409.P8664544913170616968

/-! ## A165409.P4041829607926178237

`A100196(A149445(n)+A000984(n))`
-/

namespace A165409.P4041829607926178237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A149445 n + A000984 n).toNat

end

end A165409.P4041829607926178237

/-! ## A165409.P14492807438521251443

`A260734(A099425(n)-A002262(n))`
-/

namespace A165409.P14492807438521251443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A099425 n - A002262 n).toNat

end

end A165409.P14492807438521251443

/-!
# A165410: Hankel transform of the transform of 2^n given by A165409.

The programs for A165410, there is no canonical definition to state claims against.
-/

/-! ## A165410.P10627790526046774709

`A010892(n+1)*A179532(n)`
-/

namespace A165410.P10627790526046774709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) * A179532 n

end

end A165410.P10627790526046774709

/-! ## A165410.P8267158439159245797

`A010892(n+1)*A017981(A002378(n))`
-/

namespace A165410.P8267158439159245797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) * A017981 (A002378 n).toNat

end

end A165410.P8267158439159245797

/-! ## A165410.P16695471708480943030

`A053644(A218672(n))*A257076(n+1)`
-/

namespace A165410.P16695471708480943030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A218672 n).toNat * A257076 (n + 1)

end

end A165410.P16695471708480943030

/-!
# A165412: Divisors of 2520.

The programs for A165412, there is no canonical definition to state claims against.
-/

/-! ## A165412.P13582972496223738033

`eq[1, char[A052429(n+1)]]`
-/

namespace A165412.P13582972496223738033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052429 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165412.P13582972496223738033

/-! ## A165412.P18148293216297772200

`record[A032742(A178858(n+1))]`
-/

namespace A165412.P18148293216297772200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A178858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165412.P18148293216297772200

/-! ## A165412.P12185394380291831796

`record[A053165(A178860(n+1))]`
-/

namespace A165412.P12185394380291831796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A178860 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165412.P12185394380291831796

/-! ## A165412.P5785159951196204847

`record[A053165(A178862(n+1))]`
-/

namespace A165412.P5785159951196204847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A178862 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165412.P5785159951196204847

/-! ## A165412.P12561416170517756191

`record[A071785(A178864(n+1))]`
-/

namespace A165412.P12561416170517756191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A178864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165412.P12561416170517756191

/-!
# A165413: a(n) is the number of distinct lengths of runs in the binary representation of n.

The programs for A165413, the canonical program `A165413.P8627523021454813181` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165413 has offset 1).

The definition of A165413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165413.P8627523021454813181

`A001221(A382255(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165413

/-- `A001221(A382255(n+1))` -/
def P8627523021454813181.Spec : Prop :=
  ∀ n, P8627523021454813181.a n = A165413 (n + 1)

theorem P8627523021454813181.correct : P8627523021454813181.Spec := by
  intro n
  simp only [A165413, Nat.add_sub_cancel]

end A165413

/-! ## A165413.P18327655449540814008

`∑{p}[A382255(n+1), A001055(#)]`
-/

namespace A165413.P18327655449540814008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 p

end

end A165413.P18327655449540814008

namespace A165413

/-- `∑{p}[A382255(n+1), A001055(#)]` -/
def P18327655449540814008.Spec : Prop :=
  ∀ n, P18327655449540814008.a n = A165413 (n + 1)

end A165413

/-! ## A165413.P10702126038746608852

`∑{p}[A382255(n+1), A158388(#)]`
-/

namespace A165413.P10702126038746608852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A158388 p

end

end A165413.P10702126038746608852

namespace A165413

/-- `∑{p}[A382255(n+1), A158388(#)]` -/
def P10702126038746608852.Spec : Prop :=
  ∀ n, P10702126038746608852.a n = A165413 (n + 1)

end A165413

/-! ## A165413.P7024433358096133116

`∑{p}[A382255(n+1), A368332(#)]`
-/

namespace A165413.P7024433358096133116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A368332 p

end

end A165413.P7024433358096133116

namespace A165413

/-- `∑{p}[A382255(n+1), A368332(#)]` -/
def P7024433358096133116.Spec : Prop :=
  ∀ n, P7024433358096133116.a n = A165413 (n + 1)

end A165413

/-! ## A165413.P10118622195601578856

`∑{e}[A382255(n+1), A260897(#)]`
-/

namespace A165413.P10118622195601578856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A260897 (Nat.factorization (f1 n).natAbs p)

end

end A165413.P10118622195601578856

namespace A165413

/-- `∑{e}[A382255(n+1), A260897(#)]` -/
def P10118622195601578856.Spec : Prop :=
  ∀ n, P10118622195601578856.a n = A165413 (n + 1)

end A165413

/-! ## A165413.P2959262093086077762

`A297770(A035928(n+1))/2`
-/

namespace A165413.P2959262093086077762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297770 (A035928 (n + 1)).toNat : ℚ) / 2

end

end A165413.P2959262093086077762

namespace A165413

/-- `A297770(A035928(n+1))/2` -/
def P2959262093086077762.Spec : Prop :=
  ∀ n, P2959262093086077762.a n = (A165413 (n + 1) : ℚ)

end A165413

/-! ## A165413.P11946259383430952946

`A334028(A341915(n+1))`
-/

namespace A165413.P11946259383430952946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A341915 (n + 1)).toNat

end

end A165413.P11946259383430952946

namespace A165413

/-- `A334028(A341915(n+1))` -/
def P11946259383430952946.Spec : Prop :=
  ∀ n, P11946259383430952946.a n = A165413 (n + 1)

end A165413

/-! ## A165413.P716015603651799681

`A334028(xor(n+1, ceil(n/2)))`
-/

namespace A165413.P716015603651799681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (Int.xor (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉).toNat

end

end A165413.P716015603651799681

namespace A165413

/-- `A334028(xor(n+1, ceil(n/2)))` -/
def P716015603651799681.Spec : Prop :=
  ∀ n, P716015603651799681.a n = A165413 (n + 1)

end A165413

/-! ## A165413.P13385179704673603492

`A334028(A003188(n+1))`
-/

namespace A165413.P13385179704673603492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A003188 (n + 1)).toNat

end

end A165413.P13385179704673603492

namespace A165413

/-- `A334028(A003188(n+1))` -/
def P13385179704673603492.Spec : Prop :=
  ∀ n, P13385179704673603492.a n = A165413 (n + 1)

end A165413

/-! ## A165413.P18144442023723948142

`A334028(∑[A055975(n+1)])`
-/

namespace A165413.P18144442023723948142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165413.P18144442023723948142

namespace A165413

/-- `A334028(∑[A055975(n+1)])` -/
def P18144442023723948142.Spec : Prop :=
  ∀ n, P18144442023723948142.a n = A165413 (n + 1)

end A165413

/-!
# A165414: a(n) = number of run-lengths that each occur only once in the binary representation of n.

The programs for A165414, the canonical program `A165414.P4170981207766166584` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165414 has offset 1).

The definition of A165414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165414.P4170981207766166584

`A056169(A382255(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A165414

/-- `A056169(A382255(n+1))` -/
def P4170981207766166584.Spec : Prop :=
  ∀ n, P4170981207766166584.a n = A165414 (n + 1)

theorem P4170981207766166584.correct : P4170981207766166584.Spec := by
  intro n
  simp only [A165414, Nat.add_sub_cancel]

end A165414

/-! ## A165414.P1388807912176377058

`A136567(A163755(n+1))`
-/

namespace A165414.P1388807912176377058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136567 (A163755 (n + 1)).toNat

end

end A165414.P1388807912176377058

namespace A165414

/-- `A136567(A163755(n+1))` -/
def P1388807912176377058.Spec : Prop :=
  ∀ n, P1388807912176377058.a n = A165414 (n + 1)

end A165414

/-! ## A165414.P14063157843805846830

`A082061(n+1)%A161916(A094202(n+1))`
-/

namespace A165414.P14063157843805846830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082061 (n + 1)) (A161916 (A094202 (n + 1)).toNat)

end

end A165414.P14063157843805846830

namespace A165414

/-- `A082061(n+1)%A161916(A094202(n+1))` -/
def P14063157843805846830.Spec : Prop :=
  ∀ n, P14063157843805846830.a n = A165414 (n + 1)

end A165414

/-! ## A165414.P11789160928486724161

`A063113(A022096(n))%3`
-/

namespace A165414.P11789160928486724161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063113 (A022096 n).toNat) 3

end

end A165414.P11789160928486724161

namespace A165414

/-- `A063113(A022096(n))%3` -/
def P11789160928486724161.Spec : Prop :=
  ∀ n, P11789160928486724161.a n = A165414 (n + 1)

end A165414

/-! ## A165414.P18279609895211824370

`A000005(A000032(A260116(n)))%3`
-/

namespace A165414.P18279609895211824370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A000032 (A260116 n).toNat).toNat) 3

end

end A165414.P18279609895211824370

namespace A165414

/-- `A000005(A000032(A260116(n)))%3` -/
def P18279609895211824370.Spec : Prop :=
  ∀ n, P18279609895211824370.a n = A165414 (n + 1)

end A165414

/-!
# A165416: Irregular array read by rows: The n-th row contains those distinct positive integers that each, when written in binary, occurs as a substring in binary n.

The programs for A165416, there is no canonical definition to state claims against.
-/

/-! ## A165416.P15607119466098895555

`A119709(lt[0, A119709(n)])`
-/

namespace A165416.P15607119466098895555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A165416.P15607119466098895555

/-! ## A165416.P2008095751301688542

`A119709(eq[1, A057427(A119709(n))])`
-/

namespace A165416.P2008095751301688542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A119709 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165416.P2008095751301688542

/-! ## A165416.P12970724494849117811

`A301983(∑[A333254(A205303(n+1))])`
-/

namespace A165416.P12970724494849117811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (A205303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301983 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165416.P12970724494849117811

/-! ## A165416.P7234680034623556307

`A368313(n+1)-A280750(A222317(n+3))`
-/

namespace A165416.P7234680034623556307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368313 (n + 1) - A280750 (A222317 (n + 3)).toNat

end

end A165416.P7234680034623556307

/-! ## A165416.P13023687593561422146

`A333381(∪[A272919(n+1), A002299(n)])`
-/

namespace A165416.P13023687593561422146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A165416.P13023687593561422146

/-!
# A165420: a(1) = 1, a(2) = 2, a(n) = product of the previous terms for n >= 3.

The programs for A165420, the canonical program `A165420.P14914201466580039293` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165420 has offset 1).

The definition of A165420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165420.P14914201466580039293

`a(n-1)²` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165420

/-- `a(n-1)²` -/
def P14914201466580039293.Spec : Prop :=
  ∀ n, (P14914201466580039293.a n : ℤ) = A165420 (n + 1)

theorem P14914201466580039293.correct : P14914201466580039293.Spec := by
  intro n
  simp only [A165420, Nat.add_sub_cancel]

end A165420

/-! ## A165420.P8994040975538884853

`2^round(2^(n-2))`
-/

namespace A165420.P8994040975538884853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) : ℤ)

end

end A165420.P8994040975538884853

namespace A165420

/-- `2^round(2^(n-2))` -/
def P8994040975538884853.Spec : Prop :=
  ∀ n, P8994040975538884853.a n = (A165420 (n + 1) : ℚ)

end A165420

/-! ## A165420.P16916581277188154792

`abs(a(n-1)^2)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A165420.P16916581277188154792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) ^ 2

end

end A165420.P16916581277188154792

namespace A165420

/-- `abs(a(n-1)^2)` -/
def P16916581277188154792.Spec : Prop :=
  ∀ n, (P16916581277188154792.a n : ℤ) = A165420 (n + 1)

theorem P16916581277188154792.correct : P16916581277188154792.Spec := by
  intro n
  simp only [A165420, Nat.add_sub_cancel, A165420.P16916581277188154792.a, A165420.P14914201466580039293.a, SequenceMachineLib.memo_apply]

end A165420

/-! ## A165420.P5907588031142021738

`floor(a(n-1)^2)` with `a(0)=1, a(1)=2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A165420.P5907588031142021738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) ^ 2

end

end A165420.P5907588031142021738

namespace A165420

/-- `floor(a(n-1)^2)` -/
def P5907588031142021738.Spec : Prop :=
  ∀ n, (P5907588031142021738.a n : ℤ) = A165420 (n + 1)

theorem P5907588031142021738.correct : P5907588031142021738.Spec := by
  intro n
  simp only [A165420, Nat.add_sub_cancel, A165420.P5907588031142021738.a, A165420.P14914201466580039293.a, SequenceMachineLib.memo_apply]

end A165420

/-! ## A165420.P1532920210254394493

`root(a(n-1), 1/2)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A165420.P1532920210254394493
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A165420.P1532920210254394493

namespace A165420

/-- `root(a(n-1), 1/2)` -/
def P1532920210254394493.Spec : Prop :=
  ∀ n, P1532920210254394493.a n = (A165420 (n + 1) : ℝ)

end A165420

/-!
# A165421: a(1) = 1, a(2) = 3, a(n) = product of the previous terms for n >= 3.

The programs for A165421, the canonical program `A165421.P3575044688752436829` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165421 has offset 1).

The definition of A165421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165421.P3575044688752436829

`a(n-1)²` with `a(0)=1, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165421

/-- `a(n-1)²` -/
def P3575044688752436829.Spec : Prop :=
  ∀ n, (P3575044688752436829.a n : ℤ) = A165421 (n + 1)

theorem P3575044688752436829.correct : P3575044688752436829.Spec := by
  intro n
  simp only [A165421, Nat.add_sub_cancel]

end A165421

/-! ## A165421.P12980232526649725749

`3^round(2^(n-2))`
-/

namespace A165421.P12980232526649725749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) : ℤ)

end

end A165421.P12980232526649725749

namespace A165421

/-- `3^round(2^(n-2))` -/
def P12980232526649725749.Spec : Prop :=
  ∀ n, P12980232526649725749.a n = (A165421 (n + 1) : ℚ)

end A165421

/-! ## A165421.P2452479572197570323

`abs(a(n-1)^2)` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A165421.P2452479572197570323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  a (n - 1) ^ 2

end

end A165421.P2452479572197570323

namespace A165421

/-- `abs(a(n-1)^2)` -/
def P2452479572197570323.Spec : Prop :=
  ∀ n, (P2452479572197570323.a n : ℤ) = A165421 (n + 1)

theorem P2452479572197570323.correct : P2452479572197570323.Spec := by
  intro n
  simp only [A165421, Nat.add_sub_cancel, A165421.P2452479572197570323.a, A165421.P3575044688752436829.a, SequenceMachineLib.memo_apply]

end A165421

/-! ## A165421.P2996173468913542295

`floor(a(n-1)^2)` with `a(0)=1, a(1)=3, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A165421.P2996173468913542295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  a (n - 1) ^ 2

end

end A165421.P2996173468913542295

namespace A165421

/-- `floor(a(n-1)^2)` -/
def P2996173468913542295.Spec : Prop :=
  ∀ n, (P2996173468913542295.a n : ℤ) = A165421 (n + 1)

theorem P2996173468913542295.correct : P2996173468913542295.Spec := by
  intro n
  simp only [A165421, Nat.add_sub_cancel, A165421.P2996173468913542295.a, A165421.P3575044688752436829.a, SequenceMachineLib.memo_apply]

end A165421

/-! ## A165421.P1477720319874321159

`root(a(n-1), 1/2)` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A165421.P1477720319874321159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A165421.P1477720319874321159

namespace A165421

/-- `root(a(n-1), 1/2)` -/
def P1477720319874321159.Spec : Prop :=
  ∀ n, P1477720319874321159.a n = (A165421 (n + 1) : ℝ)

end A165421

/-!
# A165422: a(1) = 1, a(2) = 4, a(n) = product of the previous terms for n >= 3.

The programs for A165422, the canonical program `A165422.P9697677643547568299` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165422 has offset 1).

The definition of A165422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165422.P9697677643547568299

`a(n-1)²` with `a(0)=1, a(1)=4, a(2)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165422

/-- `a(n-1)²` -/
def P9697677643547568299.Spec : Prop :=
  ∀ n, (P9697677643547568299.a n : ℤ) = A165422 (n + 1)

theorem P9697677643547568299.correct : P9697677643547568299.Spec := by
  intro n
  simp only [A165422, Nat.add_sub_cancel]

end A165422

/-! ## A165422.P5878048296467399029

`4^round(2^(n-2))`
-/

namespace A165422.P5878048296467399029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) : ℤ)

end

end A165422.P5878048296467399029

namespace A165422

/-- `4^round(2^(n-2))` -/
def P5878048296467399029.Spec : Prop :=
  ∀ n, P5878048296467399029.a n = (A165422 (n + 1) : ℚ)

end A165422

/-! ## A165422.P699378363568747721

`root(a(n-1), 1/2)` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A165422.P699378363568747721
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 4, 4] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A165422.P699378363568747721

namespace A165422

/-- `root(a(n-1), 1/2)` -/
def P699378363568747721.Spec : Prop :=
  ∀ n, P699378363568747721.a n = (A165422 (n + 1) : ℝ)

end A165422

/-! ## A165422.P12870780837759079472

`a(n-1)*a(n-1)` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A165422.P12870780837759079472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4] fun n a =>
  a (n - 1) * a (n - 1)

end

end A165422.P12870780837759079472

namespace A165422

/-- `a(n-1)*a(n-1)` -/
def P12870780837759079472.Spec : Prop :=
  ∀ n, (P12870780837759079472.a n : ℤ) = A165422 (n + 1)

theorem P12870780837759079472.correct : P12870780837759079472.Spec := by
  intro n
  simp only [A165422, Nat.add_sub_cancel, A165422.P12870780837759079472.a, A165422.P9697677643547568299.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A165422

/-! ## A165422.P16557073302140118080

`A165420(n+1)²`
-/

namespace A165422.P16557073302140118080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165420 (n + 1) ^ 2

end

end A165422.P16557073302140118080

namespace A165422

/-- `A165420(n+1)²` -/
def P16557073302140118080.Spec : Prop :=
  ∀ n, P16557073302140118080.a n = A165422 (n + 1)

end A165422

/-!
# A165423: a(1) = 1, a(2) = 5, a(n) = product of the previous terms for n >= 3.

The programs for A165423, the canonical program `A165423.P6543811681993381402` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165423 has offset 1).

The definition of A165423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165423.P6543811681993381402

`a(n-1)²` with `a(0)=1, a(1)=5, a(2)=5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165423

/-- `a(n-1)²` -/
def P6543811681993381402.Spec : Prop :=
  ∀ n, (P6543811681993381402.a n : ℤ) = A165423 (n + 1)

theorem P6543811681993381402.correct : P6543811681993381402.Spec := by
  intro n
  simp only [A165423, Nat.add_sub_cancel]

end A165423

/-! ## A165423.P8207508446874866857

`5^round(2^(n-2))`
-/

namespace A165423.P8207508446874866857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) : ℤ)

end

end A165423.P8207508446874866857

namespace A165423

/-- `5^round(2^(n-2))` -/
def P8207508446874866857.Spec : Prop :=
  ∀ n, P8207508446874866857.a n = (A165423 (n + 1) : ℚ)

end A165423

/-! ## A165423.P8395507219261593941

`root(a(n-1), 1/2)` with `a(0)=1, a(1)=5, a(2)=5`
-/

namespace A165423.P8395507219261593941
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 5, 5] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A165423.P8395507219261593941

namespace A165423

/-- `root(a(n-1), 1/2)` -/
def P8395507219261593941.Spec : Prop :=
  ∀ n, P8395507219261593941.a n = (A165423 (n + 1) : ℝ)

end A165423

/-! ## A165423.P10293548227626090168

`a(n-1)*a(n-1)` with `a(0)=1, a(1)=5, a(2)=5`
-/

namespace A165423.P10293548227626090168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 5] fun n a =>
  a (n - 1) * a (n - 1)

end

end A165423.P10293548227626090168

namespace A165423

/-- `a(n-1)*a(n-1)` -/
def P10293548227626090168.Spec : Prop :=
  ∀ n, (P10293548227626090168.a n : ℤ) = A165423 (n + 1)

theorem P10293548227626090168.correct : P10293548227626090168.Spec := by
  intro n
  simp only [A165423, Nat.add_sub_cancel, A165423.P10293548227626090168.a, A165423.P6543811681993381402.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A165423

/-! ## A165423.P15211045347792264151

`A074872(A056469(n))`
-/

namespace A165423.P15211045347792264151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (A056469 n).toNat

end

end A165423.P15211045347792264151

namespace A165423

/-- `A074872(A056469(n))` -/
def P15211045347792264151.Spec : Prop :=
  ∀ n, P15211045347792264151.a n = A165423 (n + 1)

end A165423

/-!
# A165424: a(1) = 1, a(2) = 6, a(n) = product of the previous terms for n >= 3.

The programs for A165424, the canonical program `A165424.P11596939816453966737` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165424 has offset 1).

The definition of A165424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165424.P11596939816453966737

`a(n-1)²` with `a(0)=1, a(1)=6, a(2)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165424

/-- `a(n-1)²` -/
def P11596939816453966737.Spec : Prop :=
  ∀ n, (P11596939816453966737.a n : ℤ) = A165424 (n + 1)

theorem P11596939816453966737.correct : P11596939816453966737.Spec := by
  intro n
  simp only [A165424, Nat.add_sub_cancel]

end A165424

/-! ## A165424.P18173658629956653290

`6^round(2^(n-2))`
-/

namespace A165424.P18173658629956653290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) : ℤ)

end

end A165424.P18173658629956653290

namespace A165424

/-- `6^round(2^(n-2))` -/
def P18173658629956653290.Spec : Prop :=
  ∀ n, P18173658629956653290.a n = (A165424 (n + 1) : ℚ)

end A165424

/-! ## A165424.P3794960838268287229

`a(n-1)*a(n-1)` with `a(0)=1, a(1)=6, a(2)=6`
-/

namespace A165424.P3794960838268287229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 6] fun n a =>
  a (n - 1) * a (n - 1)

end

end A165424.P3794960838268287229

namespace A165424

/-- `a(n-1)*a(n-1)` -/
def P3794960838268287229.Spec : Prop :=
  ∀ n, (P3794960838268287229.a n : ℤ) = A165424 (n + 1)

theorem P3794960838268287229.correct : P3794960838268287229.Spec := by
  intro n
  simp only [A165424, Nat.add_sub_cancel, A165424.P3794960838268287229.a, A165424.P11596939816453966737.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A165424

/-! ## A165424.P16862098453441945591

`A056452(floor(2^(n-1)))`
-/

namespace A165424.P16862098453441945591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056452 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A165424.P16862098453441945591

namespace A165424

/-- `A056452(floor(2^(n-1)))` -/
def P16862098453441945591.Spec : Prop :=
  ∀ n, P16862098453441945591.a n = A165424 (n + 1)

end A165424

/-! ## A165424.P9709873403546100378

`A000400(round(2^(n-2)))`
-/

namespace A165424.P9709873403546100378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat

end

end A165424.P9709873403546100378

namespace A165424

/-- `A000400(round(2^(n-2)))` -/
def P9709873403546100378.Spec : Prop :=
  ∀ n, P9709873403546100378.a n = A165424 (n + 1)

end A165424

/-!
# A165425: a(1) = 1, a(2) = 7, a(n) = product of the previous terms for n >= 3.

The programs for A165425, the canonical program `A165425.P2223319273232019013` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165425 has offset 1).

The definition of A165425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165425.P2223319273232019013

`a(n-1)²` with `a(0)=1, a(1)=7, a(2)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165425

/-- `a(n-1)²` -/
def P2223319273232019013.Spec : Prop :=
  ∀ n, (P2223319273232019013.a n : ℤ) = A165425 (n + 1)

theorem P2223319273232019013.correct : P2223319273232019013.Spec := by
  intro n
  simp only [A165425, Nat.add_sub_cancel]

end A165425

/-! ## A165425.P3661720467126036026

`7^round(2^(n-2))`
-/

namespace A165425.P3661720467126036026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) : ℤ)

end

end A165425.P3661720467126036026

namespace A165425

/-- `7^round(2^(n-2))` -/
def P3661720467126036026.Spec : Prop :=
  ∀ n, P3661720467126036026.a n = (A165425 (n + 1) : ℚ)

end A165425

/-! ## A165425.P18374551237769323491

`a(n-1)*a(n-1)` with `a(0)=1, a(1)=7, a(2)=7`
-/

namespace A165425.P18374551237769323491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 7] fun n a =>
  a (n - 1) * a (n - 1)

end

end A165425.P18374551237769323491

namespace A165425

/-- `a(n-1)*a(n-1)` -/
def P18374551237769323491.Spec : Prop :=
  ∀ n, (P18374551237769323491.a n : ℤ) = A165425 (n + 1)

theorem P18374551237769323491.correct : P18374551237769323491.Spec := by
  intro n
  simp only [A165425, Nat.add_sub_cancel, A165425.P18374551237769323491.a, A165425.P2223319273232019013.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A165425

/-! ## A165425.P18321438622363661659

`floor(7^ceil(cos(2)+2^(n-2)))`
-/

namespace A165425.P18321438622363661659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ (⌈Real.cos (2 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌉ : ℤ)⌋

end

end A165425.P18321438622363661659

namespace A165425

/-- `floor(7^ceil(cos(2)+2^(n-2)))` -/
def P18321438622363661659.Spec : Prop :=
  ∀ n, P18321438622363661659.a n = A165425 (n + 1)

end A165425

/-! ## A165425.P2459369644445939195

`ceil(7^ceil(cos(2)+2^(n-2)))`
-/

namespace A165425.P2459369644445939195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 : ℚ) ^ (⌈Real.cos (2 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌉ : ℤ)⌉

end

end A165425.P2459369644445939195

namespace A165425

/-- `ceil(7^ceil(cos(2)+2^(n-2)))` -/
def P2459369644445939195.Spec : Prop :=
  ∀ n, P2459369644445939195.a n = A165425 (n + 1)

end A165425

/-!
# A165426: a(1) = 1, a(2) = 8, a(n) = product of the previous terms for n >= 3.

The programs for A165426, the canonical program `A165426.P691840229386890755` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165426 has offset 1).

The definition of A165426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165426.P691840229386890755

`a(n-1)²` with `a(0)=1, a(1)=8, a(2)=8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165426

/-- `a(n-1)²` -/
def P691840229386890755.Spec : Prop :=
  ∀ n, (P691840229386890755.a n : ℤ) = A165426 (n + 1)

theorem P691840229386890755.correct : P691840229386890755.Spec := by
  intro n
  simp only [A165426, Nat.add_sub_cancel]

end A165426

/-! ## A165426.P5348823122729102656

`8^A166444(n)`
-/

namespace A165426.P5348823122729102656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A166444 n : ℤ)

end

end A165426.P5348823122729102656

namespace A165426

/-- `8^A166444(n)` -/
def P5348823122729102656.Spec : Prop :=
  ∀ n, P5348823122729102656.a n = (A165426 (n + 1) : ℚ)

end A165426

/-! ## A165426.P9378901969282650526

`8^round(2^(n-2))`
-/

namespace A165426.P9378901969282650526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) : ℤ)

end

end A165426.P9378901969282650526

namespace A165426

/-- `8^round(2^(n-2))` -/
def P9378901969282650526.Spec : Prop :=
  ∀ n, P9378901969282650526.a n = (A165426 (n + 1) : ℚ)

end A165426

/-! ## A165426.P15382354097292261310

`a(n-1)*a(n-1)` with `a(0)=1, a(1)=8, a(2)=8`
-/

namespace A165426.P15382354097292261310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 8] fun n a =>
  a (n - 1) * a (n - 1)

end

end A165426.P15382354097292261310

namespace A165426

/-- `a(n-1)*a(n-1)` -/
def P15382354097292261310.Spec : Prop :=
  ∀ n, (P15382354097292261310.a n : ℤ) = A165426 (n + 1)

theorem P15382354097292261310.correct : P15382354097292261310.Spec := by
  intro n
  simp only [A165426, Nat.add_sub_cancel, A165426.P15382354097292261310.a, A165426.P691840229386890755.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A165426

/-! ## A165426.P11609216589859461545

`A001018(round(2^(n-2)))`
-/

namespace A165426.P11609216589859461545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat

end

end A165426.P11609216589859461545

namespace A165426

/-- `A001018(round(2^(n-2)))` -/
def P11609216589859461545.Spec : Prop :=
  ∀ n, P11609216589859461545.a n = A165426 (n + 1)

end A165426

/-!
# A165427: a(1) = 1, a(2) = 9, a(n) = product of the previous terms for n >= 3.

The programs for A165427, the canonical program `A165427.P16710732337089192624` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165427 has offset 1).

The definition of A165427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165427.P16710732337089192624

`a(n-1)²` with `a(0)=1, a(1)=9, a(2)=9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165427

/-- `a(n-1)²` -/
def P16710732337089192624.Spec : Prop :=
  ∀ n, (P16710732337089192624.a n : ℤ) = A165427 (n + 1)

theorem P16710732337089192624.correct : P16710732337089192624.Spec := by
  intro n
  simp only [A165427, Nat.add_sub_cancel]

end A165427

/-! ## A165427.P3206121635950018006

`9^round(2^(n-2))`
-/

namespace A165427.P3206121635950018006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) : ℤ)

end

end A165427.P3206121635950018006

namespace A165427

/-- `9^round(2^(n-2))` -/
def P3206121635950018006.Spec : Prop :=
  ∀ n, P3206121635950018006.a n = (A165427 (n + 1) : ℚ)

end A165427

/-! ## A165427.P15061343533926355963

`a(n-1)*a(n-1)` with `a(0)=1, a(1)=9, a(2)=9`
-/

namespace A165427.P15061343533926355963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9, 9] fun n a =>
  a (n - 1) * a (n - 1)

end

end A165427.P15061343533926355963

namespace A165427

/-- `a(n-1)*a(n-1)` -/
def P15061343533926355963.Spec : Prop :=
  ∀ n, (P15061343533926355963.a n : ℤ) = A165427 (n + 1)

theorem P15061343533926355963.correct : P15061343533926355963.Spec := by
  intro n
  simp only [A165427, Nat.add_sub_cancel, A165427.P15061343533926355963.a, A165427.P16710732337089192624.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A165427

/-! ## A165427.P14646133976681412627

`(3^ceil(cos(2)+2^(n-2)))²`
-/

namespace A165427.P14646133976681412627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (⌈Real.cos (2 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ)⌉ : ℤ)) ^ 2

end

end A165427.P14646133976681412627

namespace A165427

/-- `(3^ceil(cos(2)+2^(n-2)))²` -/
def P14646133976681412627.Spec : Prop :=
  ∀ n, P14646133976681412627.a n = (A165427 (n + 1) : ℚ)

end A165427

/-! ## A165427.P2567384320164063796

`(3^floor(2^(n-2)-cos(4)))²`
-/

namespace A165427.P2567384320164063796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (⌊((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ) - Real.cos (4 : ℝ)⌋ : ℤ)) ^ 2

end

end A165427.P2567384320164063796

namespace A165427

/-- `(3^floor(2^(n-2)-cos(4)))²` -/
def P2567384320164063796.Spec : Prop :=
  ∀ n, P2567384320164063796.a n = (A165427 (n + 1) : ℚ)

end A165427

/-!
# A165428: a(1) = 1, a(2) = 10; thereafter a(n) = Product_{1 <= i <= n-1} a(i).

The programs for A165428, the canonical program `A165428.P18204124621015958982` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165428 has offset 1).

The definition of A165428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165428.P18204124621015958982

`a(n-1)²` with `a(0)=1, a(1)=10, a(2)=10`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165428

/-- `a(n-1)²` -/
def P18204124621015958982.Spec : Prop :=
  ∀ n, (P18204124621015958982.a n : ℤ) = A165428 (n + 1)

theorem P18204124621015958982.correct : P18204124621015958982.Spec := by
  intro n
  simp only [A165428, Nat.add_sub_cancel]

end A165428

/-! ## A165428.P17042759322111318560

`10^round(2^(n-2))`
-/

namespace A165428.P17042759322111318560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) : ℤ)

end

end A165428.P17042759322111318560

namespace A165428

/-- `10^round(2^(n-2))` -/
def P17042759322111318560.Spec : Prop :=
  ∀ n, P17042759322111318560.a n = (A165428 (n + 1) : ℚ)

end A165428

/-! ## A165428.P13792019795303385713

`a(n-1)*a(n-1)` with `a(0)=1, a(1)=10, a(2)=10`
-/

namespace A165428.P13792019795303385713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 10] fun n a =>
  a (n - 1) * a (n - 1)

end

end A165428.P13792019795303385713

namespace A165428

/-- `a(n-1)*a(n-1)` -/
def P13792019795303385713.Spec : Prop :=
  ∀ n, (P13792019795303385713.a n : ℤ) = A165428 (n + 1)

theorem P13792019795303385713.correct : P13792019795303385713.Spec := by
  intro n
  simp only [A165428, Nat.add_sub_cancel, A165428.P13792019795303385713.a, A165428.P18204124621015958982.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A165428

/-! ## A165428.P9433894310735510802

`a(n-1)^3/a(n-1)` with `a(0)=1, a(1)=10, a(2)=10`
-/

namespace A165428.P9433894310735510802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 10, 10] fun n a =>
  a (n - 1) ^ 3 / a (n - 1)

end

end A165428.P9433894310735510802

namespace A165428

/-- `a(n-1)^3/a(n-1)` -/
def P9433894310735510802.Spec : Prop :=
  ∀ n, P9433894310735510802.a n = (A165428 (n + 1) : ℚ)

end A165428

/-! ## A165428.P14835826775780343943

`A286508(floor(2^(n-1)))`
-/

namespace A165428.P14835826775780343943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A165428.P14835826775780343943

namespace A165428

/-- `A286508(floor(2^(n-1)))` -/
def P14835826775780343943.Spec : Prop :=
  ∀ n, P14835826775780343943.a n = A165428 (n + 1)

end A165428

/-!
# A165429: 

The programs for A165429, there is no canonical definition to state claims against.
-/

/-! ## A165429.P5198009341749906707

`A080485(n+1)^(n+1)`
-/

namespace A165429.P5198009341749906707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080485 (n + 1) ^ (n + 1)

end

end A165429.P5198009341749906707

/-!
# A165430: Table T(n,m) read by rows: the greatest common unitary divisor of n and m, n >= 1, 1 <= m <= n.

The programs for A165430, there is no canonical definition to state claims against.
-/

/-! ## A165430.P13489955646284015733

`A051173(n+1)/A338797(n+1)`
-/

namespace A165430.P13489955646284015733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / (A338797 (n + 1) : ℚ)

end

end A165430.P13489955646284015733

/-! ## A165430.P15233641085039192523

`A050873(n+1)*A051537(n+1)/A338797(n+1)`
-/

namespace A165430.P15233641085039192523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050873 (n + 1) * A051537 (n + 1) : ℚ) / (A338797 (n + 1) : ℚ)

end

end A165430.P15233641085039192523

/-! ## A165430.P10584046014160164740

`A075362(n+1)/(A050873(n+1)*A338797(n+1))`
-/

namespace A165430.P10584046014160164740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) / (A050873 (n + 1) * A338797 (n + 1) : ℚ)

end

end A165430.P10584046014160164740

/-! ## A165430.P13327438309019534594

`lcm(A123275(n+1), A338797(n+1))/A338797(n+1)`
-/

namespace A165430.P13327438309019534594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A123275 (n + 1)) (A338797 (n + 1)) : ℚ) / (A338797 (n + 1) : ℚ)

end

end A165430.P13327438309019534594

/-! ## A165430.P17151063777960767630

`A225174(A245300(n)+1)`
-/

namespace A165430.P17151063777960767630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225174 (A245300 n + 1).toNat

end

end A165430.P17151063777960767630

/-! ## A165430.P15356206123189742831

`A290103(A087112(n+1))/A338797(n+1)`
-/

namespace A165430.P15356206123189742831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290103 (A087112 (n + 1)).toNat : ℚ) / (A338797 (n + 1) : ℚ)

end

end A165430.P15356206123189742831

/-! ## A165430.P11618241526876275536

`A225174(A286146(n+1)%A258974(n+1))`
-/

namespace A165430.P11618241526876275536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225174 (Int.tmod (A286146 (n + 1)) (A258974 (n + 1))).toNat

end

end A165430.P11618241526876275536

/-! ## A165430.P6433614252071619821

`A225174(A286146(n+1))`
-/

namespace A165430.P6433614252071619821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225174 (A286146 (n + 1)).toNat

end

end A165430.P6433614252071619821

/-! ## A165430.P4828990736193438440

`A004736(A286146(n+1))/A338797(n+1)`
-/

namespace A165430.P4828990736193438440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (A286146 (n + 1)).toNat : ℚ) / (A338797 (n + 1) : ℚ)

end

end A165430.P4828990736193438440

/-!
# A165431: A transform of the central binomial coefficients.

The programs for A165431, there is no canonical definition to state claims against.
-/

/-! ## A165431.P7371321949699009051

`Δ[A008619(A135052(n+1))]`
-/

namespace A165431.P7371321949699009051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A135052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165431.P7371321949699009051

/-! ## A165431.P4668234267168172105

`record[Δ[A103221(A105633(n))]]`
-/

namespace A165431.P4668234267168172105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A105633 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165431.P4668234267168172105

/-!
# A165433: A transform of the double factorial numbers A001147.

The programs for A165433, there is no canonical definition to state claims against.
-/

/-! ## A165433.P11223740254106604528

`A332671(A017988(n))+A113182(n+1)`
-/

namespace A165433.P11223740254106604528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A017988 n).toNat + A113182 (n + 1)

end

end A165433.P11223740254106604528

/-!
# A165434: Number of tri-coverings of a set.

The programs for A165434, there is no canonical definition to state claims against.
-/

/-! ## A165434.P6197462262592652257

`A188392(∑[char[1]+1+n]+2)`
-/

namespace A165434.P6197462262592652257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A165434.P6197462262592652257

/-!
# A165435: Number of quad-coverings of a set.

The programs for A165435, there is no canonical definition to state claims against.
-/

/-! ## A165435.P588250198074070373

`A188392(∑[n+2]+4-A057428(n))`
-/

namespace A165435.P588250198074070373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ) - A057428 n).toNat

end

end A165435.P588250198074070373

/-! ## A165435.P17268255236247401056

`A188392(A167614(n+1)+A057427(n))`
-/

namespace A165435.P17268255236247401056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (A167614 (n + 1) + A057427 n).toNat

end

end A165435.P17268255236247401056

/-! ## A165435.P11528084227502132110

`A188392(A178334(n)+A167614(n+1))`
-/

namespace A165435.P11528084227502132110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (A178334 n + A167614 (n + 1)).toNat

end

end A165435.P11528084227502132110

/-! ## A165435.P11936286822655190064

`A188392(A178489(n)+A167614(n+1))`
-/

namespace A165435.P11936286822655190064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (A178489 n + A167614 (n + 1)).toNat

end

end A165435.P11936286822655190064

/-! ## A165435.P14484537261671432424

`A188392(A347447(n+1)+A167614(n+1))`
-/

namespace A165435.P14484537261671432424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (A347447 (n + 1) + A167614 (n + 1)).toNat

end

end A165435.P14484537261671432424

/-!
# A165436: Number of penta-coverings of a set.

The programs for A165436, there is no canonical definition to state claims against.
-/

/-! ## A165436.P16880879358448790055

`A073491(A002524(∑[n]))`
-/

namespace A165436.P16880879358448790055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (A002524 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A165436.P16880879358448790055

/-!
# A165437: The number of six-fold coverings of a set.

The programs for A165437, there is no canonical definition to state claims against.
-/

/-! ## A165437.P11284863094383206225

`A188392((A155212(n)+13)%A006285(n+1)+1)`
-/

namespace A165437.P11284863094383206225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (Int.tmod (A155212 n + 13) (A006285 (n + 1)) + 1).toNat

end

end A165437.P11284863094383206225

/-!
# A165438: Number a(n) of alternative sets of orthogonal contrasts available to partition variation between n levels of a categorical factor in analysis of variance, with each set described by a unique general linear model.

The programs for A165438, there is no canonical definition to state claims against.
-/

/-! ## A165438.P14220142814966106507

`A193832(A006318(n))+A000035(n)`
-/

namespace A165438.P14220142814966106507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A006318 n).toNat + A000035 n

end

end A165438.P14220142814966106507

/-! ## A165438.P8073370752562586500

`A196564(n)+A193832(A006318(n))`
-/

namespace A165438.P8073370752562586500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n + A193832 (A006318 n).toNat

end

end A165438.P8073370752562586500

/-! ## A165438.P15899317428438759621

`A261366(n)+A074712(A133656(n))`
-/

namespace A165438.P15899317428438759621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 n + A074712 (A133656 n).toNat

end

end A165438.P15899317428438759621

/-! ## A165438.P3953707050595763858

`A038500(A127739(n+1))+A038357(n+3)`
-/

namespace A165438.P3953707050595763858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A127739 (n + 1)).toNat + A038357 (n + 3)

end

end A165438.P3953707050595763858

/-!
# A165439: Primes p such that 3+2*(sum of digits of p) is also a prime.

The programs for A165439, there is no canonical definition to state claims against.
-/

/-! ## A165439.P16612825057192435900

`eq[A003415(n), A067760(A007953(n))]`
-/

namespace A165439.P16612825057192435900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165439.P16612825057192435900

/-! ## A165439.P13595210865582787230

`p?[A232753(∑[n+3])]`
-/

namespace A165439.P13595210865582787230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165439.P13595210865582787230

/-! ## A165439.P13059067583223585351

`A000040(lt[A243343(3*(n+1)), A351876(3*n+2)])`
-/

namespace A165439.P13059067583223585351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243343 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351876 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165439.P13059067583223585351

/-! ## A165439.P5763135902023348457

`record[A000040(n+1)%A213375(3*n+4)]`
-/

namespace A165439.P5763135902023348457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A213375 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165439.P5763135902023348457

/-!
# A165441: Table T(k,n) read by antidiagonals: denominator of 1/min(n,k)^2 -1/max(n,k)^2.

The programs for A165441, there is no canonical definition to state claims against.
-/

/-! ## A165441.P18051395741977308597

`A165727(eq[0, A103451(n)])`
-/

namespace A165441.P18051395741977308597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165441.P18051395741977308597

/-! ## A165441.P17119963556592421648

`A165727(eq[0, A103452(n)])`
-/

namespace A165441.P17119963556592421648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165441.P17119963556592421648

/-! ## A165441.P10609253033414595521

`A165727(eq[0, A158821(n)])`
-/

namespace A165441.P10609253033414595521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165441.P10609253033414595521

/-! ## A165441.P2420745049489172305

`A165727(lt[0, A165727(n)])`
-/

namespace A165441.P2420745049489172305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A165441.P2420745049489172305

/-! ## A165441.P17590360327087353812

`A165727(eq[0, A185911(n+1)])`
-/

namespace A165441.P17590360327087353812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165441.P17590360327087353812

/-! ## A165441.P9598414916010528372

`A165727(A140978(n+1)-n)`
-/

namespace A165441.P9598414916010528372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165727 (A140978 (n + 1) - (n : ℤ)).toNat

end

end A165441.P9598414916010528372

/-! ## A165441.P3420818193696496349

`A165727(2*A014132(n+1)-n)`
-/

namespace A165441.P3420818193696496349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165727 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A165441.P3420818193696496349

/-! ## A165441.P8917409358772779018

`A165727(A014132(A014132(n+1)))`
-/

namespace A165441.P8917409358772779018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165727 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A165441.P8917409358772779018

/-!
# A165443: a(n) = ( 16^(2*n+1) + 81^(2*n+1) )/97.

The programs for A165443, there is no canonical definition to state claims against.
-/

/-! ## A165443.P7292231600155008018

`((4*16^n)²+81^(2*n+1))/97`
-/

namespace A165443.P7292231600155008018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 16 ^ n) ^ 2 + 81 ^ (2 * n + 1) : ℚ) / 97

end

end A165443.P7292231600155008018

/-!
# A165444: Primes obtained from other primes by prefixing a 4.

The programs for A165444, there is no canonical definition to state claims against.
-/

/-! ## A165444.P2768663238832263105

`p?[A080695(A001749(n+1))]`
-/

namespace A165444.P2768663238832263105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (A001749 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165444.P2768663238832263105

/-! ## A165444.P991622789757553723

`p?[A080695(2*A073582(n+1))]`
-/

namespace A165444.P991622789757553723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (2 * A073582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165444.P991622789757553723

/-! ## A165444.P6086113680889330973

`p?[A080695(2*A100484(n+1))]`
-/

namespace A165444.P6086113680889330973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (2 * A100484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165444.P6086113680889330973

/-! ## A165444.P7721174127486792082

`∩[A080695(A001749(n+1)), A227916(n+1)]`
-/

namespace A165444.P7721174127486792082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080695 (A001749 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165444.P7721174127486792082

/-! ## A165444.P10936338255195991040

`p?[A004086(A017317(A004087(n+1)))]`
-/

namespace A165444.P10936338255195991040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A017317 (A004087 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165444.P10936338255195991040

/-!
# A165446: Primes p such that (p reversed)+2 is a prime.

The programs for A165446, there is no canonical definition to state claims against.
-/

/-! ## A165446.P819109967892792344

`p?[A000040(n+1)*A001222(A004087(n+1)+2)]`
-/

namespace A165446.P819109967892792344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A004087 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165446.P819109967892792344

/-! ## A165446.P5569834669844618521

`p?[(A006093(n+1)+1)*A001222(A004087(n+1)+2)]`
-/

namespace A165446.P5569834669844618521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A001222 (A004087 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165446.P5569834669844618521

/-! ## A165446.P12334360774980902207

`A004086(p?[A004087(n+1)+2]-2)`
-/

namespace A165446.P12334360774980902207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2).toNat

end

end A165446.P12334360774980902207

/-! ## A165446.P14810843838725044784

`p?[A000040(n+1)*A002033(A004087(n+1)+1)]`
-/

namespace A165446.P14810843838725044784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A002033 (A004087 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165446.P14810843838725044784

/-! ## A165446.P6976060498464562974

`p?[A002033(A004087(n+1)+1)*A008578(n+2)]`
-/

namespace A165446.P6976060498464562974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A004087 (n + 1) + 1).toNat * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165446.P6976060498464562974

/-!
# A165447: T(n,k) = n^4 - 2*k^2*n^2 + k^4 = A120070(n, k)^2.

The programs for A165447, the canonical program `A165447.P1997826371557217924` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165447 has offset 2).

The definition of A165447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165447.P1997826371557217924

`A120070(n+2)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A165447

/-- `A120070(n+2)²` -/
def P1997826371557217924.Spec : Prop :=
  ∀ n, P1997826371557217924.a n = A165447 (n + 2)

theorem P1997826371557217924.correct : P1997826371557217924.Spec := by
  intro n
  simp only [A165447, Nat.add_sub_cancel]

end A165447

/-! ## A165447.P667439966206688672

`(∑[A133128(n)]+1)²`
-/

namespace A165447.P667439966206688672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A165447.P667439966206688672

namespace A165447

/-- `(∑[A133128(n)]+1)²` -/
def P667439966206688672.Spec : Prop :=
  ∀ n, P667439966206688672.a n = A165447 (n + 2)

end A165447

/-! ## A165447.P13818749453740442408

`(A193974(n)+A049777(n+1))²`
-/

namespace A165447.P13818749453740442408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193974 n + A049777 (n + 1)) ^ 2

end

end A165447.P13818749453740442408

namespace A165447

/-- `(A193974(n)+A049777(n+1))²` -/
def P13818749453740442408.Spec : Prop :=
  ∀ n, P13818749453740442408.a n = A165447 (n + 2)

theorem P13818749453740442408.correct : P13818749453740442408.Spec := by
  intro n
  simp only [A165447, Nat.add_sub_cancel, A165447.P13818749453740442408.a, A165447.P1997826371557217924.a, A049777, A049777.P8069278756495172327.a, A120070, A120070.P8418683465396432844.a, A193974, A193974.P14269232743332111222.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, A131783, A131783.P16711198060458241591.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A165447

/-! ## A165447.P7300851658770973129

`(A063929(n+1)+A003991(n+1))²`
-/

namespace A165447.P7300851658770973129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063929 (n + 1) + A003991 (n + 1)) ^ 2

end

end A165447.P7300851658770973129

namespace A165447

/-- `(A063929(n+1)+A003991(n+1))²` -/
def P7300851658770973129.Spec : Prop :=
  ∀ n, P7300851658770973129.a n = A165447 (n + 2)

end A165447

/-! ## A165447.P6035424333735195186

`(A141429(n+1)+A095833(n+1))²`
-/

namespace A165447.P6035424333735195186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141429 (n + 1) + A095833 (n + 1)) ^ 2

end

end A165447.P6035424333735195186

namespace A165447

/-- `(A141429(n+1)+A095833(n+1))²` -/
def P6035424333735195186.Spec : Prop :=
  ∀ n, P6035424333735195186.a n = A165447 (n + 2)

theorem P6035424333735195186.correct : P6035424333735195186.Spec := by
  intro n
  simp only [A165447, Nat.add_sub_cancel, A165447.P6035424333735195186.a, A165447.P1997826371557217924.a, A095833, A095833.P14663800684524425914.a, A120070, A120070.P8418683465396432844.a, A141429, A141429.P3778980955938111992.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165447

/-! ## A165447.P12716326071177315778

`(A212012(n+1)+A094728(n+1))²`
-/

namespace A165447.P12716326071177315778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212012 (n + 1) + A094728 (n + 1)) ^ 2

end

end A165447.P12716326071177315778

namespace A165447

/-- `(A212012(n+1)+A094728(n+1))²` -/
def P12716326071177315778.Spec : Prop :=
  ∀ n, P12716326071177315778.a n = A165447 (n + 2)

end A165447

/-! ## A165447.P12976268858629983160

`(A004736(n+1)-A205016(n+1))²`
-/

namespace A165447.P12976268858629983160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - A205016 (n + 1)) ^ 2

end

end A165447.P12976268858629983160

namespace A165447

/-- `(A004736(n+1)-A205016(n+1))²` -/
def P12976268858629983160.Spec : Prop :=
  ∀ n, P12976268858629983160.a n = A165447 (n + 2)

end A165447

/-! ## A165447.P10798273049267331140

`(A049777(n+1)-A205136(n+1))²`
-/

namespace A165447.P10798273049267331140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049777 (n + 1) - A205136 (n + 1)) ^ 2

end

end A165447.P10798273049267331140

namespace A165447

/-- `(A049777(n+1)-A205136(n+1))²` -/
def P10798273049267331140.Spec : Prop :=
  ∀ n, P10798273049267331140.a n = A165447 (n + 2)

end A165447

/-! ## A165447.P5760965997997478938

`(A133819(n+1)-A140978(n+1))²`
-/

namespace A165447.P5760965997997478938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133819 (n + 1) - A140978 (n + 1)) ^ 2

end

end A165447.P5760965997997478938

namespace A165447

/-- `(A133819(n+1)-A140978(n+1))²` -/
def P5760965997997478938.Spec : Prop :=
  ∀ n, P5760965997997478938.a n = A165447 (n + 2)

end A165447

/-! ## A165447.P7292228086877969904

`(A063930(n+1)-A001283(n+2))²`
-/

namespace A165447.P7292228086877969904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063930 (n + 1) - A001283 (n + 2)) ^ 2

end

end A165447.P7292228086877969904

namespace A165447

/-- `(A063930(n+1)-A001283(n+2))²` -/
def P7292228086877969904.Spec : Prop :=
  ∀ n, P7292228086877969904.a n = A165447 (n + 2)

end A165447

/-! ## A165447.P7695866161668922877

`(2*A193974(n)-A004736(n+1))²`
-/

namespace A165447.P7695866161668922877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A193974 n - A004736 (n + 1)) ^ 2

end

end A165447.P7695866161668922877

namespace A165447

/-- `(2*A193974(n)-A004736(n+1))²` -/
def P7695866161668922877.Spec : Prop :=
  ∀ n, P7695866161668922877.a n = A165447 (n + 2)

end A165447

/-! ## A165447.P8384917253923253999

`(A002260(n+1)²-A140978(n+1))²`
-/

namespace A165447.P8384917253923253999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) ^ 2 - A140978 (n + 1)) ^ 2

end

end A165447.P8384917253923253999

namespace A165447

/-- `(A002260(n+1)²-A140978(n+1))²` -/
def P8384917253923253999.Spec : Prop :=
  ∀ n, P8384917253923253999.a n = A165447 (n + 2)

end A165447

/-! ## A165447.P1043957352193986610

`(A133819(n+1)-A003057(n+2)²)²`
-/

namespace A165447.P1043957352193986610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133819 (n + 1) - A003057 (n + 2) ^ 2) ^ 2

end

end A165447.P1043957352193986610

namespace A165447

/-- `(A133819(n+1)-A003057(n+2)²)²` -/
def P1043957352193986610.Spec : Prop :=
  ∀ n, P1043957352193986610.a n = A165447 (n + 2)

end A165447

/-! ## A165447.P16990092735673166906

`(sqrt(A133821(n+1))-A140978(n+1))²`
-/

namespace A165447.P16990092735673166906
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A133821 (n + 1) : ℝ) - (A140978 (n + 1) : ℝ)) ^ 2

end

end A165447.P16990092735673166906

namespace A165447

/-- `(sqrt(A133821(n+1))-A140978(n+1))²` -/
def P16990092735673166906.Spec : Prop :=
  ∀ n, P16990092735673166906.a n = (A165447 (n + 2) : ℝ)

end A165447

/-! ## A165447.P4774646831840882153

`(A004736(n+1)+2*A049777(n+1))²`
-/

namespace A165447.P4774646831840882153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + 2 * A049777 (n + 1)) ^ 2

end

end A165447.P4774646831840882153

namespace A165447

/-- `(A004736(n+1)+2*A049777(n+1))²` -/
def P4774646831840882153.Spec : Prop :=
  ∀ n, P4774646831840882153.a n = A165447 (n + 2)

end A165447

/-! ## A165447.P5791060388798762318

`(A055461(n+1)+2*A003991(n+1))²`
-/

namespace A165447.P5791060388798762318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055461 (n + 1) + 2 * A003991 (n + 1)) ^ 2

end

end A165447.P5791060388798762318

namespace A165447

/-- `(A055461(n+1)+2*A003991(n+1))²` -/
def P5791060388798762318.Spec : Prop :=
  ∀ n, P5791060388798762318.a n = A165447 (n + 2)

theorem P5791060388798762318.correct : P5791060388798762318.Spec := by
  intro n
  simp only [A165447, Nat.add_sub_cancel, A165447.P5791060388798762318.a, A165447.P1997826371557217924.a, A003991, A003991.P6365127437582401781.a, A055461, A055461.P13333228572909301680.a, A120070, A120070.P8418683465396432844.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165447

/-! ## A165447.P12372535600248946821

`((A094727(n+1)+2)*A004736(n+1))²`
-/

namespace A165447.P12372535600248946821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A094727 (n + 1) + 2) * A004736 (n + 1)) ^ 2

end

end A165447.P12372535600248946821

namespace A165447

/-- `((A094727(n+1)+2)*A004736(n+1))²` -/
def P12372535600248946821.Spec : Prop :=
  ∀ n, P12372535600248946821.a n = A165447 (n + 2)

end A165447

/-! ## A165447.P4667382266101201100

`(A094728(n+1)+2*A004736(n+1))²`
-/

namespace A165447.P4667382266101201100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094728 (n + 1) + 2 * A004736 (n + 1)) ^ 2

end

end A165447.P4667382266101201100

namespace A165447

/-- `(A094728(n+1)+2*A004736(n+1))²` -/
def P4667382266101201100.Spec : Prop :=
  ∀ n, P4667382266101201100.a n = A165447 (n + 2)

end A165447

/-! ## A165447.P14184137313609922712

`(2*A133819(n+1)-A055096(n+2))²`
-/

namespace A165447.P14184137313609922712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A133819 (n + 1) - A055096 (n + 2)) ^ 2

end

end A165447.P14184137313609922712

namespace A165447

/-- `(2*A133819(n+1)-A055096(n+2))²` -/
def P14184137313609922712.Spec : Prop :=
  ∀ n, P14184137313609922712.a n = A165447 (n + 2)

theorem P14184137313609922712.correct : P14184137313609922712.Spec := by
  intro n
  simp only [A165447, Nat.add_sub_cancel, A165447.P14184137313609922712.a, A165447.P1997826371557217924.a, A055096, A055096.P17819275564351292767.a, A120070, A120070.P8418683465396432844.a, A133819, A133819.P4652954550055324138.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165447

/-! ## A165447.P15424724425430638982

`(2*A140978(n+1)-A055096(n+2))²`
-/

namespace A165447.P15424724425430638982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A140978 (n + 1) - A055096 (n + 2)) ^ 2

end

end A165447.P15424724425430638982

namespace A165447

/-- `(2*A140978(n+1)-A055096(n+2))²` -/
def P15424724425430638982.Spec : Prop :=
  ∀ n, P15424724425430638982.a n = A165447 (n + 2)

end A165447

/-!
# A165448: Product of prime numbers between 2^n+1 and 2^(n+1), inclusive.

The programs for A165448, there is no canonical definition to state claims against.
-/

/-! ## A165448.P3934820464597494444

`A261130(2^n)`
-/

namespace A165448.P3934820464597494444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261130 (2 ^ n)

end

end A165448.P3934820464597494444

/-! ## A165448.P3320526653313297869

`A055773(2^(n+1))`
-/

namespace A165448.P3320526653313297869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (2 ^ (n + 1))

end

end A165448.P3320526653313297869

/-! ## A165448.P7902228974578583299

`A212792(2^(n+1))`
-/

namespace A165448.P7902228974578583299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212792 (2 ^ (n + 1))

end

end A165448.P7902228974578583299

/-! ## A165448.P11869432056402118190

`A068111(a(C(2, n+2))^n)` with `a(0)=2`
-/

namespace A165448.P11869432056402118190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A068111 (a (Nat.choose 2 (n + 2)) ^ n).toNat

end

end A165448.P11869432056402118190

/-!
# A165449: Write the prime numbers in a string: 2357111317192329... (cf. A033308). The sequence gives the first position in the string for natural numbers.

The programs for A165449, there is no canonical definition to state claims against.
-/

/-! ## A165449.P5427916942628494025

`A086048(n+1)-1`
-/

namespace A165449.P5427916942628494025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086048 (n + 1) - 1

end

end A165449.P5427916942628494025

/-! ## A165449.P13768102269561825696

`A229190(n+1)`
-/

namespace A165449.P13768102269561825696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229190 (n + 1)

end

end A165449.P13768102269561825696

/-! ## A165449.P12586288435786829726

`ratio[A229190(n)]*A229190(n)`
-/

namespace A165449.P12586288435786829726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229190 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A229190 n : ℚ)

end

end A165449.P12586288435786829726

/-! ## A165449.P17641238992500010455

`∑[-Δ[A057428(n)*A229190(n)]]`
-/

namespace A165449.P17641238992500010455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A229190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165449.P17641238992500010455

/-! ## A165449.P12511017315776456177

`A130196(3*n)*A229190(Δ[n²]-n)`
-/

namespace A165449.P12511017315776456177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 (3 * n) * A229190 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A165449.P12511017315776456177

/-! ## A165449.P14506141988877423694

`A023443(A086048(n+1))`
-/

namespace A165449.P14506141988877423694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A086048 (n + 1)).toNat

end

end A165449.P14506141988877423694

/-!
# A165450: Sequence gives prime numbers which occur in A033308 ahead of their natural place.

The programs for A165450, there is no canonical definition to state claims against.
-/

/-! ## A165450.P818717462627859451

`A000040(lt[A334590(2*n+3), A334591(n+1)])`
-/

namespace A165450.P818717462627859451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334590 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165450.P818717462627859451

/-!
# A165451: Sum of factorial of digits is prime.

The programs for A165451, there is no canonical definition to state claims against.
-/

/-! ## A165451.P12959907152656587371

`eq[1, ∑{e}[∑{digits}[n, #!], #]]`
-/

namespace A165451.P12959907152656587371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => Nat.factorial x).sum

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165451.P12959907152656587371

/-! ## A165451.P9192042991611004109

`eq[∑{p}[∑{digits}[n, #!], #], ∑{digits}[n, #!]]`
-/

namespace A165451.P9192042991611004109
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => Nat.factorial x).sum

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f5 n)).map fun (x : ℕ) => Nat.factorial x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f4 j) n

end

end A165451.P9192042991611004109

/-! ## A165451.P16150411307592773033

`eq[1, ∑{e}[A061602(n), #]]`
-/

namespace A165451.P16150411307592773033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165451.P16150411307592773033

/-! ## A165451.P6634334342188336360

`∪[A084405(n+1), A358998(n+1)]`
-/

namespace A165451.P6634334342188336360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165451.P6634334342188336360

/-! ## A165451.P16449591634379956980

`A061909(record[A370231(2*n+5)])`
-/

namespace A165451.P16449591634379956980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370231 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165451.P16449591634379956980

/-!
# A165452: Number of connected graphs of odd girth at least 7 with n vertices.

The programs for A165452, there is no canonical definition to state claims against.
-/

/-! ## A165452.P5756624732759193001

`A002635(A000245(n)*A004396(n))`
-/

namespace A165452.P5756624732759193001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A000245 n * A004396 n).toNat

end

end A165452.P5756624732759193001

/-! ## A165452.P5905298776711926682

`A002635(A004396(n)*A033190(n))`
-/

namespace A165452.P5905298776711926682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A004396 n * A033190 n).toNat

end

end A165452.P5905298776711926682

/-! ## A165452.P2688021147314325569

`A002635(A000245(n)*A194640(n))`
-/

namespace A165452.P2688021147314325569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A000245 n * A194640 n).toNat

end

end A165452.P2688021147314325569

/-!
# A165453: Linear interpolation of the sequence that maps an entry of A002378 to the corresponding entry of A006331.

The programs for A165453, the canonical program `A165453.P13560885071597525990` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165453 has offset 0).

The definition of A165453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165453.P13560885071597525990

`A022554(n)+A080344(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A165453

/-- `A022554(n)+A080344(n)` -/
def P13560885071597525990.Spec : Prop :=
  ∀ n, P13560885071597525990.a n = A165453 n

theorem P13560885071597525990.correct : P13560885071597525990.Spec := by
  intro n
  simp only [A165453]

end A165453

/-! ## A165453.P16229968597990939706

`∑[round(sqrt(n))]`
-/

namespace A165453.P16229968597990939706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165453.P16229968597990939706

namespace A165453

/-- `∑[round(sqrt(n))]` -/
def P16229968597990939706.Spec : Prop :=
  ∀ n, P16229968597990939706.a n = A165453 n

end A165453

/-! ## A165453.P15528625954846189582

`round(a(n-1)+sqrt(n))` with `a(0)=0`
-/

namespace A165453.P15528625954846189582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.sqrt (n : ℝ))

end

end A165453.P15528625954846189582

namespace A165453

/-- `round(a(n-1)+sqrt(n))` -/
def P15528625954846189582.Spec : Prop :=
  ∀ n, P15528625954846189582.a n = A165453 n

end A165453

/-! ## A165453.P9687743542264230160

`or(∑[round(n^(1/2))], char[1])`
-/

namespace A165453.P9687743542264230160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ ((1 : ℚ) / 2 : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A165453.P9687743542264230160

namespace A165453

/-- `or(∑[round(n^(1/2))], char[1])` -/
def P9687743542264230160.Spec : Prop :=
  ∀ n, P9687743542264230160.a n = A165453 n

end A165453

/-! ## A165453.P8274212641175733476

`abs(∑[comp[record[(1-n)²]]-n])`
-/

namespace A165453.P8274212641175733476
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A165453.P8274212641175733476

namespace A165453

/-- `abs(∑[comp[record[(1-n)²]]-n])` -/
def P8274212641175733476.Spec : Prop :=
  ∀ n, P8274212641175733476.a n = A165453 n

end A165453

/-! ## A165453.P5656715454556422108

`∑[comp[record[(1-n)²]]]-∑[n]`
-/

namespace A165453.P5656715454556422108
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A165453.P5656715454556422108

namespace A165453

/-- `∑[comp[record[(1-n)²]]]-∑[n]` -/
def P5656715454556422108.Spec : Prop :=
  ∀ n, P5656715454556422108.a n = A165453 n

end A165453

/-! ## A165453.P16460963259230970572

`xor(1, xor(1, ∑[round(n^(1/2))]))`
-/

namespace A165453.P16460963259230970572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ ((1 : ℚ) / 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A165453.P16460963259230970572

namespace A165453

/-- `xor(1, xor(1, ∑[round(n^(1/2))]))` -/
def P16460963259230970572.Spec : Prop :=
  ∀ n, P16460963259230970572.a n = A165453 n

end A165453

/-! ## A165453.P11848964705621454963

`∑[comp[C(n+1, n)²]]-∑[n]`
-/

namespace A165453.P11848964705621454963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A165453.P11848964705621454963

namespace A165453

/-- `∑[comp[C(n+1, n)²]]-∑[n]` -/
def P11848964705621454963.Spec : Prop :=
  ∀ n, P11848964705621454963.a n = A165453 n

end A165453

/-! ## A165453.P709054002162218389

`∑[comp[(n+1)²]%(n+1)]+n`
-/

namespace A165453.P709054002162218389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A165453.P709054002162218389

namespace A165453

/-- `∑[comp[(n+1)²]%(n+1)]+n` -/
def P709054002162218389.Spec : Prop :=
  ∀ n, (P709054002162218389.a n : ℤ) = A165453 n

end A165453

/-! ## A165453.P3986195165355608122

`comp[(n+1)²]+a(n-1)-n` with `a(0)=0`
-/

namespace A165453.P3986195165355608122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (a (n - 1) - (n : ℤ))

end

end A165453.P3986195165355608122

namespace A165453

/-- `comp[(n+1)²]+a(n-1)-n` -/
def P3986195165355608122.Spec : Prop :=
  ∀ n, P3986195165355608122.a n = A165453 n

end A165453

/-! ## A165453.P16184789200722654266

`floor(∑[sqrt(A053187(n))])`
-/

namespace A165453.P16184789200722654266
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053187 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A165453.P16184789200722654266

namespace A165453

/-- `floor(∑[sqrt(A053187(n))])` -/
def P16184789200722654266.Spec : Prop :=
  ∀ n, P16184789200722654266.a n = A165453 n

end A165453

/-! ## A165453.P18027922608066916945

`A000194(n)+a(n-1)` with `a(0)=0`
-/

namespace A165453.P18027922608066916945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000194 n + a (n - 1)

end

end A165453.P18027922608066916945

namespace A165453

/-- `A000194(n)+a(n-1)` -/
def P18027922608066916945.Spec : Prop :=
  ∀ n, P18027922608066916945.a n = A165453 n

end A165453

/-! ## A165453.P631498799722709763

`abs(∑[n-comp[A007318(n)²]])`
-/

namespace A165453.P631498799722709763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A165453.P631498799722709763

namespace A165453

/-- `abs(∑[n-comp[A007318(n)²]])` -/
def P631498799722709763.Spec : Prop :=
  ∀ n, P631498799722709763.a n = A165453 n

end A165453

/-! ## A165453.P7415963822874159203

`a(n-1)+n-A056847(n)` with `a(0)=0`
-/

namespace A165453.P7415963822874159203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A056847 n)

end

end A165453.P7415963822874159203

namespace A165453

/-- `a(n-1)+n-A056847(n)` -/
def P7415963822874159203.Spec : Prop :=
  ∀ n, P7415963822874159203.a n = A165453 n

end A165453

/-! ## A165453.P14905023575039942578

`∑[comp[A005563(n+1)]-n]+n`
-/

namespace A165453.P14905023575039942578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A165453.P14905023575039942578

namespace A165453

/-- `∑[comp[A005563(n+1)]-n]+n` -/
def P14905023575039942578.Spec : Prop :=
  ∀ n, P14905023575039942578.a n = A165453 n

end A165453

/-! ## A165453.P10906719021818281848

`∑[comp[A007318(n+1)²]]-∑[n]`
-/

namespace A165453.P10906719021818281848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A165453.P10906719021818281848

namespace A165453

/-- `∑[comp[A007318(n+1)²]]-∑[n]` -/
def P10906719021818281848.Spec : Prop :=
  ∀ n, P10906719021818281848.a n = A165453 n

end A165453

/-! ## A165453.P17391012692055812783

`∑[∑[char[n²+1+n]]]%A270710(n)`
-/

namespace A165453.P17391012692055812783
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A270710 n)

end

end A165453.P17391012692055812783

namespace A165453

/-- `∑[∑[char[n²+1+n]]]%A270710(n)` -/
def P17391012692055812783.Spec : Prop :=
  ∀ n, P17391012692055812783.a n = A165453 n

end A165453

/-! ## A165453.P16374293002140580590

`∑[A259361(n)]+n-A259361(n)`
-/

namespace A165453.P16374293002140580590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A259361 n)

end

end A165453.P16374293002140580590

namespace A165453

/-- `∑[A259361(n)]+n-A259361(n)` -/
def P16374293002140580590.Spec : Prop :=
  ∀ n, P16374293002140580590.a n = A165453 n

end A165453

/-! ## A165453.P13568426523805713491

`A086849(n+1)-(A000217(n)+A000037(n+1))`
-/

namespace A165453.P13568426523805713491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086849 (n + 1) - (A000217 n + A000037 (n + 1))

end

end A165453.P13568426523805713491

namespace A165453

/-- `A086849(n+1)-(A000217(n)+A000037(n+1))` -/
def P13568426523805713491.Spec : Prop :=
  ∀ n, P13568426523805713491.a n = A165453 n

end A165453

/-! ## A165453.P14324055092059072849

`∑[A000194(n+1)]-A000194(n+1)`
-/

namespace A165453.P14324055092059072849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000194 (n + 1)

end

end A165453.P14324055092059072849

namespace A165453

/-- `∑[A000194(n+1)]-A000194(n+1)` -/
def P14324055092059072849.Spec : Prop :=
  ∀ n, P14324055092059072849.a n = A165453 n

end A165453

/-!
# A165454: Numbers the squares of which are sums of three distinct positive cubes.

The programs for A165454, there is no canonical definition to state claims against.
-/

/-! ## A165454.P4134514753146785675

`sqrt(A112474(n+1))`
-/

namespace A165454.P4134514753146785675
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A112474 (n + 1) : ℝ)

end

end A165454.P4134514753146785675

/-! ## A165454.P4416481282512515156

`root(A112474(n+1), 2)%Δ[A017286(n)]`
-/

namespace A165454.P4416481282512515156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A112474 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (f1 (n + 1) - f1 n)

end

end A165454.P4416481282512515156

/-! ## A165454.P658944861709179441

`floor(root(A112474(n+1), 2))%A036332(n+1)`
-/

namespace A165454.P658944861709179441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A112474 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌋ (A036332 (n + 1))

end

end A165454.P658944861709179441

/-! ## A165454.P2101703291187585768

`root(A112474(n+1), A020639(xor(n, n+1)+1))`
-/

namespace A165454.P2101703291187585768
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A112474 (n + 1) : ℝ) ^ (1 / (A020639 (Nat.xor n (n + 1) + 1) : ℝ))

end

end A165454.P2101703291187585768

/-! ## A165454.P1255509695790428039

`A008486(root(A112474(n+1), 2))/3`
-/

namespace A165454.P1255509695790428039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (SequenceMachineLib.roundAway ((A112474 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat : ℚ) / 3

end

end A165454.P1255509695790428039

/-! ## A165454.P6466542416014853759

`A008706(root(A112474(n+1), 2))/5`
-/

namespace A165454.P6466542416014853759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008706 (SequenceMachineLib.roundAway ((A112474 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat : ℚ) / 5

end

end A165454.P6466542416014853759

/-! ## A165454.P6747182228362423424

`A254667(root(A112474(n+1), 2))`
-/

namespace A165454.P6747182228362423424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.roundAway ((A112474 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A165454.P6747182228362423424

/-! ## A165454.P13397177230375698700

`A047752(A324394(n))+root(A112474(n+1), 2)`
-/

namespace A165454.P13397177230375698700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A047752 (A324394 n).toNat : ℝ) + (A112474 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A165454.P13397177230375698700

/-! ## A165454.P526913640849027791

`A002262(A000217(n))+root(A112474(n+1), 2)`
-/

namespace A165454.P526913640849027791
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002262 (A000217 n).toNat : ℝ) + (A112474 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A165454.P526913640849027791

/-! ## A165454.P15763132029438672258

`root(A112474(n+1), 2)*A014963(A000217(n+5))`
-/

namespace A165454.P15763132029438672258
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A112474 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A014963 (A000217 (n + 5)).toNat : ℝ)

end

end A165454.P15763132029438672258

/-!
# A165455: Primes p such that p^2 is a sum of three distinct positive cubes.

The programs for A165455, there is no canonical definition to state claims against.
-/

/-! ## A165455.P16867641169466491606

`p?[A165454(n+1)]`
-/

namespace A165455.P16867641169466491606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165455.P16867641169466491606

/-! ## A165455.P160046059552650695

`p?[record[A165454(A291766(n))]]`
-/

namespace A165455.P160046059552650695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165455.P160046059552650695

/-! ## A165455.P2911642029497116891

`filter[A165454(n+1), A010051(#)]`
-/

namespace A165455.P2911642029497116891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A165455.P2911642029497116891

/-! ## A165455.P5136789192270212047

`∩[A000040(n+1), A165454(n+1)]`
-/

namespace A165455.P5136789192270212047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P5136789192270212047

/-! ## A165455.P14237755306007530977

`∩[A004139(n+1), A165454(n+1)]`
-/

namespace A165455.P14237755306007530977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P14237755306007530977

/-! ## A165455.P7801963918845108579

`∩[A006005(n+1), A165454(n+1)]`
-/

namespace A165455.P7801963918845108579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P7801963918845108579

/-! ## A165455.P1148432354952824717

`∩[A008578(n+1), A165454(n+1)]`
-/

namespace A165455.P1148432354952824717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P1148432354952824717

/-! ## A165455.P3532854827414005077

`∩[A038672(n+1), A165454(n+1)]`
-/

namespace A165455.P3532854827414005077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P3532854827414005077

/-! ## A165455.P8638457889267211381

`∩[A045319(n+1), A165454(n+1)]`
-/

namespace A165455.P8638457889267211381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P8638457889267211381

/-! ## A165455.P3635698713696222821

`∩[A045344(n+1), A165454(n+1)]`
-/

namespace A165455.P3635698713696222821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P3635698713696222821

/-! ## A165455.P2848337602237863551

`∩[A046022(n+1), A165454(n+1)]`
-/

namespace A165455.P2848337602237863551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P2848337602237863551

/-! ## A165455.P10041133460709126601

`∩[A065091(n+1), A165454(n+1)]`
-/

namespace A165455.P10041133460709126601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P10041133460709126601

/-! ## A165455.P10696199896130545762

`∩[A065376(n+1), A165454(n+1)]`
-/

namespace A165455.P10696199896130545762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P10696199896130545762

/-! ## A165455.P12512733487054125049

`∩[A065396(n+1), A165454(n+1)]`
-/

namespace A165455.P12512733487054125049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P12512733487054125049

/-! ## A165455.P10990952825645517229

`∩[A067126(n+1), A165454(n+1)]`
-/

namespace A165455.P10990952825645517229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P10990952825645517229

/-! ## A165455.P1378797440040431133

`∩[A071621(n+1), A165454(n+1)]`
-/

namespace A165455.P1378797440040431133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P1378797440040431133

/-! ## A165455.P4235235177696178851

`∩[A162788(n+1), A165454(n+1)]`
-/

namespace A165455.P4235235177696178851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165455.P4235235177696178851

/-! ## A165455.P3068902646161936654

`p?[root(A112474(n+1), 2)%A045820(n)]`
-/

namespace A165455.P3068902646161936654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A112474 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A045820 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165455.P3068902646161936654

/-!
# A165457: a(n) = (2*n+1)!*(2*n+3)/3.

The programs for A165457, the canonical program `A165457.P13720265036898358956` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165457 has offset 0).

The definition of A165457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165457.P13720265036898358956

`2*n*(2*n+3)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165457

/-- `2*n*(2*n+3)*a(n-1)` -/
def P13720265036898358956.Spec : Prop :=
  ∀ n, (P13720265036898358956.a n : ℤ) = A165457 n

theorem P13720265036898358956.correct : P13720265036898358956.Spec := by
  intro n
  simp only [A165457]

end A165457

/-! ## A165457.P3164622195986396418

`(2*n+1)!*(2*n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165457.P3164622195986396418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) * (2 * n + 3) : ℚ) / 3

end

end A165457.P3164622195986396418

namespace A165457

/-- `(2*n+1)!*(2*n+3)/3` -/
def P3164622195986396418.Spec : Prop :=
  ∀ n, P3164622195986396418.a n = (A165457 n : ℚ)

end A165457

/-! ## A165457.P3462237982036881818

`∏[∑[8*n]+floor(2/acot(n))]`
-/

namespace A165457.P3462237982036881818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A165457.P3462237982036881818

namespace A165457

/-- `∏[∑[8*n]+floor(2/acot(n))]` -/
def P3462237982036881818.Spec : Prop :=
  ∀ n, P3462237982036881818.a n = A165457 n

end A165457

/-! ## A165457.P795757499208859674

`∏[comp[2*(n+1)]+Δ[n²]²]`
-/

namespace A165457.P795757499208859674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A165457.P795757499208859674

namespace A165457

/-- `∏[comp[2*(n+1)]+Δ[n²]²]` -/
def P795757499208859674.Spec : Prop :=
  ∀ n, P795757499208859674.a n = A165457 n

end A165457

/-! ## A165457.P4027514920900475903

`record[(n+3)*n*a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A165457.P4027514920900475903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n + 3) * (n * f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165457.P4027514920900475903

namespace A165457

/-- `record[(n+3)*n*a(n-2)]` -/
def P4027514920900475903.Spec : Prop :=
  ∀ n, (P4027514920900475903.a n : ℤ) = A165457 n

end A165457

/-!
# A165458: a(0)=1, a(1)=4, a(n) = 12*a(n-2) - a(n-1).

The programs for A165458, the canonical program `A165458.P16353944720379101311` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165458 has offset 0).

The definition of A165458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-2)-a(n-1)` (program `A165458.P16353944720379101311`, by `A165458.P16353944720379101311.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165458.P13469416347800707251

`ogf((1+5x)/(1+x-12x^2))`
-/

namespace A165458.P13469416347800707251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 1, -12] n

end

end A165458.P13469416347800707251

namespace A165458

/-- `ogf((1+5x)/(1+x-12x^2))` -/
def P13469416347800707251.Spec : Prop :=
  ∀ n, P13469416347800707251.a n = A165458 n

end A165458

/-! ## A165458.P16353944720379101311

`12*a(n-2)-a(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165458

/-- `12*a(n-2)-a(n-1)` -/
def P16353944720379101311.Spec : Prop :=
  ∀ n, P16353944720379101311.a n = A165458 n

theorem P16353944720379101311.correct : P16353944720379101311.Spec := by
  intro n
  simp only [A165458]

end A165458

/-! ## A165458.P92484850231058932

`(8*3^n-(-4)^n)/7`
-/

namespace A165458.P92484850231058932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 3 ^ n : ℤ) - (-4) ^ n : ℚ) / 7

end

end A165458.P92484850231058932

namespace A165458

/-- `(8*3^n-(-4)^n)/7` -/
def P92484850231058932.Spec : Prop :=
  ∀ n, P92484850231058932.a n = (A165458 n : ℚ)

theorem P92484850231058932.correct : P92484850231058932.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165458, Nat.add_sub_cancel, A165458.P92484850231058932.a, A165458.P16353944720379101311.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165458, Nat.add_sub_cancel, A165458.P92484850231058932.a, A165458.P16353944720379101311.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165458

/-! ## A165458.P13009589674171728315

`A080923(n+1)-4*a(n-1)` with `a(0)=1`
-/

namespace A165458.P13009589674171728315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080923 (n + 1) - 4 * a (n - 1)

end

end A165458.P13009589674171728315

namespace A165458

/-- `A080923(n+1)-4*a(n-1)` -/
def P13009589674171728315.Spec : Prop :=
  ∀ n, P13009589674171728315.a n = A165458 n

end A165458

/-! ## A165458.P6711957404803540583

`2*2*(A025192(n)-a(n-1))` with `a(0)=1`
-/

namespace A165458.P6711957404803540583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * (A025192 n - a (n - 1)))

end

end A165458.P6711957404803540583

namespace A165458

/-- `2*2*(A025192(n)-a(n-1))` -/
def P6711957404803540583.Spec : Prop :=
  ∀ n, P6711957404803540583.a n = A165458 n

end A165458

/-! ## A165458.P14480801821371134450

`3*a(n-1)-A164111(A004273(n))` with `a(0)=1`
-/

namespace A165458.P14480801821371134450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A164111 (A004273 n).toNat

end

end A165458.P14480801821371134450

namespace A165458

/-- `3*a(n-1)-A164111(A004273(n))` -/
def P14480801821371134450.Spec : Prop :=
  ∀ n, P14480801821371134450.a n = A165458 n

end A165458

/-!
# A165459: Primes p such that the sum of the digits of p^2 is 16.

The programs for A165459, there is no canonical definition to state claims against.
-/

/-! ## A165459.P16070502064302749798

`∩[A061905(n+1), A076503(n+1)]`
-/

namespace A165459.P16070502064302749798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165459.P16070502064302749798

/-! ## A165459.P271923345810490398

`∩[A061905(n+1), A129806(n+1)]`
-/

namespace A165459.P271923345810490398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165459.P271923345810490398

/-! ## A165459.P10522496664780660618

`p?[eq[16, A004159(n)]]`
-/

namespace A165459.P10522496664780660618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165459.P10522496664780660618

/-! ## A165459.P6483110288034383198

`record[A014963(eq[16, A004159(n)])]`
-/

namespace A165459.P6483110288034383198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165459.P6483110288034383198

/-! ## A165459.P15789941684200482446

`record[A020639(eq[16, A004159(n)])]`
-/

namespace A165459.P15789941684200482446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165459.P15789941684200482446

/-!
# A165460: The height at the 1/3 point of Jacobi-bridge, computed for 12n+7. a(n) = Sum_{i=0..(4n+2)} J(i,12n+7), where J(i,m) is the Jacobi symbol.

The programs for A165460, there is no canonical definition to state claims against.
-/

/-! ## A165460.P12587949649145841593

`abs(2*A166050(n))`
-/

namespace A165460.P12587949649145841593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A166050 n|

end

end A165460.P12587949649145841593

/-! ## A165460.P7055178040649885432

`A005843(abs(A166050(n)))`
-/

namespace A165460.P7055178040649885432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 |A166050 n|.toNat

end

end A165460.P7055178040649885432

/-! ## A165460.P2329374851291838322

`A166050(n)+A165605(n)`
-/

namespace A165460.P2329374851291838322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166050 n + A165605 n

end

end A165460.P2329374851291838322

/-! ## A165460.P5363724203274267692

`2*A000196(A166050(n)²)`
-/

namespace A165460.P5363724203274267692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000196 (A166050 n ^ 2).toNat

end

end A165460.P5363724203274267692

/-! ## A165460.P11058296495742765569

`2*gcd(A165601(A165462(n)), A166050(n))`
-/

namespace A165460.P11058296495742765569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A165601 (A165462 n).toNat) (A166050 n)

end

end A165460.P11058296495742765569

/-! ## A165460.P15289058124314772038

`gcd(2*A166050(n), A165605(A165461(n)))`
-/

namespace A165460.P15289058124314772038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A166050 n) (A165605 (A165461 n).toNat)

end

end A165460.P15289058124314772038

/-! ## A165460.P6251445434350653762

`A165605(n)-(A165605(A165461(n))-A166050(n))`
-/

namespace A165460.P6251445434350653762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165605 n - (A165605 (A165461 n).toNat - A166050 n)

end

end A165460.P6251445434350653762

/-!
# A165461: Positions of zeros in A165460.

The programs for A165461, there is no canonical definition to state claims against.
-/

/-! ## A165461.P15879519231263090403

`eq[0, A165605(n)]`
-/

namespace A165461.P15879519231263090403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165461.P15879519231263090403

/-! ## A165461.P7319487840385054949

`eq[0, A166050(n)]`
-/

namespace A165461.P7319487840385054949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166050 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165461.P7319487840385054949

/-! ## A165461.P478487715031967231

`floor(A165462(n)/3)`
-/

namespace A165461.P478487715031967231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165462 n : ℚ) / 3⌋

end

end A165461.P478487715031967231

/-! ## A165461.P15935889287650899404

`floor(A165463(n)/12)`
-/

namespace A165461.P15935889287650899404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165463 n : ℚ) / 12⌋

end

end A165461.P15935889287650899404

/-! ## A165461.P13236691193295942934

`eq[0, A165460(n)]`
-/

namespace A165461.P13236691193295942934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165461.P13236691193295942934

/-! ## A165461.P14059492714407538170

`lt[A165460(n), A166050(n)+1]`
-/

namespace A165461.P14059492714407538170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165460 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166050 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165461.P14059492714407538170

/-! ## A165461.P3674627768675101807

`A002264(A165462(n))`
-/

namespace A165461.P3674627768675101807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A165462 n).toNat

end

end A165461.P3674627768675101807

/-!
# A165462: a(n) = (A165463(n)-3)/4.

The programs for A165462, there is no canonical definition to state claims against.
-/

/-! ## A165462.P16603182353328888843

`(A165463(n)-3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165462.P16603182353328888843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165463 n - 3 : ℚ) / 4

end

end A165462.P16603182353328888843

/-! ## A165462.P13399315905792824823

`floor(A165463(n)/4)`
-/

namespace A165462.P13399315905792824823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165463 n : ℚ) / 4⌋

end

end A165462.P13399315905792824823

/-! ## A165462.P5990114371527577875

`3*A165461(n)+1`
-/

namespace A165462.P5990114371527577875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A165461 n + 1

end

end A165462.P5990114371527577875

/-! ## A165462.P13328260775259439123

`A016777(A165461(n))`
-/

namespace A165462.P13328260775259439123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A165461 n).toNat

end

end A165462.P13328260775259439123

/-! ## A165462.P18145299101237835894

`∩[A016777(n), A165602(n)]`
-/

namespace A165462.P18145299101237835894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165462.P18145299101237835894

/-! ## A165462.P12439681785857397372

`∩[A112414(n), A165602(n)]`
-/

namespace A165462.P12439681785857397372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165462.P12439681785857397372

/-! ## A165462.P12403672901077775899

`∩[A033627(n+1), A165602(n)]`
-/

namespace A165462.P12403672901077775899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165462.P12403672901077775899

/-! ## A165462.P13681519278357440808

`∩[A075683(n+1), A165602(n)]`
-/

namespace A165462.P13681519278357440808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165462.P13681519278357440808

/-! ## A165462.P7866847384678338691

`∩[A086822(n+1), A165602(n)]`
-/

namespace A165462.P7866847384678338691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165462.P7866847384678338691

/-! ## A165462.P5543075519008508914

`∩[A234429(n+1), A165602(n)]`
-/

namespace A165462.P5543075519008508914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165462.P5543075519008508914

/-! ## A165462.P7715143288787896704

`A165461(n)+A004273(A165461(n)+1)`
-/

namespace A165462.P7715143288787896704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165461 n + A004273 (A165461 n + 1).toNat

end

end A165462.P7715143288787896704

/-! ## A165462.P2810245269582374395

`A016789(A165461(n))-A047726(A047726(n+1))`
-/

namespace A165462.P2810245269582374395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A165461 n).toNat - A047726 (A047726 (n + 1)).toNat

end

end A165462.P2810245269582374395

/-! ## A165462.P40302074777015266

`A016789(A165461(n))-A293227(A067161(n+1))`
-/

namespace A165462.P40302074777015266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A165461 n).toNat - A293227 (A067161 (n + 1)).toNat

end

end A165462.P40302074777015266

/-! ## A165462.P11673546706449626105

`A016789(2*A165461(n))/2`
-/

namespace A165462.P11673546706449626105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016789 (2 * A165461 n).toNat : ℚ) / 2

end

end A165462.P11673546706449626105

/-! ## A165462.P6538645128897303495

`A001651(A004273(A165461(n)+1))`
-/

namespace A165462.P6538645128897303495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A004273 (A165461 n + 1).toNat).toNat

end

end A165462.P6538645128897303495

/-! ## A165462.P16932151338058791522

`A001651(A141310(2*A165461(n)))`
-/

namespace A165462.P16932151338058791522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A141310 (2 * A165461 n).toNat).toNat

end

end A165462.P16932151338058791522

/-! ## A165462.P9306107896857256803

`A001651(A165461(n)+A165461(n)+1)`
-/

namespace A165462.P9306107896857256803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A165461 n + (A165461 n + 1)).toNat

end

end A165462.P9306107896857256803

/-!
# A165463: Numbers of the form 12n+7 for which Sum_{i=0..(4n+2)} J(i,12n+7) = 0, where J(i,m) is the Jacobi symbol.

The programs for A165463, there is no canonical definition to state claims against.
-/

/-! ## A165463.P5433388176991534926

`4*A165462(n)+3`
-/

namespace A165463.P5433388176991534926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165462 n + 3

end

end A165463.P5433388176991534926

/-! ## A165463.P16410793468192368514

`12*A165461(n)+7`
-/

namespace A165463.P16410793468192368514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A165461 n + 7

end

end A165463.P16410793468192368514

/-! ## A165463.P5214568614346776457

`A017605(A165461(n))`
-/

namespace A165463.P5214568614346776457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (A165461 n).toNat

end

end A165463.P5214568614346776457

/-! ## A165463.P7115598094428867477

`∩[A017605(n), A165603(n)]`
-/

namespace A165463.P7115598094428867477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165463.P7115598094428867477

/-! ## A165463.P14238776974275062238

`filter[A165603(n), A373977(#)]`
-/

namespace A165463.P14238776974275062238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A165463.P14238776974275062238

/-! ## A165463.P1843189817873446698

`∩[A091300(n+1), A165603(n)]`
-/

namespace A165463.P1843189817873446698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165463.P1843189817873446698

/-! ## A165463.P14511821067860237684

`A016825(A165462(n))+1`
-/

namespace A165463.P14511821067860237684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A165462 n).toNat + 1

end

end A165463.P14511821067860237684

/-! ## A165463.P10324315713704568957

`or(A016825(A165462(n)), A262681(n))`
-/

namespace A165463.P10324315713704568957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016825 (A165462 n).toNat) (A262681 n)

end

end A165463.P10324315713704568957

/-! ## A165463.P6132324977669845539

`or(A016825(A165462(n)), A304042(n))`
-/

namespace A165463.P6132324977669845539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016825 (A165462 n).toNat) (A304042 n)

end

end A165463.P6132324977669845539

/-! ## A165463.P11037121428292998827

`A004767(A165462(n))`
-/

namespace A165463.P11037121428292998827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A165462 n).toNat

end

end A165463.P11037121428292998827

/-! ## A165463.P437324925186012587

`A016789(A165461(n))+A016789(A165462(n))`
-/

namespace A165463.P437324925186012587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A165461 n).toNat + A016789 (A165462 n).toNat

end

end A165463.P437324925186012587

/-!
# A165464: Squared distance between n's location in A163334 array and A163357 array.

The programs for A165464, there is no canonical definition to state claims against.
-/

/-! ## A165464.P2006713292904085351

`A000290(abs(A163529(n)-A059252(n)))+A000290(abs(A163528(n)-A059253(n)))`
-/

namespace A165464.P2006713292904085351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 |A163529 n - A059252 n|.toNat + A000290 |A163528 n - A059253 n|.toNat

end

end A165464.P2006713292904085351

/-! ## A165464.P17098775558856150005

`(A059252(n)-A163529(n))²+(A059253(n)-A163528(n))²`
-/

namespace A165464.P17098775558856150005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059252 n - A163529 n) ^ 2 + (A059253 n - A163528 n) ^ 2

end

end A165464.P17098775558856150005

/-!
# A165466: Squared distance between n's location in A163334 array and A163359 array.

The programs for A165466, there is no canonical definition to state claims against.
-/

/-! ## A165466.P10499520025945589734

`A000290(abs(A163529(n)-A059253(n)))+A000290(abs(A163528(n)-A059252(n)))`
-/

namespace A165466.P10499520025945589734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 |A163529 n - A059253 n|.toNat + A000290 |A163528 n - A059252 n|.toNat

end

end A165466.P10499520025945589734

/-! ## A165466.P8273287450947267704

`(A059253(n)-A163529(n))²+(A059252(n)-A163528(n))²`
-/

namespace A165466.P8273287450947267704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059253 n - A163529 n) ^ 2 + (A059252 n - A163528 n) ^ 2

end

end A165466.P8273287450947267704

/-!
# A165467: Positions of zeros in A165466. Fixed points of A166043/A166044.

The programs for A165467, there is no canonical definition to state claims against.
-/

/-! ## A165467.P6500616661106472253

`eq[n, A166043(n)]`
-/

namespace A165467.P6500616661106472253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165467.P6500616661106472253

/-!
# A165468: a(n) = (A165469(n)-3)/4.

The programs for A165468, there is no canonical definition to state claims against.
-/

/-! ## A165468.P14254369440659412423

`(A165469(n+1)-3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165468.P14254369440659412423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165469 (n + 1) - 3 : ℚ) / 4

end

end A165468.P14254369440659412423

/-! ## A165468.P10153651809365358610

`eq[1, A166086(n)]`
-/

namespace A165468.P10153651809365358610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165468.P10153651809365358610

/-! ## A165468.P10298439379052578343

`eq[1, A166040(2*n+1)]`
-/

namespace A165468.P10298439379052578343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165468.P10298439379052578343

/-! ## A165468.P9439640362471291406

`eq[1, A166040(n+1+n)²]`
-/

namespace A165468.P9439640362471291406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (n + 1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165468.P9439640362471291406

/-! ## A165468.P12887009691286984135

`eq[1, A166040(n+1)]/2`
-/

namespace A165468.P12887009691286984135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A165468.P12887009691286984135

/-! ## A165468.P11082293782698655709

`A004526(eq[1, A166040(n)])`
-/

namespace A165468.P11082293782698655709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165468.P11082293782698655709

/-! ## A165468.P6636930540174690428

`A057979(eq[1, A166040(n)])`
-/

namespace A165468.P6636930540174690428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165468.P6636930540174690428

/-! ## A165468.P14983587510771115156

`A002265(A165469(n+1))`
-/

namespace A165468.P14983587510771115156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A165469 (n + 1)).toNat

end

end A165468.P14983587510771115156

/-! ## A165468.P13399814868964299165

`A166091(∑[n])`
-/

namespace A165468.P13399814868964299165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166091 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165468.P13399814868964299165

/-! ## A165468.P2054326108179365434

`floor(A166092(∑[n])/4)`
-/

namespace A165468.P2054326108179365434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166092 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4⌋

end

end A165468.P2054326108179365434

/-! ## A165468.P3837995771057165484

`A002265(A166092(∑[n]))`
-/

namespace A165468.P3837995771057165484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A166092 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A165468.P3837995771057165484

/-!
# A165469: Numbers of the form 4n+3 for which Sum_{i=1..u} J(i,4n+3) is never zero for any u in range [1,(2n+1)], where J(i,m) is the Jacobi symbol.

The programs for A165469, there is no canonical definition to state claims against.
-/

/-! ## A165469.P11306533183062663215

`record[(4*n+3)/A166086(n)]`
-/

namespace A165469.P11306533183062663215
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℚ) / (A166086 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165469.P11306533183062663215

/-! ## A165469.P17763832788236452055

`4*A165468(n+1)+3`
-/

namespace A165469.P17763832788236452055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165468 (n + 1) + 3

end

end A165469.P17763832788236452055

/-! ## A165469.P11932461630082444625

`A004767(A165468(n+1))`
-/

namespace A165469.P11932461630082444625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A165468 (n + 1)).toNat

end

end A165469.P11932461630082444625

/-! ## A165469.P10282860918761969220

`A004767(eq[1, A166086(n)])`
-/

namespace A165469.P10282860918761969220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165469.P10282860918761969220

/-! ## A165469.P12667577454989622581

`A005408(eq[1, A166040(n)])`
-/

namespace A165469.P12667577454989622581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A165469.P12667577454989622581

/-! ## A165469.P8996518668176793893

`A166092(∑[n])`
-/

namespace A165469.P8996518668176793893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166092 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165469.P8996518668176793893

/-! ## A165469.P8224286963569223668

`4*A166091(∑[n])+3`
-/

namespace A165469.P8224286963569223668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A166091 (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A165469.P8224286963569223668

/-! ## A165469.P5843349244688098231

`or(1, A166092(C(n+1, 2)))`
-/

namespace A165469.P5843349244688098231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A166092 (Nat.choose (n + 1) 2))

end

end A165469.P5843349244688098231

/-! ## A165469.P15167069686220138127

`and(-1, A166092(n-Δ[-C(n, 3)]))`
-/

namespace A165469.P15167069686220138127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A166092 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat)

end

end A165469.P15167069686220138127

/-! ## A165469.P12329683604883294089

`A004767(A166091(∑[n]))`
-/

namespace A165469.P12329683604883294089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A166091 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A165469.P12329683604883294089

/-!
# A165470: a(0)=1, a(1)=5, a(n) = 20*a(n-2) - a(n-1).

The programs for A165470, the canonical program `A165470.P7896530459276382546` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165470 has offset 0).

The definition of A165470 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-2)-a(n-1)` (program `A165470.P7896530459276382546`, by `A165470.P7896530459276382546.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165470.P17964972450192714421

`ogf((1+6x)/(1+x-20x^2))`
-/

namespace A165470.P17964972450192714421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, 1, -20] n

end

end A165470.P17964972450192714421

namespace A165470

/-- `ogf((1+6x)/(1+x-20x^2))` -/
def P17964972450192714421.Spec : Prop :=
  ∀ n, P17964972450192714421.a n = A165470 n

end A165470

/-! ## A165470.P7896530459276382546

`20*a(n-2)-a(n-1)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165470

/-- `20*a(n-2)-a(n-1)` -/
def P7896530459276382546.Spec : Prop :=
  ∀ n, P7896530459276382546.a n = A165470 n

theorem P7896530459276382546.correct : P7896530459276382546.Spec := by
  intro n
  simp only [A165470]

end A165470

/-! ## A165470.P11163773991173692444

`(10*4^n-(-5)^n)/9`
-/

namespace A165470.P11163773991173692444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * 4 ^ n : ℤ) - (-5) ^ n : ℚ) / 9

end

end A165470.P11163773991173692444

namespace A165470

/-- `(10*4^n-(-5)^n)/9` -/
def P11163773991173692444.Spec : Prop :=
  ∀ n, P11163773991173692444.a n = (A165470 n : ℚ)

theorem P11163773991173692444.correct : P11163773991173692444.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165470, Nat.add_sub_cancel, A165470.P11163773991173692444.a, A165470.P7896530459276382546.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165470, Nat.add_sub_cancel, A165470.P11163773991173692444.a, A165470.P7896530459276382546.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165470

/-! ## A165470.P14172824096047307939

`5*(4^n/2-a(n-1))` with `a(0)=1`
-/

namespace A165470.P14172824096047307939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * ((4 ^ n : ℚ) / 2 - a (n - 1))

end

end A165470.P14172824096047307939

namespace A165470

/-- `5*(4^n/2-a(n-1))` -/
def P14172824096047307939.Spec : Prop :=
  ∀ n, P14172824096047307939.a n = (A165470 n : ℚ)

end A165470

/-! ## A165470.P15060496928014258885

`A146523(2*n)-5*a(n-1)` with `a(0)=1`
-/

namespace A165470.P15060496928014258885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146523 (2 * n) - 5 * a (n - 1)

end

end A165470.P15060496928014258885

namespace A165470

/-- `A146523(2*n)-5*a(n-1)` -/
def P15060496928014258885.Spec : Prop :=
  ∀ n, P15060496928014258885.a n = A165470 n

end A165470

/-! ## A165470.P4392750289680591075

`A056486(A005843(n))-5*a(n-1)` with `a(0)=1`
-/

namespace A165470.P4392750289680591075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056486 (A005843 n).toNat - 5 * a (n - 1)

end

end A165470.P4392750289680591075

namespace A165470

/-- `A056486(A005843(n))-5*a(n-1)` -/
def P4392750289680591075.Spec : Prop :=
  ∀ n, P4392750289680591075.a n = A165470 n

end A165470

/-!
# A165471: Legendre symbol (n,65537).

The programs for A165471, there is no canonical definition to state claims against.
-/

/-! ## A165471.P15332321559194084776

`Δ[A165472(floor(n²/(n+1)))]`
-/

namespace A165471.P15332321559194084776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165471.P15332321559194084776

/-! ## A165471.P16765768301842311969

`or(-char[A136806(n+1)], A057427(n))`
-/

namespace A165471.P16765768301842311969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136806 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (A057427 n)

end

end A165471.P16765768301842311969

/-! ## A165471.P1825495038292310750

`A165472(n)-A165472(A028310(n)-1)`
-/

namespace A165471.P1825495038292310750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 n - A165472 (A028310 n - 1).toNat

end

end A165471.P1825495038292310750

/-! ## A165471.P8411808174773938727

`A165472(n)-A165472(n-A057427(n))`
-/

namespace A165471.P8411808174773938727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 n - A165472 ((n : ℤ) - A057427 n).toNat

end

end A165471.P8411808174773938727

/-! ## A165471.P10391589518242721458

`A165472(n)-A165472(A005843(n)%(n+1))`
-/

namespace A165471.P10391589518242721458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 n - A165472 (Int.tmod (A005843 n) (n + 1 : ℤ)).toNat

end

end A165471.P10391589518242721458

/-! ## A165471.P12221255018498584255

`A165472(n)-A165472(log2(A011782(n)))`
-/

namespace A165471.P12221255018498584255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 n - A165472 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A165471.P12221255018498584255

/-!
# A165472: Partial sums of A165471.

The programs for A165472, there is no canonical definition to state claims against.
-/

/-! ## A165472.P4495549258735645778

`∑[A165471(n)]`
-/

namespace A165472.P4495549258735645778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165472.P4495549258735645778

/-! ## A165472.P10533944522849979639

`log(∏[exp(A165471(2*n))])`
-/

namespace A165472.P10533944522849979639
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A165471 (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A165472.P10533944522849979639

/-! ## A165472.P1271107070181654060

`a(n-1)-A165471(3*n)` with `a(0)=0`
-/

namespace A165472.P1271107070181654060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A165471 (3 * n)

end

end A165472.P1271107070181654060

/-! ## A165472.P2745924137298796791

`A165471(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A165472.P2745924137298796791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165471 (n + n) + a (n - 1)

end

end A165472.P2745924137298796791

/-! ## A165472.P9501719588962072535

`∑[or(-char[A136806(n+1)], A057427(n))]`
-/

namespace A165472.P9501719588962072535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136806 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (A057427 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165472.P9501719588962072535

/-!
# A165473: Positions of zeros in A165472.

The programs for A165473, there is no canonical definition to state claims against.
-/

/-! ## A165473.P11654930865794208777

`record[gcd(n, A165472(n))-A165472(n)]`
-/

namespace A165473.P11654930865794208777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A165472 n) : ℤ) - A165472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165473.P11654930865794208777

/-! ## A165473.P18115437063731989018

`eq[0, A165472(n)]`
-/

namespace A165473.P18115437063731989018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165473.P18115437063731989018

/-! ## A165473.P8838366492336941462

`eq[0, A165486(n)]`
-/

namespace A165473.P8838366492336941462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165473.P8838366492336941462

/-! ## A165473.P653412549972543325

`eq[1, a(n-1)-A165471(n)]` with `a(0)=1`
-/

namespace A165473.P653412549972543325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - A165471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165473.P653412549972543325

/-! ## A165473.P9976242038508310800

`lt[A165472(n)², 1]*A057427(n)`
-/

namespace A165473.P9976242038508310800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) * A057427 n

end

end A165473.P9976242038508310800

/-! ## A165473.P13917653103342514755

`lt[abs(∑[A165471(n)]), 1]`
-/

namespace A165473.P13917653103342514755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A165473.P13917653103342514755

/-! ## A165473.P2108344500390986084

`lt[A165472(n)², A059841(n)]`
-/

namespace A165473.P2108344500390986084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165473.P2108344500390986084

/-! ## A165473.P3558766042247995714

`lt[A057427(n), acot(A165472(n))]`
-/

namespace A165473.P3558766042247995714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A165472 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A165473.P3558766042247995714

/-! ## A165473.P17496522214887400626

`lt[A030102(A165472(n)²+1), 2]`
-/

namespace A165473.P17496522214887400626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A165472 n ^ 2 + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A165473.P17496522214887400626

/-! ## A165473.P16690759812151352547

`eq[∑[A165471(n+1)], A165471(n+1)]`
-/

namespace A165473.P16690759812151352547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A165473.P16690759812151352547

/-!
# A165474: a(n) = Least i in range [A165473(n),A165473(n+1)] for which abs(A165472(i)) gets the maximum value in that range.

The programs for A165474, there is no canonical definition to state claims against.
-/

/-! ## A165474.P13725635851231217207

`∑[p?[A283556(A283528(3*n+1))]]`
-/

namespace A165474.P13725635851231217207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283556 (A283528 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165474.P13725635851231217207

/-!
# A165475: A maximum absolute value of A165472 in range [A165473(n),A165473(n+1)].

The programs for A165475, there is no canonical definition to state claims against.
-/

/-! ## A165475.P18077241537665462313

`A165472(A165474(n))`
-/

namespace A165475.P18077241537665462313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 (A165474 n).toNat

end

end A165475.P18077241537665462313

/-!
# A165476: Legendre symbol (n,131071).

The programs for A165476, there is no canonical definition to state claims against.
-/

/-! ## A165476.P17199737287662280926

`Δ[A165477(floor(n*n/(n+1)))]`
-/

namespace A165476.P17199737287662280926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 ⌊(n : ℚ) * ((n : ℚ) / (n + 1 : ℚ))⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165476.P17199737287662280926

/-! ## A165476.P315556409088519251

`A165477(2*n)-A165477(comp[2*(n+1)])`
-/

namespace A165476.P315556409088519251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (2 * n) - A165477 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A165476.P315556409088519251

/-! ## A165476.P18102596839492794641

`A165481(A000578(n))*A165581(n)`
-/

namespace A165476.P18102596839492794641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165481 (A000578 n).toNat * A165581 n

end

end A165476.P18102596839492794641

/-! ## A165476.P369667086825737583

`A165481(n)*A165581(A132314(n)/2)`
-/

namespace A165476.P369667086825737583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165481 n * A165581 (SequenceMachineLib.roundAway ((A132314 n : ℚ) / 2)).toNat

end

end A165476.P369667086825737583

/-! ## A165476.P10262897676935436829

`A165481(n)*A165581(A132314(n))`
-/

namespace A165476.P10262897676935436829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165481 n * A165581 (A132314 n).toNat

end

end A165476.P10262897676935436829

/-!
# A165477: Partial sums of A165476.

The programs for A165477, there is no canonical definition to state claims against.
-/

/-! ## A165477.P2512854599294721241

`sqrt(A165487(n))`
-/

namespace A165477.P2512854599294721241
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165487 n : ℝ)

end

end A165477.P2512854599294721241

/-! ## A165477.P4796924408343633328

`∑[A165476(n)]`
-/

namespace A165477.P4796924408343633328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165477.P4796924408343633328

/-! ## A165477.P14417832007599467961

`A165476(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A165477.P14417832007599467961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165476 (n + n) + a (n - 1)

end

end A165477.P14417832007599467961

/-! ## A165477.P18430994663110284392

`A165487(n)^(A165476(A165487(n+1))/2)`
-/

namespace A165477.P18430994663110284392
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A165487 n : ℝ) ^ ((A165476 (A165487 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A165477.P18430994663110284392

/-! ## A165477.P6142448696556107317

`A000196(A165487(n))%A000124(n)`
-/

namespace A165477.P6142448696556107317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A165487 n).toNat) (A000124 n)

end

end A165477.P6142448696556107317

/-! ## A165477.P13611087705550599600

`A000196(A165487(n)+A000196(n))`
-/

namespace A165477.P13611087705550599600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A165487 n + A000196 n).toNat

end

end A165477.P13611087705550599600

/-! ## A165477.P1517708817792952029

`A000196(or(A000196(n), A165487(n)))`
-/

namespace A165477.P1517708817792952029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (A000196 n) (A165487 n)).toNat

end

end A165477.P1517708817792952029

/-! ## A165477.P15022099910656727242

`A053615(2*A165487(n)-A165487(n))`
-/

namespace A165477.P15022099910656727242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (2 * A165487 n - A165487 n).toNat

end

end A165477.P15022099910656727242

/-! ## A165477.P6869067811026697273

`A053615(A165487(n)+and(2, A165487(n)))`
-/

namespace A165477.P6869067811026697273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A165487 n + Int.land 2 (A165487 n)).toNat

end

end A165477.P6869067811026697273

/-! ## A165477.P5954111937936795979

`A053615(n)+A053615(A165487(n)+A053615(n))`
-/

namespace A165477.P5954111937936795979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n + A053615 (A165487 n + A053615 n).toNat

end

end A165477.P5954111937936795979

/-! ## A165477.P2786569190256121936

`A002262(2*A165487(n))`
-/

namespace A165477.P2786569190256121936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A165487 n).toNat

end

end A165477.P2786569190256121936

/-! ## A165477.P1340152293750973550

`and(A053615(A165487(n)), A116362(n))`
-/

namespace A165477.P1340152293750973550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053615 (A165487 n).toNat) (A116362 n)

end

end A165477.P1340152293750973550

/-!
# A165479: a(n) = least i in range [A165478(n),A165478(n+1)] for which abs(A165477(i)) gets the maximum value in that range.

The programs for A165479, there is no canonical definition to state claims against.
-/

/-! ## A165479.P7561642810701884163

`floor(A165478(3*n+2)/3)`
-/

namespace A165479.P7561642810701884163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165478 (3 * n + 2) : ℚ) / 3⌋

end

end A165479.P7561642810701884163

/-!
# A165480: Positions of zeros in A163897.

The programs for A165480, there is no canonical definition to state claims against.
-/

/-! ## A165480.P14689200315696592099

`eq[0, A163897(n)]`
-/

namespace A165480.P14689200315696592099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165480.P14689200315696592099

/-! ## A165480.P4312625793229083999

`eq[A163531(n), A163547(n)]`
-/

namespace A165480.P4312625793229083999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165480.P4312625793229083999

/-! ## A165480.P399227055023704755

`eq[A163547(n), A163547(A166041(n))]`
-/

namespace A165480.P399227055023704755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 (A166041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165480.P399227055023704755

/-! ## A165480.P9335697850928018135

`eq[A163547(n), A163547(A166043(n))]`
-/

namespace A165480.P9335697850928018135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 (A166043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165480.P9335697850928018135

/-! ## A165480.P3392402218767970523

`eq[A163531(n), A163531(A166042(n))]`
-/

namespace A165480.P3392402218767970523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 (A166042 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165480.P3392402218767970523

/-!
# A165481: Legendre symbol (n,28657).

The programs for A165481, there is no canonical definition to state claims against.
-/

/-! ## A165481.P2264240661195667349

`Δ[A165482(n-A165471(n)²)]`
-/

namespace A165481.P2264240661195667349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165482 ((n : ℤ) - A165471 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165481.P2264240661195667349

/-! ## A165481.P15232002810359622916

`Δ[A165482(n-A165476(n)²)]`
-/

namespace A165481.P15232002810359622916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165482 ((n : ℤ) - A165476 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165481.P15232002810359622916

/-! ## A165481.P4868783965533574576

`A165482(n)-A165482(A005843(n)%(n+1))`
-/

namespace A165481.P4868783965533574576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165482 n - A165482 (Int.tmod (A005843 n) (n + 1 : ℤ)).toNat

end

end A165481.P4868783965533574576

/-! ## A165481.P2543724773008041616

`Δ[A165482(n-A000040(n+1)%2)]`
-/

namespace A165481.P2543724773008041616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165482 ((n : ℤ) - Int.tmod (A000040 (n + 1)) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165481.P2543724773008041616

/-! ## A165481.P17685480226020133076

`Δ[A165482(n-A165476(n²))]`
-/

namespace A165481.P17685480226020133076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165482 ((n : ℤ) - A165476 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165481.P17685480226020133076

/-! ## A165481.P9727265361154865629

`Δ[A165482(n-A165471(n²))]`
-/

namespace A165481.P9727265361154865629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165482 ((n : ℤ) - A165471 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165481.P9727265361154865629

/-!
# A165482: Partial sums of A165481.

The programs for A165482, there is no canonical definition to state claims against.
-/

/-! ## A165482.P425610917260741451

`∑[A165481(n)]`
-/

namespace A165482.P425610917260741451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165482.P425610917260741451

/-! ## A165482.P2691721060492515428

`log(∏[exp(A165481(2*n))])`
-/

namespace A165482.P2691721060492515428
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A165481 (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A165482.P2691721060492515428

/-! ## A165482.P17497933392995686293

`A165481(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A165482.P17497933392995686293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165481 (n + n) + a (n - 1)

end

end A165482.P17497933392995686293

/-! ## A165482.P12007217965037255943

`a(n-1)-(A000007(n)-A165481(n))` with `a(0)=0, a(1)=1`
-/

namespace A165482.P12007217965037255943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (A000007 n - A165481 n)

end

end A165482.P12007217965037255943

/-! ## A165482.P17943566855363427297

`a(n-1)-A165481(5*n)` with `a(0)=0`
-/

namespace A165482.P17943566855363427297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A165481 (5 * n)

end

end A165482.P17943566855363427297

/-!
# A165483: Positions of 0's in A165482.

The programs for A165483, there is no canonical definition to state claims against.
-/

/-! ## A165483.P13090925295154609790

`eq[0, A165482(n)]`
-/

namespace A165483.P13090925295154609790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165483.P13090925295154609790

/-! ## A165483.P12220688676407653655

`eq[0, A165488(n)]`
-/

namespace A165483.P12220688676407653655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165483.P12220688676407653655

/-! ## A165483.P17281425078261196395

`eq[1, a(n-1)-A165481(n)]` with `a(0)=1`
-/

namespace A165483.P17281425078261196395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - A165481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165483.P17281425078261196395

/-! ## A165483.P2974901781123211471

`eq[0, ∑[A165481(n)]]`
-/

namespace A165483.P2974901781123211471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165483.P2974901781123211471

/-! ## A165483.P7587027438174171915

`lt[A165482(n)², A060576(n)]`
-/

namespace A165483.P7587027438174171915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165482 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165483.P7587027438174171915

/-! ## A165483.P5206408898147574153

`lt[A165482(n)², A014963(A066080(n+1))]`
-/

namespace A165483.P5206408898147574153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165482 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A066080 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165483.P5206408898147574153

/-!
# A165485: A maximum absolute value of A165482 in range [A165483(n),A165483(n+1)].

The programs for A165485, there is no canonical definition to state claims against.
-/

/-! ## A165485.P2978352790553869423

`A165482(A165484(n))`
-/

namespace A165485.P2978352790553869423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165482 (A165484 n).toNat

end

end A165485.P2978352790553869423

/-!
# A165486: Squared version of A165472.

The programs for A165486, there is no canonical definition to state claims against.
-/

/-! ## A165486.P12678478930581931423

`abs(A165472(n))*A165472(n)`
-/

namespace A165486.P12678478930581931423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165472 n| * A165472 n

end

end A165486.P12678478930581931423

/-! ## A165486.P3202470095289049510

`A056926(A165472(n)²)*A165472(n)`
-/

namespace A165486.P3202470095289049510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A165472 n ^ 2).toNat * A165472 n

end

end A165486.P3202470095289049510

/-! ## A165486.P13449333385131678150

`lcm(A165471(n), A165472(n))*A165472(n)`
-/

namespace A165486.P13449333385131678150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A165471 n) (A165472 n) : ℤ) * A165472 n

end

end A165486.P13449333385131678150

/-! ## A165486.P17821811035527029115

`A000196(A165472(n)²)*A165472(n)`
-/

namespace A165486.P17821811035527029115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A165472 n ^ 2).toNat * A165472 n

end

end A165486.P17821811035527029115

/-! ## A165486.P258215117045069647

`A137734(A165472(n)²)*A165472(n)`
-/

namespace A165486.P258215117045069647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A165472 n ^ 2).toNat * A165472 n

end

end A165486.P258215117045069647

/-!
# A165487: Squared version of A165477.

The programs for A165487, there is no canonical definition to state claims against.
-/

/-! ## A165487.P3881013578961107829

`A165477(n)²`
-/

namespace A165487.P3881013578961107829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 n ^ 2

end

end A165487.P3881013578961107829

/-! ## A165487.P7913095225580878478

`∑[A165476(n)]²`
-/

namespace A165487.P7913095225580878478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A165487.P7913095225580878478

/-! ## A165487.P6593471499529143105

`A000290(∑[A165476(n)])`
-/

namespace A165487.P6593471499529143105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165487.P6593471499529143105

/-! ## A165487.P7462535358631028447

`A002620(2*A165477(n))`
-/

namespace A165487.P7462535358631028447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A165477 n).toNat

end

end A165487.P7462535358631028447

/-! ## A165487.P15104112613393293686

`∑[A165476(n)]*A165477(n)`
-/

namespace A165487.P15104112613393293686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A165477 n

end

end A165487.P15104112613393293686

/-! ## A165487.P13236359072400439956

`A165477(n)^(2%A124487(n+1))`
-/

namespace A165487.P13236359072400439956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165477 n : ℚ) ^ (Int.tmod 2 (A124487 (n + 1)) : ℤ)

end

end A165487.P13236359072400439956

/-! ## A165487.P2014132894683909228

`∑[A165476(2*n)]*∑[A165476(4*n)]`
-/

namespace A165487.P2014132894683909228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A165487.P2014132894683909228

/-! ## A165487.P4639074008120377987

`A165477(A028310(n))*A165477(n)`
-/

namespace A165487.P4639074008120377987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (A028310 n).toNat * A165477 n

end

end A165487.P4639074008120377987

/-! ## A165487.P8527511745471869494

`A165477(A005843(n)/2)*A165477(n)`
-/

namespace A165487.P8527511745471869494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat * A165477 n

end

end A165487.P8527511745471869494

/-! ## A165487.P10743829980627996953

`A165477(A005843(n)-n)*A165477(n)`
-/

namespace A165487.P10743829980627996953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (A005843 n - (n : ℤ)).toNat * A165477 n

end

end A165487.P10743829980627996953

/-! ## A165487.P12017297900065096788

`(A165477(n+1)-A165476(n+1))*A165477(n)`
-/

namespace A165487.P12017297900065096788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A165477 (n + 1) - A165476 (n + 1)) * A165477 n

end

end A165487.P12017297900065096788

/-!
# A165488: Square the terms of A165482 while preserving the signs.

The programs for A165488, there is no canonical definition to state claims against.
-/

/-! ## A165488.P14561856555689894884

`abs(A165482(n))*A165482(n)`
-/

namespace A165488.P14561856555689894884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165482 n| * A165482 n

end

end A165488.P14561856555689894884

/-! ## A165488.P7283391064410012005

`gcd(A000038(n), A165482(n))*A165482(n)`
-/

namespace A165488.P7283391064410012005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A165482 n) : ℤ) * A165482 n

end

end A165488.P7283391064410012005

/-! ## A165488.P13252677624484046401

`lcm(A165471(n), A165482(n))*A165482(n)`
-/

namespace A165488.P13252677624484046401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A165471 n) (A165482 n) : ℤ) * A165482 n

end

end A165488.P13252677624484046401

/-! ## A165488.P11415757419563473610

`A000196(A165482(n)²)*A165482(n)`
-/

namespace A165488.P11415757419563473610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A165482 n ^ 2).toNat * A165482 n

end

end A165488.P11415757419563473610

/-! ## A165488.P7431037556539424544

`A053615(A165482(n)²)*A165482(n)`
-/

namespace A165488.P7431037556539424544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A165482 n ^ 2).toNat * A165482 n

end

end A165488.P7431037556539424544

/-!
# A165489: Eigensequence of triangle A084938.

The programs for A165489, there is no canonical definition to state claims against.
-/

/-! ## A165489.P10666989229982807721

`A165490(∑[n]+n)`
-/

namespace A165489.P10666989229982807721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165490 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A165489.P10666989229982807721

/-! ## A165489.P2767219067941243495

`A257639((n*a(n-1))²)` with `a(0)=1`
-/

namespace A165489.P2767219067941243495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257639 (((n : ℤ) * a (n - 1)) ^ 2).toNat

end

end A165489.P2767219067941243495

/-! ## A165489.P8244590883846334309

`A302496(A035355(n))`
-/

namespace A165489.P8244590883846334309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302496 (A035355 n).toNat

end

end A165489.P8244590883846334309

/-!
# A165490: Triangle read by rows, A084938 * A165489 diagonalized as an infinite lower triangular matrix.

The programs for A165490, there is no canonical definition to state claims against.
-/

/-! ## A165490.P4587744468640807458

`A084938(n)*A120126(A141169(n)!)`
-/

namespace A165490.P4587744468640807458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n * A120126 (Nat.factorial (A141169 n).toNat)

end

end A165490.P4587744468640807458

/-! ## A165490.P18256815562427581930

`A084938(n)*A120401(A141169(n)!)`
-/

namespace A165490.P18256815562427581930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n * A120401 (Nat.factorial (A141169 n).toNat)

end

end A165490.P18256815562427581930

/-! ## A165490.P3354855019262320356

`A003266(A002262(n))*A023416(2^A130167(n))`
-/

namespace A165490.P3354855019262320356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (A002262 n).toNat * A023416 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A130167 n : ℤ))).toNat

end

end A165490.P3354855019262320356

/-! ## A165490.P5150473080069571288

`A003266(A002262(n))*A056239(2^A130167(n))`
-/

namespace A165490.P5150473080069571288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (A002262 n).toNat * A056239 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A130167 n : ℤ))).toNat

end

end A165490.P5150473080069571288

/-! ## A165490.P12568751484270726286

`A000002(A294558(n))*A084938(n)`
-/

namespace A165490.P12568751484270726286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A294558 n).toNat * A084938 n

end

end A165490.P12568751484270726286

/-!
# A165491: a(0)=1, a(1)=6, a(n) = 30*a(n-2) - a(n-1).

The programs for A165491, the canonical program `A165491.P2809635091029927375` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165491 has offset 0).

The definition of A165491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*a(n-2)-a(n-1)` (program `A165491.P2809635091029927375`, by `A165491.P2809635091029927375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165491.P17516932396079492527

`ogf((1+7x)/(1+x-30x^2))`
-/

namespace A165491.P17516932396079492527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, 1, -30] n

end

end A165491.P17516932396079492527

namespace A165491

/-- `ogf((1+7x)/(1+x-30x^2))` -/
def P17516932396079492527.Spec : Prop :=
  ∀ n, P17516932396079492527.a n = A165491 n

end A165491

/-! ## A165491.P2809635091029927375

`30*a(n-2)-a(n-1)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A165491

/-- `30*a(n-2)-a(n-1)` -/
def P2809635091029927375.Spec : Prop :=
  ∀ n, P2809635091029927375.a n = A165491 n

theorem P2809635091029927375.correct : P2809635091029927375.Spec := by
  intro n
  simp only [A165491]

end A165491

/-! ## A165491.P18012926439709069370

`(12*5^n-(-6)^n)/11`
-/

namespace A165491.P18012926439709069370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 * 5 ^ n : ℤ) - (-6) ^ n : ℚ) / 11

end

end A165491.P18012926439709069370

namespace A165491

/-- `(12*5^n-(-6)^n)/11` -/
def P18012926439709069370.Spec : Prop :=
  ∀ n, P18012926439709069370.a n = (A165491 n : ℚ)

theorem P18012926439709069370.correct : P18012926439709069370.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165491, Nat.add_sub_cancel, A165491.P18012926439709069370.a, A165491.P2809635091029927375.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165491, Nat.add_sub_cancel, A165491.P18012926439709069370.a, A165491.P2809635091029927375.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165491

/-! ## A165491.P10328809926457661477

`6*(A020699(n)-a(n-1))` with `a(0)=1`
-/

namespace A165491.P10328809926457661477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * (A020699 n - a (n - 1))

end

end A165491.P10328809926457661477

namespace A165491

/-- `6*(A020699(n)-a(n-1))` -/
def P10328809926457661477.Spec : Prop :=
  ∀ n, P10328809926457661477.a n = A165491 n

end A165491

/-!
# A165492: Primes p where the digital sum of p^2 is equal to 13.

The programs for A165492, there is no canonical definition to state claims against.
-/

/-! ## A165492.P2706572223324569000

`∩[A061905(n+1), A129807(n+1)]`
-/

namespace A165492.P2706572223324569000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165492.P2706572223324569000

/-! ## A165492.P13890291527520994912

`∩[A061905(n+1), A126142(n+1)]`
-/

namespace A165492.P13890291527520994912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165492.P13890291527520994912

/-! ## A165492.P12386173530429621646

`p?[eq[13, A004159(n)]]`
-/

namespace A165492.P12386173530429621646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165492.P12386173530429621646

/-! ## A165492.P507041353017636475

`eq[A004513(A004159(n)), A018783(n)]`
-/

namespace A165492.P507041353017636475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004513 (A004159 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165492.P507041353017636475

/-! ## A165492.P10940602201159866490

`eq[A004159(n), A077413(A032741(n))]`
-/

namespace A165492.P10940602201159866490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165492.P10940602201159866490

/-!
# A165493: Primes p where the digital sum of p^2 is equal to 19.

The programs for A165493, there is no canonical definition to state claims against.
-/

/-! ## A165493.P10347225483428892529

`p?[eq[19, A004159(n)]]`
-/

namespace A165493.P10347225483428892529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165493.P10347225483428892529

/-! ## A165493.P4964927207471188760

`eq[A073855(n)+17, A004159(n)]`
-/

namespace A165493.P4964927207471188760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n + 17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165493.P4964927207471188760

/-! ## A165493.P4139464218800058222

`eq[A004159(n), A017485(A032741(n))]`
-/

namespace A165493.P4139464218800058222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165493.P4139464218800058222

/-! ## A165493.P7664417243923740811

`eq[A034151(A004159(n)), A327859(n)]`
-/

namespace A165493.P7664417243923740811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034151 (A004159 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165493.P7664417243923740811

/-! ## A165493.P16095354064050126619

`eq[A004159(n), A017485(A003415(n))]`
-/

namespace A165493.P16095354064050126619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165493.P16095354064050126619

/-!
# A165495: First result not divisible by 4 when iterating k -> k+tau(k) from 2(2n-1)^2.

The programs for A165495, there is no canonical definition to state claims against.
-/

/-! ## A165495.P671390516704717727

`A350943(A356247(n+2)+A356220(n+1))`
-/

namespace A165495.P671390516704717727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350943 (A356247 (n + 2) + A356220 (n + 1)).toNat

end

end A165495.P671390516704717727

/-!
# A165496: Values k: A165495(k) is odd.

The programs for A165496, there is no canonical definition to state claims against.
-/

/-! ## A165496.P2401920885342224085

`eq[2, A007978(A165495(n+1))]+1`
-/

namespace A165496.P2401920885342224085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A165495 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A165496.P2401920885342224085

/-!
# A165497: a(n) starts arithmetic progression of n terms separated by tau(a(n)), each term having the same number of divisors.

The programs for A165497, there is no canonical definition to state claims against.
-/

/-! ## A165497.P10050201402538848376

`A104806(A309765(n+2))`
-/

namespace A165497.P10050201402538848376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104806 (A309765 (n + 2)).toNat

end

end A165497.P10050201402538848376

/-! ## A165497.P2731121797832359465

`A296119(A023009(n)*A285572(n+1))`
-/

namespace A165497.P2731121797832359465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296119 (A023009 n * A285572 (n + 1)).toNat

end

end A165497.P2731121797832359465

