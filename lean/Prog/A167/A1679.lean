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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A167900: Number of reduced words of length n in Coxeter group on 9 generators S_i with relations (S_i)^2 = (S_i S_j)^16 = I.

The programs for A167900, there is no canonical definition to state claims against.
-/

/-! ## A167900.P8330803061093685986

`floor(9*8^(n-1))-A344834(A090318(n+1))`
-/

namespace A167900.P8330803061093685986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A344834 (A090318 (n + 1)).toNat

end

end A167900.P8330803061093685986

/-!
# A167901: A075380(A075380(n)).

The programs for A167901, there is no canonical definition to state claims against.
-/

/-! ## A167901.P814279791273815349

`A075380(A075380(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167901.P814279791273815349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075380 (A075380 (n + 1)).toNat

end

end A167901.P814279791273815349

/-!
# A167903: A075380(n) + A075380(n+1).

The programs for A167903, there is no canonical definition to state claims against.
-/

/-! ## A167903.P3496419859485026860

`A075380(n+1)+A075380(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167903.P3496419859485026860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075380 (n + 1) + A075380 (n + 2)

end

end A167903.P3496419859485026860

/-! ## A167903.P6055145148994732117

`A167902(A167901(n+1))+A167902(A167901(n+2))`
-/

namespace A167903.P6055145148994732117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167902 (A167901 (n + 1)).toNat + A167902 (A167901 (n + 2)).toNat

end

end A167903.P6055145148994732117

/-!
# A167904: A121878(A121878(n)).

The programs for A167904, there is no canonical definition to state claims against.
-/

/-! ## A167904.P1358809834234919404

`A121878(A121878(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167904.P1358809834234919404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121878 (A121878 (n + 1)).toNat

end

end A167904.P1358809834234919404

/-!
# A167905: Inverse integer permutation to A121878.

The programs for A167905, there is no canonical definition to state claims against.
-/

/-! ## A167905.P7293155544131641024

`char[12]+A007302(A288053(n))+n`
-/

namespace A167905.P7293155544131641024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A007302 (A288053 n).toNat + (n : ℤ))

end

end A167905.P7293155544131641024

/-! ## A167905.P7424526028728516566

`A121878(n+1)+A044939(A333476(n))`
-/

namespace A167905.P7424526028728516566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121878 (n + 1) + A044939 (A333476 n).toNat

end

end A167905.P7424526028728516566

/-! ## A167905.P5984941872409849216

`A157687(A144443(n+5))+A121878(n+1)`
-/

namespace A167905.P5984941872409849216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157687 (A144443 (n + 5)).toNat + A121878 (n + 1)

end

end A167905.P5984941872409849216

/-! ## A167905.P6732800364206696964

`A121878(n+1)+A025466(A241690(2*(n+1)))`
-/

namespace A167905.P6732800364206696964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121878 (n + 1) + A025466 (A241690 (2 * (n + 1))).toNat

end

end A167905.P6732800364206696964

/-!
# A167906: Fixed points of permutations A121878, A167904, A167905.

The programs for A167906, there is no canonical definition to state claims against.
-/

/-! ## A167906.P7235093450696942773

`eq[n, A121878(abs(1-n)+1)]`
-/

namespace A167906.P7235093450696942773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121878 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167906.P7235093450696942773

/-! ## A167906.P9236157022056060918

`record[gcd(n+1, A121878(n+1))]`
-/

namespace A167906.P9236157022056060918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A121878 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167906.P9236157022056060918

/-! ## A167906.P2248910337740701186

`record[gcd(A121878(n+1), A131738(n))]`
-/

namespace A167906.P2248910337740701186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121878 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167906.P2248910337740701186

/-! ## A167906.P288632606818140910

`A121878(eq[n+1, A121878(n+1)]+1)`
-/

namespace A167906.P288632606818140910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A167906.P288632606818140910

/-! ## A167906.P2354591851465488621

`eq[n+1, A167905(n+1)]+1`
-/

namespace A167906.P2354591851465488621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A167906.P2354591851465488621

/-!
# A167907: A121878(n) + A121878(n+1).

The programs for A167907, there is no canonical definition to state claims against.
-/

/-! ## A167907.P3912691304961444482

`A121878(n+1)+A121878(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167907.P3912691304961444482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121878 (n + 1) + A121878 (n + 2)

end

end A167907.P3912691304961444482

/-! ## A167907.P17877695885359791685

`A167905(A167904(n+1))+A167905(A167904(n+2))`
-/

namespace A167907.P17877695885359791685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167905 (A167904 (n + 1)).toNat + A167905 (A167904 (n + 2)).toNat

end

end A167907.P17877695885359791685

/-!
# A167909: Differences between consecutive single (or isolated) numbers A167706.

The programs for A167909, there is no canonical definition to state claims against.
-/

/-! ## A167909.P6525155710217124315

`Δ[A167706(n+1)]`
-/

namespace A167909.P6525155710217124315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167909.P6525155710217124315

/-! ## A167909.P5489129345689350562

`abs(Δ[A167706(-xor(n, -1))])`
-/

namespace A167909.P5489129345689350562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A167909.P5489129345689350562

/-! ## A167909.P7368716721989008528

`Δ[record[A167706(A137734(n))]]`
-/

namespace A167909.P7368716721989008528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167909.P7368716721989008528

/-! ## A167909.P16135073571808718010

`Δ[record[A167706(A344180(n))]]`
-/

namespace A167909.P16135073571808718010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167909.P16135073571808718010

/-! ## A167909.P16809566353388184643

`abs(Δ[A167706(A008619(2*n))])`
-/

namespace A167909.P16809566353388184643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A167909.P16809566353388184643

/-! ## A167909.P7415198211806384616

`A167706(n+2)-A167706(n+1)`
-/

namespace A167909.P7415198211806384616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 2) - A167706 (n + 1)

end

end A167909.P7415198211806384616

/-! ## A167909.P9685990975746037989

`Δ[A167706(-xor(n, -1))%A085900(n)]`
-/

namespace A167909.P9685990975746037989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167706 (-Int.xor (n : ℤ) (-1)).toNat) (A085900 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167909.P9685990975746037989

/-! ## A167909.P2785122798522502138

`Δ[A168343(n+1)]+1`
-/

namespace A167909.P2785122798522502138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A167909.P2785122798522502138

/-! ## A167909.P17568944427031598925

`A167911(n+1)+A167886(n+2)-A167886(n+1)`
-/

namespace A167909.P17568944427031598925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (n + 1) + (A167886 (n + 2) - A167886 (n + 1))

end

end A167909.P17568944427031598925

/-! ## A167909.P12034593631451947911

`Δ[A167921(n+1)]`
-/

namespace A167909.P12034593631451947911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167909.P12034593631451947911

/-!
# A167910: a(n) = (4*3^n - 5*2^n + (-2)^n)/20.

The programs for A167910, the canonical program `A167910.P1736445513397883246` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167910 has offset 0).

The definition of A167910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*3^n-5*2^n+(-2)^n)/20` (program `A167910.P1994386017248168589`, by `A167910.P1994386017248168589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167910.P1736445513397883246

`3*a(n-1)+4*a(n-2)-12*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167910

/-- `3*a(n-1)+4*a(n-2)-12*a(n-3)` -/
def P1736445513397883246.Spec : Prop :=
  ∀ n, P1736445513397883246.a n = A167910 n

theorem P1736445513397883246.correct : P1736445513397883246.Spec := by
  intro n
  simp only [A167910]

end A167910

/-! ## A167910.P1994386017248168589

`(4*3^n-5*2^n+(-2)^n)/20`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167910.P1994386017248168589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 3 ^ n : ℤ) - (5 * 2 ^ n : ℤ) + (-2) ^ n : ℚ) / 20

end

end A167910.P1994386017248168589

namespace A167910

/-- `(4*3^n-5*2^n+(-2)^n)/20` -/
def P1994386017248168589.Spec : Prop :=
  ∀ n, P1994386017248168589.a n = (A167910 n : ℚ)

theorem P1994386017248168589.correct : P1994386017248168589.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A167910, Nat.add_sub_cancel, A167910.P1994386017248168589.a, A167910.P1736445513397883246.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A167910, Nat.add_sub_cancel, A167910.P1994386017248168589.a, A167910.P1736445513397883246.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167910

/-! ## A167910.P14563076056143581280

`A015441(n)-and(A001045(n+1), A001787(n))`
-/

namespace A167910.P14563076056143581280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 n - Int.land (A001045 (n + 1)) (A001787 n)

end

end A167910.P14563076056143581280

namespace A167910

/-- `A015441(n)-and(A001045(n+1), A001787(n))` -/
def P14563076056143581280.Spec : Prop :=
  ∀ n, P14563076056143581280.a n = A167910 n

end A167910

/-! ## A167910.P8700051364134656835

`3^(n-1)-a(n-1)-(a(n-1)+2^(n-1))` with `a(0)=0`
-/

namespace A167910.P8700051364134656835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) - (a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A167910.P8700051364134656835

namespace A167910

/-- `3^(n-1)-a(n-1)-(a(n-1)+2^(n-1))` -/
def P8700051364134656835.Spec : Prop :=
  ∀ n, P8700051364134656835.a n = (A167910 n : ℚ)

end A167910

/-! ## A167910.P3767291962958005629

`A000244(n)%A282563(A008619(n))`
-/

namespace A167910.P3767291962958005629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A282563 (A008619 n).toNat)

end

end A167910.P3767291962958005629

namespace A167910

/-- `A000244(n)%A282563(A008619(n))` -/
def P3767291962958005629.Spec : Prop :=
  ∀ n, P3767291962958005629.a n = A167910 n

end A167910

/-!
# A167911: Differences between consecutive non-single (or nonisolated) numbers A167707.

The programs for A167911, the canonical program `A167911.P1051216520771783321` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167911 has offset 1).

The definition of A167911 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167707, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167911.P1051216520771783321

`A167707(n+2)-A167707(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A167911

/-- `A167707(n+2)-A167707(n+1)` -/
def P1051216520771783321.Spec : Prop :=
  ∀ n, P1051216520771783321.a n = A167911 (n + 1)

theorem P1051216520771783321.correct : P1051216520771783321.Spec := by
  intro n
  simp only [A167911, Nat.add_sub_cancel]

end A167911

/-! ## A167911.P15133300513991587536

`Δ[A167707(n+1)]`
-/

namespace A167911.P15133300513991587536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167911.P15133300513991587536

namespace A167911

/-- `Δ[A167707(n+1)]` -/
def P15133300513991587536.Spec : Prop :=
  ∀ n, P15133300513991587536.a n = A167911 (n + 1)

theorem P15133300513991587536.correct : P15133300513991587536.Spec := by
  intro n
  simp only [A167911, Nat.add_sub_cancel, A167911.P15133300513991587536.f1, A167911.P15133300513991587536.a, A167911.P1051216520771783321.a, SequenceMachineLib.memo_apply]

end A167911

/-! ## A167911.P4146582487575840810

`Δ[comp[A167706(n+1)]]`
-/

namespace A167911.P4146582487575840810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A167911.P4146582487575840810

namespace A167911

/-- `Δ[comp[A167706(n+1)]]` -/
def P4146582487575840810.Spec : Prop :=
  ∀ n, P4146582487575840810.a n = A167911 (n + 1)

end A167911

/-! ## A167911.P5894720765767201609

`char[A168343(n+1)]+1`
-/

namespace A167911.P5894720765767201609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A167911.P5894720765767201609

namespace A167911

/-- `char[A168343(n+1)]+1` -/
def P5894720765767201609.Spec : Prop :=
  ∀ n, (P5894720765767201609.a n : ℤ) = A167911 (n + 1)

end A167911

/-! ## A167911.P10383116963043345595

`Δ[comp[A167921(n+1)+1]]`
-/

namespace A167911.P10383116963043345595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167921 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A167911.P10383116963043345595

namespace A167911

/-- `Δ[comp[A167921(n+1)+1]]` -/
def P10383116963043345595.Spec : Prop :=
  ∀ n, P10383116963043345595.a n = A167911 (n + 1)

end A167911

/-! ## A167911.P369836893712846402

`abs(Δ[A167707(-xor(n, -1))])`
-/

namespace A167911.P369836893712846402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A167911.P369836893712846402

namespace A167911

/-- `abs(Δ[A167707(-xor(n, -1))])` -/
def P369836893712846402.Spec : Prop :=
  ∀ n, P369836893712846402.a n = A167911 (n + 1)

end A167911

/-! ## A167911.P1786704945780822503

`A000005(Δ[A167707(-xor(n, -1))])`
-/

namespace A167911.P1786704945780822503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A167911.P1786704945780822503

namespace A167911

/-- `A000005(Δ[A167707(-xor(n, -1))])` -/
def P1786704945780822503.Spec : Prop :=
  ∀ n, P1786704945780822503.a n = A167911 (n + 1)

end A167911

/-! ## A167911.P15570450092426000542

`A000041(Δ[A167707(-xor(n, -1))])`
-/

namespace A167911.P15570450092426000542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A167911.P15570450092426000542

namespace A167911

/-- `A000041(Δ[A167707(-xor(n, -1))])` -/
def P15570450092426000542.Spec : Prop :=
  ∀ n, P15570450092426000542.a n = A167911 (n + 1)

end A167911

/-! ## A167911.P10014525518966813607

`A014963(Δ[A167707(-xor(n, -1))])`
-/

namespace A167911.P10014525518966813607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A167911.P10014525518966813607

namespace A167911

/-- `A014963(Δ[A167707(-xor(n, -1))])` -/
def P10014525518966813607.Spec : Prop :=
  ∀ n, P10014525518966813607.a n = A167911 (n + 1)

end A167911

/-! ## A167911.P13326153039237017475

`A007318(Δ[A167707(-xor(n, -1))]²)`
-/

namespace A167911.P13326153039237017475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A167911.P13326153039237017475

namespace A167911

/-- `A007318(Δ[A167707(-xor(n, -1))]²)` -/
def P13326153039237017475.Spec : Prop :=
  ∀ n, P13326153039237017475.a n = A167911 (n + 1)

end A167911

/-!
# A167913: Product of the n-th run of identical consecutive values of A166724.

The programs for A167913, there is no canonical definition to state claims against.
-/

/-! ## A167913.P838017108470471583

`n^A167530(n+1)`
-/

namespace A167913.P838017108470471583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A167530 (n + 1) : ℤ)

end

end A167913.P838017108470471583

/-! ## A167913.P3818133679008951719

`n^Δ[lt[p?[A334954(n+1)], 4]]`
-/

namespace A167913.P3818133679008951719
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A167913.P3818133679008951719

/-! ## A167913.P11335953155509561015

`n^A055640(A053134(n))`
-/

namespace A167913.P11335953155509561015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A055640 (A053134 n).toNat : ℤ)

end

end A167913.P11335953155509561015

/-!
# A167915: Primes which are the sums of two consecutive nonprimes (A141468).

The programs for A167915, the canonical program `A167915.P5019087640857283714` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167915 has offset 1).

The definition of A167915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167915.P5019087640857283714

`A060254(n%a(n-1))` with `a(0)=5`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A167915

/-- `A060254(n%a(n-1))` -/
def P5019087640857283714.Spec : Prop :=
  ∀ n, P5019087640857283714.a n = A167915 (n + 1)

theorem P5019087640857283714.correct : P5019087640857283714.Spec := by
  intro n
  simp only [A167915, Nat.add_sub_cancel]

end A167915

/-! ## A167915.P15628201032529987281

`p?[A018252(n+1)+A002808(n+1)]`
-/

namespace A167915.P15628201032529987281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167915.P15628201032529987281

namespace A167915

/-- `p?[A018252(n+1)+A002808(n+1)]` -/
def P15628201032529987281.Spec : Prop :=
  ∀ n, P15628201032529987281.a n = A167915 (n + 1)

end A167915

/-! ## A167915.P4774570108405873397

`p?[A141468(n+1)+A018252(n+1)]`
-/

namespace A167915.P4774570108405873397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167915.P4774570108405873397

namespace A167915

/-- `p?[A141468(n+1)+A018252(n+1)]` -/
def P4774570108405873397.Spec : Prop :=
  ∀ n, P4774570108405873397.a n = A167915 (n + 1)

end A167915

/-! ## A167915.P9009472781070781270

`p?[A166037(n+1)]`
-/

namespace A167915.P9009472781070781270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167915.P9009472781070781270

namespace A167915

/-- `p?[A166037(n+1)]` -/
def P9009472781070781270.Spec : Prop :=
  ∀ n, P9009472781070781270.a n = A167915 (n + 1)

end A167915

/-! ## A167915.P7485508752672778974

`record[A020639(A166037(n+2))]`
-/

namespace A167915.P7485508752672778974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A166037 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167915.P7485508752672778974

namespace A167915

/-- `record[A020639(A166037(n+2))]` -/
def P7485508752672778974.Spec : Prop :=
  ∀ n, P7485508752672778974.a n = A167915 (n + 1)

end A167915

/-! ## A167915.P2079704619517581914

`filter[A166037(n+1), A010051(#)]`
-/

namespace A167915.P2079704619517581914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A167915.P2079704619517581914

namespace A167915

/-- `filter[A166037(n+1), A010051(#)]` -/
def P2079704619517581914.Spec : Prop :=
  ∀ n, P2079704619517581914.a n = A167915 (n + 1)

end A167915

/-! ## A167915.P7735271145969629170

`filter[A166037(n+1), A323153(#)]`
-/

namespace A167915.P7735271145969629170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A167915.P7735271145969629170

namespace A167915

/-- `filter[A166037(n+1), A323153(#)]` -/
def P7735271145969629170.Spec : Prop :=
  ∀ n, P7735271145969629170.a n = A167915 (n + 1)

end A167915

/-! ## A167915.P8583289409728402518

`filter[A166037(n+2), A323152(#)]`
-/

namespace A167915.P8583289409728402518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A167915.P8583289409728402518

namespace A167915

/-- `filter[A166037(n+2), A323152(#)]` -/
def P8583289409728402518.Spec : Prop :=
  ∀ n, P8583289409728402518.a n = A167915 (n + 1)

end A167915

/-! ## A167915.P10327310727752243532

`∩[A000040(n+1), A166037(n+1)]`
-/

namespace A167915.P10327310727752243532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167915.P10327310727752243532

namespace A167915

/-- `∩[A000040(n+1), A166037(n+1)]` -/
def P10327310727752243532.Spec : Prop :=
  ∀ n, (P10327310727752243532.a n : ℤ) = A167915 (n + 1)

end A167915

/-! ## A167915.P9005049991388290109

`∩[A045344(n+1), A166037(n+1)]`
-/

namespace A167915.P9005049991388290109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167915.P9005049991388290109

namespace A167915

/-- `∩[A045344(n+1), A166037(n+1)]` -/
def P9005049991388290109.Spec : Prop :=
  ∀ n, (P9005049991388290109.a n : ℤ) = A167915 (n + 1)

end A167915

/-! ## A167915.P12370444079341937820

`∩[A053813(n+1), A166037(n+1)]`
-/

namespace A167915.P12370444079341937820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167915.P12370444079341937820

namespace A167915

/-- `∩[A053813(n+1), A166037(n+1)]` -/
def P12370444079341937820.Spec : Prop :=
  ∀ n, (P12370444079341937820.a n : ℤ) = A167915 (n + 1)

end A167915

/-! ## A167915.P17331483226006634084

`∩[A065091(n+1), A166037(n+1)]`
-/

namespace A167915.P17331483226006634084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167915.P17331483226006634084

namespace A167915

/-- `∩[A065091(n+1), A166037(n+1)]` -/
def P17331483226006634084.Spec : Prop :=
  ∀ n, (P17331483226006634084.a n : ℤ) = A167915 (n + 1)

end A167915

/-! ## A167915.P10292234974541317562

`∩[A066191(n+1), A166037(n+1)]`
-/

namespace A167915.P10292234974541317562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167915.P10292234974541317562

namespace A167915

/-- `∩[A066191(n+1), A166037(n+1)]` -/
def P10292234974541317562.Spec : Prop :=
  ∀ n, (P10292234974541317562.a n : ℤ) = A167915 (n + 1)

end A167915

/-! ## A167915.P8590438040274970982

`∩[A066542(n+1), A166037(n+1)]`
-/

namespace A167915.P8590438040274970982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167915.P8590438040274970982

namespace A167915

/-- `∩[A066542(n+1), A166037(n+1)]` -/
def P8590438040274970982.Spec : Prop :=
  ∀ n, (P8590438040274970982.a n : ℤ) = A167915 (n + 1)

end A167915

/-! ## A167915.P17439825665621563924

`A006530(5*A176902(n+1))`
-/

namespace A167915.P17439825665621563924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * A176902 (n + 1)).toNat

end

end A167915.P17439825665621563924

namespace A167915

/-- `A006530(5*A176902(n+1))` -/
def P17439825665621563924.Spec : Prop :=
  ∀ n, P17439825665621563924.a n = A167915 (n + 1)

end A167915

/-! ## A167915.P5178025628242144531

`filter[A166037(n+1), A171387(#)]`
-/

namespace A167915.P5178025628242144531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A167915.P5178025628242144531

namespace A167915

/-- `filter[A166037(n+1), A171387(#)]` -/
def P5178025628242144531.Spec : Prop :=
  ∀ n, P5178025628242144531.a n = A167915 (n + 1)

end A167915

/-! ## A167915.P17099150075166476787

`filter[A166037(n+2), A080339(#)]`
-/

namespace A167915.P17099150075166476787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A167915.P17099150075166476787

namespace A167915

/-- `filter[A166037(n+2), A080339(#)]` -/
def P17099150075166476787.Spec : Prop :=
  ∀ n, P17099150075166476787.a n = A167915 (n + 1)

end A167915

/-! ## A167915.P203076978573364979

`filter[A166037(n+2), A080545(#)]`
-/

namespace A167915.P203076978573364979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A167915.P203076978573364979

namespace A167915

/-- `filter[A166037(n+2), A080545(#)]` -/
def P203076978573364979.Spec : Prop :=
  ∀ n, P203076978573364979.a n = A167915 (n + 1)

end A167915

/-! ## A167915.P1099522794889786994

`p?[A166685(n+1)]`
-/

namespace A167915.P1099522794889786994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167915.P1099522794889786994

namespace A167915

/-- `p?[A166685(n+1)]` -/
def P1099522794889786994.Spec : Prop :=
  ∀ n, P1099522794889786994.a n = A167915 (n + 1)

end A167915

/-! ## A167915.P1573565790480940477

`record[A006530(A166685(n+2))]`
-/

namespace A167915.P1573565790480940477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A166685 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167915.P1573565790480940477

namespace A167915

/-- `record[A006530(A166685(n+2))]` -/
def P1573565790480940477.Spec : Prop :=
  ∀ n, P1573565790480940477.a n = A167915 (n + 1)

end A167915

/-!
# A167917: Mersenne primes that belong to Cunningham chains = {3, 7} U {Mp | 2Mp - 1 is prime. (Mp a Mersenne prime)}.

The programs for A167917, there is no canonical definition to state claims against.
-/

/-! ## A167917.P16553090470956092644

`p?[and(2, ∑[n])^n-1]`
-/

namespace A167917.P16553090470956092644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (∑ j ∈ Finset.range (n + 1), f2 j) ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167917.P16553090470956092644

/-!
# A167918: a(n) is smallest index k > n of k-th prime with f(n,k):=(p(k)+p(k+1))/(p(n)+p(n+1)) an integer >=2 (n=1,2,...).

The programs for A167918, there is no canonical definition to state claims against.
-/

/-! ## A167918.P9287726421994571846

`A055679(A283621(n+1))`
-/

namespace A167918.P9287726421994571846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A283621 (n + 1)).toNat

end

end A167918.P9287726421994571846

/-! ## A167918.P2418316247681563111

`A242096(A283621(n+1)+1)`
-/

namespace A167918.P2418316247681563111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (A283621 (n + 1) + 1).toNat

end

end A167918.P2418316247681563111

/-! ## A167918.P1511242736797250629

`A000720(A283621(n+1)/2)`
-/

namespace A167918.P1511242736797250629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A283621 (n + 1) : ℚ) / 2)).toNat

end

end A167918.P1511242736797250629

/-! ## A167918.P8860394194309841612

`A230980(A283621(n+1)/2)`
-/

namespace A167918.P8860394194309841612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.roundAway ((A283621 (n + 1) : ℚ) / 2)).toNat

end

end A167918.P8860394194309841612

/-!
# A167921: Single or isolated numbers-1.

The programs for A167921, there is no canonical definition to state claims against.
-/

/-! ## A167921.P6439605719603853743

`A167706(n+1)-1`
-/

namespace A167921.P6439605719603853743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - 1

end

end A167921.P6439605719603853743

/-! ## A167921.P18079047392872551929

`A168343(n+1)+n`
-/

namespace A167921.P18079047392872551929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168343 (n + 1) + (n : ℤ)

end

end A167921.P18079047392872551929

/-! ## A167921.P16623109490802935868

`A167909(n)+a(n-1)` with `a(0)=1`
-/

namespace A167921.P16623109490802935868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167909 n + a (n - 1)

end

end A167921.P16623109490802935868

/-! ## A167921.P9787537642602308200

`abs(1-A167706(-xor(n, -1)))`
-/

namespace A167921.P9787537642602308200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A167706 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A167921.P9787537642602308200

/-! ## A167921.P1311617905197769220

`∑[A167909(floor(acot(n)+n))]-1`
-/

namespace A167921.P1311617905197769220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167909 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A167921.P1311617905197769220

/-! ## A167921.P14040534080366173920

`∑[A167909(round(acot(n)+n))]-1`
-/

namespace A167921.P14040534080366173920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167909 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A167921.P14040534080366173920

/-! ## A167921.P13876896444601079906

`∑[A167909(abs(1-n)+1)]-1`
-/

namespace A167921.P13876896444601079906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167909 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A167921.P13876896444601079906

/-! ## A167921.P17453996957687166544

`A023443(A167706(n+1))`
-/

namespace A167921.P17453996957687166544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A167706 (n + 1)).toNat

end

end A167921.P17453996957687166544

/-! ## A167921.P14229901546260456260

`record[A167706(A126759(n))-1]`
-/

namespace A167921.P14229901546260456260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167921.P14229901546260456260

/-! ## A167921.P7851010364060102961

`record[A167706(A134478(n))-1]`
-/

namespace A167921.P7851010364060102961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167921.P7851010364060102961

/-!
# A167928: Number of partitions of n that do not contain 1 as a part and whose parts are not the same divisor of n.

The programs for A167928, there is no canonical definition to state claims against.
-/

/-! ## A167928.P16561142935495662445

`A002865(n)-A032741(n)`
-/

namespace A167928.P16561142935495662445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A032741 n

end

end A167928.P16561142935495662445

/-! ## A167928.P303254876341221509

`A085811(n+3)-A032741(n)`
-/

namespace A167928.P303254876341221509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3) - A032741 n

end

end A167928.P303254876341221509

/-! ## A167928.P16906766911794013678

`A002865(n)-A319410(n)/2`
-/

namespace A167928.P16906766911794013678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002865 n : ℚ) - (A319410 n : ℚ) / 2

end

end A167928.P16906766911794013678

/-! ## A167928.P5988922850728510608

`A002865(n)-A059169(A145154(n))`
-/

namespace A167928.P5988922850728510608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A059169 (A145154 n).toNat

end

end A167928.P5988922850728510608

/-! ## A167928.P10770072367492042119

`A002865(n)-A026741(A319410(n))`
-/

namespace A167928.P10770072367492042119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A026741 (A319410 n).toNat

end

end A167928.P10770072367492042119

/-! ## A167928.P13927978886360398167

`A232697(n)-(A057427(n)+A032741(n))`
-/

namespace A167928.P13927978886360398167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n - (A057427 n + A032741 n)

end

end A167928.P13927978886360398167

/-! ## A167928.P12771749973557212432

`A087787(n)-(A182712(n)+A032741(n))`
-/

namespace A167928.P12771749973557212432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n - (A182712 n + A032741 n)

end

end A167928.P12771749973557212432

/-! ## A167928.P3013401228277310914

`A002865(n)+A167934(n)-A000041(n)`
-/

namespace A167928.P3013401228277310914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + (A167934 n - A000041 n)

end

end A167928.P3013401228277310914

/-! ## A167928.P7801969934665760780

`A232697(n)-∑{d}[n, A032741(A214287(#))]`
-/

namespace A167928.P7801969934665760780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n - ∑ d ∈ Nat.divisors (f1 n), A032741 (A214287 d).toNat

end

end A167928.P7801969934665760780

/-! ## A167928.P1100440771683863522

`A284592(A034856(n+1))-A032741(n)`
-/

namespace A167928.P1100440771683863522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284592 (A034856 (n + 1)).toNat - A032741 n

end

end A167928.P1100440771683863522

/-! ## A167928.P18366208396052796043

`A116598(A000217(n))-A032741(n)`
-/

namespace A167928.P18366208396052796043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (A000217 n).toNat - A032741 n

end

end A167928.P18366208396052796043

/-!
# A167930: Number of partitions of n in which some but not all parts are equal.

The programs for A167930, there is no canonical definition to state claims against.
-/

/-! ## A167930.P9350691032167274294

`A047967(n)-A032741(n)`
-/

namespace A167930.P9350691032167274294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - A032741 n

end

end A167930.P9350691032167274294

/-! ## A167930.P5987110785258975833

`A000041(n)-A000009(n)-A032741(n)`
-/

namespace A167930.P5987110785258975833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A000009 n - A032741 n

end

end A167930.P5987110785258975833

/-! ## A167930.P13768468353165401614

`A167934(n)-A000009(n)`
-/

namespace A167930.P13768468353165401614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167934 n - A000009 n

end

end A167930.P13768468353165401614

/-! ## A167930.P3432015150133491903

`A000041(n)-A167932(n)`
-/

namespace A167930.P3432015150133491903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A167932 n

end

end A167930.P3432015150133491903

/-! ## A167930.P5489905256433866780

`A000065(n)+1-A167932(n)`
-/

namespace A167930.P5489905256433866780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A167932 n)

end

end A167930.P5489905256433866780

/-! ## A167930.P10504054704458272129

`A167934(n)-(A111133(n)+1)`
-/

namespace A167930.P10504054704458272129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167934 n - (A111133 n + 1)

end

end A167930.P10504054704458272129

/-! ## A167930.P16175260178074326462

`A047967(n)+1-A000005(A028310(n))`
-/

namespace A167930.P16175260178074326462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + (1 - A000005 (A028310 n).toNat)

end

end A167930.P16175260178074326462

/-! ## A167930.P13412157974414611042

`A000065(n)-(A111133(n)+A032741(n))`
-/

namespace A167930.P13412157974414611042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - (A111133 n + A032741 n)

end

end A167930.P13412157974414611042

/-! ## A167930.P3299097233073482119

`A000009(n)+A047967(n)-A167932(n)`
-/

namespace A167930.P3299097233073482119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A167932 n)

end

end A167930.P3299097233073482119

/-! ## A167930.P4011259570001582317

`A047967(n)+A167934(n)-A000041(n)`
-/

namespace A167930.P4011259570001582317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + (A167934 n - A000041 n)

end

end A167930.P4011259570001582317

/-! ## A167930.P10194198433777522162

`A032741(n)+A167934(n)-A167932(n)`
-/

namespace A167930.P10194198433777522162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + (A167934 n - A167932 n)

end

end A167930.P10194198433777522162

/-! ## A167930.P16050183565105998922

`A035363(2*n)-A167932(n)`
-/

namespace A167930.P16050183565105998922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A167932 n

end

end A167930.P16050183565105998922

/-! ## A167930.P6460605869774224524

`A119620(2*n)-A167932(n)`
-/

namespace A167930.P6460605869774224524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A167932 n

end

end A167930.P6460605869774224524

/-! ## A167930.P10685354001312674927

`sqrt(A001255(n))-A167932(n)`
-/

namespace A167930.P10685354001312674927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A167932 n : ℝ)

end

end A167930.P10685354001312674927

/-!
# A167932: Number of partitions of n such that all parts are equal or all parts are distinct.

The programs for A167932, there is no canonical definition to state claims against.
-/

/-! ## A167932.P7500302972478844211

`A000009(n)+A032741(n)`
-/

namespace A167932.P7500302972478844211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + A032741 n

end

end A167932.P7500302972478844211

/-! ## A167932.P11654736775556505063

`A000041(n)-A167930(n)`
-/

namespace A167932.P11654736775556505063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A167930 n

end

end A167932.P11654736775556505063

/-! ## A167932.P11808338552575867307

`abs(A081360(n))+∏{e}[n, #+1]-1`
-/

namespace A167932.P11808338552575867307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| + (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1)

end

end A167932.P11808338552575867307

/-! ## A167932.P5615816524127566394

`∑{d}[n, (n+1)%#]+∑[A087897(n)]`
-/

namespace A167932.P5615816524127566394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (n + 1) % d : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A167932.P5615816524127566394

/-! ## A167932.P14753009385873871045

`A032741(n)+abs(A081360(n))`
-/

namespace A167932.P14753009385873871045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + |A081360 n|

end

end A167932.P14753009385873871045

/-! ## A167932.P9350962537501328866

`A032741(n)+∑[A087897(n)]`
-/

namespace A167932.P9350962537501328866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167932.P9350962537501328866

/-! ## A167932.P6046866066838720606

`A032741(n)+A111133(n)+1`
-/

namespace A167932.P6046866066838720606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + (A111133 n + 1)

end

end A167932.P6046866066838720606

/-! ## A167932.P5198927991842038939

`A111133(n)+A000005(A028310(n))`
-/

namespace A167932.P5198927991842038939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + A000005 (A028310 n).toNat

end

end A167932.P5198927991842038939

/-! ## A167932.P13825739620719665220

`A000009(n)+A000005(A028310(n))-1`
-/

namespace A167932.P13825739620719665220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A000005 (A028310 n).toNat - 1)

end

end A167932.P13825739620719665220

/-! ## A167932.P9265598274056204693

`A111133(n)+A000005(A004275(n+1)-n)`
-/

namespace A167932.P9265598274056204693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + A000005 (A004275 (n + 1) - (n : ℤ)).toNat

end

end A167932.P9265598274056204693

/-! ## A167932.P2407069427876216950

`A000065(n)+1-A167930(n)`
-/

namespace A167932.P2407069427876216950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A167930 n)

end

end A167932.P2407069427876216950

/-! ## A167932.P14274601200127213377

`A000041(n)-A047967(n)+∏{e}[n, #+1]-1`
-/

namespace A167932.P14274601200127213377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A047967 n + (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1)

end

end A167932.P14274601200127213377

/-! ## A167932.P8050959571905142766

`A000041(n)+A032741(n)-A047967(n)`
-/

namespace A167932.P8050959571905142766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A032741 n - A047967 n)

end

end A167932.P8050959571905142766

/-! ## A167932.P8580860091989027837

`A000009(n)+A000041(n)-A167934(n)`
-/

namespace A167932.P8580860091989027837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A000041 n - A167934 n)

end

end A167932.P8580860091989027837

/-! ## A167932.P12180822009849823790

`A000009(n)+A047967(n)-A167930(n)`
-/

namespace A167932.P12180822009849823790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A167930 n)

end

end A167932.P12180822009849823790

/-! ## A167932.P12195312736723349893

`A032741(n)+A167934(n)-A167930(n)`
-/

namespace A167932.P12195312736723349893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + (A167934 n - A167930 n)

end

end A167932.P12195312736723349893

/-! ## A167932.P15748050777902248916

`A167934(n+1)-(A167930(n)+A167928(n+1))`
-/

namespace A167932.P15748050777902248916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167934 (n + 1) - (A167930 n + A167928 (n + 1))

end

end A167932.P15748050777902248916

/-! ## A167932.P7095454243779768823

`A035457(2*n)+A032741(n)`
-/

namespace A167932.P7095454243779768823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) + A032741 n

end

end A167932.P7095454243779768823

/-! ## A167932.P15476912210224213181

`A264405(∑[n])+A032741(n)`
-/

namespace A167932.P15476912210224213181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (∑ j ∈ Finset.range (n + 1), f1 j) + A032741 n

end

end A167932.P15476912210224213181

/-!
# A167934: a(n) = A000041(n) - A032741(n).

The programs for A167934, there is no canonical definition to state claims against.
-/

/-! ## A167934.P5878088439125686638

`A000041(n)-A032741(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167934.P5878088439125686638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A032741 n

end

end A167934.P5878088439125686638

/-! ## A167934.P9574957761227351841

`∑[A002865(n)]-(∏{e}[n, #+1]-1)`
-/

namespace A167934.P9574957761227351841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1)

end

end A167934.P9574957761227351841

/-! ## A167934.P932888070825940779

`A144300(A028310(n))+1`
-/

namespace A167934.P932888070825940779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144300 (A028310 n).toNat + 1

end

end A167934.P932888070825940779

/-! ## A167934.P7764799793511907994

`A167930(n)+A000009(n)`
-/

namespace A167934.P7764799793511907994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167930 n + A000009 n

end

end A167934.P7764799793511907994

/-! ## A167934.P14289058460851266175

`A338554(n)+A000837(n)`
-/

namespace A167934.P14289058460851266175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338554 n + A000837 n

end

end A167934.P14289058460851266175

/-! ## A167934.P8332738095481449786

`A167930(n)+∑[A087897(n)]`
-/

namespace A167934.P8332738095481449786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167930 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167934.P8332738095481449786

/-! ## A167934.P3806299263908641224

`∑[A002865(n)]-A032741(n)`
-/

namespace A167934.P3806299263908641224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A032741 n

end

end A167934.P3806299263908641224

/-! ## A167934.P5604607604084186425

`A111133(n)+A167930(n)+1`
-/

namespace A167934.P5604607604084186425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (A167930 n + 1)

end

end A167934.P5604607604084186425

/-! ## A167934.P16534372202064387708

`A000065(n)+1-A032741(n)`
-/

namespace A167934.P16534372202064387708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A032741 n)

end

end A167934.P16534372202064387708

/-! ## A167934.P1034573946878187588

`A000041(n)-A059169(A145154(n))`
-/

namespace A167934.P1034573946878187588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A059169 (A145154 n).toNat

end

end A167934.P1034573946878187588

/-! ## A167934.P714279447584880361

`A000065(n)+2-A000005(A028310(n))`
-/

namespace A167934.P714279447584880361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (2 - A000005 (A028310 n).toNat)

end

end A167934.P714279447584880361

/-! ## A167934.P3599234126589736582

`A000009(n)+A047967(n)-A032741(n)`
-/

namespace A167934.P3599234126589736582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A032741 n)

end

end A167934.P3599234126589736582

/-! ## A167934.P14226790573487740591

`A000009(n)+A000041(n)-A167932(n)`
-/

namespace A167934.P14226790573487740591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A000041 n - A167932 n)

end

end A167934.P14226790573487740591

/-! ## A167934.P15183508265842124570

`A000041(n)+A167928(n)-A002865(n)`
-/

namespace A167934.P15183508265842124570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A167928 n - A002865 n)

end

end A167934.P15183508265842124570

/-! ## A167934.P3943210716861334770

`A000041(n)+A167930(n)-A047967(n)`
-/

namespace A167934.P3943210716861334770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A167930 n - A047967 n)

end

end A167934.P3943210716861334770

/-! ## A167934.P6341462604920582282

`A167930(n)+A167932(n)-A032741(n)`
-/

namespace A167934.P6341462604920582282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167930 n + (A167932 n - A032741 n)

end

end A167934.P6341462604920582282

/-! ## A167934.P2190797154146195601

`A168015(n)-(A168014(n)+A032741(n))`
-/

namespace A167934.P2190797154146195601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168015 n - (A168014 n + A032741 n)

end

end A167934.P2190797154146195601

/-! ## A167934.P12486097785789510241

`A000005(n+1)+A000041(n)-A092338(n+1)`
-/

namespace A167934.P12486097785789510241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A000041 n - A092338 (n + 1))

end

end A167934.P12486097785789510241

/-! ## A167934.P2700999663579368309

`A139582(n)/2-A032741(n)`
-/

namespace A167934.P2700999663579368309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A032741 n : ℚ)

end

end A167934.P2700999663579368309

/-! ## A167934.P10530075833837203347

`A035363(2*n)-A032741(n)`
-/

namespace A167934.P10530075833837203347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A032741 n

end

end A167934.P10530075833837203347

/-!
# A167936: a(n) = 2^n - A108411(n).

The programs for A167936, the canonical program `A167936.P10180852110118149804` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167936 has offset 0).

The definition of A167936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167936.P10180852110118149804

`2^n-A108411(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167936

/-- `2^n-A108411(n)` -/
def P10180852110118149804.Spec : Prop :=
  ∀ n, P10180852110118149804.a n = A167936 n

theorem P10180852110118149804.correct : P10180852110118149804.Spec := by
  intro n
  simp only [A167936]

end A167936

/-! ## A167936.P9982056792187130147

`2*a(n-1)+3*a(n-2)-6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A167936.P9982056792187130147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 6 * a (n - 3)

end

end A167936.P9982056792187130147

namespace A167936

/-- `2*a(n-1)+3*a(n-2)-6*a(n-3)` -/
def P9982056792187130147.Spec : Prop :=
  ∀ n, P9982056792187130147.a n = A167936 n

end A167936

/-! ## A167936.P6648165649923689853

`A167762(n+1)-A167762(n)`
-/

namespace A167936.P6648165649923689853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 (n + 1) - A167762 n

end

end A167936.P6648165649923689853

namespace A167936

/-- `A167762(n+1)-A167762(n)` -/
def P6648165649923689853.Spec : Prop :=
  ∀ n, P6648165649923689853.a n = A167936 n

end A167936

/-! ## A167936.P8656329223931063635

`2^n-3^floor(n/2)`
-/

namespace A167936.P8656329223931063635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A167936.P8656329223931063635

namespace A167936

/-- `2^n-3^floor(n/2)` -/
def P8656329223931063635.Spec : Prop :=
  ∀ n, P8656329223931063635.a n = (A167936 n : ℚ)

end A167936

/-! ## A167936.P2338730324354041038

`∑[A167784(abs(1-n))]`
-/

namespace A167936.P2338730324354041038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167784 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167936.P2338730324354041038

namespace A167936

/-- `∑[A167784(abs(1-n))]` -/
def P2338730324354041038.Spec : Prop :=
  ∀ n, P2338730324354041038.a n = A167936 n

end A167936

/-! ## A167936.P4348698897654689207

`xor(A030439(n), A141023(n))`
-/

namespace A167936.P4348698897654689207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030439 n) (A141023 n)

end

end A167936.P4348698897654689207

namespace A167936

/-- `xor(A030439(n), A141023(n))` -/
def P4348698897654689207.Spec : Prop :=
  ∀ n, P4348698897654689207.a n = A167936 n

end A167936

/-! ## A167936.P13513679922143985283

`and(-A108411(n), A000225(n))`
-/

namespace A167936.P13513679922143985283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A108411 n) (A000225 n)

end

end A167936.P13513679922143985283

namespace A167936

/-- `and(-A108411(n), A000225(n))` -/
def P13513679922143985283.Spec : Prop :=
  ∀ n, P13513679922143985283.a n = A167936 n

end A167936

/-! ## A167936.P1168542357920738792

`abs(A024023(A002265(2*n))-A000225(n))`
-/

namespace A167936.P1168542357920738792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024023 (A002265 (2 * n)).toNat - A000225 n|

end

end A167936.P1168542357920738792

namespace A167936

/-- `abs(A024023(A002265(2*n))-A000225(n))` -/
def P1168542357920738792.Spec : Prop :=
  ∀ n, P1168542357920738792.a n = A167936 n

end A167936

/-! ## A167936.P9400223689506909243

`ogf((x-x^2)/(1-2x-3x^2+6x^3))`
-/

namespace A167936.P9400223689506909243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -2, -3, 6] n

end

end A167936.P9400223689506909243

namespace A167936

/-- `ogf((x-x^2)/(1-2x-3x^2+6x^3))` -/
def P9400223689506909243.Spec : Prop :=
  ∀ n, P9400223689506909243.a n = A167936 n

end A167936

/-! ## A167936.P1890586384410021024

`Δ[A167762(n)]`
-/

namespace A167936.P1890586384410021024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167936.P1890586384410021024

namespace A167936

/-- `Δ[A167762(n)]` -/
def P1890586384410021024.Spec : Prop :=
  ∀ n, P1890586384410021024.a n = A167936 n

end A167936

/-! ## A167936.P17650036886148069361

`A366131(n+1)/2`
-/

namespace A167936.P17650036886148069361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366131 (n + 1) : ℚ) / 2

end

end A167936.P17650036886148069361

namespace A167936

/-- `A366131(n+1)/2` -/
def P17650036886148069361.Spec : Prop :=
  ∀ n, P17650036886148069361.a n = (A167936 n : ℚ)

end A167936

/-! ## A167936.P11386404908501983778

`Δ[2^n-A038754(n)]`
-/

namespace A167936.P11386404908501983778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167936.P11386404908501983778

namespace A167936

/-- `Δ[2^n-A038754(n)]` -/
def P11386404908501983778.Spec : Prop :=
  ∀ n, P11386404908501983778.a n = A167936 n

end A167936

/-! ## A167936.P4222276892157111036

`Δ[A365544(n+1)/2]`
-/

namespace A167936.P4222276892157111036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365544 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167936.P4222276892157111036

namespace A167936

/-- `Δ[A365544(n+1)/2]` -/
def P4222276892157111036.Spec : Prop :=
  ∀ n, P4222276892157111036.a n = (A167936 n : ℚ)

end A167936

/-! ## A167936.P13930715372004327333

`A007689(n)%A001444(n)`
-/

namespace A167936.P13930715372004327333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007689 n) (A001444 n)

end

end A167936.P13930715372004327333

namespace A167936

/-- `A007689(n)%A001444(n)` -/
def P13930715372004327333.Spec : Prop :=
  ∀ n, P13930715372004327333.a n = A167936 n

end A167936

/-! ## A167936.P17485571417079820390

`A255442(n)%A027649(n)`
-/

namespace A167936.P17485571417079820390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255442 n) (A027649 n)

end

end A167936.P17485571417079820390

namespace A167936

/-- `A255442(n)%A027649(n)` -/
def P17485571417079820390.Spec : Prop :=
  ∀ n, P17485571417079820390.a n = A167936 n

end A167936

/-! ## A167936.P10066121280251829305

`(A000079(n)²-A176710(n))/A000079(n)`
-/

namespace A167936.P10066121280251829305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 - A176710 n : ℚ) / (A000079 n : ℚ)

end

end A167936.P10066121280251829305

namespace A167936

/-- `(A000079(n)²-A176710(n))/A000079(n)` -/
def P10066121280251829305.Spec : Prop :=
  ∀ n, P10066121280251829305.a n = (A167936 n : ℚ)

end A167936

/-!
# A167939: The number of connected subgraphs of the complete graph with n nodes.

The programs for A167939, there is no canonical definition to state claims against.
-/

/-! ## A167939.P13623342544869687818

`∑[abs(Δ[A182100(n)])]`
-/

namespace A167939.P13623342544869687818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182100 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167939.P13623342544869687818

/-! ## A167939.P14371274014007828422

`A182100(n+1)-1`
-/

namespace A167939.P14371274014007828422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182100 (n + 1) - 1

end

end A167939.P14371274014007828422

/-! ## A167939.P2796960617568187920

`A327078(n+1)+n`
-/

namespace A167939.P2796960617568187920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327078 (n + 1) + (n : ℤ)

end

end A167939.P2796960617568187920

/-! ## A167939.P13660143530031895557

`∑[A007814(2*n+1)+Δ[A182100(n)]]`
-/

namespace A167939.P13660143530031895557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182100 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167939.P13660143530031895557

/-! ## A167939.P7451848989564372839

`record[A182100(A078898(n))-A057427(n)]`
-/

namespace A167939.P7451848989564372839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182100 (A078898 n).toNat - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167939.P7451848989564372839

/-!
# A167948: Triangle read by rows, A101688 * (an infinite lower triangular matrix with A002083 as the main diagonal and the rest zeros).

The programs for A167948, there is no canonical definition to state claims against.
-/

/-! ## A167948.P11358444327104894917

`A002083(A002260(n+1))*A101688(n)`
-/

namespace A167948.P11358444327104894917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (A002260 (n + 1)).toNat * A101688 n

end

end A167948.P11358444327104894917

/-! ## A167948.P2222484221589121265

`lcm(A002083(A002260(n+1)), A187034(n))`
-/

namespace A167948.P2222484221589121265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002083 (A002260 (n + 1)).toNat) (A187034 n)

end

end A167948.P2222484221589121265

/-! ## A167948.P8962691191107681406

`A002083(A002260(n+1))*A267687(2*n+1)`
-/

namespace A167948.P8962691191107681406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (A002260 (n + 1)).toNat * A267687 (2 * n + 1)

end

end A167948.P8962691191107681406

/-! ## A167948.P3206107635912905320

`A002083(A002260(n+1))*A267708(2*n+1)`
-/

namespace A167948.P3206107635912905320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (A002260 (n + 1)).toNat * A267708 (2 * n + 1)

end

end A167948.P3206107635912905320

/-! ## A167948.P10792400995140217051

`A002083(A002260(n+1))*A057427(A026729(n))`
-/

namespace A167948.P10792400995140217051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (A002260 (n + 1)).toNat * A057427 (A026729 n).toNat

end

end A167948.P10792400995140217051

/-! ## A167948.P9995980201818219627

`A002083(A002260(n+1))*A071040(A017113(n))`
-/

namespace A167948.P9995980201818219627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (A002260 (n + 1)).toNat * A071040 (A017113 n).toNat

end

end A167948.P9995980201818219627

/-!
# A167963: a(n) = n*(n^5 + 1)/2.

The programs for A167963, the canonical program `A167963.P13145154254571842283` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167963 has offset 0).

The definition of A167963 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A167963.anchor (n : ℕ) : (A167963 n : ℚ) = (n * (n ^ 5 + 1) : ℚ) / 2` in `Proof.A167.A167963`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167963.P13145154254571842283

`n*(n^5+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167963

/-- `n*(n^5+1)/2` -/
def P13145154254571842283.Spec : Prop :=
  ∀ n, P13145154254571842283.a n = (A167963 n : ℚ)

end A167963

/-! ## A167963.P2821655835188454786

`∑[n]*A060884(n)`
-/

namespace A167963.P2821655835188454786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A060884 n

end

end A167963.P2821655835188454786

namespace A167963

/-- `∑[n]*A060884(n)` -/
def P2821655835188454786.Spec : Prop :=
  ∀ n, P2821655835188454786.a n = A167963 n

end A167963

/-! ## A167963.P13049303619759265131

`A131473(n)/2+n`
-/

namespace A167963.P13049303619759265131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131473 n : ℚ) / 2 + (n : ℚ)

end

end A167963.P13049303619759265131

namespace A167963

/-- `A131473(n)/2+n` -/
def P13049303619759265131.Spec : Prop :=
  ∀ n, P13049303619759265131.a n = (A167963 n : ℚ)

end A167963

/-! ## A167963.P7539069374644794430

`A168122(n)-C(n, 2)`
-/

namespace A167963.P7539069374644794430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168122 n - (Nat.choose n 2 : ℤ)

end

end A167963.P7539069374644794430

namespace A167963

/-- `A168122(n)-C(n, 2)` -/
def P7539069374644794430.Spec : Prop :=
  ∀ n, P7539069374644794430.a n = A167963 n

end A167963

/-! ## A167963.P11080172692282730970

`floor((A002604(n)+n)/2)`
-/

namespace A167963.P11080172692282730970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002604 n + (n : ℤ) : ℚ) / 2⌋

end

end A167963.P11080172692282730970

namespace A167963

/-- `floor((A002604(n)+n)/2)` -/
def P11080172692282730970.Spec : Prop :=
  ∀ n, P11080172692282730970.a n = A167963 n

end A167963

/-! ## A167963.P11112198783126661675

`(n+1)/2*A191012(n)`
-/

namespace A167963.P11112198783126661675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A191012 n : ℚ)

end

end A167963.P11112198783126661675

namespace A167963

/-- `(n+1)/2*A191012(n)` -/
def P11112198783126661675.Spec : Prop :=
  ∀ n, P11112198783126661675.a n = (A167963 n : ℚ)

end A167963

/-! ## A167963.P17572463691223655023

`A085744(n)+A006003(n)`
-/

namespace A167963.P17572463691223655023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085744 n + A006003 n

end

end A167963.P17572463691223655023

namespace A167963

/-- `A085744(n)+A006003(n)` -/
def P17572463691223655023.Spec : Prop :=
  ∀ n, P17572463691223655023.a n = A167963 n

end A167963

/-! ## A167963.P12558163861032518583

`A100855(n)+A085743(n)`
-/

namespace A167963.P12558163861032518583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n + A085743 n

end

end A167963.P12558163861032518583

namespace A167963

/-- `A100855(n)+A085743(n)` -/
def P12558163861032518583.Spec : Prop :=
  ∀ n, P12558163861032518583.a n = A167963 n

end A167963

/-! ## A167963.P4570264547179783055

`A071232(n)-A135503(n)`
-/

namespace A167963.P4570264547179783055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n - A135503 n

end

end A167963.P4570264547179783055

namespace A167963

/-- `A071232(n)-A135503(n)` -/
def P4570264547179783055.Spec : Prop :=
  ∀ n, P4570264547179783055.a n = A167963 n

end A167963

/-! ## A167963.P4817575732238673812

`A168122(n)-A161680(n)`
-/

namespace A167963.P4817575732238673812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168122 n - A161680 n

end

end A167963.P4817575732238673812

namespace A167963

/-- `A168122(n)-A161680(n)` -/
def P4817575732238673812.Spec : Prop :=
  ∀ n, P4817575732238673812.a n = A167963 n

end A167963

/-! ## A167963.P16533675885119028159

`A168555(n)%A053717(n)`
-/

namespace A167963.P16533675885119028159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168555 n) (A053717 n)

end

end A167963.P16533675885119028159

namespace A167963

/-- `A168555(n)%A053717(n)` -/
def P16533675885119028159.Spec : Prop :=
  ∀ n, P16533675885119028159.a n = A167963 n

end A167963

/-! ## A167963.P14049010132424885931

`A168627(n)%A059839(n)`
-/

namespace A167963.P14049010132424885931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168627 n) (A059839 n)

end

end A167963.P14049010132424885931

namespace A167963

/-- `A168627(n)%A059839(n)` -/
def P14049010132424885931.Spec : Prop :=
  ∀ n, P14049010132424885931.a n = A167963 n

end A167963

/-! ## A167963.P1690086846726448201

`A168564(n)%A060883(n)`
-/

namespace A167963.P1690086846726448201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168564 n) (A060883 n)

end

end A167963.P1690086846726448201

namespace A167963

/-- `A168564(n)%A060883(n)` -/
def P1690086846726448201.Spec : Prop :=
  ∀ n, P1690086846726448201.a n = A167963 n

end A167963

/-! ## A167963.P8294143031765512435

`A168526(n)+n-A168029(n)`
-/

namespace A167963.P8294143031765512435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168526 n + ((n : ℤ) - A168029 n)

end

end A167963.P8294143031765512435

namespace A167963

/-- `A168526(n)+n-A168029(n)` -/
def P8294143031765512435.Spec : Prop :=
  ∀ n, P8294143031765512435.a n = A167963 n

end A167963

/-! ## A167963.P9502796631284577871

`n*A021003(n)-A161680(n)`
-/

namespace A167963.P9502796631284577871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A021003 n - A161680 n

end

end A167963.P9502796631284577871

namespace A167963

/-- `n*A021003(n)-A161680(n)` -/
def P9502796631284577871.Spec : Prop :=
  ∀ n, P9502796631284577871.a n = A167963 n

end A167963

/-! ## A167963.P17706397399307240059

`n²*A027441(n)-A135503(n)`
-/

namespace A167963.P17706397399307240059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A027441 n - A135503 n

end

end A167963.P17706397399307240059

namespace A167963

/-- `n²*A027441(n)-A135503(n)` -/
def P17706397399307240059.Spec : Prop :=
  ∀ n, P17706397399307240059.a n = A167963 n

end A167963

/-! ## A167963.P17359495087958387857

`A361263(A004277(n))`
-/

namespace A167963.P17359495087958387857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361263 (A004277 n).toNat

end

end A167963.P17359495087958387857

namespace A167963

/-- `A361263(A004277(n))` -/
def P17359495087958387857.Spec : Prop :=
  ∀ n, P17359495087958387857.a n = A167963 n

end A167963

/-! ## A167963.P17401974615803475628

`A361263(A004275(n+1))`
-/

namespace A167963.P17401974615803475628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361263 (A004275 (n + 1)).toNat

end

end A167963.P17401974615803475628

namespace A167963

/-- `A361263(A004275(n+1))` -/
def P17401974615803475628.Spec : Prop :=
  ∀ n, P17401974615803475628.a n = A167963 n

end A167963

/-! ## A167963.P2890592618603384726

`A135503(n²)+∑[n]`
-/

namespace A167963.P2890592618603384726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 (n ^ 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A167963.P2890592618603384726

namespace A167963

/-- `A135503(n²)+∑[n]` -/
def P2890592618603384726.Spec : Prop :=
  ∀ n, P2890592618603384726.a n = A167963 n

end A167963

/-!
# A167964: Signature sequence of phi^8 = 0.021286236252208..., where phi is A094214.

The programs for A167964, the canonical program `A167964.P17091979798249878903` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167964 has offset 1).

The definition of A167964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167964.P10175324310834331673

`char[2*n+47]+1`
-/

namespace A167964.P10175324310834331673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 47

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A167964.P10175324310834331673

namespace A167964

/-- `char[2*n+47]+1` -/
def P10175324310834331673.Spec : Prop :=
  ∀ n, (P10175324310834331673.a n : ℤ) = A167964 (n + 1)

end A167964

/-! ## A167964.P12195753414097681494

`floor(n²^(n%2/11))`
-/

namespace A167964.P12195753414097681494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) ^ (((n % 2 : ℕ) : ℚ) / 11 : ℝ)⌋

end

end A167964.P12195753414097681494

namespace A167964

/-- `floor(n²^(n%2/11))` -/
def P12195753414097681494.Spec : Prop :=
  ∀ n, P12195753414097681494.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P2912782983491355542

`gcd(1-n, comp[2^n-81])`
-/

namespace A167964.P2912782983491355542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 81

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A167964.P2912782983491355542

namespace A167964

/-- `gcd(1-n, comp[2^n-81])` -/
def P2912782983491355542.Spec : Prop :=
  ∀ n, (P2912782983491355542.a n : ℤ) = A167964 (n + 1)

end A167964

/-! ## A167964.P14434830722684924084

`dr(char[and(n, n+1)+47]+1)`
-/

namespace A167964.P14434830722684924084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 47

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A167964.P14434830722684924084

namespace A167964

/-- `dr(char[and(n, n+1)+47]+1)` -/
def P14434830722684924084.Spec : Prop :=
  ∀ n, (P14434830722684924084.a n : ℤ) = A167964 (n + 1)

end A167964

/-! ## A167964.P9525819338329712208

`∑[char[ceil(ϕ^(8*n))]-a(n-1)]` with `a(0)=1`
-/

namespace A167964.P9525819338329712208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (8 * n)⌉

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167964.P9525819338329712208

namespace A167964

/-- `∑[char[ceil(ϕ^(8*n))]-a(n-1)]` -/
def P9525819338329712208.Spec : Prop :=
  ∀ n, P9525819338329712208.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P17091979798249878903

`ceil(∑[and(1, n)-a(n-1)]/30)` with `a(0)=7, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167964

/-- `ceil(∑[and(1, n)-a(n-1)]/30)` -/
def P17091979798249878903.Spec : Prop :=
  ∀ n, P17091979798249878903.a n = A167964 (n + 1)

theorem P17091979798249878903.correct : P17091979798249878903.Spec := by
  intro n
  simp only [A167964, Nat.add_sub_cancel]

end A167964

/-! ## A167964.P16224018116491607406

`round(root(A282738(n), 8))`
-/

namespace A167964.P16224018116491607406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A282738 n : ℝ) ^ (1 / (8 : ℝ)))

end

end A167964.P16224018116491607406

namespace A167964

/-- `round(root(A282738(n), 8))` -/
def P16224018116491607406.Spec : Prop :=
  ∀ n, P16224018116491607406.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P9810999828254421686

`round(root(A266447(n), 11))`
-/

namespace A167964.P9810999828254421686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A266447 n : ℝ) ^ (1 / (11 : ℝ)))

end

end A167964.P9810999828254421686

namespace A167964

/-- `round(root(A266447(n), 11))` -/
def P9810999828254421686.Spec : Prop :=
  ∀ n, P9810999828254421686.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P15409295103019267197

`floor(root(A269782(n), 13))`
-/

namespace A167964.P15409295103019267197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269782 n : ℝ) ^ (1 / (13 : ℝ))⌋

end

end A167964.P15409295103019267197

namespace A167964

/-- `floor(root(A269782(n), 13))` -/
def P15409295103019267197.Spec : Prop :=
  ∀ n, P15409295103019267197.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P4281153798895355744

`round(root(A103832(n), 19))`
-/

namespace A167964.P4281153798895355744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A103832 n : ℝ) ^ (1 / (19 : ℝ)))

end

end A167964.P4281153798895355744

namespace A167964

/-- `round(root(A103832(n), 19))` -/
def P4281153798895355744.Spec : Prop :=
  ∀ n, P4281153798895355744.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P4760268189484771549

`round(root(A094024(n), 40))`
-/

namespace A167964.P4760268189484771549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A094024 n : ℝ) ^ (1 / (40 : ℝ)))

end

end A167964.P4760268189484771549

namespace A167964

/-- `round(root(A094024(n), 40))` -/
def P4760268189484771549.Spec : Prop :=
  ∀ n, P4760268189484771549.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P327199801772663275

`round(root(A290862(n), 80))`
-/

namespace A167964.P327199801772663275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A290862 n : ℝ) ^ (1 / (80 : ℝ)))

end

end A167964.P327199801772663275

namespace A167964

/-- `round(root(A290862(n), 80))` -/
def P327199801772663275.Spec : Prop :=
  ∀ n, P327199801772663275.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P16258669534457565011

`A178487(abs(∑[n]%(n+1)-1)+9)`
-/

namespace A167964.P16258669534457565011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (|(((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ) - 1| + 9).toNat

end

end A167964.P16258669534457565011

namespace A167964

/-- `A178487(abs(∑[n]%(n+1)-1)+9)` -/
def P16258669534457565011.Spec : Prop :=
  ∀ n, P16258669534457565011.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P14171348739271291598

`A180160(A180157(n+1)-2)!`
-/

namespace A167964.P14171348739271291598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A180160 (A180157 (n + 1) - 2).toNat).toNat

end

end A167964.P14171348739271291598

namespace A167964

/-- `A180160(A180157(n+1)-2)!` -/
def P14171348739271291598.Spec : Prop :=
  ∀ n, (P14171348739271291598.a n : ℤ) = A167964 (n + 1)

end A167964

/-! ## A167964.P12787656084313013275

`A055642(A002024(A093178(n)))`
-/

namespace A167964.P12787656084313013275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A002024 (A093178 n).toNat).toNat

end

end A167964.P12787656084313013275

namespace A167964

/-- `A055642(A002024(A093178(n)))` -/
def P12787656084313013275.Spec : Prop :=
  ∀ n, P12787656084313013275.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P3214408102406823070

`A133879(A005041(A057979(n)))`
-/

namespace A167964.P3214408102406823070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133879 (A005041 (A057979 n).toNat).toNat

end

end A167964.P3214408102406823070

namespace A167964

/-- `A133879(A005041(A057979(n)))` -/
def P3214408102406823070.Spec : Prop :=
  ∀ n, P3214408102406823070.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P9764852687757623855

`A055640(A178334(A165998(n))²)`
-/

namespace A167964.P9764852687757623855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A178334 (A165998 n).toNat ^ 2).toNat

end

end A167964.P9764852687757623855

namespace A167964

/-- `A055640(A178334(A165998(n))²)` -/
def P9764852687757623855.Spec : Prop :=
  ∀ n, P9764852687757623855.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P5655143126694575799

`A029097(A000196(Δ[A165157(n)]))`
-/

namespace A167964.P5655143126694575799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029097 (A000196 (f1 (n + 1) - f1 n).toNat).toNat

end

end A167964.P5655143126694575799

namespace A167964

/-- `A029097(A000196(Δ[A165157(n)]))` -/
def P5655143126694575799.Spec : Prop :=
  ∀ n, P5655143126694575799.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P7080836402762964774

`A048766(A048766(A019433(n+6)))`
-/

namespace A167964.P7080836402762964774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048766 (A019433 (n + 6)).toNat).toNat

end

end A167964.P7080836402762964774

namespace A167964

/-- `A048766(A048766(A019433(n+6)))` -/
def P7080836402762964774.Spec : Prop :=
  ∀ n, P7080836402762964774.a n = A167964 (n + 1)

end A167964

/-! ## A167964.P1794916648994410802

`A110001(comp[A253767(2*(n+1))]+3-A109613(n))`
-/

namespace A167964.P1794916648994410802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253767 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3 : ℤ) - A109613 n).toNat

end

end A167964.P1794916648994410802

namespace A167964

/-- `A110001(comp[A253767(2*(n+1))]+3-A109613(n))` -/
def P1794916648994410802.Spec : Prop :=
  ∀ n, P1794916648994410802.a n = A167964 (n + 1)

end A167964

/-!
# A167965: Signature sequence of phi^7 = 0.034441853748633..., where phi is A094214.

The programs for A167965, there is no canonical definition to state claims against.
-/

/-! ## A167965.P5114476443906833039

`a(n-2)*A304118(n-a(n-2)+1)` with `a(0)=1, a(1)=1`
-/

namespace A167965.P5114476443906833039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A304118 ((n : ℤ) - a (n - 2) + 1).toNat

end

end A167965.P5114476443906833039

/-! ## A167965.P12755416283638251365

`gcd(n, A055642(A309407(n)))`
-/

namespace A167965.P12755416283638251365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A055642 (A309407 n).toNat)

end

end A167965.P12755416283638251365

/-! ## A167965.P15794619534186857617

`A055642(ceil(n/(A128114(n+1)+π)))`
-/

namespace A167965.P15794619534186857617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ⌈(n : ℝ) / ((A128114 (n + 1) : ℝ) + Real.pi)⌉.toNat

end

end A167965.P15794619534186857617

/-! ## A167965.P3317129396032480404

`A167964(n+18)`
-/

namespace A167965.P3317129396032480404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 (n + 18)

end

end A167965.P3317129396032480404

/-! ## A167965.P3790362024521933077

`gcd(∏[A318809(n+1)], A000034(n+1))`
-/

namespace A167965.P3790362024521933077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A000034 (n + 1))

end

end A167965.P3790362024521933077

/-! ## A167965.P1253948062446950142

`gcd(A221169(n), A351014(A074279(n+1)))`
-/

namespace A167965.P1253948062446950142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221169 n) (A351014 (A074279 (n + 1)).toNat)

end

end A167965.P1253948062446950142

/-! ## A167965.P5978884186637193768

`gcd(n², A214081(A130822(n+1)))`
-/

namespace A167965.P5978884186637193768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A214081 (A130822 (n + 1)).toNat)

end

end A167965.P5978884186637193768

/-! ## A167965.P16548602651229425491

`A007318(A232113(A232113(n+2)))`
-/

namespace A167965.P16548602651229425491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A232113 (A232113 (n + 2)).toNat).toNat

end

end A167965.P16548602651229425491

/-! ## A167965.P12269793752202152074

`A167967(A360535(n))`
-/

namespace A167965.P12269793752202152074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167967 (A360535 n).toNat

end

end A167965.P12269793752202152074

/-! ## A167965.P487682864957927622

`A033676(A165258(A095161(n+1)))`
-/

namespace A167965.P487682864957927622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A165258 (A095161 (n + 1)).toNat).toNat

end

end A167965.P487682864957927622

/-!
# A167966: Signature sequence of phi^6 = 0.055728090000841..., where phi is the inverse golden ratio A094214.

The programs for A167966, there is no canonical definition to state claims against.
-/

/-! ## A167966.P12911064855502489414

`ceil(A158416(n²)/A123722(n+3))`
-/

namespace A167966.P12911064855502489414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158416 (n ^ 2) : ℚ) / (A123722 (n + 3) : ℚ)⌉

end

end A167966.P12911064855502489414

/-! ## A167966.P18111095036287898008

`A167964(2*ceil(sqrt(12*n+5))+n)`
-/

namespace A167966.P18111095036287898008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 (2 * ⌈Real.sqrt (12 * n + 5 : ℝ)⌉ + (n : ℤ)).toNat

end

end A167966.P18111095036287898008

/-! ## A167966.P4896614980178683969

`A351306(Δ[A051885(ceil(n/2))])`
-/

namespace A167966.P4896614980178683969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351306 (f1 (n + 1) - f1 n).toNat

end

end A167966.P4896614980178683969

/-! ## A167966.P11372275441730790966

`A000034(∑[∑[A062068(n+4)]])`
-/

namespace A167966.P11372275441730790966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167966.P11372275441730790966

/-! ## A167966.P14468384970887818312

`2-A010054(A035677(3*n+4))`
-/

namespace A167966.P14468384970887818312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010054 (A035677 (3 * n + 4)).toNat

end

end A167966.P14468384970887818312

/-! ## A167966.P11331185832888630616

`ceil(A184418(n)/A184425(2*n+1))`
-/

namespace A167966.P11331185832888630616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184418 n : ℚ) / (A184425 (2 * n + 1) : ℚ)⌉

end

end A167966.P11331185832888630616

/-! ## A167966.P11998337710368070338

`A055642(A343337(n+3))-a(n-1)` with `a(0)=1`
-/

namespace A167966.P11998337710368070338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 (A343337 (n + 3)).toNat - a (n - 1)

end

end A167966.P11998337710368070338

/-! ## A167966.P17985709651675278814

`round(acot(A209268(n+1)/A207802(n+2)))`
-/

namespace A167966.P17985709651675278814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((A209268 (n + 1) : ℚ) / (A207802 (n + 2) : ℚ) : ℝ))

end

end A167966.P17985709651675278814

/-! ## A167966.P17189274589319358199

`round(acot(A249725(n+1)/A207802(n+2)))`
-/

namespace A167966.P17189274589319358199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((A249725 (n + 1) : ℚ) / (A207802 (n + 2) : ℚ) : ℝ))

end

end A167966.P17189274589319358199

/-!
# A167967: Signature sequence of phi^5 = 0.090169943749474..., where phi is the inverse golden ratio A094214.

The programs for A167967, there is no canonical definition to state claims against.
-/

/-! ## A167967.P2949856570104474626

`A167965(A390774(n+1))`
-/

namespace A167967.P2949856570104474626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A390774 (n + 1)).toNat

end

end A167967.P2949856570104474626

/-! ## A167967.P13924898028241487487

`A167965(A240830(2*n+1)+n)`
-/

namespace A167967.P13924898028241487487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A240830 (2 * n + 1) + (n : ℤ)).toNat

end

end A167967.P13924898028241487487

/-! ## A167967.P6872032135877973741

`gcd(n, A097456(3*n+2))`
-/

namespace A167967.P6872032135877973741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A097456 (3 * n + 2))

end

end A167967.P6872032135877973741

/-! ## A167967.P10344108768662492103

`A167965(A055655(n+1))`
-/

namespace A167967.P10344108768662492103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A055655 (n + 1)).toNat

end

end A167967.P10344108768662492103

/-! ## A167967.P8217598678835239996

`A167964(A081746(n+2))`
-/

namespace A167967.P8217598678835239996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 (A081746 (n + 2)).toNat

end

end A167967.P8217598678835239996

/-!
# A167968: Signature sequence of phi^4 = 0.14589803375032..., where phi is the golden ratio minus 1 (0.61803398874989...).

The programs for A167968, there is no canonical definition to state claims against.
-/

/-! ## A167968.P3894484793762521349

`A004736(record[A194909(n+1)])`
-/

namespace A167968.P3894484793762521349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A167968.P3894484793762521349

/-! ## A167968.P14632275724774076543

`A193592(lt[A052905(n), A211700(n+1)])`
-/

namespace A167968.P14632275724774076543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167968.P14632275724774076543

/-! ## A167968.P10112628692580163280

`A193592(lt[A060577(n), A211700(n+1)])`
-/

namespace A167968.P10112628692580163280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060577 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167968.P10112628692580163280

/-! ## A167968.P150487003680867779

`A167965(A101889(n+1)+1)`
-/

namespace A167968.P150487003680867779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A101889 (n + 1) + 1).toNat

end

end A167968.P150487003680867779

/-! ## A167968.P10930957422992566202

`A167965(A220098(n+1)+4*n+5)`
-/

namespace A167968.P10930957422992566202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A220098 (n + 1) + (4 * n + 5 : ℤ)).toNat

end

end A167968.P10930957422992566202

/-!
# A167969: Signature sequence of phi^3 = 0.23606797749979..., where phi is the golden ratio 0.61803398874989... .

The programs for A167969, there is no canonical definition to state claims against.
-/

/-! ## A167969.P2782397544282118332

`A110654(A194902(n+1))%A006530(A129145(n+1))`
-/

namespace A167969.P2782397544282118332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A194902 (n + 1)).toNat) (A006530 (A129145 (n + 1)).toNat)

end

end A167969.P2782397544282118332

/-! ## A167969.P7229579780304098010

`A181118(A194902(n+1)²)`
-/

namespace A167969.P7229579780304098010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (A194902 (n + 1) ^ 2).toNat

end

end A167969.P7229579780304098010

/-! ## A167969.P13729626987091871500

`A131576(3^A194902(n+1))`
-/

namespace A167969.P13729626987091871500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A194902 (n + 1) : ℤ))).toNat

end

end A167969.P13729626987091871500

/-! ## A167969.P13940781570843019811

`A333805(3^A194902(n+1))`
-/

namespace A167969.P13940781570843019811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A194902 (n + 1) : ℤ))).toNat

end

end A167969.P13940781570843019811

/-! ## A167969.P11327081544030785135

`A344773(3^A194902(n+1))`
-/

namespace A167969.P11327081544030785135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344773 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A194902 (n + 1) : ℤ))).toNat

end

end A167969.P11327081544030785135

/-! ## A167969.P16643189137756760231

`A181118(A122197(2*(n+1))²)`
-/

namespace A167969.P16643189137756760231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (A122197 (2 * (n + 1)) ^ 2).toNat

end

end A167969.P16643189137756760231

/-! ## A167969.P40596027180813605

`A003056(A319951(A194902(n+1)²))`
-/

namespace A167969.P40596027180813605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A319951 (A194902 (n + 1) ^ 2).toNat).toNat

end

end A167969.P40596027180813605

/-! ## A167969.P17800930775613869807

`A110654(A194902(n+1)%A112055(n+1))`
-/

namespace A167969.P17800930775613869807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (A194902 (n + 1)) (A112055 (n + 1))).toNat

end

end A167969.P17800930775613869807

/-! ## A167969.P6530266697124031851

`A110654(A194902(n+1)+A151935(n))`
-/

namespace A167969.P6530266697124031851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A194902 (n + 1) + A151935 n).toNat

end

end A167969.P6530266697124031851

/-! ## A167969.P10631865286263807289

`A110654(A194902(n+1))%A008864(A019565(n))`
-/

namespace A167969.P10631865286263807289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A194902 (n + 1)).toNat) (A008864 (A019565 n).toNat)

end

end A167969.P10631865286263807289

/-!
# A167971: Signature sequence of Phi^3 = 4.2360679774998..., where Phi is the golden ratio 1.6180339887499... .

The programs for A167971, there is no canonical definition to state claims against.
-/

/-! ## A167971.P12224234990633665846

`A082375(lt[A112104(3*n+5), A115139(n+1)])`
-/

namespace A167971.P12224234990633665846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112104 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167971.P12224234990633665846

/-! ## A167971.P6395479884193025112

`A167286(A057944(A016825(n))-n)`
-/

namespace A167971.P6395479884193025112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167286 (A057944 (A016825 n).toNat - (n : ℤ)).toNat

end

end A167971.P6395479884193025112

/-! ## A167971.P14038739619789223725

`A167286(A057944(4*n+5)-n)`
-/

namespace A167971.P14038739619789223725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167286 (A057944 (4 * n + 5) - (n : ℤ)).toNat

end

end A167971.P14038739619789223725

/-! ## A167971.P4204446819962694002

`A000720(p?[A004151(A129129(n))])`
-/

namespace A167971.P4204446819962694002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A129129 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A167971.P4204446819962694002

/-!
# A167972: Signature sequence of Phi^4 = 6.8541019662497..., where Phi is the golden ratio 1.6180339887499... .

The programs for A167972, there is no canonical definition to state claims against.
-/

/-! ## A167972.P1879858169348204366

`A035182(A318588(n+1)%A335580(n+1))`
-/

namespace A167972.P1879858169348204366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (Int.tmod (A318588 (n + 1)) (A335580 (n + 1))).toNat

end

end A167972.P1879858169348204366

/-! ## A167972.P17850911141410950263

`A035215(A318588(n+1))%A318588(2*n+5)`
-/

namespace A167972.P17850911141410950263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035215 (A318588 (n + 1)).toNat) (A318588 (2 * n + 5))

end

end A167972.P17850911141410950263

/-! ## A167972.P11167823998679879074

`A007814(2*A318588(n+1))`
-/

namespace A167972.P11167823998679879074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A318588 (n + 1)).toNat

end

end A167972.P11167823998679879074

/-! ## A167972.P1761182050261206680

`A067029(2*A318588(n+1))`
-/

namespace A167972.P1761182050261206680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * A318588 (n + 1)).toNat

end

end A167972.P1761182050261206680

/-! ## A167972.P3470508449965483501

`A001511(record[Δ[A253789(n+1)]])`
-/

namespace A167972.P3470508449965483501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253789 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A167972.P3470508449965483501

/-!
# A167973: Signature sequence of Phi^5 = 11.090169943749..., where Phi is the golden ratio 1.6180339887499... .

The programs for A167973, there is no canonical definition to state claims against.
-/

/-! ## A167973.P11313838862763218277

`n+1-a(n-1)%A191923(A191923(n+1)+1)` with `a(0)=1`
-/

namespace A167973.P11313838862763218277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - Int.tmod (a (n - 1)) (A191923 (A191923 (n + 1) + 1).toNat)

end

end A167973.P11313838862763218277

/-!
# A167975: Signature sequence of Phi^7 = 29.034441853749..., where Phi is the golden ratio 1.6180339887499... .

The programs for A167975, there is no canonical definition to state claims against.
-/

/-! ## A167975.P864800462701958585

`n+1-a(n-1)%A273888(n+1)` with `a(0)=1`
-/

namespace A167975.P864800462701958585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - Int.tmod (a (n - 1)) (A273888 (n + 1))

end

end A167975.P864800462701958585

/-! ## A167975.P9789954754857945847

`n+1-(comp[∑[A071256(3*n+5)]]-n)*a(n-1)` with `a(0)=1`
-/

namespace A167975.P9789954754857945847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) * a (n - 1)

end

end A167975.P9789954754857945847

/-! ## A167975.P8642320399138383460

`n+1-a(n-1)*A161303(A095382(n+2)+1)` with `a(0)=1`
-/

namespace A167975.P8642320399138383460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - a (n - 1) * A161303 (A095382 (n + 2) + 1).toNat

end

end A167975.P8642320399138383460

/-! ## A167975.P6130042579169319852

`A152271(lt[A129858(n+2), A000463(3*n+5)])`
-/

namespace A167975.P6130042579169319852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129858 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167975.P6130042579169319852

/-! ## A167975.P14709781393402180614

`gcd(n+1, A010946(n))`
-/

namespace A167975.P14709781393402180614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A010946 n)

end

end A167975.P14709781393402180614

/-!
# A167976: Signature sequence of Phi^8 = 46.978713763748..., where Phi is the golden ratio 1.6180339887499... .

The programs for A167976, there is no canonical definition to state claims against.
-/

/-! ## A167976.P12254880639061934736

`1-(round((n-2)/90)*a(n-1)-n)` with `a(0)=1`
-/

namespace A167976.P12254880639061934736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / 90) * a (n - 1) - (n : ℤ))

end

end A167976.P12254880639061934736

/-! ## A167976.P12425729409821718840

`n+1-a(n-1)%comp[A288022(n+1)]` with `a(0)=1`
-/

namespace A167976.P12425729409821718840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288022 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - Int.tmod (a (n - 1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A167976.P12425729409821718840

/-! ## A167976.P12677414127479943382

`gcd(n+1, C(n², 47*n))`
-/

namespace A167976.P12677414127479943382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.choose (n ^ 2) (47 * n))

end

end A167976.P12677414127479943382

/-! ## A167976.P14371378152371639223

`(1-n)^C(n+17, 64)²+n`
-/

namespace A167976.P14371378152371639223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ Nat.choose (n + 17) 64 ^ 2 + (n : ℤ)

end

end A167976.P14371378152371639223

/-! ## A167976.P11977254208265963641

`n%A010963(n)+1`
-/

namespace A167976.P11977254208265963641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A010963 n) + 1

end

end A167976.P11977254208265963641

/-!
# A167977: Triangle A161511(A167979(n,k)).

The programs for A167977, there is no canonical definition to state claims against.
-/

/-! ## A167977.P1784880288706402921

`A161511(A167979(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167977.P1784880288706402921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A167979 (n + 1)).toNat

end

end A167977.P1784880288706402921

/-! ## A167977.P15166232287157943409

`A161511(A090774(n+1))`
-/

namespace A167977.P15166232287157943409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A090774 (n + 1)).toNat

end

end A167977.P15166232287157943409

/-! ## A167977.P15704809668817775952

`A055941(2*A090774(n+1))`
-/

namespace A167977.P15704809668817775952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (2 * A090774 (n + 1)).toNat

end

end A167977.P15704809668817775952

/-! ## A167977.P4257044724871577914

`A055941(2*A167979(n+1))`
-/

namespace A167977.P4257044724871577914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (2 * A167979 (n + 1)).toNat

end

end A167977.P4257044724871577914

/-! ## A167977.P11521255065611105464

`A055941(A090774(n+1)+A090774(n+1))`
-/

namespace A167977.P11521255065611105464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A090774 (n + 1) + A090774 (n + 1)).toNat

end

end A167977.P11521255065611105464

/-!
# A167981: Number of 2n-cycles on the graph of the tesseract, 2 <= n <= 8.

The programs for A167981, there is no canonical definition to state claims against.
-/

/-! ## A167981.P1250672965384265756

`A085452(A357936(n+6))`
-/

namespace A167981.P1250672965384265756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085452 (A357936 (n + 6)).toNat

end

end A167981.P1250672965384265756

/-!
# A167982: Number of n-cycles on the graph of the regular 16-cell, 3 <= n <= 8.

The programs for A167982, there is no canonical definition to state claims against.
-/

/-! ## A167982.P17632911148642434830

`A167986(n+8)`
-/

namespace A167982.P17632911148642434830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167986 (n + 8)

end

end A167982.P17632911148642434830

/-!
# A167984: Number of n-cycles on the graph of the regular 120-cell, 3 <= n <= 600.

The programs for A167984, there is no canonical definition to state claims against.
-/

/-! ## A167984.P9017495613071646968

`72*A294203(A272298(n+4))`
-/

namespace A167984.P9017495613071646968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * A294203 (A272298 (n + 4)).toNat

end

end A167984.P9017495613071646968

/-! ## A167984.P10201943799201013731

`A330972(8*n+11)*A332205(n)`
-/

namespace A167984.P10201943799201013731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330972 (8 * n + 11) * A332205 n

end

end A167984.P10201943799201013731

/-!
# A167990: Elements in A126988 (by row) that are not 1.

The programs for A167990, the canonical program `A167990.P17237278703894071025` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167990 has offset 1).

The definition of A167990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167990.P17237278703894071025

`A010766(n+1)*A175992(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A167990

/-- `A010766(n+1)*A175992(n+1)` -/
def P17237278703894071025.Spec : Prop :=
  ∀ n, P17237278703894071025.a n = A167990 (n + 1)

theorem P17237278703894071025.correct : P17237278703894071025.Spec := by
  intro n
  simp only [A167990, Nat.add_sub_cancel]

end A167990

/-! ## A167990.P3192882590976671479

`A049834(n+1)*A175992(n+1)`
-/

namespace A167990.P3192882590976671479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A175992 (n + 1)

end

end A167990.P3192882590976671479

namespace A167990

/-- `A049834(n+1)*A175992(n+1)` -/
def P3192882590976671479.Spec : Prop :=
  ∀ n, P3192882590976671479.a n = A167990 (n + 1)

end A167990

/-! ## A167990.P5680449157560796793

`A051537(n+1)*A175992(n+1)`
-/

namespace A167990.P5680449157560796793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A175992 (n + 1)

end

end A167990.P5680449157560796793

namespace A167990

/-- `A051537(n+1)*A175992(n+1)` -/
def P5680449157560796793.Spec : Prop :=
  ∀ n, P5680449157560796793.a n = A167990 (n + 1)

end A167990

/-! ## A167990.P5082981896972939588

`A054531(n+1)*A175992(n+1)`
-/

namespace A167990.P5082981896972939588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A175992 (n + 1)

end

end A167990.P5082981896972939588

namespace A167990

/-- `A054531(n+1)*A175992(n+1)` -/
def P5082981896972939588.Spec : Prop :=
  ∀ n, P5082981896972939588.a n = A167990 (n + 1)

end A167990

/-! ## A167990.P11306713018857103573

`A059026(n+1)*A175992(n+1)`
-/

namespace A167990.P11306713018857103573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) * A175992 (n + 1)

end

end A167990.P11306713018857103573

namespace A167990

/-- `A059026(n+1)*A175992(n+1)` -/
def P11306713018857103573.Spec : Prop :=
  ∀ n, P11306713018857103573.a n = A167990 (n + 1)

end A167990

/-! ## A167990.P9740416655245229233

`A126988(n+1)*A175992(n+1)`
-/

namespace A167990.P9740416655245229233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A175992 (n + 1)

end

end A167990.P9740416655245229233

namespace A167990

/-- `A126988(n+1)*A175992(n+1)` -/
def P9740416655245229233.Spec : Prop :=
  ∀ n, P9740416655245229233.a n = A167990 (n + 1)

end A167990

/-! ## A167990.P5861665720760964347

`A175992(n+1)*A219158(n+1)`
-/

namespace A167990.P5861665720760964347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175992 (n + 1) * A219158 (n + 1)

end

end A167990.P5861665720760964347

namespace A167990

/-- `A175992(n+1)*A219158(n+1)` -/
def P5861665720760964347.Spec : Prop :=
  ∀ n, P5861665720760964347.a n = A167990 (n + 1)

end A167990

/-! ## A167990.P14284207712307716389

`A175992(n+1)*A234575(n+1)`
-/

namespace A167990.P14284207712307716389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175992 (n + 1) * A234575 (n + 1)

end

end A167990.P14284207712307716389

namespace A167990

/-- `A175992(n+1)*A234575(n+1)` -/
def P14284207712307716389.Spec : Prop :=
  ∀ n, P14284207712307716389.a n = A167990 (n + 1)

end A167990

/-! ## A167990.P2576835069795918821

`A175992(n+1)*A372523(n+1)`
-/

namespace A167990.P2576835069795918821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175992 (n + 1) * A372523 (n + 1)

end

end A167990.P2576835069795918821

namespace A167990

/-- `A175992(n+1)*A372523(n+1)` -/
def P2576835069795918821.Spec : Prop :=
  ∀ n, P2576835069795918821.a n = A167990 (n + 1)

end A167990

/-! ## A167990.P16093722647533976262

`A126988(round(sqrt(2*(n+1)))²+2*(n+1))-char[∑[n-1]]`
-/

namespace A167990.P16093722647533976262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 + (2 * (n + 1) : ℤ)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A167990.P16093722647533976262

namespace A167990

/-- `A126988(round(sqrt(2*(n+1)))²+2*(n+1))-char[∑[n-1]]` -/
def P16093722647533976262.Spec : Prop :=
  ∀ n, P16093722647533976262.a n = A167990 (n + 1)

end A167990

/-! ## A167990.P10677474923168882208

`A242992(A143315(n+1))`
-/

namespace A167990.P10677474923168882208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242992 (A143315 (n + 1)).toNat

end

end A167990.P10677474923168882208

namespace A167990

/-- `A242992(A143315(n+1))` -/
def P10677474923168882208.Spec : Prop :=
  ∀ n, P10677474923168882208.a n = A167990 (n + 1)

end A167990

/-! ## A167990.P5303416707616366110

`(A155029(n+1)+A153881(n+2))*A174557(n+1)`
-/

namespace A167990.P5303416707616366110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155029 (n + 1) + A153881 (n + 2)) * A174557 (n + 1)

end

end A167990.P5303416707616366110

namespace A167990

/-- `(A155029(n+1)+A153881(n+2))*A174557(n+1)` -/
def P5303416707616366110.Spec : Prop :=
  ∀ n, P5303416707616366110.a n = A167990 (n + 1)

end A167990

/-!
# A167991: Blocks of size 2n, each with 2n-1 replicas of 2n followed by 2n+1; n=1, 2, 3, ...

The programs for A167991, the canonical program `A167991.P12631064241963437779` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167991 has offset 1).

The definition of A167991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167991.P12631064241963437779

`a(n-a(n-2))+2` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167991

/-- `a(n-a(n-2))+2` -/
def P12631064241963437779.Spec : Prop :=
  ∀ n, (P12631064241963437779.a n : ℤ) = A167991 (n + 1)

theorem P12631064241963437779.correct : P12631064241963437779.Spec := by
  intro n
  simp only [A167991, Nat.add_sub_cancel]

end A167991

/-! ## A167991.P15541275903901046970

`round(round(sqrt(n+1))+sqrt(n+2))`
-/

namespace A167991.P15541275903901046970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) : ℝ) + Real.sqrt (n + 2 : ℝ))

end

end A167991.P15541275903901046970

namespace A167991

/-- `round(round(sqrt(n+1))+sqrt(n+2))` -/
def P15541275903901046970.Spec : Prop :=
  ∀ n, P15541275903901046970.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P6209935248524357224

`2-(floor(n-a(n-a(n-2)))-n)` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A167991.P6209935248524357224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 - ((n : ℤ) - a ((n : ℤ) - a (n - 2)).toNat - (n : ℤ))

end

end A167991.P6209935248524357224

namespace A167991

/-- `2-(floor(n-a(n-a(n-2)))-n)` -/
def P6209935248524357224.Spec : Prop :=
  ∀ n, P6209935248524357224.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P1505994499894576899

`2-(gcd(a(n-1), a(n-a(n-2)))-a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A167991.P1505994499894576899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 - ((Int.gcd (a (n - 1)) (a ((n : ℤ) - a (n - 2)).toNat) : ℤ) - a (n - 1))

end

end A167991.P1505994499894576899

namespace A167991

/-- `2-(gcd(a(n-1), a(n-a(n-2)))-a(n-1))` -/
def P1505994499894576899.Spec : Prop :=
  ∀ n, P1505994499894576899.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P15478198700441940528

`∑[A073423(ceil(n/2))]`
-/

namespace A167991.P15478198700441940528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167991.P15478198700441940528

namespace A167991

/-- `∑[A073423(ceil(n/2))]` -/
def P15478198700441940528.Spec : Prop :=
  ∀ n, P15478198700441940528.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P15640583087396319699

`∑[Δ[A005369(n)]²]+1`
-/

namespace A167991.P15640583087396319699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A167991.P15640583087396319699

namespace A167991

/-- `∑[Δ[A005369(n)]²]+1` -/
def P15640583087396319699.Spec : Prop :=
  ∀ n, P15640583087396319699.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P11304145530770680438

`∑[A010054(round(n/2))]+1`
-/

namespace A167991.P11304145530770680438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A167991.P11304145530770680438

namespace A167991

/-- `∑[A010054(round(n/2))]+1` -/
def P11304145530770680438.Spec : Prop :=
  ∀ n, P11304145530770680438.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P6242873108717310338

`∑[A035214(∑[and(1, n)])]-n`
-/

namespace A167991.P6242873108717310338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A167991.P6242873108717310338

namespace A167991

/-- `∑[A035214(∑[and(1, n)])]-n` -/
def P6242873108717310338.Spec : Prop :=
  ∀ n, P6242873108717310338.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P8573521777567416638

`A092038(A265359(n+1)+2)`
-/

namespace A167991.P8573521777567416638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A265359 (n + 1) + 2).toNat

end

end A167991.P8573521777567416638

namespace A167991

/-- `A092038(A265359(n+1)+2)` -/
def P8573521777567416638.Spec : Prop :=
  ∀ n, P8573521777567416638.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P3319262945850382856

`A130821(n+1)+A062557(n)`
-/

namespace A167991.P3319262945850382856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130821 (n + 1) + A062557 n

end

end A167991.P3319262945850382856

namespace A167991

/-- `A130821(n+1)+A062557(n)` -/
def P3319262945850382856.Spec : Prop :=
  ∀ n, P3319262945850382856.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P15594865633633996948

`A130829(n+1)-A267814(n)`
-/

namespace A167991.P15594865633633996948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130829 (n + 1) - A267814 n

end

end A167991.P15594865633633996948

namespace A167991

/-- `A130829(n+1)-A267814(n)` -/
def P15594865633633996948.Spec : Prop :=
  ∀ n, P15594865633633996948.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P4500431209201788787

`A005369(n+1)+A001670(n+1)`
-/

namespace A167991.P4500431209201788787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (n + 1) + A001670 (n + 1)

end

end A167991.P4500431209201788787

namespace A167991

/-- `A005369(n+1)+A001670(n+1)` -/
def P4500431209201788787.Spec : Prop :=
  ∀ n, P4500431209201788787.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P8983834954287902874

`A023969(n+1)+A000267(n+1)`
-/

namespace A167991.P8983834954287902874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (n + 1) + A000267 (n + 1)

end

end A167991.P8983834954287902874

namespace A167991

/-- `A023969(n+1)+A000267(n+1)` -/
def P8983834954287902874.Spec : Prop :=
  ∀ n, P8983834954287902874.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P10513103991716777768

`n+2-A028391(A056847(n+1))`
-/

namespace A167991.P10513103991716777768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A028391 (A056847 (n + 1)).toNat

end

end A167991.P10513103991716777768

namespace A167991

/-- `n+2-A028391(A056847(n+1))` -/
def P10513103991716777768.Spec : Prop :=
  ∀ n, P10513103991716777768.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P2649411887266582764

`A027434(A053187(n+1)+A005369(n+1))`
-/

namespace A167991.P2649411887266582764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A053187 (n + 1) + A005369 (n + 1)).toNat

end

end A167991.P2649411887266582764

namespace A167991

/-- `A027434(A053187(n+1)+A005369(n+1))` -/
def P2649411887266582764.Spec : Prop :=
  ∀ n, P2649411887266582764.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P14224407380953460770

`A284359(n+1)`
-/

namespace A167991.P14224407380953460770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (n + 1)

end

end A167991.P14224407380953460770

namespace A167991

/-- `A284359(n+1)` -/
def P14224407380953460770.Spec : Prop :=
  ∀ n, P14224407380953460770.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P12041850206849576542

`Δ[A167381(n+1)]`
-/

namespace A167991.P12041850206849576542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167991.P12041850206849576542

namespace A167991

/-- `Δ[A167381(n+1)]` -/
def P12041850206849576542.Spec : Prop :=
  ∀ n, P12041850206849576542.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P5059450508310174148

`∑[A284359(Δ[A284359(n)])]-n`
-/

namespace A167991.P5059450508310174148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A167991.P5059450508310174148

namespace A167991

/-- `∑[A284359(Δ[A284359(n)])]-n` -/
def P5059450508310174148.Spec : Prop :=
  ∀ n, P5059450508310174148.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P6715673735745857523

`A368941(n+1)+A259361(n+1)`
-/

namespace A167991.P6715673735745857523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368941 (n + 1) + A259361 (n + 1)

end

end A167991.P6715673735745857523

namespace A167991

/-- `A368941(n+1)+A259361(n+1)` -/
def P6715673735745857523.Spec : Prop :=
  ∀ n, P6715673735745857523.a n = A167991 (n + 1)

end A167991

/-! ## A167991.P13968071904861620085

`A118175(n+1)+A060018(n+3)`
-/

namespace A167991.P13968071904861620085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (n + 1) + A060018 (n + 3)

end

end A167991.P13968071904861620085

namespace A167991

/-- `A118175(n+1)+A060018(n+3)` -/
def P13968071904861620085.Spec : Prop :=
  ∀ n, P13968071904861620085.a n = A167991 (n + 1)

end A167991

/-!
# A167993: Expansion of x^2/((3*x-1)*(3*x^2-1)).

The programs for A167993, the canonical program `A167993.P5991641104029034736` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167993 has offset 0).

The definition of A167993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1-3x-3x^2+9x^3))` (program `A167993.P5991641104029034736`, by `A167993.P5991641104029034736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167993.P5991641104029034736

`ogf(x^2/(1-3x-3x^2+9x^3))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167993

/-- `ogf(x^2/(1-3x-3x^2+9x^3))` -/
def P5991641104029034736.Spec : Prop :=
  ∀ n, P5991641104029034736.a n = A167993 n

theorem P5991641104029034736.correct : P5991641104029034736.Spec := by
  intro n
  simp only [A167993]

end A167993

/-! ## A167993.P1794474337958189574

`(3^n-A108411(n+1))/6`
-/

namespace A167993.P1794474337958189574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - A108411 (n + 1) : ℚ) / 6

end

end A167993.P1794474337958189574

namespace A167993

/-- `(3^n-A108411(n+1))/6` -/
def P1794474337958189574.Spec : Prop :=
  ∀ n, P1794474337958189574.a n = (A167993 n : ℚ)

end A167993

/-! ## A167993.P8614412163495396137

`3^(n-2)+3*a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A167993.P8614412163495396137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 3 * a (n - 2)

end

end A167993.P8614412163495396137

namespace A167993

/-- `3^(n-2)+3*a(n-2)` -/
def P8614412163495396137.Spec : Prop :=
  ∀ n, P8614412163495396137.a n = (A167993 n : ℚ)

end A167993

/-! ## A167993.P6425093332686391569

`∑[3*a(n-1)+3*a(n-2)-9*a(n-3)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A167993.P6425093332686391569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2] fun n f1 =>
  3 * f1 (n - 1) + 3 * f1 (n - 2) - 9 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167993.P6425093332686391569

namespace A167993

/-- `∑[3*a(n-1)+3*a(n-2)-9*a(n-3)]` -/
def P6425093332686391569.Spec : Prop :=
  ∀ n, P6425093332686391569.a n = A167993 n

end A167993

/-! ## A167993.P5056573182283285543

`A122006(n)+a(n-1)` with `a(0)=0`
-/

namespace A167993.P5056573182283285543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A122006 n + a (n - 1)

end

end A167993.P5056573182283285543

namespace A167993

/-- `A122006(n)+a(n-1)` -/
def P5056573182283285543.Spec : Prop :=
  ∀ n, P5056573182283285543.a n = A167993 n

end A167993

/-! ## A167993.P11866773093366317780

`A124302(n)-A124302(∑[and(1, n)])`
-/

namespace A167993.P11866773093366317780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A124302 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167993.P11866773093366317780

namespace A167993

/-- `A124302(n)-A124302(∑[and(1, n)])` -/
def P11866773093366317780.Spec : Prop :=
  ∀ n, P11866773093366317780.a n = A167993 n

end A167993

/-! ## A167993.P10602484769325112790

`A124302(n)-A124302(A065033(n))`
-/

namespace A167993.P10602484769325112790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A124302 (A065033 n).toNat

end

end A167993.P10602484769325112790

namespace A167993

/-- `A124302(n)-A124302(A065033(n))` -/
def P10602484769325112790.Spec : Prop :=
  ∀ n, P10602484769325112790.a n = A167993 n

end A167993

/-! ## A167993.P3943302365323441650

`A124302(n)-A124302(A110654(n))`
-/

namespace A167993.P3943302365323441650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A124302 (A110654 n).toNat

end

end A167993.P3943302365323441650

namespace A167993

/-- `A124302(n)-A124302(A110654(n))` -/
def P3943302365323441650.Spec : Prop :=
  ∀ n, P3943302365323441650.a n = A167993 n

end A167993

/-! ## A167993.P13139026722737951577

`A124302(n)-A124302(∑[A000035(n)])`
-/

namespace A167993.P13139026722737951577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A124302 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167993.P13139026722737951577

namespace A167993

/-- `A124302(n)-A124302(∑[A000035(n)])` -/
def P13139026722737951577.Spec : Prop :=
  ∀ n, P13139026722737951577.a n = A167993 n

end A167993

/-! ## A167993.P1629468630334179227

`A124302(n)-A124302(A004526(n+1))`
-/

namespace A167993.P1629468630334179227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A124302 (A004526 (n + 1)).toNat

end

end A167993.P1629468630334179227

namespace A167993

/-- `A124302(n)-A124302(A004526(n+1))` -/
def P1629468630334179227.Spec : Prop :=
  ∀ n, P1629468630334179227.a n = A167993 n

end A167993

/-! ## A167993.P12458037810475221514

`A124302(n)-A124302(A080513(n)-1)`
-/

namespace A167993.P12458037810475221514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A124302 (A080513 n - 1).toNat

end

end A167993.P12458037810475221514

namespace A167993

/-- `A124302(n)-A124302(A080513(n)-1)` -/
def P12458037810475221514.Spec : Prop :=
  ∀ n, P12458037810475221514.a n = A167993 n

end A167993

/-! ## A167993.P5099215156690491970

`A124302(n)-A124302(n-A004526(n))`
-/

namespace A167993.P5099215156690491970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A124302 ((n : ℤ) - A004526 n).toNat

end

end A167993.P5099215156690491970

namespace A167993

/-- `A124302(n)-A124302(n-A004526(n))` -/
def P5099215156690491970.Spec : Prop :=
  ∀ n, P5099215156690491970.a n = A167993 n

end A167993

/-! ## A167993.P6951419061752098080

`A232801(A004273(n)-n)*A232801(n)`
-/

namespace A167993.P6951419061752098080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 (A004273 n - (n : ℤ)).toNat * A232801 n

end

end A167993.P6951419061752098080

namespace A167993

/-- `A232801(A004273(n)-n)*A232801(n)` -/
def P6951419061752098080.Spec : Prop :=
  ∀ n, P6951419061752098080.a n = A167993 n

end A167993

/-! ## A167993.P15914183123679185406

`(A122008(n+1)-A254006(n))/2`
-/

namespace A167993.P15914183123679185406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122008 (n + 1) - A254006 n : ℚ) / 2

end

end A167993.P15914183123679185406

namespace A167993

/-- `(A122008(n+1)-A254006(n))/2` -/
def P15914183123679185406.Spec : Prop :=
  ∀ n, P15914183123679185406.a n = (A167993 n : ℚ)

end A167993

/-! ## A167993.P15040499195038017130

`∑[A122006(n+1)]-A122006(n+1)`
-/

namespace A167993.P15040499195038017130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A122006 (n + 1)

end

end A167993.P15040499195038017130

namespace A167993

/-- `∑[A122006(n+1)]-A122006(n+1)` -/
def P15040499195038017130.Spec : Prop :=
  ∀ n, P15040499195038017130.a n = A167993 n

end A167993

/-! ## A167993.P12398092020739488353

`(A133494(n)-A133494(A065033(n)))/2`
-/

namespace A167993.P12398092020739488353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133494 n - A133494 (A065033 n).toNat : ℚ) / 2

end

end A167993.P12398092020739488353

namespace A167993

/-- `(A133494(n)-A133494(A065033(n)))/2` -/
def P12398092020739488353.Spec : Prop :=
  ∀ n, P12398092020739488353.a n = (A167993 n : ℚ)

end A167993

/-! ## A167993.P6630064682659788265

`A374721(n+1)-A032120(n)`
-/

namespace A167993.P6630064682659788265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374721 (n + 1) - A032120 n

end

end A167993.P6630064682659788265

namespace A167993

/-- `A374721(n+1)-A032120(n)` -/
def P6630064682659788265.Spec : Prop :=
  ∀ n, P6630064682659788265.a n = A167993 n

end A167993

/-! ## A167993.P13725249440904222732

`(A000244(n)-A032120(n))/3`
-/

namespace A167993.P13725249440904222732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n - A032120 n : ℚ) / 3

end

end A167993.P13725249440904222732

namespace A167993

/-- `(A000244(n)-A032120(n))/3` -/
def P13725249440904222732.Spec : Prop :=
  ∀ n, P13725249440904222732.a n = (A167993 n : ℚ)

end A167993

/-! ## A167993.P8133066755378161787

`(A000244(n)-A000244(A004526(n+1)))/6`
-/

namespace A167993.P8133066755378161787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n - A000244 (A004526 (n + 1)).toNat : ℚ) / 6

end

end A167993.P8133066755378161787

namespace A167993

/-- `(A000244(n)-A000244(A004526(n+1)))/6` -/
def P8133066755378161787.Spec : Prop :=
  ∀ n, P8133066755378161787.a n = (A167993 n : ℚ)

end A167993

/-!
# A167994: Numbers k with the property that the first digit of 2*k is the last digit of k.

The programs for A167994, the canonical program `A167994.P9212402622745255672` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167994 has offset 1).

The definition of A167994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167994.P7088494390256611187

`eq[A010879(n), A010879(A032764(n))]`
-/

namespace A167994.P7088494390256611187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A032764 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167994.P7088494390256611187

namespace A167994

/-- `eq[A010879(n), A010879(A032764(n))]` -/
def P7088494390256611187.Spec : Prop :=
  ∀ n, (P7088494390256611187.a n : ℤ) = A167994 (n + 1)

end A167994

/-! ## A167994.P9212402622745255672

`eq[n%10, A000030(A005408(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167994

/-- `eq[n%10, A000030(A005408(n))]` -/
def P9212402622745255672.Spec : Prop :=
  ∀ n, (P9212402622745255672.a n : ℤ) = A167994 (n + 1)

theorem P9212402622745255672.correct : P9212402622745255672.Spec := by
  intro n
  simp only [A167994, Nat.add_sub_cancel]

end A167994

/-! ## A167994.P3977010703862348122

`eq[A000030(2*n+1), A010879(n)]`
-/

namespace A167994.P3977010703862348122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167994.P3977010703862348122

namespace A167994

/-- `eq[A000030(2*n+1), A010879(n)]` -/
def P3977010703862348122.Spec : Prop :=
  ∀ n, (P3977010703862348122.a n : ℤ) = A167994 (n + 1)

end A167994

/-! ## A167994.P15028320852209846920

`eq[A010879(A004086(2*n+1)), A010879(n)]`
-/

namespace A167994.P15028320852209846920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004086 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167994.P15028320852209846920

namespace A167994

/-- `eq[A010879(A004086(2*n+1)), A010879(n)]` -/
def P15028320852209846920.Spec : Prop :=
  ∀ n, (P15028320852209846920.a n : ℤ) = A167994 (n + 1)

end A167994

/-! ## A167994.P3969794680324435035

`eq[A000030(2*n+1), A007376(A065650(n))]`
-/

namespace A167994.P3969794680324435035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A065650 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167994.P3969794680324435035

namespace A167994

/-- `eq[A000030(2*n+1), A007376(A065650(n))]` -/
def P3969794680324435035.Spec : Prop :=
  ∀ n, (P3969794680324435035.a n : ℤ) = A167994 (n + 1)

end A167994

/-!
# A167995: Total number of permutations on {1,2,...,n} that have a unique longest increasing subsequence.

The programs for A167995, there is no canonical definition to state claims against.
-/

/-! ## A167995.P15033648757571127765

`A008620(A247287(n+1)-A174297(2*(n+1)))`
-/

namespace A167995.P15033648757571127765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A247287 (n + 1) - A174297 (2 * (n + 1))).toNat

end

end A167995.P15033648757571127765

/-! ## A167995.P13928788256603336839

`A000608(∑[C(n, ceil(n/2)+2)!])`
-/

namespace A167995.P13928788256603336839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose n (⌈(n : ℚ) / 2⌉ + 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000608 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167995.P13928788256603336839

/-!
# A167996: Positive numbers n with property that first digit of 3*n = last digit of n.

The programs for A167996, the canonical program `A167996.P17083151300053585305` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167996 has offset 1).

The definition of A167996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167996.P17083151300053585305

`eq[A000030(A008486(n)), A010879(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167996

/-- `eq[A000030(A008486(n)), A010879(n)]` -/
def P17083151300053585305.Spec : Prop :=
  ∀ n, (P17083151300053585305.a n : ℤ) = A167996 (n + 1)

theorem P17083151300053585305.correct : P17083151300053585305.Spec := by
  intro n
  simp only [A167996, Nat.add_sub_cancel]

end A167996

/-! ## A167996.P16626513308829696732

`eq[A000030(A022433(n)), A010879(n)]`
-/

namespace A167996.P16626513308829696732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A022433 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167996.P16626513308829696732

namespace A167996

/-- `eq[A000030(A022433(n)), A010879(n)]` -/
def P16626513308829696732.Spec : Prop :=
  ∀ n, (P16626513308829696732.a n : ℤ) = A167996 (n + 1)

end A167996

/-! ## A167996.P3319112592386855646

`eq[A000030(A324142(n+1)), A010879(n)]`
-/

namespace A167996.P3319112592386855646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A324142 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167996.P3319112592386855646

namespace A167996

/-- `eq[A000030(A324142(n+1)), A010879(n)]` -/
def P3319112592386855646.Spec : Prop :=
  ∀ n, (P3319112592386855646.a n : ℤ) = A167996 (n + 1)

end A167996

/-! ## A167996.P11160481641119535948

`eq[A000030(A139222(n+1)), A010879(n)]`
-/

namespace A167996.P11160481641119535948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A139222 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167996.P11160481641119535948

namespace A167996

/-- `eq[A000030(A139222(n+1)), A010879(n)]` -/
def P11160481641119535948.Spec : Prop :=
  ∀ n, (P11160481641119535948.a n : ℤ) = A167996 (n + 1)

end A167996

/-! ## A167996.P7442107851591083539

`eq[A000030(A139249(n+1)), A010879(n)]`
-/

namespace A167996.P7442107851591083539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A139249 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167996.P7442107851591083539

namespace A167996

/-- `eq[A000030(A139249(n+1)), A010879(n)]` -/
def P7442107851591083539.Spec : Prop :=
  ∀ n, (P7442107851591083539.a n : ℤ) = A167996 (n + 1)

end A167996

/-!
# A167997: Numbers k with property that first digit of 4*k = last digit of k.

The programs for A167997, the canonical program `A167997.P11114227523397276923` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167997 has offset 1).

The definition of A167997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167997.P697734681213386918

`eq[A010879(A032764(2*n)), A010879(n)]`
-/

namespace A167997.P697734681213386918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A032764 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167997.P697734681213386918

namespace A167997

/-- `eq[A010879(A032764(2*n)), A010879(n)]` -/
def P697734681213386918.Spec : Prop :=
  ∀ n, (P697734681213386918.a n : ℤ) = A167997 (n + 1)

end A167997

/-! ## A167997.P11114227523397276923

`eq[n%10, A000030(A008574(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167997

/-- `eq[n%10, A000030(A008574(n))]` -/
def P11114227523397276923.Spec : Prop :=
  ∀ n, (P11114227523397276923.a n : ℤ) = A167997 (n + 1)

theorem P11114227523397276923.correct : P11114227523397276923.Spec := by
  intro n
  simp only [A167997, Nat.add_sub_cancel]

end A167997

/-! ## A167997.P15418056104441627242

`eq[A000030(4*n+1), A010879(n)]`
-/

namespace A167997.P15418056104441627242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167997.P15418056104441627242

namespace A167997

/-- `eq[A000030(4*n+1), A010879(n)]` -/
def P15418056104441627242.Spec : Prop :=
  ∀ n, (P15418056104441627242.a n : ℤ) = A167997 (n + 1)

end A167997

/-!
# A167998: Numbers k with property that first digit of 5*k = last digit of k.

The programs for A167998, the canonical program `A167998.P18279875355077747579` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167998 has offset 1).

The definition of A167998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167998.P18279875355077747579

`10*(n+1)+A000030(5*n+9)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167998

/-- `10*(n+1)+A000030(5*n+9)` -/
def P18279875355077747579.Spec : Prop :=
  ∀ n, P18279875355077747579.a n = A167998 (n + 1)

theorem P18279875355077747579.correct : P18279875355077747579.Spec := by
  intro n
  simp only [A167998, Nat.add_sub_cancel]

end A167998

/-! ## A167998.P10965283365282576212

`eq[A000030(A123108(n)), A010879(n)]`
-/

namespace A167998.P10965283365282576212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A123108 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167998.P10965283365282576212

namespace A167998

/-- `eq[A000030(A123108(n)), A010879(n)]` -/
def P10965283365282576212.Spec : Prop :=
  ∀ n, (P10965283365282576212.a n : ℤ) = A167998 (n + 1)

end A167998

/-! ## A167998.P13917251692948930507

`eq[n%10, A000030(A008706(n))]`
-/

namespace A167998.P13917251692948930507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167998.P13917251692948930507

namespace A167998

/-- `eq[n%10, A000030(A008706(n))]` -/
def P13917251692948930507.Spec : Prop :=
  ∀ n, (P13917251692948930507.a n : ℤ) = A167998 (n + 1)

end A167998

/-! ## A167998.P14617713024517663638

`eq[A000030(A008706(n)), A010879(n)]`
-/

namespace A167998.P14617713024517663638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167998.P14617713024517663638

namespace A167998

/-- `eq[A000030(A008706(n)), A010879(n)]` -/
def P14617713024517663638.Spec : Prop :=
  ∀ n, (P14617713024517663638.a n : ℤ) = A167998 (n + 1)

end A167998

/-! ## A167998.P1585726978702063359

`eq[A000030(A016873(n)), A010879(n)]`
-/

namespace A167998.P1585726978702063359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A016873 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167998.P1585726978702063359

namespace A167998

/-- `eq[A000030(A016873(n)), A010879(n)]` -/
def P1585726978702063359.Spec : Prop :=
  ∀ n, (P1585726978702063359.a n : ℤ) = A167998 (n + 1)

end A167998

/-! ## A167998.P1689576231591557315

`eq[A000030(A016885(n)), A010879(n)]`
-/

namespace A167998.P1689576231591557315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A016885 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167998.P1689576231591557315

namespace A167998

/-- `eq[A000030(A016885(n)), A010879(n)]` -/
def P1689576231591557315.Spec : Prop :=
  ∀ n, (P1689576231591557315.a n : ℤ) = A167998 (n + 1)

end A167998

/-! ## A167998.P5435566990115945335

`eq[A000030(A313826(n)), A010879(n)]`
-/

namespace A167998.P5435566990115945335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A313826 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167998.P5435566990115945335

namespace A167998

/-- `eq[A000030(A313826(n)), A010879(n)]` -/
def P5435566990115945335.Spec : Prop :=
  ∀ n, (P5435566990115945335.a n : ℤ) = A167998 (n + 1)

end A167998

/-! ## A167998.P16403820821340452543

`eq[A000030(A313827(n)), A010879(n)]`
-/

namespace A167998.P16403820821340452543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A313827 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167998.P16403820821340452543

namespace A167998

/-- `eq[A000030(A313827(n)), A010879(n)]` -/
def P16403820821340452543.Spec : Prop :=
  ∀ n, (P16403820821340452543.a n : ℤ) = A167998 (n + 1)

end A167998

/-! ## A167998.P17714703893530775665

`eq[A000030(A313829(n)), A010879(n)]`
-/

namespace A167998.P17714703893530775665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A313829 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167998.P17714703893530775665

namespace A167998

/-- `eq[A000030(A313829(n)), A010879(n)]` -/
def P17714703893530775665.Spec : Prop :=
  ∀ n, (P17714703893530775665.a n : ℤ) = A167998 (n + 1)

end A167998

/-! ## A167998.P4635570872173340029

`eq[A000030(A314742(n)), A010879(n)]`
-/

namespace A167998.P4635570872173340029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A314742 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167998.P4635570872173340029

namespace A167998

/-- `eq[A000030(A314742(n)), A010879(n)]` -/
def P4635570872173340029.Spec : Prop :=
  ∀ n, (P4635570872173340029.a n : ℤ) = A167998 (n + 1)

end A167998

/-!
# A167999: A permutation pi on [1,2,....n] has k(pi) longest increasing subsequences associated with it; 1<= k(pi)<= f(n) for some function f. The given sequence enumerates sum_pi k(pi).

The programs for A167999, there is no canonical definition to state claims against.
-/

/-! ## A167999.P4723290536178156479

`A172267(A117158(n+2))+1`
-/

namespace A167999.P4723290536178156479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172267 (A117158 (n + 2)).toNat + 1

end

end A167999.P4723290536178156479

/-! ## A167999.P13480877380947790882

`A000720(A376320(n)+A055830(3*n))`
-/

namespace A167999.P13480877380947790882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A376320 n + A055830 (3 * n)).toNat

end

end A167999.P13480877380947790882

