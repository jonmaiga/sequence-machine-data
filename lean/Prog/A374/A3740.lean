import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A374000: a(n) = Product_{i=1..m} prime(k + T(n,i)) where k = pi(A186702(n)), T(n,i) is the i-th term in row n of A186634, and m = length of row n of A186634.

The programs for A374000, there is no canonical definition to state claims against.
-/

/-! ## A374000.P2294497106345110546

`A181836(eq[3, A103502(2*(n+2))])`
-/

namespace A374000.P2294497106345110546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103502 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A374000.P2294497106345110546

/-!
# A374001: a(n) is the number of elements z of Z_p[i] such that #{z^k, k >= 0} = p^2-1 (where p denotes A002145(n), the n-th prime number congruent to 3 modulo 4).

The programs for A374001, there is no canonical definition to state claims against.
-/

/-! ## A374001.P5942306285520075324

`2*A319210(A002145(n+1))`
-/

namespace A374001.P5942306285520075324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319210 (A002145 (n + 1)).toNat

end

end A374001.P5942306285520075324

/-! ## A374001.P17472724041495477553

`A000010(record[A227334(n+3)])`
-/

namespace A374001.P17472724041495477553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227334 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A374001.P17472724041495477553

/-! ## A374001.P16999797161353028489

`A000010(A087691(n+1)-1)`
-/

namespace A374001.P16999797161353028489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A087691 (n + 1) - 1).toNat

end

end A374001.P16999797161353028489

/-! ## A374001.P5378555531809478406

`A000010(xor(1, A087691(n+1)))`
-/

namespace A374001.P5378555531809478406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.xor 1 (A087691 (n + 1))).toNat

end

end A374001.P5378555531809478406

/-! ## A374001.P11695597561384108712

`A000010(A002145(n+1)²-1)`
-/

namespace A374001.P11695597561384108712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002145 (n + 1) ^ 2 - 1).toNat

end

end A374001.P11695597561384108712

/-!
# A374004: a(n) = (1 + (n+3)^2 - (n-4)*(-1)^n)/2.

The programs for A374004, the canonical program `A374004.P1867741992155241888` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374004 has offset 1).

The definition of A374004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+(n+4)²-(n-3)*(-1)^(n+1))/2` (program `A374004.P17310505779286697129`, by `A374004.P17310505779286697129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374004.P17310505779286697129

`(1+(n+4)²-(n-3)*(-1)^(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374004.P17310505779286697129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + (n + 4) ^ 2 : ℤ) - ((n : ℤ) - 3) * (-1) ^ (n + 1) : ℚ) / 2

end

end A374004.P17310505779286697129

namespace A374004

/-- `(1+(n+4)²-(n-3)*(-1)^(n+1))/2` -/
def P17310505779286697129.Spec : Prop :=
  ∀ n, P17310505779286697129.a n = (A374004 (n + 1) : ℚ)

theorem P17310505779286697129.correct : P17310505779286697129.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A374004, Nat.add_sub_cancel, A374004.P17310505779286697129.a, A374004.P1867741992155241888.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A374004, Nat.add_sub_cancel, A374004.P17310505779286697129.a, A374004.P1867741992155241888.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A374004

/-! ## A374004.P1867741992155241888

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=7, a(1)=14, a(2)=18, a(3)=25, a(4)=33`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374004

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P1867741992155241888.Spec : Prop :=
  ∀ n, P1867741992155241888.a n = A374004 (n + 1)

theorem P1867741992155241888.correct : P1867741992155241888.Spec := by
  intro n
  simp only [A374004, Nat.add_sub_cancel]

end A374004

/-! ## A374004.P2512199576390298395

`A373663(n+2)+(-1)^(n+1)`
-/

namespace A374004.P2512199576390298395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373663 (n + 2) + (-1) ^ (n + 1)

end

end A374004.P2512199576390298395

namespace A374004

/-- `A373663(n+2)+(-1)^(n+1)` -/
def P2512199576390298395.Spec : Prop :=
  ∀ n, P2512199576390298395.a n = A374004 (n + 1)

end A374004

/-! ## A374004.P14586068753574200855

`A373662(n+2)+A373663(n+2)-A373663(n+1)`
-/

namespace A374004.P14586068753574200855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373662 (n + 2) + (A373663 (n + 2) - A373663 (n + 1))

end

end A374004.P14586068753574200855

namespace A374004

/-- `A373662(n+2)+A373663(n+2)-A373663(n+1)` -/
def P14586068753574200855.Spec : Prop :=
  ∀ n, P14586068753574200855.a n = A374004 (n + 1)

end A374004

/-! ## A374004.P18152055080982190424

`A374007(n+1)+A373663(n+2)-A374005(n+2)`
-/

namespace A374004.P18152055080982190424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374007 (n + 1) + (A373663 (n + 2) - A374005 (n + 2))

end

end A374004.P18152055080982190424

namespace A374004

/-- `A374007(n+1)+A373663(n+2)-A374005(n+2)` -/
def P18152055080982190424.Spec : Prop :=
  ∀ n, P18152055080982190424.a n = A374004 (n + 1)

end A374004

/-! ## A374004.P3249965343314184533

`A374011(n+1)+A373663(n+2)-A374010(n+2)`
-/

namespace A374004.P3249965343314184533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374011 (n + 1) + (A373663 (n + 2) - A374010 (n + 2))

end

end A374004.P3249965343314184533

namespace A374004

/-- `A374011(n+1)+A373663(n+2)-A374010(n+2)` -/
def P3249965343314184533.Spec : Prop :=
  ∀ n, P3249965343314184533.a n = A374004 (n + 1)

end A374004

/-! ## A374004.P10244759785528507214

`A296063(n+1)+A000384(A008619(n+3))`
-/

namespace A374004.P10244759785528507214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296063 (n + 1) + A000384 (A008619 (n + 3)).toNat

end

end A374004.P10244759785528507214

namespace A374004

/-- `A296063(n+1)+A000384(A008619(n+3))` -/
def P10244759785528507214.Spec : Prop :=
  ∀ n, P10244759785528507214.a n = A374004 (n + 1)

end A374004

/-! ## A374004.P3971155206368044916

`A316668(A000217(n+3)+n)`
-/

namespace A374004.P3971155206368044916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316668 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A374004.P3971155206368044916

namespace A374004

/-- `A316668(A000217(n+3)+n)` -/
def P3971155206368044916.Spec : Prop :=
  ∀ n, P3971155206368044916.a n = A374004 (n + 1)

end A374004

/-! ## A374004.P8375805976124585027

`eq[7, A122506(n+1)]`
-/

namespace A374004.P8375805976124585027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374004.P8375805976124585027

namespace A374004

/-- `eq[7, A122506(n+1)]` -/
def P8375805976124585027.Spec : Prop :=
  ∀ n, (P8375805976124585027.a n : ℤ) = A374004 (n + 1)

end A374004

/-! ## A374004.P13004013765184702546

`A056011(A167614(n+2)+1)`
-/

namespace A374004.P13004013765184702546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (A167614 (n + 2) + 1).toNat

end

end A374004.P13004013765184702546

namespace A374004

/-- `A056011(A167614(n+2)+1)` -/
def P13004013765184702546.Spec : Prop :=
  ∀ n, P13004013765184702546.a n = A374004 (n + 1)

end A374004

/-!
# A374005: a(n) = (1 + (n+4)^2 + (n-5)*(-1)^n)/2.

The programs for A374005, the canonical program `A374005.P11276605071297492801` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374005 has offset 1).

The definition of A374005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+(n+5)²+(n-4)*(-1)^(n+1))/2` (program `A374005.P14919851419465453464`, by `A374005.P14919851419465453464.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374005.P14919851419465453464

`(1+(n+5)²+(n-4)*(-1)^(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374005.P14919851419465453464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + (n + 5) ^ 2 : ℤ) + ((n : ℤ) - 4) * (-1) ^ (n + 1) : ℚ) / 2

end

end A374005.P14919851419465453464

namespace A374005

/-- `(1+(n+5)²+(n-4)*(-1)^(n+1))/2` -/
def P14919851419465453464.Spec : Prop :=
  ∀ n, P14919851419465453464.a n = (A374005 (n + 1) : ℚ)

theorem P14919851419465453464.correct : P14919851419465453464.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A374005, Nat.add_sub_cancel, A374005.P14919851419465453464.a, A374005.P11276605071297492801.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A374005, Nat.add_sub_cancel, A374005.P14919851419465453464.a, A374005.P11276605071297492801.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A374005

/-! ## A374005.P11276605071297492801

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=15, a(1)=17, a(2)=26, a(3)=32, a(4)=41`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374005

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P11276605071297492801.Spec : Prop :=
  ∀ n, P11276605071297492801.a n = A374005 (n + 1)

theorem P11276605071297492801.correct : P11276605071297492801.Spec := by
  intro n
  simp only [A374005, Nat.add_sub_cancel]

end A374005

/-! ## A374005.P12054072678384893275

`A374004(n+2)-(-1)^(n+1)`
-/

namespace A374005.P12054072678384893275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374004 (n + 2) - (-1) ^ (n + 1)

end

end A374005.P12054072678384893275

namespace A374005

/-- `A374004(n+2)-(-1)^(n+1)` -/
def P12054072678384893275.Spec : Prop :=
  ∀ n, P12054072678384893275.a n = A374005 (n + 1)

end A374005

/-! ## A374005.P10453748886514247883

`A373663(n+1)+A374004(n+2)-A373662(n+2)`
-/

namespace A374005.P10453748886514247883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373663 (n + 1) + (A374004 (n + 2) - A373662 (n + 2))

end

end A374005.P10453748886514247883

namespace A374005

/-- `A373663(n+1)+A374004(n+2)-A373662(n+2)` -/
def P10453748886514247883.Spec : Prop :=
  ∀ n, P10453748886514247883.a n = A374005 (n + 1)

end A374005

/-! ## A374005.P6384411444596317593

`A373663(n+2)+A374004(n+2)-A374004(n+1)`
-/

namespace A374005.P6384411444596317593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373663 (n + 2) + (A374004 (n + 2) - A374004 (n + 1))

end

end A374005.P6384411444596317593

namespace A374005

/-- `A373663(n+2)+A374004(n+2)-A374004(n+1)` -/
def P6384411444596317593.Spec : Prop :=
  ∀ n, P6384411444596317593.a n = A374005 (n + 1)

end A374005

/-! ## A374005.P5729277232344766707

`A374008(n+1)+A374004(n+2)-A374007(n+2)`
-/

namespace A374005.P5729277232344766707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374008 (n + 1) + (A374004 (n + 2) - A374007 (n + 2))

end

end A374005.P5729277232344766707

namespace A374005

/-- `A374008(n+1)+A374004(n+2)-A374007(n+2)` -/
def P5729277232344766707.Spec : Prop :=
  ∀ n, P5729277232344766707.a n = A374005 (n + 1)

end A374005

/-! ## A374005.P17899107152186853286

`A056011(eq[6, A131818(n+1)])`
-/

namespace A374005.P17899107152186853286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A374005.P17899107152186853286

namespace A374005

/-- `A056011(eq[6, A131818(n+1)])` -/
def P17899107152186853286.Spec : Prop :=
  ∀ n, P17899107152186853286.a n = A374005 (n + 1)

end A374005

/-! ## A374005.P7190558265013099318

`A056011(A130793(3*n+2)+A000217(n+4))`
-/

namespace A374005.P7190558265013099318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (A130793 (3 * n + 2) + A000217 (n + 4)).toNat

end

end A374005.P7190558265013099318

namespace A374005

/-- `A056011(A130793(3*n+2)+A000217(n+4))` -/
def P7190558265013099318.Spec : Prop :=
  ∀ n, P7190558265013099318.a n = A374005 (n + 1)

end A374005

/-!
# A374007: a(n) = (1 + (n+5)^2 - (n-6)*(-1)^n)/2.

The programs for A374007, the canonical program `A374007.P15289971276499875431` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374007 has offset 1).

The definition of A374007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+(n+6)²-(n-5)*(-1)^(n+1))/2` (program `A374007.P8252191783359222274`, by `A374007.P8252191783359222274.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374007.P8252191783359222274

`(1+(n+6)²-(n-5)*(-1)^(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374007.P8252191783359222274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + (n + 6) ^ 2 : ℤ) - ((n : ℤ) - 5) * (-1) ^ (n + 1) : ℚ) / 2

end

end A374007.P8252191783359222274

namespace A374007

/-- `(1+(n+6)²-(n-5)*(-1)^(n+1))/2` -/
def P8252191783359222274.Spec : Prop :=
  ∀ n, P8252191783359222274.a n = (A374007 (n + 1) : ℚ)

theorem P8252191783359222274.correct : P8252191783359222274.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A374007, Nat.add_sub_cancel, A374007.P8252191783359222274.a, A374007.P15289971276499875431.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A374007, Nat.add_sub_cancel, A374007.P8252191783359222274.a, A374007.P15289971276499875431.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A374007

/-! ## A374007.P15289971276499875431

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=16, a(1)=27, a(2)=31, a(3)=42, a(4)=50`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374007

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P15289971276499875431.Spec : Prop :=
  ∀ n, P15289971276499875431.a n = A374007 (n + 1)

theorem P15289971276499875431.correct : P15289971276499875431.Spec := by
  intro n
  simp only [A374007, Nat.add_sub_cancel]

end A374007

/-! ## A374007.P15044902570758930651

`A374005(n+2)+(-1)^(n+1)`
-/

namespace A374007.P15044902570758930651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374005 (n + 2) + (-1) ^ (n + 1)

end

end A374007.P15044902570758930651

namespace A374007

/-- `A374005(n+2)+(-1)^(n+1)` -/
def P15044902570758930651.Spec : Prop :=
  ∀ n, P15044902570758930651.a n = A374007 (n + 1)

end A374007

/-! ## A374007.P749367629269594857

`A373662(n+2)+A374005(n+2)-A373663(n+1)`
-/

namespace A374007.P749367629269594857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373662 (n + 2) + (A374005 (n + 2) - A373663 (n + 1))

end

end A374007.P749367629269594857

namespace A374007

/-- `A373662(n+2)+A374005(n+2)-A373663(n+1)` -/
def P749367629269594857.Spec : Prop :=
  ∀ n, P749367629269594857.a n = A374007 (n + 1)

end A374007

/-! ## A374007.P9345636992483395169

`A374004(n+2)+A374005(n+2)-A374005(n+1)`
-/

namespace A374007.P9345636992483395169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374004 (n + 2) + (A374005 (n + 2) - A374005 (n + 1))

end

end A374007.P9345636992483395169

namespace A374007

/-- `A374004(n+2)+A374005(n+2)-A374005(n+1)` -/
def P9345636992483395169.Spec : Prop :=
  ∀ n, P9345636992483395169.a n = A374007 (n + 1)

end A374007

/-! ## A374007.P1969516212720509346

`A374011(n+1)+A374005(n+2)-A374010(n+2)`
-/

namespace A374007.P1969516212720509346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374011 (n + 1) + (A374005 (n + 2) - A374010 (n + 2))

end

end A374007.P1969516212720509346

namespace A374007

/-- `A374011(n+1)+A374005(n+2)-A374010(n+2)` -/
def P1969516212720509346.Spec : Prop :=
  ∀ n, P1969516212720509346.a n = A374007 (n + 1)

end A374007

/-! ## A374007.P5917259782224728087

`A316668(Δ[A026054(n+3)])`
-/

namespace A374007.P5917259782224728087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316668 (f1 (n + 1) - f1 n).toNat

end

end A374007.P5917259782224728087

namespace A374007

/-- `A316668(Δ[A026054(n+3)])` -/
def P5917259782224728087.Spec : Prop :=
  ∀ n, P5917259782224728087.a n = A374007 (n + 1)

end A374007

/-! ## A374007.P15635045257568376787

`eq[A122506(n+1), A168095(n)]`
-/

namespace A374007.P15635045257568376787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374007.P15635045257568376787

namespace A374007

/-- `eq[A122506(n+1), A168095(n)]` -/
def P15635045257568376787.Spec : Prop :=
  ∀ n, (P15635045257568376787.a n : ℤ) = A374007 (n + 1)

end A374007

/-!
# A374008: a(n) = (1 + (n+6)^2 + (n-7)*(-1)^n)/2.

The programs for A374008, the canonical program `A374008.P9814541538914996476` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374008 has offset 1).

The definition of A374008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+(n+7)²+(n-6)*(-1)^(n+1))/2` (program `A374008.P6212271033659110056`, by `A374008.P6212271033659110056.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374008.P6212271033659110056

`(1+(n+7)²+(n-6)*(-1)^(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374008.P6212271033659110056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + (n + 7) ^ 2 : ℤ) + ((n : ℤ) - 6) * (-1) ^ (n + 1) : ℚ) / 2

end

end A374008.P6212271033659110056

namespace A374008

/-- `(1+(n+7)²+(n-6)*(-1)^(n+1))/2` -/
def P6212271033659110056.Spec : Prop :=
  ∀ n, P6212271033659110056.a n = (A374008 (n + 1) : ℚ)

theorem P6212271033659110056.correct : P6212271033659110056.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A374008, Nat.add_sub_cancel, A374008.P6212271033659110056.a, A374008.P9814541538914996476.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A374008, Nat.add_sub_cancel, A374008.P6212271033659110056.a, A374008.P9814541538914996476.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A374008

/-! ## A374008.P9814541538914996476

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=28, a(1)=30, a(2)=43, a(3)=49, a(4)=62`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374008

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P9814541538914996476.Spec : Prop :=
  ∀ n, P9814541538914996476.a n = A374008 (n + 1)

theorem P9814541538914996476.correct : P9814541538914996476.Spec := by
  intro n
  simp only [A374008, Nat.add_sub_cancel]

end A374008

/-! ## A374008.P702529205728444296

`A374007(n+2)-(-1)^(n+1)`
-/

namespace A374008.P702529205728444296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374007 (n + 2) - (-1) ^ (n + 1)

end

end A374008.P702529205728444296

namespace A374008

/-- `A374007(n+2)-(-1)^(n+1)` -/
def P702529205728444296.Spec : Prop :=
  ∀ n, P702529205728444296.a n = A374008 (n + 1)

end A374008

/-! ## A374008.P17086048926004587725

`A373663(n+1)+A374007(n+2)-A373662(n+2)`
-/

namespace A374008.P17086048926004587725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373663 (n + 1) + (A374007 (n + 2) - A373662 (n + 2))

end

end A374008.P17086048926004587725

namespace A374008

/-- `A373663(n+1)+A374007(n+2)-A373662(n+2)` -/
def P17086048926004587725.Spec : Prop :=
  ∀ n, P17086048926004587725.a n = A374008 (n + 1)

end A374008

/-! ## A374008.P3585510694040614254

`A374005(n+1)+A374007(n+2)-A374004(n+2)`
-/

namespace A374008.P3585510694040614254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374005 (n + 1) + (A374007 (n + 2) - A374004 (n + 2))

end

end A374008.P3585510694040614254

namespace A374008

/-- `A374005(n+1)+A374007(n+2)-A374004(n+2)` -/
def P3585510694040614254.Spec : Prop :=
  ∀ n, P3585510694040614254.a n = A374008 (n + 1)

end A374008

/-! ## A374008.P9796749534584582611

`A374005(n+2)+A374007(n+2)-A374007(n+1)`
-/

namespace A374008.P9796749534584582611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374005 (n + 2) + (A374007 (n + 2) - A374007 (n + 1))

end

end A374008.P9796749534584582611

namespace A374008

/-- `A374005(n+2)+A374007(n+2)-A374007(n+1)` -/
def P9796749534584582611.Spec : Prop :=
  ∀ n, P9796749534584582611.a n = A374008 (n + 1)

end A374008

/-! ## A374008.P13047466776297528450

`A056023(A167614(n+5)+n-2)`
-/

namespace A374008.P13047466776297528450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A167614 (n + 5) + ((n : ℤ) - 2)).toNat

end

end A374008.P13047466776297528450

namespace A374008

/-- `A056023(A167614(n+5)+n-2)` -/
def P13047466776297528450.Spec : Prop :=
  ∀ n, P13047466776297528450.a n = A374008 (n + 1)

end A374008

/-!
# A374009: a(n) = (1 + (n+7)^2 - (n-8)*(-1)^n)/2.

The programs for A374009, the canonical program `A374009.P9798477517314390234` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374009 has offset 1).

The definition of A374009 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+(n+8)²-(n-7)*(-1)^(n+1))/2` (program `A374009.P7621634314390158717`, by `A374009.P7621634314390158717.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374009.P7621634314390158717

`(1+(n+8)²-(n-7)*(-1)^(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374009.P7621634314390158717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + (n + 8) ^ 2 : ℤ) - ((n : ℤ) - 7) * (-1) ^ (n + 1) : ℚ) / 2

end

end A374009.P7621634314390158717

namespace A374009

/-- `(1+(n+8)²-(n-7)*(-1)^(n+1))/2` -/
def P7621634314390158717.Spec : Prop :=
  ∀ n, P7621634314390158717.a n = (A374009 (n + 1) : ℚ)

theorem P7621634314390158717.correct : P7621634314390158717.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A374009, Nat.add_sub_cancel, A374009.P7621634314390158717.a, A374009.P9798477517314390234.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A374009, Nat.add_sub_cancel, A374009.P7621634314390158717.a, A374009.P9798477517314390234.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A374009

/-! ## A374009.P9798477517314390234

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=29, a(1)=44, a(2)=48, a(3)=63, a(4)=71`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374009

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P9798477517314390234.Spec : Prop :=
  ∀ n, P9798477517314390234.a n = A374009 (n + 1)

theorem P9798477517314390234.correct : P9798477517314390234.Spec := by
  intro n
  simp only [A374009, Nat.add_sub_cancel]

end A374009

/-! ## A374009.P3768445351819310303

`A374008(n+2)+(-1)^(n+1)`
-/

namespace A374009.P3768445351819310303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374008 (n + 2) + (-1) ^ (n + 1)

end

end A374009.P3768445351819310303

namespace A374009

/-- `A374008(n+2)+(-1)^(n+1)` -/
def P3768445351819310303.Spec : Prop :=
  ∀ n, P3768445351819310303.a n = A374009 (n + 1)

end A374009

/-! ## A374009.P11109808447762877096

`A374007(n+2)+Δ[A374008(n+1)]`
-/

namespace A374009.P11109808447762877096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374007 (n + 2) + (f1 (n + 1) - f1 n)

end

end A374009.P11109808447762877096

namespace A374009

/-- `A374007(n+2)+Δ[A374008(n+1)]` -/
def P11109808447762877096.Spec : Prop :=
  ∀ n, P11109808447762877096.a n = A374009 (n + 1)

end A374009

/-! ## A374009.P11342557600124969537

`A373662(n+2)+A374008(n+2)-A373663(n+1)`
-/

namespace A374009.P11342557600124969537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373662 (n + 2) + (A374008 (n + 2) - A373663 (n + 1))

end

end A374009.P11342557600124969537

namespace A374009

/-- `A373662(n+2)+A374008(n+2)-A373663(n+1)` -/
def P11342557600124969537.Spec : Prop :=
  ∀ n, P11342557600124969537.a n = A374009 (n + 1)

end A374009

/-! ## A374009.P4256315697686456348

`A374007(n+1)+A374008(n+2)-A374005(n+2)`
-/

namespace A374009.P4256315697686456348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374007 (n + 1) + (A374008 (n + 2) - A374005 (n + 2))

end

end A374009.P4256315697686456348

namespace A374009

/-- `A374007(n+1)+A374008(n+2)-A374005(n+2)` -/
def P4256315697686456348.Spec : Prop :=
  ∀ n, P4256315697686456348.a n = A374009 (n + 1)

end A374009

/-! ## A374009.P16292566124516965358

`A374004(n+2)+A374008(n+2)-A374005(n+1)`
-/

namespace A374009.P16292566124516965358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374004 (n + 2) + (A374008 (n + 2) - A374005 (n + 1))

end

end A374009.P16292566124516965358

namespace A374009

/-- `A374004(n+2)+A374008(n+2)-A374005(n+1)` -/
def P16292566124516965358.Spec : Prop :=
  ∀ n, P16292566124516965358.a n = A374009 (n + 1)

end A374009

/-! ## A374009.P17749904629806088425

`A374007(n+2)+A374008(n+2)-A374008(n+1)`
-/

namespace A374009.P17749904629806088425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374007 (n + 2) + (A374008 (n + 2) - A374008 (n + 1))

end

end A374009.P17749904629806088425

namespace A374009

/-- `A374007(n+2)+A374008(n+2)-A374008(n+1)` -/
def P17749904629806088425.Spec : Prop :=
  ∀ n, P17749904629806088425.a n = A374009 (n + 1)

end A374009

/-! ## A374009.P6041857613774382684

`eq[A122506(n+1), A168099(n)]`
-/

namespace A374009.P6041857613774382684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374009.P6041857613774382684

namespace A374009

/-- `eq[A122506(n+1), A168099(n)]` -/
def P6041857613774382684.Spec : Prop :=
  ∀ n, (P6041857613774382684.a n : ℤ) = A374009 (n + 1)

end A374009

/-!
# A374010: a(n) = (1 + (n+8)^2 + (n-9)*(-1)^n)/2.

The programs for A374010, the canonical program `A374010.P9945939520415928802` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374010 has offset 1).

The definition of A374010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+(n+9)²+(n-8)*(-1)^(n+1))/2` (program `A374010.P17457165626545290548`, by `A374010.P17457165626545290548.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374010.P17457165626545290548

`(1+(n+9)²+(n-8)*(-1)^(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374010.P17457165626545290548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + (n + 9) ^ 2 : ℤ) + ((n : ℤ) - 8) * (-1) ^ (n + 1) : ℚ) / 2

end

end A374010.P17457165626545290548

namespace A374010

/-- `(1+(n+9)²+(n-8)*(-1)^(n+1))/2` -/
def P17457165626545290548.Spec : Prop :=
  ∀ n, P17457165626545290548.a n = (A374010 (n + 1) : ℚ)

theorem P17457165626545290548.correct : P17457165626545290548.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A374010, Nat.add_sub_cancel, A374010.P17457165626545290548.a, A374010.P9945939520415928802.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A374010, Nat.add_sub_cancel, A374010.P17457165626545290548.a, A374010.P9945939520415928802.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A374010

/-! ## A374010.P9945939520415928802

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=45, a(1)=47, a(2)=64, a(3)=70, a(4)=87`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374010

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P9945939520415928802.Spec : Prop :=
  ∀ n, P9945939520415928802.a n = A374010 (n + 1)

theorem P9945939520415928802.correct : P9945939520415928802.Spec := by
  intro n
  simp only [A374010, Nat.add_sub_cancel]

end A374010

/-! ## A374010.P1196507508589992059

`A374009(n+2)-(-1)^(n+1)`
-/

namespace A374010.P1196507508589992059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374009 (n + 2) - (-1) ^ (n + 1)

end

end A374010.P1196507508589992059

namespace A374010

/-- `A374009(n+2)-(-1)^(n+1)` -/
def P1196507508589992059.Spec : Prop :=
  ∀ n, P1196507508589992059.a n = A374010 (n + 1)

end A374010

/-! ## A374010.P16319242536120119890

`A374005(n+1)+A374009(n+2)-A374004(n+2)`
-/

namespace A374010.P16319242536120119890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374005 (n + 1) + (A374009 (n + 2) - A374004 (n + 2))

end

end A374010.P16319242536120119890

namespace A374010

/-- `A374005(n+1)+A374009(n+2)-A374004(n+2)` -/
def P16319242536120119890.Spec : Prop :=
  ∀ n, P16319242536120119890.a n = A374010 (n + 1)

end A374010

/-! ## A374010.P12471003893855896844

`A374005(n+2)+A374009(n+2)-A374007(n+1)`
-/

namespace A374010.P12471003893855896844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374005 (n + 2) + (A374009 (n + 2) - A374007 (n + 1))

end

end A374010.P12471003893855896844

namespace A374010

/-- `A374005(n+2)+A374009(n+2)-A374007(n+1)` -/
def P12471003893855896844.Spec : Prop :=
  ∀ n, P12471003893855896844.a n = A374010 (n + 1)

end A374010

/-! ## A374010.P3547248805978283422

`eq[9, A092543(n+1)]+1`
-/

namespace A374010.P3547248805978283422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374010.P3547248805978283422

namespace A374010

/-- `eq[9, A092543(n+1)]+1` -/
def P3547248805978283422.Spec : Prop :=
  ∀ n, (P3547248805978283422.a n : ℤ) = A374010 (n + 1)

end A374010

/-!
# A374011: a(n) = (1 + (n+9)^2 - (n-10)*(-1)^n)/2.

The programs for A374011, the canonical program `A374011.P11794561770369271717` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374011 has offset 1).

The definition of A374011 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+(n+10)²-(n-9)*(-1)^(n+1))/2` (program `A374011.P18432134928941454345`, by `A374011.P18432134928941454345.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374011.P18432134928941454345

`(1+(n+10)²-(n-9)*(-1)^(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374011.P18432134928941454345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + (n + 10) ^ 2 : ℤ) - ((n : ℤ) - 9) * (-1) ^ (n + 1) : ℚ) / 2

end

end A374011.P18432134928941454345

namespace A374011

/-- `(1+(n+10)²-(n-9)*(-1)^(n+1))/2` -/
def P18432134928941454345.Spec : Prop :=
  ∀ n, P18432134928941454345.a n = (A374011 (n + 1) : ℚ)

theorem P18432134928941454345.correct : P18432134928941454345.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A374011, Nat.add_sub_cancel, A374011.P18432134928941454345.a, A374011.P11794561770369271717.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A374011, Nat.add_sub_cancel, A374011.P18432134928941454345.a, A374011.P11794561770369271717.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A374011

/-! ## A374011.P11794561770369271717

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=46, a(1)=65, a(2)=69, a(3)=88, a(4)=96`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374011

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P11794561770369271717.Spec : Prop :=
  ∀ n, P11794561770369271717.a n = A374011 (n + 1)

theorem P11794561770369271717.correct : P11794561770369271717.Spec := by
  intro n
  simp only [A374011, Nat.add_sub_cancel]

end A374011

/-! ## A374011.P1574193937507530175

`A374010(n+2)+(-1)^(n+1)`
-/

namespace A374011.P1574193937507530175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374010 (n + 2) + (-1) ^ (n + 1)

end

end A374011.P1574193937507530175

namespace A374011

/-- `A374010(n+2)+(-1)^(n+1)` -/
def P1574193937507530175.Spec : Prop :=
  ∀ n, P1574193937507530175.a n = A374011 (n + 1)

end A374011

/-! ## A374011.P1583927344218528030

`A373662(n+2)+A374010(n+2)-A373663(n+1)`
-/

namespace A374011.P1583927344218528030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373662 (n + 2) + (A374010 (n + 2) - A373663 (n + 1))

end

end A374011.P1583927344218528030

namespace A374011

/-- `A373662(n+2)+A374010(n+2)-A373663(n+1)` -/
def P1583927344218528030.Spec : Prop :=
  ∀ n, P1583927344218528030.a n = A374011 (n + 1)

end A374011

/-! ## A374011.P11448559134660417067

`A374004(n+1)+A374010(n+2)-A373663(n+2)`
-/

namespace A374011.P11448559134660417067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374004 (n + 1) + (A374010 (n + 2) - A373663 (n + 2))

end

end A374011.P11448559134660417067

namespace A374011

/-- `A374004(n+1)+A374010(n+2)-A373663(n+2)` -/
def P11448559134660417067.Spec : Prop :=
  ∀ n, P11448559134660417067.a n = A374011 (n + 1)

end A374011

/-! ## A374011.P153035393550889437

`A374007(n+1)+A374010(n+2)-A374005(n+2)`
-/

namespace A374011.P153035393550889437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374007 (n + 1) + (A374010 (n + 2) - A374005 (n + 2))

end

end A374011.P153035393550889437

namespace A374011

/-- `A374007(n+1)+A374010(n+2)-A374005(n+2)` -/
def P153035393550889437.Spec : Prop :=
  ∀ n, P153035393550889437.a n = A374011 (n + 1)

end A374011

/-! ## A374011.P11040171470759671177

`A374004(n+2)+A374010(n+2)-A374005(n+1)`
-/

namespace A374011.P11040171470759671177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374004 (n + 2) + (A374010 (n + 2) - A374005 (n + 1))

end

end A374011.P11040171470759671177

namespace A374011

/-- `A374004(n+2)+A374010(n+2)-A374005(n+1)` -/
def P11040171470759671177.Spec : Prop :=
  ∀ n, P11040171470759671177.a n = A374011 (n + 1)

end A374011

/-! ## A374011.P1616387233839053051

`A056011(eq[6, A264391(n)]+19)`
-/

namespace A374011.P1616387233839053051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 19)

end

end A374011.P1616387233839053051

namespace A374011

/-- `A056011(eq[6, A264391(n)]+19)` -/
def P1616387233839053051.Spec : Prop :=
  ∀ n, P1616387233839053051.a n = A374011 (n + 1)

end A374011

/-!
# A374012: Least number of 6th powers needed to represent n.

The programs for A374012, there is no canonical definition to state claims against.
-/

/-! ## A374012.P15064525381537622035

`gcd(2^C(n+1, 64)²+n, ((n+1)/∏{p}[n+1, #^val(n+1, #²)])²)`
-/

namespace A374012.P15064525381537622035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 ^ Nat.choose (n + 1) 64 ^ 2 + n : ℤ) (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2))

end

end A374012.P15064525381537622035

/-! ## A374012.P10453531524201509878

`gcd(2^C(n+1, 64)²+n, A000217(Δ[n²]))`
-/

namespace A374012.P10453531524201509878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 ^ Nat.choose (n + 1) 64 ^ 2 + n : ℤ) (A000217 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A374012.P10453531524201509878

/-! ## A374012.P10531762567924761083

`gcd(n+1, A342633(A151934(n)))`
-/

namespace A374012.P10531762567924761083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A342633 (A151934 n).toNat)

end

end A374012.P10531762567924761083

/-! ## A374012.P17047954001603929374

`n%A000203(A220501(n+3))+1`
-/

namespace A374012.P17047954001603929374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000203 (A220501 (n + 3)).toNat) + 1

end

end A374012.P17047954001603929374

/-! ## A374012.P17790381557170181438

`n+1-n*A287556(A151935(n)+1)`
-/

namespace A374012.P17790381557170181438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (n : ℤ) * A287556 (A151935 n + 1).toNat

end

end A374012.P17790381557170181438

/-!
# A374014: Expansion of (Sum_{k>=0} x^(k^4))^16.

The programs for A374014, there is no canonical definition to state claims against.
-/

/-! ## A374014.P3468399015222787068

`lcm(n+1, A010932(n))`
-/

namespace A374014.P3468399015222787068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A010932 n)

end

end A374014.P3468399015222787068

/-!
# A374015: Residue modulo 5 of n! divided by the highest power of 10 which divides n!.

The programs for A374015, the canonical program `A374015.P15186651085114264246` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374015 has offset 0).

The definition of A374015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374015.P15186651085114264246

`A008904(n)%5`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A374015

/-- `A008904(n)%5` -/
def P15186651085114264246.Spec : Prop :=
  ∀ n, P15186651085114264246.a n = A374015 n

theorem P15186651085114264246.correct : P15186651085114264246.Spec := by
  intro n
  simp only [A374015]

end A374015

/-! ## A374015.P5857281675868095478

`A243657(n)%A000001(A054397(n+1))`
-/

namespace A374015.P5857281675868095478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243657 n) (A000001 (A054397 (n + 1)).toNat)

end

end A374015.P5857281675868095478

namespace A374015

/-- `A243657(n)%A000001(A054397(n+1))` -/
def P5857281675868095478.Spec : Prop :=
  ∀ n, P5857281675868095478.a n = A374015 n

end A374015

/-! ## A374015.P7624690679712489611

`A356757(n)%5`
-/

namespace A374015.P7624690679712489611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356757 n) 5

end

end A374015.P7624690679712489611

namespace A374015

/-- `A356757(n)%5` -/
def P7624690679712489611.Spec : Prop :=
  ∀ n, P7624690679712489611.a n = A374015 n

end A374015

/-! ## A374015.P10069234434993069571

`A004154(n)%5`
-/

namespace A374015.P10069234434993069571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004154 n) 5

end

end A374015.P10069234434993069571

namespace A374015

/-- `A004154(n)%5` -/
def P10069234434993069571.Spec : Prop :=
  ∀ n, P10069234434993069571.a n = A374015 n

end A374015

/-! ## A374015.P16691712669524657443

`A374265(n)%5`
-/

namespace A374015.P16691712669524657443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374265 n) 5

end

end A374015.P16691712669524657443

namespace A374015

/-- `A374265(n)%5` -/
def P16691712669524657443.Spec : Prop :=
  ∀ n, P16691712669524657443.a n = A374015 n

end A374015

/-!
# A374016: a(n) = 1 if n is a fourth power, else 0.

The programs for A374016, the canonical program `A374016.P9927166468113053347` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374016 has offset 0).

The definition of A374016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374016.P7936709142568094174

`char[n^4]`
-/

namespace A374016.P7936709142568094174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A374016.P7936709142568094174

namespace A374016

/-- `char[n^4]` -/
def P7936709142568094174.Spec : Prop :=
  ∀ n, (P7936709142568094174.a n : ℤ) = A374016 n

end A374016

/-! ## A374016.P9927166468113053347

`∏{e}[n, val(#, 4)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374016

/-- `∏{e}[n, val(#, 4)]` -/
def P9927166468113053347.Spec : Prop :=
  ∀ n, (P9927166468113053347.a n : ℤ) = A374016 n

theorem P9927166468113053347.correct : P9927166468113053347.Spec := by
  intro n
  simp only [A374016]

end A374016

/-! ## A374016.P14818778517811255112

`and(1, char[n²²])`
-/

namespace A374016.P14818778517811255112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A374016.P14818778517811255112

namespace A374016

/-- `and(1, char[n²²])` -/
def P14818778517811255112.Spec : Prop :=
  ∀ n, (P14818778517811255112.a n : ℤ) = A374016 n

end A374016

/-! ## A374016.P7123950863011292161

`ceil(sin(char[n²²]))`
-/

namespace A374016.P7123950863011292161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A374016.P7123950863011292161

namespace A374016

/-- `ceil(sin(char[n²²]))` -/
def P7123950863011292161.Spec : Prop :=
  ∀ n, P7123950863011292161.a n = A374016 n

end A374016

/-! ## A374016.P14002285943538791060

`floor(tan(char[n²²]))`
-/

namespace A374016.P14002285943538791060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A374016.P14002285943538791060

namespace A374016

/-- `floor(tan(char[n²²]))` -/
def P14002285943538791060.Spec : Prop :=
  ∀ n, P14002285943538791060.a n = A374016 n

end A374016

/-! ## A374016.P9973237051132896964

`round(sin(char[n²²]))`
-/

namespace A374016.P9973237051132896964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A374016.P9973237051132896964

namespace A374016

/-- `round(sin(char[n²²]))` -/
def P9973237051132896964.Spec : Prop :=
  ∀ n, P9973237051132896964.a n = A374016 n

end A374016

/-! ## A374016.P17443104182706109019

`floor(asin(char[n²²]))`
-/

namespace A374016.P17443104182706109019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A374016.P17443104182706109019

namespace A374016

/-- `floor(asin(char[n²²]))` -/
def P17443104182706109019.Spec : Prop :=
  ∀ n, P17443104182706109019.a n = A374016 n

end A374016

/-! ## A374016.P14605336166890543820

`ceil(atan(char[n²²]))`
-/

namespace A374016.P14605336166890543820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A374016.P14605336166890543820

namespace A374016

/-- `ceil(atan(char[n²²]))` -/
def P14605336166890543820.Spec : Prop :=
  ∀ n, P14605336166890543820.a n = A374016 n

end A374016

/-! ## A374016.P9578753611582125315

`round(atan(char[n²²]))`
-/

namespace A374016.P9578753611582125315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A374016.P9578753611582125315

namespace A374016

/-- `round(atan(char[n²²]))` -/
def P9578753611582125315.Spec : Prop :=
  ∀ n, P9578753611582125315.a n = A374016 n

end A374016

/-! ## A374016.P14168302465991195185

`floor(sinh(char[n²²]))`
-/

namespace A374016.P14168302465991195185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A374016.P14168302465991195185

namespace A374016

/-- `floor(sinh(char[n²²]))` -/
def P14168302465991195185.Spec : Prop :=
  ∀ n, P14168302465991195185.a n = A374016 n

end A374016

/-! ## A374016.P5299176242384236576

`round(sinh(char[n²²]))`
-/

namespace A374016.P5299176242384236576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A374016.P5299176242384236576

namespace A374016

/-- `round(sinh(char[n²²]))` -/
def P5299176242384236576.Spec : Prop :=
  ∀ n, P5299176242384236576.a n = A374016 n

end A374016

/-! ## A374016.P777017548613331673

`ceil(tanh(char[n²²]))`
-/

namespace A374016.P777017548613331673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A374016.P777017548613331673

namespace A374016

/-- `ceil(tanh(char[n²²]))` -/
def P777017548613331673.Spec : Prop :=
  ∀ n, P777017548613331673.a n = A374016 n

end A374016

/-! ## A374016.P14856201902621540045

`round(tanh(char[n²²]))`
-/

namespace A374016.P14856201902621540045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A374016.P14856201902621540045

namespace A374016

/-- `round(tanh(char[n²²]))` -/
def P14856201902621540045.Spec : Prop :=
  ∀ n, P14856201902621540045.a n = A374016 n

end A374016

/-! ## A374016.P15867905926898081311

`acos(cos(char[n²²]))`
-/

namespace A374016.P15867905926898081311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A374016.P15867905926898081311

namespace A374016

/-- `acos(cos(char[n²²]))` -/
def P15867905926898081311.Spec : Prop :=
  ∀ n, P15867905926898081311.a n = (A374016 n : ℝ)

end A374016

/-! ## A374016.P15748229284688245689

`asin(sin(char[n²²]))`
-/

namespace A374016.P15748229284688245689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A374016.P15748229284688245689

namespace A374016

/-- `asin(sin(char[n²²]))` -/
def P15748229284688245689.Spec : Prop :=
  ∀ n, P15748229284688245689.a n = (A374016 n : ℝ)

end A374016

/-! ## A374016.P1773541776400504100

`C(n, A018798(n))`
-/

namespace A374016.P1773541776400504100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A018798 n).toNat

end

end A374016.P1773541776400504100

namespace A374016

/-- `C(n, A018798(n))` -/
def P1773541776400504100.Spec : Prop :=
  ∀ n, (P1773541776400504100.a n : ℤ) = A374016 n

end A374016

/-! ## A374016.P11729925943890108996

`∏{e}[n, A011765(#)]`
-/

namespace A374016.P11729925943890108996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A011765 (Nat.factorization (f1 n) p)

end

end A374016.P11729925943890108996

namespace A374016

/-- `∏{e}[n, A011765(#)]` -/
def P11729925943890108996.Spec : Prop :=
  ∀ n, P11729925943890108996.a n = A374016 n

end A374016

/-! ## A374016.P1013494037897380149

`∏{e}[n, A327928(#)]`
-/

namespace A374016.P1013494037897380149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A327928 (Nat.factorization (f1 n) p)

end

end A374016.P1013494037897380149

namespace A374016

/-- `∏{e}[n, A327928(#)]` -/
def P1013494037897380149.Spec : Prop :=
  ∀ n, P1013494037897380149.a n = A374016 n

end A374016

/-! ## A374016.P7396339908860939702

`A010052(n*A056926(n))`
-/

namespace A374016.P7396339908860939702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) * A056926 n).toNat

end

end A374016.P7396339908860939702

namespace A374016

/-- `A010052(n*A056926(n))` -/
def P7396339908860939702.Spec : Prop :=
  ∀ n, P7396339908860939702.a n = A374016 n

end A374016

/-!
# A374017: Number of solutions to x^2 + 11*y^2 = n in positive integers x and y.

The programs for A374017, there is no canonical definition to state claims against.
-/

/-! ## A374017.P17566311621008555515

`A002265(A033723(n))`
-/

namespace A374017.P17566311621008555515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A033723 n).toNat

end

end A374017.P17566311621008555515

/-! ## A374017.P2291801203347681196

`A105512(A033723(n))%A000217(A366577(n))`
-/

namespace A374017.P2291801203347681196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105512 (A033723 n).toNat) (A000217 (A366577 n).toNat)

end

end A374017.P2291801203347681196

/-! ## A374017.P1206360090287694740

`A105512(A033723(n))*A321167(A366577(n)+1)`
-/

namespace A374017.P1206360090287694740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 (A033723 n).toNat * A321167 (A366577 n + 1).toNat

end

end A374017.P1206360090287694740

/-! ## A374017.P377901812588955905

`A105512(A033723(n))^A000712(n)`
-/

namespace A374017.P377901812588955905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105512 (A033723 n).toNat : ℚ) ^ (A000712 n : ℤ)

end

end A374017.P377901812588955905

/-! ## A374017.P14501905797136489387

`A105512(A033723(n))^A089732(n)`
-/

namespace A374017.P14501905797136489387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105512 (A033723 n).toNat : ℚ) ^ (A089732 n : ℤ)

end

end A374017.P14501905797136489387

/-! ## A374017.P5044792976048004696

`A105512(A033723(n))^A158657(n+1)`
-/

namespace A374017.P5044792976048004696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105512 (A033723 n).toNat : ℚ) ^ (A158657 (n + 1) : ℤ)

end

end A374017.P5044792976048004696

/-! ## A374017.P5683641470326481300

`A105512(A033723(n))^A176116(n+1)`
-/

namespace A374017.P5683641470326481300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105512 (A033723 n).toNat : ℚ) ^ (A176116 (n + 1) : ℤ)

end

end A374017.P5683641470326481300

/-! ## A374017.P8021236234650276458

`A105512(A033723(n))^A186294(n+1)`
-/

namespace A374017.P8021236234650276458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105512 (A033723 n).toNat : ℚ) ^ (A186294 (n + 1) : ℤ)

end

end A374017.P8021236234650276458

/-! ## A374017.P8158901111386718118

`A105512(A033723(n))^A249550(n+1)`
-/

namespace A374017.P8158901111386718118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105512 (A033723 n).toNat : ℚ) ^ (A249550 (n + 1) : ℤ)

end

end A374017.P8158901111386718118

/-!
# A374021: Row products of A351153.

The programs for A374021, there is no canonical definition to state claims against.
-/

/-! ## A374021.P2829513476176969188

`A057475(2^∑[n])`
-/

namespace A374021.P2829513476176969188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057475 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A374021.P2829513476176969188

/-!
# A374022: a(n) is the cardinality of the set containing all noninteger rationals of the form m/2^(bigomega(m) - 1) <= n.

The programs for A374022, there is no canonical definition to state claims against.
-/

/-! ## A374022.P16903282832994077111

`A373943(n+1)-A000720(n+1)`
-/

namespace A374022.P16903282832994077111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373943 (n + 1) - A000720 (n + 1)

end

end A374022.P16903282832994077111

/-! ## A374022.P14057460359690394174

`A373943(n+1)-∑[A010051(n+1)]`
-/

namespace A374022.P14057460359690394174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373943 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374022.P14057460359690394174

/-! ## A374022.P1380795179249761984

`A373943(n+1)-(n-A065855(n+1))`
-/

namespace A374022.P1380795179249761984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373943 (n + 1) - ((n : ℤ) - A065855 (n + 1))

end

end A374022.P1380795179249761984

/-!
# A374024: Integers k such that digsum(k) = digsum(k^2) = p, where p is prime and digsum(i) = A007953(i).

The programs for A374024, there is no canonical definition to state claims against.
-/

/-! ## A374024.P13568159077776097120

`∩[A028834(n+1), A058369(n+1)]`
-/

namespace A374024.P13568159077776097120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374024.P13568159077776097120

/-! ## A374024.P13647202457142150462

`∩[A028834(n+1), A268135(n+1)]`
-/

namespace A374024.P13647202457142150462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374024.P13647202457142150462

/-! ## A374024.P10635704464347299471

`∩[A058369(n+1), A107289(n+1)]`
-/

namespace A374024.P10635704464347299471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374024.P10635704464347299471

/-! ## A374024.P146828913590587787

`∩[A107289(n+1), A351650(n+1)]`
-/

namespace A374024.P146828913590587787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374024.P146828913590587787

/-!
# A374025: a(n) is the largest digit sum of all n-digit fifth powers.

The programs for A374025, there is no canonical definition to state claims against.
-/

/-! ## A374025.P13042716899902006023

`A055566(A379650(n+1))`
-/

namespace A374025.P13042716899902006023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055566 (A379650 (n + 1)).toNat

end

end A374025.P13042716899902006023

/-! ## A374025.P5678237036645701299

`A055566(A380566(n+1))`
-/

namespace A374025.P5678237036645701299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055566 (A380566 (n + 1)).toNat

end

end A374025.P5678237036645701299

/-!
# A374028: Lexicographically earliest sequence of prime numbers whose partial products, starting from the second, are all Fermat pseudoprimes to base 2 (A001567).

The programs for A374028, there is no canonical definition to state claims against.
-/

/-! ## A374028.P428610575705188670

`A374029(A001096(n)+1)`
-/

namespace A374028.P428610575705188670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374029 (A001096 n + 1).toNat

end

end A374028.P428610575705188670

/-! ## A374028.P733254708151054033

`A374029(A008835(2*(n+2))²+n)`
-/

namespace A374028.P733254708151054033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374029 (A008835 (2 * (n + 2)) ^ 2 + (n : ℤ)).toNat

end

end A374028.P733254708151054033

/-!
# A374029: Lexicographically earliest strictly increasing sequence of prime numbers whose partial products, starting from the second, are all Fermat pseudoprimes to base 2 (A001567).

The programs for A374029, there is no canonical definition to state claims against.
-/

/-! ## A374029.P3535423422853426470

`A374028(A029964(n+2))`
-/

namespace A374029.P3535423422853426470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374028 (A029964 (n + 2)).toNat

end

end A374029.P3535423422853426470

/-! ## A374029.P15862181075066877914

`A000027(record[A374028(n+1)])`
-/

namespace A374029.P15862181075066877914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A374029.P15862181075066877914

/-!
# A374030: Number of decompositions of 2n-1 into sums of a prime and a primitive practical number (A267124).

The programs for A374030, there is no canonical definition to state claims against.
-/

/-! ## A374030.P14795363405900105145

`gcd(2*n, A001221(A372889(n)))`
-/

namespace A374030.P14795363405900105145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A001221 (A372889 n).toNat)

end

end A374030.P14795363405900105145

/-! ## A374030.P1338302719889479305

`gcd(A001222(A372889(n)), A001787(n))`
-/

namespace A374030.P1338302719889479305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A372889 n).toNat) (A001787 n)

end

end A374030.P1338302719889479305

/-! ## A374030.P2046736784404664873

`gcd(A001221(A372889(n)), A004924(n))`
-/

namespace A374030.P2046736784404664873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A372889 n).toNat) (A004924 n)

end

end A374030.P2046736784404664873

/-! ## A374030.P11953190261519315127

`A303975(A089068(n)+A078830(n+1))`
-/

namespace A374030.P11953190261519315127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A089068 n + A078830 (n + 1)).toNat

end

end A374030.P11953190261519315127

/-! ## A374030.P18435156550797455854

`A144095(A332307(n+1)+A332306(n+1))`
-/

namespace A374030.P18435156550797455854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144095 (A332307 (n + 1) + A332306 (n + 1)).toNat

end

end A374030.P18435156550797455854

/-!
# A374031: a(n) = gcd(A276085(n), A328768(n)), where A276085 is the primorial base log-function, and A328768 is the first primorial based variant of arithmetic derivative.

The programs for A374031, there is no canonical definition to state claims against.
-/

/-! ## A374031.P13950658648099963599

`gcd(A276085(n+1), A328768(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374031.P13950658648099963599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276085 (n + 1)) (A328768 (n + 1))

end

end A374031.P13950658648099963599

/-! ## A374031.P6161807067667126510

`A276085(n+1)^A327072(A337107(n+1))`
-/

namespace A374031.P6161807067667126510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276085 (n + 1) : ℚ) ^ (A327072 (A337107 (n + 1)).toNat : ℤ)

end

end A374031.P6161807067667126510

/-! ## A374031.P1431603938571523073

`A276085(n+1)%A098268(3*n+4)`
-/

namespace A374031.P1431603938571523073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 1)) (A098268 (3 * n + 4))

end

end A374031.P1431603938571523073

/-! ## A374031.P16390223606504715520

`A276085(n+1)^A249351(A287578(2*n+1))`
-/

namespace A374031.P16390223606504715520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276085 (n + 1) : ℚ) ^ (A249351 (A287578 (2 * n + 1)).toNat : ℤ)

end

end A374031.P16390223606504715520

/-! ## A374031.P8101043123841188388

`A276085(n+1)^A028720(A028720(3*n+1))`
-/

namespace A374031.P8101043123841188388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276085 (n + 1) : ℚ) ^ (A028720 (A028720 (3 * n + 1)).toNat : ℤ)

end

end A374031.P8101043123841188388

/-!
# A374033: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278226(A373985(i)) = A278226(A373985(j)), for all i, j >= 1.

The programs for A374033, there is no canonical definition to state claims against.
-/

/-! ## A374033.P959183367767996413

`gcd(A062362(n+1), A361216(n+1))`
-/

namespace A374033.P959183367767996413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062362 (n + 1)) (A361216 (n + 1))

end

end A374033.P959183367767996413

/-! ## A374033.P14136529542976925190

`A333768(A048691(n+1)*A060594(n+1))`
-/

namespace A374033.P14136529542976925190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (A048691 (n + 1) * A060594 (n + 1)).toNat

end

end A374033.P14136529542976925190

/-! ## A374033.P3049728422462706444

`A130654(A003600(2*(n+1))-A001222(n+1))`
-/

namespace A374033.P3049728422462706444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130654 (A003600 (2 * (n + 1)) - A001222 (n + 1)).toNat

end

end A374033.P3049728422462706444

/-! ## A374033.P3701548805064115980

`A323014(A018892(2*(n+1))%A285899(3*n+5))`
-/

namespace A374033.P3701548805064115980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (Int.tmod (A018892 (2 * (n + 1))) (A285899 (3 * n + 5))).toNat

end

end A374033.P3701548805064115980

/-! ## A374033.P2358247100380350555

`C(A384421(A320461(n+3)), A353337(n+1))`
-/

namespace A374033.P2358247100380350555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A384421 (A320461 (n + 3)).toNat).toNat (A353337 (n + 1)).toNat

end

end A374033.P2358247100380350555

/-!
# A374034: a(n) = A276150(gcd(A276085(n), A328768(n))), where A276150 is the digit sum in primorial base, A276085 is the primorial base log-function, and A328768 is the first primorial based variant of arithmetic derivative.

The programs for A374034, there is no canonical definition to state claims against.
-/

/-! ## A374034.P13912403918160988221

`A000720(A374032(n+1)%A266358(n+1))`
-/

namespace A374034.P13912403918160988221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A374032 (n + 1)) (A266358 (n + 1))).toNat

end

end A374034.P13912403918160988221

/-! ## A374034.P1816775260131266664

`A098294(A374032(n+1)-A356224(2*n+5))`
-/

namespace A374034.P1816775260131266664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (A374032 (n + 1) - A356224 (2 * n + 5)).toNat

end

end A374034.P1816775260131266664

/-! ## A374034.P10178420644835667955

`A003285(A002110(A133834(A374032(n+1))))`
-/

namespace A374034.P10178420644835667955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A002110 (A133834 (A374032 (n + 1)).toNat).toNat).toNat

end

end A374034.P10178420644835667955

/-! ## A374034.P5122807462044447969

`A200648(A374032(n+1))%A111850(3*n+2)`
-/

namespace A374034.P5122807462044447969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200648 (A374032 (n + 1)).toNat) (A111850 (3 * n + 2))

end

end A374034.P5122807462044447969

/-! ## A374034.P5387475388340394935

`A276150(A374032(n+1))%A122808(2*n)`
-/

namespace A374034.P5387475388340394935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276150 (A374032 (n + 1)).toNat) (A122808 (2 * n))

end

end A374034.P5387475388340394935

/-!
# A374035: a(n) = gcd(A328845(n), A328846(n)), where A328845 and A328846 are the first and second Fibonacci-based variants of the arithmetic derivative.

The programs for A374035, there is no canonical definition to state claims against.
-/

/-! ## A374035.P5197712179525589976

`gcd(A328845(n), A328846(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374035.P5197712179525589976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328845 n) (A328846 n)

end

end A374035.P5197712179525589976

/-!
# A374036: a(n) = 1 if A328845(n) and A328846(n) are both even, otherwise 0, where A328845 and A328846 are the first and second Fibonacci-based variants of the arithmetic derivative.

The programs for A374036, there is no canonical definition to state claims against.
-/

/-! ## A374036.P450774757961027478

`A374045(n)*A374048(n)`
-/

namespace A374036.P450774757961027478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374045 n * A374048 n

end

end A374036.P450774757961027478

/-! ## A374036.P3211703253796395362

`A059841(A374035(n))`
-/

namespace A374036.P3211703253796395362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A374035 n).toNat

end

end A374036.P3211703253796395362

/-! ## A374036.P9156216583347779521

`char[A374037(n+1)]`
-/

namespace A374036.P9156216583347779521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374036.P9156216583347779521

/-! ## A374036.P963327695177886077

`A059841(A374125(n))*A374048(n)`
-/

namespace A374036.P963327695177886077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A374125 n).toNat * A374048 n

end

end A374036.P963327695177886077

/-! ## A374036.P11046421479523763496

`A374045(2*A374035(n))`
-/

namespace A374036.P11046421479523763496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374045 (2 * A374035 n).toNat

end

end A374036.P11046421479523763496

/-! ## A374036.P9106578905197199084

`A374045(A374035(n)+A374035(n))`
-/

namespace A374036.P9106578905197199084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374045 (A374035 n + A374035 n).toNat

end

end A374036.P9106578905197199084

/-!
# A374037: Numbers k such that A328845(k) and A328846(k) are both even, where A328845 and A328846 are the first and second Fibonacci-based variants of the arithmetic derivative.

The programs for A374037, there is no canonical definition to state claims against.
-/

/-! ## A374037.P11768132282295387235

`lt[0, A374036(n)]`
-/

namespace A374037.P11768132282295387235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A374037.P11768132282295387235

/-! ## A374037.P15484633201403304024

`filter[A374046(n+1), A374036(#)]`
-/

namespace A374037.P15484633201403304024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P15484633201403304024

/-! ## A374037.P15999578886809206377

`filter[A374046(n+1), A374048(#)]`
-/

namespace A374037.P15999578886809206377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374048 (f1 j).toNat = 1) n)

end

end A374037.P15999578886809206377

/-! ## A374037.P2580906473172777687

`filter[A141468(n+1), A374036(#)]`
-/

namespace A374037.P2580906473172777687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P2580906473172777687

/-! ## A374037.P14523425729396378398

`comp[A374038(n+1)]`
-/

namespace A374037.P14523425729396378398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A374037.P14523425729396378398

/-! ## A374037.P12166236523316305733

`filter[A374049(n+1), A374036(#)]`
-/

namespace A374037.P12166236523316305733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P12166236523316305733

/-! ## A374037.P1800546743039166289

`filter[A374049(n+1), A374045(#)]`
-/

namespace A374037.P1800546743039166289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374037.P1800546743039166289

/-! ## A374037.P8870719146813691521

`∩[A374046(n+1), A374049(n+1)]`
-/

namespace A374037.P8870719146813691521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374037.P8870719146813691521

/-! ## A374037.P12067556425087594996

`filter[A107750(n), A374036(#)]`
-/

namespace A374037.P12067556425087594996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P12067556425087594996

/-! ## A374037.P3106862048714594971

`filter[A042965(n+1), A374036(#)]`
-/

namespace A374037.P3106862048714594971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P3106862048714594971

/-! ## A374037.P11281492753820388283

`filter[A263715(n+1), A374036(#)]`
-/

namespace A374037.P11281492753820388283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P11281492753820388283

/-! ## A374037.P8100939568716425291

`filter[A079298(n+1), A374036(#)]`
-/

namespace A374037.P8100939568716425291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P8100939568716425291

/-! ## A374037.P9839769119030269693

`filter[A047565(n+1), A374036(#)]`
-/

namespace A374037.P9839769119030269693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P9839769119030269693

/-! ## A374037.P9100919606476628631

`filter[A047595(n+1), A374036(#)]`
-/

namespace A374037.P9100919606476628631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P9100919606476628631

/-! ## A374037.P13377080346618270651

`filter[A173905(n+1), A374036(#)]`
-/

namespace A374037.P13377080346618270651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P13377080346618270651

/-! ## A374037.P973512463908868076

`filter[A156657(n+1), A374036(#)]`
-/

namespace A374037.P973512463908868076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P973512463908868076

/-! ## A374037.P7619012024415220453

`filter[A045762(n+1), A374036(#)]`
-/

namespace A374037.P7619012024415220453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P7619012024415220453

/-! ## A374037.P16088446006440594539

`filter[A080412(n), A374036(#)]`
-/

namespace A374037.P16088446006440594539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P16088446006440594539

/-! ## A374037.P13759715439236516100

`filter[A132368(n), A374036(#)]`
-/

namespace A374037.P13759715439236516100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P13759715439236516100

/-! ## A374037.P13759021495583235032

`filter[A216972(n), A374036(#)]`
-/

namespace A374037.P13759021495583235032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A374037.P13759021495583235032

/-!
# A374038: Numbers k such that A328845(k) and A328846(k) are not both even, where A328845 and A328846 are the first and second Fibonacci-based variants of the arithmetic derivative.

The programs for A374038, there is no canonical definition to state claims against.
-/

/-! ## A374038.P11219301412594894312

`eq[0, A374036(n)]`
-/

namespace A374038.P11219301412594894312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374038.P11219301412594894312

/-! ## A374038.P17388073311629701323

`comp[A374037(n+1)]`
-/

namespace A374038.P17388073311629701323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A374038.P17388073311629701323

/-! ## A374038.P1607206433765050939

`eq[1, A374035(n)%2]`
-/

namespace A374038.P1607206433765050939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374035 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374038.P1607206433765050939

/-! ## A374038.P3580267608634330181

`lt[A374036(n+1), 1]+1`
-/

namespace A374038.P3580267608634330181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374036 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A374038.P3580267608634330181

/-! ## A374038.P15294738169236676801

`A000027(lt[A374036(n), 1])`
-/

namespace A374038.P15294738169236676801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374036 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A374038.P15294738169236676801

/-! ## A374038.P13408814394587525810

`lt[A040372(A374035(n)), 2]`
-/

namespace A374038.P13408814394587525810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040372 (A374035 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A374038.P13408814394587525810

/-! ## A374038.P8281514403560986649

`lt[A374036(n), A051903(A379351(n))]`
-/

namespace A374038.P8281514403560986649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A379351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374038.P8281514403560986649

/-!
# A374039: a(n) = 1 if the 3-adic valuation of n is not 1, otherwise 0.

The programs for A374039, there is no canonical definition to state claims against.
-/

/-! ## A374039.P15740190792079076848

`A011655(n+1)+A267142(n+1)`
-/

namespace A374039.P15740190792079076848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) + A267142 (n + 1)

end

end A374039.P15740190792079076848

/-!
# A374041: a(n) = 1 if A276085(n) and A328768(n) are both multiples of 3, otherwise 0, where A276085 is the primorial base log-function, and A328768 is the first primorial based variant of arithmetic derivative.

The programs for A374041, the canonical program `A374041.P6846905405428319102` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374041 has offset 1).

The definition of A374041 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373991, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374041.P6846905405428319102

`A372573(n+1)*A373991(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A374041

/-- `A372573(n+1)*A373991(n+1)` -/
def P6846905405428319102.Spec : Prop :=
  ∀ n, P6846905405428319102.a n = A374041 (n + 1)

theorem P6846905405428319102.correct : P6846905405428319102.Spec := by
  intro n
  simp only [A374041, Nat.add_sub_cancel]

end A374041

/-! ## A374041.P4121394364467151816

`char[A374042(n+1)-1]`
-/

namespace A374041.P4121394364467151816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374041.P4121394364467151816

namespace A374041

/-- `char[A374042(n+1)-1]` -/
def P4121394364467151816.Spec : Prop :=
  ∀ n, (P4121394364467151816.a n : ℤ) = A374041 (n + 1)

end A374041

/-! ## A374041.P2899875229044144379

`A373143(A065331(n+1))`
-/

namespace A374041.P2899875229044144379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373143 (A065331 (n + 1)).toNat

end

end A374041.P2899875229044144379

namespace A374041

/-- `A373143(A065331(n+1))` -/
def P2899875229044144379.Spec : Prop :=
  ∀ n, P2899875229044144379.a n = A374041 (n + 1)

end A374041

/-! ## A374041.P11682123411284146130

`A372573(n+1)*A374039(n+1)`
-/

namespace A374041.P11682123411284146130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1) * A374039 (n + 1)

end

end A374041.P11682123411284146130

namespace A374041

/-- `A372573(n+1)*A374039(n+1)` -/
def P11682123411284146130.Spec : Prop :=
  ∀ n, P11682123411284146130.a n = A374041 (n + 1)

end A374041

/-! ## A374041.P14212203095902603460

`and(A100601(n+1), A372573(n+1))`
-/

namespace A374041.P14212203095902603460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100601 (n + 1)) (A372573 (n + 1))

end

end A374041.P14212203095902603460

namespace A374041

/-- `and(A100601(n+1), A372573(n+1))` -/
def P14212203095902603460.Spec : Prop :=
  ∀ n, P14212203095902603460.a n = A374041 (n + 1)

end A374041

/-! ## A374041.P15521587418827324529

`and(A042452(n), A372573(n+1))`
-/

namespace A374041.P15521587418827324529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042452 n) (A372573 (n + 1))

end

end A374041.P15521587418827324529

namespace A374041

/-- `and(A042452(n), A372573(n+1))` -/
def P15521587418827324529.Spec : Prop :=
  ∀ n, P15521587418827324529.a n = A374041 (n + 1)

end A374041

/-!
# A374042: Numbers k such that A276085(k) and A328768(k) are both multiples of 3, where A276085 is the primorial base log-function, and A328768 is the first primorial based variant of arithmetic derivative.

The programs for A374042, the canonical program `A374042.P17381506644215364162` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374042 has offset 1).

The definition of A374042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374042.P11089643045131829268

`eq[1, A374041(n+1)]+1`
-/

namespace A374042.P11089643045131829268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374041 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374042.P11089643045131829268

namespace A374042

/-- `eq[1, A374041(n+1)]+1` -/
def P11089643045131829268.Spec : Prop :=
  ∀ n, (P11089643045131829268.a n : ℤ) = A374042 (n + 1)

end A374042

/-! ## A374042.P16252632193000706735

`∪[A373144(n+1), A374044(n+1)]`
-/

namespace A374042.P16252632193000706735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374042.P16252632193000706735

namespace A374042

/-- `∪[A373144(n+1), A374044(n+1)]` -/
def P16252632193000706735.Spec : Prop :=
  ∀ n, (P16252632193000706735.a n : ℤ) = A374042 (n + 1)

end A374042

/-! ## A374042.P13598535196053828019

`filter[A373992(n+2), A372573(#)]`
-/

namespace A374042.P13598535196053828019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A374042.P13598535196053828019

namespace A374042

/-- `filter[A373992(n+2), A372573(#)]` -/
def P13598535196053828019.Spec : Prop :=
  ∀ n, P13598535196053828019.a n = A374042 (n + 1)

end A374042

/-! ## A374042.P13836140499457071078

`filter[A373992(n+2), A374041(#)]`
-/

namespace A374042.P13836140499457071078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A374042.P13836140499457071078

namespace A374042

/-- `filter[A373992(n+2), A374041(#)]` -/
def P13836140499457071078.Spec : Prop :=
  ∀ n, P13836140499457071078.a n = A374042 (n + 1)

end A374042

/-! ## A374042.P7665147775515720235

`filter[A339746(n+1), A373991(#)]`
-/

namespace A374042.P7665147775515720235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A374042.P7665147775515720235

namespace A374042

/-- `filter[A339746(n+1), A373991(#)]` -/
def P7665147775515720235.Spec : Prop :=
  ∀ n, P7665147775515720235.a n = A374042 (n + 1)

end A374042

/-! ## A374042.P4891869736329365724

`filter[A339746(n+1), A374039(#)]`
-/

namespace A374042.P4891869736329365724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A374042.P4891869736329365724

namespace A374042

/-- `filter[A339746(n+1), A374039(#)]` -/
def P4891869736329365724.Spec : Prop :=
  ∀ n, P4891869736329365724.a n = A374042 (n + 1)

end A374042

/-! ## A374042.P9803711791229652689

`filter[A339746(n+1), A374041(#)]`
-/

namespace A374042.P9803711791229652689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A374042.P9803711791229652689

namespace A374042

/-- `filter[A339746(n+1), A374041(#)]` -/
def P9803711791229652689.Spec : Prop :=
  ∀ n, P9803711791229652689.a n = A374042 (n + 1)

end A374042

/-! ## A374042.P11828634486673083760

`∩[A339746(n+1), A373992(n+1)]`
-/

namespace A374042.P11828634486673083760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374042.P11828634486673083760

namespace A374042

/-- `∩[A339746(n+1), A373992(n+1)]` -/
def P11828634486673083760.Spec : Prop :=
  ∀ n, (P11828634486673083760.a n : ℤ) = A374042 (n + 1)

end A374042

/-! ## A374042.P17381506644215364162

`filter[A074232(n+1), A372573(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A374042

/-- `filter[A074232(n+1), A372573(#)]` -/
def P17381506644215364162.Spec : Prop :=
  ∀ n, P17381506644215364162.a n = A374042 (n + 1)

theorem P17381506644215364162.correct : P17381506644215364162.Spec := by
  intro n
  simp only [A374042, Nat.add_sub_cancel]

end A374042

/-! ## A374042.P8687590091162317213

`filter[A074232(n+1), A374041(#)]`
-/

namespace A374042.P8687590091162317213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A374042.P8687590091162317213

namespace A374042

/-- `filter[A074232(n+1), A374041(#)]` -/
def P8687590091162317213.Spec : Prop :=
  ∀ n, P8687590091162317213.a n = A374042 (n + 1)

end A374042

/-! ## A374042.P14513956514345020184

`∩[A074232(n+1), A339746(n+1)]`
-/

namespace A374042.P14513956514345020184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374042.P14513956514345020184

namespace A374042

/-- `∩[A074232(n+1), A339746(n+1)]` -/
def P14513956514345020184.Spec : Prop :=
  ∀ n, (P14513956514345020184.a n : ℤ) = A374042 (n + 1)

end A374042

/-!
# A374043: a(n) = 1 if n is a non-multiple of 3 whose 2-adic valuation is a multiple of 3, otherwise 0.

The programs for A374043, the canonical program `A374043.P13803670517917627766` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374043 has offset 1).

The definition of A374043 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374043.P13803670517917627766

`A011655(n+1)*A373157(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A374043

/-- `A011655(n+1)*A373157(n+1)` -/
def P13803670517917627766.Spec : Prop :=
  ∀ n, P13803670517917627766.a n = A374043 (n + 1)

theorem P13803670517917627766.correct : P13803670517917627766.Spec := by
  intro n
  simp only [A374043, Nat.add_sub_cancel]

end A374043

/-! ## A374043.P15015028623976137585

`A373260(A047261(n+1))`
-/

namespace A374043.P15015028623976137585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373260 (A047261 (n + 1)).toNat

end

end A374043.P15015028623976137585

namespace A374043

/-- `A373260(A047261(n+1))` -/
def P15015028623976137585.Spec : Prop :=
  ∀ n, P15015028623976137585.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P16707428915019915724

`and(A007306(n), A372573(n+1))`
-/

namespace A374043.P16707428915019915724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007306 n) (A372573 (n + 1))

end

end A374043.P16707428915019915724

namespace A374043

/-- `and(A007306(n), A372573(n+1))` -/
def P16707428915019915724.Spec : Prop :=
  ∀ n, P16707428915019915724.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P1762808300258430014

`and(A007306(n), A373157(n+1))`
-/

namespace A374043.P1762808300258430014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007306 n) (A373157 (n + 1))

end

end A374043.P1762808300258430014

namespace A374043

/-- `and(A007306(n), A373157(n+1))` -/
def P1762808300258430014.Spec : Prop :=
  ∀ n, P1762808300258430014.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P10139720879457304695

`and(A008747(n), A372573(n+1))`
-/

namespace A374043.P10139720879457304695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008747 n) (A372573 (n + 1))

end

end A374043.P10139720879457304695

namespace A374043

/-- `and(A008747(n), A372573(n+1))` -/
def P10139720879457304695.Spec : Prop :=
  ∀ n, P10139720879457304695.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P14374048986224597834

`and(A007306(n), A374041(n+1))`
-/

namespace A374043.P14374048986224597834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007306 n) (A374041 (n + 1))

end

end A374043.P14374048986224597834

namespace A374043

/-- `and(A007306(n), A374041(n+1))` -/
def P14374048986224597834.Spec : Prop :=
  ∀ n, P14374048986224597834.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P7843871607089297292

`and(A008769(n), A372573(n+1))`
-/

namespace A374043.P7843871607089297292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008769 n) (A372573 (n + 1))

end

end A374043.P7843871607089297292

namespace A374043

/-- `and(A008769(n), A372573(n+1))` -/
def P7843871607089297292.Spec : Prop :=
  ∀ n, P7843871607089297292.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P16126426236597978968

`and(A008747(n), A373157(n+1))`
-/

namespace A374043.P16126426236597978968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008747 n) (A373157 (n + 1))

end

end A374043.P16126426236597978968

namespace A374043

/-- `and(A008747(n), A373157(n+1))` -/
def P16126426236597978968.Spec : Prop :=
  ∀ n, P16126426236597978968.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P5991093423677694042

`and(A008769(n), A373157(n+1))`
-/

namespace A374043.P5991093423677694042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008769 n) (A373157 (n + 1))

end

end A374043.P5991093423677694042

namespace A374043

/-- `and(A008769(n), A373157(n+1))` -/
def P5991093423677694042.Spec : Prop :=
  ∀ n, P5991093423677694042.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P15693179925635594619

`and(A008747(n), A374041(n+1))`
-/

namespace A374043.P15693179925635594619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008747 n) (A374041 (n + 1))

end

end A374043.P15693179925635594619

namespace A374043

/-- `and(A008747(n), A374041(n+1))` -/
def P15693179925635594619.Spec : Prop :=
  ∀ n, P15693179925635594619.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P3002741622047560849

`and(A008769(n), A374041(n+1))`
-/

namespace A374043.P3002741622047560849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008769 n) (A374041 (n + 1))

end

end A374043.P3002741622047560849

namespace A374043

/-- `and(A008769(n), A374041(n+1))` -/
def P3002741622047560849.Spec : Prop :=
  ∀ n, P3002741622047560849.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P12904758801314954592

`and(A010892(n), A372573(n+1))`
-/

namespace A374043.P12904758801314954592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010892 n) (A372573 (n + 1))

end

end A374043.P12904758801314954592

namespace A374043

/-- `and(A010892(n), A372573(n+1))` -/
def P12904758801314954592.Spec : Prop :=
  ∀ n, P12904758801314954592.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P13135618767159428854

`and(A010892(n), A373157(n+1))`
-/

namespace A374043.P13135618767159428854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010892 n) (A373157 (n + 1))

end

end A374043.P13135618767159428854

namespace A374043

/-- `and(A010892(n), A373157(n+1))` -/
def P13135618767159428854.Spec : Prop :=
  ∀ n, P13135618767159428854.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P5851421256645939446

`and(A010892(n), A374041(n+1))`
-/

namespace A374043.P5851421256645939446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010892 n) (A374041 (n + 1))

end

end A374043.P5851421256645939446

namespace A374043

/-- `and(A010892(n), A374041(n+1))` -/
def P5851421256645939446.Spec : Prop :=
  ∀ n, P5851421256645939446.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P11163460435898427910

`and(A020944(n), A372573(n+1))`
-/

namespace A374043.P11163460435898427910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020944 n) (A372573 (n + 1))

end

end A374043.P11163460435898427910

namespace A374043

/-- `and(A020944(n), A372573(n+1))` -/
def P11163460435898427910.Spec : Prop :=
  ∀ n, P11163460435898427910.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P17535030676069584937

`A011655((n+1)*A373991(n+1))`
-/

namespace A374043.P17535030676069584937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 ((n + 1 : ℤ) * A373991 (n + 1)).toNat

end

end A374043.P17535030676069584937

namespace A374043

/-- `A011655((n+1)*A373991(n+1))` -/
def P17535030676069584937.Spec : Prop :=
  ∀ n, P17535030676069584937.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P17322367966228525829

`A168182((n+1)*A373991(n+1))`
-/

namespace A374043.P17322367966228525829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 ((n + 1 : ℤ) * A373991 (n + 1)).toNat

end

end A374043.P17322367966228525829

namespace A374043

/-- `A168182((n+1)*A373991(n+1))` -/
def P17322367966228525829.Spec : Prop :=
  ∀ n, P17322367966228525829.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P6325097447494103895

`A187074(n+1)*A372573(n+1)`
-/

namespace A374043.P6325097447494103895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187074 (n + 1) * A372573 (n + 1)

end

end A374043.P6325097447494103895

namespace A374043

/-- `A187074(n+1)*A372573(n+1)` -/
def P6325097447494103895.Spec : Prop :=
  ∀ n, P6325097447494103895.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P8104740209007105533

`A187074(n+1)*A373157(n+1)`
-/

namespace A374043.P8104740209007105533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187074 (n + 1) * A373157 (n + 1)

end

end A374043.P8104740209007105533

namespace A374043

/-- `A187074(n+1)*A373157(n+1)` -/
def P8104740209007105533.Spec : Prop :=
  ∀ n, P8104740209007105533.a n = A374043 (n + 1)

end A374043

/-! ## A374043.P13121119798370722598

`A187074(n+1)*A374041(n+1)`
-/

namespace A374043.P13121119798370722598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187074 (n + 1) * A374041 (n + 1)

end

end A374043.P13121119798370722598

namespace A374043

/-- `A187074(n+1)*A374041(n+1)` -/
def P13121119798370722598.Spec : Prop :=
  ∀ n, P13121119798370722598.a n = A374043 (n + 1)

end A374043

/-!
# A374044: Non-multiples of 3 whose 2-adic valuation is a multiple of 3.

The programs for A374044, the canonical program `A374044.P3510454366840386907` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374044 has offset 1).

The definition of A374044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374044.P3510454366840386907

`filter[A374042(n+1), A187074(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A374044

/-- `filter[A374042(n+1), A187074(#)]` -/
def P3510454366840386907.Spec : Prop :=
  ∀ n, P3510454366840386907.a n = A374044 (n + 1)

theorem P3510454366840386907.correct : P3510454366840386907.Spec := by
  intro n
  simp only [A374044, Nat.add_sub_cancel]

end A374044

/-! ## A374044.P789684460128644102

`filter[A374042(n+1), A374043(#)]`
-/

namespace A374044.P789684460128644102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A374044.P789684460128644102

namespace A374044

/-- `filter[A374042(n+1), A374043(#)]` -/
def P789684460128644102.Spec : Prop :=
  ∀ n, P789684460128644102.a n = A374044 (n + 1)

end A374044

/-! ## A374044.P1467351680636502303

`filter[A373992(n+2), A187074(#)]`
-/

namespace A374044.P1467351680636502303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A374044.P1467351680636502303

namespace A374044

/-- `filter[A373992(n+2), A187074(#)]` -/
def P1467351680636502303.Spec : Prop :=
  ∀ n, P1467351680636502303.a n = A374044 (n + 1)

end A374044

/-! ## A374044.P11003466334776691578

`filter[A373992(n+2), A374043(#)]`
-/

namespace A374044.P11003466334776691578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A374044.P11003466334776691578

namespace A374044

/-- `filter[A373992(n+2), A374043(#)]` -/
def P11003466334776691578.Spec : Prop :=
  ∀ n, P11003466334776691578.a n = A374044 (n + 1)

end A374044

/-! ## A374044.P3060318561868108093

`filter[A339746(n+1), A187074(#)]`
-/

namespace A374044.P3060318561868108093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A374044.P3060318561868108093

namespace A374044

/-- `filter[A339746(n+1), A187074(#)]` -/
def P3060318561868108093.Spec : Prop :=
  ∀ n, P3060318561868108093.a n = A374044 (n + 1)

end A374044

/-! ## A374044.P4374556607136811684

`filter[A339746(n+1), A374043(#)]`
-/

namespace A374044.P4374556607136811684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A374044.P4374556607136811684

namespace A374044

/-- `filter[A339746(n+1), A374043(#)]` -/
def P4374556607136811684.Spec : Prop :=
  ∀ n, P4374556607136811684.a n = A374044 (n + 1)

end A374044

/-! ## A374044.P12213228585923033518

`eq[A010125(n), A373991(n)]`
-/

namespace A374044.P12213228585923033518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374044.P12213228585923033518

namespace A374044

/-- `eq[A010125(n), A373991(n)]` -/
def P12213228585923033518.Spec : Prop :=
  ∀ n, (P12213228585923033518.a n : ℤ) = A374044 (n + 1)

end A374044

/-! ## A374044.P15128143573797388395

`eq[A010142(n), A373991(n)]`
-/

namespace A374044.P15128143573797388395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374044.P15128143573797388395

namespace A374044

/-- `eq[A010142(n), A373991(n)]` -/
def P15128143573797388395.Spec : Prop :=
  ∀ n, (P15128143573797388395.a n : ℤ) = A374044 (n + 1)

end A374044

/-! ## A374044.P4651582117367815034

`filter[A359380(n+1), A372573(#)]`
-/

namespace A374044.P4651582117367815034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A374044.P4651582117367815034

namespace A374044

/-- `filter[A359380(n+1), A372573(#)]` -/
def P4651582117367815034.Spec : Prop :=
  ∀ n, P4651582117367815034.a n = A374044 (n + 1)

end A374044

/-! ## A374044.P3287669761821297106

`filter[A359380(n+1), A373157(#)]`
-/

namespace A374044.P3287669761821297106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A374044.P3287669761821297106

namespace A374044

/-- `filter[A359380(n+1), A373157(#)]` -/
def P3287669761821297106.Spec : Prop :=
  ∀ n, P3287669761821297106.a n = A374044 (n + 1)

end A374044

/-! ## A374044.P1090572361047376704

`filter[A359380(n+1), A373991(#)]`
-/

namespace A374044.P1090572361047376704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A374044.P1090572361047376704

namespace A374044

/-- `filter[A359380(n+1), A373991(#)]` -/
def P1090572361047376704.Spec : Prop :=
  ∀ n, P1090572361047376704.a n = A374044 (n + 1)

end A374044

/-! ## A374044.P16635417623106533802

`filter[A359380(n+1), A374041(#)]`
-/

namespace A374044.P16635417623106533802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A374044.P16635417623106533802

namespace A374044

/-- `filter[A359380(n+1), A374041(#)]` -/
def P16635417623106533802.Spec : Prop :=
  ∀ n, P16635417623106533802.a n = A374044 (n + 1)

end A374044

/-! ## A374044.P18240636135427540583

`filter[A359380(n+1), A374043(#)]`
-/

namespace A374044.P18240636135427540583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A374044.P18240636135427540583

namespace A374044

/-- `filter[A359380(n+1), A374043(#)]` -/
def P18240636135427540583.Spec : Prop :=
  ∀ n, P18240636135427540583.a n = A374044 (n + 1)

end A374044

/-! ## A374044.P12843601261711644897

`∩[A339746(n+1), A359380(n+1)]`
-/

namespace A374044.P12843601261711644897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374044.P12843601261711644897

namespace A374044

/-- `∩[A339746(n+1), A359380(n+1)]` -/
def P12843601261711644897.Spec : Prop :=
  ∀ n, (P12843601261711644897.a n : ℤ) = A374044 (n + 1)

end A374044

/-! ## A374044.P503294421036815967

`∩[A359380(n+1), A373992(n+1)]`
-/

namespace A374044.P503294421036815967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374044.P503294421036815967

namespace A374044

/-- `∩[A359380(n+1), A373992(n+1)]` -/
def P503294421036815967.Spec : Prop :=
  ∀ n, (P503294421036815967.a n : ℤ) = A374044 (n + 1)

end A374044

/-! ## A374044.P1023249588115648801

`∩[A359380(n+1), A374042(n+1)]`
-/

namespace A374044.P1023249588115648801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374044.P1023249588115648801

namespace A374044

/-- `∩[A359380(n+1), A374042(n+1)]` -/
def P1023249588115648801.Spec : Prop :=
  ∀ n, (P1023249588115648801.a n : ℤ) = A374044 (n + 1)

end A374044

/-! ## A374044.P14603684480816212542

`filter[A191257(n+1), A187074(#)]`
-/

namespace A374044.P14603684480816212542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A374044.P14603684480816212542

namespace A374044

/-- `filter[A191257(n+1), A187074(#)]` -/
def P14603684480816212542.Spec : Prop :=
  ∀ n, P14603684480816212542.a n = A374044 (n + 1)

end A374044

/-! ## A374044.P9217642009511702651

`filter[A191257(n+1), A374043(#)]`
-/

namespace A374044.P9217642009511702651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A374044.P9217642009511702651

namespace A374044

/-- `filter[A191257(n+1), A374043(#)]` -/
def P9217642009511702651.Spec : Prop :=
  ∀ n, P9217642009511702651.a n = A374044 (n + 1)

end A374044

/-! ## A374044.P17532820424378446606

`∩[A191257(n+1), A359380(n+1)]`
-/

namespace A374044.P17532820424378446606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374044.P17532820424378446606

namespace A374044

/-- `∩[A191257(n+1), A359380(n+1)]` -/
def P17532820424378446606.Spec : Prop :=
  ∀ n, (P17532820424378446606.a n : ℤ) = A374044 (n + 1)

end A374044

/-! ## A374044.P3755121893475902362

`filter[A191276(n+2), A374043(#)]`
-/

namespace A374044.P3755121893475902362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A374044.P3755121893475902362

namespace A374044

/-- `filter[A191276(n+2), A374043(#)]` -/
def P3755121893475902362.Spec : Prop :=
  ∀ n, P3755121893475902362.a n = A374044 (n + 1)

end A374044

/-!
# A374045: a(n) = 1 if A328845(n) is even, otherwise 0, where A328845 is the first Fibonacci based variant of arithmetic derivative.

The programs for A374045, the canonical program `A374045.P2461968361233869540` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374045 has offset 0).

The definition of A374045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374045.P8249576778794333602

`A059841(A328845(n))`
-/

namespace A374045.P8249576778794333602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A328845 n).toNat

end

end A374045.P8249576778794333602

namespace A374045

/-- `A059841(A328845(n))` -/
def P8249576778794333602.Spec : Prop :=
  ∀ n, P8249576778794333602.a n = A374045 n

end A374045

/-! ## A374045.P2461968361233869540

`char[A374046(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A374045

/-- `char[A374046(n+1)]` -/
def P2461968361233869540.Spec : Prop :=
  ∀ n, (P2461968361233869540.a n : ℤ) = A374045 n

theorem P2461968361233869540.correct : P2461968361233869540.Spec := by
  intro n
  simp only [A374045]

end A374045

/-! ## A374045.P2755245556816643953

`A059841(A374125(n))`
-/

namespace A374045.P2755245556816643953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A374125 n).toNat

end

end A374045.P2755245556816643953

namespace A374045

/-- `A059841(A374125(n))` -/
def P2755245556816643953.Spec : Prop :=
  ∀ n, P2755245556816643953.a n = A374045 n

end A374045

/-! ## A374045.P6464858929086685787

`A152822(2*A374125(n))`
-/

namespace A374045.P6464858929086685787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (2 * A374125 n).toNat

end

end A374045.P6464858929086685787

namespace A374045

/-- `A152822(2*A374125(n))` -/
def P6464858929086685787.Spec : Prop :=
  ∀ n, P6464858929086685787.a n = A374045 n

end A374045

/-! ## A374045.P9771237941490334994

`A374036(2*A374125(n))`
-/

namespace A374045.P9771237941490334994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374036 (2 * A374125 n).toNat

end

end A374045.P9771237941490334994

namespace A374045

/-- `A374036(2*A374125(n))` -/
def P9771237941490334994.Spec : Prop :=
  ∀ n, P9771237941490334994.a n = A374045 n

end A374045

/-! ## A374045.P6556698554940413456

`A152822(A374125(n)+A374125(n))`
-/

namespace A374045.P6556698554940413456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (A374125 n + A374125 n).toNat

end

end A374045.P6556698554940413456

namespace A374045

/-- `A152822(A374125(n)+A374125(n))` -/
def P6556698554940413456.Spec : Prop :=
  ∀ n, P6556698554940413456.a n = A374045 n

end A374045

/-! ## A374045.P12460236117775142515

`A059841(A374116(n))`
-/

namespace A374045.P12460236117775142515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A374116 n).toNat

end

end A374045.P12460236117775142515

namespace A374045

/-- `A059841(A374116(n))` -/
def P12460236117775142515.Spec : Prop :=
  ∀ n, P12460236117775142515.a n = A374045 n

end A374045

/-! ## A374045.P17842324650533752197

`A374036(2*A374116(n))`
-/

namespace A374045.P17842324650533752197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374036 (2 * A374116 n).toNat

end

end A374045.P17842324650533752197

namespace A374045

/-- `A374036(2*A374116(n))` -/
def P17842324650533752197.Spec : Prop :=
  ∀ n, P17842324650533752197.a n = A374045 n

end A374045

/-! ## A374045.P1437790087223476487

`A374036(A374116(n)+A374116(n))`
-/

namespace A374045.P1437790087223476487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374036 (A374116 n + A374116 n).toNat

end

end A374045.P1437790087223476487

namespace A374045

/-- `A374036(A374116(n)+A374116(n))` -/
def P1437790087223476487.Spec : Prop :=
  ∀ n, P1437790087223476487.a n = A374045 n

end A374045

/-!
# A374046: Numbers k for which A328845(k) is even, where A328845 is the first Fibonacci based variant of arithmetic derivative.

The programs for A374046, the canonical program `A374046.P8553826252571052202` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374046 has offset 1).

The definition of A374046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374046.P12643433936869333936

`eq[1, A374045(n)]`
-/

namespace A374046.P12643433936869333936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374046.P12643433936869333936

namespace A374046

/-- `eq[1, A374045(n)]` -/
def P12643433936869333936.Spec : Prop :=
  ∀ n, (P12643433936869333936.a n : ℤ) = A374046 (n + 1)

end A374046

/-! ## A374046.P8553826252571052202

`comp[A374047(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A374046

/-- `comp[A374047(n+1)]` -/
def P8553826252571052202.Spec : Prop :=
  ∀ n, (P8553826252571052202.a n : ℤ) = A374046 (n + 1)

theorem P8553826252571052202.correct : P8553826252571052202.Spec := by
  intro n
  simp only [A374046, Nat.add_sub_cancel]

end A374046

/-! ## A374046.P11057771836708550489

`∪[A374108(n+1), A008586(n)]`
-/

namespace A374046.P11057771836708550489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374046.P11057771836708550489

namespace A374046

/-- `∪[A374108(n+1), A008586(n)]` -/
def P11057771836708550489.Spec : Prop :=
  ∀ n, (P11057771836708550489.a n : ℤ) = A374046 (n + 1)

end A374046

/-! ## A374046.P11457205877460180849

`∪[A374114(n+1), A008586(n)]`
-/

namespace A374046.P11457205877460180849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374046.P11457205877460180849

namespace A374046

/-- `∪[A374114(n+1), A008586(n)]` -/
def P11457205877460180849.Spec : Prop :=
  ∀ n, (P11457205877460180849.a n : ℤ) = A374046 (n + 1)

end A374046

/-! ## A374046.P13803016967016791297

`∪[A374037(n+1), A374108(n+1)]`
-/

namespace A374046.P13803016967016791297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374046.P13803016967016791297

namespace A374046

/-- `∪[A374037(n+1), A374108(n+1)]` -/
def P13803016967016791297.Spec : Prop :=
  ∀ n, (P13803016967016791297.a n : ℤ) = A374046 (n + 1)

end A374046

/-! ## A374046.P11736089055760992479

`∪[A374037(n+1), A374114(n+1)]`
-/

namespace A374046.P11736089055760992479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374046.P11736089055760992479

namespace A374046

/-- `∪[A374037(n+1), A374114(n+1)]` -/
def P11736089055760992479.Spec : Prop :=
  ∀ n, (P11736089055760992479.a n : ℤ) = A374046 (n + 1)

end A374046

/-! ## A374046.P5318870689895375947

`filter[A107750(n), A374045(#)]`
-/

namespace A374046.P5318870689895375947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P5318870689895375947

namespace A374046

/-- `filter[A107750(n), A374045(#)]` -/
def P5318870689895375947.Spec : Prop :=
  ∀ n, P5318870689895375947.a n = A374046 (n + 1)

end A374046

/-! ## A374046.P13891758942141217884

`filter[A042965(n+1), A374045(#)]`
-/

namespace A374046.P13891758942141217884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P13891758942141217884

namespace A374046

/-- `filter[A042965(n+1), A374045(#)]` -/
def P13891758942141217884.Spec : Prop :=
  ∀ n, P13891758942141217884.a n = A374046 (n + 1)

end A374046

/-! ## A374046.P6188590931543130046

`filter[A263715(n+1), A374045(#)]`
-/

namespace A374046.P6188590931543130046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P6188590931543130046

namespace A374046

/-- `filter[A263715(n+1), A374045(#)]` -/
def P6188590931543130046.Spec : Prop :=
  ∀ n, P6188590931543130046.a n = A374046 (n + 1)

end A374046

/-! ## A374046.P16830221389732676411

`filter[A079298(n+1), A374045(#)]`
-/

namespace A374046.P16830221389732676411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P16830221389732676411

namespace A374046

/-- `filter[A079298(n+1), A374045(#)]` -/
def P16830221389732676411.Spec : Prop :=
  ∀ n, P16830221389732676411.a n = A374046 (n + 1)

end A374046

/-! ## A374046.P10661986344490150009

`filter[A047565(n+1), A374045(#)]`
-/

namespace A374046.P10661986344490150009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P10661986344490150009

namespace A374046

/-- `filter[A047565(n+1), A374045(#)]` -/
def P10661986344490150009.Spec : Prop :=
  ∀ n, P10661986344490150009.a n = A374046 (n + 1)

end A374046

/-! ## A374046.P12992570553863764562

`filter[A047595(n+1), A374045(#)]`
-/

namespace A374046.P12992570553863764562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P12992570553863764562

namespace A374046

/-- `filter[A047595(n+1), A374045(#)]` -/
def P12992570553863764562.Spec : Prop :=
  ∀ n, P12992570553863764562.a n = A374046 (n + 1)

end A374046

/-! ## A374046.P17188801528747729212

`filter[A173905(n+1), A374045(#)]`
-/

namespace A374046.P17188801528747729212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P17188801528747729212

namespace A374046

/-- `filter[A173905(n+1), A374045(#)]` -/
def P17188801528747729212.Spec : Prop :=
  ∀ n, P17188801528747729212.a n = A374046 (n + 1)

end A374046

/-! ## A374046.P1454454408285234050

`filter[A156657(n+1), A374045(#)]`
-/

namespace A374046.P1454454408285234050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P1454454408285234050

namespace A374046

/-- `filter[A156657(n+1), A374045(#)]` -/
def P1454454408285234050.Spec : Prop :=
  ∀ n, P1454454408285234050.a n = A374046 (n + 1)

end A374046

/-! ## A374046.P10599492166555665004

`filter[A080412(n), A374045(#)]`
-/

namespace A374046.P10599492166555665004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P10599492166555665004

namespace A374046

/-- `filter[A080412(n), A374045(#)]` -/
def P10599492166555665004.Spec : Prop :=
  ∀ n, P10599492166555665004.a n = A374046 (n + 1)

end A374046

/-! ## A374046.P16212960656548443419

`filter[A132368(n), A374045(#)]`
-/

namespace A374046.P16212960656548443419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P16212960656548443419

namespace A374046

/-- `filter[A132368(n), A374045(#)]` -/
def P16212960656548443419.Spec : Prop :=
  ∀ n, P16212960656548443419.a n = A374046 (n + 1)

end A374046

/-! ## A374046.P647575836653393294

`filter[A216972(n), A374045(#)]`
-/

namespace A374046.P647575836653393294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P647575836653393294

namespace A374046

/-- `filter[A216972(n), A374045(#)]` -/
def P647575836653393294.Spec : Prop :=
  ∀ n, P647575836653393294.a n = A374046 (n + 1)

end A374046

/-! ## A374046.P337691830731426424

`filter[A004396(2*n), A374045(#)]`
-/

namespace A374046.P337691830731426424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P337691830731426424

namespace A374046

/-- `filter[A004396(2*n), A374045(#)]` -/
def P337691830731426424.Spec : Prop :=
  ∀ n, P337691830731426424.a n = A374046 (n + 1)

end A374046

/-! ## A374046.P5330522011152331161

`filter[A338206(n), A374045(#)]`
-/

namespace A374046.P5330522011152331161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P5330522011152331161

namespace A374046

/-- `filter[A338206(n), A374045(#)]` -/
def P5330522011152331161.Spec : Prop :=
  ∀ n, P5330522011152331161.a n = A374046 (n + 1)

end A374046

/-! ## A374046.P1042940368287502235

`filter[A096386(2*n), A374045(#)]`
-/

namespace A374046.P1042940368287502235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096386 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A374046.P1042940368287502235

namespace A374046

/-- `filter[A096386(2*n), A374045(#)]` -/
def P1042940368287502235.Spec : Prop :=
  ∀ n, P1042940368287502235.a n = A374046 (n + 1)

end A374046

/-!
# A374047: Numbers k for which A328845(k) is odd, where A328845 is the first Fibonacci based variant of arithmetic derivative.

The programs for A374047, the canonical program `A374047.P15202425446373321383` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374047 has offset 1).

The definition of A374047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9593 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374047.P12381349510951625130

`eq[0, A374045(n)]`
-/

namespace A374047.P12381349510951625130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374047.P12381349510951625130

namespace A374047

/-- `eq[0, A374045(n)]` -/
def P12381349510951625130.Spec : Prop :=
  ∀ n, (P12381349510951625130.a n : ℤ) = A374047 (n + 1)

end A374047

/-! ## A374047.P16098037940836917725

`comp[A374046(n+1)]`
-/

namespace A374047.P16098037940836917725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A374047.P16098037940836917725

namespace A374047

/-- `comp[A374046(n+1)]` -/
def P16098037940836917725.Spec : Prop :=
  ∀ n, (P16098037940836917725.a n : ℤ) = A374047 (n + 1)

end A374047

/-! ## A374047.P15202425446373321383

`filter[A374109(n+1), A166486(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A374047

/-- `filter[A374109(n+1), A166486(#)]` -/
def P15202425446373321383.Spec : Prop :=
  ∀ n, P15202425446373321383.a n = A374047 (n + 1)

theorem P15202425446373321383.correct : P15202425446373321383.Spec := by
  intro n
  simp only [A374047, Nat.add_sub_cancel]

end A374047

/-! ## A374047.P778917112982867263

`∩[A374038(n+1), A374109(n+1)]`
-/

namespace A374047.P778917112982867263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374047.P778917112982867263

namespace A374047

/-- `∩[A374038(n+1), A374109(n+1)]` -/
def P778917112982867263.Spec : Prop :=
  ∀ n, (P778917112982867263.a n : ℤ) = A374047 (n + 1)

end A374047

/-! ## A374047.P16027888269241914682

`filter[A374115(n+1), A166486(#)]`
-/

namespace A374047.P16027888269241914682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A374047.P16027888269241914682

namespace A374047

/-- `filter[A374115(n+1), A166486(#)]` -/
def P16027888269241914682.Spec : Prop :=
  ∀ n, P16027888269241914682.a n = A374047 (n + 1)

end A374047

/-! ## A374047.P17625562533585960282

`∩[A374038(n+1), A374115(n+1)]`
-/

namespace A374047.P17625562533585960282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374047.P17625562533585960282

namespace A374047

/-- `∩[A374038(n+1), A374115(n+1)]` -/
def P17625562533585960282.Spec : Prop :=
  ∀ n, (P17625562533585960282.a n : ℤ) = A374047 (n + 1)

end A374047

/-! ## A374047.P971507217842196954

`∩[A374109(n+1), A014528(n)]`
-/

namespace A374047.P971507217842196954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374047.P971507217842196954

namespace A374047

/-- `∩[A374109(n+1), A014528(n)]` -/
def P971507217842196954.Spec : Prop :=
  ∀ n, (P971507217842196954.a n : ℤ) = A374047 (n + 1)

end A374047

/-! ## A374047.P11071986624230475665

`∩[A374115(n+1), A014528(n)]`
-/

namespace A374047.P11071986624230475665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374047.P11071986624230475665

namespace A374047

/-- `∩[A374115(n+1), A014528(n)]` -/
def P11071986624230475665.Spec : Prop :=
  ∀ n, (P11071986624230475665.a n : ℤ) = A374047 (n + 1)

end A374047

/-! ## A374047.P2477545439286009111

`∩[A042968(n+1), A374109(n+1)]`
-/

namespace A374047.P2477545439286009111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374047.P2477545439286009111

namespace A374047

/-- `∩[A042968(n+1), A374109(n+1)]` -/
def P2477545439286009111.Spec : Prop :=
  ∀ n, (P2477545439286009111.a n : ℤ) = A374047 (n + 1)

end A374047

/-! ## A374047.P2347575733548773580

`∩[A042968(n+1), A374115(n+1)]`
-/

namespace A374047.P2347575733548773580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374047.P2347575733548773580

namespace A374047

/-- `∩[A042968(n+1), A374115(n+1)]` -/
def P2347575733548773580.Spec : Prop :=
  ∀ n, (P2347575733548773580.a n : ℤ) = A374047 (n + 1)

end A374047

/-!
# A374048: a(n) = 1 if A328846(n) is even, otherwise 0, where A328846 is the second Fibonacci based variant of arithmetic derivative.

The programs for A374048, there is no canonical definition to state claims against.
-/

/-! ## A374048.P10126153202445128053

`A059841(A328846(n))`
-/

namespace A374048.P10126153202445128053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A328846 n).toNat

end

end A374048.P10126153202445128053

/-! ## A374048.P8651764053247558446

`char[A374049(n+1)]`
-/

namespace A374048.P8651764053247558446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374048.P8651764053247558446

/-! ## A374048.P11540326966319177668

`1-char[A374050(n+1)]`
-/

namespace A374048.P11540326966319177668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374050 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A374048.P11540326966319177668

/-! ## A374048.P5712320041821600240

`A061547(and(1, -A328846(n))²)`
-/

namespace A374048.P5712320041821600240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 (Int.land 1 (-A328846 n) ^ 2).toNat

end

end A374048.P5712320041821600240

/-! ## A374048.P16770507312139960971

`(A328846(n)+A065764(n+1))%2`
-/

namespace A374048.P16770507312139960971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328846 n + A065764 (n + 1)) 2

end

end A374048.P16770507312139960971

/-! ## A374048.P11455330572268411271

`(A328846(n)+A260682(n+1))%2`
-/

namespace A374048.P11455330572268411271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328846 n + A260682 (n + 1)) 2

end

end A374048.P11455330572268411271

/-! ## A374048.P9854689540172628828

`(A328846(n)+A007351(3*n+2))%2`
-/

namespace A374048.P9854689540172628828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328846 n + A007351 (3 * n + 2)) 2

end

end A374048.P9854689540172628828

/-! ## A374048.P588404528105118248

`A374036(2*A328846(n))`
-/

namespace A374048.P588404528105118248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374036 (2 * A328846 n).toNat

end

end A374048.P588404528105118248

/-! ## A374048.P3532296924255556281

`A374045(2*A328846(n))`
-/

namespace A374048.P3532296924255556281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374045 (2 * A328846 n).toNat

end

end A374048.P3532296924255556281

/-! ## A374048.P4796043435444221079

`A374036(A328846(n)+A328846(n))`
-/

namespace A374048.P4796043435444221079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374036 (A328846 n + A328846 n).toNat

end

end A374048.P4796043435444221079

/-!
# A374049: Numbers k for which A328846(k) is even, where A328846 is the second Fibonacci based variant of arithmetic derivative.

The programs for A374049, there is no canonical definition to state claims against.
-/

/-! ## A374049.P11068232302072293199

`lt[0, A374048(n)]`
-/

namespace A374049.P11068232302072293199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A374049.P11068232302072293199

/-! ## A374049.P14555678089166966393

`comp[A374050(n+1)]`
-/

namespace A374049.P14555678089166966393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A374049.P14555678089166966393

/-! ## A374049.P17949591503153432227

`eq[A374048(2*n), A374048(n)]`
-/

namespace A374049.P17949591503153432227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374049.P17949591503153432227

/-! ## A374049.P784112279922458933

`eq[A358691(n+13), A374048(n)]`
-/

namespace A374049.P784112279922458933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358691 (n + 13)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374049.P784112279922458933

/-! ## A374049.P4760623323560894119

`eq[A001222(A000040(n+1)), A374048(n)]`
-/

namespace A374049.P4760623323560894119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374049.P4760623323560894119

/-! ## A374049.P9234131188945955376

`eq[A001065(A019334(n+1)), A374048(n)]`
-/

namespace A374049.P9234131188945955376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A019334 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374049.P9234131188945955376

/-! ## A374049.P4382271133268429366

`eq[A323305(A155938(n+1)), A374048(n)]`
-/

namespace A374049.P4382271133268429366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323305 (A155938 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374049.P4382271133268429366

/-! ## A374049.P7595683789773491467

`eq[A323305(A093191(n+4)), A374048(n)]`
-/

namespace A374049.P7595683789773491467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323305 (A093191 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374049.P7595683789773491467

/-! ## A374049.P9131521743153208135

`filter[A118759(n), A374048(#)]`
-/

namespace A374049.P9131521743153208135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374048 (f1 j).toNat = 1) n)

end

end A374049.P9131521743153208135

/-! ## A374049.P1419747951320867075

`eq[A323305(A140371(n+3)), A374048(n)]`
-/

namespace A374049.P1419747951320867075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323305 (A140371 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374049.P1419747951320867075

/-!
# A374050: Numbers k for which A328846(k) is odd, where A328846 is the second Fibonacci based variant of arithmetic derivative.

The programs for A374050, there is no canonical definition to state claims against.
-/

/-! ## A374050.P7940920922063398394

`eq[0, A374048(n)]`
-/

namespace A374050.P7940920922063398394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374050.P7940920922063398394

/-! ## A374050.P8901679321078650365

`lt[A374048(n), A374048(2*(n+2))]`
-/

namespace A374050.P8901679321078650365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374050.P8901679321078650365

/-! ## A374050.P17805309407978656128

`comp[A374049(n+1)]`
-/

namespace A374050.P17805309407978656128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A374050.P17805309407978656128

/-! ## A374050.P11153575054420122479

`lt[A374048(A028310(n)), 1]`
-/

namespace A374050.P11153575054420122479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A374050.P11153575054420122479

/-! ## A374050.P18432759963129459985

`lt[A374048(n), A000035(n)]`
-/

namespace A374050.P18432759963129459985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374050.P18432759963129459985

/-! ## A374050.P275704023192540814

`lt[A374048(n), A054977(n+2)]`
-/

namespace A374050.P275704023192540814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374050.P275704023192540814

/-!
# A374051: a(n) = 1 if A113177(n) is a multiple of 3, otherwise 0, where A113177 is fully additive with a(p) = Fibonacci(p).

The programs for A374051, the canonical program `A374051.P11949177030714316836` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374051 has offset 1).

The definition of A374051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374051.P1522303863477217562

`char[A374052(n+1)-1]`
-/

namespace A374051.P1522303863477217562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374052 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374051.P1522303863477217562

namespace A374051

/-- `char[A374052(n+1)-1]` -/
def P1522303863477217562.Spec : Prop :=
  ∀ n, (P1522303863477217562.a n : ℤ) = A374051 (n + 1)

end A374051

/-! ## A374051.P11949177030714316836

`A079978(A374124(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A374051

/-- `A079978(A374124(n+1))` -/
def P11949177030714316836.Spec : Prop :=
  ∀ n, P11949177030714316836.a n = A374051 (n + 1)

theorem P11949177030714316836.correct : P11949177030714316836.Spec := by
  intro n
  simp only [A374051, Nat.add_sub_cancel]

end A374051

/-! ## A374051.P209752759910241689

`A374110(A305548(n+1))`
-/

namespace A374051.P209752759910241689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374110 (A305548 (n + 1)).toNat

end

end A374051.P209752759910241689

namespace A374051

/-- `A374110(A305548(n+1))` -/
def P209752759910241689.Spec : Prop :=
  ∀ n, P209752759910241689.a n = A374051 (n + 1)

end A374051

/-! ## A374051.P10952900075708552773

`A374110(A044102(n+1))`
-/

namespace A374051.P10952900075708552773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374110 (A044102 (n + 1)).toNat

end

end A374051.P10952900075708552773

namespace A374051

/-- `A374110(A044102(n+1))` -/
def P10952900075708552773.Spec : Prop :=
  ∀ n, P10952900075708552773.a n = A374051 (n + 1)

end A374051

/-! ## A374051.P13133413757313790159

`A051626(gcd(A070021(n+1), A113177(n+1)))`
-/

namespace A374051.P13133413757313790159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (Int.gcd (A070021 (n + 1)) (A113177 (n + 1)))

end

end A374051.P13133413757313790159

namespace A374051

/-- `A051626(gcd(A070021(n+1), A113177(n+1)))` -/
def P13133413757313790159.Spec : Prop :=
  ∀ n, P13133413757313790159.a n = A374051 (n + 1)

end A374051

/-! ## A374051.P10667166193181139445

`A374110(A244634(n+1))`
-/

namespace A374051.P10667166193181139445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374110 (A244634 (n + 1)).toNat

end

end A374051.P10667166193181139445

namespace A374051

/-- `A374110(A244634(n+1))` -/
def P10667166193181139445.Spec : Prop :=
  ∀ n, P10667166193181139445.a n = A374051 (n + 1)

end A374051

/-! ## A374051.P7929223610544710515

`A374110(A016910(n+1))`
-/

namespace A374051.P7929223610544710515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374110 (A016910 (n + 1)).toNat

end

end A374051.P7929223610544710515

namespace A374051

/-- `A374110(A016910(n+1))` -/
def P7929223610544710515.Spec : Prop :=
  ∀ n, P7929223610544710515.a n = A374051 (n + 1)

end A374051

/-!
# A374052: Numbers k for which A113177(k) is a multiple of 3, where A113177 is fully additive with a(p) = Fibonacci(p).

The programs for A374052, the canonical program `A374052.P16324426234516621321` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374052 has offset 1).

The definition of A374052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374052.P16324426234516621321

`lt[0, A374051(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A374052

/-- `lt[0, A374051(n+1)]+1` -/
def P16324426234516621321.Spec : Prop :=
  ∀ n, (P16324426234516621321.a n : ℤ) = A374052 (n + 1)

theorem P16324426234516621321.correct : P16324426234516621321.Spec := by
  intro n
  simp only [A374052, Nat.add_sub_cancel]

end A374052

/-! ## A374052.P7297597996091650361

`filter[A305811(n+1), A374051(#)]`
-/

namespace A374052.P7297597996091650361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P7297597996091650361

namespace A374052

/-- `filter[A305811(n+1), A374051(#)]` -/
def P7297597996091650361.Spec : Prop :=
  ∀ n, P7297597996091650361.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P9572554383038396489

`filter[A324400(n+1), A374051(#)]`
-/

namespace A374052.P9572554383038396489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P9572554383038396489

namespace A374052

/-- `filter[A324400(n+1), A374051(#)]` -/
def P9572554383038396489.Spec : Prop :=
  ∀ n, P9572554383038396489.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P15858619018955362550

`filter[A379053(n+1), A374051(#)]`
-/

namespace A374052.P15858619018955362550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P15858619018955362550

namespace A374052

/-- `filter[A379053(n+1), A374051(#)]` -/
def P15858619018955362550.Spec : Prop :=
  ∀ n, P15858619018955362550.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P11778096557820198786

`record[A000027(n+1)*A374051(n+1)]`
-/

namespace A374052.P11778096557820198786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A374051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374052.P11778096557820198786

namespace A374052

/-- `record[A000027(n+1)*A374051(n+1)]` -/
def P11778096557820198786.Spec : Prop :=
  ∀ n, P11778096557820198786.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P16094543420309342667

`filter[A018252(n+1), A374051(#)]`
-/

namespace A374052.P16094543420309342667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P16094543420309342667

namespace A374052

/-- `filter[A018252(n+1), A374051(#)]` -/
def P16094543420309342667.Spec : Prop :=
  ∀ n, P16094543420309342667.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P4508058988791046871

`filter[A141468(n+2), A374051(#)]`
-/

namespace A374052.P4508058988791046871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P4508058988791046871

namespace A374052

/-- `filter[A141468(n+2), A374051(#)]` -/
def P4508058988791046871.Spec : Prop :=
  ∀ n, P4508058988791046871.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P15047784548260714402

`filter[A222307(2*n+1), A374051(#)]`
-/

namespace A374052.P15047784548260714402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P15047784548260714402

namespace A374052

/-- `filter[A222307(2*n+1), A374051(#)]` -/
def P15047784548260714402.Spec : Prop :=
  ∀ n, P15047784548260714402.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P5552584128162462208

`filter[A101513(n+1), A374051(#)]`
-/

namespace A374052.P5552584128162462208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P5552584128162462208

namespace A374052

/-- `filter[A101513(n+1), A374051(#)]` -/
def P5552584128162462208.Spec : Prop :=
  ∀ n, P5552584128162462208.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P7915647463711351628

`filter[A056653(n+1), A374051(#)]`
-/

namespace A374052.P7915647463711351628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P7915647463711351628

namespace A374052

/-- `filter[A056653(n+1), A374051(#)]` -/
def P7915647463711351628.Spec : Prop :=
  ∀ n, P7915647463711351628.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P3669165817000097231

`filter[A065090(n+1), A374051(#)]`
-/

namespace A374052.P3669165817000097231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P3669165817000097231

namespace A374052

/-- `filter[A065090(n+1), A374051(#)]` -/
def P3669165817000097231.Spec : Prop :=
  ∀ n, P3669165817000097231.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P14309957521555527737

`filter[A171581(n+1), A374051(#)]`
-/

namespace A374052.P14309957521555527737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P14309957521555527737

namespace A374052

/-- `filter[A171581(n+1), A374051(#)]` -/
def P14309957521555527737.Spec : Prop :=
  ∀ n, P14309957521555527737.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P8244641909296539615

`filter[A338924(n+1), A374051(#)]`
-/

namespace A374052.P8244641909296539615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P8244641909296539615

namespace A374052

/-- `filter[A338924(n+1), A374051(#)]` -/
def P8244641909296539615.Spec : Prop :=
  ∀ n, P8244641909296539615.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P15066850188145712451

`filter[A173905(n+2), A374051(#)]`
-/

namespace A374052.P15066850188145712451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P15066850188145712451

namespace A374052

/-- `filter[A173905(n+2), A374051(#)]` -/
def P15066850188145712451.Spec : Prop :=
  ∀ n, P15066850188145712451.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P8988258677537543948

`filter[A073900(n+1), A374051(#)]`
-/

namespace A374052.P8988258677537543948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P8988258677537543948

namespace A374052

/-- `filter[A073900(n+1), A374051(#)]` -/
def P8988258677537543948.Spec : Prop :=
  ∀ n, P8988258677537543948.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P10768445253911295123

`filter[A073899(n+1), A374051(#)]`
-/

namespace A374052.P10768445253911295123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P10768445253911295123

namespace A374052

/-- `filter[A073899(n+1), A374051(#)]` -/
def P10768445253911295123.Spec : Prop :=
  ∀ n, P10768445253911295123.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P4528598177322533135

`filter[A121543(n+1), A374051(#)]`
-/

namespace A374052.P4528598177322533135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P4528598177322533135

namespace A374052

/-- `filter[A121543(n+1), A374051(#)]` -/
def P4528598177322533135.Spec : Prop :=
  ∀ n, P4528598177322533135.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P18432763650164669965

`filter[A089088(n), A374051(#)]`
-/

namespace A374052.P18432763650164669965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P18432763650164669965

namespace A374052

/-- `filter[A089088(n), A374051(#)]` -/
def P18432763650164669965.Spec : Prop :=
  ∀ n, P18432763650164669965.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P10070844853875228444

`filter[A045762(n+2), A374051(#)]`
-/

namespace A374052.P10070844853875228444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P10070844853875228444

namespace A374052

/-- `filter[A045762(n+2), A374051(#)]` -/
def P10070844853875228444.Spec : Prop :=
  ∀ n, P10070844853875228444.a n = A374052 (n + 1)

end A374052

/-! ## A374052.P15780600526269635782

`filter[A059921(n+1), A374051(#)]`
-/

namespace A374052.P15780600526269635782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374051 (f1 j).toNat = 1) n)

end

end A374052.P15780600526269635782

namespace A374052

/-- `filter[A059921(n+1), A374051(#)]` -/
def P15780600526269635782.Spec : Prop :=
  ∀ n, P15780600526269635782.a n = A374052 (n + 1)

end A374052

/-!
# A374054: a(n) = max_{i=0..n} S_3(i) + S_3(n-i) where S_3(x) = A053735(x) is the base-3 digit sum of x.

The programs for A374054, the canonical program `A374054.P11266633794218928703` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374054 has offset 0).

The definition of A374054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374054.P11266633794218928703

`A062153(n+1)+A061282(A260316(n+1))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A374054

/-- `A062153(n+1)+A061282(A260316(n+1))` -/
def P11266633794218928703.Spec : Prop :=
  ∀ n, P11266633794218928703.a n = A374054 n

theorem P11266633794218928703.correct : P11266633794218928703.Spec := by
  intro n
  simp only [A374054]

end A374054

/-!
# A374055: a(1)=1, a(2)=4, and thereafter a(n) = a(n-2) + k * a(n-1), with minimal k >= 1 such that a(n) is not prime.

The programs for A374055, there is no canonical definition to state claims against.
-/

/-! ## A374055.P11758011479594829697

`filter[A120760(n+2), A005171(#)]`
-/

namespace A374055.P11758011479594829697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120760 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A374055.P11758011479594829697

/-! ## A374055.P15390594079276680776

`A218654(A124850(2*n+3)+A026778(2*n))`
-/

namespace A374055.P15390594079276680776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218654 (A124850 (2 * n + 3) + A026778 (2 * n)).toNat

end

end A374055.P15390594079276680776

/-!
# A374058: Expansion of Product_{k>=1} (1 - x^(3*k-2)) * (1 - x^(3*k)).

The programs for A374058, there is no canonical definition to state claims against.
-/

/-! ## A374058.P11400619819027309410

`A008683(xor(A003056(n), A160893(n+1)))`
-/

namespace A374058.P11400619819027309410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.xor (A003056 n) (A160893 (n + 1))).toNat

end

end A374058.P11400619819027309410

/-! ## A374058.P8729316366040596996

`A008683(A118676(n+1)+A114523(n))`
-/

namespace A374058.P8729316366040596996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A118676 (n + 1) + A114523 n).toNat

end

end A374058.P8729316366040596996

/-! ## A374058.P6612604389417204272

`A008683(A127236(n)+A000332(3*n+1))`
-/

namespace A374058.P6612604389417204272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A127236 n + A000332 (3 * n + 1)).toNat

end

end A374058.P6612604389417204272

/-! ## A374058.P7552452284221717835

`A163532(A014103(n+1)%A295987(2*n+3))`
-/

namespace A374058.P7552452284221717835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (Int.tmod (A014103 (n + 1)) (A295987 (2 * n + 3))).toNat

end

end A374058.P7552452284221717835

/-! ## A374058.P3651520911403336746

`A054354(record[A367860(n+4)])`
-/

namespace A374058.P3651520911403336746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367860 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A374058.P3651520911403336746

/-!
# A374060: Expansion of Product_{k>=1} (1 - x^(3*k-1)) * (1 - x^(3*k)).

The programs for A374060, there is no canonical definition to state claims against.
-/

/-! ## A374060.P10681503075885428623

`A008683(A281284(n)+A065339(2*(n+2)))`
-/

namespace A374060.P10681503075885428623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A281284 n + A065339 (2 * (n + 2))).toNat

end

end A374060.P10681503075885428623

/-! ## A374060.P16560955856384317194

`A193056(A016742(3*n+4)-A000203(2*(n+2)))`
-/

namespace A374060.P16560955856384317194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193056 (A016742 (3 * n + 4) - A000203 (2 * (n + 2))).toNat

end

end A374060.P16560955856384317194

/-! ## A374060.P7206735334667393072

`A030203(4*A001157(3*n+1))`
-/

namespace A374060.P7206735334667393072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 (4 * A001157 (3 * n + 1)).toNat

end

end A374060.P7206735334667393072

/-! ## A374060.P3304366645748899961

`A363553(A000118(n+2)*A061200(n+1))`
-/

namespace A374060.P3304366645748899961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363553 (A000118 (n + 2) * A061200 (n + 1)).toNat

end

end A374060.P3304366645748899961

/-! ## A374060.P8969063210896697718

`A008683(A307027(n+5)+A299574(n+1))`
-/

namespace A374060.P8969063210896697718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A307027 (n + 5) + A299574 (n + 1)).toNat

end

end A374060.P8969063210896697718

/-!
# A374061: Number of solutions to a^2 + n = 2 * b^2 with 0 < a < b.

The programs for A374061, the canonical program `A374061.P16980433022031769018` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374061 has offset 1).

The definition of A374061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374061.P16980433022031769018

`floor(A035185(n+1)/2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A374061

/-- `floor(A035185(n+1)/2)` -/
def P16980433022031769018.Spec : Prop :=
  ∀ n, P16980433022031769018.a n = A374061 (n + 1)

theorem P16980433022031769018.correct : P16980433022031769018.Spec := by
  intro n
  simp only [A374061, Nat.add_sub_cancel]

end A374061

/-! ## A374061.P10396399888168950736

`A363037(n+1)-A216282(n+1)`
-/

namespace A374061.P10396399888168950736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363037 (n + 1) - A216282 (n + 1)

end

end A374061.P10396399888168950736

namespace A374061

/-- `A363037(n+1)-A216282(n+1)` -/
def P10396399888168950736.Spec : Prop :=
  ∀ n, P10396399888168950736.a n = A374061 (n + 1)

theorem P10396399888168950736.correct : P10396399888168950736.Spec := by
  intro n
  simp only [A374061, Nat.add_sub_cancel, A374061.P10396399888168950736.a, A374061.P16980433022031769018.a, A035185, A035185.P8037574016802671635.a, A216282, A216282.P5463168406655024554.a, A363037, A363037.P17593486041959232839.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188171, A188171.P17289095504074848112.a, A364032, A364032.P15572008137104778974.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, A188170, A188170.P7143844993511574485.f1, A188170.P7143844993511574485.a, A253513, A253513.P7768194327896133816.a, A001826, A001826.P1518250824516108745.a, A122046, A122046.P14111764381793131601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A374061

/-! ## A374061.P611245947229388531

`∑{d}[n+1, A053866(#)*A330174((n+1)/#)]`
-/

namespace A374061.P611245947229388531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A330174 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A374061.P611245947229388531

namespace A374061

/-- `∑{d}[n+1, A053866(#)*A330174((n+1)/#)]` -/
def P611245947229388531.Spec : Prop :=
  ∀ n, P611245947229388531.a n = A374061 (n + 1)

end A374061

/-! ## A374061.P11655003302249610321

`∑{d}[n+1, A166698(#)*A331671((n+1)/#)]`
-/

namespace A374061.P11655003302249610321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A166698 d * A331671 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A374061.P11655003302249610321

namespace A374061

/-- `∑{d}[n+1, A166698(#)*A331671((n+1)/#)]` -/
def P11655003302249610321.Spec : Prop :=
  ∀ n, P11655003302249610321.a n = A374061 (n + 1)

end A374061

/-! ## A374061.P7779811872103264429

`A004526(A035185(n+1)+n+n)-n`
-/

namespace A374061.P7779811872103264429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A035185 (n + 1) + (n : ℤ) + (n : ℤ)).toNat - (n : ℤ)

end

end A374061.P7779811872103264429

namespace A374061

/-- `A004526(A035185(n+1)+n+n)-n` -/
def P7779811872103264429.Spec : Prop :=
  ∀ n, P7779811872103264429.a n = A374061 (n + 1)

end A374061

/-! ## A374061.P16264389045721626263

`A004526(A138270(3*n+2)+A035185(n+1))`
-/

namespace A374061.P16264389045721626263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A138270 (3 * n + 2) + A035185 (n + 1)).toNat

end

end A374061.P16264389045721626263

namespace A374061

/-- `A004526(A138270(3*n+2)+A035185(n+1))` -/
def P16264389045721626263.Spec : Prop :=
  ∀ n, P16264389045721626263.a n = A374061 (n + 1)

end A374061

/-! ## A374061.P10736774650389390011

`A216278(n+1)-A364032(n+1)`
-/

namespace A374061.P10736774650389390011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216278 (n + 1) - A364032 (n + 1)

end

end A374061.P10736774650389390011

namespace A374061

/-- `A216278(n+1)-A364032(n+1)` -/
def P10736774650389390011.Spec : Prop :=
  ∀ n, P10736774650389390011.a n = A374061 (n + 1)

end A374061

/-!
# A374064: Expansion of Product_{k>=1} 1 / (1 + x^(3*k-1)).

The programs for A374064, there is no canonical definition to state claims against.
-/

/-! ## A374064.P1635301733767923088

`A049347(A183688(2*n+3)-A001743(n+1))`
-/

namespace A374064.P1635301733767923088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A183688 (2 * n + 3) - A001743 (n + 1)).toNat

end

end A374064.P1635301733767923088

/-!
# A374065: Expansion of Product_{k>=1} 1 / (1 + x^(3*k-2)).

The programs for A374065, there is no canonical definition to state claims against.
-/

/-! ## A374065.P16262457623673520004

`A055641(A037270(n))-A039999(n+4)`
-/

namespace A374065.P16262457623673520004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A037270 n).toNat - A039999 (n + 4)

end

end A374065.P16262457623673520004

/-! ## A374065.P7929385431062558908

`A109389(n+4)-A240328(A331976(n+1))`
-/

namespace A374065.P7929385431062558908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109389 (n + 4) - A240328 (A331976 (n + 1)).toNat

end

end A374065.P7929385431062558908

/-!
# A374066: a(n) is the number of terms in the trajectory when the map x -> A067240(x) is iterated, starting from x = n until x = 0.

The programs for A374066, there is no canonical definition to state claims against.
-/

/-! ## A374066.P705760499099207842

`a(A067240(n+1)-1)+1` with `a(0)=2`
-/

namespace A374066.P705760499099207842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A067240 (n + 1) - 1).toNat + 1

end

end A374066.P705760499099207842

/-! ## A374066.P4676253850347087859

`A067340(a(A067240(n+1)-1))` with `a(0)=2`
-/

namespace A374066.P4676253850347087859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A067340 (a (A067240 (n + 1) - 1).toNat).toNat

end

end A374066.P4676253850347087859

/-! ## A374066.P1090078499161814847

`A358552(∑[A358560(n)])+1`
-/

namespace A374066.P1090078499161814847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A374066.P1090078499161814847

/-! ## A374066.P13874341266207288403

`A358372(A323505(n+1)+A193095(n))`
-/

namespace A374066.P13874341266207288403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (A323505 (n + 1) + A193095 n).toNat

end

end A374066.P13874341266207288403

/-! ## A374066.P3850335028285661321

`A029837(A375126(n)+1)+A001221(A122536(n+5))`
-/

namespace A374066.P3850335028285661321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A375126 n + 1).toNat + A001221 (A122536 (n + 5)).toNat

end

end A374066.P3850335028285661321

/-!
# A374067: a(n) is the permanent of the symmetric Toeplitz matrix of order n whose element (i,j) equals the |i-j|-th prime or 1 if i = j.

The programs for A374067, there is no canonical definition to state claims against.
-/

/-! ## A374067.P2276004759096783920

`A191795(A323723(n))`
-/

namespace A374067.P2276004759096783920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191795 (A323723 n).toNat

end

end A374067.P2276004759096783920

/-!
# A374068: a(n) is the permanent of the symmetric Toeplitz matrix of order n whose element (i,j) equals the |i-j|-th prime or 0 if i = j.

The programs for A374068, there is no canonical definition to state claims against.
-/

/-! ## A374068.P1357683599276862572

`A289435(A008548(n)+∏{e}[n+1, #+1])`
-/

namespace A374068.P1357683599276862572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A008548 n + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A374068.P1357683599276862572

/-!
# A374071: a(n) is the permanent of the Toeplitz matrix of order n whose element (i,j) equals the (i-j)-th composite number if i > j, (j-i)-th prime number if i < j, or 1 if i = j.

The programs for A374071, there is no canonical definition to state claims against.
-/

/-! ## A374071.P15593345560469190297

`A034460(A020767(n))+1`
-/

namespace A374071.P15593345560469190297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A020767 n).toNat + 1

end

end A374071.P15593345560469190297

/-!
# A374072: Integers of the form x!*y!/(x! + y!) where x, y are positive integers.

The programs for A374072, there is no canonical definition to state claims against.
-/

/-! ## A374072.P2787804713769942485

`A226651(A048134(n+1))`
-/

namespace A374072.P2787804713769942485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226651 (A048134 (n + 1)).toNat

end

end A374072.P2787804713769942485

/-! ## A374072.P11544709829827842556

`∏{e}[A049308(n), A276086(#)]`
-/

namespace A374072.P11544709829827842556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A276086 (Nat.factorization (f1 n).natAbs p)

end

end A374072.P11544709829827842556

/-!
# A374073: Number of connected chainmails with n unlabeled elements.

The programs for A374073, there is no canonical definition to state claims against.
-/

/-! ## A374073.P1598821136562581502

`A071949(n)+A071940(A001930(n))`
-/

namespace A374073.P1598821136562581502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071949 n + A071940 (A001930 n).toNat

end

end A374073.P1598821136562581502

/-! ## A374073.P17818606066549676376

`A155216(A375795(n)+A244232(n+1))`
-/

namespace A374073.P17818606066549676376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155216 (A375795 n + A244232 (n + 1)).toNat

end

end A374073.P17818606066549676376

/-!
# A374074: Odd composite numbers k sorted by k/2^(bigomega(k) - 1).

The programs for A374074, there is no canonical definition to state claims against.
-/

/-! ## A374074.P8762908705410170233

`filter[A122943(n+1), A066247(#)]`
-/

namespace A374074.P8762908705410170233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A374074.P8762908705410170233

/-! ## A374074.P13143214681729207548

`filter[A122943(n+1), A202238(#)]`
-/

namespace A374074.P13143214681729207548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A374074.P13143214681729207548

/-! ## A374074.P4849786824760434247

`filter[A122943(n+1), A323162(#)]`
-/

namespace A374074.P4849786824760434247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A374074.P4849786824760434247

/-! ## A374074.P7996612487566741818

`filter[A122943(n+2), A005171(#)]`
-/

namespace A374074.P7996612487566741818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A374074.P7996612487566741818

/-! ## A374074.P15563298980159951488

`filter[A122943(n+2), A292438(#)]`
-/

namespace A374074.P15563298980159951488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A374074.P15563298980159951488

/-!
# A374076: Expansion of Product_{k>=1} 1 / (1 + x^(5*k-1)).

The programs for A374076, there is no canonical definition to state claims against.
-/

/-! ## A374076.P10971594511043907269

`A324672(A285340(n))`
-/

namespace A374076.P10971594511043907269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324672 (A285340 n).toNat

end

end A374076.P10971594511043907269

/-! ## A374076.P5381557657031166410

`A033999(A001630(n))*A109700(n)`
-/

namespace A374076.P5381557657031166410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001630 n).toNat * A109700 n

end

end A374076.P5381557657031166410

/-! ## A374076.P14780767946719454097

`A014017(n)-A014017(A006886(n+1))`
-/

namespace A374076.P14780767946719454097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 n - A014017 (A006886 (n + 1)).toNat

end

end A374076.P14780767946719454097

/-! ## A374076.P5975443974665032942

`A005614(n)-A286665(A035470(n+1))`
-/

namespace A374076.P5975443974665032942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n - A286665 (A035470 (n + 1)).toNat

end

end A374076.P5975443974665032942

/-! ## A374076.P10105517509542796124

`A324672(A265831(n))`
-/

namespace A374076.P10105517509542796124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324672 (A265831 n).toNat

end

end A374076.P10105517509542796124

/-!
# A374077: Expansion of Product_{k>=1} 1 / (1 + x^(5*k-2)).

The programs for A374077, there is no canonical definition to state claims against.
-/

/-! ## A374077.P6359104384369029400

`(-A109699(n))^A010049(n)`
-/

namespace A374077.P6359104384369029400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A109699 n : ℚ) ^ (A010049 n : ℤ)

end

end A374077.P6359104384369029400

/-! ## A374077.P6189806155582890471

`A372728(A326156(n)+A270613(n+1))`
-/

namespace A374077.P6189806155582890471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372728 (A326156 n + A270613 (n + 1)).toNat

end

end A374077.P6189806155582890471

/-! ## A374077.P8403595848390692420

`A244895(A265832(n)²)`
-/

namespace A374077.P8403595848390692420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A265832 n ^ 2).toNat

end

end A374077.P8403595848390692420

/-! ## A374077.P7225479382819302839

`A346688(A265832(n)²)`
-/

namespace A374077.P7225479382819302839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346688 (A265832 n ^ 2).toNat

end

end A374077.P7225479382819302839

/-! ## A374077.P17938263812794337259

`A346688(A265832(n)*A265832(n))`
-/

namespace A374077.P17938263812794337259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346688 (A265832 n * A265832 n).toNat

end

end A374077.P17938263812794337259

/-!
# A374078: Expansion of Product_{k>=1} 1 / (1 + x^(5*k-3)).

The programs for A374078, there is no canonical definition to state claims against.
-/

/-! ## A374078.P18316528380846487610

`A056594(A107070(n+1)-A381635(n+1))`
-/

namespace A374078.P18316528380846487610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A107070 (n + 1) - A381635 (n + 1)).toNat

end

end A374078.P18316528380846487610

/-! ## A374078.P9218765068300877550

`A011639(2*(n+1))-A240328(A332358(n+1))`
-/

namespace A374078.P9218765068300877550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011639 (2 * (n + 1)) - A240328 (A332358 (n + 1)).toNat

end

end A374078.P9218765068300877550

/-!
# A374080: Expansion of Product_{k>=1} (1 - x^(4*k-1)) * (1 - x^(4*k)).

The programs for A374080, there is no canonical definition to state claims against.
-/

/-! ## A374080.P6896789167445849310

`A388072(A010051(2*n+1)+A000048(n+1))`
-/

namespace A374080.P6896789167445849310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388072 (A010051 (2 * n + 1) + A000048 (n + 1)).toNat

end

end A374080.P6896789167445849310

/-! ## A374080.P12422537345061570558

`A322829(A128401(n+1)+A038208(2*n+3))`
-/

namespace A374080.P12422537345061570558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322829 (A128401 (n + 1) + A038208 (2 * n + 3)).toNat

end

end A374080.P12422537345061570558

/-! ## A374080.P8715397478470672612

`A163539(A095342(n+1)+A001221(3*(n+1)))`
-/

namespace A374080.P8715397478470672612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 (A095342 (n + 1) + A001221 (3 * (n + 1))).toNat

end

end A374080.P8715397478470672612

/-!
# A374081: Expansion of Product_{k>=1} (1 - x^(4*k-3)) * (1 - x^(4*k)).

The programs for A374081, there is no canonical definition to state claims against.
-/

/-! ## A374081.P15499383468378871208

`(A353619(3*(n+1))-A239667(A038702(n+5)+1))%2`
-/

namespace A374081.P15499383468378871208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353619 (3 * (n + 1)) - A239667 (A038702 (n + 5) + 1).toNat) 2

end

end A374081.P15499383468378871208

/-! ## A374081.P14688943609353489206

`A073445(A376681(n+1)+A073783(n+1))`
-/

namespace A374081.P14688943609353489206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073445 (A376681 (n + 1) + A073783 (n + 1)).toNat

end

end A374081.P14688943609353489206

/-! ## A374081.P1458275188575721297

`A073445(A376681(n+1)+A065310(n+2))`
-/

namespace A374081.P1458275188575721297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073445 (A376681 (n + 1) + A065310 (n + 2)).toNat

end

end A374081.P1458275188575721297

/-! ## A374081.P3613086873773631544

`A209229(A115597(2*n+5))-A209229(n)`
-/

namespace A374081.P3613086873773631544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A115597 (2 * n + 5)).toNat - A209229 n

end

end A374081.P3613086873773631544

/-! ## A374081.P14259498463120433656

`A285252(n+1)-A147645(A027343(3*n+4))`
-/

namespace A374081.P14259498463120433656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (n + 1) - A147645 (A027343 (3 * n + 4)).toNat

end

end A374081.P14259498463120433656

/-!
# A374082: Numbers k such that every prime dividing k also divides A114707(k-1).

The programs for A374082, there is no canonical definition to state claims against.
-/

/-! ## A374082.P16689164072043446479

`lt[A114708(A261143(n)+n-1), 1]`
-/

namespace A374082.P16689164072043446479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114708 (A261143 n + ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A374082.P16689164072043446479

/-!
# A374083: Vertical moments of inertia of a unit lozenge tiling of the hexagon with side lengths n (see references for exact configuration).

The programs for A374083, the canonical program `A374083.P15754585756088124734` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374083 has offset 1).

The definition of A374083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374083.P16990669078100285126

`(7*(n+1)^4-(n+1)²)/6`
-/

namespace A374083.P16990669078100285126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * (n + 1) ^ 4 : ℤ) - ((n + 1) ^ 2 : ℤ) : ℚ) / 6

end

end A374083.P16990669078100285126

namespace A374083

/-- `(7*(n+1)^4-(n+1)²)/6` -/
def P16990669078100285126.Spec : Prop :=
  ∀ n, P16990669078100285126.a n = (A374083 (n + 1) : ℚ)

theorem P16990669078100285126.correct : P16990669078100285126.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A374083, Nat.add_sub_cancel, A374083.P16990669078100285126.a, A374083.P15754585756088124734.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A374083, Nat.add_sub_cancel, A374083.P16990669078100285126.a, A374083.P15754585756088124734.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A374083

/-! ## A374083.P15754585756088124734

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=18, a(2)=93, a(3)=296, a(4)=725`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374083

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15754585756088124734.Spec : Prop :=
  ∀ n, P15754585756088124734.a n = A374083 (n + 1)

theorem P15754585756088124734.correct : P15754585756088124734.Spec := by
  intro n
  simp only [A374083, Nat.add_sub_cancel]

end A374083

/-! ## A374083.P12406182227313248846

`∑[∑[A005905(n)]]`
-/

namespace A374083.P12406182227313248846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005905 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374083.P12406182227313248846

namespace A374083

/-- `∑[∑[A005905(n)]]` -/
def P12406182227313248846.Spec : Prop :=
  ∀ n, P12406182227313248846.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P1538477172214186741

`∑[A063494(n+1)]`
-/

namespace A374083.P1538477172214186741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374083.P1538477172214186741

namespace A374083

/-- `∑[A063494(n+1)]` -/
def P1538477172214186741.Spec : Prop :=
  ∀ n, P1538477172214186741.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P6640645553981006341

`A213436(n+1)+∑[n]²`
-/

namespace A374083.P6640645553981006341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213436 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A374083.P6640645553981006341

namespace A374083

/-- `A213436(n+1)+∑[n]²` -/
def P6640645553981006341.Spec : Prop :=
  ∀ n, P6640645553981006341.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P2209594518351202136

`(n+1)*∑[A069099(n+1)]`
-/

namespace A374083.P2209594518351202136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374083.P2209594518351202136

namespace A374083

/-- `(n+1)*∑[A069099(n+1)]` -/
def P2209594518351202136.Spec : Prop :=
  ∀ n, P2209594518351202136.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P13709881683240008990

`A008911(n+1)+(n+1)²²`
-/

namespace A374083.P13709881683240008990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A374083.P13709881683240008990

namespace A374083

/-- `A008911(n+1)+(n+1)²²` -/
def P13709881683240008990.Spec : Prop :=
  ∀ n, P13709881683240008990.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P5800024726822839912

`A368046(n)+A126274(n)`
-/

namespace A374083.P5800024726822839912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368046 n + A126274 n

end

end A374083.P5800024726822839912

namespace A374083

/-- `A368046(n)+A126274(n)` -/
def P5800024726822839912.Spec : Prop :=
  ∀ n, P5800024726822839912.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P14069833780151556466

`A132366(n)+A047928(n+2)`
-/

namespace A374083.P14069833780151556466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132366 n + A047928 (n + 2)

end

end A374083.P14069833780151556466

namespace A374083

/-- `A132366(n)+A047928(n+2)` -/
def P14069833780151556466.Spec : Prop :=
  ∀ n, P14069833780151556466.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P1399671311705076716

`A264850(n+1)+A264850(n)-A000330(n)`
-/

namespace A374083.P1399671311705076716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264850 (n + 1) + (A264850 n - A000330 n)

end

end A374083.P1399671311705076716

namespace A374083

/-- `A264850(n+1)+A264850(n)-A000330(n)` -/
def P1399671311705076716.Spec : Prop :=
  ∀ n, P1399671311705076716.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P2198127614142079078

`A002417(n+1)+A000217(n)*A014105(n+1)`
-/

namespace A374083.P2198127614142079078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) + A000217 n * A014105 (n + 1)

end

end A374083.P2198127614142079078

namespace A374083

/-- `A002417(n+1)+A000217(n)*A014105(n+1)` -/
def P2198127614142079078.Spec : Prop :=
  ∀ n, P2198127614142079078.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P9958191313547255187

`(n+1)*A004126(n+1)`
-/

namespace A374083.P9958191313547255187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004126 (n + 1)

end

end A374083.P9958191313547255187

namespace A374083

/-- `(n+1)*A004126(n+1)` -/
def P9958191313547255187.Spec : Prop :=
  ∀ n, P9958191313547255187.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P8109179770893934586

`A187756(n+1)-A008911(n+1)`
-/

namespace A374083.P8109179770893934586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 (n + 1) - A008911 (n + 1)

end

end A374083.P8109179770893934586

namespace A374083

/-- `A187756(n+1)-A008911(n+1)` -/
def P8109179770893934586.Spec : Prop :=
  ∀ n, P8109179770893934586.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P1558091908904618519

`A103220(n+1)+A053134(n)-A000447(n+1)`
-/

namespace A374083.P1558091908904618519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103220 (n + 1) + (A053134 n - A000447 (n + 1))

end

end A374083.P1558091908904618519

namespace A374083

/-- `A103220(n+1)+A053134(n)-A000447(n+1)` -/
def P1558091908904618519.Spec : Prop :=
  ∀ n, P1558091908904618519.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P12043671162320331088

`A008354(n+1)+A037270(n+1)-A132366(n)`
-/

namespace A374083.P12043671162320331088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008354 (n + 1) + (A037270 (n + 1) - A132366 n)

end

end A374083.P12043671162320331088

namespace A374083

/-- `A008354(n+1)+A037270(n+1)-A132366(n)` -/
def P12043671162320331088.Spec : Prop :=
  ∀ n, P12043671162320331088.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P5047256413228892623

`A002415(n+1)+A002415(n+1)+A000583(n+1)`
-/

namespace A374083.P5047256413228892623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + (A002415 (n + 1) + A000583 (n + 1))

end

end A374083.P5047256413228892623

namespace A374083

/-- `A002415(n+1)+A002415(n+1)+A000583(n+1)` -/
def P5047256413228892623.Spec : Prop :=
  ∀ n, P5047256413228892623.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P17693410485622610829

`∑[A212968(2*n)]`
-/

namespace A374083.P17693410485622610829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212968 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374083.P17693410485622610829

namespace A374083

/-- `∑[A212968(2*n)]` -/
def P17693410485622610829.Spec : Prop :=
  ∀ n, P17693410485622610829.a n = A374083 (n + 1)

end A374083

/-! ## A374083.P14008512656792388820

`∑[A061349(2*n+1)]`
-/

namespace A374083.P14008512656792388820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061349 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374083.P14008512656792388820

namespace A374083

/-- `∑[A061349(2*n+1)]` -/
def P14008512656792388820.Spec : Prop :=
  ∀ n, P14008512656792388820.a n = A374083 (n + 1)

end A374083

/-!
# A374084: a(n) = (1 + (n+1)^2 + (n-2)*(-1)^n)/2.

The programs for A374084, the canonical program `A374084.P10054504451650089915` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374084 has offset 1).

The definition of A374084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+(n+2)²+(n-1)*(-1)^(n+1))/2` (program `A374084.P7718708227101101503`, by `A374084.P7718708227101101503.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374084.P7718708227101101503

`(1+(n+2)²+(n-1)*(-1)^(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374084.P7718708227101101503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + (n + 2) ^ 2 : ℤ) + ((n : ℤ) - 1) * (-1) ^ (n + 1) : ℚ) / 2

end

end A374084.P7718708227101101503

namespace A374084

/-- `(1+(n+2)²+(n-1)*(-1)^(n+1))/2` -/
def P7718708227101101503.Spec : Prop :=
  ∀ n, P7718708227101101503.a n = (A374084 (n + 1) : ℚ)

theorem P7718708227101101503.correct : P7718708227101101503.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A374084, Nat.add_sub_cancel, A374084.P7718708227101101503.a, A374084.P10054504451650089915.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A374084, Nat.add_sub_cancel, A374084.P7718708227101101503.a, A374084.P10054504451650089915.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A374084

/-! ## A374084.P10054504451650089915

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=3, a(1)=5, a(2)=8, a(3)=14, a(4)=17`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374084

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P10054504451650089915.Spec : Prop :=
  ∀ n, P10054504451650089915.a n = A374084 (n + 1)

theorem P10054504451650089915.correct : P10054504451650089915.Spec := by
  intro n
  simp only [A374084, Nat.add_sub_cancel]

end A374084

/-! ## A374084.P8115528954063143703

`A128918(n+2)-(-1)^(n+1)`
-/

namespace A374084.P8115528954063143703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128918 (n + 2) - (-1) ^ (n + 1)

end

end A374084.P8115528954063143703

namespace A374084

/-- `A128918(n+2)-(-1)^(n+1)` -/
def P8115528954063143703.Spec : Prop :=
  ∀ n, P8115528954063143703.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P14759554426911787110

`∑[xor(1, n)]+lcm(2, n)+2`
-/

namespace A374084.P14759554426911787110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm 2 n + 2

end

end A374084.P14759554426911787110

namespace A374084

/-- `∑[xor(1, n)]+lcm(2, n)+2` -/
def P14759554426911787110.Spec : Prop :=
  ∀ n, (P14759554426911787110.a n : ℤ) = A374084 (n + 1)

end A374084

/-! ## A374084.P18120012940580398329

`C(n+3, 2)-gcd(n, and(1, n))`
-/

namespace A374084.P18120012940580398329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) - (Nat.gcd n (Nat.land 1 n) : ℤ)

end

end A374084.P18120012940580398329

namespace A374084

/-- `C(n+3, 2)-gcd(n, and(1, n))` -/
def P18120012940580398329.Spec : Prop :=
  ∀ n, P18120012940580398329.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P16868264636542709380

`n+2+∑[n]+n^(n%2)`
-/

namespace A374084.P16868264636542709380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + (∑ j ∈ Finset.range (n + 1), f1 j + n ^ (n % 2))

end

end A374084.P16868264636542709380

namespace A374084

/-- `n+2+∑[n]+n^(n%2)` -/
def P16868264636542709380.Spec : Prop :=
  ∀ n, (P16868264636542709380.a n : ℤ) = A374084 (n + 1)

end A374084

/-! ## A374084.P16632975996031556598

`C(n+3, 2)-C(n, and(1, n+1))`
-/

namespace A374084.P16632975996031556598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) - (Nat.choose n (Nat.land 1 (n + 1)) : ℤ)

end

end A374084.P16632975996031556598

namespace A374084

/-- `C(n+3, 2)-C(n, and(1, n+1))` -/
def P16632975996031556598.Spec : Prop :=
  ∀ n, P16632975996031556598.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P7111415376483186164

`A267353(n)+2`
-/

namespace A374084.P7111415376483186164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267353 n + 2

end

end A374084.P7111415376483186164

namespace A374084

/-- `A267353(n)+2` -/
def P7111415376483186164.Spec : Prop :=
  ∀ n, P7111415376483186164.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P15671300407029986499

`∑[A265722(n)+2]`
-/

namespace A374084.P15671300407029986499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265722 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374084.P15671300407029986499

namespace A374084

/-- `∑[A265722(n)+2]` -/
def P15671300407029986499.Spec : Prop :=
  ∀ n, P15671300407029986499.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P18177594803268157826

`∑[A267352(n)]+2`
-/

namespace A374084.P18177594803268157826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A374084.P18177594803268157826

namespace A374084

/-- `∑[A267352(n)]+2` -/
def P18177594803268157826.Spec : Prop :=
  ∀ n, P18177594803268157826.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P6611545631110836097

`A266257(n)+2+n`
-/

namespace A374084.P6611545631110836097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266257 n + 2 + (n : ℤ)

end

end A374084.P6611545631110836097

namespace A374084

/-- `A266257(n)+2+n` -/
def P6611545631110836097.Spec : Prop :=
  ∀ n, P6611545631110836097.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P231048974904250493

`A133265(n)+∑[n+1]`
-/

namespace A374084.P231048974904250493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A374084.P231048974904250493

namespace A374084

/-- `A133265(n)+∑[n+1]` -/
def P231048974904250493.Spec : Prop :=
  ∀ n, P231048974904250493.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P10494689913270513621

`A321220(n)+A000124(n)`
-/

namespace A374084.P10494689913270513621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 n + A000124 n

end

end A374084.P10494689913270513621

namespace A374084

/-- `A321220(n)+A000124(n)` -/
def P10494689913270513621.Spec : Prop :=
  ∀ n, P10494689913270513621.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P7638976083791157676

`A081353(n)-A266440(n)`
-/

namespace A374084.P7638976083791157676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081353 n - A266440 n

end

end A374084.P7638976083791157676

namespace A374084

/-- `A081353(n)-A266440(n)` -/
def P7638976083791157676.Spec : Prop :=
  ∀ n, P7638976083791157676.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P9781566837731118029

`A141310(n+1)+A084265(n)`
-/

namespace A374084.P9781566837731118029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (n + 1) + A084265 n

end

end A374084.P9781566837731118029

namespace A374084

/-- `A141310(n+1)+A084265(n)` -/
def P9781566837731118029.Spec : Prop :=
  ∀ n, P9781566837731118029.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P5585183235992542883

`A195013(n+1)+A053439(n)`
-/

namespace A374084.P5585183235992542883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195013 (n + 1) + A053439 n

end

end A374084.P5585183235992542883

namespace A374084

/-- `A195013(n+1)+A053439(n)` -/
def P5585183235992542883.Spec : Prop :=
  ∀ n, P5585183235992542883.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P10249753652178472407

`A266438(n)+A103889(n+1)`
-/

namespace A374084.P10249753652178472407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266438 n + A103889 (n + 1)

end

end A374084.P10249753652178472407

namespace A374084

/-- `A266438(n)+A103889(n+1)` -/
def P10249753652178472407.Spec : Prop :=
  ∀ n, P10249753652178472407.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P11630529916316063436

`A227906(n)+A152950(n+1)`
-/

namespace A374084.P11630529916316063436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227906 n + A152950 (n + 1)

end

end A374084.P11630529916316063436

namespace A374084

/-- `A227906(n)+A152950(n+1)` -/
def P11630529916316063436.Spec : Prop :=
  ∀ n, P11630529916316063436.a n = A374084 (n + 1)

end A374084

/-! ## A374084.P8484917634334234015

`A362652(n+1)+A152271(n)`
-/

namespace A374084.P8484917634334234015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362652 (n + 1) + A152271 n

end

end A374084.P8484917634334234015

namespace A374084

/-- `A362652(n+1)+A152271(n)` -/
def P8484917634334234015.Spec : Prop :=
  ∀ n, P8484917634334234015.a n = A374084 (n + 1)

end A374084

/-!
# A374086: Number of integer sequences on a circle of length A373728(n) containing all permutations of the set {1, 2, ..., n} as subsequences.

The programs for A374086, there is no canonical definition to state claims against.
-/

/-! ## A374086.P11914833271342016464

`A000010(A374386(n)+A218308(n))`
-/

namespace A374086.P11914833271342016464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A374386 n + A218308 n).toNat

end

end A374086.P11914833271342016464

/-!
# A374088: Number of ordered pairs (x,y) of positive integers such that x^2 + x*y + y^2 = n.

The programs for A374088, there is no canonical definition to state claims against.
-/

/-! ## A374088.P16045461208318039330

`A088534(A000578(n))-A010052(n)`
-/

namespace A374088.P16045461208318039330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (A000578 n).toNat - A010052 n

end

end A374088.P16045461208318039330

/-! ## A374088.P11114530293050870497

`A350801(n)%A294903(A350774(3*n+5)+1)`
-/

namespace A374088.P11114530293050870497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350801 n) (A294903 (A350774 (3 * n + 5) + 1).toNat)

end

end A374088.P11114530293050870497

/-! ## A374088.P12835321070960338043

`A074942(A391507(n+2))`
-/

namespace A374088.P12835321070960338043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074942 (A391507 (n + 2)).toNat

end

end A374088.P12835321070960338043

/-! ## A374088.P6870894596906429722

`A348613(A272196(n+1)+A065359(n))`
-/

namespace A374088.P6870894596906429722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348613 (A272196 (n + 1) + A065359 n).toNat

end

end A374088.P6870894596906429722

/-! ## A374088.P6570146088255521754

`lcm(A002448(A135313(n+3)), A124764(n))`
-/

namespace A374088.P6570146088255521754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002448 (A135313 (n + 3)).toNat) (A124764 n)

end

end A374088.P6570146088255521754

/-!
# A374089: Number of ordered pairs (x,y) of positive integers such that x^2 + 3*x*y + y^2 = n.

The programs for A374089, there is no canonical definition to state claims against.
-/

/-! ## A374089.P9690453994825097938

`A001590(A356790(2*n+5)%A037445(2*(n+1)))`
-/

namespace A374089.P9690453994825097938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (Int.tmod (A356790 (2 * n + 5)) (A037445 (2 * (n + 1)))).toNat

end

end A374089.P9690453994825097938

/-!
# A374092: Number of solutions to n = x^2 + x*y + y^2 with 0 < x < y.

The programs for A374092, the canonical program `A374092.P5550982574403605617` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374092 has offset 0).

The definition of A374092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374092.P11524681826268211818

`floor(A374088(n)/2)`
-/

namespace A374092.P11524681826268211818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A374088 n : ℚ) / 2⌋

end

end A374092.P11524681826268211818

namespace A374092

/-- `floor(A374088(n)/2)` -/
def P11524681826268211818.Spec : Prop :=
  ∀ n, P11524681826268211818.a n = A374092 n

end A374092

/-! ## A374092.P13786010245476163690

`floor(A217220(n)/7)`
-/

namespace A374092.P13786010245476163690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217220 n : ℚ) / 7⌋

end

end A374092.P13786010245476163690

namespace A374092

/-- `floor(A217220(n)/7)` -/
def P13786010245476163690.Spec : Prop :=
  ∀ n, P13786010245476163690.a n = A374092 n

end A374092

/-! ## A374092.P7587483638404133826

`floor(A004016(n)/10)`
-/

namespace A374092.P7587483638404133826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004016 n : ℚ) / 10⌋

end

end A374092.P7587483638404133826

namespace A374092

/-- `floor(A004016(n)/10)` -/
def P7587483638404133826.Spec : Prop :=
  ∀ n, P7587483638404133826.a n = A374092 n

end A374092

/-! ## A374092.P14544180998377147316

`floor(A113973(2*n)/7)`
-/

namespace A374092.P14544180998377147316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113973 (2 * n) : ℚ) / 7⌋

end

end A374092.P14544180998377147316

namespace A374092

/-- `floor(A113973(2*n)/7)` -/
def P14544180998377147316.Spec : Prop :=
  ∀ n, P14544180998377147316.a n = A374092 n

end A374092

/-! ## A374092.P1251407881580149464

`floor(A005928(3*n)/10)`
-/

namespace A374092.P1251407881580149464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005928 (3 * n) : ℚ) / 10⌋

end

end A374092.P1251407881580149464

namespace A374092

/-- `floor(A005928(3*n)/10)` -/
def P1251407881580149464.Spec : Prop :=
  ∀ n, P1251407881580149464.a n = A374092 n

end A374092

/-! ## A374092.P16565698263493722996

`round(A004016(3*n)/16)`
-/

namespace A374092.P16565698263493722996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004016 (3 * n) : ℚ) / 16)

end

end A374092.P16565698263493722996

namespace A374092

/-- `round(A004016(3*n)/16)` -/
def P16565698263493722996.Spec : Prop :=
  ∀ n, P16565698263493722996.a n = A374092 n

end A374092

/-! ## A374092.P13233324908408454415

`A001899(A004016(n))`
-/

namespace A374092.P13233324908408454415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A004016 n).toNat

end

end A374092.P13233324908408454415

namespace A374092

/-- `A001899(A004016(n))` -/
def P13233324908408454415.Spec : Prop :=
  ∀ n, P13233324908408454415.a n = A374092 n

end A374092

/-! ## A374092.P5296866078427517522

`A059995(A004016(n)+1)`
-/

namespace A374092.P5296866078427517522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004016 n + 1).toNat

end

end A374092.P5296866078427517522

namespace A374092

/-- `A059995(A004016(n)+1)` -/
def P5296866078427517522.Spec : Prop :=
  ∀ n, P5296866078427517522.a n = A374092 n

end A374092

/-! ## A374092.P3155173166489521740

`A061217(A004016(n)+1)`
-/

namespace A374092.P3155173166489521740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061217 (A004016 n + 1).toNat

end

end A374092.P3155173166489521740

namespace A374092

/-- `A061217(A004016(n)+1)` -/
def P3155173166489521740.Spec : Prop :=
  ∀ n, P3155173166489521740.a n = A374092 n

end A374092

/-! ## A374092.P9133767985973458869

`A117957(A004016(n)+1)`
-/

namespace A374092.P9133767985973458869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117957 (A004016 n + 1).toNat

end

end A374092.P9133767985973458869

namespace A374092

/-- `A117957(A004016(n)+1)` -/
def P9133767985973458869.Spec : Prop :=
  ∀ n, P9133767985973458869.a n = A374092 n

end A374092

/-! ## A374092.P4516081253993954289

`A133501(A004016(n)+1)`
-/

namespace A374092.P4516081253993954289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133501 (A004016 n + 1).toNat

end

end A374092.P4516081253993954289

namespace A374092

/-- `A133501(A004016(n)+1)` -/
def P4516081253993954289.Spec : Prop :=
  ∀ n, P4516081253993954289.a n = A374092 n

end A374092

/-! ## A374092.P14840332349638087911

`A135661(A004016(n)+1)`
-/

namespace A374092.P14840332349638087911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A004016 n + 1).toNat

end

end A374092.P14840332349638087911

namespace A374092

/-- `A135661(A004016(n)+1)` -/
def P14840332349638087911.Spec : Prop :=
  ∀ n, P14840332349638087911.a n = A374092 n

end A374092

/-! ## A374092.P2073514686713455088

`A226135(A004016(n)+1)`
-/

namespace A374092.P2073514686713455088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226135 (A004016 n + 1).toNat

end

end A374092.P2073514686713455088

namespace A374092

/-- `A226135(A004016(n)+1)` -/
def P2073514686713455088.Spec : Prop :=
  ∀ n, P2073514686713455088.a n = A374092 n

end A374092

/-! ## A374092.P10790466111365484315

`A033461(A004016(n)+2)`
-/

namespace A374092.P10790466111365484315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A004016 n + 2).toNat

end

end A374092.P10790466111365484315

namespace A374092

/-- `A033461(A004016(n)+2)` -/
def P10790466111365484315.Spec : Prop :=
  ∀ n, P10790466111365484315.a n = A374092 n

end A374092

/-! ## A374092.P11471053502958223103

`A065718(A004016(n)+3)`
-/

namespace A374092.P11471053502958223103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 (A004016 n + 3).toNat

end

end A374092.P11471053502958223103

namespace A374092

/-- `A065718(A004016(n)+3)` -/
def P11471053502958223103.Spec : Prop :=
  ∀ n, P11471053502958223103.a n = A374092 n

end A374092

/-! ## A374092.P5550982574403605617

`A088534(n)-A195198(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A374092

/-- `A088534(n)-A195198(n)` -/
def P5550982574403605617.Spec : Prop :=
  ∀ n, P5550982574403605617.a n = A374092 n

theorem P5550982574403605617.correct : P5550982574403605617.Spec := by
  intro n
  simp only [A374092]

end A374092

/-! ## A374092.P12039740672345902030

`∑{e}[A004016(n), A246552(#)]`
-/

namespace A374092.P12039740672345902030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A246552 (Nat.factorization (f1 n).natAbs p)

end

end A374092.P12039740672345902030

namespace A374092

/-- `∑{e}[A004016(n), A246552(#)]` -/
def P12039740672345902030.Spec : Prop :=
  ∀ n, P12039740672345902030.a n = A374092 n

end A374092

/-! ## A374092.P9706669189250752808

`A056239(∏{e}[A004016(n), #])`
-/

namespace A374092.P9706669189250752808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A374092.P9706669189250752808

namespace A374092

/-- `A056239(∏{e}[A004016(n), #])` -/
def P9706669189250752808.Spec : Prop :=
  ∀ n, P9706669189250752808.a n = A374092 n

end A374092

/-! ## A374092.P10959207483327768954

`A171411(∏{e}[A004016(n), #])`
-/

namespace A374092.P10959207483327768954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171411 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A374092.P10959207483327768954

namespace A374092

/-- `A171411(∏{e}[A004016(n), #])` -/
def P10959207483327768954.Spec : Prop :=
  ∀ n, P10959207483327768954.a n = A374092 n

end A374092

/-!
# A374093: Number of solutions to n = x^2 + 3*x*y + y^2 with 0 < x < y.

The programs for A374093, the canonical program `A374093.P11725955277954229124` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374093 has offset 0).

The definition of A374093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374093.P12319775094497989451

`C(A374089(n), 2)`
-/

namespace A374093.P12319775094497989451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A374089 n).toNat 2

end

end A374093.P12319775094497989451

namespace A374093

/-- `C(A374089(n), 2)` -/
def P12319775094497989451.Spec : Prop :=
  ∀ n, (P12319775094497989451.a n : ℤ) = A374093 n

end A374093

/-! ## A374093.P4418195601350102529

`char[eq[2, 2-a(A035187(n))]]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=3`
-/

namespace A374093.P4418195601350102529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 3] fun n f3 =>
  2 - f3 (A035187 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A374093.P4418195601350102529

namespace A374093

/-- `char[eq[2, 2-a(A035187(n))]]` -/
def P4418195601350102529.Spec : Prop :=
  ∀ n, (P4418195601350102529.a n : ℤ) = A374093 n

end A374093

/-! ## A374093.P11725955277954229124

`C(A035187(A008574(n)), 2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A374093

/-- `C(A035187(A008574(n)), 2)` -/
def P11725955277954229124.Spec : Prop :=
  ∀ n, (P11725955277954229124.a n : ℤ) = A374093 n

theorem P11725955277954229124.correct : P11725955277954229124.Spec := by
  intro n
  simp only [A374093]

end A374093

/-! ## A374093.P6058798484377254409

`C(A035187(A028310(n)), 2)`
-/

namespace A374093.P6058798484377254409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035187 (A028310 n).toNat).toNat 2

end

end A374093.P6058798484377254409

namespace A374093

/-- `C(A035187(A028310(n)), 2)` -/
def P6058798484377254409.Spec : Prop :=
  ∀ n, (P6058798484377254409.a n : ℤ) = A374093 n

end A374093

/-! ## A374093.P17739049107619161425

`A374276(n)-A214284(n)`
-/

namespace A374093.P17739049107619161425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374276 n - A214284 n

end

end A374093.P17739049107619161425

namespace A374093

/-- `A374276(n)-A214284(n)` -/
def P17739049107619161425.Spec : Prop :=
  ∀ n, P17739049107619161425.a n = A374093 n

theorem P17739049107619161425.correct : P17739049107619161425.Spec := by
  intro n
  simp only [A374093, Nat.add_sub_cancel, A374093.P17739049107619161425.a, A374093.P11725955277954229124.a, A008574, A008574.P1300280032690682112.a, A035187, A035187.P4441846657332739051.a, A214284, A214284.P5212717974546388228.a, A374276, A374276.P15801528438707414755.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A001899, A001899.P11284131779432279770.f1, A001899.P11284131779432279770.a, A028310, A028310.P18130301328277559831.a, A373335, A373335.P16851351623866250956.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A079998, A079998.P5984370107414098605.a, A047412, A047412.P4762915060399373107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A374093

/-! ## A374093.P9805054960476629838

`C(A035187(A022144(2*n)), 2)`
-/

namespace A374093.P9805054960476629838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035187 (A022144 (2 * n)).toNat).toNat 2

end

end A374093.P9805054960476629838

namespace A374093

/-- `C(A035187(A022144(2*n)), 2)` -/
def P9805054960476629838.Spec : Prop :=
  ∀ n, (P9805054960476629838.a n : ℤ) = A374093 n

end A374093

/-! ## A374093.P8955419282799533321

`C(A035187(A008486(3*n)), 2)`
-/

namespace A374093.P8955419282799533321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035187 (A008486 (3 * n)).toNat).toNat 2

end

end A374093.P8955419282799533321

namespace A374093

/-- `C(A035187(A008486(3*n)), 2)` -/
def P8955419282799533321.Spec : Prop :=
  ∀ n, (P8955419282799533321.a n : ℤ) = A374093 n

end A374093

/-! ## A374093.P13225504537725394198

`∑{e}[A374089(n)+A049084(2*(n+1)), 2-#]`
-/

namespace A374093.P13225504537725394198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374089 n + A049084 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A374093.P13225504537725394198

namespace A374093

/-- `∑{e}[A374089(n)+A049084(2*(n+1)), 2-#]` -/
def P13225504537725394198.Spec : Prop :=
  ∀ n, P13225504537725394198.a n = A374093 n

end A374093

/-! ## A374093.P4525714132906340887

`A063725(A374089(n)+A049084(2*(n+1)))`
-/

namespace A374093.P4525714132906340887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A374089 n + A049084 (2 * (n + 1))).toNat

end

end A374093.P4525714132906340887

namespace A374093

/-- `A063725(A374089(n)+A049084(2*(n+1)))` -/
def P4525714132906340887.Spec : Prop :=
  ∀ n, P4525714132906340887.a n = A374093 n

end A374093

/-! ## A374093.P12425384383254326615

`A374100(n*A374276(n))`
-/

namespace A374093.P12425384383254326615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374100 ((n : ℤ) * A374276 n).toNat

end

end A374093.P12425384383254326615

namespace A374093

/-- `A374100(n*A374276(n))` -/
def P12425384383254326615.Spec : Prop :=
  ∀ n, P12425384383254326615.a n = A374093 n

end A374093

/-!
# A374094: a(n) is the smallest nonnegative integer k where there are exactly n solutions to x^2 + x*y + y^2 = k with 0 < x < y.

The programs for A374094, there is no canonical definition to state claims against.
-/

/-! ## A374094.P9516233393252196987

`A374090(2*n)`
-/

namespace A374094.P9516233393252196987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374090 (2 * n)

end

end A374094.P9516233393252196987

/-! ## A374094.P2365540031336685716

`A374090(A005843(n))^A175782(n)`
-/

namespace A374094.P2365540031336685716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374090 (A005843 n).toNat : ℚ) ^ (A175782 n : ℤ)

end

end A374094.P2365540031336685716

/-! ## A374094.P4378306638877099746

`A374090(A005843(n))%A077246(n)`
-/

namespace A374094.P4378306638877099746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374090 (A005843 n).toNat) (A077246 n)

end

end A374094.P4378306638877099746

/-!
# A374095: a(n) is the smallest nonnegative integer k where there are exactly n solutions to x^2 + 3*x*y + y^2 = k with 0 < x < y.

The programs for A374095, there is no canonical definition to state claims against.
-/

/-! ## A374095.P14609681566530869768

`A374091(2*n)`
-/

namespace A374095.P14609681566530869768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374091 (2 * n)

end

end A374095.P14609681566530869768

/-! ## A374095.P14403155430356139837

`record[A374091(A366531(n+1))]`
-/

namespace A374095.P14403155430356139837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374091 (A366531 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374095.P14403155430356139837

/-!
# A374096: Number of edge covers of fan graph F_{1,n}.

The programs for A374096, the canonical program `A374096.P7248213782110803812` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374096 has offset 1).

The definition of A374096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374096.P5689058488422062876

`A007483(n)-A212804(n+1)`
-/

namespace A374096.P5689058488422062876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 n - A212804 (n + 1)

end

end A374096.P5689058488422062876

namespace A374096

/-- `A007483(n)-A212804(n+1)` -/
def P5689058488422062876.Spec : Prop :=
  ∀ n, P5689058488422062876.a n = A374096 (n + 1)

end A374096

/-! ## A374096.P7248213782110803812

`4*a(n-1)-5*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=59`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374096

/-- `4*a(n-1)-5*a(n-3)-2*a(n-4)` -/
def P7248213782110803812.Spec : Prop :=
  ∀ n, P7248213782110803812.a n = A374096 (n + 1)

theorem P7248213782110803812.correct : P7248213782110803812.Spec := by
  intro n
  simp only [A374096, Nat.add_sub_cancel]

end A374096

/-! ## A374096.P12812761118061387624

`ogf(1/(1-4x+5x^3+2x^4))`
-/

namespace A374096.P12812761118061387624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 0, 5, 2] n

end

end A374096.P12812761118061387624

namespace A374096

/-- `ogf(1/(1-4x+5x^3+2x^4))` -/
def P12812761118061387624.Spec : Prop :=
  ∀ n, P12812761118061387624.a n = A374096 (n + 1)

end A374096

/-! ## A374096.P6908816816400246028

`A007483(n)-A000045(n)`
-/

namespace A374096.P6908816816400246028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 n - A000045 n

end

end A374096.P6908816816400246028

namespace A374096

/-- `A007483(n)-A000045(n)` -/
def P6908816816400246028.Spec : Prop :=
  ∀ n, P6908816816400246028.a n = A374096 (n + 1)

end A374096

/-! ## A374096.P5410873227694797727

`A007483(n)-A103609(2*n)`
-/

namespace A374096.P5410873227694797727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 n - A103609 (2 * n)

end

end A374096.P5410873227694797727

namespace A374096

/-- `A007483(n)-A103609(2*n)` -/
def P5410873227694797727.Spec : Prop :=
  ∀ n, P5410873227694797727.a n = A374096 (n + 1)

end A374096

/-! ## A374096.P2037665585106186657

`A007483(n)-Δ[A000071(n+1)]`
-/

namespace A374096.P2037665585106186657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 n - (f1 (n + 1) - f1 n)

end

end A374096.P2037665585106186657

namespace A374096

/-- `A007483(n)-Δ[A000071(n+1)]` -/
def P2037665585106186657.Spec : Prop :=
  ∀ n, P2037665585106186657.a n = A374096 (n + 1)

end A374096

/-!
# A374097: a(n) = A196563(n)*A196564(n).

The programs for A374097, the canonical program `A374097.P1036587398955420288` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374097 has offset 0).

The definition of A374097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374097.P1036587398955420288

`A196563(n)*A196564(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A374097

/-- `A196563(n)*A196564(n)` -/
def P1036587398955420288.Spec : Prop :=
  ∀ n, P1036587398955420288.a n = A374097 n

theorem P1036587398955420288.correct : P1036587398955420288.Spec := by
  intro n
  simp only [A374097]

end A374097

/-! ## A374097.P8870726138118021798

`∑{digits}[n, log2(gcd(2, #))]*∑{digits}[n, #%2]`
-/

namespace A374097.P8870726138118021798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.logb 2 (Nat.gcd 2 x : ℝ)).sum * ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % 2).sum : ℕ) : ℝ)

end

end A374097.P8870726138118021798

namespace A374097

/-- `∑{digits}[n, log2(gcd(2, #))]*∑{digits}[n, #%2]` -/
def P8870726138118021798.Spec : Prop :=
  ∀ n, P8870726138118021798.a n = (A374097 n : ℝ)

end A374097

/-! ## A374097.P6207300712661420282

`A171797(n)%5*∑{digits}[n, log2(gcd(2, #))]`
-/

namespace A374097.P6207300712661420282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A171797 n) 5 : ℝ) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.logb 2 (Nat.gcd 2 x : ℝ)).sum

end

end A374097.P6207300712661420282

namespace A374097

/-- `A171797(n)%5*∑{digits}[n, log2(gcd(2, #))]` -/
def P6207300712661420282.Spec : Prop :=
  ∀ n, P6207300712661420282.a n = (A374097 n : ℝ)

end A374097

/-! ## A374097.P9097284477767959701

`A196564(A061601(n))*A196564(n)`
-/

namespace A374097.P9097284477767959701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A061601 n).toNat * A196564 n

end

end A374097.P9097284477767959701

namespace A374097

/-- `A196564(A061601(n))*A196564(n)` -/
def P9097284477767959701.Spec : Prop :=
  ∀ n, P9097284477767959701.a n = A374097 n

end A374097

/-! ## A374097.P6846584221927135583

`(A055642(n)-A196563(n))*A196563(n)`
-/

namespace A374097.P6846584221927135583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055642 n - A196563 n) * A196563 n

end

end A374097.P6846584221927135583

namespace A374097

/-- `(A055642(n)-A196563(n))*A196563(n)` -/
def P6846584221927135583.Spec : Prop :=
  ∀ n, P6846584221927135583.a n = A374097 n

theorem P6846584221927135583.correct : P6846584221927135583.Spec := by
  intro n
  simp only [A374097, Nat.add_sub_cancel, A374097.P6846584221927135583.a, A374097.P1036587398955420288.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374097

/-! ## A374097.P7388413316544813058

`A196563(n)*A196563(A355504(n))`
-/

namespace A374097.P7388413316544813058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n * A196563 (A355504 n).toNat

end

end A374097.P7388413316544813058

namespace A374097

/-- `A196563(n)*A196563(A355504(n))` -/
def P7388413316544813058.Spec : Prop :=
  ∀ n, P7388413316544813058.a n = A374097 n

end A374097

/-! ## A374097.P5727848204117911264

`A007418(n)%A371384(n)`
-/

namespace A374097.P5727848204117911264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007418 n) (A371384 n)

end

end A374097.P5727848204117911264

namespace A374097

/-- `A007418(n)%A371384(n)` -/
def P5727848204117911264.Spec : Prop :=
  ∀ n, P5727848204117911264.a n = A374097 n

end A374097

/-! ## A374097.P7614740740039046728

`A088357(n)%A371384(n)`
-/

namespace A374097.P7614740740039046728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088357 n) (A371384 n)

end

end A374097.P7614740740039046728

namespace A374097

/-- `A088357(n)%A371384(n)` -/
def P7614740740039046728.Spec : Prop :=
  ∀ n, P7614740740039046728.a n = A374097 n

end A374097

/-! ## A374097.P8320559850244707199

`A371384(n)-A084608(n²)`
-/

namespace A374097.P8320559850244707199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 n - A084608 (n ^ 2)

end

end A374097.P8320559850244707199

namespace A374097

/-- `A371384(n)-A084608(n²)` -/
def P8320559850244707199.Spec : Prop :=
  ∀ n, P8320559850244707199.a n = A374097 n

end A374097

/-! ## A374097.P10891526646215187508

`((A273005(n)-A007953(n))*A053392(n))%A055642(n)`
-/

namespace A374097.P10891526646215187508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A273005 n - A007953 n) * A053392 n) (A055642 n)

end

end A374097.P10891526646215187508

namespace A374097

/-- `((A273005(n)-A007953(n))*A053392(n))%A055642(n)` -/
def P10891526646215187508.Spec : Prop :=
  ∀ n, P10891526646215187508.a n = A374097 n

end A374097

/-!
# A374098: a(n) = A112387(n)^2.

The programs for A374098, the canonical program `A374098.P6447697488558684965` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374098 has offset 0).

The definition of A374098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374098.P6447697488558684965

`A112387(n)²`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A374098

/-- `A112387(n)²` -/
def P6447697488558684965.Spec : Prop :=
  ∀ n, P6447697488558684965.a n = A374098 n

theorem P6447697488558684965.correct : P6447697488558684965.Spec := by
  intro n
  simp only [A374098]

end A374098

/-! ## A374098.P14953932760528131428

`A374927(xor(1, n))`
-/

namespace A374098.P14953932760528131428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374927 (Nat.xor 1 n)

end

end A374098.P14953932760528131428

namespace A374098

/-- `A374927(xor(1, n))` -/
def P14953932760528131428.Spec : Prop :=
  ∀ n, P14953932760528131428.a n = A374098 n

end A374098

/-! ## A374098.P16072778686175660314

`A135318(xor(1, n))²`
-/

namespace A374098.P16072778686175660314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (Nat.xor 1 n) ^ 2

end

end A374098.P16072778686175660314

namespace A374098

/-- `A135318(xor(1, n))²` -/
def P16072778686175660314.Spec : Prop :=
  ∀ n, P16072778686175660314.a n = A374098 n

end A374098

/-! ## A374098.P1833284079805772580

`Δ[A112447(n+1)/2]²`
-/

namespace A374098.P1833284079805772580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112447 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A374098.P1833284079805772580

namespace A374098

/-- `Δ[A112447(n+1)/2]²` -/
def P1833284079805772580.Spec : Prop :=
  ∀ n, P1833284079805772580.a n = (A374098 n : ℚ)

end A374098

/-! ## A374098.P12043910243247408992

`A374927(A004442(n))`
-/

namespace A374098.P12043910243247408992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374927 (A004442 n).toNat

end

end A374098.P12043910243247408992

namespace A374098

/-- `A374927(A004442(n))` -/
def P12043910243247408992.Spec : Prop :=
  ∀ n, P12043910243247408992.a n = A374098 n

end A374098

/-! ## A374098.P11129757502472396177

`A135318(A033999(n)+n)²`
-/

namespace A374098.P11129757502472396177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A033999 n + (n : ℤ)).toNat ^ 2

end

end A374098.P11129757502472396177

namespace A374098

/-- `A135318(A033999(n)+n)²` -/
def P11129757502472396177.Spec : Prop :=
  ∀ n, P11129757502472396177.a n = A374098 n

theorem P11129757502472396177.correct : P11129757502472396177.Spec := by
  intro n
  simp only [A374098, Nat.add_sub_cancel, A374098.P11129757502472396177.a, A374098.P6447697488558684965.a, A033999, A033999.P17703899380244199787.a, A112387, A112387.P10587408961557432993.a, A135318, A135318.P10650517794508722738.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374098

/-! ## A374098.P17457424264277927656

`and(A112447(n), A285828(n))²`
-/

namespace A374098.P17457424264277927656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A285828 n) ^ 2

end

end A374098.P17457424264277927656

namespace A374098

/-- `and(A112447(n), A285828(n))²` -/
def P17457424264277927656.Spec : Prop :=
  ∀ n, P17457424264277927656.a n = A374098 n

end A374098

/-! ## A374098.P11002888040526161543

`A374927(A056594(2*n)+n)`
-/

namespace A374098.P11002888040526161543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374927 (A056594 (2 * n) + (n : ℤ)).toNat

end

end A374098.P11002888040526161543

namespace A374098

/-- `A374927(A056594(2*n)+n)` -/
def P11002888040526161543.Spec : Prop :=
  ∀ n, P11002888040526161543.a n = A374098 n

end A374098

/-! ## A374098.P6569249805867885829

`and(A112447(n), A285559(n))²`
-/

namespace A374098.P6569249805867885829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A285559 n) ^ 2

end

end A374098.P6569249805867885829

namespace A374098

/-- `and(A112447(n), A285559(n))²` -/
def P6569249805867885829.Spec : Prop :=
  ∀ n, P6569249805867885829.a n = A374098 n

end A374098

/-! ## A374098.P2692533381887518750

`and(A112447(n), A285835(n))²`
-/

namespace A374098.P2692533381887518750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A285835 n) ^ 2

end

end A374098.P2692533381887518750

namespace A374098

/-- `and(A112447(n), A285835(n))²` -/
def P2692533381887518750.Spec : Prop :=
  ∀ n, P2692533381887518750.a n = A374098 n

end A374098

/-! ## A374098.P18123553254332486816

`and(A112447(n), A285840(n))²`
-/

namespace A374098.P18123553254332486816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A285840 n) ^ 2

end

end A374098.P18123553254332486816

namespace A374098

/-- `and(A112447(n), A285840(n))²` -/
def P18123553254332486816.Spec : Prop :=
  ∀ n, P18123553254332486816.a n = A374098 n

end A374098

/-! ## A374098.P2831021853621764958

`and(A112447(n), A285844(n))²`
-/

namespace A374098.P2831021853621764958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112447 n) (A285844 n) ^ 2

end

end A374098.P2831021853621764958

namespace A374098

/-- `and(A112447(n), A285844(n))²` -/
def P2831021853621764958.Spec : Prop :=
  ∀ n, P2831021853621764958.a n = A374098 n

end A374098

/-!
# A374099: Number of solutions to n^2 = x^2 + x*y + y^2 with 0 < x < y.

The programs for A374099, the canonical program `A374099.P14562873253265136696` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374099 has offset 0).

The definition of A374099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374099.P14562873253265136696

`A088534(n²)-1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A374099

/-- `A088534(n²)-1` -/
def P14562873253265136696.Spec : Prop :=
  ∀ n, P14562873253265136696.a n = A374099 n

theorem P14562873253265136696.correct : P14562873253265136696.Spec := by
  intro n
  simp only [A374099]

end A374099

/-! ## A374099.P17447665624343936300

`A374088(n²)/2`
-/

namespace A374099.P17447665624343936300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374088 (n ^ 2) : ℚ) / 2

end

end A374099.P17447665624343936300

namespace A374099

/-- `A374088(n²)/2` -/
def P17447665624343936300.Spec : Prop :=
  ∀ n, P17447665624343936300.a n = (A374099 n : ℚ)

end A374099

/-! ## A374099.P9764233612629237945

`floor(2*A004016(n²)/25)`
-/

namespace A374099.P9764233612629237945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A004016 (n ^ 2) : ℚ) / 25)⌋

end

end A374099.P9764233612629237945

namespace A374099

/-- `floor(2*A004016(n²)/25)` -/
def P9764233612629237945.Spec : Prop :=
  ∀ n, P9764233612629237945.a n = A374099 n

end A374099

/-! ## A374099.P16495408995350771394

`A092573(A191871(n))`
-/

namespace A374099.P16495408995350771394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 (A191871 n).toNat

end

end A374099.P16495408995350771394

namespace A374099

/-- `A092573(A191871(n))` -/
def P16495408995350771394.Spec : Prop :=
  ∀ n, P16495408995350771394.a n = A374099 n

end A374099

/-! ## A374099.P15459122274242149996

`A387908(A093411(n))`
-/

namespace A374099.P15459122274242149996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 (A093411 n).toNat

end

end A374099.P15459122274242149996

namespace A374099

/-- `A387908(A093411(n))` -/
def P15459122274242149996.Spec : Prop :=
  ∀ n, P15459122274242149996.a n = A374099 n

end A374099

/-! ## A374099.P10903188675196384377

`A064458(A004016(n²))`
-/

namespace A374099.P10903188675196384377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A004016 (n ^ 2)).toNat

end

end A374099.P10903188675196384377

namespace A374099

/-- `A064458(A004016(n²))` -/
def P10903188675196384377.Spec : Prop :=
  ∀ n, P10903188675196384377.a n = A374099 n

end A374099

/-! ## A374099.P1090710189963543634

`A237050(A004016(n²)+1)`
-/

namespace A374099.P1090710189963543634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237050 (A004016 (n ^ 2) + 1).toNat

end

end A374099.P1090710189963543634

namespace A374099

/-- `A237050(A004016(n²)+1)` -/
def P1090710189963543634.Spec : Prop :=
  ∀ n, P1090710189963543634.a n = A374099 n

end A374099

/-! ## A374099.P4772863492039778251

`A387908(A109375(n))`
-/

namespace A374099.P4772863492039778251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 (A109375 n).toNat

end

end A374099.P4772863492039778251

namespace A374099

/-- `A387908(A109375(n))` -/
def P4772863492039778251.Spec : Prop :=
  ∀ n, P4772863492039778251.a n = A374099 n

end A374099

/-! ## A374099.P3135078998530578646

`A126611(n+1)%A088534(n²)`
-/

namespace A374099.P3135078998530578646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126611 (n + 1)) (A088534 (n ^ 2))

end

end A374099.P3135078998530578646

namespace A374099

/-- `A126611(n+1)%A088534(n²)` -/
def P3135078998530578646.Spec : Prop :=
  ∀ n, P3135078998530578646.a n = A374099 n

end A374099

/-! ## A374099.P14820556451453999564

`A381801(A113973(2*n²))`
-/

namespace A374099.P14820556451453999564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381801 (A113973 (2 * n ^ 2)).toNat

end

end A374099.P14820556451453999564

namespace A374099

/-- `A381801(A113973(2*n²))` -/
def P14820556451453999564.Spec : Prop :=
  ∀ n, P14820556451453999564.a n = A374099 n

end A374099

