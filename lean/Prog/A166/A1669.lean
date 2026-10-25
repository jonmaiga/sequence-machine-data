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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A166901: Column 1 of triangle A166900.

The programs for A166901, there is no canonical definition to state claims against.
-/

/-! ## A166901.P7126051763066356990

`A166900(∑[n+1]+1)`
-/

namespace A166901.P7126051763066356990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A166901.P7126051763066356990

/-! ## A166901.P4382096053021471560

`record[A166900(∑[A035214(n)])]`
-/

namespace A166901.P4382096053021471560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166901.P4382096053021471560

/-! ## A166901.P7914738310946496626

`record[A166900(eq[1, A035214(n)])]`
-/

namespace A166901.P7914738310946496626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166901.P7914738310946496626

/-! ## A166901.P10983704226013262468

`record[A166900(A035214(n+1)+n)]`
-/

namespace A166901.P10983704226013262468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (A035214 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166901.P10983704226013262468

/-! ## A166901.P8474140382467363962

`record[A166900(and(n, A133607(n+1)))]`
-/

namespace A166901.P8474140382467363962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (Int.land (n : ℤ) (A133607 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166901.P8474140382467363962

/-!
# A166902: Column 2 of triangle A166900.

The programs for A166902, there is no canonical definition to state claims against.
-/

/-! ## A166902.P8170314308554994862

`A166900(∑[n+2]+3)`
-/

namespace A166902.P8170314308554994862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A166902.P8170314308554994862

/-! ## A166902.P9962610745090946786

`record[and(A133607(n), A166900(n))]`
-/

namespace A166902.P9962610745090946786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133607 n) (A166900 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166902.P9962610745090946786

/-! ## A166902.P676401773380321014

`record[gcd(A089962(n), A166900(n+2))]`
-/

namespace A166902.P676401773380321014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089962 n) (A166900 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166902.P676401773380321014

/-! ## A166902.P13415869085501052902

`A166900(A340266(n+1))%A158833(n+2)`
-/

namespace A166902.P13415869085501052902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166900 (A340266 (n + 1)).toNat) (A158833 (n + 2))

end

end A166902.P13415869085501052902

/-! ## A166902.P14723016259504826870

`record[A166900(record[A289621(n+1)])]`
-/

namespace A166902.P14723016259504826870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289621 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166902.P14723016259504826870

/-!
# A166903: Column 3 of triangle A166900.

The programs for A166903, there is no canonical definition to state claims against.
-/

/-! ## A166903.P2550801220491260408

`A166900(A167614(n+2))`
-/

namespace A166903.P2550801220491260408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (A167614 (n + 2)).toNat

end

end A166903.P2550801220491260408

/-! ## A166903.P16298439349586441769

`A166900(A141214(n)+6)`
-/

namespace A166903.P16298439349586441769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (A141214 n + 6).toNat

end

end A166903.P16298439349586441769

/-! ## A166903.P7444162255539910316

`A166900(A052905(n)+8)`
-/

namespace A166903.P7444162255539910316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (A052905 n + 8).toNat

end

end A166903.P7444162255539910316

/-! ## A166903.P11154321358971369043

`A166900(eq[3, A002262(n)])`
-/

namespace A166903.P11154321358971369043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166903.P11154321358971369043

/-! ## A166903.P3666147155720353939

`A166900(eq[4, A166918(n)])`
-/

namespace A166903.P3666147155720353939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166903.P3666147155720353939

/-!
# A166904: Row sums of triangle A166900.

The programs for A166904, there is no canonical definition to state claims against.
-/

/-! ## A166904.P12309256470269081906

`A001281(A052599(n)+A047863(n))`
-/

namespace A166904.P12309256470269081906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A052599 n + A047863 n).toNat

end

end A166904.P12309256470269081906

/-!
# A166906: Column 1 of triangle A166905.

The programs for A166906, there is no canonical definition to state claims against.
-/

/-! ## A166906.P11836700335025626811

`record[A166905(comp[∑[n]])]`
-/

namespace A166906.P11836700335025626811
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166905 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166906.P11836700335025626811

/-! ## A166906.P13657768511633097367

`A166905(∑[n+1]+1)`
-/

namespace A166906.P13657768511633097367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166905 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A166906.P13657768511633097367

/-! ## A166906.P12932141497347447383

`record[A051168(n)*A166905(n)]`
-/

namespace A166906.P12932141497347447383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A166905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166906.P12932141497347447383

/-! ## A166906.P8059645470199246088

`record[A114219(n)*A166905(n)]`
-/

namespace A166906.P8059645470199246088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114219 n * A166905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166906.P8059645470199246088

/-!
# A166907: Column 2 of triangle A166905.

The programs for A166907, there is no canonical definition to state claims against.
-/

/-! ## A166907.P7838324369548972775

`A166905(∑[n+2]+3)`
-/

namespace A166907.P7838324369548972775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166905 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A166907.P7838324369548972775

/-! ## A166907.P17614571400192440861

`record[gcd(A166905(n+3), A324609(n))]`
-/

namespace A166907.P17614571400192440861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166905 (n + 3)) (A324609 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166907.P17614571400192440861

/-! ## A166907.P11230833282548473800

`A166905(A340266(n+1))^ceil(sin(n)²)`
-/

namespace A166907.P11230833282548473800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166905 (A340266 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A166907.P11230833282548473800

/-!
# A166908: Column 3 of triangle A166905.

The programs for A166908, there is no canonical definition to state claims against.
-/

/-! ## A166908.P350576858565020591

`A166905(A167614(n+2))`
-/

namespace A166908.P350576858565020591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166905 (A167614 (n + 2)).toNat

end

end A166908.P350576858565020591

/-! ## A166908.P7542851298078947181

`A166905(A141214(n)+6)`
-/

namespace A166908.P7542851298078947181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166905 (A141214 n + 6).toNat

end

end A166908.P7542851298078947181

/-!
# A166909: Row sums of triangle A166905.

The programs for A166909, there is no canonical definition to state claims against.
-/

/-! ## A166909.P12944690756782253531

`A028310(A195895(n))+A000435(n+1)`
-/

namespace A166909.P12944690756782253531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A195895 n).toNat + A000435 (n + 1)

end

end A166909.P12944690756782253531

/-! ## A166909.P16791510525606190148

`A195895(A298671(n))+A000435(n+1)`
-/

namespace A166909.P16791510525606190148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195895 (A298671 n).toNat + A000435 (n + 1)

end

end A166909.P16791510525606190148

/-!
# A166911: a(n) = (9 + 14*n + 12*n^2 + 4*n^3)/3.

The programs for A166911, the canonical program `A166911.P10069587919531351192` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166911 has offset 0).

The definition of A166911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9+14*n+12*n²+4*n^3)/3` (program `A166911.P4453345313649044262`, by `A166911.P4453345313649044262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166911.P11302998298601779608

`n*(4*n²+12*n+14)/3+3`
-/

namespace A166911.P11302998298601779608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (4 * n ^ 2 + 12 * n + 14) : ℚ) / 3 + 3

end

end A166911.P11302998298601779608

namespace A166911

/-- `n*(4*n²+12*n+14)/3+3` -/
def P11302998298601779608.Spec : Prop :=
  ∀ n, P11302998298601779608.a n = (A166911 n : ℚ)

end A166911

/-! ## A166911.P4453345313649044262

`(9+14*n+12*n²+4*n^3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166911.P4453345313649044262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 + 14 * n + 12 * n ^ 2 + 4 * n ^ 3 : ℚ) / 3

end

end A166911.P4453345313649044262

namespace A166911

/-- `(9+14*n+12*n²+4*n^3)/3` -/
def P4453345313649044262.Spec : Prop :=
  ∀ n, P4453345313649044262.a n = (A166911 n : ℚ)

theorem P4453345313649044262.correct : P4453345313649044262.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166911, Nat.add_sub_cancel, A166911.P4453345313649044262.a, A166911.P10069587919531351192.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166911, Nat.add_sub_cancel, A166911.P4453345313649044262.a, A166911.P10069587919531351192.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166911

/-! ## A166911.P568760060185388626

`or(1, ∑[Δ[n²]²+1])`
-/

namespace A166911.P568760060185388626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166911.P568760060185388626

namespace A166911

/-- `or(1, ∑[Δ[n²]²+1])` -/
def P568760060185388626.Spec : Prop :=
  ∀ n, P568760060185388626.a n = A166911 n

end A166911

/-! ## A166911.P8446090571545297558

`∑[record[xor(3, xor(1, n+1)²)]]`
-/

namespace A166911.P8446090571545297558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.xor 1 (n + 1) ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166911.P8446090571545297558

namespace A166911

/-- `∑[record[xor(3, xor(1, n+1)²)]]` -/
def P8446090571545297558.Spec : Prop :=
  ∀ n, (P8446090571545297558.a n : ℤ) = A166911 n

end A166911

/-! ## A166911.P8617397748689037388

`xor(1, ∑[(2*n+1)²+1])`
-/

namespace A166911.P8617397748689037388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166911.P8617397748689037388

namespace A166911

/-- `xor(1, ∑[(2*n+1)²+1])` -/
def P8617397748689037388.Spec : Prop :=
  ∀ n, (P8617397748689037388.a n : ℤ) = A166911 n

end A166911

/-! ## A166911.P912905235038410444

`∑[C(2, n+1)!+(2*n+1)²]`
-/

namespace A166911.P912905235038410444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (n + 1)) + (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166911.P912905235038410444

namespace A166911

/-- `∑[C(2, n+1)!+(2*n+1)²]` -/
def P912905235038410444.Spec : Prop :=
  ∀ n, (P912905235038410444.a n : ℤ) = A166911 n

end A166911

/-! ## A166911.P628398000240094021

`abs((2*n+1)²+a(n-1)+1)` with `a(0)=3`
-/

namespace A166911.P628398000240094021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (2 * n + 1) ^ 2 + (a (n - 1) + 1)

end

end A166911.P628398000240094021

namespace A166911

/-- `abs((2*n+1)²+a(n-1)+1)` -/
def P628398000240094021.Spec : Prop :=
  ∀ n, (P628398000240094021.a n : ℤ) = A166911 n

end A166911

/-! ## A166911.P10069587919531351192

`floor((2*n+1)²+a(n-1)+1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166911

/-- `floor((2*n+1)²+a(n-1)+1)` -/
def P10069587919531351192.Spec : Prop :=
  ∀ n, (P10069587919531351192.a n : ℤ) = A166911 n

theorem P10069587919531351192.correct : P10069587919531351192.Spec := by
  intro n
  simp only [A166911]

end A166911

/-! ## A166911.P3139294067164032684

`∑[C(2, n+2)+(2*n+1)²+1]`
-/

namespace A166911.P3139294067164032684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + ((2 * n + 1) ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166911.P3139294067164032684

namespace A166911

/-- `∑[C(2, n+2)+(2*n+1)²+1]` -/
def P3139294067164032684.Spec : Prop :=
  ∀ n, (P3139294067164032684.a n : ℤ) = A166911 n

end A166911

/-! ## A166911.P14445635409732542473

`ceil((2*n+1)²+a(n-1)+1)` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A166911.P14445635409732542473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (2 * n + 1) ^ 2 + (a (n - 1) + 1)

end

end A166911.P14445635409732542473

namespace A166911

/-- `ceil((2*n+1)²+a(n-1)+1)` -/
def P14445635409732542473.Spec : Prop :=
  ∀ n, (P14445635409732542473.a n : ℤ) = A166911 n

end A166911

/-! ## A166911.P2478210276007965351

`round((2*n+1)²+a(n-1)+1)` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A166911.P2478210276007965351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (2 * n + 1) ^ 2 + (a (n - 1) + 1)

end

end A166911.P2478210276007965351

namespace A166911

/-- `round((2*n+1)²+a(n-1)+1)` -/
def P2478210276007965351.Spec : Prop :=
  ∀ n, (P2478210276007965351.a n : ℤ) = A166911 n

end A166911

/-! ## A166911.P10335781279737965471

`∑[(ceil(sqrt(a(n-1)+1))+1)²+1]` with `a(0)=3`
-/

namespace A166911.P10335781279737965471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  (⌈Real.sqrt (f1 (n - 1) + 1 : ℝ)⌉ + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166911.P10335781279737965471

namespace A166911

/-- `∑[(ceil(sqrt(a(n-1)+1))+1)²+1]` -/
def P10335781279737965471.Spec : Prop :=
  ∀ n, P10335781279737965471.a n = A166911 n

end A166911

/-! ## A166911.P11617917285799858650

`gcd(∑[(2*n+1)²]+n+2, and(1, 2*n))`
-/

namespace A166911.P11617917285799858650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2)) (Nat.land 1 (2 * n))

end

end A166911.P11617917285799858650

namespace A166911

/-- `gcd(∑[(2*n+1)²]+n+2, and(1, 2*n))` -/
def P11617917285799858650.Spec : Prop :=
  ∀ n, (P11617917285799858650.a n : ℤ) = A166911 n

end A166911

/-! ## A166911.P2866783082797866436

`(∑[(2*n+1)²]+n+2)*gcd(n, n+1)`
-/

namespace A166911.P2866783082797866436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2)) * Nat.gcd n (n + 1)

end

end A166911.P2866783082797866436

namespace A166911

/-- `(∑[(2*n+1)²]+n+2)*gcd(n, n+1)` -/
def P2866783082797866436.Spec : Prop :=
  ∀ n, (P2866783082797866436.a n : ℤ) = A166911 n

end A166911

/-! ## A166911.P9300822868867123174

`(∑[(2*n+1)²]+n+2)*and(1, 2*n+1)`
-/

namespace A166911.P9300822868867123174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2)) * Nat.land 1 (2 * n + 1)

end

end A166911.P9300822868867123174

namespace A166911

/-- `(∑[(2*n+1)²]+n+2)*and(1, 2*n+1)` -/
def P9300822868867123174.Spec : Prop :=
  ∀ n, (P9300822868867123174.a n : ℤ) = A166911 n

end A166911

/-! ## A166911.P7326654059425204331

`ceil(A171272(n+1)/2)`
-/

namespace A166911.P7326654059425204331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171272 (n + 1) : ℚ) / 2⌉

end

end A166911.P7326654059425204331

namespace A166911

/-- `ceil(A171272(n+1)/2)` -/
def P7326654059425204331.Spec : Prop :=
  ∀ n, P7326654059425204331.a n = A166911 n

end A166911

/-! ## A166911.P2045858200084694014

`A143938(n+1)%A130809(n+3)`
-/

namespace A166911.P2045858200084694014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143938 (n + 1)) (A130809 (n + 3))

end

end A166911.P2045858200084694014

namespace A166911

/-- `A143938(n+1)%A130809(n+3)` -/
def P2045858200084694014.Spec : Prop :=
  ∀ n, P2045858200084694014.a n = A166911 n

end A166911

/-! ## A166911.P521220708465692058

`A168388(2*(n+1))`
-/

namespace A166911.P521220708465692058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168388 (2 * (n + 1))

end

end A166911.P521220708465692058

namespace A166911

/-- `A168388(2*(n+1))` -/
def P521220708465692058.Spec : Prop :=
  ∀ n, P521220708465692058.a n = A166911 n

end A166911

/-!
# A166912: a(n) = 20*a(n-1) - 64*a(n-2) - 225 for n > 2; a(0) = 106, a(1) = 8075, a(2) = 114235.

The programs for A166912, there is no canonical definition to state claims against.
-/

/-! ## A166912.P7146010280666371786

`A075153(6*n)/3`
-/

namespace A166912.P7146010280666371786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075153 (6 * n) : ℚ) / 3

end

end A166912.P7146010280666371786

/-!
# A166913: a(n) = 20*a(n-1) - 64*a(n-2) - 150 for n > 2; a(0) = 357, a(1) = 14450, a(2) = 221650.

The programs for A166913, there is no canonical definition to state claims against.
-/

/-! ## A166913.P5760731948322217243

`A075153(6*n+1)/3`
-/

namespace A166913.P5760731948322217243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075153 (6 * n + 1) : ℚ) / 3

end

end A166913.P5760731948322217243

/-!
# A166914: a(n) = 20*a(n-1) - 64*a(n-2) for n > 1; a(0) = 21, a(1) = 340.

The programs for A166914, the canonical program `A166914.P5287059464645144006` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166914 has offset 0).

The definition of A166914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-64*a(n-2)` (program `A166914.P5287059464645144006`, by `A166914.P5287059464645144006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166914.P5232047019543200332

`(64*16^n-4^n)/3`
-/

namespace A166914.P5232047019543200332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((64 * 16 ^ n : ℤ) - (4 ^ n : ℤ) : ℚ) / 3

end

end A166914.P5232047019543200332

namespace A166914

/-- `(64*16^n-4^n)/3` -/
def P5232047019543200332.Spec : Prop :=
  ∀ n, P5232047019543200332.a n = (A166914 n : ℚ)

theorem P5232047019543200332.correct : P5232047019543200332.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A166914, Nat.add_sub_cancel, A166914.P5232047019543200332.a, A166914.P5287059464645144006.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A166914, Nat.add_sub_cancel, A166914.P5232047019543200332.a, A166914.P5287059464645144006.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166914

/-! ## A166914.P5287059464645144006

`20*a(n-1)-64*a(n-2)` with `a(0)=21, a(1)=340`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166914

/-- `20*a(n-1)-64*a(n-2)` -/
def P5287059464645144006.Spec : Prop :=
  ∀ n, P5287059464645144006.a n = A166914 n

theorem P5287059464645144006.correct : P5287059464645144006.Spec := by
  intro n
  simp only [A166914]

end A166914

/-! ## A166914.P15729629839749405135

`16*a(n-1)+4^n` with `a(0)=21`
-/

namespace A166914.P15729629839749405135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21] fun n a =>
  16 * a (n - 1) + 4 ^ n

end

end A166914.P15729629839749405135

namespace A166914

/-- `16*a(n-1)+4^n` -/
def P15729629839749405135.Spec : Prop :=
  ∀ n, (P15729629839749405135.a n : ℤ) = A166914 n

end A166914

/-! ## A166914.P14985737805375301626

`or(16*a(n-1), 4^n)` with `a(0)=21`
-/

namespace A166914.P14985737805375301626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21] fun n a =>
  Nat.lor (16 * a (n - 1)) (4 ^ n)

end

end A166914.P14985737805375301626

namespace A166914

/-- `or(16*a(n-1), 4^n)` -/
def P14985737805375301626.Spec : Prop :=
  ∀ n, (P14985737805375301626.a n : ℤ) = A166914 n

end A166914

/-! ## A166914.P390423241306717437

`A166984(n+1)+A000302(n)`
-/

namespace A166914.P390423241306717437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166984 (n + 1) + A000302 n

end

end A166914.P390423241306717437

namespace A166914

/-- `A166984(n+1)+A000302(n)` -/
def P390423241306717437.Spec : Prop :=
  ∀ n, P390423241306717437.a n = A166914 n

end A166914

/-! ## A166914.P16398425555321281703

`A144864(n+2)-A002450(n)`
-/

namespace A166914.P16398425555321281703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144864 (n + 2) - A002450 n

end

end A166914.P16398425555321281703

namespace A166914

/-- `A144864(n+2)-A002450(n)` -/
def P16398425555321281703.Spec : Prop :=
  ∀ n, P16398425555321281703.a n = A166914 n

end A166914

/-! ## A166914.P15490820149963940882

`A000302(n)*A002450(n+3)`
-/

namespace A166914.P15490820149963940882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A002450 (n + 3)

end

end A166914.P15490820149963940882

namespace A166914

/-- `A000302(n)*A002450(n+3)` -/
def P15490820149963940882.Spec : Prop :=
  ∀ n, P15490820149963940882.a n = A166914 n

end A166914

/-! ## A166914.P12727893534897209642

`or(A166984(n+1), A166984(n))`
-/

namespace A166914.P12727893534897209642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A166984 (n + 1)) (A166984 n)

end

end A166914.P12727893534897209642

namespace A166914

/-- `or(A166984(n+1), A166984(n))` -/
def P12727893534897209642.Spec : Prop :=
  ∀ n, P12727893534897209642.a n = A166914 n

end A166914

/-! ## A166914.P8508984273115690783

`A166984(n+1)+A000079(n)²`
-/

namespace A166914.P8508984273115690783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166984 (n + 1) + A000079 n ^ 2

end

end A166914.P8508984273115690783

namespace A166914

/-- `A166984(n+1)+A000079(n)²` -/
def P8508984273115690783.Spec : Prop :=
  ∀ n, P8508984273115690783.a n = A166914 n

end A166914

/-! ## A166914.P3121534124970866161

`A000079(n)²*A002450(n+3)`
-/

namespace A166914.P3121534124970866161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A002450 (n + 3)

end

end A166914.P3121534124970866161

namespace A166914

/-- `A000079(n)²*A002450(n+3)` -/
def P3121534124970866161.Spec : Prop :=
  ∀ n, P3121534124970866161.a n = A166914 n

end A166914

/-!
# A166915: a(n) = 20*a(n-1) - 64*a(n-2) - 45 for n>1; a(0) = 399, a(1) = 5695.

The programs for A166915, there is no canonical definition to state claims against.
-/

/-! ## A166915.P16122885643913007525

`(A000225(2*(n+2))+4)*A002450(n+3)`
-/

namespace A166915.P16122885643913007525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (2 * (n + 2)) + 4) * A002450 (n + 3)

end

end A166915.P16122885643913007525

/-! ## A166915.P330166002407603853

`(A000079(n+2)²+3)*A086893(2*n+5)`
-/

namespace A166915.P330166002407603853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 2) ^ 2 + 3) * A086893 (2 * n + 5)

end

end A166915.P330166002407603853

/-! ## A166915.P16666369456494843140

`A192465(2*n+5)+Δ[A000295(2*(n+2))]`
-/

namespace A166915.P16666369456494843140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192465 (2 * n + 5) + (f1 (n + 1) - f1 n)

end

end A166915.P16666369456494843140

/-! ## A166915.P6216441196872111926

`(A000079(2*(n+2))+3)*A086893(2*n+5)`
-/

namespace A166915.P6216441196872111926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * (n + 2)) + 3) * A086893 (2 * n + 5)

end

end A166915.P6216441196872111926

/-! ## A166915.P12700341918293644671

`A006008(2^(n+3))-1`
-/

namespace A166915.P12700341918293644671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 (2 ^ (n + 3)) - 1

end

end A166915.P12700341918293644671

/-!
# A166916: a(n) = 20*a(n-1) - 64*a(n-2) - 15 for n > 1; a(0) = 357, a(1) = 5525.

The programs for A166916, there is no canonical definition to state claims against.
-/

/-! ## A166916.P13414256937216853567

`A076024(2*(n+3))/2`
-/

namespace A166916.P13414256937216853567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076024 (2 * (n + 3)) : ℚ) / 2

end

end A166916.P13414256937216853567

/-! ## A166916.P14812746879796716498

`floor(A076024(A005843(n+3))/2)`
-/

namespace A166916.P14812746879796716498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076024 (A005843 (n + 3)).toNat : ℚ) / 2⌋

end

end A166916.P14812746879796716498

/-! ## A166916.P1748186477965859258

`A002450(n+3)*A052539(n+2)`
-/

namespace A166916.P1748186477965859258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 3) * A052539 (n + 2)

end

end A166916.P1748186477965859258

/-! ## A166916.P5965293769613498907

`A002450(n+3)*A092896(n+3)`
-/

namespace A166916.P5965293769613498907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 3) * A092896 (n + 3)

end

end A166916.P5965293769613498907

/-! ## A166916.P16047270172644552290

`A171471(2*n+3)/dr(A171471(2*n+3))`
-/

namespace A166916.P16047270172644552290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171471 (2 * n + 3) : ℚ) / (SequenceMachineLib.digitalRoot (A171471 (2 * n + 3)) : ℚ)

end

end A166916.P16047270172644552290

/-! ## A166916.P9565548217315387690

`A103454(n+2)+A078008(A016825(n+2))`
-/

namespace A166916.P9565548217315387690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103454 (n + 2) + A078008 (A016825 (n + 2)).toNat

end

end A166916.P9565548217315387690

/-!
# A166917: a(n) = 20*a(n-1) - 64*a(n-2) for n > 1; a(0) = 85, a(1) = 1364.

The programs for A166917, the canonical program `A166917.P9713993939114585952` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166917 has offset 0).

The definition of A166917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166917.P9713993939114585952

`(256*16^n-4^n)/3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A166917

/-- `(256*16^n-4^n)/3` -/
def P9713993939114585952.Spec : Prop :=
  ∀ n, P9713993939114585952.a n = (A166917 n : ℚ)

end A166917

/-! ## A166917.P13309504521421363238

`A195156(n+2)-A002450(n)`
-/

namespace A166917.P13309504521421363238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195156 (n + 2) - A002450 n

end

end A166917.P13309504521421363238

namespace A166917

/-- `A195156(n+2)-A002450(n)` -/
def P13309504521421363238.Spec : Prop :=
  ∀ n, P13309504521421363238.a n = A166917 n

end A166917

/-! ## A166917.P13581062007912028229

`A000302(n)*A002450(n+4)`
-/

namespace A166917.P13581062007912028229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A002450 (n + 4)

end

end A166917.P13581062007912028229

namespace A166917

/-- `A000302(n)*A002450(n+4)` -/
def P13581062007912028229.Spec : Prop :=
  ∀ n, P13581062007912028229.a n = A166917 n

end A166917

/-! ## A166917.P7112358837371677654

`A000079(n)²*A002450(n+4)`
-/

namespace A166917.P7112358837371677654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A002450 (n + 4)

end

end A166917.P7112358837371677654

namespace A166917

/-- `A000079(n)²*A002450(n+4)` -/
def P7112358837371677654.Spec : Prop :=
  ∀ n, P7112358837371677654.a n = A166917 n

end A166917

/-! ## A166917.P10429172531391860322

`Δ[A002450(n)]*A002450(n+4)`
-/

namespace A166917.P10429172531391860322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002450 (n + 4)

end

end A166917.P10429172531391860322

namespace A166917

/-- `Δ[A002450(n)]*A002450(n+4)` -/
def P10429172531391860322.Spec : Prop :=
  ∀ n, P10429172531391860322.a n = A166917 n

end A166917

/-! ## A166917.P2406532759432049422

`A002450(2*(n+2))-A002450(n)`
-/

namespace A166917.P2406532759432049422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (2 * (n + 2)) - A002450 n

end

end A166917.P2406532759432049422

namespace A166917

/-- `A002450(2*(n+2))-A002450(n)` -/
def P2406532759432049422.Spec : Prop :=
  ∀ n, P2406532759432049422.a n = A166917 n

end A166917

/-! ## A166917.P3925561304579554426

`A091881(n+2)-A005578(2*n)`
-/

namespace A166917.P3925561304579554426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091881 (n + 2) - A005578 (2 * n)

end

end A166917.P3925561304579554426

namespace A166917

/-- `A091881(n+2)-A005578(2*n)` -/
def P3925561304579554426.Spec : Prop :=
  ∀ n, P3925561304579554426.a n = A166917 n

end A166917

/-! ## A166917.P2045702185306615573

`A091881(n+2)-A078008(2*n)`
-/

namespace A166917.P2045702185306615573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091881 (n + 2) - A078008 (2 * n)

end

end A166917.P2045702185306615573

namespace A166917

/-- `A091881(n+2)-A078008(2*n)` -/
def P2045702185306615573.Spec : Prop :=
  ∀ n, P2045702185306615573.a n = A166917 n

end A166917

/-! ## A166917.P5274403198383479825

`A195156(n+2)-A001045(2*n)`
-/

namespace A166917.P5274403198383479825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195156 (n + 2) - A001045 (2 * n)

end

end A166917.P5274403198383479825

namespace A166917

/-- `A195156(n+2)-A001045(2*n)` -/
def P5274403198383479825.Spec : Prop :=
  ∀ n, P5274403198383479825.a n = A166917 n

end A166917

/-! ## A166917.P314101634437345410

`A195156(n+2)-A136324(2*n)`
-/

namespace A166917.P314101634437345410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195156 (n + 2) - A136324 (2 * n)

end

end A166917.P314101634437345410

namespace A166917

/-- `A195156(n+2)-A136324(2*n)` -/
def P314101634437345410.Spec : Prop :=
  ∀ n, P314101634437345410.a n = A166917 n

end A166917

/-!
# A166918: Triangle T(n,k) read by rows: T(n,0) = n mod 2. T(n,k) = 2^(k-1), 0

The programs for A166918, the canonical program `A166918.P4761057443469163411` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166918 has offset 0).

The definition of A166918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166918.P9506136849189289542

`xor(char[∑[n]], A166692(n))`
-/

namespace A166918.P9506136849189289542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A166692 n)

end

end A166918.P9506136849189289542

namespace A166918

/-- `xor(char[∑[n]], A166692(n))` -/
def P9506136849189289542.Spec : Prop :=
  ∀ n, P9506136849189289542.a n = A166918 n

end A166918

/-! ## A166918.P4761057443469163411

`A059268(n)-A166692(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A166918

/-- `A059268(n)-A166692(n)` -/
def P4761057443469163411.Spec : Prop :=
  ∀ n, P4761057443469163411.a n = A166918 n

theorem P4761057443469163411.correct : P4761057443469163411.Spec := by
  intro n
  simp only [A166918]

end A166918

/-! ## A166918.P13219493589454441669

`A166692(n)-A197870(n)`
-/

namespace A166918.P13219493589454441669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 n - A197870 n

end

end A166918.P13219493589454441669

namespace A166918

/-- `A166692(n)-A197870(n)` -/
def P13219493589454441669.Spec : Prop :=
  ∀ n, P13219493589454441669.a n = A166918 n

end A166918

/-! ## A166918.P9992805343731715853

`A232089(n)%A099605(n)`
-/

namespace A166918.P9992805343731715853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232089 n) (A099605 n)

end

end A166918.P9992805343731715853

namespace A166918

/-- `A232089(n)%A099605(n)` -/
def P9992805343731715853.Spec : Prop :=
  ∀ n, P9992805343731715853.a n = A166918 n

end A166918

/-! ## A166918.P8069982923909722701

`(A059268(n)-A197870(n))/2`
-/

namespace A166918.P8069982923909722701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n - A197870 n : ℚ) / 2

end

end A166918.P8069982923909722701

namespace A166918

/-- `(A059268(n)-A197870(n))/2` -/
def P8069982923909722701.Spec : Prop :=
  ∀ n, P8069982923909722701.a n = (A166918 n : ℚ)

end A166918

/-! ## A166918.P5073743779040496547

`A166444(A002260(n+1)-A197870(n))`
-/

namespace A166918.P5073743779040496547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A002260 (n + 1) - A197870 n).toNat

end

end A166918.P5073743779040496547

namespace A166918

/-- `A166444(A002260(n+1)-A197870(n))` -/
def P5073743779040496547.Spec : Prop :=
  ∀ n, P5073743779040496547.a n = A166918 n

end A166918

/-! ## A166918.P13473649886004100667

`A166692(A066182(n+1))`
-/

namespace A166918.P13473649886004100667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 (A066182 (n + 1)).toNat

end

end A166918.P13473649886004100667

namespace A166918

/-- `A166692(A066182(n+1))` -/
def P13473649886004100667.Spec : Prop :=
  ∀ n, P13473649886004100667.a n = A166918 n

end A166918

/-! ## A166918.P6802100692755309511

`A166692(comp[∑[n-1]])`
-/

namespace A166918.P6802100692755309511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A166918.P6802100692755309511

namespace A166918

/-- `A166692(comp[∑[n-1]])` -/
def P6802100692755309511.Spec : Prop :=
  ∀ n, P6802100692755309511.a n = A166918 n

end A166918

/-! ## A166918.P1883608076898071801

`A166692(A007401(n+1)+1)-A166692(n)`
-/

namespace A166918.P1883608076898071801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 (A007401 (n + 1) + 1).toNat - A166692 n

end

end A166918.P1883608076898071801

namespace A166918

/-- `A166692(A007401(n+1)+1)-A166692(n)` -/
def P1883608076898071801.Spec : Prop :=
  ∀ n, P1883608076898071801.a n = A166918 n

end A166918

/-! ## A166918.P13067400030335365725

`gcd(A123588(n), A140531(n))`
-/

namespace A166918.P13067400030335365725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123588 n) (A140531 n)

end

end A166918.P13067400030335365725

namespace A166918

/-- `gcd(A123588(n), A140531(n))` -/
def P13067400030335365725.Spec : Prop :=
  ∀ n, (P13067400030335365725.a n : ℤ) = A166918 n

end A166918

/-! ## A166918.P10674017349736245232

`A000010(A059268(n))%A099605(n)`
-/

namespace A166918.P10674017349736245232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A059268 n).toNat) (A099605 n)

end

end A166918.P10674017349736245232

namespace A166918

/-- `A000010(A059268(n))%A099605(n)` -/
def P10674017349736245232.Spec : Prop :=
  ∀ n, P10674017349736245232.a n = A166918 n

end A166918

/-! ## A166918.P4390915831202353479

`A004525(A166692(A080036(n)))`
-/

namespace A166918.P4390915831202353479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A166692 (A080036 n).toNat).toNat

end

end A166918.P4390915831202353479

namespace A166918

/-- `A004525(A166692(A080036(n)))` -/
def P4390915831202353479.Spec : Prop :=
  ∀ n, P4390915831202353479.a n = A166918 n

end A166918

/-!
# A166920: a(n) = 2^n - (1 + (-1)^n)/2.

The programs for A166920, the canonical program `A166920.P15888422005385698700` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166920 has offset 0).

The definition of A166920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-(1+(-1)^n)/2` (program `A166920.P5916192828448118755`, by `A166920.P5916192828448118755.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166920.P5916192828448118755

`2^n-(1+(-1)^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166920.P5916192828448118755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - (1 + (-1) ^ n : ℚ) / 2

end

end A166920.P5916192828448118755

namespace A166920

/-- `2^n-(1+(-1)^n)/2` -/
def P5916192828448118755.Spec : Prop :=
  ∀ n, P5916192828448118755.a n = (A166920 n : ℚ)

theorem P5916192828448118755.correct : P5916192828448118755.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A166920, Nat.add_sub_cancel, A166920.P5916192828448118755.a, A166920.P15888422005385698700.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A166920, Nat.add_sub_cancel, A166920.P5916192828448118755.a, A166920.P15888422005385698700.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166920

/-! ## A166920.P7925092416385439026

`∑[ogf((-2x+x^2)/(-1+x+2x^2))]`
-/

namespace A166920.P7925092416385439026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166920.P7925092416385439026

namespace A166920

/-- `∑[ogf((-2x+x^2)/(-1+x+2x^2))]` -/
def P7925092416385439026.Spec : Prop :=
  ∀ n, P7925092416385439026.a n = A166920 n

end A166920

/-! ## A166920.P4058910691541447999

`ogf((2x-x^2)/(1-2x-x^2+2x^3))`
-/

namespace A166920.P4058910691541447999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -2, -1, 2] n

end

end A166920.P4058910691541447999

namespace A166920

/-- `ogf((2x-x^2)/(1-2x-x^2+2x^3))` -/
def P4058910691541447999.Spec : Prop :=
  ∀ n, P4058910691541447999.a n = A166920 n

end A166920

/-! ## A166920.P2697311444198411585

`abs(2^n-(n+1)%2)`
-/

namespace A166920.P2697311444198411585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - (((n + 1) % 2 : ℕ) : ℤ)|

end

end A166920.P2697311444198411585

namespace A166920

/-- `abs(2^n-(n+1)%2)` -/
def P2697311444198411585.Spec : Prop :=
  ∀ n, P2697311444198411585.a n = A166920 n

end A166920

/-! ## A166920.P15826167264239651726

`abs(and(1, n+1)-2^n)`
-/

namespace A166920.P15826167264239651726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.land 1 (n + 1) : ℤ) - (2 ^ n : ℤ)|

end

end A166920.P15826167264239651726

namespace A166920

/-- `abs(and(1, n+1)-2^n)` -/
def P15826167264239651726.Spec : Prop :=
  ∀ n, P15826167264239651726.a n = A166920 n

end A166920

/-! ## A166920.P12324232514550576639

`abs(2^n-and(1, n-1))`
-/

namespace A166920.P12324232514550576639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - Int.land 1 ((n : ℤ) - 1)|

end

end A166920.P12324232514550576639

namespace A166920

/-- `abs(2^n-and(1, n-1))` -/
def P12324232514550576639.Spec : Prop :=
  ∀ n, P12324232514550576639.a n = A166920 n

end A166920

/-! ## A166920.P8507075883753371110

`∑[a(n-1)+2*a(n-2)]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A166920.P8507075883753371110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166920.P8507075883753371110

namespace A166920

/-- `∑[a(n-1)+2*a(n-2)]` -/
def P8507075883753371110.Spec : Prop :=
  ∀ n, (P8507075883753371110.a n : ℤ) = A166920 n

end A166920

/-! ## A166920.P15888422005385698700

`floor(2*a(n-2)+a(n-1)+1)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166920

/-- `floor(2*a(n-2)+a(n-1)+1)` -/
def P15888422005385698700.Spec : Prop :=
  ∀ n, (P15888422005385698700.a n : ℤ) = A166920 n

theorem P15888422005385698700.correct : P15888422005385698700.Spec := by
  intro n
  simp only [A166920]

end A166920

/-! ## A166920.P5850657870767105752

`2*(a(n-2)+(a(n-1)+1)/2)` with `a(0)=0, a(1)=2`
-/

namespace A166920.P5850657870767105752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * (a (n - 2) + (a (n - 1) + 1) / 2)

end

end A166920.P5850657870767105752

namespace A166920

/-- `2*(a(n-2)+(a(n-1)+1)/2)` -/
def P5850657870767105752.Spec : Prop :=
  ∀ n, P5850657870767105752.a n = (A166920 n : ℚ)

end A166920

/-! ## A166920.P4070197722564389196

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A166920.P4070197722564389196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166920.P4070197722564389196

namespace A166920

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P4070197722564389196.Spec : Prop :=
  ∀ n, (P4070197722564389196.a n : ℤ) = A166920 n

end A166920

/-! ## A166920.P9244284662030137690

`floor(a(n-1)+a(n-2)+a(n-2)+1)` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A166920.P9244284662030137690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + 1))

end

end A166920.P9244284662030137690

namespace A166920

/-- `floor(a(n-1)+a(n-2)+a(n-2)+1)` -/
def P9244284662030137690.Spec : Prop :=
  ∀ n, (P9244284662030137690.a n : ℤ) = A166920 n

end A166920

/-! ## A166920.P8517127692688872255

`abs(A140253(n)+1)`
-/

namespace A166920.P8517127692688872255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140253 n + 1|

end

end A166920.P8517127692688872255

namespace A166920

/-- `abs(A140253(n)+1)` -/
def P8517127692688872255.Spec : Prop :=
  ∀ n, P8517127692688872255.a n = A166920 n

end A166920

/-! ## A166920.P4142936796528063228

`A106624(or(1, n)+n)`
-/

namespace A166920.P4142936796528063228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (Nat.lor 1 n + n)

end

end A166920.P4142936796528063228

namespace A166920

/-- `A106624(or(1, n)+n)` -/
def P4142936796528063228.Spec : Prop :=
  ∀ n, P4142936796528063228.a n = A166920 n

end A166920

/-! ## A166920.P10887667747820622176

`A106624(A042948(n)+1)`
-/

namespace A166920.P10887667747820622176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A042948 n + 1).toNat

end

end A166920.P10887667747820622176

namespace A166920

/-- `A106624(A042948(n)+1)` -/
def P10887667747820622176.Spec : Prop :=
  ∀ n, P10887667747820622176.a n = A166920 n

end A166920

/-! ## A166920.P9687904196292405964

`A106624(A042963(n+1))`
-/

namespace A166920.P9687904196292405964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A042963 (n + 1)).toNat

end

end A166920.P9687904196292405964

namespace A166920

/-- `A106624(A042963(n+1))` -/
def P9687904196292405964.Spec : Prop :=
  ∀ n, P9687904196292405964.a n = A166920 n

end A166920

/-! ## A166920.P2151264797816202157

`A106624(xor(1, A014601(n)))`
-/

namespace A166920.P2151264797816202157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (Int.xor 1 (A014601 n)).toNat

end

end A166920.P2151264797816202157

namespace A166920

/-- `A106624(xor(1, A014601(n)))` -/
def P2151264797816202157.Spec : Prop :=
  ∀ n, P2151264797816202157.a n = A166920 n

end A166920

/-! ## A166920.P6362250498253279973

`xor(A000035(n), A062510(n))`
-/

namespace A166920.P6362250498253279973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A062510 n)

end

end A166920.P6362250498253279973

namespace A166920

/-- `xor(A000035(n), A062510(n))` -/
def P6362250498253279973.Spec : Prop :=
  ∀ n, P6362250498253279973.a n = A166920 n

end A166920

/-! ## A166920.P2072914254637982779

`xor(A255047(n), A277936(n))`
-/

namespace A166920.P2072914254637982779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A255047 n) (A277936 n)

end

end A166920.P2072914254637982779

namespace A166920

/-- `xor(A255047(n), A277936(n))` -/
def P2072914254637982779.Spec : Prop :=
  ∀ n, P2072914254637982779.a n = A166920 n

end A166920

/-! ## A166920.P1176956157742804785

`lcm(A066532(n+1), A080924(n))`
-/

namespace A166920.P1176956157742804785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066532 (n + 1)) (A080924 n)

end

end A166920.P1176956157742804785

namespace A166920

/-- `lcm(A066532(n+1), A080924(n))` -/
def P1176956157742804785.Spec : Prop :=
  ∀ n, (P1176956157742804785.a n : ℤ) = A166920 n

end A166920

/-! ## A166920.P2189621020896204400

`xor(A000975(n), A096773(n+1))`
-/

namespace A166920.P2189621020896204400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A096773 (n + 1))

end

end A166920.P2189621020896204400

namespace A166920

/-- `xor(A000975(n), A096773(n+1))` -/
def P2189621020896204400.Spec : Prop :=
  ∀ n, P2189621020896204400.a n = A166920 n

end A166920

/-!
# A166921: Least prime with exactly n prime anagrams not equal to itself.

The programs for A166921, there is no canonical definition to state claims against.
-/

/-! ## A166921.P16006604398415480873

`p?[A337925(A046890(n))]`
-/

namespace A166921.P16006604398415480873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337925 (A046890 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166921.P16006604398415480873

/-! ## A166921.P10742545727614346221

`A337925(A046890(n+1))`
-/

namespace A166921.P10742545727614346221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337925 (A046890 (n + 1)).toNat

end

end A166921.P10742545727614346221

/-!
# A166922: E.g.f. exp(-x)*exp(exp(2*x)/2-1/2)/2 + 1/2.

The programs for A166922, there is no canonical definition to state claims against.
-/

/-! ## A166922.P9048047618778160054

`ceil(A337038(n)/2)`
-/

namespace A166922.P9048047618778160054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337038 n : ℚ) / 2⌉

end

end A166922.P9048047618778160054

/-! ## A166922.P4721654067245951195

`A337038(floor(acot(n)²+n))/2`
-/

namespace A166922.P4721654067245951195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337038 ⌊SequenceMachineLib.acot (n : ℝ) ^ 2 + (n : ℝ)⌋.toNat : ℚ) / 2

end

end A166922.P4721654067245951195

/-! ## A166922.P2999543233852461757

`A337038(xor(n, floor(acot(n)²)))/2`
-/

namespace A166922.P2999543233852461757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337038 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋).toNat : ℚ) / 2

end

end A166922.P2999543233852461757

/-! ## A166922.P8555894727781599454

`A337038(n)/(A178334(n)+1)`
-/

namespace A166922.P8555894727781599454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337038 n : ℚ) / (A178334 n + 1 : ℚ)

end

end A166922.P8555894727781599454

/-! ## A166922.P12428315421418955031

`A337038(n)/A040001(2*n)`
-/

namespace A166922.P12428315421418955031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337038 n : ℚ) / (A040001 (2 * n) : ℚ)

end

end A166922.P12428315421418955031

/-! ## A166922.P8917946586947598466

`A337038(n)/A020639(A000132(n))`
-/

namespace A166922.P8917946586947598466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337038 n : ℚ) / (A020639 (A000132 n).toNat : ℚ)

end

end A166922.P8917946586947598466

/-! ## A166922.P18101163257223177734

`A337038(n)/A000124(A178334(n))`
-/

namespace A166922.P18101163257223177734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337038 n : ℚ) / (A000124 (A178334 n).toNat : ℚ)

end

end A166922.P18101163257223177734

/-! ## A166922.P14818465309057772076

`A337038(n)/A014963(A034444(n+1))`
-/

namespace A166922.P14818465309057772076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337038 n : ℚ) / (A014963 (A034444 (n + 1)).toNat : ℚ)

end

end A166922.P14818465309057772076

/-!
# A166923: Digital root of prime(n)^2.

The programs for A166923, the canonical program `A166923.P15848505578542287633` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166923 has offset 1).

The definition of A166923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166923.P14632771426939690852

`dr(p?[ceil(2/acot(n))]^2)`
-/

namespace A166923.P14632771426939690852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2)

end

end A166923.P14632771426939690852

namespace A166923

/-- `dr(p?[ceil(2/acot(n))]^2)` -/
def P14632771426939690852.Spec : Prop :=
  ∀ n, (P14632771426939690852.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P15848505578542287633

`dr(p?[round(8*n/7)]²+9)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166923

/-- `dr(p?[round(8*n/7)]²+9)` -/
def P15848505578542287633.Spec : Prop :=
  ∀ n, (P15848505578542287633.a n : ℤ) = A166923 (n + 1)

theorem P15848505578542287633.correct : P15848505578542287633.Spec := by
  intro n
  simp only [A166923, Nat.add_sub_cancel]

end A166923

/-! ## A166923.P14679506111078893720

`dr(10*p?[round(8*n/7)]²)`
-/

namespace A166923.P14679506111078893720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (10 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2)

end

end A166923.P14679506111078893720

namespace A166923

/-- `dr(10*p?[round(8*n/7)]²)` -/
def P14679506111078893720.Spec : Prop :=
  ∀ n, (P14679506111078893720.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P3616714028041373628

`dr(A001248(n+1))`
-/

namespace A166923.P3616714028041373628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001248 (n + 1))

end

end A166923.P3616714028041373628

namespace A166923

/-- `dr(A001248(n+1))` -/
def P3616714028041373628.Spec : Prop :=
  ∀ n, (P3616714028041373628.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P11789057030872310350

`dr(A123157(n+1))`
-/

namespace A166923.P11789057030872310350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A123157 (n + 1))

end

end A166923.P11789057030872310350

namespace A166923

/-- `dr(A123157(n+1))` -/
def P11789057030872310350.Spec : Prop :=
  ∀ n, (P11789057030872310350.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P16022635115307097649

`dr(A133019(n+1))`
-/

namespace A166923.P16022635115307097649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A133019 (n + 1))

end

end A166923.P16022635115307097649

namespace A166923

/-- `dr(A133019(n+1))` -/
def P16022635115307097649.Spec : Prop :=
  ∀ n, (P16022635115307097649.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P6051763718071427876

`dr(A179645(n+1))`
-/

namespace A166923.P6051763718071427876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A179645 (n + 1))

end

end A166923.P6051763718071427876

namespace A166923

/-- `dr(A179645(n+1))` -/
def P6051763718071427876.Spec : Prop :=
  ∀ n, (P6051763718071427876.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P10714121673617503589

`dr(Δ[A007504(n)]²)`
-/

namespace A166923.P10714121673617503589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((f1 (n + 1) - f1 n) ^ 2)

end

end A166923.P10714121673617503589

namespace A166923

/-- `dr(Δ[A007504(n)]²)` -/
def P10714121673617503589.Spec : Prop :=
  ∀ n, (P10714121673617503589.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P6179817766362891029

`dr(Δ[A008348(n)]²)`
-/

namespace A166923.P6179817766362891029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((f1 (n + 1) - f1 n) ^ 2)

end

end A166923.P6179817766362891029

namespace A166923

/-- `dr(Δ[A008348(n)]²)` -/
def P6179817766362891029.Spec : Prop :=
  ∀ n, (P6179817766362891029.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P15701233125144724225

`dr(A000040(n+1)²)`
-/

namespace A166923.P15701233125144724225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1) ^ 2)

end

end A166923.P15701233125144724225

namespace A166923

/-- `dr(A000040(n+1)²)` -/
def P15701233125144724225.Spec : Prop :=
  ∀ n, (P15701233125144724225.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P13018602430639920284

`dr(A004087(n+1)²)`
-/

namespace A166923.P13018602430639920284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004087 (n + 1) ^ 2)

end

end A166923.P13018602430639920284

namespace A166923

/-- `dr(A004087(n+1)²)` -/
def P13018602430639920284.Spec : Prop :=
  ∀ n, (P13018602430639920284.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P7219292332462059067

`dr(A007605(n+1)²)`
-/

namespace A166923.P7219292332462059067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007605 (n + 1) ^ 2)

end

end A166923.P7219292332462059067

namespace A166923

/-- `dr(A007605(n+1)²)` -/
def P7219292332462059067.Spec : Prop :=
  ∀ n, (P7219292332462059067.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P9421067299351071693

`dr(A028905(n+1)²)`
-/

namespace A166923.P9421067299351071693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028905 (n + 1) ^ 2)

end

end A166923.P9421067299351071693

namespace A166923

/-- `dr(A028905(n+1)²)` -/
def P9421067299351071693.Spec : Prop :=
  ∀ n, (P9421067299351071693.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P2207164719207798653

`dr(A028906(n+1)²)`
-/

namespace A166923.P2207164719207798653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028906 (n + 1) ^ 2)

end

end A166923.P2207164719207798653

namespace A166923

/-- `dr(A028906(n+1)²)` -/
def P2207164719207798653.Spec : Prop :=
  ∀ n, (P2207164719207798653.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P10647792743199175330

`dr(A030514(n+1)²)`
-/

namespace A166923.P10647792743199175330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030514 (n + 1) ^ 2)

end

end A166923.P10647792743199175330

namespace A166923

/-- `dr(A030514(n+1)²)` -/
def P10647792743199175330.Spec : Prop :=
  ∀ n, (P10647792743199175330.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P6207683677793611074

`dr(A038194(n+1)²)`
-/

namespace A166923.P6207683677793611074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A038194 (n + 1) ^ 2)

end

end A166923.P6207683677793611074

namespace A166923

/-- `dr(A038194(n+1)²)` -/
def P6207683677793611074.Spec : Prop :=
  ∀ n, (P6207683677793611074.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P10214945389782180644

`dr(A120700(n+1)²)`
-/

namespace A166923.P10214945389782180644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A120700 (n + 1) ^ 2)

end

end A166923.P10214945389782180644

namespace A166923

/-- `dr(A120700(n+1)²)` -/
def P10214945389782180644.Spec : Prop :=
  ∀ n, (P10214945389782180644.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P12341722741604780508

`dr(A129074(n+1)²)`
-/

namespace A166923.P12341722741604780508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A129074 (n + 1) ^ 2)

end

end A166923.P12341722741604780508

namespace A166923

/-- `dr(A129074(n+1)²)` -/
def P12341722741604780508.Spec : Prop :=
  ∀ n, (P12341722741604780508.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P2083513462136626565

`dr(A137521(n+1)²)`
-/

namespace A166923.P2083513462136626565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A137521 (n + 1) ^ 2)

end

end A166923.P2083513462136626565

namespace A166923

/-- `dr(A137521(n+1)²)` -/
def P2083513462136626565.Spec : Prop :=
  ∀ n, (P2083513462136626565.a n : ℤ) = A166923 (n + 1)

end A166923

/-! ## A166923.P5385454297968000726

`dr(A140353(n+1)²)`
-/

namespace A166923.P5385454297968000726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A140353 (n + 1) ^ 2)

end

end A166923.P5385454297968000726

namespace A166923

/-- `dr(A140353(n+1)²)` -/
def P5385454297968000726.Spec : Prop :=
  ∀ n, (P5385454297968000726.a n : ℤ) = A166923 (n + 1)

end A166923

/-!
# A166924: Number of reduced words of length n in Coxeter group on 9 generators S_i with relations (S_i)^2 = (S_i S_j)^13 = I.

The programs for A166924, there is no canonical definition to state claims against.
-/

/-! ## A166924.P18159784604921361580

`A003951(n)-A159788(A038141(n+1))`
-/

namespace A166924.P18159784604921361580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 n - A159788 (A038141 (n + 1)).toNat

end

end A166924.P18159784604921361580

/-!
# A166925: Digital root of square of n-th triangular number.

The programs for A166925, the canonical program `A166925.P3018170785783990199` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166925 has offset 1).

The definition of A166925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166925.P3018170785783990199

`(gcd(3, n)-4)²`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166925

/-- `(gcd(3, n)-4)²` -/
def P3018170785783990199.Spec : Prop :=
  ∀ n, P3018170785783990199.a n = A166925 (n + 1)

theorem P3018170785783990199.correct : P3018170785783990199.Spec := by
  intro n
  simp only [A166925, Nat.add_sub_cancel]

end A166925

/-!
# A166926: A000004 preceded by 1, 2, 4.

The programs for A166926, the canonical program `A166926.P690233994650254665` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166926 has offset 0).

The definition of A166926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166926.P690233994650254665

`floor(exp(acot(2-n)))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166926

/-- `floor(exp(acot(2-n)))` -/
def P690233994650254665.Spec : Prop :=
  ∀ n, P690233994650254665.a n = A166926 n

theorem P690233994650254665.correct : P690233994650254665.Spec := by
  intro n
  simp only [A166926]

end A166926

/-!
# A166927: a(n) = 20*a(n-1) - 64*a(n-2) for n > 1; a(0) = 1, a(1) = 18.

The programs for A166927, the canonical program `A166927.P7666377385807322720` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166927 has offset 0).

The definition of A166927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-64*a(n-2)` (program `A166927.P7666377385807322720`, by `A166927.P7666377385807322720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166927.P1220541625905845689

`(7*16^n-4^n)/6`
-/

namespace A166927.P1220541625905845689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 16 ^ n : ℤ) - (4 ^ n : ℤ) : ℚ) / 6

end

end A166927.P1220541625905845689

namespace A166927

/-- `(7*16^n-4^n)/6` -/
def P1220541625905845689.Spec : Prop :=
  ∀ n, P1220541625905845689.a n = (A166927 n : ℚ)

theorem P1220541625905845689.correct : P1220541625905845689.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A166927, Nat.add_sub_cancel, A166927.P1220541625905845689.a, A166927.P7666377385807322720.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A166927, Nat.add_sub_cancel, A166927.P1220541625905845689.a, A166927.P7666377385807322720.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166927

/-! ## A166927.P7666377385807322720

`20*a(n-1)-64*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166927

/-- `20*a(n-1)-64*a(n-2)` -/
def P7666377385807322720.Spec : Prop :=
  ∀ n, P7666377385807322720.a n = A166927 n

theorem P7666377385807322720.correct : P7666377385807322720.Spec := by
  intro n
  simp only [A166927]

end A166927

/-! ## A166927.P18341731756954383670

`2^n*Δ[C(2^n+1, 3)]`
-/

namespace A166927.P18341731756954383670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A166927.P18341731756954383670

namespace A166927

/-- `2^n*Δ[C(2^n+1, 3)]` -/
def P18341731756954383670.Spec : Prop :=
  ∀ n, P18341731756954383670.a n = A166927 n

end A166927

/-! ## A166927.P11990777150773019600

`A370627(2*n)`
-/

namespace A166927.P11990777150773019600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370627 (2 * n)

end

end A166927.P11990777150773019600

namespace A166927

/-- `A370627(2*n)` -/
def P11990777150773019600.Spec : Prop :=
  ∀ n, P11990777150773019600.a n = A166927 n

end A166927

/-! ## A166927.P7791031737010546243

`Δ[A139784(4*n)]`
-/

namespace A166927.P7791031737010546243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139784 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166927.P7791031737010546243

namespace A166927

/-- `Δ[A139784(4*n)]` -/
def P7791031737010546243.Spec : Prop :=
  ∀ n, P7791031737010546243.a n = A166927 n

end A166927

/-! ## A166927.P2615110457048403209

`Δ[A139785(4*n)]`
-/

namespace A166927.P2615110457048403209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139785 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166927.P2615110457048403209

namespace A166927

/-- `Δ[A139785(4*n)]` -/
def P2615110457048403209.Spec : Prop :=
  ∀ n, P2615110457048403209.a n = A166927 n

end A166927

/-! ## A166927.P10924718005369607238

`4^n/2*A206374(n)`
-/

namespace A166927.P10924718005369607238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / 2 * (A206374 n : ℚ)

end

end A166927.P10924718005369607238

namespace A166927

/-- `4^n/2*A206374(n)` -/
def P10924718005369607238.Spec : Prop :=
  ∀ n, P10924718005369607238.a n = (A166927 n : ℚ)

end A166927

/-! ## A166927.P16695465408309318379

`2*A166965(n)-A166984(n)`
-/

namespace A166927.P16695465408309318379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166965 n - A166984 n

end

end A166927.P16695465408309318379

namespace A166927

/-- `2*A166965(n)-A166984(n)` -/
def P16695465408309318379.Spec : Prop :=
  ∀ n, P16695465408309318379.a n = A166927 n

end A166927

/-! ## A166927.P15655587360828714202

`A003683(2*n)+A000302(n)²`
-/

namespace A166927.P15655587360828714202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 (2 * n) + A000302 n ^ 2

end

end A166927.P15655587360828714202

namespace A166927

/-- `A003683(2*n)+A000302(n)²` -/
def P15655587360828714202.Spec : Prop :=
  ∀ n, P15655587360828714202.a n = A166927 n

end A166927

/-! ## A166927.P16023397168439657592

`A003683(2*n)+A000302(2*n)`
-/

namespace A166927.P16023397168439657592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 (2 * n) + A000302 (2 * n)

end

end A166927.P16023397168439657592

namespace A166927

/-- `A003683(2*n)+A000302(2*n)` -/
def P16023397168439657592.Spec : Prop :=
  ∀ n, P16023397168439657592.a n = A166927 n

end A166927

/-!
# A166929: Positive integers m such that m^4 = a^2 + b^2 and a + b = c^2 for some coprime integers a, b, c.

The programs for A166929, the canonical program `A166929.P12544204046458921436` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166929 has offset 1).

The definition of A166929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166929.P12544204046458921436

`A360187(2*(n+1)-1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166929

/-- `A360187(2*(n+1)-1)` -/
def P12544204046458921436.Spec : Prop :=
  ∀ n, P12544204046458921436.a n = A166929 (n + 1)

theorem P12544204046458921436.correct : P12544204046458921436.Spec := by
  intro n
  simp only [A166929, Nat.add_sub_cancel]

end A166929

/-!
# A166931: Numbers m such that m mod k is k-1 for all k = 2..9.

The programs for A166931, the canonical program `A166931.P10593389537129159251` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166931 has offset 1).

The definition of A166931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166931.P10593389537129159251

`35*12*(A016921(n)+5)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166931

/-- `35*12*(A016921(n)+5)-1` -/
def P10593389537129159251.Spec : Prop :=
  ∀ n, P10593389537129159251.a n = A166931 (n + 1)

theorem P10593389537129159251.correct : P10593389537129159251.Spec := by
  intro n
  simp only [A166931, Nat.add_sub_cancel]

end A166931

/-!
# A166932: Lower bounds for minimal number of simplices in a triangulation of the n-dimensional cube (A019503).

The programs for A166932, there is no canonical definition to state claims against.
-/

/-! ## A166932.P13549022395236089435

`A019503(n+3)`
-/

namespace A166932.P13549022395236089435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019503 (n + 3)

end

end A166932.P13549022395236089435

/-!
# A166934: A positive integer n is included if the longest palindromic substring (or at least one of which that is tied for longest) in the binary representation of n consists of different valued digits (0 and 1).

The programs for A166934, there is no canonical definition to state claims against.
-/

/-! ## A166934.P11828968619372853306

`lt[A246685(n), A351996(A277325(n))]`
-/

namespace A166934.P11828968619372853306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351996 (A277325 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166934.P11828968619372853306

/-! ## A166934.P10947930183820626148

`lt[A247282(n), A351996(A277325(n))]`
-/

namespace A166934.P10947930183820626148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351996 (A277325 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166934.P10947930183820626148

/-! ## A166934.P1653509032324735768

`lt[A290418(n), A305751(A334030(n))]`
-/

namespace A166934.P1653509032324735768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305751 (A334030 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166934.P1653509032324735768

/-! ## A166934.P2543774335555611468

`lt[A326667(A246596(n)), A079318(n)]`
-/

namespace A166934.P2543774335555611468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326667 (A246596 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166934.P2543774335555611468

/-! ## A166934.P12667193583821984774

`lt[A093660(n+1), A084544(A278222(n))]`
-/

namespace A166934.P12667193583821984774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166934.P12667193583821984774

/-!
# A166935: A positive integer n is included if the longest palindromic substring (or at least one of which that is tied for longest) in the binary representation of n consists of identically valued digits (all 0's or all 1's).

The programs for A166935, there is no canonical definition to state claims against.
-/

/-! ## A166935.P17075405663286854138

`lt[A151949(A215256(n)), n]`
-/

namespace A166935.P17075405663286854138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A215256 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166935.P17075405663286854138

/-! ## A166935.P13534031307905989145

`lt[A323553(A323506(n)), n+1]`
-/

namespace A166935.P13534031307905989145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323553 (A323506 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166935.P13534031307905989145

/-! ## A166935.P3420036725120118839

`lt[A311208(n), A256537(2*(n+1))]+1`
-/

namespace A166935.P3420036725120118839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311208 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256537 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A166935.P3420036725120118839

/-! ## A166935.P6534033482250777395

`lt[A314483(n), A256537(2*(n+1))]+1`
-/

namespace A166935.P6534033482250777395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256537 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A166935.P6534033482250777395

/-! ## A166935.P9724463985770046399

`eq[A069010(n), A226957(A008630(n))]`
-/

namespace A166935.P9724463985770046399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (A008630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166935.P9724463985770046399

/-!
# A166936: Positive integers n such that when they are written in binary, the longest palindromic substring (or at least one of which that is tied for longest) in binary n begins and ends with a 0.

The programs for A166936, there is no canonical definition to state claims against.
-/

/-! ## A166936.P4182020212164883256

`∑[2*A265917(A138791(2*n+1))]`
-/

namespace A166936.P4182020212164883256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265917 (A138791 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166936.P4182020212164883256

/-! ## A166936.P5165995585210536622

`∑[A105969(∑[2^n])]`
-/

namespace A166936.P5165995585210536622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105969 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166936.P5165995585210536622

/-! ## A166936.P15897976321226442980

`∑[2*A204901(A019320(n))]`
-/

namespace A166936.P15897976321226442980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204901 (A019320 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166936.P15897976321226442980

/-! ## A166936.P5022029295684480928

`∑[A175462(A064989(n+1)!)]`
-/

namespace A166936.P5022029295684480928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (Nat.factorial (A064989 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166936.P5022029295684480928

/-! ## A166936.P15431098204855765372

`eq[A051903(A034891(2*n+3)+1), A360125(n+1)]-1`
-/

namespace A166936.P15431098204855765372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A034891 (2 * n + 3) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A166936.P15431098204855765372

/-!
# A166937: Positive integers n such that when they are written in binary, the longest palindromic substring (or at least one of which that is tied for longest) in binary n begins and ends with a 1.

The programs for A166937, there is no canonical definition to state claims against.
-/

/-! ## A166937.P18348334811397632190

`eq[A007088(A331804(n)), A215256(n)]`
-/

namespace A166937.P18348334811397632190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A331804 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166937.P18348334811397632190

/-! ## A166937.P16139890990787348212

`eq[2, A168181(n)+A061704(A236854(n+1))]`
-/

namespace A166937.P16139890990787348212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 n + A061704 (A236854 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166937.P16139890990787348212

/-! ## A166937.P16106899513578202659

`lt[∏{p}[18*A070229(3*n+4)², -#], 0]`
-/

namespace A166937.P16106899513578202659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A070229 (3 * n + 4) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (-(p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A166937.P16106899513578202659

/-! ## A166937.P4724192623001634101

`eq[A061704(A236854(n+1)), A168181(n)]`
-/

namespace A166937.P4724192623001634101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A236854 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166937.P4724192623001634101

/-! ## A166937.P6418225104047640918

`lt[A036044(n), A344540(A034448(n+1))]`
-/

namespace A166937.P6418225104047640918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344540 (A034448 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166937.P6418225104047640918

/-!
# A166938: Those positive integers that are both in sequence A166936 and in sequence A166937.

The programs for A166938, there is no canonical definition to state claims against.
-/

/-! ## A166938.P3062473785801933069

`∩[A166936(n+1), A166937(n+1)]`
-/

namespace A166938.P3062473785801933069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166938.P3062473785801933069

/-!
# A166939: Numerators of partial sums (n+1)/n (not sorted).

The programs for A166939, there is no canonical definition to state claims against.
-/

/-! ## A166939.P18310603016834421955

`∑[ratio[n+1]]*A002805(n+1)`
-/

namespace A166939.P18310603016834421955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A002805 (n + 1) : ℚ)

end

end A166939.P18310603016834421955

/-! ## A166939.P6436270714573120435

`A187487(n+1)+2*A001008(n+1)`
-/

namespace A166939.P6436270714573120435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187487 (n + 1) + 2 * A001008 (n + 1)

end

end A166939.P6436270714573120435

/-! ## A166939.P1136731778274146144

`A064168(n+1)+n*A002805(n+1)`
-/

namespace A166939.P1136731778274146144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064168 (n + 1) + (n : ℤ) * A002805 (n + 1)

end

end A166939.P1136731778274146144

/-! ## A166939.P12770850467978682867

`A001008(n+1)+(n+1)*A002805(n+1)`
-/

namespace A166939.P12770850467978682867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) + (n + 1 : ℤ) * A002805 (n + 1)

end

end A166939.P12770850467978682867

/-! ## A166939.P8094051567095218163

`A064169(n+1)+(n+2)*A002805(n+1)`
-/

namespace A166939.P8094051567095218163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064169 (n + 1) + (n + 2 : ℤ) * A002805 (n + 1)

end

end A166939.P8094051567095218163

/-!
# A166940: Numerators of partial sums (n+1)/n (sorted).

The programs for A166940, there is no canonical definition to state claims against.
-/

/-! ## A166940.P16277120851911414503

`A166939(A104182(n+1)%A104182(2*n+3))`
-/

namespace A166940.P16277120851911414503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166939 (Int.tmod (A104182 (n + 1)) (A104182 (2 * n + 3))).toNat

end

end A166940.P16277120851911414503

/-! ## A166940.P12558637799526307907

`A166939(A104182(n+1))`
-/

namespace A166940.P12558637799526307907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166939 (A104182 (n + 1)).toNat

end

end A166940.P12558637799526307907

/-!
# A166941: Product plus sum of four consecutive nonnegative numbers.

The programs for A166941, the canonical program `A166941.P8583461084556146441` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166941 has offset 0).

The definition of A166941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166941.P8583461084556146441

`n^4+6*n^3+11*n²+10*n+6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166941

/-- `n^4+6*n^3+11*n²+10*n+6` -/
def P8583461084556146441.Spec : Prop :=
  ∀ n, (P8583461084556146441.a n : ℤ) = A166941 n

theorem P8583461084556146441.correct : P8583461084556146441.Spec := by
  intro n
  simp only [A166941]

end A166941

/-! ## A166941.P5585765821607981639

`or(2, record[or(5, n)]+(n*(n+3)+1)²)`
-/

namespace A166941.P5585765821607981639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n * (n + 3) + 1) ^ 2)

end

end A166941.P5585765821607981639

namespace A166941

/-- `or(2, record[or(5, n)]+(n*(n+3)+1)²)` -/
def P5585765821607981639.Spec : Prop :=
  ∀ n, (P5585765821607981639.a n : ℤ) = A166941 n

end A166941

/-! ## A166941.P15134333356162590713

`4*(1/2+A033487(n)+1+n)`
-/

namespace A166941.P15134333356162590713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((1 : ℚ) / 2 + (A033487 n + 1 + (n : ℤ) : ℚ))

end

end A166941.P15134333356162590713

namespace A166941

/-- `4*(1/2+A033487(n)+1+n)` -/
def P15134333356162590713.Spec : Prop :=
  ∀ n, P15134333356162590713.a n = (A166941 n : ℚ)

theorem P15134333356162590713.correct : P15134333356162590713.Spec := by
  intro n
  simp only [A166941, Nat.add_sub_cancel, A166941.P15134333356162590713.a, A166941.P8583461084556146441.a, A033487, A033487.P180010041112617206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166941

/-! ## A166941.P14905683671991068368

`2*(A255499(n+1)+2+n)`
-/

namespace A166941.P14905683671991068368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A255499 (n + 1) + 2 + (n : ℤ))

end

end A166941.P14905683671991068368

namespace A166941

/-- `2*(A255499(n+1)+2+n)` -/
def P14905683671991068368.Spec : Prop :=
  ∀ n, P14905683671991068368.a n = A166941 n

end A166941

/-! ## A166941.P10855948125559763779

`∑[record[or(4, A171734(n))]]`
-/

namespace A166941.P10855948125559763779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A171734 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166941.P10855948125559763779

namespace A166941

/-- `∑[record[or(4, A171734(n))]]` -/
def P10855948125559763779.Spec : Prop :=
  ∀ n, P10855948125559763779.a n = A166941 n

end A166941

/-!
# A166942: One fifth of product plus sum of five consecutive nonnegative numbers.

The programs for A166942, the canonical program `A166942.P5751148752076675608` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166942 has offset 0).

The definition of A166942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166942.P5751148752076675608

`(n^5+10*n^4+35*n^3+50*n²+29*n+10)/5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166942

/-- `(n^5+10*n^4+35*n^3+50*n²+29*n+10)/5` -/
def P5751148752076675608.Spec : Prop :=
  ∀ n, P5751148752076675608.a n = (A166942 n : ℚ)

end A166942

/-! ## A166942.P16104693347430462332

`a(n-1)+((n+1)²+n)²` with `a(0)=2`
-/

namespace A166942.P16104693347430462332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ((n + 1) ^ 2 + n) ^ 2

end

end A166942.P16104693347430462332

namespace A166942

/-- `a(n-1)+((n+1)²+n)²` -/
def P16104693347430462332.Spec : Prop :=
  ∀ n, (P16104693347430462332.a n : ℤ) = A166942 n

end A166942

/-! ## A166942.P8714969514102542780

`∑[A062938(n)]+1`
-/

namespace A166942.P8714969514102542780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A166942.P8714969514102542780

namespace A166942

/-- `∑[A062938(n)]+1` -/
def P8714969514102542780.Spec : Prop :=
  ∀ n, P8714969514102542780.a n = A166942 n

end A166942

/-! ## A166942.P10190399602633039314

`A158874(n)+2+n`
-/

namespace A166942.P10190399602633039314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158874 n + 2 + (n : ℤ)

end

end A166942.P10190399602633039314

namespace A166942

/-- `A158874(n)+2+n` -/
def P10190399602633039314.Spec : Prop :=
  ∀ n, P10190399602633039314.a n = A166942 n

end A166942

/-! ## A166942.P2167762688840450575

`∑[A028387(n)²]+1`
-/

namespace A166942.P2167762688840450575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A166942.P2167762688840450575

namespace A166942

/-- `∑[A028387(n)²]+1` -/
def P2167762688840450575.Spec : Prop :=
  ∀ n, P2167762688840450575.a n = A166942 n

end A166942

/-! ## A166942.P16956684567551205789

`∑[A028387(n%a(n-1))²]` with `a(0)=2`
-/

namespace A166942.P16956684567551205789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A028387 (Int.tmod (n : ℤ) (f1 (n - 1))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166942.P16956684567551205789

namespace A166942

/-- `∑[A028387(n%a(n-1))²]` -/
def P16956684567551205789.Spec : Prop :=
  ∀ n, P16956684567551205789.a n = A166942 n

end A166942

/-! ## A166942.P5500061551290141387

`or(∑[(n+1)*(n+3)*A005563(n)+1]+1, (n+2)%4)`
-/

namespace A166942.P5500061551290141387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 3 : ℤ) * A005563 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j + 1) (((n + 2) % 4 : ℕ) : ℤ)

end

end A166942.P5500061551290141387

namespace A166942

/-- `or(∑[(n+1)*(n+3)*A005563(n)+1]+1, (n+2)%4)` -/
def P5500061551290141387.Spec : Prop :=
  ∀ n, P5500061551290141387.a n = A166942 n

end A166942

/-! ## A166942.P5639611560319177870

`∑[A028387(n)²*A054977(n)]`
-/

namespace A166942.P5639611560319177870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n ^ 2 * A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166942.P5639611560319177870

namespace A166942

/-- `∑[A028387(n)²*A054977(n)]` -/
def P5639611560319177870.Spec : Prop :=
  ∀ n, P5639611560319177870.a n = A166942 n

end A166942

/-! ## A166942.P5288657920181428184

`∑[A000038(n)!*A062938(n)]`
-/

namespace A166942.P5288657920181428184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A062938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166942.P5288657920181428184

namespace A166942

/-- `∑[A000038(n)!*A062938(n)]` -/
def P5288657920181428184.Spec : Prop :=
  ∀ n, P5288657920181428184.a n = A166942 n

end A166942

/-! ## A166942.P11694795615191691457

`∑[A110331(n+1)²]+1`
-/

namespace A166942.P11694795615191691457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110331 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A166942.P11694795615191691457

namespace A166942

/-- `∑[A110331(n+1)²]+1` -/
def P11694795615191691457.Spec : Prop :=
  ∀ n, P11694795615191691457.a n = A166942 n

end A166942

/-! ## A166942.P11628392376907904986

`∑[∑[∑[n+1]]*A004277(3*n)+1]`
-/

namespace A166942.P11628392376907904986
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A004277 (3 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166942.P11628392376907904986

namespace A166942

/-- `∑[∑[∑[n+1]]*A004277(3*n)+1]` -/
def P11628392376907904986.Spec : Prop :=
  ∀ n, P11628392376907904986.a n = A166942 n

end A166942

/-!
# A166944: a(1)=2; a(n) = a(n-1) + gcd(n, a(n-1)) if n is even, a(n) = a(n-1) + gcd(n-2, a(n-1)) if n is odd.

The programs for A166944, the canonical program `A166944.P17785158472359023266` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166944 has offset 1).

The definition of A166944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166944.P17785158472359023266

`a(n-1)+gcd((-1)^n-n, -a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166944

/-- `a(n-1)+gcd((-1)^n-n, -a(n-1))` -/
def P17785158472359023266.Spec : Prop :=
  ∀ n, (P17785158472359023266.a n : ℤ) = A166944 (n + 1)

theorem P17785158472359023266.correct : P17785158472359023266.Spec := by
  intro n
  simp only [A166944, Nat.add_sub_cancel]

end A166944

/-! ## A166944.P16977820480119756375

`a(n-1)+gcd(a(n-1), A014681(n))` with `a(0)=2`
-/

namespace A166944.P16977820480119756375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Int.gcd (a (n - 1) : ℤ) (A014681 n)

end

end A166944.P16977820480119756375

namespace A166944

/-- `a(n-1)+gcd(a(n-1), A014681(n))` -/
def P16977820480119756375.Spec : Prop :=
  ∀ n, (P16977820480119756375.a n : ℤ) = A166944 (n + 1)

end A166944

/-!
# A166945: Records of first differences of A166944.

The programs for A166945, there is no canonical definition to state claims against.
-/

/-! ## A166945.P4253354854324538854

`record[gcd(n, A166944(n+1))]`
-/

namespace A166945.P4253354854324538854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A166944 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166945.P4253354854324538854

/-! ## A166945.P5203294655162189452

`eq[A166944(n+1), A184418(n)]`
-/

namespace A166945.P5203294655162189452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166945.P5203294655162189452

/-! ## A166945.P2494615771762920577

`record[A166944(n+2)-A166944(n+1)]`
-/

namespace A166945.P2494615771762920577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166944 (n + 2) - A166944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166945.P2494615771762920577

/-!
# A166946: a(n) = 1 if n is a rounded multiple of phi (1.618033989...), the larger golden ratio value; else a(n) = 0.

The programs for A166946, the canonical program `A166946.P5633800222494881361` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166946 has offset 0).

The definition of A166946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166946.P3687519121828360741

`char[round(ϕ*n)]`
-/

namespace A166946.P3687519121828360741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A166946.P3687519121828360741

namespace A166946

/-- `char[round(ϕ*n)]` -/
def P3687519121828360741.Spec : Prop :=
  ∀ n, (P3687519121828360741.a n : ℤ) = A166946 n

end A166946

/-! ## A166946.P8468240016910586500

`1-and(floor((2*n+1)/ϕ), a(n-1))` with `a(0)=1`
-/

namespace A166946.P8468240016910586500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.land ⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋ (a (n - 1))

end

end A166946.P8468240016910586500

namespace A166946

/-- `1-and(floor((2*n+1)/ϕ), a(n-1))` -/
def P8468240016910586500.Spec : Prop :=
  ∀ n, P8468240016910586500.a n = A166946 n

end A166946

/-! ## A166946.P15852856646578463433

`1-char[A007064(n+1)]`
-/

namespace A166946.P15852856646578463433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A166946.P15852856646578463433

namespace A166946

/-- `1-char[A007064(n+1)]` -/
def P15852856646578463433.Spec : Prop :=
  ∀ n, P15852856646578463433.a n = A166946 n

end A166946

/-! ## A166946.P3918038334625911625

`1-char[A214990(n+1)]`
-/

namespace A166946.P3918038334625911625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A166946.P3918038334625911625

namespace A166946

/-- `1-char[A214990(n+1)]` -/
def P3918038334625911625.Spec : Prop :=
  ∀ n, P3918038334625911625.a n = A166946 n

end A166946

/-! ## A166946.P18080653068242501925

`A380151((n+1)^a(n-1))` with `a(0)=1`
-/

namespace A166946.P18080653068242501925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A380151 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A166946.P18080653068242501925

namespace A166946

/-- `A380151((n+1)^a(n-1))` -/
def P18080653068242501925.Spec : Prop :=
  ∀ n, P18080653068242501925.a n = A166946 n

end A166946

/-! ## A166946.P5633800222494881361

`A334414(n+1-A007067(A101803(n)))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166946

/-- `A334414(n+1-A007067(A101803(n)))` -/
def P5633800222494881361.Spec : Prop :=
  ∀ n, P5633800222494881361.a n = A166946 n

theorem P5633800222494881361.correct : P5633800222494881361.Spec := by
  intro n
  simp only [A166946]

end A166946

/-! ## A166946.P16237430553590582277

`A334414(n+1-A007067(A060143(n+1)))`
-/

namespace A166946.P16237430553590582277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334414 ((n + 1 : ℤ) - A007067 (A060143 (n + 1)).toNat).toNat

end

end A166946.P16237430553590582277

namespace A166946

/-- `A334414(n+1-A007067(A060143(n+1)))` -/
def P16237430553590582277.Spec : Prop :=
  ∀ n, P16237430553590582277.a n = A166946 n

end A166946

/-! ## A166946.P16042071701972574886

`A287523(A004956(A101803(n))+n+1)`
-/

namespace A166946.P16042071701972574886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (A004956 (A101803 n).toNat + (n + 1 : ℤ)).toNat

end

end A166946.P16042071701972574886

namespace A166946

/-- `A287523(A004956(A101803(n))+n+1)` -/
def P16042071701972574886.Spec : Prop :=
  ∀ n, P16042071701972574886.a n = A166946 n

end A166946

/-! ## A166946.P5073604440134721993

`A188189(A003259(n+1))`
-/

namespace A166946.P5073604440134721993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188189 (A003259 (n + 1)).toNat

end

end A166946.P5073604440134721993

namespace A166946

/-- `A188189(A003259(n+1))` -/
def P5073604440134721993.Spec : Prop :=
  ∀ n, P5073604440134721993.a n = A166946 n

end A166946

/-! ## A166946.P14770863140342206176

`A188189(A003622(n+1))`
-/

namespace A166946.P14770863140342206176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188189 (A003622 (n + 1)).toNat

end

end A166946.P14770863140342206176

namespace A166946

/-- `A188189(A003622(n+1))` -/
def P14770863140342206176.Spec : Prop :=
  ∀ n, P14770863140342206176.a n = A166946 n

end A166946

/-! ## A166946.P17170399345196542985

`A188192(A007064(n+1))`
-/

namespace A166946.P17170399345196542985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (A007064 (n + 1)).toNat

end

end A166946.P17170399345196542985

namespace A166946

/-- `A188192(A007064(n+1))` -/
def P17170399345196542985.Spec : Prop :=
  ∀ n, P17170399345196542985.a n = A166946 n

end A166946

/-! ## A166946.P15853036751960089710

`A188192(A007066(n+1))`
-/

namespace A166946.P15853036751960089710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (A007066 (n + 1)).toNat

end

end A166946.P15853036751960089710

namespace A166946

/-- `A188192(A007066(n+1))` -/
def P15853036751960089710.Spec : Prop :=
  ∀ n, P15853036751960089710.a n = A166946 n

end A166946

/-! ## A166946.P15583038587412689459

`A188192(A007073(n+1))`
-/

namespace A166946.P15583038587412689459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (A007073 (n + 1)).toNat

end

end A166946.P15583038587412689459

namespace A166946

/-- `A188192(A007073(n+1))` -/
def P15583038587412689459.Spec : Prop :=
  ∀ n, P15583038587412689459.a n = A166946 n

end A166946

/-! ## A166946.P18076245025187761302

`A188192(A007074(n+1))`
-/

namespace A166946.P18076245025187761302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (A007074 (n + 1)).toNat

end

end A166946.P18076245025187761302

namespace A166946

/-- `A188192(A007074(n+1))` -/
def P18076245025187761302.Spec : Prop :=
  ∀ n, P18076245025187761302.a n = A166946 n

end A166946

/-! ## A166946.P34766612679447044

`A188192(A026356(n+1))`
-/

namespace A166946.P34766612679447044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (A026356 (n + 1)).toNat

end

end A166946.P34766612679447044

namespace A166946

/-- `A188192(A026356(n+1))` -/
def P34766612679447044.Spec : Prop :=
  ∀ n, P34766612679447044.a n = A166946 n

end A166946

/-! ## A166946.P13033781816812315605

`A188192(A026352(n)+1)`
-/

namespace A166946.P13033781816812315605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (A026352 n + 1).toNat

end

end A166946.P13033781816812315605

namespace A166946

/-- `A188192(A026352(n)+1)` -/
def P13033781816812315605.Spec : Prop :=
  ∀ n, P13033781816812315605.a n = A166946 n

end A166946

/-! ## A166946.P4435050742987985189

`A188192(A184583(n+1))`
-/

namespace A166946.P4435050742987985189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (A184583 (n + 1)).toNat

end

end A166946.P4435050742987985189

namespace A166946

/-- `A188192(A184583(n+1))` -/
def P4435050742987985189.Spec : Prop :=
  ∀ n, P4435050742987985189.a n = A166946 n

end A166946

/-! ## A166946.P3357377628168603064

`A188192(A184735(n+1))`
-/

namespace A166946.P3357377628168603064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (A184735 (n + 1)).toNat

end

end A166946.P3357377628168603064

namespace A166946

/-- `A188192(A184735(n+1))` -/
def P3357377628168603064.Spec : Prop :=
  ∀ n, P3357377628168603064.a n = A166946 n

end A166946

/-!
# A166947: Number of ways of writing n as the sum of 2^n squares.

The programs for A166947, there is no canonical definition to state claims against.
-/

/-! ## A166947.P7825738001933599287

`A286815(eq[A025581(n), A059268(n)])`
-/

namespace A166947.P7825738001933599287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A166947.P7825738001933599287

/-! ## A166947.P3362853105753433406

`A286815(eq[A051933(n), A059268(n)])`
-/

namespace A166947.P3362853105753433406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A166947.P3362853105753433406

/-! ## A166947.P18117354672097295042

`A319574(eq[A002262(n), A130321(n)])`
-/

namespace A166947.P18117354672097295042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A166947.P18117354672097295042

/-!
# A166948: The count of smallest prime factors in n-th composite.

The programs for A166948, the canonical program `A166948.P13457169353326532215` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166948 has offset 1).

The definition of A166948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166948.P14646555281436597663

`val(A083257(n+2), 2)`
-/

namespace A166948.P14646555281436597663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A083257 (n + 2)).toNat 2

end

end A166948.P14646555281436597663

namespace A166948

/-- `val(A083257(n+2), 2)` -/
def P14646555281436597663.Spec : Prop :=
  ∀ n, (P14646555281436597663.a n : ℤ) = A166948 (n + 1)

end A166948

/-! ## A166948.P13457169353326532215

`A067029(Δ[A053767(n)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166948

/-- `A067029(Δ[A053767(n)])` -/
def P13457169353326532215.Spec : Prop :=
  ∀ n, P13457169353326532215.a n = A166948 (n + 1)

theorem P13457169353326532215.correct : P13457169353326532215.Spec := by
  intro n
  simp only [A166948, Nat.add_sub_cancel]

end A166948

/-! ## A166948.P6689093996796472740

`A067029(comp[A351078(n)])`
-/

namespace A166948.P6689093996796472740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A166948.P6689093996796472740

namespace A166948

/-- `A067029(comp[A351078(n)])` -/
def P6689093996796472740.Spec : Prop :=
  ∀ n, P6689093996796472740.a n = A166948 (n + 1)

end A166948

/-! ## A166948.P14013237232861952200

`A067029(A002808(n+1))`
-/

namespace A166948.P14013237232861952200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A002808 (n + 1)).toNat

end

end A166948.P14013237232861952200

namespace A166948

/-- `A067029(A002808(n+1))` -/
def P14013237232861952200.Spec : Prop :=
  ∀ n, P14013237232861952200.a n = A166948 (n + 1)

end A166948

/-! ## A166948.P7496912512560770218

`A067029(A129401(n+1))`
-/

namespace A166948.P7496912512560770218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A129401 (n + 1)).toNat

end

end A166948.P7496912512560770218

namespace A166948

/-- `A067029(A129401(n+1))` -/
def P7496912512560770218.Spec : Prop :=
  ∀ n, P7496912512560770218.a n = A166948 (n + 1)

end A166948

/-! ## A166948.P14108355384160068618

`A067029(A018252(n+2))`
-/

namespace A166948.P14108355384160068618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A018252 (n + 2)).toNat

end

end A166948.P14108355384160068618

namespace A166948

/-- `A067029(A018252(n+2))` -/
def P14108355384160068618.Spec : Prop :=
  ∀ n, P14108355384160068618.a n = A166948 (n + 1)

end A166948

/-! ## A166948.P11477095848334677550

`A007814(A083257(n+2))`
-/

namespace A166948.P11477095848334677550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A083257 (n + 2)).toNat

end

end A166948.P11477095848334677550

namespace A166948

/-- `A007814(A083257(n+2))` -/
def P11477095848334677550.Spec : Prop :=
  ∀ n, P11477095848334677550.a n = A166948 (n + 1)

end A166948

/-! ## A166948.P11216400090166521912

`A067029(A065090(n+3))`
-/

namespace A166948.P11216400090166521912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A065090 (n + 3)).toNat

end

end A166948.P11216400090166521912

namespace A166948

/-- `A067029(A065090(n+3))` -/
def P11216400090166521912.Spec : Prop :=
  ∀ n, P11216400090166521912.a n = A166948 (n + 1)

end A166948

/-! ## A166948.P14872147517734131200

`A067029(lt[1, A003415(n)])`
-/

namespace A166948.P14872147517734131200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A166948.P14872147517734131200

namespace A166948

/-- `A067029(lt[1, A003415(n)])` -/
def P14872147517734131200.Spec : Prop :=
  ∀ n, P14872147517734131200.a n = A166948 (n + 1)

end A166948

/-! ## A166948.P9225832738066969555

`A067029(lt[1, A018783(n)])`
-/

namespace A166948.P9225832738066969555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A166948.P9225832738066969555

namespace A166948

/-- `A067029(lt[1, A018783(n)])` -/
def P9225832738066969555.Spec : Prop :=
  ∀ n, P9225832738066969555.a n = A166948 (n + 1)

end A166948

/-! ## A166948.P8027462074364916271

`val(A018252(n+2), p?[A107286(n)])`
-/

namespace A166948.P8027462074364916271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018252 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166948.P8027462074364916271

namespace A166948

/-- `val(A018252(n+2), p?[A107286(n)])` -/
def P8027462074364916271.Spec : Prop :=
  ∀ n, (P8027462074364916271.a n : ℤ) = A166948 (n + 1)

end A166948

/-! ## A166948.P1370542105662366741

`val(A018252(n+2), p?[A020639(n+2)%(n+1)])`
-/

namespace A166948.P1370542105662366741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018252 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166948.P1370542105662366741

namespace A166948

/-- `val(A018252(n+2), p?[A020639(n+2)%(n+1)])` -/
def P1370542105662366741.Spec : Prop :=
  ∀ n, (P1370542105662366741.a n : ℤ) = A166948 (n + 1)

end A166948

/-! ## A166948.P13628255111134445938

`val(A018252(n+2), A107286(A018252(n+2)²))`
-/

namespace A166948.P13628255111134445938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018252 (n + 2)).toNat (A107286 (A018252 (n + 2) ^ 2).toNat).toNat

end

end A166948.P13628255111134445938

namespace A166948

/-- `val(A018252(n+2), A107286(A018252(n+2)²))` -/
def P13628255111134445938.Spec : Prop :=
  ∀ n, (P13628255111134445938.a n : ℤ) = A166948 (n + 1)

end A166948

/-! ## A166948.P12990672562198733623

`val(comp[C(A006530(n+1), n)], A020639(A018252(n+2)))`
-/

namespace A166948.P12990672562198733623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (A020639 (A018252 (n + 2)).toNat).toNat

end

end A166948.P12990672562198733623

namespace A166948

/-- `val(comp[C(A006530(n+1), n)], A020639(A018252(n+2)))` -/
def P12990672562198733623.Spec : Prop :=
  ∀ n, (P12990672562198733623.a n : ℤ) = A166948 (n + 1)

end A166948

/-! ## A166948.P11023688736762889245

`val(comp[C(A020639(n+1), n)], A020639(A018252(n+2)))`
-/

namespace A166948.P11023688736762889245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (A020639 (A018252 (n + 2)).toNat).toNat

end

end A166948.P11023688736762889245

namespace A166948

/-- `val(comp[C(A020639(n+1), n)], A020639(A018252(n+2)))` -/
def P11023688736762889245.Spec : Prop :=
  ∀ n, (P11023688736762889245.a n : ℤ) = A166948 (n + 1)

end A166948

/-! ## A166948.P17957374707814370558

`val(lt[1, A001222(n+1)]+1, A020639(A018252(n+2)))`
-/

namespace A166948.P17957374707814370558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) (A020639 (A018252 (n + 2)).toNat).toNat

end

end A166948.P17957374707814370558

namespace A166948

/-- `val(lt[1, A001222(n+1)]+1, A020639(A018252(n+2)))` -/
def P17957374707814370558.Spec : Prop :=
  ∀ n, (P17957374707814370558.a n : ℤ) = A166948 (n + 1)

end A166948

/-! ## A166948.P8838809112997821467

`val(lt[2, A000005(n+1)]+1, A020639(A018252(n+2)))`
-/

namespace A166948.P8838809112997821467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) (A020639 (A018252 (n + 2)).toNat).toNat

end

end A166948.P8838809112997821467

namespace A166948

/-- `val(lt[2, A000005(n+1)]+1, A020639(A018252(n+2)))` -/
def P8838809112997821467.Spec : Prop :=
  ∀ n, (P8838809112997821467.a n : ℤ) = A166948 (n + 1)

end A166948

/-! ## A166948.P8700958493701629207

`val(lt[A000010(n+1), n]+1, A020639(A018252(n+2)))`
-/

namespace A166948.P8700958493701629207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) (A020639 (A018252 (n + 2)).toNat).toNat

end

end A166948.P8700958493701629207

namespace A166948

/-- `val(lt[A000010(n+1), n]+1, A020639(A018252(n+2)))` -/
def P8700958493701629207.Spec : Prop :=
  ∀ n, (P8700958493701629207.a n : ℤ) = A166948 (n + 1)

end A166948

/-! ## A166948.P16709167701664769386

`val(comp[A000040(n+1)-2]+2, A020639(A018252(n+2)))`
-/

namespace A166948.P16709167701664769386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) (A020639 (A018252 (n + 2)).toNat).toNat

end

end A166948.P16709167701664769386

namespace A166948

/-- `val(comp[A000040(n+1)-2]+2, A020639(A018252(n+2)))` -/
def P16709167701664769386.Spec : Prop :=
  ∀ n, (P16709167701664769386.a n : ℤ) = A166948 (n + 1)

end A166948

/-!
# A166949: The count of largest prime factors in n-th composite.

The programs for A166949, the canonical program `A166949.P12645471863304146666` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166949 has offset 1).

The definition of A166949 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A071178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166949.P12645471863304146666

`A071178(A002808(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A166949

/-- `A071178(A002808(n+1))` -/
def P12645471863304146666.Spec : Prop :=
  ∀ n, P12645471863304146666.a n = A166949 (n + 1)

theorem P12645471863304146666.correct : P12645471863304146666.Spec := by
  intro n
  simp only [A166949, Nat.add_sub_cancel]

end A166949

/-! ## A166949.P4680852760929439617

`val(A018252(n+2), A052369(n+1))`
-/

namespace A166949.P4680852760929439617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018252 (n + 2)).toNat (A052369 (n + 1)).toNat

end

end A166949.P4680852760929439617

namespace A166949

/-- `val(A018252(n+2), A052369(n+1))` -/
def P4680852760929439617.Spec : Prop :=
  ∀ n, (P4680852760929439617.a n : ℤ) = A166949 (n + 1)

end A166949

/-! ## A166949.P10711142448890030717

`val(comp[C(A006530(n+1), n)], A006530(comp[C(A006530(n+1), n)]))`
-/

namespace A166949.P10711142448890030717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (A006530 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

end

end A166949.P10711142448890030717

namespace A166949

/-- `val(comp[C(A006530(n+1), n)], A006530(comp[C(A006530(n+1), n)]))` -/
def P10711142448890030717.Spec : Prop :=
  ∀ n, (P10711142448890030717.a n : ℤ) = A166949 (n + 1)

end A166949

/-! ## A166949.P16406080368096668159

`A071178(A083257(n+2))`
-/

namespace A166949.P16406080368096668159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A083257 (n + 2)).toNat

end

end A166949.P16406080368096668159

namespace A166949

/-- `A071178(A083257(n+2))` -/
def P16406080368096668159.Spec : Prop :=
  ∀ n, P16406080368096668159.a n = A166949 (n + 1)

end A166949

/-! ## A166949.P14532915847486229707

`A071178(Δ[A053767(n)])`
-/

namespace A166949.P14532915847486229707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (f1 (n + 1) - f1 n).toNat

end

end A166949.P14532915847486229707

namespace A166949

/-- `A071178(Δ[A053767(n)])` -/
def P14532915847486229707.Spec : Prop :=
  ∀ n, P14532915847486229707.a n = A166949 (n + 1)

end A166949

/-! ## A166949.P14629605880786315431

`A071178(comp[A351078(n)])`
-/

namespace A166949.P14629605880786315431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A166949.P14629605880786315431

namespace A166949

/-- `A071178(comp[A351078(n)])` -/
def P14629605880786315431.Spec : Prop :=
  ∀ n, P14629605880786315431.a n = A166949 (n + 1)

end A166949

/-! ## A166949.P6114637340325169405

`A071178(A018252(n+2))`
-/

namespace A166949.P6114637340325169405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A018252 (n + 2)).toNat

end

end A166949.P6114637340325169405

namespace A166949

/-- `A071178(A018252(n+2))` -/
def P6114637340325169405.Spec : Prop :=
  ∀ n, P6114637340325169405.a n = A166949 (n + 1)

end A166949

/-! ## A166949.P660059218475027738

`A071178(A141468(n+3))`
-/

namespace A166949.P660059218475027738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A141468 (n + 3)).toNat

end

end A166949.P660059218475027738

namespace A166949

/-- `A071178(A141468(n+3))` -/
def P660059218475027738.Spec : Prop :=
  ∀ n, P660059218475027738.a n = A166949 (n + 1)

end A166949

/-! ## A166949.P4266391777805710046

`A071178(lt[1, A003415(n)])`
-/

namespace A166949.P4266391777805710046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A166949.P4266391777805710046

namespace A166949

/-- `A071178(lt[1, A003415(n)])` -/
def P4266391777805710046.Spec : Prop :=
  ∀ n, P4266391777805710046.a n = A166949 (n + 1)

end A166949

/-! ## A166949.P15093460761933542170

`A071178(lt[1, A018783(n)])`
-/

namespace A166949.P15093460761933542170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A166949.P15093460761933542170

namespace A166949

/-- `A071178(lt[1, A018783(n)])` -/
def P15093460761933542170.Spec : Prop :=
  ∀ n, P15093460761933542170.a n = A166949 (n + 1)

end A166949

/-! ## A166949.P7308012721875954577

`A071178(lt[1, A107286(n)])`
-/

namespace A166949.P7308012721875954577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A166949.P7308012721875954577

namespace A166949

/-- `A071178(lt[1, A107286(n)])` -/
def P7308012721875954577.Spec : Prop :=
  ∀ n, P7308012721875954577.a n = A166949 (n + 1)

end A166949

/-! ## A166949.P3659892816654879113

`A071178(comp[C(A006530(n+1), n)])`
-/

namespace A166949.P3659892816654879113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A166949.P3659892816654879113

namespace A166949

/-- `A071178(comp[C(A006530(n+1), n)])` -/
def P3659892816654879113.Spec : Prop :=
  ∀ n, P3659892816654879113.a n = A166949 (n + 1)

end A166949

/-! ## A166949.P10822671586693172694

`A071178(comp[C(A020639(n+1), n)])`
-/

namespace A166949.P10822671586693172694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A166949.P10822671586693172694

namespace A166949

/-- `A071178(comp[C(A020639(n+1), n)])` -/
def P10822671586693172694.Spec : Prop :=
  ∀ n, P10822671586693172694.a n = A166949 (n + 1)

end A166949

/-! ## A166949.P1475444164649052935

`A071178(lt[n+2, A000203(n+1)]+1)`
-/

namespace A166949.P1475444164649052935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A166949.P1475444164649052935

namespace A166949

/-- `A071178(lt[n+2, A000203(n+1)]+1)` -/
def P1475444164649052935.Spec : Prop :=
  ∀ n, P1475444164649052935.a n = A166949 (n + 1)

end A166949

/-! ## A166949.P9716127697721704824

`∑{e}[A053585(lt[2, A000005(n+1)]+1), #]`
-/

namespace A166949.P9716127697721704824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A166949.P9716127697721704824

namespace A166949

/-- `∑{e}[A053585(lt[2, A000005(n+1)]+1), #]` -/
def P9716127697721704824.Spec : Prop :=
  ∀ n, (P9716127697721704824.a n : ℤ) = A166949 (n + 1)

end A166949

/-! ## A166949.P2710493719516124690

`∏{e}[A053585(lt[1, A001222(n+1)]+1), #]`
-/

namespace A166949.P2710493719516124690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A166949.P2710493719516124690

namespace A166949

/-- `∏{e}[A053585(lt[1, A001222(n+1)]+1), #]` -/
def P2710493719516124690.Spec : Prop :=
  ∀ n, (P2710493719516124690.a n : ℤ) = A166949 (n + 1)

end A166949

/-! ## A166949.P10850122188418117963

`∏{e}[A053585(lt[A000010(n+1), n]+1), #]`
-/

namespace A166949.P10850122188418117963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A166949.P10850122188418117963

namespace A166949

/-- `∏{e}[A053585(lt[A000010(n+1), n]+1), #]` -/
def P10850122188418117963.Spec : Prop :=
  ∀ n, (P10850122188418117963.a n : ℤ) = A166949 (n + 1)

end A166949

/-! ## A166949.P15229378577503087332

`A071178(eq[0, floor(1/A001222(n+2))]+2)`
-/

namespace A166949.P15229378577503087332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A001222 (n + 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A166949.P15229378577503087332

namespace A166949

/-- `A071178(eq[0, floor(1/A001222(n+2))]+2)` -/
def P15229378577503087332.Spec : Prop :=
  ∀ n, P15229378577503087332.a n = A166949 (n + 1)

end A166949

/-! ## A166949.P4167509743704629178

`A071178(comp[C(A014963(n+1), n)])`
-/

namespace A166949.P4167509743704629178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A166949.P4167509743704629178

namespace A166949

/-- `A071178(comp[C(A014963(n+1), n)])` -/
def P4167509743704629178.Spec : Prop :=
  ∀ n, P4167509743704629178.a n = A166949 (n + 1)

end A166949

/-! ## A166949.P653994227884708016

`A071178(A129401(n+1))`
-/

namespace A166949.P653994227884708016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A129401 (n + 1)).toNat

end

end A166949.P653994227884708016

namespace A166949

/-- `A071178(A129401(n+1))` -/
def P653994227884708016.Spec : Prop :=
  ∀ n, P653994227884708016.a n = A166949 (n + 1)

end A166949

/-!
# A166952: G.f. satisfies: A(x) = theta_3(x*A(x)) where Jacobi theta_3(x) = 1 + 2*Sum_{n>=1} x^(n^2).

The programs for A166952, there is no canonical definition to state claims against.
-/

/-! ## A166952.P13032241851172335407

`A066536(n)/(n+1)`
-/

namespace A166952.P13032241851172335407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066536 n : ℚ) / (n + 1 : ℚ)

end

end A166952.P13032241851172335407

/-! ## A166952.P3264645278197674439

`A379200(∑[n]+1)`
-/

namespace A166952.P3264645278197674439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379200 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A166952.P3264645278197674439

/-! ## A166952.P6262734625510006932

`A122141(A001844(n))/(n+1)`
-/

namespace A166952.P6262734625510006932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122141 (A001844 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A166952.P6262734625510006932

/-! ## A166952.P17428446639377174929

`A122141(A266725(2*n+1))/(n+1)`
-/

namespace A166952.P17428446639377174929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122141 (A266725 (2 * n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A166952.P17428446639377174929

/-! ## A166952.P2291644147606385315

`A286815(A056220(n+1))/(n+1)`
-/

namespace A166952.P2291644147606385315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286815 (A056220 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A166952.P2291644147606385315

/-! ## A166952.P11231147694023336975

`A286815(A054000(n+1)+1)/(n+1)`
-/

namespace A166952.P11231147694023336975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286815 (A054000 (n + 1) + 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A166952.P11231147694023336975

/-! ## A166952.P13995186968144693579

`A286815(A000384(n+1)+n)/(n+1)`
-/

namespace A166952.P13995186968144693579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286815 (A000384 (n + 1) + (n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A166952.P13995186968144693579

/-!
# A166955: phi(n) is a perfect power.

The programs for A166955, there is no canonical definition to state claims against.
-/

/-! ## A166955.P6669399539257535947

`∪[A046161(n), A065528(n+1)]`
-/

namespace A166955.P6669399539257535947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166955.P6669399539257535947

/-! ## A166955.P11477508052012237689

`∪[A065528(n+1), A081294(n)]`
-/

namespace A166955.P11477508052012237689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166955.P11477508052012237689

/-! ## A166955.P2253236075740363484

`∪[A065528(n+1), A084215(n)]`
-/

namespace A166955.P2253236075740363484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166955.P2253236075740363484

/-! ## A166955.P7334625365276319363

`∪[A065528(n+1), A098232(n)]`
-/

namespace A166955.P7334625365276319363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098232 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166955.P7334625365276319363

/-! ## A166955.P15788718951790938797

`∪[A065528(n+1), A104721(n)]`
-/

namespace A166955.P15788718951790938797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104721 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166955.P15788718951790938797

/-! ## A166955.P17120649976849645078

`∪[A039770(n+1), A065528(n+1)]`
-/

namespace A166955.P17120649976849645078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166955.P17120649976849645078

/-! ## A166955.P12433666883245469595

`∪[A039771(n+1), A065528(n+1)]`
-/

namespace A166955.P12433666883245469595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166955.P12433666883245469595

/-! ## A166955.P18350703094472514286

`∪[A054754(n+1), A065528(n+1)]`
-/

namespace A166955.P18350703094472514286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166955.P18350703094472514286

/-! ## A166955.P12427547336872836211

`∪[A054964(n+1), A065528(n+1)]`
-/

namespace A166955.P12427547336872836211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166955.P12427547336872836211

/-! ## A166955.P5607499309123760292

`∪[A065528(n+1), A078164(n+1)]`
-/

namespace A166955.P5607499309123760292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166955.P5607499309123760292

/-! ## A166955.P3171571781406777418

`∪[A065528(n+1), A078165(n+1)]`
-/

namespace A166955.P3171571781406777418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166955.P3171571781406777418

/-! ## A166955.P6159652611623597782

`∪[A065528(n+1), A078169(n+1)]`
-/

namespace A166955.P6159652611623597782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166955.P6159652611623597782

/-! ## A166955.P13077318470702162053

`∪[A078167(n+1), A065528(n+1)]`
-/

namespace A166955.P13077318470702162053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166955.P13077318470702162053

/-! ## A166955.P18270606605564460025

`record[(n+1)*A075802(A000010(n+1))]`
-/

namespace A166955.P18270606605564460025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075802 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166955.P18270606605564460025

/-!
# A166956: a(n) = 2^n +(-1)^n - 2.

The programs for A166956, the canonical program `A166956.P15369764889156686095` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166956 has offset 0).

The definition of A166956 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+(-1)^n-2` (program `A166956.P15369764889156686095`, by `A166956.P15369764889156686095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166956.P15369764889156686095

`2^n+(-1)^n-2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166956

/-- `2^n+(-1)^n-2` -/
def P15369764889156686095.Spec : Prop :=
  ∀ n, P15369764889156686095.a n = A166956 n

theorem P15369764889156686095.correct : P15369764889156686095.Spec := by
  intro n
  simp only [A166956]

end A166956

/-! ## A166956.P9398620290256674061

`∑[ogf((x-5x^2)/(-1+x+2x^2))]`
-/

namespace A166956.P9398620290256674061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 5] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166956.P9398620290256674061

namespace A166956

/-- `∑[ogf((x-5x^2)/(-1+x+2x^2))]` -/
def P9398620290256674061.Spec : Prop :=
  ∀ n, P9398620290256674061.a n = A166956 n

end A166956

/-! ## A166956.P13971933274831766358

`ogf((-x+5x^2)/(1-2x-x^2+2x^3))`
-/

namespace A166956.P13971933274831766358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 5] [1, -2, -1, 2] n

end

end A166956.P13971933274831766358

namespace A166956

/-- `ogf((-x+5x^2)/(1-2x-x^2+2x^3))` -/
def P13971933274831766358.Spec : Prop :=
  ∀ n, P13971933274831766358.a n = A166956 n

end A166956

/-! ## A166956.P13032274177545272782

`floor(a(n-1)+2*(a(n-2)+2))` with `a(0)=0, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A166956.P13032274177545272782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  a (n - 1) + 2 * (a (n - 2) + 2)

end

end A166956.P13032274177545272782

namespace A166956

/-- `floor(a(n-1)+2*(a(n-2)+2))` -/
def P13032274177545272782.Spec : Prop :=
  ∀ n, P13032274177545272782.a n = A166956 n

theorem P13032274177545272782.correct : P13032274177545272782.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A166956, Nat.add_sub_cancel, A166956.P13032274177545272782.a, A166956.P15369764889156686095.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A166956, Nat.add_sub_cancel, A166956.P13032274177545272782.a, A166956.P15369764889156686095.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166956

/-! ## A166956.P12335952771543420306

`Δ[2^n-(or(1, n)+n)]`
-/

namespace A166956.P12335952771543420306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.lor 1 n + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166956.P12335952771543420306

namespace A166956

/-- `Δ[2^n-(or(1, n)+n)]` -/
def P12335952771543420306.Spec : Prop :=
  ∀ n, P12335952771543420306.a n = A166956 n

end A166956

/-! ## A166956.P8646830717118987640

`floor(∑[2*a(n-1)]-a(n-1))` with `a(0)=0, a(1)=-1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A166956.P8646830717118987640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A166956.P8646830717118987640

namespace A166956

/-- `floor(∑[2*a(n-1)]-a(n-1))` -/
def P8646830717118987640.Spec : Prop :=
  ∀ n, P8646830717118987640.a n = A166956 n

end A166956

/-! ## A166956.P7999267829298094077

`Δ[2^n-A042948(n)]`
-/

namespace A166956.P7999267829298094077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166956.P7999267829298094077

namespace A166956

/-- `Δ[2^n-A042948(n)]` -/
def P7999267829298094077.Spec : Prop :=
  ∀ n, P7999267829298094077.a n = A166956 n

end A166956

/-! ## A166956.P16819086691562182256

`Δ[A000295(n)-or(1, n)]`
-/

namespace A166956.P16819086691562182256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n - (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166956.P16819086691562182256

namespace A166956

/-- `Δ[A000295(n)-or(1, n)]` -/
def P16819086691562182256.Spec : Prop :=
  ∀ n, P16819086691562182256.a n = A166956 n

end A166956

/-! ## A166956.P9096570784340165459

`Δ[A049332(n)-Δ[n²]]`
-/

namespace A166956.P9096570784340165459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049332 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166956.P9096570784340165459

namespace A166956

/-- `Δ[A049332(n)-Δ[n²]]` -/
def P9096570784340165459.Spec : Prop :=
  ∀ n, P9096570784340165459.a n = A166956 n

end A166956

/-! ## A166956.P4191809369287141588

`Δ[A140253(n)-Δ[n²]]`
-/

namespace A166956.P4191809369287141588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166956.P4191809369287141588

namespace A166956

/-- `Δ[A140253(n)-Δ[n²]]` -/
def P4191809369287141588.Spec : Prop :=
  ∀ n, P4191809369287141588.a n = A166956 n

end A166956

/-! ## A166956.P14082198689885441671

`Δ[A166920(n)-Δ[n²]]`
-/

namespace A166956.P14082198689885441671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166956.P14082198689885441671

namespace A166956

/-- `Δ[A166920(n)-Δ[n²]]` -/
def P14082198689885441671.Spec : Prop :=
  ∀ n, P14082198689885441671.a n = A166956 n

end A166956

/-! ## A166956.P13659875476931461172

`(A099430(n)²-1)/A014551(n)`
-/

namespace A166956.P13659875476931461172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099430 n ^ 2 - 1 : ℚ) / (A014551 n : ℚ)

end

end A166956.P13659875476931461172

namespace A166956

/-- `(A099430(n)²-1)/A014551(n)` -/
def P13659875476931461172.Spec : Prop :=
  ∀ n, P13659875476931461172.a n = (A166956 n : ℚ)

end A166956

/-!
# A166957: a(n) = 841*n^3 + 261*n^2 + 28*n + 1.

The programs for A166957, the canonical program `A166957.P1049669771999238868` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166957 has offset 0).

The definition of A166957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `841*n^3+261*n²+28*n+1` (program `A166957.P1049669771999238868`, by `A166957.P1049669771999238868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166957.P4214994039674558626

`1+28*n+261*n²+841*n^3`
-/

namespace A166957.P4214994039674558626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 28 * n + 261 * n ^ 2 + 841 * n ^ 3

end

end A166957.P4214994039674558626

namespace A166957

/-- `1+28*n+261*n²+841*n^3` -/
def P4214994039674558626.Spec : Prop :=
  ∀ n, (P4214994039674558626.a n : ℤ) = A166957 n

theorem P4214994039674558626.correct : P4214994039674558626.Spec := by
  intro n
  simp only [A166957, Nat.add_sub_cancel, A166957.P4214994039674558626.a, A166957.P1049669771999238868.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A166957

/-! ## A166957.P1049669771999238868

`841*n^3+261*n²+28*n+1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166957

/-- `841*n^3+261*n²+28*n+1` -/
def P1049669771999238868.Spec : Prop :=
  ∀ n, (P1049669771999238868.a n : ℤ) = A166957 n

theorem P1049669771999238868.correct : P1049669771999238868.Spec := by
  intro n
  simp only [A166957]

end A166957

/-!
# A166958: Numbers k such that k <= the number of perfect partitions of k.

The programs for A166958, there is no canonical definition to state claims against.
-/

/-! ## A166958.P3486726542231073071

`lt[abs(1-n), A074206(n+1)]`
-/

namespace A166958.P3486726542231073071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166958.P3486726542231073071

/-! ## A166958.P2295713539254114598

`lt[abs(1-n), A002033(n)]`
-/

namespace A166958.P2295713539254114598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166958.P2295713539254114598

/-! ## A166958.P12871563554765658324

`lt[n, A002033(n+1)]+1`
-/

namespace A166958.P12871563554765658324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166958.P12871563554765658324

/-! ## A166958.P8943278027293062661

`lt[n, 2*A174726(n+1)]`
-/

namespace A166958.P8943278027293062661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166958.P8943278027293062661

/-! ## A166958.P9422434073394017488

`A028310(lt[n, A002033(n)])`
-/

namespace A166958.P9422434073394017488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A166958.P9422434073394017488

/-!
# A166959: Numbers congruent to (12,32) mod 44.

The programs for A166959, the canonical program `A166959.P12923728238228176290` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166959 has offset 1).

The definition of A166959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166959.P12923728238228176290

`44*n-a(n-1)` with `a(0)=12`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166959

/-- `44*n-a(n-1)` -/
def P12923728238228176290.Spec : Prop :=
  ∀ n, P12923728238228176290.a n = A166959 (n + 1)

theorem P12923728238228176290.correct : P12923728238228176290.Spec := by
  intro n
  simp only [A166959, Nat.add_sub_cancel]

end A166959

/-! ## A166959.P14668559367125753199

`22*(n+1)-(-1)^(n+1)-11`
-/

namespace A166959.P14668559367125753199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (22 * (n + 1) : ℤ) - (-1) ^ (n + 1) - 11

end

end A166959.P14668559367125753199

namespace A166959

/-- `22*(n+1)-(-1)^(n+1)-11` -/
def P14668559367125753199.Spec : Prop :=
  ∀ n, P14668559367125753199.a n = A166959 (n + 1)

theorem P14668559367125753199.correct : P14668559367125753199.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A166959, Nat.add_sub_cancel, A166959.P14668559367125753199.a, A166959.P12923728238228176290.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A166959, Nat.add_sub_cancel, A166959.P14668559367125753199.a, A166959.P12923728238228176290.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166959

/-! ## A166959.P6152804019903504149

`∑[44-a(n-1)]` with `a(0)=12, a(1)=20`
-/

namespace A166959.P6152804019903504149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12, 20] fun n f1 =>
  44 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166959.P6152804019903504149

namespace A166959

/-- `∑[44-a(n-1)]` -/
def P6152804019903504149.Spec : Prop :=
  ∀ n, P6152804019903504149.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P11960834916296924719

`Δ[or(1, 11*n²+1)]`
-/

namespace A166959.P11960834916296924719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (11 * n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A166959.P11960834916296924719

namespace A166959

/-- `Δ[or(1, 11*n²+1)]` -/
def P11960834916296924719.Spec : Prop :=
  ∀ n, P11960834916296924719.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P16169946579656263354

`4*A299647(n+1)`
-/

namespace A166959.P16169946579656263354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A299647 (n + 1)

end

end A166959.P16169946579656263354

namespace A166959

/-- `4*A299647(n+1)` -/
def P16169946579656263354.Spec : Prop :=
  ∀ n, P16169946579656263354.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P13081700647718858516

`4*(A168465(n+1)+1)`
-/

namespace A166959.P13081700647718858516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A168465 (n + 1) + 1)

end

end A166959.P13081700647718858516

namespace A166959

/-- `4*(A168465(n+1)+1)` -/
def P13081700647718858516.Spec : Prop :=
  ∀ n, P13081700647718858516.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P17891259775021890622

`4*(A193910(n+1)+n+1)`
-/

namespace A166959.P17891259775021890622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A193910 (n + 1) + (n + 1 : ℤ))

end

end A166959.P17891259775021890622

namespace A166959

/-- `4*(A193910(n+1)+n+1)` -/
def P17891259775021890622.Spec : Prop :=
  ∀ n, P17891259775021890622.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P16655636282800367718

`xor(A010673(n), A141694(n))`
-/

namespace A166959.P16655636282800367718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n) (A141694 n)

end

end A166959.P16655636282800367718

namespace A166959

/-- `xor(A010673(n), A141694(n))` -/
def P16655636282800367718.Spec : Prop :=
  ∀ n, P16655636282800367718.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P17972853605440092914

`∪[A141694(2*n+1)-2, A141694(2*n)]`
-/

namespace A166959.P17972853605440092914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141694 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141694 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166959.P17972853605440092914

namespace A166959

/-- `∪[A141694(2*n+1)-2, A141694(2*n)]` -/
def P17972853605440092914.Spec : Prop :=
  ∀ n, (P17972853605440092914.a n : ℤ) = A166959 (n + 1)

end A166959

/-! ## A166959.P10571328235040488845

`A063229(3*n+2)`
-/

namespace A166959.P10571328235040488845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (3 * n + 2)

end

end A166959.P10571328235040488845

namespace A166959

/-- `A063229(3*n+2)` -/
def P10571328235040488845.Spec : Prop :=
  ∀ n, P10571328235040488845.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P8628199393379838425

`filter[A063229(n+1), A358680(#)]`
-/

namespace A166959.P8628199393379838425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A166959.P8628199393379838425

namespace A166959

/-- `filter[A063229(n+1), A358680(#)]` -/
def P8628199393379838425.Spec : Prop :=
  ∀ n, P8628199393379838425.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P15155121727341900614

`filter[A063229(n+1), A374036(#)]`
-/

namespace A166959.P15155121727341900614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A166959.P15155121727341900614

namespace A166959

/-- `filter[A063229(n+1), A374036(#)]` -/
def P15155121727341900614.Spec : Prop :=
  ∀ n, P15155121727341900614.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P12835849119191461088

`filter[A063229(n+2), A374045(#)]`
-/

namespace A166959.P12835849119191461088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A166959.P12835849119191461088

namespace A166959

/-- `filter[A063229(n+2), A374045(#)]` -/
def P12835849119191461088.Spec : Prop :=
  ∀ n, P12835849119191461088.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P15426856906852934911

`filter[A063229(n+1), A121262(#)]`
-/

namespace A166959.P15426856906852934911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A166959.P15426856906852934911

namespace A166959

/-- `filter[A063229(n+1), A121262(#)]` -/
def P15426856906852934911.Spec : Prop :=
  ∀ n, P15426856906852934911.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P3648279153676736838

`filter[A063229(n+1), A319710(#)]`
-/

namespace A166959.P3648279153676736838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A166959.P3648279153676736838

namespace A166959

/-- `filter[A063229(n+1), A319710(#)]` -/
def P3648279153676736838.Spec : Prop :=
  ∀ n, P3648279153676736838.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P7189842988996109386

`filter[A063229(n+1), A353494(#)]`
-/

namespace A166959.P7189842988996109386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A166959.P7189842988996109386

namespace A166959

/-- `filter[A063229(n+1), A353494(#)]` -/
def P7189842988996109386.Spec : Prop :=
  ∀ n, P7189842988996109386.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P3616655326778194324

`filter[A063229(n+2), A073089(#)]`
-/

namespace A166959.P3616655326778194324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A166959.P3616655326778194324

namespace A166959

/-- `filter[A063229(n+2), A073089(#)]` -/
def P3616655326778194324.Spec : Prop :=
  ∀ n, P3616655326778194324.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P10562351092810528804

`filter[A063229(n+2), A152822(#)]`
-/

namespace A166959.P10562351092810528804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A166959.P10562351092810528804

namespace A166959

/-- `filter[A063229(n+2), A152822(#)]` -/
def P10562351092810528804.Spec : Prop :=
  ∀ n, P10562351092810528804.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P9282226601015051704

`A315685(4*n+2)`
-/

namespace A166959.P9282226601015051704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 (4 * n + 2)

end

end A166959.P9282226601015051704

namespace A166959

/-- `A315685(4*n+2)` -/
def P9282226601015051704.Spec : Prop :=
  ∀ n, P9282226601015051704.a n = A166959 (n + 1)

end A166959

/-! ## A166959.P16155223954768176427

`A166033(A047457(n+1))`
-/

namespace A166959.P16155223954768176427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166033 (A047457 (n + 1)).toNat

end

end A166959.P16155223954768176427

namespace A166959

/-- `A166033(A047457(n+1))` -/
def P16155223954768176427.Spec : Prop :=
  ∀ n, P16155223954768176427.a n = A166959 (n + 1)

end A166959

/-!
# A166960: Triangle T(n, k) read by rows: T(n, k)= (m*n-m*k+1)*T(n-1, k-1) + k*(m*k-(m-1))*T(n-1, k) where m = 1.

The programs for A166960, there is no canonical definition to state claims against.
-/

/-! ## A166960.P5784021250223221804

`A235963(A117425(n)*A158116(n))`
-/

namespace A166960.P5784021250223221804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A117425 n * A158116 n).toNat

end

end A166960.P5784021250223221804

/-!
# A166961: Triangle T(n,k) read by rows: T(n,k) = (m*n - m*k + 1)*T(n - 1, k - 1) + k*(m*k - (m - 1))*T(n - 1, k) where m = 2.

The programs for A166961, there is no canonical definition to state claims against.
-/

/-! ## A166961.P6683815290281733697

`A249810(or(11, A129770(n)))`
-/

namespace A166961.P6683815290281733697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (Int.lor 11 (A129770 n)).toNat

end

end A166961.P6683815290281733697

/-! ## A166961.P1569530419259251068

`A094846(2*n+5)%A104272(A094816(n))`
-/

namespace A166961.P1569530419259251068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094846 (2 * n + 5)) (A104272 (A094816 n).toNat)

end

end A166961.P1569530419259251068

/-!
# A166962: Triangle T(n,k) read by rows: T(n,1) = T(n,n)=1, otherwise T(n,k) = (3n-3k+1)*T(n-1,k-1) + k*(3k-2)*T(n-1,k), 1<=k<=n.

The programs for A166962, there is no canonical definition to state claims against.
-/

/-! ## A166962.P5628786567340220941

`A213945(∑[2*(n+1)]+4)`
-/

namespace A166962.P5628786567340220941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213945 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A166962.P5628786567340220941

/-! ## A166962.P13522528600794732607

`A124151(A243657(n))`
-/

namespace A166962.P13522528600794732607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124151 (A243657 n).toNat

end

end A166962.P13522528600794732607

/-! ## A166962.P12365339427057977582

`A124151(A321475(n))`
-/

namespace A166962.P12365339427057977582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124151 (A321475 n).toNat

end

end A166962.P12365339427057977582

/-! ## A166962.P4914732903817048069

`A124151(A374265(n))`
-/

namespace A166962.P4914732903817048069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124151 (A374265 n).toNat

end

end A166962.P4914732903817048069

/-!
# A166963: Number of permutations in S_{2n} avoiding 123 and 1432 whose matrices are 180-degree symmetric.

The programs for A166963, the canonical program `A166963.P10475926338487431636` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166963 has offset 0).

The definition of A166963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166963.P10475926338487431636

`2*a(n-1)+a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=12, a(4)=27`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166963

/-- `2*a(n-1)+a(n-3)+a(n-4)-a(n-5)` -/
def P10475926338487431636.Spec : Prop :=
  ∀ n, P10475926338487431636.a n = A166963 n

theorem P10475926338487431636.correct : P10475926338487431636.Spec := by
  intro n
  simp only [A166963]

end A166963

/-! ## A166963.P8273305752902932359

`A116716(n+2)-A006356(n)`
-/

namespace A166963.P8273305752902932359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116716 (n + 2) - A006356 n

end

end A166963.P8273305752902932359

namespace A166963

/-- `A116716(n+2)-A006356(n)` -/
def P8273305752902932359.Spec : Prop :=
  ∀ n, P8273305752902932359.a n = A166963 n

end A166963

/-! ## A166963.P5817361092118080931

`A116716(n+2)-A077998(n+1)`
-/

namespace A166963.P5817361092118080931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116716 (n + 2) - A077998 (n + 1)

end

end A166963.P5817361092118080931

namespace A166963

/-- `A116716(n+2)-A077998(n+1)` -/
def P5817361092118080931.Spec : Prop :=
  ∀ n, P5817361092118080931.a n = A166963 n

end A166963

/-! ## A166963.P11539720135842065866

`A116716(n+2)-A106803(n+2)`
-/

namespace A166963.P11539720135842065866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116716 (n + 2) - A106803 (n + 2)

end

end A166963.P11539720135842065866

namespace A166963

/-- `A116716(n+2)-A106803(n+2)` -/
def P11539720135842065866.Spec : Prop :=
  ∀ n, P11539720135842065866.a n = A166963 n

end A166963

/-! ## A166963.P4514410694149773178

`A263683(A000096(n+2))-A006356(n)`
-/

namespace A166963.P4514410694149773178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263683 (A000096 (n + 2)).toNat - A006356 n

end

end A166963.P4514410694149773178

namespace A166963

/-- `A263683(A000096(n+2))-A006356(n)` -/
def P4514410694149773178.Spec : Prop :=
  ∀ n, P4514410694149773178.a n = A166963 n

end A166963

/-!
# A166965: a(n) = 20*a(n-1) - 64*a(n-2) for n > 1; a(0) = 1, a(1) = 19.

The programs for A166965, the canonical program `A166965.P1254634431639249113` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166965 has offset 0).

The definition of A166965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-64*a(n-2)` (program `A166965.P1254634431639249113`, by `A166965.P1254634431639249113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166965.P13640906710316755914

`(5*16^n-4^n)/4`
-/

namespace A166965.P13640906710316755914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 16 ^ n : ℤ) - (4 ^ n : ℤ) : ℚ) / 4

end

end A166965.P13640906710316755914

namespace A166965

/-- `(5*16^n-4^n)/4` -/
def P13640906710316755914.Spec : Prop :=
  ∀ n, P13640906710316755914.a n = (A166965 n : ℚ)

theorem P13640906710316755914.correct : P13640906710316755914.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A166965, Nat.add_sub_cancel, A166965.P13640906710316755914.a, A166965.P1254634431639249113.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A166965, Nat.add_sub_cancel, A166965.P13640906710316755914.a, A166965.P1254634431639249113.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166965

/-! ## A166965.P1254634431639249113

`20*a(n-1)-64*a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166965

/-- `20*a(n-1)-64*a(n-2)` -/
def P1254634431639249113.Spec : Prop :=
  ∀ n, P1254634431639249113.a n = A166965 n

theorem P1254634431639249113.correct : P1254634431639249113.Spec := by
  intro n
  simp only [A166965]

end A166965

/-! ## A166965.P6469844498286212052

`Δ[A026337(n)/6]`
-/

namespace A166965.P6469844498286212052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026337 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166965.P6469844498286212052

namespace A166965

/-- `Δ[A026337(n)/6]` -/
def P6469844498286212052.Spec : Prop :=
  ∀ n, P6469844498286212052.a n = (A166965 n : ℚ)

end A166965

/-! ## A166965.P3140987488410154970

`Δ[A320934(Δ[n²])]`
-/

namespace A166965.P3140987488410154970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320934 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166965.P3140987488410154970

namespace A166965

/-- `Δ[A320934(Δ[n²])]` -/
def P3140987488410154970.Spec : Prop :=
  ∀ n, P3140987488410154970.a n = A166965 n

end A166965

/-! ## A166965.P7158305903632554863

`floor(A121544(n+1)/6)`
-/

namespace A166965.P7158305903632554863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121544 (n + 1) : ℚ) / 6⌋

end

end A166965.P7158305903632554863

namespace A166965

/-- `floor(A121544(n+1)/6)` -/
def P7158305903632554863.Spec : Prop :=
  ∀ n, P7158305903632554863.a n = A166965 n

end A166965

/-! ## A166965.P12378994827425293029

`Δ[A003683(2*n)/2]`
-/

namespace A166965.P12378994827425293029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003683 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166965.P12378994827425293029

namespace A166965

/-- `Δ[A003683(2*n)/2]` -/
def P12378994827425293029.Spec : Prop :=
  ∀ n, P12378994827425293029.a n = (A166965 n : ℚ)

end A166965

/-! ## A166965.P12049030506546808919

`A003947(2*n)-floor(2^(n-1))²`
-/

namespace A166965.P12049030506546808919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 (2 * n) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2

end

end A166965.P12049030506546808919

namespace A166965

/-- `A003947(2*n)-floor(2^(n-1))²` -/
def P12049030506546808919.Spec : Prop :=
  ∀ n, P12049030506546808919.a n = A166965 n

end A166965

/-! ## A166965.P7232367736083537309

`2*A167031(n)-A167032(n)`
-/

namespace A166965.P7232367736083537309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167031 n - A167032 n

end

end A166965.P7232367736083537309

namespace A166965

/-- `2*A167031(n)-A167032(n)` -/
def P7232367736083537309.Spec : Prop :=
  ∀ n, P7232367736083537309.a n = A166965 n

end A166965

/-! ## A166965.P13115373471587226684

`Δ[A011782(n)²*A002450(n)]`
-/

namespace A166965.P13115373471587226684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 * A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166965.P13115373471587226684

namespace A166965

/-- `Δ[A011782(n)²*A002450(n)]` -/
def P13115373471587226684.Spec : Prop :=
  ∀ n, P13115373471587226684.a n = A166965 n

end A166965

/-! ## A166965.P8249678402926761527

`Δ[Δ[A003683(n)]*A003683(n)]`
-/

namespace A166965.P8249678402926761527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A003683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166965.P8249678402926761527

namespace A166965

/-- `Δ[Δ[A003683(n)]*A003683(n)]` -/
def P8249678402926761527.Spec : Prop :=
  ∀ n, P8249678402926761527.a n = A166965 n

end A166965

/-!
# A166966: Eigensequence of A047999, Sierpinski's gasket.

The programs for A166966, there is no canonical definition to state claims against.
-/

/-! ## A166966.P1204958222546066918

`A331520(2*(n+1))`
-/

namespace A166966.P1204958222546066918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331520 (2 * (n + 1))

end

end A166966.P1204958222546066918

/-! ## A166966.P6692441674703700396

`record[A331520(and(n, n+1))]`
-/

namespace A166966.P6692441674703700396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331520 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166966.P6692441674703700396

/-! ## A166966.P17216000036166034867

`record[(-1)^n*A331520(n)]`
-/

namespace A166966.P17216000036166034867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A331520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166966.P17216000036166034867

/-! ## A166966.P10115039062883129590

`record[A331520(n+2)/(-1)^n]`
-/

namespace A166966.P10115039062883129590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331520 (n + 2) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166966.P10115039062883129590

/-! ## A166966.P764702461608297505

`record[A331520(floor(n/(n%2+1)))]`
-/

namespace A166966.P764702461608297505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331520 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166966.P764702461608297505

/-!
# A166967: Triangle read by rows, (Sierpinski's gasket, A047999) * A166966 (diagonalized as a lower triangular matrix).

The programs for A166967, there is no canonical definition to state claims against.
-/

/-! ## A166967.P5165447912118552500

`A002024(A156953(n))*A047999(n)`
-/

namespace A166967.P5165447912118552500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A156953 n).toNat * A047999 n

end

end A166967.P5165447912118552500

/-! ## A166967.P5176317486241955365

`A007318(n)%2*A002024(A156953(n))`
-/

namespace A166967.P5176317486241955365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2 * A002024 (A156953 n).toNat

end

end A166967.P5176317486241955365

/-! ## A166967.P2108773957444621624

`A008975(n)%2*A002024(A156953(n))`
-/

namespace A166967.P2108773957444621624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008975 n) 2 * A002024 (A156953 n).toNat

end

end A166967.P2108773957444621624

/-! ## A166967.P5413063148467111614

`A011117(n)%2*A002024(A156953(n))`
-/

namespace A166967.P5413063148467111614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011117 n) 2 * A002024 (A156953 n).toNat

end

end A166967.P5413063148467111614

/-! ## A166967.P9757272145275773147

`A134059(n)%2*A002024(A156953(n))`
-/

namespace A166967.P9757272145275773147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134059 n) 2 * A002024 (A156953 n).toNat

end

end A166967.P9757272145275773147

/-!
# A166973: Triangle T(n,k) read by rows: T(n, k) = (m*n - m*k + 1)*T(n - 1, k - 1) + (5*k - 4)*(m*k - (m - 1))*T(n - 1, k) where m = 0.

The programs for A166973, there is no canonical definition to state claims against.
-/

/-! ## A166973.P8236296615914523563

`A022170(n)%(A058168(2*n+5)+7)`
-/

namespace A166973.P8236296615914523563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022170 n) (A058168 (2 * n + 5) + 7)

end

end A166973.P8236296615914523563

/-! ## A166973.P10713473092751233646

`A157156(n)%A203814(A157034(n))`
-/

namespace A166973.P10713473092751233646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157156 n) (A203814 (A157034 n).toNat)

end

end A166973.P10713473092751233646

/-! ## A166973.P11237159172145985951

`A022170(n)%A055907(A033948(3*n+4))`
-/

namespace A166973.P11237159172145985951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022170 n) (A055907 (A033948 (3 * n + 4)).toNat)

end

end A166973.P11237159172145985951

/-!
# A166974: Number of single-component graphs where the product of the valences of the nodes is n.

The programs for A166974, there is no canonical definition to state claims against.
-/

/-! ## A166974.P3709202644837358021

`A064289(A001055(A028310(n))!)`
-/

namespace A166974.P3709202644837358021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (Nat.factorial (A001055 (A028310 n).toNat).toNat)

end

end A166974.P3709202644837358021

/-! ## A166974.P8249600842183027418

`A097352(A160085(n)+1)`
-/

namespace A166974.P8249600842183027418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097352 (A160085 n + 1).toNat

end

end A166974.P8249600842183027418

/-! ## A166974.P17383683286762294348

`A029042(A001222(∏{d}[n, #]))`
-/

namespace A166974.P17383683286762294348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 (A001222 (∏ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A166974.P17383683286762294348

/-! ## A166974.P5187796570934879759

`A355733(1+A104725(n)²)`
-/

namespace A166974.P5187796570934879759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355733 (1 + A104725 n ^ 2).toNat

end

end A166974.P5187796570934879759

/-! ## A166974.P2443124034238508785

`A000005(A117791(A104725(n)))`
-/

namespace A166974.P2443124034238508785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A117791 (A104725 n).toNat).toNat

end

end A166974.P2443124034238508785

/-!
# A166976: Array of A002450 in the top row and higher-order differences in subsequent rows, read by antidiagonals.

The programs for A166976, there is no canonical definition to state claims against.
-/

/-! ## A166976.P16859371208657737659

`floor(A356036(n)/3)`
-/

namespace A166976.P16859371208657737659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A356036 n : ℚ) / 3⌋

end

end A166976.P16859371208657737659

/-! ## A166976.P9739352650301819801

`floor(A003959(A036561(n))/3)`
-/

namespace A166976.P9739352650301819801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003959 (A036561 n).toNat : ℚ) / 3⌋

end

end A166976.P9739352650301819801

/-! ## A166976.P14531179447361540993

`floor(A038258(n)/A120910(n+1))`
-/

namespace A166976.P14531179447361540993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038258 n : ℚ) / (A120910 (n + 1) : ℚ)⌋

end

end A166976.P14531179447361540993

/-! ## A166976.P12699343365799016514

`floor(A059268(n)*A175840(n)/3)`
-/

namespace A166976.P12699343365799016514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059268 n * A175840 n : ℚ) / 3⌋

end

end A166976.P12699343365799016514

/-! ## A166976.P10766648122004330425

`floor(A059268(n)²*A140303(n)/3)`
-/

namespace A166976.P10766648122004330425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059268 n ^ 2 * A140303 n : ℚ) / 3⌋

end

end A166976.P10766648122004330425

/-!
# A166977: Jacobsthal-Lucas numbers A014551, except a(0) = 0.

The programs for A166977, the canonical program `A166977.P9076702569533789481` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166977 has offset 0).

The definition of A166977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166977.P9076702569533789481

`a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166977

/-- `a(n-1)+2*a(n-2)` -/
def P9076702569533789481.Spec : Prop :=
  ∀ n, (P9076702569533789481.a n : ℤ) = A166977 n

theorem P9076702569533789481.correct : P9076702569533789481.Spec := by
  intro n
  simp only [A166977]

end A166977

/-! ## A166977.P6987216836221159025

`abs(xor(1, (-2)^n))`
-/

namespace A166977.P6987216836221159025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((-2) ^ n)|

end

end A166977.P6987216836221159025

namespace A166977

/-- `abs(xor(1, (-2)^n))` -/
def P6987216836221159025.Spec : Prop :=
  ∀ n, P6987216836221159025.a n = A166977 n

end A166977

/-! ## A166977.P5706186898703884778

`ogf((x+4x^2)/(1-x-2x^2))`
-/

namespace A166977.P5706186898703884778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, -1, -2] n

end

end A166977.P5706186898703884778

namespace A166977

/-- `ogf((x+4x^2)/(1-x-2x^2))` -/
def P5706186898703884778.Spec : Prop :=
  ∀ n, P5706186898703884778.a n = A166977 n

end A166977

/-! ## A166977.P3015321175521220835

`xor((-1)^n, (-2)^n)`
-/

namespace A166977.P3015321175521220835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ n) ((-2) ^ n)

end

end A166977.P3015321175521220835

namespace A166977

/-- `xor((-1)^n, (-2)^n)` -/
def P3015321175521220835.Spec : Prop :=
  ∀ n, P3015321175521220835.a n = A166977 n

end A166977

/-! ## A166977.P13763500179417822034

`2^n+(-1)^(n-2^n)`
-/

namespace A166977.P13763500179417822034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (-1 : ℚ) ^ ((n : ℤ) - (2 ^ n : ℤ) : ℤ)

end

end A166977.P13763500179417822034

namespace A166977

/-- `2^n+(-1)^(n-2^n)` -/
def P13763500179417822034.Spec : Prop :=
  ∀ n, P13763500179417822034.a n = (A166977 n : ℚ)

end A166977

/-! ## A166977.P14239362818150269002

`abs(1-Δ[A171501(n)])`
-/

namespace A166977.P14239362818150269002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n)|

end

end A166977.P14239362818150269002

namespace A166977

/-- `abs(1-Δ[A171501(n)])` -/
def P14239362818150269002.Spec : Prop :=
  ∀ n, P14239362818150269002.a n = A166977 n

end A166977

/-! ## A166977.P16800663345982570526

`A014551(n)*A057427(n)`
-/

namespace A166977.P16800663345982570526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n * A057427 n

end

end A166977.P16800663345982570526

namespace A166977

/-- `A014551(n)*A057427(n)` -/
def P16800663345982570526.Spec : Prop :=
  ∀ n, P16800663345982570526.a n = A166977 n

theorem P16800663345982570526.correct : P16800663345982570526.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A166977, Nat.add_sub_cancel, A166977.P16800663345982570526.a, A166977.P9076702569533789481.a, A014551, A014551.P15201545406723710920.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      simp only [A166977, Nat.add_sub_cancel, A166977.P16800663345982570526.a, A166977.P9076702569533789481.a, A014551, A014551.P15201545406723710920.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A166977

/-! ## A166977.P2809268752152312916

`A014551(n)%A001580(n)`
-/

namespace A166977.P2809268752152312916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014551 n) (A001580 n)

end

end A166977.P2809268752152312916

namespace A166977

/-- `A014551(n)%A001580(n)` -/
def P2809268752152312916.Spec : Prop :=
  ∀ n, P2809268752152312916.a n = A166977 n

end A166977

/-! ## A166977.P631736891320860833

`and(A014551(n), A057428(n))`
-/

namespace A166977.P631736891320860833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014551 n) (A057428 n)

end

end A166977.P631736891320860833

namespace A166977

/-- `and(A014551(n), A057428(n))` -/
def P631736891320860833.Spec : Prop :=
  ∀ n, P631736891320860833.a n = A166977 n

end A166977

/-! ## A166977.P6818054539631257206

`and(A014551(n), A134824(n))`
-/

namespace A166977.P6818054539631257206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014551 n) (A134824 n)

end

end A166977.P6818054539631257206

namespace A166977

/-- `and(A014551(n), A134824(n))` -/
def P6818054539631257206.Spec : Prop :=
  ∀ n, P6818054539631257206.a n = A166977 n

end A166977

/-! ## A166977.P924914063934357527

`and(A014551(n), A225883(n))`
-/

namespace A166977.P924914063934357527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014551 n) (A225883 n)

end

end A166977.P924914063934357527

namespace A166977

/-- `and(A014551(n), A225883(n))` -/
def P924914063934357527.Spec : Prop :=
  ∀ n, P924914063934357527.a n = A166977 n

end A166977

/-! ## A166977.P8208194152840237348

`and(A014551(n), A260196(n))`
-/

namespace A166977.P8208194152840237348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014551 n) (A260196 n)

end

end A166977.P8208194152840237348

namespace A166977

/-- `and(A014551(n), A260196(n))` -/
def P8208194152840237348.Spec : Prop :=
  ∀ n, P8208194152840237348.a n = A166977 n

end A166977

/-! ## A166977.P3869849861654008998

`and(A014551(n), A289370(n))`
-/

namespace A166977.P3869849861654008998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014551 n) (A289370 n)

end

end A166977.P3869849861654008998

namespace A166977

/-- `and(A014551(n), A289370(n))` -/
def P3869849861654008998.Spec : Prop :=
  ∀ n, P3869849861654008998.a n = A166977 n

end A166977

/-! ## A166977.P16044934008581706085

`Δ[abs(2^n-gcd(2, n))]`
-/

namespace A166977.P16044934008581706085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - (Nat.gcd 2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166977.P16044934008581706085

namespace A166977

/-- `Δ[abs(2^n-gcd(2, n))]` -/
def P16044934008581706085.Spec : Prop :=
  ∀ n, P16044934008581706085.a n = A166977 n

end A166977

/-! ## A166977.P15103357056275684284

`Δ[2^n-1-∑{d}[n, round(1/#)]]`
-/

namespace A166977.P15103357056275684284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1 - ∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway (1 / (d : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166977.P15103357056275684284

namespace A166977

/-- `Δ[2^n-1-∑{d}[n, round(1/#)]]` -/
def P15103357056275684284.Spec : Prop :=
  ∀ n, P15103357056275684284.a n = A166977 n

end A166977

/-! ## A166977.P8704988421031349670

`Δ[abs(A140253(n))]`
-/

namespace A166977.P8704988421031349670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140253 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166977.P8704988421031349670

namespace A166977

/-- `Δ[abs(A140253(n))]` -/
def P8704988421031349670.Spec : Prop :=
  ∀ n, P8704988421031349670.a n = A166977 n

end A166977

/-! ## A166977.P1277091910503875901

`Δ[xor(1, A051049(n)+1)]`
-/

namespace A166977.P1277091910503875901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A051049 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166977.P1277091910503875901

namespace A166977

/-- `Δ[xor(1, A051049(n)+1)]` -/
def P1277091910503875901.Spec : Prop :=
  ∀ n, P1277091910503875901.a n = A166977 n

end A166977

/-! ## A166977.P12699102460265593507

`and(A014551(n), A126646(n))`
-/

namespace A166977.P12699102460265593507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014551 n) (A126646 n)

end

end A166977.P12699102460265593507

namespace A166977

/-- `and(A014551(n), A126646(n))` -/
def P12699102460265593507.Spec : Prop :=
  ∀ n, P12699102460265593507.a n = A166977 n

end A166977

/-! ## A166977.P3331045698408203072

`and(A014551(n), A283606(n))`
-/

namespace A166977.P3331045698408203072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014551 n) (A283606 n)

end

end A166977.P3331045698408203072

namespace A166977

/-- `and(A014551(n), A283606(n))` -/
def P3331045698408203072.Spec : Prop :=
  ∀ n, P3331045698408203072.a n = A166977 n

end A166977

/-! ## A166977.P9458578607039834604

`and(A014551(n), A283607(n))`
-/

namespace A166977.P9458578607039834604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014551 n) (A283607 n)

end

end A166977.P9458578607039834604

namespace A166977

/-- `and(A014551(n), A283607(n))` -/
def P9458578607039834604.Spec : Prop :=
  ∀ n, P9458578607039834604.a n = A166977 n

end A166977

/-!
# A166978: a(n) = 4*( 1-(-1)^n) -2^n.

The programs for A166978, the canonical program `A166978.P3162228221821407923` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166978 has offset 0).

The definition of A166978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(1-(-1)^n)-2^n` (program `A166978.P3162228221821407923`, by `A166978.P3162228221821407923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166978.P3162228221821407923

`4*(1-(-1)^n)-2^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166978

/-- `4*(1-(-1)^n)-2^n` -/
def P3162228221821407923.Spec : Prop :=
  ∀ n, P3162228221821407923.a n = A166978 n

theorem P3162228221821407923.correct : P3162228221821407923.Spec := by
  intro n
  simp only [A166978]

end A166978

/-! ## A166978.P9724381813658947141

`Δ[or(6, 4*n)-2^n]`
-/

namespace A166978.P9724381813658947141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 (4 * n) : ℤ) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166978.P9724381813658947141

namespace A166978

/-- `Δ[or(6, 4*n)-2^n]` -/
def P9724381813658947141.Spec : Prop :=
  ∀ n, P9724381813658947141.a n = A166978 n

end A166978

/-! ## A166978.P18278921196994148081

`Δ[A016825(n)-A135440(n)]`
-/

namespace A166978.P18278921196994148081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A135440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166978.P18278921196994148081

namespace A166978

/-- `Δ[A016825(n)-A135440(n)]` -/
def P18278921196994148081.Spec : Prop :=
  ∀ n, P18278921196994148081.a n = A166978 n

end A166978

/-! ## A166978.P14474849607389721056

`Δ[A047550(n+1)-A062510(n)]`
-/

namespace A166978.P14474849607389721056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (n + 1) - A062510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166978.P14474849607389721056

namespace A166978

/-- `Δ[A047550(n+1)-A062510(n)]` -/
def P14474849607389721056.Spec : Prop :=
  ∀ n, P14474849607389721056.a n = A166978 n

theorem P14474849607389721056.correct : P14474849607389721056.Spec := by
  intro n
  simp only [A166978, Nat.add_sub_cancel, A166978.P14474849607389721056.f1, A166978.P14474849607389721056.a, A166978.P3162228221821407923.a, A047550, A047550.P14342903931357667161.a, A062510, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166978

/-! ## A166978.P14652391808291450765

`Δ[A168379(n+1)-A000918(n)]`
-/

namespace A166978.P14652391808291450765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168379 (n + 1) - A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166978.P14652391808291450765

namespace A166978

/-- `Δ[A168379(n+1)-A000918(n)]` -/
def P14652391808291450765.Spec : Prop :=
  ∀ n, P14652391808291450765.a n = A166978 n

theorem P14652391808291450765.correct : P14652391808291450765.Spec := by
  intro n
  simp only [A166978, Nat.add_sub_cancel, A166978.P14652391808291450765.f1, A166978.P14652391808291450765.a, A166978.P3162228221821407923.a, A000918, A000918.P14329454465793069288.a, A168379, A168379.P18212022095183093388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166978

/-! ## A166978.P10900956741786640979

`Δ[4*(A109613(n)-1)-A000079(n)]`
-/

namespace A166978.P10900956741786640979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A109613 n - 1) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166978.P10900956741786640979

namespace A166978

/-- `Δ[4*(A109613(n)-1)-A000079(n)]` -/
def P10900956741786640979.Spec : Prop :=
  ∀ n, P10900956741786640979.a n = A166978 n

end A166978

/-! ## A166978.P9494132767905379228

`Δ[A042948(A042948(n))-A140253(n)]`
-/

namespace A166978.P9494132767905379228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A042948 n).toNat - A140253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166978.P9494132767905379228

namespace A166978

/-- `Δ[A042948(A042948(n))-A140253(n)]` -/
def P9494132767905379228.Spec : Prop :=
  ∀ n, P9494132767905379228.a n = A166978 n

end A166978

/-!
# A166979: Triangle T(n,k) read by rows: T(n, k) = (m*n - m*k + 1)*T(n - 1, k - 1) + (9*k - 8)*(m*k - (m - 1))*T(n - 1, k) where m = 0.

The programs for A166979, there is no canonical definition to state claims against.
-/

/-! ## A166979.P533463434913588254

`A052419(A364071(n)+1)`
-/

namespace A166979.P533463434913588254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (A364071 n + 1).toNat

end

end A166979.P533463434913588254

/-! ## A166979.P12289593217399145036

`A007090(A111577(n+1)^A196222(n))`
-/

namespace A166979.P12289593217399145036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.roundAway ((A111577 (n + 1) : ℚ) ^ (A196222 n : ℤ))).toNat

end

end A166979.P12289593217399145036

/-! ## A166979.P4364546167861283512

`A007090(A111577(n+1)^A290216(n))`
-/

namespace A166979.P4364546167861283512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.roundAway ((A111577 (n + 1) : ℚ) ^ (A290216 n : ℤ))).toNat

end

end A166979.P4364546167861283512

/-! ## A166979.P10476241975674028854

`A007090(C(A111577(n+1), A290216(n)))`
-/

namespace A166979.P10476241975674028854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (Nat.choose (A111577 (n + 1)).toNat (A290216 n).toNat)

end

end A166979.P10476241975674028854

/-!
# A166980: The smallest prime p larger than prime(n) such that prime(n) is a quadratic residue (mod p).

The programs for A166980, there is no canonical definition to state claims against.
-/

/-! ## A166980.P18258703096455634990

`A097152(p?[comp[n²]])`
-/

namespace A166980.P18258703096455634990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097152 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A166980.P18258703096455634990

/-! ## A166980.P6957932976028398075

`A097152(∏{p}[p?[xor(1, n)+1], #])`
-/

namespace A166980.P6957932976028398075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097152 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A166980.P6957932976028398075

/-! ## A166980.P512715433526062832

`A097152(gcd(n+1, n²)*p?[xor(1, n)+1])`
-/

namespace A166980.P512715433526062832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097152 (Nat.gcd (n + 1) (n ^ 2) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A166980.P512715433526062832

/-! ## A166980.P17058303237104657078

`A097152(Δ[A007504(n)])`
-/

namespace A166980.P17058303237104657078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097152 (f1 (n + 1) - f1 n).toNat

end

end A166980.P17058303237104657078

/-! ## A166980.P861220766404829154

`A097152(A000040(n+1))`
-/

namespace A166980.P861220766404829154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097152 (A000040 (n + 1)).toNat

end

end A166980.P861220766404829154

/-! ## A166980.P8915792579787457770

`A097152(A216883(n+1))`
-/

namespace A166980.P8915792579787457770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097152 (A216883 (n + 1)).toNat

end

end A166980.P8915792579787457770

/-! ## A166980.P1014276003150166475

`A097152(A216884(n+1))`
-/

namespace A166980.P1014276003150166475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097152 (A216884 (n + 1)).toNat

end

end A166980.P1014276003150166475

/-! ## A166980.P5012892802171461235

`A097152(A216885(n+1))`
-/

namespace A166980.P5012892802171461235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097152 (A216885 (n + 1)).toNat

end

end A166980.P5012892802171461235

/-! ## A166980.P1026280432690410740

`A097152(A385492(n+1))`
-/

namespace A166980.P1026280432690410740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097152 (A385492 (n + 1)).toNat

end

end A166980.P1026280432690410740

/-!
# A166981: Superabundant numbers (A004394) that are highly composite (A002182).

The programs for A166981, there is no canonical definition to state claims against.
-/

/-! ## A166981.P14246479748192563089

`∩[A002182(n+1), A004394(n+1)]`
-/

namespace A166981.P14246479748192563089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166981.P14246479748192563089

/-! ## A166981.P15679831165023397921

`∩[A004394(n+1), A135372(n+1)-1]`
-/

namespace A166981.P15679831165023397921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166981.P15679831165023397921

/-! ## A166981.P9602396258453891262

`∩[A004394(n+1), A063072(n+1)-A072824(n+1)]`
-/

namespace A166981.P9602396258453891262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063072 (n + 1) - A072824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166981.P9602396258453891262

/-! ## A166981.P11066831536963572368

`∩[A002182(n+1), A025487(A293635(n+1))]`
-/

namespace A166981.P11066831536963572368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A293635 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166981.P11066831536963572368

/-! ## A166981.P3423014735309398126

`∩[A004394(n+1), A025487(A306802(n+1))]`
-/

namespace A166981.P3423014735309398126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A306802 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166981.P3423014735309398126

/-! ## A166981.P17127874537175620793

`A025487(∩[A293635(n+1), A306802(n+1)])`
-/

namespace A166981.P17127874537175620793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306802 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A166981.P17127874537175620793

/-! ## A166981.P1668067742805328762

`A061799(record[A349607(n+1)])`
-/

namespace A166981.P1668067742805328762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166981.P1668067742805328762

/-! ## A166981.P16996299248481104342

`∩[A061799(A002183(n+1)), A004394(n+1)]`
-/

namespace A166981.P16996299248481104342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A002183 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166981.P16996299248481104342

/-! ## A166981.P8011724780969995018

`∩[A004394(n+1), A179971(n+1)]`
-/

namespace A166981.P8011724780969995018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166981.P8011724780969995018

/-! ## A166981.P17188337510424594063

`∩[A002182(n+1), A073349(n+1)]`
-/

namespace A166981.P17188337510424594063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166981.P17188337510424594063

/-!
# A166982: Numbers whose number of ordered factorizations is a perfect power.

The programs for A166982, there is no canonical definition to state claims against.
-/

/-! ## A166982.P86217084281073232

`eq[0, A286852(A074206(n))]`
-/

namespace A166982.P86217084281073232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166982.P86217084281073232

/-! ## A166982.P8854507596724535497

`lt[A286852(A002033(n)), 1]+1`
-/

namespace A166982.P8854507596724535497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 (A002033 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166982.P8854507596724535497

/-! ## A166982.P8186655940986712831

`∪[A111307(n), A325337(n+1)]`
-/

namespace A166982.P8186655940986712831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166982.P8186655940986712831

/-! ## A166982.P9126042082660324024

`∪[A036966(n+1), A325337(n+1)]`
-/

namespace A166982.P9126042082660324024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166982.P9126042082660324024

/-! ## A166982.P5988259322863211546

`∪[A076467(n+1), A325337(n+1)]`
-/

namespace A166982.P5988259322863211546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166982.P5988259322863211546

/-! ## A166982.P13542054347018013882

`∪[A246549(n+1), A325337(n+1)]`
-/

namespace A166982.P13542054347018013882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166982.P13542054347018013882

/-! ## A166982.P13466702717312005489

`∪[A325337(n+1), A386632(n+1)]`
-/

namespace A166982.P13466702717312005489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166982.P13466702717312005489

/-! ## A166982.P3156127563103591948

`∪[A325337(n+1), A390540(n+1)]`
-/

namespace A166982.P3156127563103591948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166982.P3156127563103591948

/-!
# A166983: The n-th composite minus the number of its divisors.

The programs for A166983, the canonical program `A166983.P2428815246008838013` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166983 has offset 1).

The definition of A166983 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A035004, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166983.P2428815246008838013

`A002808(n+1)-A035004(n+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166983

/-- `A002808(n+1)-A035004(n+2)` -/
def P2428815246008838013.Spec : Prop :=
  ∀ n, P2428815246008838013.a n = A166983 (n + 1)

theorem P2428815246008838013.correct : P2428815246008838013.Spec := by
  intro n
  simp only [A166983, Nat.add_sub_cancel]

end A166983

/-! ## A166983.P9091494166126643378

`∑{d}[A018252(n+2), A000010(#)-1]`
-/

namespace A166983.P9091494166126643378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 d - 1)

end

end A166983.P9091494166126643378

namespace A166983

/-- `∑{d}[A018252(n+2), A000010(#)-1]` -/
def P9091494166126643378.Spec : Prop :=
  ∀ n, P9091494166126643378.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P18092929971313139175

`A002808(n+1)-(A144925(n+1)+2)`
-/

namespace A166983.P18092929971313139175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - (A144925 (n + 1) + 2)

end

end A166983.P18092929971313139175

namespace A166983

/-- `A002808(n+1)-(A144925(n+1)+2)` -/
def P18092929971313139175.Spec : Prop :=
  ∀ n, P18092929971313139175.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P14614249055799106286

`∑{d}[lt[2, A000005(n+1)]+1, A000010(#)-1]`
-/

namespace A166983.P14614249055799106286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d - 1)

end

end A166983.P14614249055799106286

namespace A166983

/-- `∑{d}[lt[2, A000005(n+1)]+1, A000010(#)-1]` -/
def P14614249055799106286.Spec : Prop :=
  ∀ n, P14614249055799106286.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P10346441766838599625

`∑{d}[comp[A006530(n+2)%(n+1)], A000010(#)-1]`
-/

namespace A166983.P10346441766838599625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 2)) (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d - 1)

end

end A166983.P10346441766838599625

namespace A166983

/-- `∑{d}[comp[A006530(n+2)%(n+1)], A000010(#)-1]` -/
def P10346441766838599625.Spec : Prop :=
  ∀ n, P10346441766838599625.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P6926680200146446161

`A018252(n+2)-A000005(Δ[A053767(n)])`
-/

namespace A166983.P6926680200146446161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - A000005 (f1 (n + 1) - f1 n).toNat

end

end A166983.P6926680200146446161

namespace A166983

/-- `A018252(n+2)-A000005(Δ[A053767(n)])` -/
def P6926680200146446161.Spec : Prop :=
  ∀ n, P6926680200146446161.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P9606428049956249152

`comp[C(A006530(n+1), n)]-A000005(A018252(n+2))`
-/

namespace A166983.P9606428049956249152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A000005 (A018252 (n + 2)).toNat

end

end A166983.P9606428049956249152

namespace A166983

/-- `comp[C(A006530(n+1), n)]-A000005(A018252(n+2))` -/
def P9606428049956249152.Spec : Prop :=
  ∀ n, P9606428049956249152.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P13646765338999634041

`comp[C(A020639(n+1), n)]-A000005(A018252(n+2))`
-/

namespace A166983.P13646765338999634041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A000005 (A018252 (n + 2)).toNat

end

end A166983.P13646765338999634041

namespace A166983

/-- `comp[C(A020639(n+1), n)]-A000005(A018252(n+2))` -/
def P13646765338999634041.Spec : Prop :=
  ∀ n, P13646765338999634041.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P11395814377848828633

`lt[2, A000005(n+1)]+1-A000005(A018252(n+2))`
-/

namespace A166983.P11395814377848828633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - A000005 (A018252 (n + 2)).toNat

end

end A166983.P11395814377848828633

namespace A166983

/-- `lt[2, A000005(n+1)]+1-A000005(A018252(n+2))` -/
def P11395814377848828633.Spec : Prop :=
  ∀ n, P11395814377848828633.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P1401523635847469078

`comp[A000040(n+1)-2]+2-A000005(A018252(n+2))`
-/

namespace A166983.P1401523635847469078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 : ℤ) - A000005 (A018252 (n + 2)).toNat

end

end A166983.P1401523635847469078

namespace A166983

/-- `comp[A000040(n+1)-2]+2-A000005(A018252(n+2))` -/
def P1401523635847469078.Spec : Prop :=
  ∀ n, P1401523635847469078.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P7178587902008363869

`A018252(n+2)-A035004(n+2)`
-/

namespace A166983.P7178587902008363869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - A035004 (n + 2)

end

end A166983.P7178587902008363869

namespace A166983

/-- `A018252(n+2)-A035004(n+2)` -/
def P7178587902008363869.Spec : Prop :=
  ∀ n, P7178587902008363869.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P6428019177246460959

`A049820(A002808(n+1))`
-/

namespace A166983.P6428019177246460959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A002808 (n + 1)).toNat

end

end A166983.P6428019177246460959

namespace A166983

/-- `A049820(A002808(n+1))` -/
def P6428019177246460959.Spec : Prop :=
  ∀ n, P6428019177246460959.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P1301843644661656910

`A049820(A018252(n+2))`
-/

namespace A166983.P1301843644661656910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A018252 (n + 2)).toNat

end

end A166983.P1301843644661656910

namespace A166983

/-- `A049820(A018252(n+2))` -/
def P1301843644661656910.Spec : Prop :=
  ∀ n, P1301843644661656910.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P5801073961071780187

`A049820(lt[1, A335405(n)])`
-/

namespace A166983.P5801073961071780187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A166983.P5801073961071780187

namespace A166983

/-- `A049820(lt[1, A335405(n)])` -/
def P5801073961071780187.Spec : Prop :=
  ∀ n, P5801073961071780187.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P10715664118722802917

`A049820(lt[2, A319410(n)])`
-/

namespace A166983.P10715664118722802917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A166983.P10715664118722802917

namespace A166983

/-- `A049820(lt[2, A319410(n)])` -/
def P10715664118722802917.Spec : Prop :=
  ∀ n, P10715664118722802917.a n = A166983 (n + 1)

end A166983

/-! ## A166983.P2763492275886198949

`A067747(2*(n+1))-A000005(A067747(2*(n+1)))`
-/

namespace A166983.P2763492275886198949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * (n + 1)) - A000005 (A067747 (2 * (n + 1))).toNat

end

end A166983.P2763492275886198949

namespace A166983

/-- `A067747(2*(n+1))-A000005(A067747(2*(n+1)))` -/
def P2763492275886198949.Spec : Prop :=
  ∀ n, P2763492275886198949.a n = A166983 (n + 1)

end A166983

/-!
# A166984: a(n) = 20*a(n-1) - 64*a(n-2) for n > 1; a(0) = 1, a(1) = 20.

The programs for A166984, the canonical program `A166984.P6059212659561488054` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166984 has offset 0).

The definition of A166984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-64*a(n-2)` (program `A166984.P6059212659561488054`, by `A166984.P6059212659561488054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166984.P11725127226149979985

`(4*16^n-4^n)/3`
-/

namespace A166984.P11725127226149979985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 16 ^ n : ℤ) - (4 ^ n : ℤ) : ℚ) / 3

end

end A166984.P11725127226149979985

namespace A166984

/-- `(4*16^n-4^n)/3` -/
def P11725127226149979985.Spec : Prop :=
  ∀ n, P11725127226149979985.a n = (A166984 n : ℚ)

theorem P11725127226149979985.correct : P11725127226149979985.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A166984, Nat.add_sub_cancel, A166984.P11725127226149979985.a, A166984.P6059212659561488054.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A166984, Nat.add_sub_cancel, A166984.P11725127226149979985.a, A166984.P6059212659561488054.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A166984

/-! ## A166984.P10029941757564333010

`16*a(n-1)+4^n` with `a(0)=1`
-/

namespace A166984.P10029941757564333010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  16 * a (n - 1) + 4 ^ n

end

end A166984.P10029941757564333010

namespace A166984

/-- `16*a(n-1)+4^n` -/
def P10029941757564333010.Spec : Prop :=
  ∀ n, (P10029941757564333010.a n : ℤ) = A166984 n

end A166984

/-! ## A166984.P6059212659561488054

`20*a(n-1)-64*a(n-2)` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166984

/-- `20*a(n-1)-64*a(n-2)` -/
def P6059212659561488054.Spec : Prop :=
  ∀ n, P6059212659561488054.a n = A166984 n

theorem P6059212659561488054.correct : P6059212659561488054.Spec := by
  intro n
  simp only [A166984]

end A166984

/-! ## A166984.P17576808998427856016

`lcm(4^n, ∑[4^n])`
-/

namespace A166984.P17576808998427856016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (4 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166984.P17576808998427856016

namespace A166984

/-- `lcm(4^n, ∑[4^n])` -/
def P17576808998427856016.Spec : Prop :=
  ∀ n, (P17576808998427856016.a n : ℤ) = A166984 n

end A166984

/-! ## A166984.P2693373804011716712

`or(16*a(n-1), 4^n)` with `a(0)=1`
-/

namespace A166984.P2693373804011716712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (16 * a (n - 1)) (4 ^ n)

end

end A166984.P2693373804011716712

namespace A166984

/-- `or(16*a(n-1), 4^n)` -/
def P2693373804011716712.Spec : Prop :=
  ∀ n, (P2693373804011716712.a n : ℤ) = A166984 n

end A166984

/-! ## A166984.P2959459151089031103

`xor(4*a(n-1), (4^n)²)` with `a(0)=1`
-/

namespace A166984.P2959459151089031103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * a (n - 1)) ((4 ^ n) ^ 2)

end

end A166984.P2959459151089031103

namespace A166984

/-- `xor(4*a(n-1), (4^n)²)` -/
def P2959459151089031103.Spec : Prop :=
  ∀ n, (P2959459151089031103.a n : ℤ) = A166984 n

end A166984

/-! ## A166984.P5721154025047690740

`∑[A166965(n)]`
-/

namespace A166984.P5721154025047690740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166984.P5721154025047690740

namespace A166984

/-- `∑[A166965(n)]` -/
def P5721154025047690740.Spec : Prop :=
  ∀ n, P5721154025047690740.a n = A166984 n

end A166984

/-! ## A166984.P9763062570588692836

`A246036(2*n)`
-/

namespace A166984.P9763062570588692836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246036 (2 * n)

end

end A166984.P9763062570588692836

namespace A166984

/-- `A246036(2*n)` -/
def P9763062570588692836.Spec : Prop :=
  ∀ n, P9763062570588692836.a n = A166984 n

end A166984

/-! ## A166984.P12598333881120922114

`A266842(2*n)`
-/

namespace A166984.P12598333881120922114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266842 (2 * n)

end

end A166984.P12598333881120922114

namespace A166984

/-- `A266842(2*n)` -/
def P12598333881120922114.Spec : Prop :=
  ∀ n, P12598333881120922114.a n = A166984 n

end A166984

/-! ## A166984.P933777092445571887

`A266846(2*n)`
-/

namespace A166984.P933777092445571887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266846 (2 * n)

end

end A166984.P933777092445571887

namespace A166984

/-- `A266846(2*n)` -/
def P933777092445571887.Spec : Prop :=
  ∀ n, P933777092445571887.a n = A166984 n

end A166984

/-!
# A166985: Primes of the form phi(n)/2.

The programs for A166985, there is no canonical definition to state claims against.
-/

/-! ## A166985.P1168154196652529449

`p?[A336757(n+1)]`
-/

namespace A166985.P1168154196652529449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166985.P1168154196652529449

/-! ## A166985.P8394047601304457687

`p?[A023022(n+2)]`
-/

namespace A166985.P8394047601304457687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166985.P8394047601304457687

/-! ## A166985.P12907862022187377471

`p?[Δ[A049806(n+1)]]`
-/

namespace A166985.P12907862022187377471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049806 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166985.P12907862022187377471

/-! ## A166985.P9240996070675402236

`p?[Δ[A046657(n+2)]]`
-/

namespace A166985.P9240996070675402236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046657 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166985.P9240996070675402236

/-! ## A166985.P14706324246658536976

`p?[A055684(n+3)+1]`
-/

namespace A166985.P14706324246658536976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166985.P14706324246658536976

/-! ## A166985.P15781735658589326576

`p?[floor(A039649(n+1)/2)]`
-/

namespace A166985.P15781735658589326576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039649 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166985.P15781735658589326576

/-! ## A166985.P15717762485772635850

`p?[ceil(A109606(n+1)/2)]`
-/

namespace A166985.P15717762485772635850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109606 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166985.P15717762485772635850

/-! ## A166985.P10954563033474711003

`p?[floor(cosh(log(A000010(n+1))))]`
-/

namespace A166985.P10954563033474711003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (A000010 (n + 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166985.P10954563033474711003

/-! ## A166985.P3780841085868181121

`p?[round(cosh(log(A000010(n+2))))]`
-/

namespace A166985.P3780841085868181121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (A000010 (n + 2) : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166985.P3780841085868181121

/-!
# A166986: a(n) = 2*floor((n+2)/log(2)) - 4.

The programs for A166986, the canonical program `A166986.P3690938661298868164` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166986 has offset 1).

The definition of A166986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*floor((n+3)/log(2))-4` (program `A166986.P3690938661298868164`, by `A166986.P3690938661298868164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166986.P3690938661298868164

`2*floor((n+3)/log(2))-4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166986

/-- `2*floor((n+3)/log(2))-4` -/
def P3690938661298868164.Spec : Prop :=
  ∀ n, P3690938661298868164.a n = A166986 (n + 1)

theorem P3690938661298868164.correct : P3690938661298868164.Spec := by
  intro n
  simp only [A166986, Nat.add_sub_cancel]

end A166986

/-! ## A166986.P17428309182644999559

`∑[2*A022934(n+2)]`
-/

namespace A166986.P17428309182644999559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022934 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166986.P17428309182644999559

namespace A166986

/-- `∑[2*A022934(n+2)]` -/
def P17428309182644999559.Spec : Prop :=
  ∀ n, P17428309182644999559.a n = A166986 (n + 1)

end A166986

/-! ## A166986.P11448594624195277571

`2*(A307513(n+3)-2)`
-/

namespace A166986.P11448594624195277571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A307513 (n + 3) - 2)

end

end A166986.P11448594624195277571

namespace A166986

/-- `2*(A307513(n+3)-2)` -/
def P11448594624195277571.Spec : Prop :=
  ∀ n, P11448594624195277571.a n = A166986 (n + 1)

end A166986

/-! ## A166986.P15681400863512373394

`∑[A023187(Δ[A059542(n+2)])]`
-/

namespace A166986.P15681400863512373394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059542 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023187 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166986.P15681400863512373394

namespace A166986

/-- `∑[A023187(Δ[A059542(n+2)])]` -/
def P15681400863512373394.Spec : Prop :=
  ∀ n, P15681400863512373394.a n = A166986 (n + 1)

end A166986

/-! ## A166986.P2843460554682393185

`∑[A065300(Δ[A059542(n+2)])]`
-/

namespace A166986.P2843460554682393185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059542 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166986.P2843460554682393185

namespace A166986

/-- `∑[A065300(Δ[A059542(n+2)])]` -/
def P2843460554682393185.Spec : Prop :=
  ∀ n, P2843460554682393185.a n = A166986 (n + 1)

end A166986

/-! ## A166986.P18151314409828357930

`∑[A094562(Δ[A059542(n+2)])]`
-/

namespace A166986.P18151314409828357930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059542 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094562 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166986.P18151314409828357930

namespace A166986

/-- `∑[A094562(Δ[A059542(n+2)])]` -/
def P18151314409828357930.Spec : Prop :=
  ∀ n, P18151314409828357930.a n = A166986 (n + 1)

end A166986

/-! ## A166986.P4960659072248431812

`∑[A111490(Δ[A059542(n+2)])]`
-/

namespace A166986.P4960659072248431812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059542 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166986.P4960659072248431812

namespace A166986

/-- `∑[A111490(Δ[A059542(n+2)])]` -/
def P4960659072248431812.Spec : Prop :=
  ∀ n, P4960659072248431812.a n = A166986 (n + 1)

end A166986

/-! ## A166986.P14839987934605555582

`∑[A189093(Δ[A059542(n+2)])]`
-/

namespace A166986.P14839987934605555582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059542 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189093 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166986.P14839987934605555582

namespace A166986

/-- `∑[A189093(Δ[A059542(n+2)])]` -/
def P14839987934605555582.Spec : Prop :=
  ∀ n, P14839987934605555582.a n = A166986 (n + 1)

end A166986

/-!
# A166987: Members of A143610 for which both neighbors are squarefree.

The programs for A166987, there is no canonical definition to state claims against.
-/

/-! ## A166987.P16484773947246392148

`filter[A143610(n+1), A379971(#)]`
-/

namespace A166987.P16484773947246392148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A166987.P16484773947246392148

/-! ## A166987.P17305546207406618438

`filter[A216417(n+2), A379971(#)]`
-/

namespace A166987.P17305546207406618438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216417 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379971 (f1 j).toNat = 1) n)

end

end A166987.P17305546207406618438

/-! ## A166987.P4047937710597671656

`record[A327832(A143610(n+1))]`
-/

namespace A166987.P4047937710597671656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A143610 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166987.P4047937710597671656

/-! ## A166987.P12032767849366749417

`filter[A143610(n+1), A210455(#)]`
-/

namespace A166987.P12032767849366749417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A166987.P12032767849366749417

/-!
# A166988: Products n of a square of a prime and a cube of a prime such that n-1 and n+1 are semiprimes.

The programs for A166988, there is no canonical definition to state claims against.
-/

/-! ## A166988.P12480601269654228708

`∩[A143610(n+1), A380937(n+1)]`
-/

namespace A166988.P12480601269654228708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166988.P12480601269654228708

/-! ## A166988.P5169506759424354539

`∩[A216417(n+1), A380937(n+1)]`
-/

namespace A166988.P5169506759424354539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166988.P5169506759424354539

/-! ## A166988.P13787082776352646478

`∩[A272191(n+1), A380937(n+1)]`
-/

namespace A166988.P13787082776352646478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166988.P13787082776352646478

/-!
# A166989: G.f.: A(x) = 1/(1 - 2*x - 7*x^2 - 2*x^3 + x^4).

The programs for A166989, the canonical program `A166989.P17573471272515979615` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166989 has offset 0).

The definition of A166989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166989.P17573471272515979615

`2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=11, a(3)=38`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166989

/-- `2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` -/
def P17573471272515979615.Spec : Prop :=
  ∀ n, P17573471272515979615.a n = A166989 n

theorem P17573471272515979615.correct : P17573471272515979615.Spec := by
  intro n
  simp only [A166989]

end A166989

/-! ## A166989.P3380850960956435792

`ogf(1/(1-2x-7x^2-2x^3+x^4))`
-/

namespace A166989.P3380850960956435792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -7, -2, 1] n

end

end A166989.P3380850960956435792

namespace A166989

/-- `ogf(1/(1-2x-7x^2-2x^3+x^4))` -/
def P3380850960956435792.Spec : Prop :=
  ∀ n, P3380850960956435792.a n = A166989 n

end A166989

/-! ## A166989.P16496549326782202216

`A001582(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A166989.P16496549326782202216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001582 n + a (n - 2)

end

end A166989.P16496549326782202216

namespace A166989

/-- `A001582(n)+a(n-2)` -/
def P16496549326782202216.Spec : Prop :=
  ∀ n, P16496549326782202216.a n = A166989 n

end A166989

/-! ## A166989.P3602226870555454000

`a(n-2)+Δ[A000071(n+2)]*A000129(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A166989.P3602226870555454000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (f1 (n + 1) - f1 n) * A000129 (n + 1)

end

end A166989.P3602226870555454000

namespace A166989

/-- `a(n-2)+Δ[A000071(n+2)]*A000129(n+1)` -/
def P3602226870555454000.Spec : Prop :=
  ∀ n, P3602226870555454000.a n = A166989 n

end A166989

/-!
# A166990: G.f.: A(x) = exp( Sum_{n>=1} A000172(n)*x^n/n ) where Franel number A000172(n) = Sum_{k=0..n} C(n,k)^3.

The programs for A166990, there is no canonical definition to state claims against.
-/

/-! ## A166990.P9355380749035417468

`A060384(4*A227791(n))`
-/

namespace A166990.P9355380749035417468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (4 * A227791 n).toNat

end

end A166990.P9355380749035417468

/-! ## A166990.P3724019172919241872

`A060384(8*A129323(n))`
-/

namespace A166990.P3724019172919241872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (8 * A129323 n).toNat

end

end A166990.P3724019172919241872

/-!
# A166991: G.f.: A(x) = exp( Sum_{n>=1} A000172(n)*x^n/(2*n) ) where Franel number A000172(n) = Sum_{k=0..n} C(n,k)^3.

The programs for A166991, there is no canonical definition to state claims against.
-/

/-! ## A166991.P9060786830923353551

`A276366(n+1)-A060356(A061992(n))`
-/

namespace A166991.P9060786830923353551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276366 (n + 1) - A060356 (A061992 n).toNat

end

end A166991.P9060786830923353551

/-! ## A166991.P12087731812656321524

`A276366(n+1)-A330657(A330677(n))`
-/

namespace A166991.P12087731812656321524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276366 (n + 1) - A330657 (A330677 n).toNat

end

end A166991.P12087731812656321524

/-!
# A166992: G.f.: A(x) = exp( Sum_{n>=1} A005260(n)*x^n/n ) where A005260(n) = Sum_{k=0..n} C(n,k)^4.

The programs for A166992, there is no canonical definition to state claims against.
-/

/-! ## A166992.P14125854837443342761

`A052375(9^n+11*n)+n+1`
-/

namespace A166992.P14125854837443342761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052375 (9 ^ n + 11 * n) + (n + 1 : ℤ)

end

end A166992.P14125854837443342761

/-!
# A166993: G.f.: A(x) = exp( Sum_{n>=1} A005260(n)*x^n/(2*n) ), where A005260(n) = Sum_{k=0..n} C(n,k)^4.

The programs for A166993, there is no canonical definition to state claims against.
-/

/-! ## A166993.P10001973644183988221

`A039212(A203000(n))-n`
-/

namespace A166993.P10001973644183988221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039212 (A203000 n).toNat - (n : ℤ)

end

end A166993.P10001973644183988221

/-! ## A166993.P12088173440089845824

`A330123(A000088(n))+A228714(n)`
-/

namespace A166993.P12088173440089845824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330123 (A000088 n).toNat + A228714 n

end

end A166993.P12088173440089845824

/-!
# A166995: G.f.: C(x) = Sum_{n>=0} log(1 - 2^(2n)*x)^(2n)/(2n)!, a power series in x with integer coefficients.

The programs for A166995, the canonical program `A166995.P4924017726106166079` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166995 has offset 0).

The definition of A166995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166995.P4924017726106166079

`(C(2^n+n-1, n)+(-1)^n*C(2^n, n))/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166995

/-- `(C(2^n+n-1, n)+(-1)^n*C(2^n, n))/2` -/
def P4924017726106166079.Spec : Prop :=
  ∀ n, P4924017726106166079.a n = (A166995 n : ℚ)

end A166995

/-!
# A166996: G.f.: S(x) = Sum_{n>=0} -log(1 - 2^(2n+1)*x)^(2n+1)/(2n+1)!, a power series in x with integer coefficients.

The programs for A166996, the canonical program `A166996.P1704623149522745847` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166996 has offset 1).

The definition of A166996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166996.P1704623149522745847

`(C(2^(n+1)+n+1-1, n+1)-(-1)^(n+1)*C(2^(n+1), n+1))/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166996

/-- `(C(2^(n+1)+n+1-1, n+1)-(-1)^(n+1)*C(2^(n+1), n+1))/2` -/
def P1704623149522745847.Spec : Prop :=
  ∀ n, P1704623149522745847.a n = (A166996 (n + 1) : ℚ)

end A166996

/-! ## A166996.P6470856925075910646

`A060690(n+1)-A166995(n+1)`
-/

namespace A166996.P6470856925075910646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060690 (n + 1) - A166995 (n + 1)

end

end A166996.P6470856925075910646

namespace A166996

/-- `A060690(n+1)-A166995(n+1)` -/
def P6470856925075910646.Spec : Prop :=
  ∀ n, P6470856925075910646.a n = A166996 (n + 1)

end A166996

/-!
# A166997: G.f.: C(x)^2 - S(x)^2 where C(x) = Sum_{n>=0} log(1 - 2^(2n)*x)^(2n)/(2n)! and S(x) = Sum_{n>=0} -log(1 - 2^(2n+1)*x)^(2n+1)/(2n+1)! are the g.f.s of A166995 and A166996, respectively.

The programs for A166997, there is no canonical definition to state claims against.
-/

/-! ## A166997.P12498393552985970048

`A042948(A166998(n)+A072839(n+4))`
-/

namespace A166997.P12498393552985970048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A166998 n + A072839 (n + 4)).toNat

end

end A166997.P12498393552985970048

/-!
# A166998: G.f.: sqrt(C(x)^2 - S(x)^2) where C(x) = Sum_{n>=0} log(1 - 2^(2n)*x)^(2n)/(2n)! and S(x) = Sum_{n>=0} -log(1 - 2^(2n+1)*x)^(2n+1)/(2n+1)! are the g.f.s of A166995 and A166996, respectively.

The programs for A166998, there is no canonical definition to state claims against.
-/

/-! ## A166998.P972780215589367516

`A080879(n)*A160715(A000166(n))`
-/

namespace A166998.P972780215589367516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080879 n * A160715 (A000166 n).toNat

end

end A166998.P972780215589367516

/-!
# A166999: a(n) = a(n-1) + a(n-1)^2 + a(n-1)^3 for n>0 with a(0)=1.

The programs for A166999, the canonical program `A166999.P3079054183016485933` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166999 has offset 0).

The definition of A166999 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-1)²+a(n-1)^3` (program `A166999.P3079054183016485933`, by `A166999.P3079054183016485933.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166999.P3079054183016485933

`a(n-1)+a(n-1)²+a(n-1)^3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166999

/-- `a(n-1)+a(n-1)²+a(n-1)^3` -/
def P3079054183016485933.Spec : Prop :=
  ∀ n, (P3079054183016485933.a n : ℤ) = A166999 n

theorem P3079054183016485933.correct : P3079054183016485933.Spec := by
  intro n
  simp only [A166999]

end A166999

