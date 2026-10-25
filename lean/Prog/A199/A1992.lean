import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C001
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A199200: Number of nX7 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199200, there is no canonical definition to state claims against.
-/

/-! ## A199200.P6438981748324392102

`A199201(A374008(n+1))`
-/

namespace A199200.P6438981748324392102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199201 (A374008 (n + 1)).toNat

end

end A199200.P6438981748324392102

/-!
# A199201: T(n,k)=Number of nXk 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199201, there is no canonical definition to state claims against.
-/

/-! ## A199201.P12910824378116370849

`A004151(A199256(n+1))`
-/

namespace A199201.P12910824378116370849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A199256 (n + 1)).toNat

end

end A199201.P12910824378116370849

/-! ## A199201.P7483320119122574486

`A023443(A199256(n+1)+1)`
-/

namespace A199201.P7483320119122574486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A199256 (n + 1) + 1).toNat

end

end A199201.P7483320119122574486

/-! ## A199201.P17571133531848259376

`A289207(A199256(n+1)+2)`
-/

namespace A199201.P17571133531848259376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A199256 (n + 1) + 2).toNat

end

end A199201.P17571133531848259376

/-! ## A199201.P138387760494624060

`A001281(2*A199256(n+1))`
-/

namespace A199201.P138387760494624060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A199256 (n + 1)).toNat

end

end A199201.P138387760494624060

/-! ## A199201.P6070278268425865873

`A004525(2*A199256(n+1))`
-/

namespace A199201.P6070278268425865873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A199256 (n + 1)).toNat

end

end A199201.P6070278268425865873

/-!
# A199202: E.g.f. satisfies: A(x) = exp( x*(A(x) + 1/A(-x))/2 ).

The programs for A199202, there is no canonical definition to state claims against.
-/

/-! ## A199202.P18025256379368360885

`A143599(n)+A004178(A056346(n+1))`
-/

namespace A199202.P18025256379368360885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143599 n + A004178 (A056346 (n + 1)).toNat

end

end A199202.P18025256379368360885

/-! ## A199202.P7744937994830038301

`A143599(n)+A004525(A056286(n+1))`
-/

namespace A199202.P7744937994830038301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143599 n + A004525 (A056286 (n + 1)).toNat

end

end A199202.P7744937994830038301

/-! ## A199202.P16408905918271973217

`A028310(A143599(n)+A056346(n+1))`
-/

namespace A199202.P16408905918271973217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A143599 n + A056346 (n + 1)).toNat

end

end A199202.P16408905918271973217

/-!
# A199204: Irregular triangle read by rows: the n-th row being a probability distribution based on n!.

The programs for A199204, there is no canonical definition to state claims against.
-/

/-! ## A199204.P15515438067580498239

`A001222(A047161(n+3)*A225630(n)+1)`
-/

namespace A199204.P15515438067580498239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A047161 (n + 3) * A225630 n + 1).toNat

end

end A199204.P15515438067580498239

/-!
# A199205: Number of distinct values taken by 4th derivative of x^x^...^x (with n x's and parentheses inserted in all possible ways) at x=1.

The programs for A199205, there is no canonical definition to state claims against.
-/

/-! ## A199205.P13254820849638608041

`A216368(A076027(n+2))`
-/

namespace A199205.P13254820849638608041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (A076027 (n + 2)).toNat

end

end A199205.P13254820849638608041

/-! ## A199205.P7364387926276528052

`A216368(A077169(n+1)-1)`
-/

namespace A199205.P7364387926276528052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (A077169 (n + 1) - 1).toNat

end

end A199205.P7364387926276528052

/-! ## A199205.P2442909866843826875

`A216368(∑[∑[A249351(n+3)]])`
-/

namespace A199205.P2442909866843826875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A199205.P2442909866843826875

/-! ## A199205.P3127006398589831628

`∑[A161680(n)+A008683(A220855(n+1))]-n`
-/

namespace A199205.P3127006398589831628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A008683 (A220855 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A199205.P3127006398589831628

/-!
# A199206: a(n) = (1+(A034939(n))^2)/5^n.

The programs for A199206, the canonical program `A199206.P10239576524448886382` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199206 has offset 0).

The definition of A199206 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034939, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A199206.P10239576524448886382

`(1+A034939(n)²)/5^n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A199206

/-- `(1+A034939(n)²)/5^n` -/
def P10239576524448886382.Spec : Prop :=
  ∀ n, P10239576524448886382.a n = (A199206 n : ℚ)

end A199206

/-! ## A199206.P16258302433010307475

`A034939(n)+A210848(n)-A048898(n)`
-/

namespace A199206.P16258302433010307475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034939 n + (A210848 n - A048898 n)

end

end A199206.P16258302433010307475

namespace A199206

/-- `A034939(n)+A210848(n)-A048898(n)` -/
def P16258302433010307475.Spec : Prop :=
  ∀ n, P16258302433010307475.a n = A199206 n

end A199206

/-! ## A199206.P800156371207064210

`A034939(n)+A210849(n)-A048899(n)`
-/

namespace A199206.P800156371207064210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034939 n + (A210849 n - A048899 n)

end

end A199206.P800156371207064210

namespace A199206

/-- `A034939(n)+A210849(n)-A048899(n)` -/
def P800156371207064210.Spec : Prop :=
  ∀ n, P800156371207064210.a n = A199206 n

end A199206

/-! ## A199206.P5757258288393427070

`A034939(n)-(5^n-A048899(n)-A000007(n)-A210848(n))`
-/

namespace A199206.P5757258288393427070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034939 n - ((5 ^ n : ℤ) - A048899 n - A000007 n - A210848 n)

end

end A199206.P5757258288393427070

namespace A199206

/-- `A034939(n)-(5^n-A048899(n)-A000007(n)-A210848(n))` -/
def P5757258288393427070.Spec : Prop :=
  ∀ n, P5757258288393427070.a n = A199206 n

end A199206

/-! ## A199206.P3410322281147614377

`A034939(n)-(A034935(n)%(5^n)-A210848(n))`
-/

namespace A199206.P3410322281147614377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034939 n - (Int.tmod (A034935 n) (5 ^ n : ℤ) - A210848 n)

end

end A199206.P3410322281147614377

namespace A199206

/-- `A034939(n)-(A034935(n)%(5^n)-A210848(n))` -/
def P3410322281147614377.Spec : Prop :=
  ∀ n, P3410322281147614377.a n = A199206 n

end A199206

/-!
# A199207: a(n) = 7*4^n+1.

The programs for A199207, the canonical program `A199207.P794686200103323019` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199207 has offset 0).

The definition of A199207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*4^n+1` (program `A199207.P794686200103323019`, by `A199207.P794686200103323019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199207.P794686200103323019

`7*4^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199207

/-- `7*4^n+1` -/
def P794686200103323019.Spec : Prop :=
  ∀ n, (P794686200103323019.a n : ℤ) = A199207 n

theorem P794686200103323019.correct : P794686200103323019.Spec := by
  intro n
  simp only [A199207]

end A199207

/-! ## A199207.P9345772002944128809

`ogf((8-11x)/(1-5x+4x^2))`
-/

namespace A199207.P9345772002944128809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -11] [1, -5, 4] n

end

end A199207.P9345772002944128809

namespace A199207

/-- `ogf((8-11x)/(1-5x+4x^2))` -/
def P9345772002944128809.Spec : Prop :=
  ∀ n, P9345772002944128809.a n = A199207 n

end A199207

/-! ## A199207.P17416570948333411522

`abs(3-4*a(n-1))` with `a(0)=8`
-/

namespace A199207.P17416570948333411522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  |3 - 4 * a (n - 1)|

end

end A199207.P17416570948333411522

namespace A199207

/-- `abs(3-4*a(n-1))` -/
def P17416570948333411522.Spec : Prop :=
  ∀ n, P17416570948333411522.a n = A199207 n

end A199207

/-! ## A199207.P10655510941695200267

`record[3-2*a(n-1)]` with `a(0)=8`
-/

namespace A199207.P10655510941695200267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  3 - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199207.P10655510941695200267

namespace A199207

/-- `record[3-2*a(n-1)]` -/
def P10655510941695200267.Spec : Prop :=
  ∀ n, P10655510941695200267.a n = A199207 n

end A199207

/-! ## A199207.P3356868880457972897

`4*(a(n-1)-3/4)` with `a(0)=8`
-/

namespace A199207.P3356868880457972897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  4 * (a (n - 1) - (3 : ℚ) / 4)

end

end A199207.P3356868880457972897

namespace A199207

/-- `4*(a(n-1)-3/4)` -/
def P3356868880457972897.Spec : Prop :=
  ∀ n, P3356868880457972897.a n = (A199207 n : ℚ)

theorem P3356868880457972897.correct : P3356868880457972897.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199207, Nat.add_sub_cancel, A199207.P3356868880457972897.a, A199207.P794686200103323019.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199207, Nat.add_sub_cancel, A199207.P3356868880457972897.a, A199207.P794686200103323019.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199207

/-! ## A199207.P8249393243378163383

`floor(a(n-1)+3*(a(n-1)-1))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199207.P8249393243378163383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 3 * (a (n - 1) - 1)

end

end A199207.P8249393243378163383

namespace A199207

/-- `floor(a(n-1)+3*(a(n-1)-1))` -/
def P8249393243378163383.Spec : Prop :=
  ∀ n, P8249393243378163383.a n = A199207 n

theorem P8249393243378163383.correct : P8249393243378163383.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199207, Nat.add_sub_cancel, A199207.P8249393243378163383.a, A199207.P794686200103323019.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199207, Nat.add_sub_cancel, A199207.P8249393243378163383.a, A199207.P794686200103323019.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199207

/-! ## A199207.P5223507163402818782

`floor(a(n-1)-3*(1-a(n-1)))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A199207.P5223507163402818782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - 3 * (1 - a (n - 1))

end

end A199207.P5223507163402818782

namespace A199207

/-- `floor(a(n-1)-3*(1-a(n-1)))` -/
def P5223507163402818782.Spec : Prop :=
  ∀ n, P5223507163402818782.a n = A199207 n

theorem P5223507163402818782.correct : P5223507163402818782.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199207, Nat.add_sub_cancel, A199207.P5223507163402818782.a, A199207.P794686200103323019.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199207, Nat.add_sub_cancel, A199207.P5223507163402818782.a, A199207.P794686200103323019.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199207

/-! ## A199207.P4128543496083915765

`A083686(2*n)`
-/

namespace A199207.P4128543496083915765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083686 (2 * n)

end

end A199207.P4128543496083915765

namespace A199207

/-- `A083686(2*n)` -/
def P4128543496083915765.Spec : Prop :=
  ∀ n, P4128543496083915765.a n = A199207 n

end A199207

/-! ## A199207.P576240561304417408

`A321483(2*n)`
-/

namespace A199207.P576240561304417408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321483 (2 * n)

end

end A199207.P576240561304417408

namespace A199207

/-- `A321483(2*n)` -/
def P576240561304417408.Spec : Prop :=
  ∀ n, P576240561304417408.a n = A199207 n

end A199207

/-! ## A199207.P1932642146969565988

`(A206372(n)+3)/2`
-/

namespace A199207.P1932642146969565988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206372 n + 3 : ℚ) / 2

end

end A199207.P1932642146969565988

namespace A199207

/-- `(A206372(n)+3)/2` -/
def P1932642146969565988.Spec : Prop :=
  ∀ n, P1932642146969565988.a n = (A199207 n : ℚ)

theorem P1932642146969565988.correct : P1932642146969565988.Spec := by
  intro n
  simp only [A199207, Nat.add_sub_cancel, A199207.P1932642146969565988.a, A199207.P794686200103323019.a, A206372, A206372.P15026317867364783864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199207

/-! ## A199207.P13197995895436143081

`record[1-A140721(n+1)]`
-/

namespace A199207.P13197995895436143081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A140721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199207.P13197995895436143081

namespace A199207

/-- `record[1-A140721(n+1)]` -/
def P13197995895436143081.Spec : Prop :=
  ∀ n, P13197995895436143081.a n = A199207 n

end A199207

/-! ## A199207.P420600129156543876

`record[Δ[A282453(n+1)]+2]`
-/

namespace A199207.P420600129156543876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282453 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199207.P420600129156543876

namespace A199207

/-- `record[Δ[A282453(n+1)]+2]` -/
def P420600129156543876.Spec : Prop :=
  ∀ n, P420600129156543876.a n = A199207 n

end A199207

/-! ## A199207.P5277475284059312912

`(A164285(2*n+1)-1)/2`
-/

namespace A199207.P5277475284059312912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164285 (2 * n + 1) - 1 : ℚ) / 2

end

end A199207.P5277475284059312912

namespace A199207

/-- `(A164285(2*n+1)-1)/2` -/
def P5277475284059312912.Spec : Prop :=
  ∀ n, P5277475284059312912.a n = (A199207 n : ℚ)

end A199207

/-! ## A199207.P4007621636292258624

`∩[A083686(n), A321483(n)]`
-/

namespace A199207.P4007621636292258624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083686 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321483 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199207.P4007621636292258624

namespace A199207

/-- `∩[A083686(n), A321483(n)]` -/
def P4007621636292258624.Spec : Prop :=
  ∀ n, (P4007621636292258624.a n : ℤ) = A199207 n

end A199207

/-! ## A199207.P1662240670694858676

`∩[A086224(n)+2, A321483(n)]`
-/

namespace A199207.P1662240670694858676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086224 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321483 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199207.P1662240670694858676

namespace A199207

/-- `∩[A086224(n)+2, A321483(n)]` -/
def P1662240670694858676.Spec : Prop :=
  ∀ n, (P1662240670694858676.a n : ℤ) = A199207 n

end A199207

/-! ## A199207.P13523744493524060933

`(A212702(n+1)+A001787(n+1))/A001787(n+1)`
-/

namespace A199207.P13523744493524060933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212702 (n + 1) + A001787 (n + 1) : ℚ) / (A001787 (n + 1) : ℚ)

end

end A199207.P13523744493524060933

namespace A199207

/-- `(A212702(n+1)+A001787(n+1))/A001787(n+1)` -/
def P13523744493524060933.Spec : Prop :=
  ∀ n, P13523744493524060933.a n = (A199207 n : ℚ)

end A199207

/-!
# A199208: a(n) = 9*4^n+1.

The programs for A199208, the canonical program `A199208.P17505453644216063284` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199208 has offset 0).

The definition of A199208 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*4^n+1` (program `A199208.P17505453644216063284`, by `A199208.P17505453644216063284.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199208.P17505453644216063284

`9*4^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199208

/-- `9*4^n+1` -/
def P17505453644216063284.Spec : Prop :=
  ∀ n, (P17505453644216063284.a n : ℤ) = A199208 n

theorem P17505453644216063284.correct : P17505453644216063284.Spec := by
  intro n
  simp only [A199208]

end A199208

/-! ## A199208.P4714940861788780542

`ogf((10-13x)/(1-5x+4x^2))`
-/

namespace A199208.P4714940861788780542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -13] [1, -5, 4] n

end

end A199208.P4714940861788780542

namespace A199208

/-- `ogf((10-13x)/(1-5x+4x^2))` -/
def P4714940861788780542.Spec : Prop :=
  ∀ n, P4714940861788780542.a n = A199208 n

end A199208

/-! ## A199208.P13745698156163904118

`Δ[lcm(3, 4^n)+n]`
-/

namespace A199208.P13745698156163904118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (4 ^ n) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199208.P13745698156163904118

namespace A199208

/-- `Δ[lcm(3, 4^n)+n]` -/
def P13745698156163904118.Spec : Prop :=
  ∀ n, P13745698156163904118.a n = A199208 n

end A199208

/-! ## A199208.P5940282664401288614

`Δ[or(n, 3*4^n)]`
-/

namespace A199208.P5940282664401288614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (3 * 4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199208.P5940282664401288614

namespace A199208

/-- `Δ[or(n, 3*4^n)]` -/
def P5940282664401288614.Spec : Prop :=
  ∀ n, P5940282664401288614.a n = A199208 n

end A199208

/-! ## A199208.P8627643997327825553

`Δ[xor(n, 3*4^n)]`
-/

namespace A199208.P8627643997327825553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (3 * 4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A199208.P8627643997327825553

namespace A199208

/-- `Δ[xor(n, 3*4^n)]` -/
def P8627643997327825553.Spec : Prop :=
  ∀ n, P8627643997327825553.a n = A199208 n

end A199208

/-! ## A199208.P14176827729034302690

`∑[4*a(n-1)]` with `a(0)=10, a(1)=27`
-/

namespace A199208.P14176827729034302690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 27] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199208.P14176827729034302690

namespace A199208

/-- `∑[4*a(n-1)]` -/
def P14176827729034302690.Spec : Prop :=
  ∀ n, (P14176827729034302690.a n : ℤ) = A199208 n

end A199208

/-! ## A199208.P1450250245529784228

`abs(3-4*a(n-1))` with `a(0)=10`
-/

namespace A199208.P1450250245529784228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  |3 - 4 * a (n - 1)|

end

end A199208.P1450250245529784228

namespace A199208

/-- `abs(3-4*a(n-1))` -/
def P1450250245529784228.Spec : Prop :=
  ∀ n, P1450250245529784228.a n = A199208 n

end A199208

/-! ## A199208.P13229731565442161261

`record[3-2*a(n-1)]` with `a(0)=10`
-/

namespace A199208.P13229731565442161261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  3 - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199208.P13229731565442161261

namespace A199208

/-- `record[3-2*a(n-1)]` -/
def P13229731565442161261.Spec : Prop :=
  ∀ n, P13229731565442161261.a n = A199208 n

end A199208

/-! ## A199208.P3248021959205210596

`4*(a(n-1)-3/4)` with `a(0)=10`
-/

namespace A199208.P3248021959205210596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  4 * (a (n - 1) - (3 : ℚ) / 4)

end

end A199208.P3248021959205210596

namespace A199208

/-- `4*(a(n-1)-3/4)` -/
def P3248021959205210596.Spec : Prop :=
  ∀ n, P3248021959205210596.a n = (A199208 n : ℚ)

theorem P3248021959205210596.correct : P3248021959205210596.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199208, Nat.add_sub_cancel, A199208.P3248021959205210596.a, A199208.P17505453644216063284.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199208, Nat.add_sub_cancel, A199208.P3248021959205210596.a, A199208.P17505453644216063284.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199208

/-! ## A199208.P7881583277566733334

`Δ[Δ[4*a(n-1)]+n]` with `a(0)=1`
-/

namespace A199208.P7881583277566733334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199208.P7881583277566733334

namespace A199208

/-- `Δ[Δ[4*a(n-1)]+n]` -/
def P7881583277566733334.Spec : Prop :=
  ∀ n, P7881583277566733334.a n = A199208 n

end A199208

/-! ## A199208.P17858062555068054008

`A083705(2*n)`
-/

namespace A199208.P17858062555068054008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083705 (2 * n)

end

end A199208.P17858062555068054008

namespace A199208

/-- `A083705(2*n)` -/
def P17858062555068054008.Spec : Prop :=
  ∀ n, P17858062555068054008.a n = A199208 n

end A199208

/-! ## A199208.P10064946097561604404

`Δ[Δ[A000302(n)+∑[n]]]`
-/

namespace A199208.P10064946097561604404
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199208.P10064946097561604404

namespace A199208

/-- `Δ[Δ[A000302(n)+∑[n]]]` -/
def P10064946097561604404.Spec : Prop :=
  ∀ n, P10064946097561604404.a n = A199208 n

end A199208

/-! ## A199208.P17669585951250162072

`Δ[Δ[A000079(n)²]+n-1]`
-/

namespace A199208.P17669585951250162072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199208.P17669585951250162072

namespace A199208

/-- `Δ[Δ[A000079(n)²]+n-1]` -/
def P17669585951250162072.Spec : Prop :=
  ∀ n, P17669585951250162072.a n = A199208 n

end A199208

/-! ## A199208.P11536332664828734247

`xor(A072262(n+1), A083597(n))`
-/

namespace A199208.P11536332664828734247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072262 (n + 1)) (A083597 n)

end

end A199208.P11536332664828734247

namespace A199208

/-- `xor(A072262(n+1), A083597(n))` -/
def P11536332664828734247.Spec : Prop :=
  ∀ n, P11536332664828734247.a n = A199208 n

end A199208

/-! ## A199208.P18201767937756162462

`Δ[A024036(n+1)-A024037(n)]`
-/

namespace A199208.P18201767937756162462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 (n + 1) - A024037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199208.P18201767937756162462

namespace A199208

/-- `Δ[A024036(n+1)-A024037(n)]` -/
def P18201767937756162462.Spec : Prop :=
  ∀ n, P18201767937756162462.a n = A199208 n

theorem P18201767937756162462.correct : P18201767937756162462.Spec := by
  intro n
  simp only [A199208, Nat.add_sub_cancel, A199208.P18201767937756162462.f1, A199208.P18201767937756162462.a, A199208.P17505453644216063284.a, A024036, A024036.P9245189437657330470.a, A024037, A024037.P7380461457287617195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199208

/-! ## A199208.P3217679564175656186

`(A164093(n+1)+2)/4`
-/

namespace A199208.P3217679564175656186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164093 (n + 1) + 2 : ℚ) / 4

end

end A199208.P3217679564175656186

namespace A199208

/-- `(A164093(n+1)+2)/4` -/
def P3217679564175656186.Spec : Prop :=
  ∀ n, P3217679564175656186.a n = (A199208 n : ℚ)

theorem P3217679564175656186.correct : P3217679564175656186.Spec := by
  intro n
  simp only [A199208, Nat.add_sub_cancel, A199208.P3217679564175656186.a, A199208.P17505453644216063284.a, A164093, A164093.P4546873687502798517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199208

/-! ## A199208.P14747020720371680054

`(A182461(2*n+1)-A182462(2*n))/2`
-/

namespace A199208.P14747020720371680054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182461 (2 * n + 1) - A182462 (2 * n) : ℚ) / 2

end

end A199208.P14747020720371680054

namespace A199208

/-- `(A182461(2*n+1)-A182462(2*n))/2` -/
def P14747020720371680054.Spec : Prop :=
  ∀ n, P14747020720371680054.a n = (A199208 n : ℚ)

end A199208

/-!
# A199209: a(n) = 10*4^n+1.

The programs for A199209, the canonical program `A199209.P9937275797404371116` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199209 has offset 0).

The definition of A199209 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*4^n+1` (program `A199209.P9937275797404371116`, by `A199209.P9937275797404371116.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199209.P9937275797404371116

`10*4^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199209

/-- `10*4^n+1` -/
def P9937275797404371116.Spec : Prop :=
  ∀ n, (P9937275797404371116.a n : ℤ) = A199209 n

theorem P9937275797404371116.correct : P9937275797404371116.Spec := by
  intro n
  simp only [A199209]

end A199209

/-! ## A199209.P11700758137060735777

`or(1, 10*4^n)`
-/

namespace A199209.P11700758137060735777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 * 4 ^ n)

end

end A199209.P11700758137060735777

namespace A199209

/-- `or(1, 10*4^n)` -/
def P11700758137060735777.Spec : Prop :=
  ∀ n, (P11700758137060735777.a n : ℤ) = A199209 n

end A199209

/-! ## A199209.P817477774794426379

`xor(1, 10*4^n)`
-/

namespace A199209.P817477774794426379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (10 * 4 ^ n)

end

end A199209.P817477774794426379

namespace A199209

/-- `xor(1, 10*4^n)` -/
def P817477774794426379.Spec : Prop :=
  ∀ n, (P817477774794426379.a n : ℤ) = A199209 n

end A199209

/-! ## A199209.P9500558100630235125

`ogf((11-14x)/(1-5x+4x^2))`
-/

namespace A199209.P9500558100630235125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -14] [1, -5, 4] n

end

end A199209.P9500558100630235125

namespace A199209

/-- `ogf((11-14x)/(1-5x+4x^2))` -/
def P9500558100630235125.Spec : Prop :=
  ∀ n, P9500558100630235125.a n = A199209 n

end A199209

/-! ## A199209.P9338181287892222528

`4*(a(n-1)-3/4)` with `a(0)=11`
-/

namespace A199209.P9338181287892222528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [11] fun n a =>
  4 * (a (n - 1) - (3 : ℚ) / 4)

end

end A199209.P9338181287892222528

namespace A199209

/-- `4*(a(n-1)-3/4)` -/
def P9338181287892222528.Spec : Prop :=
  ∀ n, P9338181287892222528.a n = (A199209 n : ℚ)

theorem P9338181287892222528.correct : P9338181287892222528.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199209, Nat.add_sub_cancel, A199209.P9338181287892222528.a, A199209.P9937275797404371116.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199209, Nat.add_sub_cancel, A199209.P9338181287892222528.a, A199209.P9937275797404371116.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199209

/-! ## A199209.P15084947390783268879

`A307702(n+3)`
-/

namespace A199209.P15084947390783268879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307702 (n + 3)

end

end A199209.P15084947390783268879

namespace A199209

/-- `A307702(n+3)` -/
def P15084947390783268879.Spec : Prop :=
  ∀ n, P15084947390783268879.a n = A199209 n

end A199209

/-! ## A199209.P10183412682969123124

`A083575(Δ[n²])`
-/

namespace A199209.P10183412682969123124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199209.P10183412682969123124

namespace A199209

/-- `A083575(Δ[n²])` -/
def P10183412682969123124.Spec : Prop :=
  ∀ n, P10183412682969123124.a n = A199209 n

end A199209

/-! ## A199209.P2427367511970423321

`A321643(Δ[n²])`
-/

namespace A199209.P2427367511970423321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321643 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A199209.P2427367511970423321

namespace A199209

/-- `A321643(Δ[n²])` -/
def P2427367511970423321.Spec : Prop :=
  ∀ n, P2427367511970423321.a n = A199209 n

end A199209

/-! ## A199209.P17177331735118582547

`A082605(2*n+3)`
-/

namespace A199209.P17177331735118582547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082605 (2 * n + 3)

end

end A199209.P17177331735118582547

namespace A199209

/-- `A082605(2*n+3)` -/
def P17177331735118582547.Spec : Prop :=
  ∀ n, P17177331735118582547.a n = A199209 n

end A199209

/-! ## A199209.P13633963376124128484

`record[Δ[A098646(n+1)]+1]`
-/

namespace A199209.P13633963376124128484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098646 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199209.P13633963376124128484

namespace A199209

/-- `record[Δ[A098646(n+1)]+1]` -/
def P13633963376124128484.Spec : Prop :=
  ∀ n, P13633963376124128484.a n = A199209 n

end A199209

/-! ## A199209.P1732516879405949774

`∩[A082605(n), A083575(n)]`
-/

namespace A199209.P1732516879405949774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199209.P1732516879405949774

namespace A199209

/-- `∩[A082605(n), A083575(n)]` -/
def P1732516879405949774.Spec : Prop :=
  ∀ n, (P1732516879405949774.a n : ℤ) = A199209 n

end A199209

/-! ## A199209.P9796429593788871110

`∩[A082605(n), A321643(n)]`
-/

namespace A199209.P9796429593788871110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199209.P9796429593788871110

namespace A199209

/-- `∩[A082605(n), A321643(n)]` -/
def P9796429593788871110.Spec : Prop :=
  ∀ n, (P9796429593788871110.a n : ℤ) = A199209 n

end A199209

/-! ## A199209.P11395430828080097730

`∩[A083575(n), A321643(n)]`
-/

namespace A199209.P11395430828080097730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199209.P11395430828080097730

namespace A199209

/-- `∩[A083575(n), A321643(n)]` -/
def P11395430828080097730.Spec : Prop :=
  ∀ n, (P11395430828080097730.a n : ℤ) = A199209 n

end A199209

/-! ## A199209.P17318156869346222420

`(A199115(n+1)+1)/2`
-/

namespace A199209.P17318156869346222420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199115 (n + 1) + 1 : ℚ) / 2

end

end A199209.P17318156869346222420

namespace A199209

/-- `(A199115(n+1)+1)/2` -/
def P17318156869346222420.Spec : Prop :=
  ∀ n, P17318156869346222420.a n = (A199209 n : ℚ)

theorem P17318156869346222420.correct : P17318156869346222420.Spec := by
  intro n
  simp only [A199209, Nat.add_sub_cancel, A199209.P17318156869346222420.a, A199209.P9937275797404371116.a, A199115, A199115.P17558246874276297654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199209

/-! ## A199209.P8524891357654946006

`(A305060(2*n+1)-A175161(2*n+1))/2`
-/

namespace A199209.P8524891357654946006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305060 (2 * n + 1) - A175161 (2 * n + 1) : ℚ) / 2

end

end A199209.P8524891357654946006

namespace A199209

/-- `(A305060(2*n+1)-A175161(2*n+1))/2` -/
def P8524891357654946006.Spec : Prop :=
  ∀ n, P8524891357654946006.a n = (A199209 n : ℚ)

end A199209

/-! ## A199209.P5228303051479664334

`gcd(A007920(n+1)*A321643(2*n+1), A321643(2*n+1))`
-/

namespace A199209.P5228303051479664334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007920 (n + 1) * A321643 (2 * n + 1)) (A321643 (2 * n + 1))

end

end A199209.P5228303051479664334

namespace A199209

/-- `gcd(A007920(n+1)*A321643(2*n+1), A321643(2*n+1))` -/
def P5228303051479664334.Spec : Prop :=
  ∀ n, (P5228303051479664334.a n : ℤ) = A199209 n

end A199209

/-! ## A199209.P9843454180411084665

`gcd(n*A083575(2*n+1), A083575(2*n+1))`
-/

namespace A199209.P9843454180411084665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A083575 (2 * n + 1)) (A083575 (2 * n + 1))

end

end A199209.P9843454180411084665

namespace A199209

/-- `gcd(n*A083575(2*n+1), A083575(2*n+1))` -/
def P9843454180411084665.Spec : Prop :=
  ∀ n, (P9843454180411084665.a n : ℤ) = A199209 n

end A199209

/-!
# A199210: a(n) = (11*4^n + 1)/3.

The programs for A199210, the canonical program `A199210.P18122782935245126621` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199210 has offset 0).

The definition of A199210 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*4^n+1)/3` (program `A199210.P11554514031035115397`, by `A199210.P11554514031035115397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199210.P18122782935245126621

`4*a(n-1)-1` with `a(0)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199210

/-- `4*a(n-1)-1` -/
def P18122782935245126621.Spec : Prop :=
  ∀ n, P18122782935245126621.a n = A199210 n

theorem P18122782935245126621.correct : P18122782935245126621.Spec := by
  intro n
  simp only [A199210]

end A199210

/-! ## A199210.P11554514031035115397

`(11*4^n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199210.P11554514031035115397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * 4 ^ n + 1 : ℚ) / 3

end

end A199210.P11554514031035115397

namespace A199210

/-- `(11*4^n+1)/3` -/
def P11554514031035115397.Spec : Prop :=
  ∀ n, P11554514031035115397.a n = (A199210 n : ℚ)

theorem P11554514031035115397.correct : P11554514031035115397.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199210, Nat.add_sub_cancel, A199210.P11554514031035115397.a, A199210.P18122782935245126621.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199210, Nat.add_sub_cancel, A199210.P11554514031035115397.a, A199210.P18122782935245126621.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199210

/-! ## A199210.P5872227695811506073

`ogf((4-5x)/(1-5x+4x^2))`
-/

namespace A199210.P5872227695811506073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5] [1, -5, 4] n

end

end A199210.P5872227695811506073

namespace A199210

/-- `ogf((4-5x)/(1-5x+4x^2))` -/
def P5872227695811506073.Spec : Prop :=
  ∀ n, P5872227695811506073.a n = A199210 n

end A199210

/-! ## A199210.P18406342503931205629

`lcm(4, a(n-1))-1` with `a(0)=4, a(1)=15`
-/

namespace A199210.P18406342503931205629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 15] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) - 1

end

end A199210.P18406342503931205629

namespace A199210

/-- `lcm(4, a(n-1))-1` -/
def P18406342503931205629.Spec : Prop :=
  ∀ n, P18406342503931205629.a n = A199210 n

end A199210

/-! ## A199210.P10450118236565465316

`a(n-1)/(1/2)²-1` with `a(0)=4`
-/

namespace A199210.P10450118236565465316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - 1

end

end A199210.P10450118236565465316

namespace A199210

/-- `a(n-1)/(1/2)²-1` -/
def P10450118236565465316.Spec : Prop :=
  ∀ n, P10450118236565465316.a n = (A199210 n : ℚ)

end A199210

/-! ## A199210.P12585531351181053940

`record[1-a(n-1)-a(n-1)]` with `a(0)=4`
-/

namespace A199210.P12585531351181053940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199210.P12585531351181053940

namespace A199210

/-- `record[1-a(n-1)-a(n-1)]` -/
def P12585531351181053940.Spec : Prop :=
  ∀ n, P12585531351181053940.a n = A199210 n

end A199210

/-! ## A199210.P77037243546891310

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-1` with `a(0)=4`
-/

namespace A199210.P77037243546891310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - 1)))

end

end A199210.P77037243546891310

namespace A199210

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-1` -/
def P77037243546891310.Spec : Prop :=
  ∀ n, P77037243546891310.a n = A199210 n

theorem P77037243546891310.correct : P77037243546891310.Spec := by
  intro n
  simp only [A199210, Nat.add_sub_cancel, A199210.P77037243546891310.a, A199210.P18122782935245126621.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199210

/-! ## A199210.P8753493427445403587

`a(n-1)-(1-a(n-1)-a(n-1)-a(n-1))` with `a(0)=4`
-/

namespace A199210.P8753493427445403587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A199210.P8753493427445403587

namespace A199210

/-- `a(n-1)-(1-a(n-1)-a(n-1)-a(n-1))` -/
def P8753493427445403587.Spec : Prop :=
  ∀ n, P8753493427445403587.a n = A199210 n

theorem P8753493427445403587.correct : P8753493427445403587.Spec := by
  intro n
  simp only [A199210, Nat.add_sub_cancel, A199210.P8753493427445403587.a, A199210.P18122782935245126621.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199210

/-! ## A199210.P11271622852841898242

`A383953(2*n)`
-/

namespace A199210.P11271622852841898242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383953 (2 * n)

end

end A199210.P11271622852841898242

namespace A199210

/-- `A383953(2*n)` -/
def P11271622852841898242.Spec : Prop :=
  ∀ n, P11271622852841898242.a n = A199210 n

end A199210

/-! ## A199210.P6771592820711662215

`A136336(2*(n+1))`
-/

namespace A199210.P6771592820711662215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136336 (2 * (n + 1))

end

end A199210.P6771592820711662215

namespace A199210

/-- `A136336(2*(n+1))` -/
def P6771592820711662215.Spec : Prop :=
  ∀ n, P6771592820711662215.a n = A199210 n

end A199210

/-! ## A199210.P4431419016201603039

`A340627(2*n)+1`
-/

namespace A199210.P4431419016201603039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340627 (2 * n) + 1

end

end A199210.P4431419016201603039

namespace A199210

/-- `A340627(2*n)+1` -/
def P4431419016201603039.Spec : Prop :=
  ∀ n, P4431419016201603039.a n = A199210 n

end A199210

/-! ## A199210.P3290036539857238563

`A052997(Δ[n²])+1`
-/

namespace A199210.P3290036539857238563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052997 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A199210.P3290036539857238563

namespace A199210

/-- `A052997(Δ[n²])+1` -/
def P3290036539857238563.Spec : Prop :=
  ∀ n, P3290036539857238563.a n = A199210 n

end A199210

/-! ## A199210.P327622407279377666

`A277954(Δ[n²])+1`
-/

namespace A199210.P327622407279377666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277954 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A199210.P327622407279377666

namespace A199210

/-- `A277954(Δ[n²])+1` -/
def P327622407279377666.Spec : Prop :=
  ∀ n, P327622407279377666.a n = A199210 n

end A199210

/-! ## A199210.P16503199991286224904

`A144472(2*(n+1))+2`
-/

namespace A199210.P16503199991286224904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144472 (2 * (n + 1)) + 2

end

end A199210.P16503199991286224904

namespace A199210

/-- `A144472(2*(n+1))+2` -/
def P16503199991286224904.Spec : Prop :=
  ∀ n, P16503199991286224904.a n = A199210 n

end A199210

/-! ## A199210.P14272553562666052975

`record[A077925(n+2)+2^n]`
-/

namespace A199210.P14272553562666052975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (n + 2) + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199210.P14272553562666052975

namespace A199210

/-- `record[A077925(n+2)+2^n]` -/
def P14272553562666052975.Spec : Prop :=
  ∀ n, P14272553562666052975.a n = A199210 n

end A199210

/-! ## A199210.P16169331487015762918

`or(2, A052997(2*n+1))+1`
-/

namespace A199210.P16169331487015762918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A052997 (2 * n + 1)) + 1

end

end A199210.P16169331487015762918

namespace A199210

/-- `or(2, A052997(2*n+1))+1` -/
def P16169331487015762918.Spec : Prop :=
  ∀ n, P16169331487015762918.a n = A199210 n

end A199210

/-! ## A199210.P1385368219077002830

`A087289(n)+A020989(n)`
-/

namespace A199210.P1385368219077002830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087289 n + A020989 n

end

end A199210.P1385368219077002830

namespace A199210

/-- `A087289(n)+A020989(n)` -/
def P1385368219077002830.Spec : Prop :=
  ∀ n, P1385368219077002830.a n = A199210 n

end A199210

/-! ## A199210.P16019893885268085682

`A072197(n)+A047849(n)`
-/

namespace A199210.P16019893885268085682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 n + A047849 n

end

end A199210.P16019893885268085682

namespace A199210

/-- `A072197(n)+A047849(n)` -/
def P16019893885268085682.Spec : Prop :=
  ∀ n, P16019893885268085682.a n = A199210 n

end A199210

/-! ## A199210.P15650702278194981094

`A136412(n)+A004171(n)`
-/

namespace A199210.P15650702278194981094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136412 n + A004171 n

end

end A199210.P15650702278194981094

namespace A199210

/-- `A136412(n)+A004171(n)` -/
def P15650702278194981094.Spec : Prop :=
  ∀ n, P15650702278194981094.a n = A199210 n

end A199210

/-! ## A199210.P15175810958297571627

`A140660(n)+A020988(n)`
-/

namespace A199210.P15175810958297571627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140660 n + A020988 n

end

end A199210.P15175810958297571627

namespace A199210

/-- `A140660(n)+A020988(n)` -/
def P15175810958297571627.Spec : Prop :=
  ∀ n, P15175810958297571627.a n = A199210 n

end A199210

/-!
# A199211: a(n) = 11*4^n + 1.

The programs for A199211, the canonical program `A199211.P11718518941237776519` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199211 has offset 0).

The definition of A199211 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*4^n+1` (program `A199211.P11718518941237776519`, by `A199211.P11718518941237776519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199211.P11718518941237776519

`11*4^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199211

/-- `11*4^n+1` -/
def P11718518941237776519.Spec : Prop :=
  ∀ n, (P11718518941237776519.a n : ℤ) = A199211 n

theorem P11718518941237776519.correct : P11718518941237776519.Spec := by
  intro n
  simp only [A199211]

end A199211

/-! ## A199211.P142204805250197896

`3*A199210(n)`
-/

namespace A199211.P142204805250197896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199210 n

end

end A199211.P142204805250197896

namespace A199211

/-- `3*A199210(n)` -/
def P142204805250197896.Spec : Prop :=
  ∀ n, P142204805250197896.a n = A199211 n

end A199211

/-! ## A199211.P7596775136084280162

`ogf((12-15x)/(1-5x+4x^2))`
-/

namespace A199211.P7596775136084280162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -15] [1, -5, 4] n

end

end A199211.P7596775136084280162

namespace A199211

/-- `ogf((12-15x)/(1-5x+4x^2))` -/
def P7596775136084280162.Spec : Prop :=
  ∀ n, P7596775136084280162.a n = A199211 n

end A199211

/-! ## A199211.P8892550358097242533

`4*(a(n-1)-3/4)` with `a(0)=12`
-/

namespace A199211.P8892550358097242533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [12] fun n a =>
  4 * (a (n - 1) - (3 : ℚ) / 4)

end

end A199211.P8892550358097242533

namespace A199211

/-- `4*(a(n-1)-3/4)` -/
def P8892550358097242533.Spec : Prop :=
  ∀ n, P8892550358097242533.a n = (A199211 n : ℚ)

theorem P8892550358097242533.correct : P8892550358097242533.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199211, Nat.add_sub_cancel, A199211.P8892550358097242533.a, A199211.P11718518941237776519.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199211, Nat.add_sub_cancel, A199211.P8892550358097242533.a, A199211.P11718518941237776519.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199211

/-! ## A199211.P18190431543488327745

`A083683(2*n)`
-/

namespace A199211.P18190431543488327745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083683 (2 * n)

end

end A199211.P18190431543488327745

namespace A199211

/-- `A083683(2*n)` -/
def P18190431543488327745.Spec : Prop :=
  ∀ n, P18190431543488327745.a n = A199211 n

end A199211

/-! ## A199211.P13456148819163213172

`3*A383953(2*n)`
-/

namespace A199211.P13456148819163213172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A383953 (2 * n)

end

end A199211.P13456148819163213172

namespace A199211

/-- `3*A383953(2*n)` -/
def P13456148819163213172.Spec : Prop :=
  ∀ n, P13456148819163213172.a n = A199211 n

end A199211

/-! ## A199211.P11640325435562458251

`3*A136336(2*(n+1))`
-/

namespace A199211.P11640325435562458251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A136336 (2 * (n + 1))

end

end A199211.P11640325435562458251

namespace A199211

/-- `3*A136336(2*(n+1))` -/
def P11640325435562458251.Spec : Prop :=
  ∀ n, P11640325435562458251.a n = A199211 n

end A199211

/-! ## A199211.P7203453978881829184

`record[Δ[A140721(n+1)]+1]`
-/

namespace A199211.P7203453978881829184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140721 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199211.P7203453978881829184

namespace A199211

/-- `record[Δ[A140721(n+1)]+1]` -/
def P7203453978881829184.Spec : Prop :=
  ∀ n, P7203453978881829184.a n = A199211 n

end A199211

/-! ## A199211.P7355782953557968392

`ceil(A122041(2*n+1)/2)`
-/

namespace A199211.P7355782953557968392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A122041 (2 * n + 1) : ℚ) / 2⌉

end

end A199211.P7355782953557968392

namespace A199211

/-- `ceil(A122041(2*n+1)/2)` -/
def P7355782953557968392.Spec : Prop :=
  ∀ n, P7355782953557968392.a n = A199211 n

end A199211

/-! ## A199211.P3446330803537498238

`A309779(n+1)%A206372(n)`
-/

namespace A199211.P3446330803537498238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309779 (n + 1)) (A206372 n)

end

end A199211.P3446330803537498238

namespace A199211

/-- `A309779(n+1)%A206372(n)` -/
def P3446330803537498238.Spec : Prop :=
  ∀ n, P3446330803537498238.a n = A199211 n

end A199211

/-! ## A199211.P4539460348509640326

`record[Δ[A038470(n+1)]]`
-/

namespace A199211.P4539460348509640326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038470 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199211.P4539460348509640326

namespace A199211

/-- `record[Δ[A038470(n+1)]]` -/
def P4539460348509640326.Spec : Prop :=
  ∀ n, P4539460348509640326.a n = A199211 n

end A199211

/-!
# A199212: a(n) = 2*5^n+1.

The programs for A199212, the canonical program `A199212.P17062083861671985709` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199212 has offset 0).

The definition of A199212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*5^n+1` (program `A199212.P17062083861671985709`, by `A199212.P17062083861671985709.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199212.P17062083861671985709

`2*5^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199212

/-- `2*5^n+1` -/
def P17062083861671985709.Spec : Prop :=
  ∀ n, (P17062083861671985709.a n : ℤ) = A199212 n

theorem P17062083861671985709.correct : P17062083861671985709.Spec := by
  intro n
  simp only [A199212]

end A199212

/-! ## A199212.P9847116171291940125

`or(1, 2*5^n)`
-/

namespace A199212.P9847116171291940125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * 5 ^ n)

end

end A199212.P9847116171291940125

namespace A199212

/-- `or(1, 2*5^n)` -/
def P9847116171291940125.Spec : Prop :=
  ∀ n, (P9847116171291940125.a n : ℤ) = A199212 n

end A199212

/-! ## A199212.P5686944437264856933

`xor(1, 2*5^n)`
-/

namespace A199212.P5686944437264856933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * 5 ^ n)

end

end A199212.P5686944437264856933

namespace A199212

/-- `xor(1, 2*5^n)` -/
def P5686944437264856933.Spec : Prop :=
  ∀ n, (P5686944437264856933.a n : ℤ) = A199212 n

end A199212

/-! ## A199212.P4352720166502640632

`ogf((3-7x)/(1-6x+5x^2))`
-/

namespace A199212.P4352720166502640632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -7] [1, -6, 5] n

end

end A199212.P4352720166502640632

namespace A199212

/-- `ogf((3-7x)/(1-6x+5x^2))` -/
def P4352720166502640632.Spec : Prop :=
  ∀ n, P4352720166502640632.a n = A199212 n

end A199212

/-! ## A199212.P10458183107429973825

`or(2, Δ[5^n])/2`
-/

namespace A199212.P10458183107429973825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A199212.P10458183107429973825

namespace A199212

/-- `or(2, Δ[5^n])/2` -/
def P10458183107429973825.Spec : Prop :=
  ∀ n, P10458183107429973825.a n = (A199212 n : ℚ)

end A199212

/-! ## A199212.P10867286616195809078

`xor(2, Δ[5^n])/2`
-/

namespace A199212.P10867286616195809078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A199212.P10867286616195809078

namespace A199212

/-- `xor(2, Δ[5^n])/2` -/
def P10867286616195809078.Spec : Prop :=
  ∀ n, P10867286616195809078.a n = (A199212 n : ℚ)

end A199212

/-! ## A199212.P7242300975965915653

`∑[5*a(n-1)]` with `a(0)=3, a(1)=8`
-/

namespace A199212.P7242300975965915653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199212.P7242300975965915653

namespace A199212

/-- `∑[5*a(n-1)]` -/
def P7242300975965915653.Spec : Prop :=
  ∀ n, (P7242300975965915653.a n : ℤ) = A199212 n

end A199212

/-! ## A199212.P3942460702075466698

`abs(4-5*a(n-1))` with `a(0)=3`
-/

namespace A199212.P3942460702075466698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |4 - 5 * a (n - 1)|

end

end A199212.P3942460702075466698

namespace A199212

/-- `abs(4-5*a(n-1))` -/
def P3942460702075466698.Spec : Prop :=
  ∀ n, P3942460702075466698.a n = A199212 n

end A199212

/-! ## A199212.P15617054914730087538

`and(5*a(n-1), -5)` with `a(0)=3`
-/

namespace A199212.P15617054914730087538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land (5 * a (n - 1)) (-5)

end

end A199212.P15617054914730087538

namespace A199212

/-- `and(5*a(n-1), -5)` -/
def P15617054914730087538.Spec : Prop :=
  ∀ n, P15617054914730087538.a n = A199212 n

end A199212

/-! ## A199212.P1017288484756291855

`5*(a(n-1)-4/5)` with `a(0)=3`
-/

namespace A199212.P1017288484756291855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  5 * (a (n - 1) - (4 : ℚ) / 5)

end

end A199212.P1017288484756291855

namespace A199212

/-- `5*(a(n-1)-4/5)` -/
def P1017288484756291855.Spec : Prop :=
  ∀ n, P1017288484756291855.a n = (A199212 n : ℚ)

theorem P1017288484756291855.correct : P1017288484756291855.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199212, Nat.add_sub_cancel, A199212.P1017288484756291855.a, A199212.P17062083861671985709.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199212, Nat.add_sub_cancel, A199212.P1017288484756291855.a, A199212.P17062083861671985709.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199212

/-! ## A199212.P4006962610641502944

`record[5*a(n-2)-4]` with `a(0)=3, a(1)=0`
-/

namespace A199212.P4006962610641502944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  5 * f1 (n - 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199212.P4006962610641502944

namespace A199212

/-- `record[5*a(n-2)-4]` -/
def P4006962610641502944.Spec : Prop :=
  ∀ n, P4006962610641502944.a n = A199212 n

end A199212

/-! ## A199212.P5063597479946899145

`-or(4, -(5*a(n-1)))` with `a(0)=3`
-/

namespace A199212.P5063597479946899145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  -Int.lor 4 (-(5 * a (n - 1)))

end

end A199212.P5063597479946899145

namespace A199212

/-- `-or(4, -(5*a(n-1)))` -/
def P5063597479946899145.Spec : Prop :=
  ∀ n, P5063597479946899145.a n = A199212 n

end A199212

/-! ## A199212.P4058030363757819054

`-xor(4, -(5*a(n-1)))` with `a(0)=3`
-/

namespace A199212.P4058030363757819054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  -Int.xor 4 (-(5 * a (n - 1)))

end

end A199212.P4058030363757819054

namespace A199212

/-- `-xor(4, -(5*a(n-1)))` -/
def P4058030363757819054.Spec : Prop :=
  ∀ n, P4058030363757819054.a n = A199212 n

end A199212

/-! ## A199212.P4533829298959454275

`floor(a(n-1)+4*(a(n-1)-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A199212.P4533829298959454275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 4 * (a (n - 1) - 1)

end

end A199212.P4533829298959454275

namespace A199212

/-- `floor(a(n-1)+4*(a(n-1)-1))` -/
def P4533829298959454275.Spec : Prop :=
  ∀ n, P4533829298959454275.a n = A199212 n

theorem P4533829298959454275.correct : P4533829298959454275.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199212, Nat.add_sub_cancel, A199212.P4533829298959454275.a, A199212.P17062083861671985709.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199212, Nat.add_sub_cancel, A199212.P4533829298959454275.a, A199212.P17062083861671985709.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199212

/-! ## A199212.P11651124351761680541

`floor(a(n-1)-4*(1-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A199212.P11651124351761680541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - 4 * (1 - a (n - 1))

end

end A199212.P11651124351761680541

namespace A199212

/-- `floor(a(n-1)-4*(1-a(n-1)))` -/
def P11651124351761680541.Spec : Prop :=
  ∀ n, P11651124351761680541.a n = A199212 n

theorem P11651124351761680541.correct : P11651124351761680541.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199212, Nat.add_sub_cancel, A199212.P11651124351761680541.a, A199212.P17062083861671985709.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199212, Nat.add_sub_cancel, A199212.P11651124351761680541.a, A199212.P17062083861671985709.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199212

/-! ## A199212.P4660859326286358269

`(A199215(n)+1)/2`
-/

namespace A199212.P4660859326286358269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199215 n + 1 : ℚ) / 2

end

end A199212.P4660859326286358269

namespace A199212

/-- `(A199215(n)+1)/2` -/
def P4660859326286358269.Spec : Prop :=
  ∀ n, P4660859326286358269.a n = (A199212 n : ℚ)

theorem P4660859326286358269.correct : P4660859326286358269.Spec := by
  intro n
  simp only [A199212, Nat.add_sub_cancel, A199212.P4660859326286358269.a, A199212.P17062083861671985709.a, A199215, A199215.P11291765218038879646.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199212

/-! ## A199212.P2133281568732753898

`(A198763(n)+3)/2`
-/

namespace A199212.P2133281568732753898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198763 n + 3 : ℚ) / 2

end

end A199212.P2133281568732753898

namespace A199212

/-- `(A198763(n)+3)/2` -/
def P2133281568732753898.Spec : Prop :=
  ∀ n, P2133281568732753898.a n = (A199212 n : ℚ)

theorem P2133281568732753898.correct : P2133281568732753898.Spec := by
  intro n
  simp only [A199212, Nat.add_sub_cancel, A199212.P2133281568732753898.a, A199212.P17062083861671985709.a, A198763, A198763.P9822682624418847043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199212

/-! ## A199212.P12915538175087358365

`(Δ[A104745(n)]+1)/2`
-/

namespace A199212.P12915538175087358365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104745 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A199212.P12915538175087358365

namespace A199212

/-- `(Δ[A104745(n)]+1)/2` -/
def P12915538175087358365.Spec : Prop :=
  ∀ n, P12915538175087358365.a n = (A199212 n : ℚ)

theorem P12915538175087358365.correct : P12915538175087358365.Spec := by
  intro n
  simp only [A199212, Nat.add_sub_cancel, A199212.P12915538175087358365.f1, A199212.P12915538175087358365.a, A199212.P17062083861671985709.a, A104745, A104745.P954463826829694829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199212

/-! ## A199212.P3341075800015012730

`A097804(n)/3`
-/

namespace A199212.P3341075800015012730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097804 n : ℚ) / 3

end

end A199212.P3341075800015012730

namespace A199212

/-- `A097804(n)/3` -/
def P3341075800015012730.Spec : Prop :=
  ∀ n, P3341075800015012730.a n = (A199212 n : ℚ)

theorem P3341075800015012730.correct : P3341075800015012730.Spec := by
  intro n
  simp only [A199212, Nat.add_sub_cancel, A199212.P3341075800015012730.a, A199212.P17062083861671985709.a, A097804, A097804.P7234613398924251718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199212

/-! ## A199212.P8035985166829120707

`(A199216(n)+2)/3`
-/

namespace A199212.P8035985166829120707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199216 n + 2 : ℚ) / 3

end

end A199212.P8035985166829120707

namespace A199212

/-- `(A199216(n)+2)/3` -/
def P8035985166829120707.Spec : Prop :=
  ∀ n, P8035985166829120707.a n = (A199212 n : ℚ)

theorem P8035985166829120707.correct : P8035985166829120707.Spec := by
  intro n
  simp only [A199212, Nat.add_sub_cancel, A199212.P8035985166829120707.a, A199212.P17062083861671985709.a, A199216, A199216.P4532041409865639420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199212

/-!
# A199213: a(n) = (3*5^n+1)/2.

The programs for A199213, the canonical program `A199213.P2741960896931320341` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199213 has offset 0).

The definition of A199213 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*5^n+1)/2` (program `A199213.P15059260340304938780`, by `A199213.P15059260340304938780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199213.P15059260340304938780

`(3*5^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199213.P15059260340304938780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 5 ^ n + 1 : ℚ) / 2

end

end A199213.P15059260340304938780

namespace A199213

/-- `(3*5^n+1)/2` -/
def P15059260340304938780.Spec : Prop :=
  ∀ n, P15059260340304938780.a n = (A199213 n : ℚ)

theorem P15059260340304938780.correct : P15059260340304938780.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199213, Nat.add_sub_cancel, A199213.P15059260340304938780.a, A199213.P2741960896931320341.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199213, Nat.add_sub_cancel, A199213.P15059260340304938780.a, A199213.P2741960896931320341.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199213

/-! ## A199213.P2741960896931320341

`5*a(n-1)-2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199213

/-- `5*a(n-1)-2` -/
def P2741960896931320341.Spec : Prop :=
  ∀ n, P2741960896931320341.a n = A199213 n

theorem P2741960896931320341.correct : P2741960896931320341.Spec := by
  intro n
  simp only [A199213]

end A199213

/-! ## A199213.P15812800180847207935

`2*A083065(n)`
-/

namespace A199213.P15812800180847207935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083065 n

end

end A199213.P15812800180847207935

namespace A199213

/-- `2*A083065(n)` -/
def P15812800180847207935.Spec : Prop :=
  ∀ n, P15812800180847207935.a n = A199213 n

end A199213

/-! ## A199213.P10243005437003695017

`ogf((2-4x)/(1-6x+5x^2))`
-/

namespace A199213.P10243005437003695017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -6, 5] n

end

end A199213.P10243005437003695017

namespace A199213

/-- `ogf((2-4x)/(1-6x+5x^2))` -/
def P10243005437003695017.Spec : Prop :=
  ∀ n, P10243005437003695017.a n = A199213 n

end A199213

/-! ## A199213.P13038832268125339749

`round(lcm(3, 5^n)/2)`
-/

namespace A199213.P13038832268125339749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 3 (5 ^ n) : ℚ) / 2)

end

end A199213.P13038832268125339749

namespace A199213

/-- `round(lcm(3, 5^n)/2)` -/
def P13038832268125339749.Spec : Prop :=
  ∀ n, P13038832268125339749.a n = A199213 n

end A199213

/-! ## A199213.P13723694916206869331

`lcm(5, a(n-1))-2` with `a(0)=2`
-/

namespace A199213.P13723694916206869331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - 2

end

end A199213.P13723694916206869331

namespace A199213

/-- `lcm(5, a(n-1))-2` -/
def P13723694916206869331.Spec : Prop :=
  ∀ n, P13723694916206869331.a n = A199213 n

end A199213

/-! ## A199213.P2361972994256925198

`∑[lcm(2, floor(6*5^(n-1)))]`
-/

namespace A199213.P2361972994256925198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊6 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199213.P2361972994256925198

namespace A199213

/-- `∑[lcm(2, floor(6*5^(n-1)))]` -/
def P2361972994256925198.Spec : Prop :=
  ∀ n, (P2361972994256925198.a n : ℤ) = A199213 n

end A199213

/-! ## A199213.P11559093001386759523

`a(n-1)/(1-4/5)-2` with `a(0)=2`
-/

namespace A199213.P11559093001386759523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) - 2

end

end A199213.P11559093001386759523

namespace A199213

/-- `a(n-1)/(1-4/5)-2` -/
def P11559093001386759523.Spec : Prop :=
  ∀ n, P11559093001386759523.a n = (A199213 n : ℚ)

end A199213

/-! ## A199213.P13236746257316735006

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)-2` with `a(0)=2`
-/

namespace A199213.P13236746257316735006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - 2))))

end

end A199213.P13236746257316735006

namespace A199213

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)-2` -/
def P13236746257316735006.Spec : Prop :=
  ∀ n, P13236746257316735006.a n = A199213 n

theorem P13236746257316735006.correct : P13236746257316735006.Spec := by
  intro n
  simp only [A199213, Nat.add_sub_cancel, A199213.P13236746257316735006.a, A199213.P2741960896931320341.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199213

/-! ## A199213.P17524060476432549526

`a(n-1)-(2-a(n-1)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=2`
-/

namespace A199213.P17524060476432549526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (2 - a (n - 1) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A199213.P17524060476432549526

namespace A199213

/-- `a(n-1)-(2-a(n-1)-a(n-1)-a(n-1)-a(n-1))` -/
def P17524060476432549526.Spec : Prop :=
  ∀ n, P17524060476432549526.a n = A199213 n

theorem P17524060476432549526.correct : P17524060476432549526.Spec := by
  intro n
  simp only [A199213, Nat.add_sub_cancel, A199213.P17524060476432549526.a, A199213.P2741960896931320341.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199213

/-! ## A199213.P4417240556224700323

`Δ[A268414(n)]`
-/

namespace A199213.P4417240556224700323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199213.P4417240556224700323

namespace A199213

/-- `Δ[A268414(n)]` -/
def P4417240556224700323.Spec : Prop :=
  ∀ n, P4417240556224700323.a n = A199213 n

end A199213

/-! ## A199213.P5774847117158420303

`A057651(n)+1`
-/

namespace A199213.P5774847117158420303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + 1

end

end A199213.P5774847117158420303

namespace A199213

/-- `A057651(n)+1` -/
def P5774847117158420303.Spec : Prop :=
  ∀ n, P5774847117158420303.a n = A199213 n

end A199213

/-! ## A199213.P15895308372495195116

`3-A165755(n)`
-/

namespace A199213.P15895308372495195116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A165755 n

end

end A199213.P15895308372495195116

namespace A199213

/-- `3-A165755(n)` -/
def P15895308372495195116.Spec : Prop :=
  ∀ n, P15895308372495195116.a n = A199213 n

end A199213

/-! ## A199213.P2716751007597687479

`∑[A003948(n)]+1`
-/

namespace A199213.P2716751007597687479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A199213.P2716751007597687479

namespace A199213

/-- `∑[A003948(n)]+1` -/
def P2716751007597687479.Spec : Prop :=
  ∀ n, P2716751007597687479.a n = A199213 n

end A199213

/-! ## A199213.P12515833500835314769

`∑[2*A005053(n)]`
-/

namespace A199213.P12515833500835314769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199213.P12515833500835314769

namespace A199213

/-- `∑[2*A005053(n)]` -/
def P12515833500835314769.Spec : Prop :=
  ∀ n, P12515833500835314769.a n = A199213 n

end A199213

/-! ## A199213.P5228880288391680241

`A097162(2*n)+1`
-/

namespace A199213.P5228880288391680241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097162 (2 * n) + 1

end

end A199213.P5228880288391680241

namespace A199213

/-- `A097162(2*n)+1` -/
def P5228880288391680241.Spec : Prop :=
  ∀ n, P5228880288391680241.a n = A199213 n

end A199213

/-! ## A199213.P1235677885688586508

`2*(A125833(n)+1)`
-/

namespace A199213.P1235677885688586508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A125833 n + 1)

end

end A199213.P1235677885688586508

namespace A199213

/-- `2*(A125833(n)+1)` -/
def P1235677885688586508.Spec : Prop :=
  ∀ n, P1235677885688586508.a n = A199213 n

end A199213

/-! ## A199213.P8534407882294044624

`A238366(2*n)+1`
-/

namespace A199213.P8534407882294044624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238366 (2 * n) + 1

end

end A199213.P8534407882294044624

namespace A199213

/-- `A238366(2*n)+1` -/
def P8534407882294044624.Spec : Prop :=
  ∀ n, P8534407882294044624.a n = A199213 n

end A199213

/-! ## A199213.P4699397170170002449

`A294566(2*(n+1))`
-/

namespace A199213.P4699397170170002449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294566 (2 * (n + 1))

end

end A199213.P4699397170170002449

namespace A199213

/-- `A294566(2*(n+1))` -/
def P4699397170170002449.Spec : Prop :=
  ∀ n, P4699397170170002449.a n = A199213 n

end A199213

/-! ## A199213.P16606362739459201935

`A198762(n)/2+1`
-/

namespace A199213.P16606362739459201935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198762 n : ℚ) / 2 + 1

end

end A199213.P16606362739459201935

namespace A199213

/-- `A198762(n)/2+1` -/
def P16606362739459201935.Spec : Prop :=
  ∀ n, P16606362739459201935.a n = (A199213 n : ℚ)

end A199213

/-!
# A199214: a(n) = 3*5^n+1.

The programs for A199214, the canonical program `A199214.P12604043165413767863` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199214 has offset 0).

The definition of A199214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*5^n+1` (program `A199214.P12604043165413767863`, by `A199214.P12604043165413767863.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199214.P12604043165413767863

`3*5^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199214

/-- `3*5^n+1` -/
def P12604043165413767863.Spec : Prop :=
  ∀ n, (P12604043165413767863.a n : ℤ) = A199214 n

theorem P12604043165413767863.correct : P12604043165413767863.Spec := by
  intro n
  simp only [A199214]

end A199214

/-! ## A199214.P12769248824477803437

`4*A083065(n)`
-/

namespace A199214.P12769248824477803437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A083065 n

end

end A199214.P12769248824477803437

namespace A199214

/-- `4*A083065(n)` -/
def P12769248824477803437.Spec : Prop :=
  ∀ n, P12769248824477803437.a n = A199214 n

end A199214

/-! ## A199214.P3151684810638605194

`ogf((4-8x)/(1-6x+5x^2))`
-/

namespace A199214.P3151684810638605194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -8] [1, -6, 5] n

end

end A199214.P3151684810638605194

namespace A199214

/-- `ogf((4-8x)/(1-6x+5x^2))` -/
def P3151684810638605194.Spec : Prop :=
  ∀ n, P3151684810638605194.a n = A199214 n

end A199214

/-! ## A199214.P3516592115294317170

`∑[5*a(n-1)]` with `a(0)=4, a(1)=12`
-/

namespace A199214.P3516592115294317170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 12] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199214.P3516592115294317170

namespace A199214

/-- `∑[5*a(n-1)]` -/
def P3516592115294317170.Spec : Prop :=
  ∀ n, (P3516592115294317170.a n : ℤ) = A199214 n

end A199214

/-! ## A199214.P9116094695404209188

`abs(4-5*a(n-1))` with `a(0)=4`
-/

namespace A199214.P9116094695404209188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |4 - 5 * a (n - 1)|

end

end A199214.P9116094695404209188

namespace A199214

/-- `abs(4-5*a(n-1))` -/
def P9116094695404209188.Spec : Prop :=
  ∀ n, P9116094695404209188.a n = A199214 n

end A199214

/-! ## A199214.P15821343635179205

`5*(a(n-1)-4/5)` with `a(0)=4`
-/

namespace A199214.P15821343635179205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  5 * (a (n - 1) - (4 : ℚ) / 5)

end

end A199214.P15821343635179205

namespace A199214

/-- `5*(a(n-1)-4/5)` -/
def P15821343635179205.Spec : Prop :=
  ∀ n, P15821343635179205.a n = (A199214 n : ℚ)

theorem P15821343635179205.correct : P15821343635179205.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199214, Nat.add_sub_cancel, A199214.P15821343635179205.a, A199214.P12604043165413767863.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199214, Nat.add_sub_cancel, A199214.P15821343635179205.a, A199214.P12604043165413767863.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199214

/-! ## A199214.P5023770147665952046

`lcm(2, 4-5*a(n-1))` with `a(0)=4`
-/

namespace A199214.P5023770147665952046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Int.lcm 2 (4 - (5 * a (n - 1) : ℤ))

end

end A199214.P5023770147665952046

namespace A199214

/-- `lcm(2, 4-5*a(n-1))` -/
def P5023770147665952046.Spec : Prop :=
  ∀ n, (P5023770147665952046.a n : ℤ) = A199214 n

end A199214

/-! ## A199214.P15610297089382360267

`xor(1, 5*a(n-1)-3)` with `a(0)=4`
-/

namespace A199214.P15610297089382360267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.xor 1 (5 * a (n - 1) - 3)

end

end A199214.P15610297089382360267

namespace A199214

/-- `xor(1, 5*a(n-1)-3)` -/
def P15610297089382360267.Spec : Prop :=
  ∀ n, P15610297089382360267.a n = A199214 n

end A199214

/-! ## A199214.P13380410407649612582

`lcm(4, 4-lcm(5, a(n-1)))` with `a(0)=4`
-/

namespace A199214.P13380410407649612582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Int.lcm 4 (4 - (Nat.lcm 5 (a (n - 1)) : ℤ))

end

end A199214.P13380410407649612582

namespace A199214

/-- `lcm(4, 4-lcm(5, a(n-1)))` -/
def P13380410407649612582.Spec : Prop :=
  ∀ n, (P13380410407649612582.a n : ℤ) = A199214 n

end A199214

/-! ## A199214.P3204364568939899698

`record[5*a(n-2)-4]` with `a(0)=4, a(1)=0`
-/

namespace A199214.P3204364568939899698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  5 * f1 (n - 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199214.P3204364568939899698

namespace A199214

/-- `record[5*a(n-2)-4]` -/
def P3204364568939899698.Spec : Prop :=
  ∀ n, P3204364568939899698.a n = A199214 n

end A199214

/-! ## A199214.P12685178072365235127

`floor(a(n-1)+4*(a(n-1)-1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A199214.P12685178072365235127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 4 * (a (n - 1) - 1)

end

end A199214.P12685178072365235127

namespace A199214

/-- `floor(a(n-1)+4*(a(n-1)-1))` -/
def P12685178072365235127.Spec : Prop :=
  ∀ n, P12685178072365235127.a n = A199214 n

theorem P12685178072365235127.correct : P12685178072365235127.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199214, Nat.add_sub_cancel, A199214.P12685178072365235127.a, A199214.P12604043165413767863.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199214, Nat.add_sub_cancel, A199214.P12685178072365235127.a, A199214.P12604043165413767863.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199214

/-! ## A199214.P9641212744286123759

`floor(a(n-1)-4*(1-a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A199214.P9641212744286123759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - 4 * (1 - a (n - 1))

end

end A199214.P9641212744286123759

namespace A199214

/-- `floor(a(n-1)-4*(1-a(n-1)))` -/
def P9641212744286123759.Spec : Prop :=
  ∀ n, P9641212744286123759.a n = A199214 n

theorem P9641212744286123759.correct : P9641212744286123759.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199214, Nat.add_sub_cancel, A199214.P9641212744286123759.a, A199214.P12604043165413767863.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199214, Nat.add_sub_cancel, A199214.P9641212744286123759.a, A199214.P12604043165413767863.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199214

/-! ## A199214.P5151007711367031245

`2*A199213(n)`
-/

namespace A199214.P5151007711367031245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199213 n

end

end A199214.P5151007711367031245

namespace A199214

/-- `2*A199213(n)` -/
def P5151007711367031245.Spec : Prop :=
  ∀ n, P5151007711367031245.a n = A199214 n

end A199214

/-! ## A199214.P15240487725093029639

`Δ[2*A268414(n)]`
-/

namespace A199214.P15240487725093029639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199214.P15240487725093029639

namespace A199214

/-- `Δ[2*A268414(n)]` -/
def P15240487725093029639.Spec : Prop :=
  ∀ n, P15240487725093029639.a n = A199214 n

end A199214

/-! ## A199214.P15534672465154359927

`∑[4*A005053(n)]`
-/

namespace A199214.P15534672465154359927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199214.P15534672465154359927

namespace A199214

/-- `∑[4*A005053(n)]` -/
def P15534672465154359927.Spec : Prop :=
  ∀ n, P15534672465154359927.a n = A199214 n

end A199214

/-! ## A199214.P14127129513827913545

`∑[lcm(4, A003948(n))]`
-/

namespace A199214.P14127129513827913545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A003948 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199214.P14127129513827913545

namespace A199214

/-- `∑[lcm(4, A003948(n))]` -/
def P14127129513827913545.Spec : Prop :=
  ∀ n, (P14127129513827913545.a n : ℤ) = A199214 n

end A199214

/-! ## A199214.P1245840886713188174

`2*(A057651(n)+1)`
-/

namespace A199214.P1245840886713188174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057651 n + 1)

end

end A199214.P1245840886713188174

namespace A199214

/-- `2*(A057651(n)+1)` -/
def P1245840886713188174.Spec : Prop :=
  ∀ n, P1245840886713188174.a n = A199214 n

end A199214

/-! ## A199214.P5660810719837267001

`4*(A125833(n)+1)`
-/

namespace A199214.P5660810719837267001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A125833 n + 1)

end

end A199214.P5660810719837267001

namespace A199214

/-- `4*(A125833(n)+1)` -/
def P5660810719837267001.Spec : Prop :=
  ∀ n, P5660810719837267001.a n = A199214 n

end A199214

/-! ## A199214.P10376468041966565715

`2*(3-A165755(n))`
-/

namespace A199214.P10376468041966565715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 - A165755 n)

end

end A199214.P10376468041966565715

namespace A199214

/-- `2*(3-A165755(n))` -/
def P10376468041966565715.Spec : Prop :=
  ∀ n, P10376468041966565715.a n = A199214 n

end A199214

/-! ## A199214.P7455616833519900932

`2*(A097162(2*n)+1)`
-/

namespace A199214.P7455616833519900932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A097162 (2 * n) + 1)

end

end A199214.P7455616833519900932

namespace A199214

/-- `2*(A097162(2*n)+1)` -/
def P7455616833519900932.Spec : Prop :=
  ∀ n, P7455616833519900932.a n = A199214 n

end A199214

/-!
# A199215: a(n) = 4*5^n + 1.

The programs for A199215, the canonical program `A199215.P11291765218038879646` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199215 has offset 0).

The definition of A199215 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*5^n+1` (program `A199215.P11291765218038879646`, by `A199215.P11291765218038879646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199215.P11291765218038879646

`4*5^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199215

/-- `4*5^n+1` -/
def P11291765218038879646.Spec : Prop :=
  ∀ n, (P11291765218038879646.a n : ℤ) = A199215 n

theorem P11291765218038879646.correct : P11291765218038879646.Spec := by
  intro n
  simp only [A199215]

end A199215

/-! ## A199215.P8779015896174997535

`or(1, Δ[5^n])`
-/

namespace A199215.P8779015896174997535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A199215.P8779015896174997535

namespace A199215

/-- `or(1, Δ[5^n])` -/
def P8779015896174997535.Spec : Prop :=
  ∀ n, P8779015896174997535.a n = A199215 n

end A199215

/-! ## A199215.P8876358924856479688

`xor(1, Δ[5^n])`
-/

namespace A199215.P8876358924856479688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A199215.P8876358924856479688

namespace A199215

/-- `xor(1, Δ[5^n])` -/
def P8876358924856479688.Spec : Prop :=
  ∀ n, P8876358924856479688.a n = A199215 n

end A199215

/-! ## A199215.P15970898350631849335

`ogf((5-9x)/(1-6x+5x^2))`
-/

namespace A199215.P15970898350631849335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -9] [1, -6, 5] n

end

end A199215.P15970898350631849335

namespace A199215

/-- `ogf((5-9x)/(1-6x+5x^2))` -/
def P15970898350631849335.Spec : Prop :=
  ∀ n, P15970898350631849335.a n = A199215 n

end A199215

/-! ## A199215.P12947660159379300406

`∑[5*a(n-1)]` with `a(0)=5, a(1)=16`
-/

namespace A199215.P12947660159379300406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 16] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199215.P12947660159379300406

namespace A199215

/-- `∑[5*a(n-1)]` -/
def P12947660159379300406.Spec : Prop :=
  ∀ n, (P12947660159379300406.a n : ℤ) = A199215 n

end A199215

/-! ## A199215.P697098999105809841

`abs(4-5*a(n-1))` with `a(0)=5`
-/

namespace A199215.P697098999105809841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |4 - 5 * a (n - 1)|

end

end A199215.P697098999105809841

namespace A199215

/-- `abs(4-5*a(n-1))` -/
def P697098999105809841.Spec : Prop :=
  ∀ n, P697098999105809841.a n = A199215 n

end A199215

/-! ## A199215.P16120961799610999049

`5*(a(n-1)-4/5)` with `a(0)=5`
-/

namespace A199215.P16120961799610999049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  5 * (a (n - 1) - (4 : ℚ) / 5)

end

end A199215.P16120961799610999049

namespace A199215

/-- `5*(a(n-1)-4/5)` -/
def P16120961799610999049.Spec : Prop :=
  ∀ n, P16120961799610999049.a n = (A199215 n : ℚ)

theorem P16120961799610999049.correct : P16120961799610999049.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199215, Nat.add_sub_cancel, A199215.P16120961799610999049.a, A199215.P11291765218038879646.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199215, Nat.add_sub_cancel, A199215.P16120961799610999049.a, A199215.P11291765218038879646.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199215

/-! ## A199215.P16250704826440172962

`record[5*a(n-2)-4]` with `a(0)=5, a(1)=0`
-/

namespace A199215.P16250704826440172962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  5 * f1 (n - 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199215.P16250704826440172962

namespace A199215

/-- `record[5*a(n-2)-4]` -/
def P16250704826440172962.Spec : Prop :=
  ∀ n, P16250704826440172962.a n = A199215 n

end A199215

/-! ## A199215.P5226814208089829124

`floor(a(n-1)+4*(a(n-1)-1))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199215.P5226814208089829124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 4 * (a (n - 1) - 1)

end

end A199215.P5226814208089829124

namespace A199215

/-- `floor(a(n-1)+4*(a(n-1)-1))` -/
def P5226814208089829124.Spec : Prop :=
  ∀ n, P5226814208089829124.a n = A199215 n

theorem P5226814208089829124.correct : P5226814208089829124.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199215, Nat.add_sub_cancel, A199215.P5226814208089829124.a, A199215.P11291765218038879646.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199215, Nat.add_sub_cancel, A199215.P5226814208089829124.a, A199215.P11291765218038879646.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199215

/-! ## A199215.P16073927756671889571

`floor(a(n-1)-4*(1-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199215.P16073927756671889571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - 4 * (1 - a (n - 1))

end

end A199215.P16073927756671889571

namespace A199215

/-- `floor(a(n-1)-4*(1-a(n-1)))` -/
def P16073927756671889571.Spec : Prop :=
  ∀ n, P16073927756671889571.a n = A199215 n

theorem P16073927756671889571.correct : P16073927756671889571.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199215, Nat.add_sub_cancel, A199215.P16073927756671889571.a, A199215.P11291765218038879646.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199215, Nat.add_sub_cancel, A199215.P16073927756671889571.a, A199215.P11291765218038879646.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199215

/-! ## A199215.P205080619863815675

`Δ[A104745(n)]`
-/

namespace A199215.P205080619863815675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199215.P205080619863815675

namespace A199215

/-- `Δ[A104745(n)]` -/
def P205080619863815675.Spec : Prop :=
  ∀ n, P205080619863815675.a n = A199215 n

theorem P205080619863815675.correct : P205080619863815675.Spec := by
  intro n
  simp only [A199215, Nat.add_sub_cancel, A199215.P205080619863815675.f1, A199215.P205080619863815675.a, A199215.P11291765218038879646.a, A104745, A104745.P954463826829694829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199215

/-! ## A199215.P3213222160264142090

`Δ[A362555(n+1)]`
-/

namespace A199215.P3213222160264142090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199215.P3213222160264142090

namespace A199215

/-- `Δ[A362555(n+1)]` -/
def P3213222160264142090.Spec : Prop :=
  ∀ n, P3213222160264142090.a n = A199215 n

theorem P3213222160264142090.correct : P3213222160264142090.Spec := by
  intro n
  simp only [A199215, Nat.add_sub_cancel, A199215.P3213222160264142090.f1, A199215.P3213222160264142090.a, A199215.P11291765218038879646.a, A362555, A362555.P8565414055957789994.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199215

/-! ## A199215.P3329022976615918452

`record[Δ[A056451(n)]+1]`
-/

namespace A199215.P3329022976615918452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199215.P3329022976615918452

namespace A199215

/-- `record[Δ[A056451(n)]+1]` -/
def P3329022976615918452.Spec : Prop :=
  ∀ n, P3329022976615918452.a n = A199215 n

end A199215

/-! ## A199215.P3435955255425824309

`Δ[A024049(n)-A024000(n)]`
-/

namespace A199215.P3435955255425824309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n - A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199215.P3435955255425824309

namespace A199215

/-- `Δ[A024049(n)-A024000(n)]` -/
def P3435955255425824309.Spec : Prop :=
  ∀ n, P3435955255425824309.a n = A199215 n

theorem P3435955255425824309.correct : P3435955255425824309.Spec := by
  intro n
  simp only [A199215, Nat.add_sub_cancel, A199215.P3435955255425824309.f1, A199215.P3435955255425824309.a, A199215.P11291765218038879646.a, A024000, A024000.P8748414335487061084.a, A024049, A024049.P18010332611898517157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199215

/-! ## A199215.P16406485194958166992

`ceil(A199311(n)/2)`
-/

namespace A199215.P16406485194958166992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199311 n : ℚ) / 2⌉

end

end A199215.P16406485194958166992

namespace A199215

/-- `ceil(A199311(n)/2)` -/
def P16406485194958166992.Spec : Prop :=
  ∀ n, P16406485194958166992.a n = A199215 n

end A199215

/-! ## A199215.P14712462752497094669

`(A198767(n)+3)/2`
-/

namespace A199215.P14712462752497094669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198767 n + 3 : ℚ) / 2

end

end A199215.P14712462752497094669

namespace A199215

/-- `(A198767(n)+3)/2` -/
def P14712462752497094669.Spec : Prop :=
  ∀ n, P14712462752497094669.a n = (A199215 n : ℚ)

theorem P14712462752497094669.correct : P14712462752497094669.Spec := by
  intro n
  simp only [A199215, Nat.add_sub_cancel, A199215.P14712462752497094669.a, A199215.P11291765218038879646.a, A198767, A198767.P15427325346393291259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199215

/-! ## A199215.P8765780652349492265

`(A128625(n+1)+2)/2`
-/

namespace A199215.P8765780652349492265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128625 (n + 1) + 2 : ℚ) / 2

end

end A199215.P8765780652349492265

namespace A199215

/-- `(A128625(n+1)+2)/2` -/
def P8765780652349492265.Spec : Prop :=
  ∀ n, P8765780652349492265.a n = (A199215 n : ℚ)

end A199215

/-!
# A199216: a(n) = 6*5^n+1.

The programs for A199216, the canonical program `A199216.P4532041409865639420` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199216 has offset 0).

The definition of A199216 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*5^n+1` (program `A199216.P4532041409865639420`, by `A199216.P4532041409865639420.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199216.P4532041409865639420

`6*5^n+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199216

/-- `6*5^n+1` -/
def P4532041409865639420.Spec : Prop :=
  ∀ n, (P4532041409865639420.a n : ℤ) = A199216 n

theorem P4532041409865639420.correct : P4532041409865639420.Spec := by
  intro n
  simp only [A199216]

end A199216

/-! ## A199216.P17444812926871517151

`or(1, 6*5^n)`
-/

namespace A199216.P17444812926871517151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * 5 ^ n)

end

end A199216.P17444812926871517151

namespace A199216

/-- `or(1, 6*5^n)` -/
def P17444812926871517151.Spec : Prop :=
  ∀ n, (P17444812926871517151.a n : ℤ) = A199216 n

end A199216

/-! ## A199216.P7774957840276771370

`xor(1, 6*5^n)`
-/

namespace A199216.P7774957840276771370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * 5 ^ n)

end

end A199216.P7774957840276771370

namespace A199216

/-- `xor(1, 6*5^n)` -/
def P7774957840276771370.Spec : Prop :=
  ∀ n, (P7774957840276771370.a n : ℤ) = A199216 n

end A199216

/-! ## A199216.P15839584838722810543

`ogf((7-11x)/(1-6x+5x^2))`
-/

namespace A199216.P15839584838722810543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -11] [1, -6, 5] n

end

end A199216.P15839584838722810543

namespace A199216

/-- `ogf((7-11x)/(1-6x+5x^2))` -/
def P15839584838722810543.Spec : Prop :=
  ∀ n, P15839584838722810543.a n = A199216 n

end A199216

/-! ## A199216.P16389708367847739221

`abs(4-5*a(n-1))` with `a(0)=7`
-/

namespace A199216.P16389708367847739221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  |4 - 5 * a (n - 1)|

end

end A199216.P16389708367847739221

namespace A199216

/-- `abs(4-5*a(n-1))` -/
def P16389708367847739221.Spec : Prop :=
  ∀ n, P16389708367847739221.a n = A199216 n

end A199216

/-! ## A199216.P5177187291150583523

`5*(a(n-1)-4/5)` with `a(0)=7`
-/

namespace A199216.P5177187291150583523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  5 * (a (n - 1) - (4 : ℚ) / 5)

end

end A199216.P5177187291150583523

namespace A199216

/-- `5*(a(n-1)-4/5)` -/
def P5177187291150583523.Spec : Prop :=
  ∀ n, P5177187291150583523.a n = (A199216 n : ℚ)

theorem P5177187291150583523.correct : P5177187291150583523.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199216, Nat.add_sub_cancel, A199216.P5177187291150583523.a, A199216.P4532041409865639420.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199216, Nat.add_sub_cancel, A199216.P5177187291150583523.a, A199216.P4532041409865639420.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199216

/-! ## A199216.P13186503344493333267

`floor(a(n-1)+4*(a(n-1)-1))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A199216.P13186503344493333267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 4 * (a (n - 1) - 1)

end

end A199216.P13186503344493333267

namespace A199216

/-- `floor(a(n-1)+4*(a(n-1)-1))` -/
def P13186503344493333267.Spec : Prop :=
  ∀ n, P13186503344493333267.a n = A199216 n

theorem P13186503344493333267.correct : P13186503344493333267.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199216, Nat.add_sub_cancel, A199216.P13186503344493333267.a, A199216.P4532041409865639420.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199216, Nat.add_sub_cancel, A199216.P13186503344493333267.a, A199216.P4532041409865639420.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199216

/-! ## A199216.P15759039086732966655

`floor(a(n-1)-4*(1-a(n-1)))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A199216.P15759039086732966655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) - 4 * (1 - a (n - 1))

end

end A199216.P15759039086732966655

namespace A199216

/-- `floor(a(n-1)-4*(1-a(n-1)))` -/
def P15759039086732966655.Spec : Prop :=
  ∀ n, P15759039086732966655.a n = A199216 n

theorem P15759039086732966655.correct : P15759039086732966655.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199216, Nat.add_sub_cancel, A199216.P15759039086732966655.a, A199216.P4532041409865639420.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199216, Nat.add_sub_cancel, A199216.P15759039086732966655.a, A199216.P4532041409865639420.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199216

/-! ## A199216.P9869308001374111299

`abs(2-A097804(n))`
-/

namespace A199216.P9869308001374111299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A097804 n|

end

end A199216.P9869308001374111299

namespace A199216

/-- `abs(2-A097804(n))` -/
def P9869308001374111299.Spec : Prop :=
  ∀ n, P9869308001374111299.a n = A199216 n

end A199216

/-! ## A199216.P4427621153255878866

`Δ[A057651(n)+n]`
-/

namespace A199216.P4427621153255878866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199216.P4427621153255878866

namespace A199216

/-- `Δ[A057651(n)+n]` -/
def P4427621153255878866.Spec : Prop :=
  ∀ n, P4427621153255878866.a n = A199216 n

end A199216

/-! ## A199216.P8713140796481586768

`Δ[A199213(n)+n]`
-/

namespace A199216.P8713140796481586768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199213 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199216.P8713140796481586768

namespace A199216

/-- `Δ[A199213(n)+n]` -/
def P8713140796481586768.Spec : Prop :=
  ∀ n, P8713140796481586768.a n = A199216 n

end A199216

/-! ## A199216.P3195482724824918537

`Δ[n-A165755(n)]`
-/

namespace A199216.P3195482724824918537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A165755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199216.P3195482724824918537

namespace A199216

/-- `Δ[n-A165755(n)]` -/
def P3195482724824918537.Spec : Prop :=
  ∀ n, P3195482724824918537.a n = A199216 n

end A199216

/-! ## A199216.P16462110080560273170

`Δ[∑[A003948(n)]+n]`
-/

namespace A199216.P16462110080560273170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199216.P16462110080560273170

namespace A199216

/-- `Δ[∑[A003948(n)]+n]` -/
def P16462110080560273170.Spec : Prop :=
  ∀ n, P16462110080560273170.a n = A199216 n

end A199216

/-! ## A199216.P2249298509349937359

`Δ[2*A083065(n)+n]`
-/

namespace A199216.P2249298509349937359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083065 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199216.P2249298509349937359

namespace A199216

/-- `Δ[2*A083065(n)+n]` -/
def P2249298509349937359.Spec : Prop :=
  ∀ n, P2249298509349937359.a n = A199216 n

end A199216

/-! ## A199216.P15848039549902354334

`Δ[A097162(2*n)+n]`
-/

namespace A199216.P15848039549902354334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097162 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199216.P15848039549902354334

namespace A199216

/-- `Δ[A097162(2*n)+n]` -/
def P15848039549902354334.Spec : Prop :=
  ∀ n, P15848039549902354334.a n = A199216 n

end A199216

/-! ## A199216.P9635814293878693365

`Δ[2*A125833(n)+n]`
-/

namespace A199216.P9635814293878693365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125833 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199216.P9635814293878693365

namespace A199216

/-- `Δ[2*A125833(n)+n]` -/
def P9635814293878693365.Spec : Prop :=
  ∀ n, P9635814293878693365.a n = A199216 n

end A199216

/-! ## A199216.P4776719913293225598

`Δ[3*A137410(n)+n]`
-/

namespace A199216.P4776719913293225598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A137410 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199216.P4776719913293225598

namespace A199216

/-- `Δ[3*A137410(n)+n]` -/
def P4776719913293225598.Spec : Prop :=
  ∀ n, P4776719913293225598.a n = A199216 n

end A199216

/-!
# A199217: Primes p in successive intervals (2^i+1 .. 3*2^(i-1)) such that p XOR (2^i -2) produces a prime q in the range (3*2^(i-1) .. 2^(i+1)-1) for i=1,2,3...

The programs for A199217, there is no canonical definition to state claims against.
-/

/-! ## A199217.P13492675347146631583

`A092569(A199218(n+1))`
-/

namespace A199217.P13492675347146631583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A199218 (n + 1)).toNat

end

end A199217.P13492675347146631583

/-! ## A199217.P2006137061048698570

`A054429(A199218(1+n)-1)`
-/

namespace A199217.P2006137061048698570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A199218 (1 + n) - 1).toNat

end

end A199217.P2006137061048698570

/-! ## A199217.P4246923363679564040

`A054429(xor(1, A199218(n+1)))`
-/

namespace A199217.P4246923363679564040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (Int.xor 1 (A199218 (n + 1))).toNat

end

end A199217.P4246923363679564040

/-! ## A199217.P18045647147808206642

`∑{d}[A199218(n+1), A054429(#)]`
-/

namespace A199217.P18045647147808206642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054429 d

end

end A199217.P18045647147808206642

/-! ## A199217.P3642331365520191873

`A054429(and(-2, A199218(n+1)))`
-/

namespace A199217.P3642331365520191873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (Int.land (-2) (A199218 (n + 1))).toNat

end

end A199217.P3642331365520191873

/-! ## A199217.P4132223185104607206

`A054429(p?[A199218(n+1)])+1`
-/

namespace A199217.P4132223185104607206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A199217.P4132223185104607206

/-!
# A199218: Prime XOR couples of A199217.

The programs for A199218, the canonical program `A199218.P4498318443024509209` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199218 has offset 1).

The definition of A199218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199218.P17559253461374004258

`p?[or(1, A054429(A080165(n+1)))]`
-/

namespace A199218.P17559253461374004258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A054429 (A080165 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199218.P17559253461374004258

namespace A199218

/-- `p?[or(1, A054429(A080165(n+1)))]` -/
def P17559253461374004258.Spec : Prop :=
  ∀ n, P17559253461374004258.a n = A199218 (n + 1)

end A199218

/-! ## A199218.P4498318443024509209

`p?[A092569(or(1, A080165(n+1)))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A199218

/-- `p?[A092569(or(1, A080165(n+1)))]` -/
def P4498318443024509209.Spec : Prop :=
  ∀ n, P4498318443024509209.a n = A199218 (n + 1)

theorem P4498318443024509209.correct : P4498318443024509209.Spec := by
  intro n
  simp only [A199218, Nat.add_sub_cancel]

end A199218

/-! ## A199218.P15170571493256646199

`p?[A054429(A080165(n+1)+A057428(n))]`
-/

namespace A199218.P15170571493256646199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A080165 (n + 1) + A057428 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199218.P15170571493256646199

namespace A199218

/-- `p?[A054429(A080165(n+1)+A057428(n))]` -/
def P15170571493256646199.Spec : Prop :=
  ∀ n, P15170571493256646199.a n = A199218 (n + 1)

end A199218

/-! ## A199218.P17215155274114572772

`p?[A057427(n)+A054429(A080165(n+1))]`
-/

namespace A199218.P17215155274114572772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A054429 (A080165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199218.P17215155274114572772

namespace A199218

/-- `p?[A057427(n)+A054429(A080165(n+1))]` -/
def P17215155274114572772.Spec : Prop :=
  ∀ n, P17215155274114572772.a n = A199218 (n + 1)

end A199218

/-! ## A199218.P43059358274160526

`p?[A066247(2*(n+1))+A054429(A080165(n+1))]`
-/

namespace A199218.P43059358274160526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (2 * (n + 1)) + A054429 (A080165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199218.P43059358274160526

namespace A199218

/-- `p?[A066247(2*(n+1))+A054429(A080165(n+1))]` -/
def P43059358274160526.Spec : Prop :=
  ∀ n, P43059358274160526.a n = A199218 (n + 1)

end A199218

/-! ## A199218.P2053980780790099191

`A092569(A199217(n+1))`
-/

namespace A199218.P2053980780790099191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A199217 (n + 1)).toNat

end

end A199218.P2053980780790099191

namespace A199218

/-- `A092569(A199217(n+1))` -/
def P2053980780790099191.Spec : Prop :=
  ∀ n, P2053980780790099191.a n = A199218 (n + 1)

end A199218

/-! ## A199218.P3621692429220406073

`A054429(A199217(n+1)-1)`
-/

namespace A199218.P3621692429220406073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A199217 (n + 1) - 1).toNat

end

end A199218.P3621692429220406073

namespace A199218

/-- `A054429(A199217(n+1)-1)` -/
def P3621692429220406073.Spec : Prop :=
  ∀ n, P3621692429220406073.a n = A199218 (n + 1)

end A199218

/-!
# A199219: Primes p, in the successive intervals (2^i +1 .. 2^(i+1) -1) such that p XOR 2^i -2 is composite for i=1,2,3...

The programs for A199219, there is no canonical definition to state claims against.
-/

/-! ## A199219.P17638256245732395732

`p?[(n+1)*A110560(A092569(n))]`
-/

namespace A199219.P17638256245732395732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110560 (A092569 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199219.P17638256245732395732

/-! ## A199219.P6117453170083038403

`p?[(n+2)*A066247(A054429(n+1))]`
-/

namespace A199219.P6117453170083038403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A066247 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199219.P6117453170083038403

/-! ## A199219.P12053214136441635127

`eq[A007920(n), A055672(A092569(n))]`
-/

namespace A199219.P12053214136441635127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A092569 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199219.P12053214136441635127

/-! ## A199219.P17602374964890319930

`eq[A051699(n), A055672(A092569(n))]`
-/

namespace A199219.P17602374964890319930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A092569 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A199219.P17602374964890319930

/-! ## A199219.P15182371614657915499

`p?[A110560(A092569(n))*A145979(2*n)]`
-/

namespace A199219.P15182371614657915499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (A092569 n).toNat * A145979 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199219.P15182371614657915499

/-!
# A199220: Triangle read by rows: T(n,k) = (n-1-k)*abs(s(n,n+1-k)), where s(n,k) are the signed Stirling numbers of the first kind and 1 <= k <= n.

The programs for A199220, there is no canonical definition to state claims against.
-/

/-! ## A199220.P11993471698939460057

`(C(comp[∑[n]]-n, 2)-(n+2))*A094638(n+1)`
-/

namespace A199220.P11993471698939460057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 2 : ℤ)) * A094638 (n + 1)

end

end A199220.P11993471698939460057

/-! ## A199220.P14111860473229569263

`(A025581(n)-1)*A094638(n+1)`
-/

namespace A199220.P14111860473229569263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n - 1) * A094638 (n + 1)

end

end A199220.P14111860473229569263

/-! ## A199220.P16367171816012890527

`(A004736(n+1)-2)*A094638(n+1)`
-/

namespace A199220.P16367171816012890527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 2) * A094638 (n + 1)

end

end A199220.P16367171816012890527

/-! ## A199220.P6149411134372761272

`(A127739(n+1)-(n+2))*A094638(n+1)`
-/

namespace A199220.P6149411134372761272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127739 (n + 1) - (n + 2 : ℤ)) * A094638 (n + 1)

end

end A199220.P6149411134372761272

/-! ## A199220.P7686654937723681352

`A023444(C(comp[∑[n]]-n, 2)-n)*A094638(n+1)`
-/

namespace A199220.P7686654937723681352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) * A094638 (n + 1)

end

end A199220.P7686654937723681352

/-! ## A199220.P3425778199339854589

`A023443(A025581(n))*A094638(n+1)`
-/

namespace A199220.P3425778199339854589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A025581 n).toNat * A094638 (n + 1)

end

end A199220.P3425778199339854589

/-! ## A199220.P5110403448193456487

`(A002260(A038722(n+1))-2)*A094638(n+1)`
-/

namespace A199220.P5110403448193456487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (A038722 (n + 1)).toNat - 2) * A094638 (n + 1)

end

end A199220.P5110403448193456487

/-! ## A199220.P5053913848453337006

`(A003056(n)-A002260(n+1))*A094638(n+1)`
-/

namespace A199220.P5053913848453337006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n - A002260 (n + 1)) * A094638 (n + 1)

end

end A199220.P5053913848453337006

/-! ## A199220.P14708620064673478143

`(A025581(n)-1)*A130534(A061579(n))`
-/

namespace A199220.P14708620064673478143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n - 1) * A130534 (A061579 n).toNat

end

end A199220.P14708620064673478143

/-! ## A199220.P5598474090873064791

`A037861(A130321(n))*A094638(n+1)`
-/

namespace A199220.P5598474090873064791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A130321 n).toNat * A094638 (n + 1)

end

end A199220.P5598474090873064791

/-!
# A199222: Number of n X n 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199222, there is no canonical definition to state claims against.
-/

/-! ## A199222.P1139992975372482450

`A199230(∑[4*n]+1)`
-/

namespace A199222.P1139992975372482450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199222.P1139992975372482450

/-!
# A199223: Number of nX1 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199223, there is no canonical definition to state claims against.
-/

/-! ## A199223.P13571444314250826017

`A199230(∑[n]+1)`
-/

namespace A199223.P13571444314250826017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199223.P13571444314250826017

/-! ## A199223.P16344491819899668585

`A199230(A000124(n))+char[20]`
-/

namespace A199223.P16344491819899668585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A199223.P16344491819899668585

/-! ## A199223.P14745704237651771095

`A043568(n)*A199230(A000124(n))`
-/

namespace A199223.P14745704237651771095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A199230 (A000124 n).toNat

end

end A199223.P14745704237651771095

/-! ## A199223.P3812099477799547572

`gcd(A000038(n), A199230(A000124(n)))`
-/

namespace A199223.P3812099477799547572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A199230 (A000124 n).toNat)

end

end A199223.P3812099477799547572

/-! ## A199223.P3115584551431741591

`and(A155619(n), A199230(A000124(n)))`
-/

namespace A199223.P3115584551431741591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A155619 n) (A199230 (A000124 n).toNat)

end

end A199223.P3115584551431741591

/-!
# A199224: Number of nX2 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199224, there is no canonical definition to state claims against.
-/

/-! ## A199224.P17501961573280867739

`A199230(∑[n+1]+2)`
-/

namespace A199224.P17501961573280867739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199224.P17501961573280867739

/-! ## A199224.P5577296733525009114

`record[A199230(n+1)/A183610(n)]`
-/

namespace A199224.P5577296733525009114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199230 (n + 1) : ℚ) / (A183610 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199224.P5577296733525009114

/-! ## A199224.P12671285732324092357

`record[A199230(n+1)/A220054(n)]`
-/

namespace A199224.P12671285732324092357
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199230 (n + 1) : ℚ) / (A220054 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199224.P12671285732324092357

/-! ## A199224.P15000634473440325636

`record[A199230(n+1)/A227578(n)]`
-/

namespace A199224.P15000634473440325636
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199230 (n + 1) : ℚ) / (A227578 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199224.P15000634473440325636

/-! ## A199224.P15093096838667020642

`record[A199230(n+1)/A259465(n)]`
-/

namespace A199224.P15093096838667020642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199230 (n + 1) : ℚ) / (A259465 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199224.P15093096838667020642

/-!
# A199225: Number of nX3 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199225, there is no canonical definition to state claims against.
-/

/-! ## A199225.P11836781474404576797

`A199230(∑[n+2]+4)`
-/

namespace A199225.P11836781474404576797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199225.P11836781474404576797

/-! ## A199225.P14416608983504131093

`A199230(A167614(n+1))+char[13]`
-/

namespace A199225.P14416608983504131093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A199225.P14416608983504131093

/-! ## A199225.P1983689851279552686

`record[gcd(A131689(n), A199230(n+3))]`
-/

namespace A199225.P1983689851279552686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131689 n) (A199230 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199225.P1983689851279552686

/-! ## A199225.P4911705499115449833

`A307637(n)+A199230(A167614(n+1))`
-/

namespace A199225.P4911705499115449833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307637 n + A199230 (A167614 (n + 1)).toNat

end

end A199225.P4911705499115449833

/-! ## A199225.P7286456831741715786

`A199230(A167614(n+1))*A351086(n)`
-/

namespace A199225.P7286456831741715786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (A167614 (n + 1)).toNat * A351086 n

end

end A199225.P7286456831741715786

/-!
# A199226: Number of n X 4 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199226, there is no canonical definition to state claims against.
-/

/-! ## A199226.P3819578429797235275

`A199230(∑[n+3]+7)`
-/

namespace A199226.P3819578429797235275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A199226.P3819578429797235275

/-! ## A199226.P6273726378138348918

`A199230(A055998(n+2))%A084063(2*n+3)`
-/

namespace A199226.P6273726378138348918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199230 (A055998 (n + 2)).toNat) (A084063 (2 * n + 3))

end

end A199226.P6273726378138348918

/-!
# A199227: Number of n X 5 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199227, there is no canonical definition to state claims against.
-/

/-! ## A199227.P9547374543332829565

`A199230(A374005(n+1))`
-/

namespace A199227.P9547374543332829565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (A374005 (n + 1)).toNat

end

end A199227.P9547374543332829565

/-! ## A199227.P1632374961243197663

`A199230(A167499(n+3))`
-/

namespace A199227.P1632374961243197663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (A167499 (n + 3)).toNat

end

end A199227.P1632374961243197663

/-! ## A199227.P3059590410623846177

`A199230(A155212(n)+13)`
-/

namespace A199227.P3059590410623846177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (A155212 n + 13).toNat

end

end A199227.P3059590410623846177

/-! ## A199227.P3171272922307610771

`A199230(A056000(n)+15)`
-/

namespace A199227.P3171272922307610771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (A056000 n + 15).toNat

end

end A199227.P3171272922307610771

/-! ## A199227.P10558561152601003149

`A199230(eq[7, A066657(n)])`
-/

namespace A199227.P10558561152601003149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199227.P10558561152601003149

/-!
# A199228: Number of nX6 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199228, there is no canonical definition to state claims against.
-/

/-! ## A199228.P7396834254607492084

`A199230(A374007(n+1))`
-/

namespace A199228.P7396834254607492084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (A374007 (n + 1)).toNat

end

end A199228.P7396834254607492084

/-! ## A199228.P10897648023206488758

`A199230(A168105(n)-n)`
-/

namespace A199228.P10897648023206488758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (A168105 n - (n : ℤ)).toNat

end

end A199228.P10897648023206488758

/-! ## A199228.P5286125391557216867

`A199230(A167499(n+4)+1)`
-/

namespace A199228.P5286125391557216867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (A167499 (n + 4) + 1).toNat

end

end A199228.P5286125391557216867

/-! ## A199228.P384658640469658041

`A199230(A000124(n+5)+5)`
-/

namespace A199228.P384658640469658041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (A000124 (n + 5) + 5).toNat

end

end A199228.P384658640469658041

/-!
# A199229: Number of nX7 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or one horizontal or vertical neighbors.

The programs for A199229, there is no canonical definition to state claims against.
-/

/-! ## A199229.P17997381265070639214

`A199230(A374008(n+1))`
-/

namespace A199229.P17997381265070639214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199230 (A374008 (n + 1)).toNat

end

end A199229.P17997381265070639214

/-!
# A199231: Number of nX2 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to at least one horizontal or vertical neighbor.

The programs for A199231, there is no canonical definition to state claims against.
-/

/-! ## A199231.P9555035511222595766

`A199237(∑[n+1]+2)`
-/

namespace A199231.P9555035511222595766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199231.P9555035511222595766

/-! ## A199231.P4552772263096177840

`A199237(A000096(n+1))+A061858(n)`
-/

namespace A199231.P4552772263096177840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (A000096 (n + 1)).toNat + A061858 n

end

end A199231.P4552772263096177840

/-! ## A199231.P14670899829234309887

`A199237(A000096(n+1))%A072256(n)`
-/

namespace A199231.P14670899829234309887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199237 (A000096 (n + 1)).toNat) (A072256 n)

end

end A199231.P14670899829234309887

/-! ## A199231.P6068899158159408889

`A199237(A000096(n+1))+A000007(n+1)`
-/

namespace A199231.P6068899158159408889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A199231.P6068899158159408889

/-!
# A199232: Number of nX3 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to at least one horizontal or vertical neighbor.

The programs for A199232, there is no canonical definition to state claims against.
-/

/-! ## A199232.P18228025377538760405

`A267903(n+1)/2`
-/

namespace A199232.P18228025377538760405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267903 (n + 1) : ℚ) / 2

end

end A199232.P18228025377538760405

/-! ## A199232.P2842545076676405885

`A199237(∑[n+2]+4)`
-/

namespace A199232.P2842545076676405885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199232.P2842545076676405885

/-! ## A199232.P1548285241408836870

`record[A010054(n)*A199237(n+3)]`
-/

namespace A199232.P1548285241408836870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A199237 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199232.P1548285241408836870

/-! ## A199232.P6286048870691001844

`record[A129186(n)*A199237(n+5)]`
-/

namespace A199232.P6286048870691001844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A199237 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199232.P6286048870691001844

/-! ## A199232.P6091232779898995031

`∑{digits}[n, dr(10^#)]*A199237(A167614(n+1))`
-/

namespace A199232.P6091232779898995031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum : ℕ) : ℤ) * A199237 (A167614 (n + 1)).toNat

end

end A199232.P6091232779898995031

/-!
# A199233: Number of nX4 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to at least one horizontal or vertical neighbor.

The programs for A199233, there is no canonical definition to state claims against.
-/

/-! ## A199233.P9537152433427308687

`A199237(A141214(n)+7)`
-/

namespace A199233.P9537152433427308687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (A141214 n + 7).toNat

end

end A199233.P9537152433427308687

/-! ## A199233.P17149570735455525850

`A199237(A052905(n)+9)`
-/

namespace A199233.P17149570735455525850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (A052905 n + 9).toNat

end

end A199233.P17149570735455525850

/-! ## A199233.P11812139253506590142

`A199237(A055999(n)+10)`
-/

namespace A199233.P11812139253506590142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (A055999 n + 10).toNat

end

end A199233.P11812139253506590142

/-! ## A199233.P17371495936529833184

`A199237(eq[5, A066657(n)])`
-/

namespace A199233.P17371495936529833184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199233.P17371495936529833184

/-! ## A199233.P2739081610105101272

`record[A199237(A198269(n+1))]`
-/

namespace A199233.P2739081610105101272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (A198269 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199233.P2739081610105101272

/-!
# A199234: Number of nX5 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to at least one horizontal or vertical neighbor.

The programs for A199234, there is no canonical definition to state claims against.
-/

/-! ## A199234.P9608674205474492752

`A199237(A155212(n)+13)`
-/

namespace A199234.P9608674205474492752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (A155212 n + 13).toNat

end

end A199234.P9608674205474492752

/-! ## A199234.P18082971846676921384

`A199237(A056000(n)+15)`
-/

namespace A199234.P18082971846676921384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (A056000 n + 15).toNat

end

end A199234.P18082971846676921384

/-! ## A199234.P9152834111089569178

`A199237(eq[7, A066657(n)])`
-/

namespace A199234.P9152834111089569178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199234.P9152834111089569178

/-! ## A199234.P853072347474824760

`A199237(A167614(n+3)+2)`
-/

namespace A199234.P853072347474824760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (A167614 (n + 3) + 2).toNat

end

end A199234.P853072347474824760

/-!
# A199235: Number of nX6 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to at least one horizontal or vertical neighbor.

The programs for A199235, there is no canonical definition to state claims against.
-/

/-! ## A199235.P11608973048815464071

`A199237(A374007(n+1))`
-/

namespace A199235.P11608973048815464071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (A374007 (n + 1)).toNat

end

end A199235.P11608973048815464071

/-!
# A199236: Number of nX7 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to at least one horizontal or vertical neighbor.

The programs for A199236, there is no canonical definition to state claims against.
-/

/-! ## A199236.P9022256604895061010

`A199237(A374008(n+1))`
-/

namespace A199236.P9022256604895061010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199237 (A374008 (n + 1)).toNat

end

end A199236.P9022256604895061010

/-!
# A199237: T(n,k)=Number of nXk 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to at least one horizontal or vertical neighbor.

The programs for A199237, there is no canonical definition to state claims against.
-/

/-! ## A199237.P10867169976861138684

`A342383(A199041(n+1))`
-/

namespace A199237.P10867169976861138684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (A199041 (n + 1)).toNat

end

end A199237.P10867169976861138684

/-! ## A199237.P5676352361220352864

`A175427(A199041(n+1)+1)`
-/

namespace A199237.P5676352361220352864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A199041 (n + 1) + 1).toNat

end

end A199237.P5676352361220352864

/-! ## A199237.P14174876192056184095

`A199041(n+1)+A184955(n)%4`
-/

namespace A199237.P14174876192056184095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (n + 1) + Int.tmod (A184955 n) 4

end

end A199237.P14174876192056184095

/-! ## A199237.P17236478411022567587

`A000194(A234025(A199041(n+1)²))`
-/

namespace A199237.P17236478411022567587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A234025 (A199041 (n + 1) ^ 2).toNat).toNat

end

end A199237.P17236478411022567587

/-! ## A199237.P14408020900734069133

`A000196(A263273(A199041(n+1)²))`
-/

namespace A199237.P14408020900734069133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A263273 (A199041 (n + 1) ^ 2).toNat).toNat

end

end A199237.P14408020900734069133

/-!
# A199238: n mod (number of ones in binary representation of n).

The programs for A199238, the canonical program `A199238.P9473854142467596191` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199238 has offset 1).

The definition of A199238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199238.P9473854142467596191

`(n+1)%∑[1-val(n+1, 2)]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199238

/-- `(n+1)%∑[1-val(n+1, 2)]` -/
def P9473854142467596191.Spec : Prop :=
  ∀ n, P9473854142467596191.a n = A199238 (n + 1)

theorem P9473854142467596191.correct : P9473854142467596191.Spec := by
  intro n
  simp only [A199238, Nat.add_sub_cancel]

end A199238

/-! ## A199238.P14317932071215258113

`(n+1)%Δ[A000788(n)]`
-/

namespace A199238.P14317932071215258113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A199238.P14317932071215258113

namespace A199238

/-- `(n+1)%Δ[A000788(n)]` -/
def P14317932071215258113.Spec : Prop :=
  ∀ n, P14317932071215258113.a n = A199238 (n + 1)

end A199238

/-! ## A199238.P812173876089477621

`1-A161764(n+1)+n`
-/

namespace A199238.P812173876089477621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A161764 (n + 1) + (n : ℤ)

end

end A199238.P812173876089477621

namespace A199238

/-- `1-A161764(n+1)+n` -/
def P812173876089477621.Spec : Prop :=
  ∀ n, P812173876089477621.a n = A199238 (n + 1)

theorem P812173876089477621.correct : P812173876089477621.Spec := by
  intro n
  simp only [A199238, Nat.add_sub_cancel, A199238.P812173876089477621.a, A199238.P9473854142467596191.f1, A199238.P9473854142467596191.a, A161764, A161764.P15797393649233863859.f1, A161764.P15797393649233863859.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199238

/-! ## A199238.P5653759621489997400

`-(xor(n, -1)%A000120(n+1))`
-/

namespace A199238.P5653759621489997400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (Int.xor (n : ℤ) (-1)) (A000120 (n + 1))

end

end A199238.P5653759621489997400

namespace A199238

/-- `-(xor(n, -1)%A000120(n+1))` -/
def P5653759621489997400.Spec : Prop :=
  ∀ n, P5653759621489997400.a n = A199238 (n + 1)

end A199238

/-! ## A199238.P291006875878918259

`-xor(n, -1)%A000120(-xor(n, -1))`
-/

namespace A199238.P291006875878918259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-Int.xor (n : ℤ) (-1)) (A000120 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A199238.P291006875878918259

namespace A199238

/-- `-xor(n, -1)%A000120(-xor(n, -1))` -/
def P291006875878918259.Spec : Prop :=
  ∀ n, P291006875878918259.a n = A199238 (n + 1)

end A199238

/-! ## A199238.P2574471037018735517

`(Δ[n²]-n)%A000120(Δ[n²]-n)`
-/

namespace A199238.P2574471037018735517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A000120 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

end

end A199238.P2574471037018735517

namespace A199238

/-- `(Δ[n²]-n)%A000120(Δ[n²]-n)` -/
def P2574471037018735517.Spec : Prop :=
  ∀ n, P2574471037018735517.a n = A199238 (n + 1)

end A199238

/-! ## A199238.P14767570204603405905

`A011371(n+1)%∑[2-A001511(n+1)]`
-/

namespace A199238.P14767570204603405905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011371 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199238.P14767570204603405905

namespace A199238

/-- `A011371(n+1)%∑[2-A001511(n+1)]` -/
def P14767570204603405905.Spec : Prop :=
  ∀ n, P14767570204603405905.a n = A199238 (n + 1)

end A199238

/-! ## A199238.P3357555635097759047

`A092391(n+1)%(n+1-A092391(n+1))`
-/

namespace A199238.P3357555635097759047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092391 (n + 1)) ((n + 1 : ℤ) - A092391 (n + 1))

end

end A199238.P3357555635097759047

namespace A199238

/-- `A092391(n+1)%(n+1-A092391(n+1))` -/
def P3357555635097759047.Spec : Prop :=
  ∀ n, P3357555635097759047.a n = A199238 (n + 1)

end A199238

/-! ## A199238.P5311057639637047049

`A006068(A003188(n+1))%A005811(A006068(n+1))`
-/

namespace A199238.P5311057639637047049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006068 (A003188 (n + 1)).toNat) (A005811 (A006068 (n + 1)).toNat)

end

end A199238.P5311057639637047049

namespace A199238

/-- `A006068(A003188(n+1))%A005811(A006068(n+1))` -/
def P5311057639637047049.Spec : Prop :=
  ∀ n, P5311057639637047049.a n = A199238 (n + 1)

end A199238

/-! ## A199238.P16695621141140916005

`A064216(A048673(n+1))%A254044(A048673(n+1))`
-/

namespace A199238.P16695621141140916005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064216 (A048673 (n + 1)).toNat) (A254044 (A048673 (n + 1)).toNat)

end

end A199238.P16695621141140916005

namespace A199238

/-- `A064216(A048673(n+1))%A254044(A048673(n+1))` -/
def P16695621141140916005.Spec : Prop :=
  ∀ n, P16695621141140916005.a n = A199238 (n + 1)

end A199238

/-!
# A199239: Number of n X n 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199239, there is no canonical definition to state claims against.
-/

/-! ## A199239.P14364702651883332573

`A199246(∑[4*n]+1)`
-/

namespace A199239.P14364702651883332573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199239.P14364702651883332573

/-! ## A199239.P9760000643037396759

`and(-1, A199246(A001844(n)))`
-/

namespace A199239.P9760000643037396759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A199246 (A001844 n).toNat)

end

end A199239.P9760000643037396759

/-! ## A199239.P12017217635883678728

`record[A199246(A330613(n+1))]`
-/

namespace A199239.P12017217635883678728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199239.P12017217635883678728

/-!
# A199240: Number of nX2 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199240, there is no canonical definition to state claims against.
-/

/-! ## A199240.P8539902045650444246

`A199246(∑[n+1]+2)`
-/

namespace A199240.P8539902045650444246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199240.P8539902045650444246

/-! ## A199240.P11093815800842381314

`A199246(A133263(n+1))+A165878(n)`
-/

namespace A199240.P11093815800842381314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A133263 (n + 1)).toNat + A165878 n

end

end A199240.P11093815800842381314

/-! ## A199240.P836295415910943524

`A199246(A133263(n+1))%A001579(n)`
-/

namespace A199240.P836295415910943524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199246 (A133263 (n + 1)).toNat) (A001579 n)

end

end A199240.P836295415910943524

/-! ## A199240.P17673189946377764121

`A000027(A199246(∑[n+2]))`
-/

namespace A199240.P17673189946377764121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A199246 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A199240.P17673189946377764121

/-!
# A199241: Number of nX3 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199241, there is no canonical definition to state claims against.
-/

/-! ## A199241.P5998693782486575080

`A199246(∑[n+2]+4)`
-/

namespace A199241.P5998693782486575080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199241.P5998693782486575080

/-! ## A199241.P16196582352738031087

`and(-1, A199246(A167614(n+1)))`
-/

namespace A199241.P16196582352738031087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A199246 (A167614 (n + 1)).toNat)

end

end A199241.P16196582352738031087

/-! ## A199241.P5324254087214511692

`record[A010054(n)*A199246(n+3)]`
-/

namespace A199241.P5324254087214511692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A199246 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199241.P5324254087214511692

/-! ## A199241.P14903710012403902983

`A199246(A167614(n+1))+A011737(n)`
-/

namespace A199241.P14903710012403902983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A167614 (n + 1)).toNat + A011737 n

end

end A199241.P14903710012403902983

/-! ## A199241.P3438410511082975943

`A199246(A167614(n+1))+A025443(n)`
-/

namespace A199241.P3438410511082975943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A167614 (n + 1)).toNat + A025443 n

end

end A199241.P3438410511082975943

/-!
# A199242: Number of nX4 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199242, there is no canonical definition to state claims against.
-/

/-! ## A199242.P13670699250408391319

`A199246(∑[n+3]+7)`
-/

namespace A199242.P13670699250408391319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A199242.P13670699250408391319

/-! ## A199242.P11875695332521068932

`A199246(A374004(n+1))+A089456(n+1)`
-/

namespace A199242.P11875695332521068932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A374004 (n + 1)).toNat + A089456 (n + 1)

end

end A199242.P11875695332521068932

/-! ## A199242.P1165417506963137831

`A057979(2*n)*A199246(A374004(n+1))`
-/

namespace A199242.P1165417506963137831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A199246 (A374004 (n + 1)).toNat

end

end A199242.P1165417506963137831

/-! ## A199242.P7822174331586055387

`lcm(A008836(n+1), A199246(A374004(n+1)))`
-/

namespace A199242.P7822174331586055387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A199246 (A374004 (n + 1)).toNat)

end

end A199242.P7822174331586055387

/-!
# A199243: Number of nX5 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199243, there is no canonical definition to state claims against.
-/

/-! ## A199243.P17012917406582862665

`A199246(A374005(n+1))`
-/

namespace A199243.P17012917406582862665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A374005 (n + 1)).toNat

end

end A199243.P17012917406582862665

/-! ## A199243.P12104698574760802732

`A199246(A167499(n+3))`
-/

namespace A199243.P12104698574760802732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A167499 (n + 3)).toNat

end

end A199243.P12104698574760802732

/-! ## A199243.P4492941969047066757

`A199246(A155212(n)+13)`
-/

namespace A199243.P4492941969047066757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A155212 n + 13).toNat

end

end A199243.P4492941969047066757

/-! ## A199243.P10458503922475753148

`A199246(A056000(n)+15)`
-/

namespace A199243.P10458503922475753148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A056000 n + 15).toNat

end

end A199243.P10458503922475753148

/-! ## A199243.P453178112582757616

`A199246(eq[7, A066657(n)])`
-/

namespace A199243.P453178112582757616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199243.P453178112582757616

/-!
# A199244: Number of nX6 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199244, there is no canonical definition to state claims against.
-/

/-! ## A199244.P5612319487032215468

`A199246(A374007(n+1))`
-/

namespace A199244.P5612319487032215468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A374007 (n + 1)).toNat

end

end A199244.P5612319487032215468

/-! ## A199244.P15883214321320753138

`A199246(A167499(n+4)+1)`
-/

namespace A199244.P15883214321320753138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A167499 (n + 4) + 1).toNat

end

end A199244.P15883214321320753138

/-! ## A199244.P16005431493439321689

`A199246(A141214(n+2)+9)`
-/

namespace A199244.P16005431493439321689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A141214 (n + 2) + 9).toNat

end

end A199244.P16005431493439321689

/-! ## A199244.P3978541534853140450

`A199246(A046691(n+3)+10)`
-/

namespace A199244.P3978541534853140450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A046691 (n + 3) + 10).toNat

end

end A199244.P3978541534853140450

/-! ## A199244.P16120202751809503998

`A199246(A052905(n+2)+11)`
-/

namespace A199244.P16120202751809503998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A052905 (n + 2) + 11).toNat

end

end A199244.P16120202751809503998

/-!
# A199245: Number of n X 7 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199245, there is no canonical definition to state claims against.
-/

/-! ## A199245.P4379799436075476903

`A199246(A374008(n+1))`
-/

namespace A199245.P4379799436075476903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A374008 (n + 1)).toNat

end

end A199245.P4379799436075476903

/-! ## A199245.P9111522579078939126

`A199246(A056119(n)+28)`
-/

namespace A199245.P9111522579078939126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (A056119 n + 28).toNat

end

end A199245.P9111522579078939126

/-! ## A199245.P9778947998297808242

`A199246(eq[4, A219347(n)])`
-/

namespace A199245.P9778947998297808242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199245.P9778947998297808242

/-! ## A199245.P17352144115902815980

`A199246(eq[6, A193592(n)])`
-/

namespace A199245.P17352144115902815980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199245.P17352144115902815980

/-!
# A199246: T(n,k)=Number of nXk 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to zero or two horizontal or vertical neighbors.

The programs for A199246, there is no canonical definition to state claims against.
-/

/-! ## A199246.P5799024402128008190

`A085824(A199133(n+1)%A035064(2*n+5))`
-/

namespace A199246.P5799024402128008190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085824 (Int.tmod (A199133 (n + 1)) (A035064 (2 * n + 5))).toNat

end

end A199246.P5799024402128008190

/-!
# A199247: G.f. satisfies: A(x) = (1 + x*A(x))*(1 + x^2*A(x)^3 + x^3*A(x)^4).

The programs for A199247, there is no canonical definition to state claims against.
-/

/-! ## A199247.P8508933672546490034

`A289494(A150960(n))`
-/

namespace A199247.P8508933672546490034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A150960 n).toNat

end

end A199247.P8508933672546490034

/-! ## A199247.P12128779709463165996

`A187187(A150005(n+1))`
-/

namespace A199247.P12128779709463165996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A150005 (n + 1)).toNat

end

end A199247.P12128779709463165996

/-! ## A199247.P17412714102551155177

`A110656(A108521(n+2))`
-/

namespace A199247.P17412714102551155177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A108521 (n + 2)).toNat

end

end A199247.P17412714102551155177

/-!
# A199248: G.f. satisfies: A(x) = exp( Sum_{n>=1} [Sum_{k=0..2*n} A027907(n,k)^2 * x^k * A(x)^k]* x^n/n ), where A027907 is the triangle of trinomial coefficients.

The programs for A199248, there is no canonical definition to state claims against.
-/

/-! ## A199248.P9084178973916751016

`A034887(A102726(n)+A001791(n))`
-/

namespace A199248.P9084178973916751016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A102726 n + A001791 n).toNat

end

end A199248.P9084178973916751016

/-! ## A199248.P1914732995436953875

`A337635(A007717(n)-A323680(n))`
-/

namespace A199248.P1914732995436953875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (A007717 n - A323680 n).toNat

end

end A199248.P1914732995436953875

/-! ## A199248.P7439260708545195201

`A034887(A037952(2*n)+A027423(n))`
-/

namespace A199248.P7439260708545195201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A037952 (2 * n) + A027423 n).toNat

end

end A199248.P7439260708545195201

/-! ## A199248.P2004877790095762243

`A034887(A027423(n)+n*Δ[A155587(n)])`
-/

namespace A199248.P2004877790095762243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A027423 n + (n : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A199248.P2004877790095762243

/-!
# A199249: Number of n X n 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199249, there is no canonical definition to state claims against.
-/

/-! ## A199249.P1873430244639730514

`A199256(∑[4*n]+1)`
-/

namespace A199249.P1873430244639730514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199249.P1873430244639730514

/-!
# A199250: Number of nX2 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199250, there is no canonical definition to state claims against.
-/

/-! ## A199250.P14757847730073304113

`A199256(∑[n+1]+2)`
-/

namespace A199250.P14757847730073304113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A199250.P14757847730073304113

/-! ## A199250.P17354931997020505045

`A199256(A133263(n+1))%Δ[5^n]`
-/

namespace A199250.P17354931997020505045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199256 (A133263 (n + 1)).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A199250.P17354931997020505045

/-! ## A199250.P14651466523620010954

`A199256(A000096(n)+3)+A025469(n)`
-/

namespace A199250.P14651466523620010954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (A000096 n + 3).toNat + A025469 n

end

end A199250.P14651466523620010954

/-! ## A199250.P323215083655287567

`A119335(n)*A199256(A133263(n+1))`
-/

namespace A199250.P323215083655287567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A199256 (A133263 (n + 1)).toNat

end

end A199250.P323215083655287567

/-! ## A199250.P14936380953977758557

`A199256(A133263(n+1))*A208673(n)`
-/

namespace A199250.P14936380953977758557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (A133263 (n + 1)).toNat * A208673 n

end

end A199250.P14936380953977758557

/-!
# A199251: Number of nX3 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199251, there is no canonical definition to state claims against.
-/

/-! ## A199251.P5941299163493681844

`A199256(∑[n+2]+4)`
-/

namespace A199251.P5941299163493681844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199251.P5941299163493681844

/-! ## A199251.P14563849216584921255

`and(-1, A199256(A167614(n+1)))`
-/

namespace A199251.P14563849216584921255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A199256 (A167614 (n + 1)).toNat)

end

end A199251.P14563849216584921255

/-! ## A199251.P6788423000634678581

`record[A109466(n)*A199256(n+4)]`
-/

namespace A199251.P6788423000634678581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A199256 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199251.P6788423000634678581

/-! ## A199251.P2667114872160999692

`A199256(A167614(n+1))+A011731(n)`
-/

namespace A199251.P2667114872160999692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (A167614 (n + 1)).toNat + A011731 n

end

end A199251.P2667114872160999692

/-! ## A199251.P184263862318872061

`A199256(A167614(n+1))+A025469(n)`
-/

namespace A199251.P184263862318872061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (A167614 (n + 1)).toNat + A025469 n

end

end A199251.P184263862318872061

/-!
# A199252: Number of nX4 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199252, there is no canonical definition to state claims against.
-/

/-! ## A199252.P2359319114813869755

`A264956(n+1)/24`
-/

namespace A199252.P2359319114813869755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264956 (n + 1) : ℚ) / 24

end

end A199252.P2359319114813869755

/-! ## A199252.P1752129367141587145

`A199256(∑[n+3]+7)`
-/

namespace A199252.P1752129367141587145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A199252.P1752129367141587145

/-! ## A199252.P10278625140096291332

`record[A010054(n)*A199256(n+4)]`
-/

namespace A199252.P10278625140096291332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A199256 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199252.P10278625140096291332

/-! ## A199252.P15886994399642900681

`A199256(A141214(n)+7)/ceil(γ^(n/3))`
-/

namespace A199252.P15886994399642900681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199256 (A141214 n + 7).toNat : ℚ) / (⌈Real.eulerMascheroniConstant ^ ((n : ℚ) / 3 : ℝ)⌉ : ℚ)

end

end A199252.P15886994399642900681

/-! ## A199252.P2598572007276292620

`A103377(n+1)*A199256(A141214(n)+7)`
-/

namespace A199252.P2598572007276292620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (n + 1) * A199256 (A141214 n + 7).toNat

end

end A199252.P2598572007276292620

/-!
# A199253: Number of nX5 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199253, there is no canonical definition to state claims against.
-/

/-! ## A199253.P6225213494432668457

`A199256(A374005(n+1))`
-/

namespace A199253.P6225213494432668457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (A374005 (n + 1)).toNat

end

end A199253.P6225213494432668457

/-! ## A199253.P15540269896875599842

`A199256(A167499(n+3))`
-/

namespace A199253.P15540269896875599842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (A167499 (n + 3)).toNat

end

end A199253.P15540269896875599842

/-! ## A199253.P1983106009651007586

`A199256(A155212(n)+13)`
-/

namespace A199253.P1983106009651007586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (A155212 n + 13).toNat

end

end A199253.P1983106009651007586

/-! ## A199253.P15718434135340454307

`A199256(A056000(n)+15)`
-/

namespace A199253.P15718434135340454307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (A056000 n + 15).toNat

end

end A199253.P15718434135340454307

/-! ## A199253.P13378078963419748882

`A199256(eq[7, A066657(n)])`
-/

namespace A199253.P13378078963419748882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199253.P13378078963419748882

/-!
# A199254: Number of nX6 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199254, there is no canonical definition to state claims against.
-/

/-! ## A199254.P17929078169349757888

`A199256(A374007(n+1))`
-/

namespace A199254.P17929078169349757888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (A374007 (n + 1)).toNat

end

end A199254.P17929078169349757888

/-! ## A199254.P3047928963491068229

`A199256(A056115(n)+21)`
-/

namespace A199254.P3047928963491068229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (A056115 n + 21).toNat

end

end A199254.P3047928963491068229

/-! ## A199254.P9546480151247510517

`A199256(A167499(n+4)+1)`
-/

namespace A199254.P9546480151247510517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (A167499 (n + 4) + 1).toNat

end

end A199254.P9546480151247510517

/-! ## A199254.P8877158677685058548

`A199256(A167487(n+4)-1)`
-/

namespace A199254.P8877158677685058548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (A167487 (n + 4) - 1).toNat

end

end A199254.P8877158677685058548

/-!
# A199255: Number of nX7 0..3 arrays with values 0..3 introduced in row major order, the number of instances of each value within one of each other, and no element equal to any horizontal or vertical neighbor.

The programs for A199255, there is no canonical definition to state claims against.
-/

/-! ## A199255.P7404757044622495049

`A199256(C(n+7, 2)+n+1)`
-/

namespace A199255.P7404757044622495049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199256 (Nat.choose (n + 7) 2 + (n + 1))

end

end A199255.P7404757044622495049

/-!
# A199257: G.f. satisfies: A(x) = exp( Sum_{n>=1} [Sum_{k=0..2*n} C(2*n,k)^2 * x^k * A(x)^k]* x^n/n ).

The programs for A199257, there is no canonical definition to state claims against.
-/

/-! ## A199257.P4172741312477739421

`A008612(A294586(n)+7)`
-/

namespace A199257.P4172741312477739421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A294586 n + 7).toNat

end

end A199257.P4172741312477739421

/-! ## A199257.P10830686223700702039

`A108954(A054139(n)-n)`
-/

namespace A199257.P10830686223700702039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A054139 n - (n : ℤ)).toNat

end

end A199257.P10830686223700702039

/-!
# A199258: Number of 3nX2 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to exactly one horizontal or vertical neighbor.

The programs for A199258, there is no canonical definition to state claims against.
-/

/-! ## A199258.P6817882605116812266

`A199261(A027468(n+1))`
-/

namespace A199258.P6817882605116812266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199261 (A027468 (n + 1)).toNat

end

end A199258.P6817882605116812266

/-!
# A199259: Number of 2n X 3 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to exactly one horizontal or vertical neighbor.

The programs for A199259, there is no canonical definition to state claims against.
-/

/-! ## A199259.P999607782898311497

`A199261(A100037(n+2))`
-/

namespace A199259.P999607782898311497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199261 (A100037 (n + 2)).toNat

end

end A199259.P999607782898311497

/-! ## A199259.P521534677504354516

`A199261(eq[8, A130125(n)])`
-/

namespace A199259.P521534677504354516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199259.P521534677504354516

/-! ## A199259.P4084476609941211346

`A199261(A033816(n+1)+1)`
-/

namespace A199259.P4084476609941211346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199261 (A033816 (n + 1) + 1).toNat

end

end A199259.P4084476609941211346

/-! ## A199259.P11365353108303727759

`A199261(A100038(n+1)-2)`
-/

namespace A199259.P11365353108303727759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199261 (A100038 (n + 1) - 2).toNat

end

end A199259.P11365353108303727759

/-!
# A199260: Number of nX6 0..2 arrays with values 0..2 introduced in row major order, the number of instances of each value within one of each other, and every element equal to exactly one horizontal or vertical neighbor.

The programs for A199260, there is no canonical definition to state claims against.
-/

/-! ## A199260.P16117214325495031011

`A199261(A167499(n+4)+1)`
-/

namespace A199260.P16117214325495031011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199261 (A167499 (n + 4) + 1).toNat

end

end A199260.P16117214325495031011

/-! ## A199260.P268676504813978648

`A199261(A167614(n+4)+3)`
-/

namespace A199260.P268676504813978648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199261 (A167614 (n + 4) + 3).toNat

end

end A199260.P268676504813978648

/-! ## A199260.P1651254300490667501

`A199261(A000096(n+4)+7)`
-/

namespace A199260.P1651254300490667501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199261 (A000096 (n + 4) + 7).toNat

end

end A199260.P1651254300490667501

/-! ## A199260.P5237966926388564399

`A199261(A141214(n+2)+9)`
-/

namespace A199260.P5237966926388564399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199261 (A141214 (n + 2) + 9).toNat

end

end A199260.P5237966926388564399

/-! ## A199260.P4211559446797346111

`A199261(eq[7, A131818(n+1)])`
-/

namespace A199260.P4211559446797346111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199260.P4211559446797346111

/-!
# A199262: Smallest m such that A199238(m) = n.

The programs for A199262, there is no canonical definition to state claims against.
-/

/-! ## A199262.P7754595659411687648

`A081118(A007733(n+1)+∑[n])`
-/

namespace A199262.P7754595659411687648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (A007733 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A199262.P7754595659411687648

/-! ## A199262.P8919878414206381463

`A089633(A007733(n+1)+A000096(n))`
-/

namespace A199262.P8919878414206381463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A007733 (n + 1) + A000096 n).toNat

end

end A199262.P8919878414206381463

/-!
# A199264: Period 18: repeat (9,8,7,6,5,4,3,2,1,0,1,2,3,4,5,6,7,8).

The programs for A199264, the canonical program `A199264.P13534496708539091849` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199264 has offset 0).

The definition of A199264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199264.P13534496708539091849

`abs(n%18-9)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199264

/-- `abs(n%18-9)` -/
def P13534496708539091849.Spec : Prop :=
  ∀ n, P13534496708539091849.a n = A199264 n

theorem P13534496708539091849.correct : P13534496708539091849.Spec := by
  intro n
  simp only [A199264]

end A199264

/-!
# A199296: Number of distinct values taken by 5th derivative of x^x^...^x (with n x's and parentheses inserted in all possible ways) at x=1.

The programs for A199296, there is no canonical definition to state claims against.
-/

/-! ## A199296.P14089449459946826235

`A216368(A077169(n)+n)`
-/

namespace A199296.P14089449459946826235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (A077169 n + (n : ℤ)).toNat

end

end A199296.P14089449459946826235

/-! ## A199296.P1781418552263007156

`A216368(A076027(n+2)+1)`
-/

namespace A199296.P1781418552263007156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (A076027 (n + 2) + 1).toNat

end

end A199296.P1781418552263007156

/-! ## A199296.P18350795479228562612

`A216368(∑[∑[A249351(n+2)]])`
-/

namespace A199296.P18350795479228562612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A199296.P18350795479228562612

/-! ## A199296.P12399248148436700177

`∑[A036621(A032565(n+1))-A050292(n)]`
-/

namespace A199296.P12399248148436700177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036621 (A032565 (n + 1)).toNat - A050292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199296.P12399248148436700177

/-!
# A199297: Binomial transform of A090426.

The programs for A199297, there is no canonical definition to state claims against.
-/

/-! ## A199297.P13640998775549954180

`A158565(A001654(n))+A054145(n)`
-/

namespace A199297.P13640998775549954180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158565 (A001654 n).toNat + A054145 n

end

end A199297.P13640998775549954180

/-! ## A199297.P9520797488602843408

`A001655(n)-A220400(A081010(n))`
-/

namespace A199297.P9520797488602843408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 n - A220400 (A081010 n).toNat

end

end A199297.P9520797488602843408

/-!
# A199299: a(n) = (2*n + 1)*6^n.

The programs for A199299, the canonical program `A199299.P17209784931460563670` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199299 has offset 0).

The definition of A199299 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*6^n` (program `A199299.P17209784931460563670`, by `A199299.P17209784931460563670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199299.P17209784931460563670

`(2*n+1)*6^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A199299

/-- `(2*n+1)*6^n` -/
def P17209784931460563670.Spec : Prop :=
  ∀ n, (P17209784931460563670.a n : ℤ) = A199299 n

theorem P17209784931460563670.correct : P17209784931460563670.Spec := by
  intro n
  simp only [A199299]

end A199299

/-! ## A199299.P14027924882564844774

`12*a(n-1)-36*a(n-2)` with `a(0)=1, a(1)=18`
-/

namespace A199299.P14027924882564844774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18] fun n a =>
  12 * a (n - 1) - 36 * a (n - 2)

end

end A199299.P14027924882564844774

namespace A199299

/-- `12*a(n-1)-36*a(n-2)` -/
def P14027924882564844774.Spec : Prop :=
  ∀ n, P14027924882564844774.a n = A199299 n

theorem P14027924882564844774.correct : P14027924882564844774.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A199299, Nat.add_sub_cancel, A199299.P14027924882564844774.a, A199299.P17209784931460563670.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A199299, Nat.add_sub_cancel, A199299.P14027924882564844774.a, A199299.P17209784931460563670.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199299

/-! ## A199299.P2503323553045747897

`A027266(2*n)`
-/

namespace A199299.P2503323553045747897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027266 (2 * n)

end

end A199299.P2503323553045747897

namespace A199299

/-- `A027266(2*n)` -/
def P2503323553045747897.Spec : Prop :=
  ∀ n, P2503323553045747897.a n = A199299 n

end A199299

/-! ## A199299.P16626360580199538081

`A027271(2*n)`
-/

namespace A199299.P16626360580199538081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027271 (2 * n)

end

end A199299.P16626360580199538081

namespace A199299

/-- `A027271(2*n)` -/
def P16626360580199538081.Spec : Prop :=
  ∀ n, P16626360580199538081.a n = A199299 n

end A199299

/-! ## A199299.P15919148964242387689

`abs(Δ[n²]*A000400(n))`
-/

namespace A199299.P15919148964242387689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000400 n|

end

end A199299.P15919148964242387689

namespace A199299

/-- `abs(Δ[n²]*A000400(n))` -/
def P15919148964242387689.Spec : Prop :=
  ∀ n, P15919148964242387689.a n = A199299 n

end A199299

/-! ## A199299.P17324384078212895011

`abs((A024062(n)+1)*Δ[n²])`
-/

namespace A199299.P17324384078212895011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A024062 n + 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A199299.P17324384078212895011

namespace A199299

/-- `abs((A024062(n)+1)*Δ[n²])` -/
def P17324384078212895011.Spec : Prop :=
  ∀ n, P17324384078212895011.a n = A199299 n

end A199299

/-! ## A199299.P4320603064114644589

`abs(Δ[n²]*A026549(2*n))`
-/

namespace A199299.P4320603064114644589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A026549 (2 * n)|

end

end A199299.P4320603064114644589

namespace A199299

/-- `abs(Δ[n²]*A026549(2*n))` -/
def P4320603064114644589.Spec : Prop :=
  ∀ n, P4320603064114644589.a n = A199299 n

end A199299

/-! ## A199299.P2334507377096394007

`A164559(n+1)+6*a(n-1)+1` with `a(0)=1`
-/

namespace A199299.P2334507377096394007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164559 (n + 1) + (6 * a (n - 1) + 1)

end

end A199299.P2334507377096394007

namespace A199299

/-- `A164559(n+1)+6*a(n-1)+1` -/
def P2334507377096394007.Spec : Prop :=
  ∀ n, P2334507377096394007.a n = A199299 n

end A199299

/-! ## A199299.P2325545293067978056

`(2*n+1)*A062394(n)-(2*n+1)`
-/

namespace A199299.P2325545293067978056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A062394 n - (2 * n + 1 : ℤ)

end

end A199299.P2325545293067978056

namespace A199299

/-- `(2*n+1)*A062394(n)-(2*n+1)` -/
def P2325545293067978056.Spec : Prop :=
  ∀ n, P2325545293067978056.a n = A199299 n

theorem P2325545293067978056.correct : P2325545293067978056.Spec := by
  intro n
  simp only [A199299, Nat.add_sub_cancel, A199299.P2325545293067978056.a, A199299.P17209784931460563670.a, A062394, A062394.P9863555022327054882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199299

/-! ## A199299.P14935084353933003535

`lcm(A000079(n), A124647(n))`
-/

namespace A199299.P14935084353933003535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A124647 n)

end

end A199299.P14935084353933003535

namespace A199299

/-- `lcm(A000079(n), A124647(n))` -/
def P14935084353933003535.Spec : Prop :=
  ∀ n, (P14935084353933003535.a n : ℤ) = A199299 n

end A199299

/-! ## A199299.P15136302806224961549

`∩[A027266(n), A027271(n)]`
-/

namespace A199299.P15136302806224961549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027266 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199299.P15136302806224961549

namespace A199299

/-- `∩[A027266(n), A027271(n)]` -/
def P15136302806224961549.Spec : Prop :=
  ∀ n, (P15136302806224961549.a n : ℤ) = A199299 n

end A199299

/-! ## A199299.P9086053355683780709

`A000400(n)+2*A036292(n)`
-/

namespace A199299.P9086053355683780709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n + 2 * A036292 n

end

end A199299.P9086053355683780709

namespace A199299

/-- `A000400(n)+2*A036292(n)` -/
def P9086053355683780709.Spec : Prop :=
  ∀ n, P9086053355683780709.a n = A199299 n

theorem P9086053355683780709.correct : P9086053355683780709.Spec := by
  intro n
  simp only [A199299, Nat.add_sub_cancel, A199299.P9086053355683780709.a, A199299.P17209784931460563670.a, A000400, A000400.P10889281521385558416.a, A036292, A036292.P17934490040438387144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199299

/-! ## A199299.P14539320380825723239

`2*A053469(n+1)-A000400(n)`
-/

namespace A199299.P14539320380825723239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053469 (n + 1) - A000400 n

end

end A199299.P14539320380825723239

namespace A199299

/-- `2*A053469(n+1)-A000400(n)` -/
def P14539320380825723239.Spec : Prop :=
  ∀ n, P14539320380825723239.a n = A199299 n

theorem P14539320380825723239.correct : P14539320380825723239.Spec := by
  intro n
  simp only [A199299, Nat.add_sub_cancel, A199299.P14539320380825723239.a, A199299.P17209784931460563670.a, A000400, A000400.P10889281521385558416.a, A053469, A053469.P13890258826874513024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199299

/-! ## A199299.P12240525260405007706

`A026549(2*n)+n*A026549(2*n+1)`
-/

namespace A199299.P12240525260405007706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n) + (n : ℤ) * A026549 (2 * n + 1)

end

end A199299.P12240525260405007706

namespace A199299

/-- `A026549(2*n)+n*A026549(2*n+1)` -/
def P12240525260405007706.Spec : Prop :=
  ∀ n, P12240525260405007706.a n = A199299 n

end A199299

/-! ## A199299.P11777163402637673580

`(2*n+1)*A000400(n+1)/6`
-/

namespace A199299.P11777163402637673580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * A000400 (n + 1) : ℚ) / 6

end

end A199299.P11777163402637673580

namespace A199299

/-- `(2*n+1)*A000400(n+1)/6` -/
def P11777163402637673580.Spec : Prop :=
  ∀ n, P11777163402637673580.a n = (A199299 n : ℚ)

theorem P11777163402637673580.correct : P11777163402637673580.Spec := by
  intro n
  simp only [A199299, Nat.add_sub_cancel, A199299.P11777163402637673580.a, A199299.P17209784931460563670.a, A000400, A000400.P10889281521385558416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199299

/-! ## A199299.P17705901911216753784

`A027266(A005843(n))%A027259(n+2)`
-/

namespace A199299.P17705901911216753784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027266 (A005843 n).toNat) (A027259 (n + 2))

end

end A199299.P17705901911216753784

namespace A199299

/-- `A027266(A005843(n))%A027259(n+2)` -/
def P17705901911216753784.Spec : Prop :=
  ∀ n, P17705901911216753784.a n = A199299 n

end A199299

