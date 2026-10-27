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
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A353100: a(1) = 8; for n>1, a(n) = 9 * a(n-1) + 9 - n.

The programs for A353100, the canonical program `A353100.P3307685630989473994` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353100 has offset 1).

The definition of A353100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+9-(n+1)` (program `A353100.P3307685630989473994`, by `A353100.P3307685630989473994.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A353100.P3307685630989473994

`9*a(n-1)+9-(n+1)` with `a(0)=8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A353100

/-- `9*a(n-1)+9-(n+1)` -/
def P3307685630989473994.Spec : Prop :=
  ∀ n, P3307685630989473994.a n = A353100 (n + 1)

theorem P3307685630989473994.correct : P3307685630989473994.Spec := by
  intro n
  simp only [A353100, Nat.add_sub_cancel]

end A353100

/-! ## A353100.P16628750735866405991

`7*A014832(n+1)+n+1`
-/

namespace A353100.P16628750735866405991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A014832 (n + 1) + (n + 1 : ℤ)

end

end A353100.P16628750735866405991

namespace A353100

/-- `7*A014832(n+1)+n+1` -/
def P16628750735866405991.Spec : Prop :=
  ∀ n, P16628750735866405991.a n = A353100 (n + 1)

end A353100

/-! ## A353100.P13329662702699055794

`(7*9^(n+2)+8*(n+1)-63)/64`
-/

namespace A353100.P13329662702699055794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 9 ^ (n + 2) + 8 * (n + 1) : ℤ) - 63 : ℚ) / 64

end

end A353100.P13329662702699055794

namespace A353100

/-- `(7*9^(n+2)+8*(n+1)-63)/64` -/
def P13329662702699055794.Spec : Prop :=
  ∀ n, P13329662702699055794.a n = (A353100 (n + 1) : ℚ)

theorem P13329662702699055794.correct : P13329662702699055794.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A353100, Nat.add_sub_cancel, A353100.P13329662702699055794.a, A353100.P3307685630989473994.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A353100, Nat.add_sub_cancel, A353100.P13329662702699055794.a, A353100.P3307685630989473994.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A353100

/-! ## A353100.P11201680531761996518

`∑[ogf((8-9x)/(1-10x+9x^2))]`
-/

namespace A353100.P11201680531761996518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -9] [1, -10, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353100.P11201680531761996518

namespace A353100

/-- `∑[ogf((8-9x)/(1-10x+9x^2))]` -/
def P11201680531761996518.Spec : Prop :=
  ∀ n, P11201680531761996518.a n = A353100 (n + 1)

end A353100

/-! ## A353100.P2601178238049536102

`∑[9*a(n-1)-1]` with `a(0)=8`
-/

namespace A353100.P2601178238049536102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  9 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353100.P2601178238049536102

namespace A353100

/-- `∑[9*a(n-1)-1]` -/
def P2601178238049536102.Spec : Prop :=
  ∀ n, P2601178238049536102.a n = A353100 (n + 1)

end A353100

/-! ## A353100.P6902584817406088002

`9*a(n-1)+8-n` with `a(0)=8`
-/

namespace A353100.P6902584817406088002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  9 * a (n - 1) + (8 - (n : ℤ))

end

end A353100.P6902584817406088002

namespace A353100

/-- `9*a(n-1)+8-n` -/
def P6902584817406088002.Spec : Prop :=
  ∀ n, P6902584817406088002.a n = A353100 (n + 1)

theorem P6902584817406088002.correct : P6902584817406088002.Spec := by
  intro n
  simp only [A353100, Nat.add_sub_cancel, A353100.P6902584817406088002.a, A353100.P3307685630989473994.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A353100

/-! ## A353100.P11756018829771793859

`8-(n-9*a(n-1))` with `a(0)=8`
-/

namespace A353100.P11756018829771793859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  8 - ((n : ℤ) - 9 * a (n - 1))

end

end A353100.P11756018829771793859

namespace A353100

/-- `8-(n-9*a(n-1))` -/
def P11756018829771793859.Spec : Prop :=
  ∀ n, P11756018829771793859.a n = A353100 (n + 1)

end A353100

/-! ## A353100.P16837024787895130561

`∑[A187709(n+1)]`
-/

namespace A353100.P16837024787895130561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353100.P16837024787895130561

namespace A353100

/-- `∑[A187709(n+1)]` -/
def P16837024787895130561.Spec : Prop :=
  ∀ n, P16837024787895130561.a n = A353100 (n + 1)

end A353100

/-!
# A353101: Least b > 1 such that (b^(prime(n)^2) - 1)/(b^prime(n) - 1) is prime.

The programs for A353101, there is no canonical definition to state claims against.
-/

/-! ## A353101.P15542448912339984426

`A085398(A001248(n+1))`
-/

namespace A353101.P15542448912339984426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A001248 (n + 1)).toNat

end

end A353101.P15542448912339984426

/-! ## A353101.P10248036429779320068

`A085398(A000040(n+1)²)`
-/

namespace A353101.P10248036429779320068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A000040 (n + 1) ^ 2).toNat

end

end A353101.P10248036429779320068

/-! ## A353101.P12316350559596739882

`A085398(p?[xor(1, n)]²)`
-/

namespace A353101.P12316350559596739882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A353101.P12316350559596739882

/-! ## A353101.P14859636510451377699

`A085398(p?[comp[n²]]²)`
-/

namespace A353101.P14859636510451377699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A353101.P14859636510451377699

/-! ## A353101.P16935244357492890011

`A085398(p?[xor(1, n)+1]*p?[n%3+n])`
-/

namespace A353101.P16935244357492890011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A353101.P16935244357492890011

/-!
# A353102: Primes of the form 2^k + 3^k + 6.

The programs for A353102, there is no canonical definition to state claims against.
-/

/-! ## A353102.P9495974626927426567

`A229354(A354829(n+1))+2`
-/

namespace A353102.P9495974626927426567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229354 (A354829 (n + 1)).toNat + 2

end

end A353102.P9495974626927426567

/-! ## A353102.P7353704094557672588

`p?[2^n+3^n+6]`
-/

namespace A353102.P7353704094557672588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + (3 ^ n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A353102.P7353704094557672588

/-! ## A353102.P9076985443100830532

`record[A001414(A001550(n+1)+5)]`
-/

namespace A353102.P9076985443100830532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A001550 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353102.P9076985443100830532

/-!
# A353103: Solution to Forest of Numbers (Bosque de Números) puzzle for Opaque Rooks starting with numbers 1 and 2 for an n X n square grid (see Comments).

The programs for A353103, there is no canonical definition to state claims against.
-/

/-! ## A353103.P2877838459165507987

`A215001(A156040(n+1))`
-/

namespace A353103.P2877838459165507987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215001 (A156040 (n + 1)).toNat

end

end A353103.P2877838459165507987

/-! ## A353103.P16274774309018952738

`A191749(A326675(n+2))`
-/

namespace A353103.P16274774309018952738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191749 (A326675 (n + 2)).toNat

end

end A353103.P16274774309018952738

/-! ## A353103.P16776331967690011924

`xor(A313502(n), A375760(n))`
-/

namespace A353103.P16776331967690011924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A313502 n) (A375760 n)

end

end A353103.P16776331967690011924

/-! ## A353103.P13671335696083180797

`xor(A313503(n), A375760(n))`
-/

namespace A353103.P13671335696083180797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A313503 n) (A375760 n)

end

end A353103.P13671335696083180797

/-! ## A353103.P9112496241541279631

`∑[A138789(A022757(n+1))]`
-/

namespace A353103.P9112496241541279631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138789 (A022757 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353103.P9112496241541279631

/-!
# A353107: Base-9 representation of A007908(n).

The programs for A353107, there is no canonical definition to state claims against.
-/

/-! ## A353107.P13614080927417214200

`A017509(a(n-1)-A010051(n+1))+n+2` with `a(0)=1`
-/

namespace A353107.P13614080927417214200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017509 (a (n - 1) - A010051 (n + 1)).toNat + (n + 2 : ℤ)

end

end A353107.P13614080927417214200

/-!
# A353108: a(n) is the number of cycles of n numbers arranged so that every integer in 1..n*(n-1)+1 occurs as the sum of up to n adjacent numbers. Both a solution and its reverse are counted unless they are identical.

The programs for A353108, there is no canonical definition to state claims against.
-/

/-! ## A353108.P16951768747584137674

`A351690(n+1)/A002061(n+1)`
-/

namespace A353108.P16951768747584137674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351690 (n + 1) : ℚ) / (A002061 (n + 1) : ℚ)

end

end A353108.P16951768747584137674

/-! ## A353108.P12684583479977635210

`(comp[∑[A169966(n+1)]]-n)*A058241(n+1)`
-/

namespace A353108.P12684583479977635210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169966 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) * A058241 (n + 1)

end

end A353108.P12684583479977635210

/-! ## A353108.P15208600698775077411

`A055642(A016825(n))*A058241(n+1)`
-/

namespace A353108.P15208600698775077411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A016825 n).toNat * A058241 (n + 1)

end

end A353108.P15208600698775077411

/-! ## A353108.P12106309989000138887

`A055642(A003512(n+1))*A058241(n+1)`
-/

namespace A353108.P12106309989000138887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A003512 (n + 1)).toNat * A058241 (n + 1)

end

end A353108.P12106309989000138887

/-!
# A353109: Array read by antidiagonals: A(n, k) is the digital root of n*k with n >= 0 and k >= 0.

The programs for A353109, the canonical program `A353109.P16770643257705871787` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353109 has offset 0).

The definition of A353109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353109.P16770643257705871787

`A010888(A004247(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A353109

/-- `A010888(A004247(n))` -/
def P16770643257705871787.Spec : Prop :=
  ∀ n, P16770643257705871787.a n = A353109 n

theorem P16770643257705871787.correct : P16770643257705871787.Spec := by
  intro n
  simp only [A353109]

end A353109

/-! ## A353109.P15938329701506022780

`dr(A336225(n))`
-/

namespace A353109.P15938329701506022780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A336225 n)

end

end A353109.P15938329701506022780

namespace A353109

/-- `dr(A336225(n))` -/
def P15938329701506022780.Spec : Prop :=
  ∀ n, (P15938329701506022780.a n : ℤ) = A353109 n

end A353109

/-! ## A353109.P7317116076948387360

`dr(A391365(n))`
-/

namespace A353109.P7317116076948387360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A391365 n)

end

end A353109.P7317116076948387360

namespace A353109

/-- `dr(A391365(n))` -/
def P7317116076948387360.Spec : Prop :=
  ∀ n, (P7317116076948387360.a n : ℤ) = A353109 n

end A353109

/-! ## A353109.P6031440066496306906

`dr(log2(A117401(n)))`
-/

namespace A353109.P6031440066496306906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.logb 2 (A117401 n : ℝ)))

end

end A353109.P6031440066496306906

namespace A353109

/-- `dr(log2(A117401(n)))` -/
def P6031440066496306906.Spec : Prop :=
  ∀ n, (P6031440066496306906.a n : ℤ) = A353109 n

end A353109

/-! ## A353109.P8679455499150608910

`dr(1-A077028(n))`
-/

namespace A353109.P8679455499150608910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A077028 n)

end

end A353109.P8679455499150608910

namespace A353109

/-- `dr(1-A077028(n))` -/
def P8679455499150608910.Spec : Prop :=
  ∀ n, (P8679455499150608910.a n : ℤ) = A353109 n

end A353109

/-! ## A353109.P12195480962984436754

`dr(1-A176270(n))`
-/

namespace A353109.P12195480962984436754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A176270 n)

end

end A353109.P12195480962984436754

namespace A353109

/-- `dr(1-A176270(n))` -/
def P12195480962984436754.Spec : Prop :=
  ∀ n, (P12195480962984436754.a n : ℤ) = A353109 n

end A353109

/-! ## A353109.P3767440068913206938

`dr(A002262(A285192(n)))`
-/

namespace A353109.P3767440068913206938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002262 (A285192 n).toNat)

end

end A353109.P3767440068913206938

namespace A353109

/-- `dr(A002262(A285192(n)))` -/
def P3767440068913206938.Spec : Prop :=
  ∀ n, (P3767440068913206938.a n : ℤ) = A353109 n

end A353109

/-! ## A353109.P15284971087370265508

`A180595(2*A004247(n))`
-/

namespace A353109.P15284971087370265508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180595 (2 * A004247 n).toNat

end

end A353109.P15284971087370265508

namespace A353109

/-- `A180595(2*A004247(n))` -/
def P15284971087370265508.Spec : Prop :=
  ∀ n, P15284971087370265508.a n = A353109 n

end A353109

/-! ## A353109.P13132257367412370660

`A180595(2*A336225(n))`
-/

namespace A353109.P13132257367412370660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180595 (2 * A336225 n).toNat

end

end A353109.P13132257367412370660

namespace A353109

/-- `A180595(2*A336225(n))` -/
def P13132257367412370660.Spec : Prop :=
  ∀ n, P13132257367412370660.a n = A353109 n

end A353109

/-! ## A353109.P5413177110696747984

`A180595(2*A391365(n))`
-/

namespace A353109.P5413177110696747984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180595 (2 * A391365 n).toNat

end

end A353109.P5413177110696747984

namespace A353109

/-- `A180595(2*A391365(n))` -/
def P5413177110696747984.Spec : Prop :=
  ∀ n, P5413177110696747984.a n = A353109 n

end A353109

/-!
# A353118: Expansion of e.g.f. 1/(1 + log(1 - x)^3).

The programs for A353118, there is no canonical definition to state claims against.
-/

/-! ## A353118.P15335153270252739588

`A357881(A046691(n+2))`
-/

namespace A353118.P15335153270252739588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357881 (A046691 (n + 2)).toNat

end

end A353118.P15335153270252739588

/-! ## A353118.P13643235364163180229

`A357881(A052905(n+1)+1)`
-/

namespace A353118.P13643235364163180229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357881 (A052905 (n + 1) + 1).toNat

end

end A353118.P13643235364163180229

/-! ## A353118.P4239300901892334235

`A357881(A000096(n+3)-3)`
-/

namespace A353118.P4239300901892334235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357881 (A000096 (n + 3) - 3).toNat

end

end A353118.P4239300901892334235

/-! ## A353118.P4481093243686619196

`A357881(A000217(n+3)+n)`
-/

namespace A353118.P4481093243686619196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357881 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A353118.P4481093243686619196

/-! ## A353118.P7902098644738008960

`A357881(A167614(n+1)+2*n)`
-/

namespace A353118.P7902098644738008960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357881 (A167614 (n + 1) + (2 * n : ℤ)).toNat

end

end A353118.P7902098644738008960

/-! ## A353118.P3014060537153926250

`A357881(A167614(n+1)+n+n)`
-/

namespace A353118.P3014060537153926250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357881 (A167614 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A353118.P3014060537153926250

/-!
# A353119: Expansion of e.g.f. 1/(1 - log(1 - x)^4).

The programs for A353119, there is no canonical definition to state claims against.
-/

/-! ## A353119.P14529983654240031419

`A357881(A052905(n+2))`
-/

namespace A353119.P14529983654240031419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357881 (A052905 (n + 2)).toNat

end

end A353119.P14529983654240031419

/-! ## A353119.P13262161804874923171

`A357881(eq[4, A025581(n)])`
-/

namespace A353119.P13262161804874923171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353119.P13262161804874923171

/-! ## A353119.P6688869780846302410

`A357881(A000217(n+4)+n)`
-/

namespace A353119.P6688869780846302410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357881 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A353119.P6688869780846302410

/-! ## A353119.P11976867621504479625

`∏{e}[7^n, A353358(#)]`
-/

namespace A353119.P11976867621504479625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A353358 (Nat.factorization (f1 n) p)

end

end A353119.P11976867621504479625

/-!
# A353122: Numbers k such that k^k*(k+1) + 1 is prime.

The programs for A353122, there is no canonical definition to state claims against.
-/

/-! ## A353122.P7345112079239173950

`A286470(A002801(n))+n`
-/

namespace A353122.P7345112079239173950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (A002801 n).toNat + (n : ℤ)

end

end A353122.P7345112079239173950

/-! ## A353122.P13410250399660965430

`eq[A330256(n), A332246(n)]`
-/

namespace A353122.P13410250399660965430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353122.P13410250399660965430

/-! ## A353122.P9534034904400687461

`A038198(A000048(n))-1+n`
-/

namespace A353122.P9534034904400687461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038198 (A000048 n).toNat - 1 + (n : ℤ)

end

end A353122.P9534034904400687461

/-!
# A353124: Numbers k which have a record number of non-divisors < k (i.e., A049820(k)).

The programs for A353124, there is no canonical definition to state claims against.
-/

/-! ## A353124.P6444267984578647004

`A082284(record[1-A000005(n+1)+n])`
-/

namespace A353124.P6444267984578647004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000005 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353124.P6444267984578647004

/-! ## A353124.P678052010767035141

`A082284(record[n+1-∏{e}[n+1, #+1]])`
-/

namespace A353124.P678052010767035141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353124.P678052010767035141

/-! ## A353124.P4264583915159501740

`A082284(record[n+1-∑{d}[n+1, gcd(n, #)]])`
-/

namespace A353124.P4264583915159501740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353124.P4264583915159501740

/-! ## A353124.P17362869639811424109

`A082284(record[∑{d}[n+1, or(#, -1)]+n+1])`
-/

namespace A353124.P17362869639811424109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.lor (d : ℤ) (-1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353124.P17362869639811424109

/-! ## A353124.P1872924091717602899

`A082284(record[A049820(n+1)])`
-/

namespace A353124.P1872924091717602899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353124.P1872924091717602899

/-! ## A353124.P5917054324032134016

`A082284(record[1-Δ[A006218(n)]+n])`
-/

namespace A353124.P5917054324032134016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353124.P5917054324032134016

/-! ## A353124.P9271789608405784081

`A082284(record[2*(n+1)-A062249(n+1)])`
-/

namespace A353124.P9271789608405784081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A062249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353124.P9271789608405784081

/-!
# A353128: Antidiagonal sums of A353109.

The programs for A353128, there is no canonical definition to state claims against.
-/

/-! ## A353128.P9813556844963395566

`A362072(A062399(n))`
-/

namespace A353128.P9813556844963395566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362072 (A062399 n).toNat

end

end A353128.P9813556844963395566

/-! ## A353128.P13849175595505287960

`A362072(A351870(n))`
-/

namespace A353128.P13849175595505287960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362072 (A351870 n).toNat

end

end A353128.P13849175595505287960

/-! ## A353128.P1610759593074449901

`A362072(n^A172359(n))`
-/

namespace A353128.P1610759593074449901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362072 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A172359 n : ℤ))).toNat

end

end A353128.P1610759593074449901

/-! ## A353128.P6388347188127308564

`A362072(n)%record[A362114(n)]`
-/

namespace A353128.P6388347188127308564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362072 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A353128.P6388347188127308564

/-! ## A353128.P1274405002469452132

`A362072(n)+A000007(A006882(n))`
-/

namespace A353128.P1274405002469452132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362072 n + A000007 (A006882 n).toNat

end

end A353128.P1274405002469452132

/-!
# A353129: Expansion of sqrt(Pi) in base Pi.

The programs for A353129, there is no canonical definition to state claims against.
-/

/-! ## A353129.P6441721515850516180

`A318383(A017996(n))%3`
-/

namespace A353129.P6441721515850516180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318383 (A017996 n).toNat) 3

end

end A353129.P6441721515850516180

/-! ## A353129.P13020109711281927327

`A152196(or(A048724(n), A126869(n)))`
-/

namespace A353129.P13020109711281927327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152196 (Int.lor (A048724 n) (A126869 n)).toNat

end

end A353129.P13020109711281927327

/-! ## A353129.P4517297914378884863

`A080425(A055314(n+2)+A049939(n+1))`
-/

namespace A353129.P4517297914378884863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A055314 (n + 2) + A049939 (n + 1)).toNat

end

end A353129.P4517297914378884863

/-! ## A353129.P2025565567756093158

`A188014(A045785(n+1))+A188014(n+4)`
-/

namespace A353129.P2025565567756093158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A045785 (n + 1)).toNat + A188014 (n + 4)

end

end A353129.P2025565567756093158

/-! ## A353129.P11684861290661409779

`A140397(A001263(2*n+3)*A249399(n+1))`
-/

namespace A353129.P11684861290661409779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140397 (A001263 (2 * n + 3) * A249399 (n + 1)).toNat

end

end A353129.P11684861290661409779

/-!
# A353130: a(n) = floor(H(n) + exp(H(n))*log(H(n))) - n, where H(n) = Sum_{k=1..n} 1/k.

The programs for A353130, there is no canonical definition to state claims against.
-/

/-! ## A353130.P13656502653090322942

`A057640(n+1)-(n+1)`
-/

namespace A353130.P13656502653090322942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) - (n + 1 : ℤ)

end

end A353130.P13656502653090322942

/-! ## A353130.P18305855522197259047

`A057641(n+1)+A001065(n+1)`
-/

namespace A353130.P18305855522197259047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (n + 1) + A001065 (n + 1)

end

end A353130.P18305855522197259047

/-! ## A353130.P4963883697836266323

`A057640(-xor(n, -1))-1-n`
-/

namespace A353130.P4963883697836266323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (-Int.xor (n : ℤ) (-1)).toNat - 1 - (n : ℤ)

end

end A353130.P4963883697836266323

/-! ## A353130.P19038150855297908

`A001478(n+1)+A057640(n+1)`
-/

namespace A353130.P19038150855297908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A057640 (n + 1)

end

end A353130.P19038150855297908

/-! ## A353130.P11647810597756190183

`A057641(n+1)+A000203(n+1)-(n+1)`
-/

namespace A353130.P11647810597756190183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (n + 1) + (A000203 (n + 1) - (n + 1 : ℤ))

end

end A353130.P11647810597756190183

/-! ## A353130.P15037768358984108855

`A023443(A057640(n+1)-n)`
-/

namespace A353130.P15037768358984108855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A057640 (n + 1) - (n : ℤ)).toNat

end

end A353130.P15037768358984108855

/-! ## A353130.P7067064304873800142

`record[A057640(A126759(n))]-1-n`
-/

namespace A353130.P7067064304873800142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1 - (n : ℤ)

end

end A353130.P7067064304873800142

/-! ## A353130.P2652293838497614902

`record[A057640(A126759(n))-A126759(n)]`
-/

namespace A353130.P2652293838497614902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (A126759 n).toNat - A126759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353130.P2652293838497614902

/-! ## A353130.P2257288161881954005

`record[A057640(A065648(n))]+xor(n, -1)`
-/

namespace A353130.P2257288161881954005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + Int.xor (n : ℤ) (-1)

end

end A353130.P2257288161881954005

/-! ## A353130.P738190589739210098

`record[A057640(A065648(n))-A065648(n)]`
-/

namespace A353130.P738190589739210098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (A065648 n).toNat - A065648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353130.P738190589739210098

/-!
# A353131: Triangle read by rows of partial Bell polynomials B_{n,k} (x_1,...,x_{n-k+1}) evaluated at 2, 2, 12, 72, ..., (n-k)(n-k+1)!, n>=1, 1<=k<=n.

The programs for A353131, there is no canonical definition to state claims against.
-/

/-! ## A353131.P2487176986477774468

`(C(comp[∑[n]]-n, 2)-n)!*A353132(n+1)`
-/

namespace A353131.P2487176986477774468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat : ℤ) * A353132 (n + 1)

end

end A353131.P2487176986477774468

/-! ## A353131.P10344827932568919304

`A244318(A150543(n))`
-/

namespace A353131.P10344827932568919304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244318 (A150543 n).toNat

end

end A353131.P10344827932568919304

/-! ## A353131.P6683735411163968092

`A244318(A150544(n))`
-/

namespace A353131.P6683735411163968092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244318 (A150544 n).toNat

end

end A353131.P6683735411163968092

/-! ## A353131.P12603804080283353624

`A000005(lcm(A274396(n+1), A274401(2*(n+2))))`
-/

namespace A353131.P12603804080283353624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A274396 (n + 1)) (A274401 (2 * (n + 2))))

end

end A353131.P12603804080283353624

/-!
# A353133: Coefficients of expansion of f(x) = (1+x*m(x))^5*(x^2*(x*m(x))'+1) where m(x) is the generating function for A001006.

The programs for A353133, there is no canonical definition to state claims against.
-/

/-! ## A353133.P17637642138207321995

`A221494(∑[n+2]-1)`
-/

namespace A353133.P17637642138207321995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221494 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A353133.P17637642138207321995

/-! ## A353133.P1114007436122927304

`A180562(2*(n+2)²+1)`
-/

namespace A353133.P1114007436122927304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 (2 * (n + 2) ^ 2 + 1)

end

end A353133.P1114007436122927304

/-!
# A353134: a(n) = PrimePi(n*SumOfDigits(n)).

The programs for A353134, the canonical program `A353134.P833942943619179990` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353134 has offset 1).

The definition of A353134 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057147, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353134.P833942943619179990

`A000720(A057147(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A353134

/-- `A000720(A057147(n+1))` -/
def P833942943619179990.Spec : Prop :=
  ∀ n, P833942943619179990.a n = A353134 (n + 1)

theorem P833942943619179990.correct : P833942943619179990.Spec := by
  intro n
  simp only [A353134, Nat.add_sub_cancel]

end A353134

/-! ## A353134.P3818405154599140099

`A000720((n+1)*A007953(n+1))`
-/

namespace A353134.P3818405154599140099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * A007953 (n + 1)).toNat

end

end A353134.P3818405154599140099

namespace A353134

/-- `A000720((n+1)*A007953(n+1))` -/
def P3818405154599140099.Spec : Prop :=
  ∀ n, P3818405154599140099.a n = A353134 (n + 1)

theorem P3818405154599140099.correct : P3818405154599140099.Spec := by
  intro n
  simp only [A353134, Nat.add_sub_cancel, A353134.P3818405154599140099.a, A353134.P833942943619179990.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A007953, A007953.P3472751987379697826.a, A057147, A057147.P6552464879974957451.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353134

/-! ## A353134.P518667353040253407

`A000720((n+1)*∑{digits}[n+1, #])`
-/

namespace A353134.P518667353040253407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A353134.P518667353040253407

namespace A353134

/-- `A000720((n+1)*∑{digits}[n+1, #])` -/
def P518667353040253407.Spec : Prop :=
  ∀ n, P518667353040253407.a n = A353134 (n + 1)

end A353134

/-! ## A353134.P1113408101377873007

`A000720((n+1)*log(∏{digits}[n+1, exp(#)]))`
-/

namespace A353134.P1113408101377873007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod)).toNat

end

end A353134.P1113408101377873007

namespace A353134

/-- `A000720((n+1)*log(∏{digits}[n+1, exp(#)]))` -/
def P1113408101377873007.Spec : Prop :=
  ∀ n, P1113408101377873007.a n = A353134 (n + 1)

end A353134

/-! ## A353134.P6837955590895579118

`A000720((n+1)*Δ[A037123(n)])`
-/

namespace A353134.P6837955590895579118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A353134.P6837955590895579118

namespace A353134

/-- `A000720((n+1)*Δ[A037123(n)])` -/
def P6837955590895579118.Spec : Prop :=
  ∀ n, P6837955590895579118.a n = A353134 (n + 1)

end A353134

/-!
# A353136: Primes whose gaps to both neighbor primes are triangular numbers.

The programs for A353136, there is no canonical definition to state claims against.
-/

/-! ## A353136.P14499708141832873191

`A160058(A024899(n+1)*A361675(n))`
-/

namespace A353136.P14499708141832873191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160058 (A024899 (n + 1) * A361675 n).toNat

end

end A353136.P14499708141832873191

/-! ## A353136.P5909774732897182330

`A160058(lcm(A024899(n+1), A361675(n)))`
-/

namespace A353136.P5909774732897182330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160058 (Int.lcm (A024899 (n + 1)) (A361675 n))

end

end A353136.P5909774732897182330

/-!
# A353137: Primes whose gaps to both neighbor primes are powers of two.

The programs for A353137, the canonical program `A353137.P706346639936671998` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353137 has offset 1).

The definition of A353137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353137.P706346639936671998

`∩[A061771(n+1), A151800(A061771(n+1))]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353137

/-- `∩[A061771(n+1), A151800(A061771(n+1))]` -/
def P706346639936671998.Spec : Prop :=
  ∀ n, (P706346639936671998.a n : ℤ) = A353137 (n + 1)

theorem P706346639936671998.correct : P706346639936671998.Spec := by
  intro n
  simp only [A353137, Nat.add_sub_cancel]

end A353137

/-! ## A353137.P1526145250628868251

`p?[lcm(A139758(n+1), A152073(n+3))]`
-/

namespace A353137.P1526145250628868251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A139758 (n + 1)) (A152073 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A353137.P1526145250628868251

namespace A353137

/-- `p?[lcm(A139758(n+1), A152073(n+3))]` -/
def P1526145250628868251.Spec : Prop :=
  ∀ n, (P1526145250628868251.a n : ℤ) = A353137 (n + 1)

end A353137

/-! ## A353137.P17755248904852229080

`filter[A363768(n+1), A164292(#)]`
-/

namespace A353137.P17755248904852229080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A353137.P17755248904852229080

namespace A353137

/-- `filter[A363768(n+1), A164292(#)]` -/
def P17755248904852229080.Spec : Prop :=
  ∀ n, P17755248904852229080.a n = A353137 (n + 1)

end A353137

/-! ## A353137.P10892989814938905252

`∩[A001097(n+1), A363768(n+1)]`
-/

namespace A353137.P10892989814938905252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353137.P10892989814938905252

namespace A353137

/-- `∩[A001097(n+1), A363768(n+1)]` -/
def P10892989814938905252.Spec : Prop :=
  ∀ n, (P10892989814938905252.a n : ℤ) = A353137 (n + 1)

end A353137

/-! ## A353137.P10972658633504677873

`∩[A038604(n+1), A363768(n+1)]`
-/

namespace A353137.P10972658633504677873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353137.P10972658633504677873

namespace A353137

/-- `∩[A038604(n+1), A363768(n+1)]` -/
def P10972658633504677873.Spec : Prop :=
  ∀ n, (P10972658633504677873.a n : ℤ) = A353137 (n + 1)

end A353137

/-!
# A353138: Sum of (the number of digits in n to the power (each digit in n)).

The programs for A353138, there is no canonical definition to state claims against.
-/

/-! ## A353138.P11598697242467722718

`A278542(A009714(n))+A009714(n)`
-/

namespace A353138.P11598697242467722718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278542 (A009714 n).toNat + A009714 n

end

end A353138.P11598697242467722718

/-! ## A353138.P10672837043773741562

`A131754(A147380(n+2))`
-/

namespace A353138.P10672837043773741562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131754 (A147380 (n + 2)).toNat

end

end A353138.P10672837043773741562

/-!
# A353139: Digitally balanced numbers (A031443) whose squares are also digitally balanced.

The programs for A353139, there is no canonical definition to state claims against.
-/

/-! ## A353139.P14995951171726998801

`∩[A061656(n+1), A164344(n+1)]`
-/

namespace A353139.P14995951171726998801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353139.P14995951171726998801

/-! ## A353139.P18297679009001174784

`∩[A031443(n+1), A061656(n+1)]`
-/

namespace A353139.P18297679009001174784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353139.P18297679009001174784

/-! ## A353139.P16743635220051584510

`∩[A031443(n+1), A164344(n+1)]`
-/

namespace A353139.P16743635220051584510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353139.P16743635220051584510

/-! ## A353139.P16620970951313381993

`∩[A083567(n+1), A164344(n+1)]`
-/

namespace A353139.P16620970951313381993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353139.P16620970951313381993

/-!
# A353141: Near-Wieferich primes with abs(A) < 2.

The programs for A353141, there is no canonical definition to state claims against.
-/

/-! ## A353141.P17787713405273495013

`A355853(A295613(n))`
-/

namespace A353141.P17787713405273495013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355853 (A295613 n).toNat

end

end A353141.P17787713405273495013

/-!
# A353142: Decimal repunits written in base 3.

The programs for A353142, there is no canonical definition to state claims against.
-/

/-! ## A353142.P17637880257650144465

`(A055474(n)-1)/100`
-/

namespace A353142.P17637880257650144465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055474 n - 1 : ℚ) / 100

end

end A353142.P17637880257650144465

/-!
# A353143: Decimal repunits written in base 4.

The programs for A353143, the canonical program `A353143.P8420748734297639025` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353143 has offset 0).

The definition of A353143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353143.P8420748734297639025

`A007090(A002275(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A353143

/-- `A007090(A002275(n))` -/
def P8420748734297639025.Spec : Prop :=
  ∀ n, P8420748734297639025.a n = A353143 n

theorem P8420748734297639025.correct : P8420748734297639025.Spec := by
  intro n
  simp only [A353143]

end A353143

/-!
# A353144: Decimal repunits written in base 5.

The programs for A353144, the canonical program `A353144.P5147909990281384543` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353144 has offset 0).

The definition of A353144 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353144.P5147909990281384543

`A007091(A002275(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A353144

/-- `A007091(A002275(n))` -/
def P5147909990281384543.Spec : Prop :=
  ∀ n, P5147909990281384543.a n = A353144 n

theorem P5147909990281384543.correct : P5147909990281384543.Spec := by
  intro n
  simp only [A353144]

end A353144

/-! ## A353144.P12672213211678571994

`∑[A007091(floor(10^(n-1)))]`
-/

namespace A353144.P12672213211678571994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353144.P12672213211678571994

namespace A353144

/-- `∑[A007091(floor(10^(n-1)))]` -/
def P12672213211678571994.Spec : Prop :=
  ∀ n, P12672213211678571994.a n = A353144 n

end A353144

/-!
# A353145: Decimal repunits written in base 6.

The programs for A353145, there is no canonical definition to state claims against.
-/

/-! ## A353145.P6543741156855702206

`A007092(A002275(n))`
-/

namespace A353145.P6543741156855702206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A002275 n).toNat

end

end A353145.P6543741156855702206

/-!
# A353146: Decimal repunits written in base 7.

The programs for A353146, the canonical program `A353146.P3288861338525218168` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353146 has offset 0).

The definition of A353146 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007093, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353146.P3288861338525218168

`A007093(A002275(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A353146

/-- `A007093(A002275(n))` -/
def P3288861338525218168.Spec : Prop :=
  ∀ n, P3288861338525218168.a n = A353146 n

theorem P3288861338525218168.correct : P3288861338525218168.Spec := by
  intro n
  simp only [A353146]

end A353146

/-!
# A353147: Decimal repunits written in base 8.

The programs for A353147, the canonical program `A353147.P18088385678391061894` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353147 has offset 0).

The definition of A353147 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353147.P18088385678391061894

`A007094(A002275(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A353147

/-- `A007094(A002275(n))` -/
def P18088385678391061894.Spec : Prop :=
  ∀ n, P18088385678391061894.a n = A353147 n

theorem P18088385678391061894.correct : P18088385678391061894.Spec := by
  intro n
  simp only [A353147]

end A353147

/-!
# A353148: Decimal repunits written in base 9.

The programs for A353148, there is no canonical definition to state claims against.
-/

/-! ## A353148.P3424338535082790033

`(A055479(n)-1)/10`
-/

namespace A353148.P3424338535082790033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055479 n - 1 : ℚ) / 10

end

end A353148.P3424338535082790033

/-!
# A353149: Sum of the odd-indexed terms in the n-th row of the triangle A196020.

The programs for A353149, there is no canonical definition to state claims against.
-/

/-! ## A353149.P17295206049335417812

`A000203(n+1)+A353154(n+1)`
-/

namespace A353149.P17295206049335417812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A353154 (n + 1)

end

end A353149.P17295206049335417812

/-! ## A353149.P162962866968083657

`A209246(n+1)-A353154(n+1)`
-/

namespace A353149.P162962866968083657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209246 (n + 1) - A353154 (n + 1)

end

end A353149.P162962866968083657

/-! ## A353149.P13228513692872996229

`A286014(n+1)+A086670(n+1)`
-/

namespace A353149.P13228513692872996229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286014 (n + 1) + A086670 (n + 1)

end

end A353149.P13228513692872996229

/-! ## A353149.P3774435270999816212

`A054785(n+1)-A204217(n+1)`
-/

namespace A353149.P3774435270999816212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A204217 (n + 1)

end

end A353149.P3774435270999816212

/-! ## A353149.P11159955352113866244

`A054785(n+1)-A001281(A338616(n+1))`
-/

namespace A353149.P11159955352113866244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A001281 (A338616 (n + 1)).toNat

end

end A353149.P11159955352113866244

/-! ## A353149.P9277164083897305885

`A054785(n+1)-A008619(A338616(n+1)-1)`
-/

namespace A353149.P9277164083897305885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A008619 (A338616 (n + 1) - 1).toNat

end

end A353149.P9277164083897305885

/-! ## A353149.P5622429186002585548

`A353154(n+1)+A097012(n+1)`
-/

namespace A353149.P5622429186002585548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353154 (n + 1) + A097012 (n + 1)

end

end A353149.P5622429186002585548

/-! ## A353149.P16103837128069562195

`A284475(n+1)+A000593(n+1)`
-/

namespace A353149.P16103837128069562195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284475 (n + 1) + A000593 (n + 1)

end

end A353149.P16103837128069562195

/-! ## A353149.P18118441453804840203

`A318876(n+1)+A284475(n+1)`
-/

namespace A353149.P18118441453804840203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318876 (n + 1) + A284475 (n + 1)

end

end A353149.P18118441453804840203

/-!
# A353150: a(n) is the number of distinct pairs that can be made in exactly n iterations of either of the two maps (x, y) -> (x OR (2^y), 0) or (x, y) -> (x, y+1), starting from (0,0).

The programs for A353150, there is no canonical definition to state claims against.
-/

/-! ## A353150.P15758436494538144922

`∑[A088314(n)]`
-/

namespace A353150.P15758436494538144922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353150.P15758436494538144922

/-! ## A353150.P16226561948181349043

`A365043(n)+1+n`
-/

namespace A353150.P16226561948181349043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365043 n + 1 + (n : ℤ)

end

end A353150.P16226561948181349043

/-! ## A353150.P17894630201705759803

`A088314(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A353150.P17894630201705759803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088314 (n % (n + 1)) + a (n - 1)

end

end A353150.P17894630201705759803

/-! ## A353150.P5456309655901186358

`A088314(round(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A353150.P5456309655901186358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088314 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A353150.P5456309655901186358

/-! ## A353150.P4175513188605378754

`a(n-1)+A007318(C(2, n))*A088314(n)` with `a(0)=1`
-/

namespace A353150.P4175513188605378754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (Nat.choose 2 n) * A088314 n

end

end A353150.P4175513188605378754

/-! ## A353150.P5192045410837514151

`a(n-1)+A000041((-1)^(2*n))*A088314(n)` with `a(0)=1`
-/

namespace A353150.P5192045410837514151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000041 ((-1) ^ (2 * n)).toNat * A088314 n

end

end A353150.P5192045410837514151

/-! ## A353150.P4849509156340905849

`A000079(n)-∑[A070880(A028310(n))]`
-/

namespace A353150.P4849509156340905849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070880 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353150.P4849509156340905849

/-! ## A353150.P13369203650536374132

`∑[A011782(n)-A070880(A028310(n))]`
-/

namespace A353150.P13369203650536374132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A070880 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353150.P13369203650536374132

/-! ## A353150.P5029118282997317347

`A000079(n)-∑[A070880(A233583(n+1))]`
-/

namespace A353150.P5029118282997317347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070880 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353150.P5029118282997317347

/-! ## A353150.P17554488288894910064

`∑[A011782(n)-A070880(A233583(n+1))]`
-/

namespace A353150.P17554488288894910064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A070880 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353150.P17554488288894910064

/-! ## A353150.P3396053010523761744

`A070880(n+1)+A000079(n)-∑[A070880(n+1)]`
-/

namespace A353150.P3396053010523761744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070880 (n + 1) + (A000079 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353150.P3396053010523761744

/-! ## A353150.P18407493578159796151

`A070880(n+1)+∑[A011782(n)-A070880(n+1)]`
-/

namespace A353150.P18407493578159796151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A070880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070880 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353150.P18407493578159796151

/-!
# A353152: Perfect powers that are divisible by 5.

The programs for A353152, there is no canonical definition to state claims against.
-/

/-! ## A353152.P466802487656873710

`∩[A001597(n+1), A008607(n)]`
-/

namespace A353152.P466802487656873710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353152.P466802487656873710

/-! ## A353152.P8787548641494673944

`∩[A396856(n+1), A008607(n)]`
-/

namespace A353152.P8787548641494673944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353152.P8787548641494673944

/-! ## A353152.P16811070606994354389

`∩[A001597(n+1), A179819(n+1)]`
-/

namespace A353152.P16811070606994354389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353152.P16811070606994354389

/-! ## A353152.P14759564152446394349

`∩[A001597(n+1), A008587(n)]`
-/

namespace A353152.P14759564152446394349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353152.P14759564152446394349

/-! ## A353152.P14306028733150409598

`∩[A001597(n+1), A168101(n)]`
-/

namespace A353152.P14306028733150409598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353152.P14306028733150409598

/-! ## A353152.P5466215564628199707

`∩[A001597(n+1), A008586(n)+n]`
-/

namespace A353152.P5466215564628199707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353152.P5466215564628199707

/-!
# A353153: Primes p such that (q-p)*p*q+1 is prime, where q is the next prime after p.

The programs for A353153, there is no canonical definition to state claims against.
-/

/-! ## A353153.P4553844044771576369

`p?[record[A103221(A339218(n))]]`
-/

namespace A353153.P4553844044771576369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A339218 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A353153.P4553844044771576369

/-! ## A353153.P1887792454437831355

`p?[A182113(n+1)-A001492(n)]`
-/

namespace A353153.P1887792454437831355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182113 (n + 1) - A001492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A353153.P1887792454437831355

/-! ## A353153.P16385981075545869316

`p?[lt[A293016(n), A293011(n+4)]]`
-/

namespace A353153.P16385981075545869316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293016 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293011 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A353153.P16385981075545869316

/-! ## A353153.P15866285399839994494

`A154363(n*A121041(3*n+1)+1)`
-/

namespace A353153.P15866285399839994494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 ((n : ℤ) * A121041 (3 * n + 1) + 1).toNat

end

end A353153.P15866285399839994494

/-! ## A353153.P5832991330081281807

`A000040(eq[A122179(n+3), A212219(n)])`
-/

namespace A353153.P5832991330081281807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A353153.P5832991330081281807

/-!
# A353154: Sum of the even-indexed terms in the n-th row of the triangle A196020.

The programs for A353154, there is no canonical definition to state claims against.
-/

/-! ## A353154.P8873718257779944469

`A353149(n+1)-A000203(n+1)`
-/

namespace A353154.P8873718257779944469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353149 (n + 1) - A000203 (n + 1)

end

end A353154.P8873718257779944469

/-! ## A353154.P8995829349318788883

`A209246(n+1)-A353149(n+1)`
-/

namespace A353154.P8995829349318788883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209246 (n + 1) - A353149 (n + 1)

end

end A353154.P8995829349318788883

/-! ## A353154.P14302220914515219942

`A286014(n+1)-∑{d}[n+1, ceil(#/2)]`
-/

namespace A353154.P14302220914515219942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286014 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), ⌈(d : ℚ) / 2⌉

end

end A353154.P14302220914515219942

/-! ## A353154.P3061556583195417542

`∑{d}[n+1, #*#%2]-A204217(n+1)`
-/

namespace A353154.P3061556583195417542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ) - A204217 (n + 1)

end

end A353154.P3061556583195417542

/-! ## A353154.P15423107742523315197

`A353149(n+1)-Δ[A160664(n)]`
-/

namespace A353154.P15423107742523315197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353149 (n + 1) - (f1 (n + 1) - f1 n)

end

end A353154.P15423107742523315197

/-! ## A353154.P4061705322162369343

`A000593(n+1)-A204217(n+1)`
-/

namespace A353154.P4061705322162369343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A204217 (n + 1)

end

end A353154.P4061705322162369343

/-! ## A353154.P11536311232206230628

`A286014(n+1)-A079247(n+1)`
-/

namespace A353154.P11536311232206230628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286014 (n + 1) - A079247 (n + 1)

end

end A353154.P11536311232206230628

/-! ## A353154.P8507353371738800658

`A353149(n+1)-A097012(n+1)`
-/

namespace A353154.P8507353371738800658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353149 (n + 1) - A097012 (n + 1)

end

end A353154.P8507353371738800658

/-! ## A353154.P13182811816427971682

`A318876(n+1)-A204217(n+1)`
-/

namespace A353154.P13182811816427971682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318876 (n + 1) - A204217 (n + 1)

end

end A353154.P13182811816427971682

/-! ## A353154.P17121536992629900551

`A353149(C(n+1, n))%A000203(n+1)`
-/

namespace A353154.P17121536992629900551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353149 (Nat.choose (n + 1) n)) (A000203 (n + 1))

end

end A353154.P17121536992629900551

/-!
# A353157: a(n) is the distance from n to the nearest integer whose binary expansion has no common 1-bits with that of n.

The programs for A353157, the canonical program `A353157.P4330905322786453850` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353157 has offset 0).

The definition of A353157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353157.P4330905322786453850

`A060973(3*n+1)-n`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A353157

/-- `A060973(3*n+1)-n` -/
def P4330905322786453850.Spec : Prop :=
  ∀ n, P4330905322786453850.a n = A353157 n

theorem P4330905322786453850.correct : P4330905322786453850.Spec := by
  intro n
  simp only [A353157]

end A353157

/-! ## A353157.P3814876054427926050

`2*n+1-A006165(3*n+1)`
-/

namespace A353157.P3814876054427926050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - A006165 (3 * n + 1))

end

end A353157.P3814876054427926050

namespace A353157

/-- `2*n+1-A006165(3*n+1)` -/
def P3814876054427926050.Spec : Prop :=
  ∀ n, P3814876054427926050.a n = A353157 n

theorem P3814876054427926050.correct : P3814876054427926050.Spec := by
  intro n
  simp only [A353157, Nat.add_sub_cancel, A353157.P3814876054427926050.a, A353157.P4330905322786453850.a, A006165, A006165.P2775593661925565035.a, A060973, A060973.P9569280493827899348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353157

/-! ## A353157.P66508905666737202

`A005843(n)+1-A006165(3*n+1)`
-/

namespace A353157.P66508905666737202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1 - A006165 (3 * n + 1)

end

end A353157.P66508905666737202

namespace A353157

/-- `A005843(n)+1-A006165(3*n+1)` -/
def P66508905666737202.Spec : Prop :=
  ∀ n, P66508905666737202.a n = A353157 n

theorem P66508905666737202.correct : P66508905666737202.Spec := by
  intro n
  simp only [A353157, Nat.add_sub_cancel, A353157.P66508905666737202.a, A353157.P4330905322786453850.a, A005843, A005843.P3167286115683555970.a, A006165, A006165.P2775593661925565035.a, A060973, A060973.P9569280493827899348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353157

/-! ## A353157.P14472031263410529620

`A005408(n)-A078881(A008486(n))`
-/

namespace A353157.P14472031263410529620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A078881 (A008486 n).toNat

end

end A353157.P14472031263410529620

namespace A353157

/-- `A005408(n)-A078881(A008486(n))` -/
def P14472031263410529620.Spec : Prop :=
  ∀ n, P14472031263410529620.a n = A353157 n

end A353157

/-! ## A353157.P4199490800169329367

`A079905(A008486(n))-A008574(n)`
-/

namespace A353157.P4199490800169329367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079905 (A008486 n).toNat - A008574 n

end

end A353157.P4199490800169329367

namespace A353157

/-- `A079905(A008486(n))-A008574(n)` -/
def P4199490800169329367.Spec : Prop :=
  ∀ n, P4199490800169329367.a n = A353157 n

end A353157

/-! ## A353157.P5367303410060167236

`A079905(A008486(n))%A004277(n)`
-/

namespace A353157.P5367303410060167236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079905 (A008486 n).toNat) (A004277 n)

end

end A353157.P5367303410060167236

namespace A353157

/-- `A079905(A008486(n))%A004277(n)` -/
def P5367303410060167236.Spec : Prop :=
  ∀ n, P5367303410060167236.a n = A353157 n

end A353157

/-! ## A353157.P5849458821614869156

`A079905(A008486(n))-A004277(2*n)`
-/

namespace A353157.P5849458821614869156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079905 (A008486 n).toNat - A004277 (2 * n)

end

end A353157.P5849458821614869156

namespace A353157

/-- `A079905(A008486(n))-A004277(2*n)` -/
def P5849458821614869156.Spec : Prop :=
  ∀ n, P5849458821614869156.a n = A353157 n

end A353157

/-! ## A353157.P1133293777127698995

`A079905(A008574(n)-n)-A008574(n)`
-/

namespace A353157.P1133293777127698995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079905 (A008574 n - (n : ℤ)).toNat - A008574 n

end

end A353157.P1133293777127698995

namespace A353157

/-- `A079905(A008574(n)-n)-A008574(n)` -/
def P1133293777127698995.Spec : Prop :=
  ∀ n, P1133293777127698995.a n = A353157 n

end A353157

/-! ## A353157.P16861969076417985472

`A080637(A008486(n))%A233583(n+1)`
-/

namespace A353157.P16861969076417985472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080637 (A008486 n).toNat) (A233583 (n + 1))

end

end A353157.P16861969076417985472

namespace A353157

/-- `A080637(A008486(n))%A233583(n+1)` -/
def P16861969076417985472.Spec : Prop :=
  ∀ n, P16861969076417985472.a n = A353157 n

end A353157

/-! ## A353157.P9669603111191245078

`A004197(A133263(n)+A003817(n))`
-/

namespace A353157.P9669603111191245078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A133263 n + A003817 n).toNat

end

end A353157.P9669603111191245078

namespace A353157

/-- `A004197(A133263(n)+A003817(n))` -/
def P9669603111191245078.Spec : Prop :=
  ∀ n, P9669603111191245078.a n = A353157 n

end A353157

/-! ## A353157.P14615512512861311128

`A004197(A052905(n)-A003817(n))`
-/

namespace A353157.P14615512512861311128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A052905 n - A003817 n).toNat

end

end A353157.P14615512512861311128

namespace A353157

/-- `A004197(A052905(n)-A003817(n))` -/
def P14615512512861311128.Spec : Prop :=
  ∀ n, P14615512512861311128.a n = A353157 n

end A353157

/-! ## A353157.P18433213021500936641

`A004197(A134869(n+1)+A035327(n))`
-/

namespace A353157.P18433213021500936641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A134869 (n + 1) + A035327 n).toNat

end

end A353157.P18433213021500936641

namespace A353157

/-- `A004197(A134869(n+1)+A035327(n))` -/
def P18433213021500936641.Spec : Prop :=
  ∀ n, P18433213021500936641.a n = A353157 n

end A353157

/-!
# A353158: a(n) is the distance from n to the nearest integer that can be added to n without carries in base 3.

The programs for A353158, there is no canonical definition to state claims against.
-/

/-! ## A353158.P15304165643219536335

`A001876(A001045(n*A276204(n)))`
-/

namespace A353158.P15304165643219536335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A001045 ((n : ℤ) * A276204 n).toNat).toNat

end

end A353158.P15304165643219536335

/-! ## A353158.P3370456976692493280

`A130654(A002378(n^A276204(n)))`
-/

namespace A353158.P3370456976692493280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130654 (A002378 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A276204 n : ℤ))).toNat).toNat

end

end A353158.P3370456976692493280

/-! ## A353158.P953844449334088958

`A001876(lcm(A001045(n), A276204(n)))`
-/

namespace A353158.P953844449334088958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (Int.lcm (A001045 n) (A276204 n))

end

end A353158.P953844449334088958

/-! ## A353158.P21744097916897457

`A001221(C(A240114(n+1), A276204(n)))`
-/

namespace A353158.P21744097916897457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A240114 (n + 1)).toNat (A276204 n).toNat)

end

end A353158.P21744097916897457

/-! ## A353158.P3314307323694606673

`A262097(A079435(n+1)*A262097(n))`
-/

namespace A353158.P3314307323694606673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262097 (A079435 (n + 1) * A262097 n).toNat

end

end A353158.P3314307323694606673

/-!
# A353159: Integers k for which there exists some integer m such that the sum of the digits of m^k is equal to m + k.

The programs for A353159, there is no canonical definition to state claims against.
-/

/-! ## A353159.P11574185630540736679

`eq[A163804(n), A318880(A010015(n))]`
-/

namespace A353159.P11574185630540736679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (A010015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353159.P11574185630540736679

/-! ## A353159.P9862803319900992255

`eq[Δ[A019511(n)], A194597(n+1)]`
-/

namespace A353159.P9862803319900992255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019511 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A353159.P9862803319900992255

/-! ## A353159.P14937274170942739938

`record[A080607(n+1)-A331451(n+3)]`
-/

namespace A353159.P14937274170942739938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080607 (n + 1) - A331451 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353159.P14937274170942739938

/-! ## A353159.P8397605844157133590

`∪[3*(n+1), A022371(n)]%A122413(3*n+2)`
-/

namespace A353159.P8397605844157133590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022371 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A122413 (3 * n + 2))

end

end A353159.P8397605844157133590

/-! ## A353159.P5085196473597417244

`eq[A017981(n+3), A022998(A017981(n))]`
-/

namespace A353159.P5085196473597417244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A017981 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353159.P5085196473597417244

/-!
# A353160: Product_{n>=1} (1 + x^n)^a(n) = 1 + Sum_{n>=1} prime(n+1) * x^n.

The programs for A353160, there is no canonical definition to state claims against.
-/

/-! ## A353160.P10540885718239853471

`∑{d}[n+1, A036987(#-1)*A352609((n+1)/#)]`
-/

namespace A353160.P10540885718239853471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A352609 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353160.P10540885718239853471

/-!
# A353161: Product_{n>=1} (1 + x^n)^a(n) = 1 + x + Sum_{n>=2} prime(n-1) * x^n.

The programs for A353161, there is no canonical definition to state claims against.
-/

/-! ## A353161.P4258436730158999483

`∑{d}[n+1, A030011(#)*A036987((n+1)/#-1)]`
-/

namespace A353161.P4258436730158999483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030011 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A353161.P4258436730158999483

/-! ## A353161.P12612967756959534646

`A030011(n+1)+A007814(A006003(2*(n+1)))`
-/

namespace A353161.P12612967756959534646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030011 (n + 1) + A007814 (A006003 (2 * (n + 1))).toNat

end

end A353161.P12612967756959534646

/-!
# A353162: Expansion of e.g.f. exp(Sum_{p prime} p * x^p).

The programs for A353162, there is no canonical definition to state claims against.
-/

/-! ## A353162.P10778090821028001436

`A000142(n)*A122290(A096203(n+1))`
-/

namespace A353162.P10778090821028001436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A122290 (A096203 (n + 1)).toNat

end

end A353162.P10778090821028001436

/-!
# A353163: Expansion of e.g.f. exp(Sum_{p prime} x^p / (p-1)!).

The programs for A353163, there is no canonical definition to state claims against.
-/

/-! ## A353163.P8336382917744159147

`lcm(A028310(n), A151511(A049876(n)))`
-/

namespace A353163.P8336382917744159147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A151511 (A049876 n).toNat)

end

end A353163.P8336382917744159147

/-! ## A353163.P13840169435125624291

`A176746(A101890(n)+A055830(n+1))`
-/

namespace A353163.P13840169435125624291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176746 (A101890 n + A055830 (n + 1)).toNat

end

end A353163.P13840169435125624291

/-!
# A353165: Expansion of e.g.f. 1/(1 - Sum_{p prime} x^p / (p-1)!).

The programs for A353165, there is no canonical definition to state claims against.
-/

/-! ## A353165.P4274102548777437908

`A051953((a(n-1)+val(n, 2)+1)²)` with `a(0)=1, a(1)=0`
-/

namespace A353165.P4274102548777437908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A051953 ((a (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ) + 1) ^ 2).toNat

end

end A353165.P4274102548777437908

/-! ## A353165.P3798075942046206442

`A319047(A005432(n+2))`
-/

namespace A353165.P3798075942046206442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (A005432 (n + 2)).toNat

end

end A353165.P3798075942046206442

/-!
# A353166: Expansion of e.g.f. exp(Sum_{k>=1} prime(k)*x^k/k).

The programs for A353166, there is no canonical definition to state claims against.
-/

/-! ## A353166.P2133295309803236407

`ceil(A047259(A245834(n))/(n+1))`
-/

namespace A353166.P2133295309803236407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A047259 (A245834 n).toNat : ℚ) / (n + 1 : ℚ)⌉

end

end A353166.P2133295309803236407

/-! ## A353166.P2237312940383029902

`ceil(A124543(3*(n+1))/A100320(3*n+4))`
-/

namespace A353166.P2237312940383029902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124543 (3 * (n + 1)) : ℚ) / (A100320 (3 * n + 4) : ℚ)⌉

end

end A353166.P2237312940383029902

/-!
# A353167: Polynomials over GF(2) that are divisible by (x+1)^2 = x^2+1, encoded as binary numbers.

The programs for A353167, there is no canonical definition to state claims against.
-/

/-! ## A353167.P4063993622797175599

`comp[xor(lcm(2, n)+1, floor(n/2))]`
-/

namespace A353167.P4063993622797175599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.lcm 2 n + 1 : ℤ) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353167.P4063993622797175599

/-! ## A353167.P8080631807757883485

`eq[0, xor(n, a(floor(n/4)))%4]` with `a(0)=0`
-/

namespace A353167.P8080631807757883485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.xor n (f2 ⌊(n : ℚ) / 4⌋.toNat) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353167.P8080631807757883485

/-! ## A353167.P7409684451191099960

`xor(n, a(floor(n/4)))+4*n` with `a(0)=0`
-/

namespace A353167.P7409684451191099960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor n (a ⌊(n : ℚ) / 4⌋.toNat) + 4 * n

end

end A353167.P7409684451191099960

/-! ## A353167.P12159892382498935847

`or(4*n, xor(n, a(floor(n/4))))` with `a(0)=0`
-/

namespace A353167.P12159892382498935847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (4 * n) (Nat.xor n (a ⌊(n : ℚ) / 4⌋.toNat))

end

end A353167.P12159892382498935847

/-! ## A353167.P2337858285586478535

`xor(4*n, xor(n, a(floor(n/4))))` with `a(0)=0`
-/

namespace A353167.P2337858285586478535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (4 * n) (Nat.xor n (a ⌊(n : ℚ) / 4⌋.toNat))

end

end A353167.P2337858285586478535

/-! ## A353167.P6254464988512865325

`comp[xor((or(2, n)+n)/2, floor(n/4))]`
-/

namespace A353167.P6254464988512865325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((Nat.lor 2 n + n : ℚ) / 2)) ⌊(n : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353167.P6254464988512865325

/-! ## A353167.P5688620626180594624

`eq[0, (n%2+gcd(3, n%2)*a(floor(n/2)))%4]` with `a(0)=0`
-/

namespace A353167.P5688620626180594624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  (n % 2 + Nat.gcd 3 (n % 2) * f2 ⌊(n : ℚ) / 2⌋.toNat) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353167.P5688620626180594624

/-! ## A353167.P5168502807345756978

`eq[0, A355487(n)]`
-/

namespace A353167.P5168502807345756978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353167.P5168502807345756978

/-! ## A353167.P10126454261618838441

`lt[0, char[A048725(n)]]`
-/

namespace A353167.P10126454261618838441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353167.P10126454261618838441

/-!
# A353168: Polynomials over GF(2) that are divisible by x^2+x+1, encoded as binary numbers.

The programs for A353168, there is no canonical definition to state claims against.
-/

/-! ## A353168.P9361429931764864368

`lt[0, char[xor(n, 2*xor(n, 2*n))]]`
-/

namespace A353168.P9361429931764864368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.xor n (2 * n))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353168.P9361429931764864368

/-! ## A353168.P2676568877757291440

`eq[1, char[xor(n, 2*xor(n, 2*n))]]`
-/

namespace A353168.P2676568877757291440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.xor n (2 * n))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353168.P2676568877757291440

/-! ## A353168.P3991765526493795152

`lt[0, char[A048727(n)]]`
-/

namespace A353168.P3991765526493795152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048727 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353168.P3991765526493795152

/-! ## A353168.P9115226062882765792

`eq[0, A091203(n)%5]`
-/

namespace A353168.P9115226062882765792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091203 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353168.P9115226062882765792

/-! ## A353168.P4694718548787473653

`lt[A100280(n)%4, 1]`
-/

namespace A353168.P4694718548787473653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100280 n) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A353168.P4694718548787473653

/-! ## A353168.P14621677331406791031

`lt[1, gcd(5, A091205(n))]`
-/

namespace A353168.P14621677331406791031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A091205 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353168.P14621677331406791031

/-! ## A353168.P8824241470190591915

`A048727(A100280(n))`
-/

namespace A353168.P8824241470190591915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048727 (A100280 n).toNat

end

end A353168.P8824241470190591915

/-! ## A353168.P6619220296879715605

`eq[0, A070471(A091203(n))]`
-/

namespace A353168.P6619220296879715605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070471 (A091203 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353168.P6619220296879715605

/-! ## A353168.P8898894543375130919

`eq[1, A105646(A005836(n+1))]`
-/

namespace A353168.P8898894543375130919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105646 (A005836 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353168.P8898894543375130919

/-! ## A353168.P2004724952258879489

`lt[(A036795(2*n)*A036795(n)+1)%2, 1]`
-/

namespace A353168.P2004724952258879489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036795 (2 * n) * A036795 n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A353168.P2004724952258879489

/-!
# A353169: Expansion of Product_{k>=1} (1 + x^k)^prime(k+1).

The programs for A353169, there is no canonical definition to state claims against.
-/

/-! ## A353169.P3547358636464602760

`A264685(n)-A163352(A088808(n))`
-/

namespace A353169.P3547358636464602760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264685 n - A163352 (A088808 n).toNat

end

end A353169.P3547358636464602760

/-! ## A353169.P11833382479863502540

`∑[A000006(A098619(n))]-A047967(n)`
-/

namespace A353169.P11833382479863502540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A098619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A047967 n

end

end A353169.P11833382479863502540

/-! ## A353169.P11946078608152405509

`A035313(n)-A032741(A027614(n+1))`
-/

namespace A353169.P11946078608152405509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035313 n - A032741 (A027614 (n + 1)).toNat

end

end A353169.P11946078608152405509

/-!
# A353171: Irregular triangle read by rows; T(n,k) = 2^k (mod prime(n)), terminating when T(n,k) = 1.

The programs for A353171, there is no canonical definition to state claims against.
-/

/-! ## A353171.P14993280414601299003

`Δ[A201912(n+3)]`
-/

namespace A353171.P14993280414601299003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201912 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A353171.P14993280414601299003

/-! ## A353171.P4486810591955695535

`A201912(n+4)-A201912(n+3)`
-/

namespace A353171.P4486810591955695535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201912 (n + 4) - A201912 (n + 3)

end

end A353171.P4486810591955695535

/-! ## A353171.P6743013198858484098

`Δ[A091205(A201908(n+3))]%A172982(2*n+3)`
-/

namespace A353171.P6743013198858484098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (A201908 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A172982 (2 * n + 3))

end

end A353171.P6743013198858484098

/-!
# A353173: Dimension of space of invariants of n-th tensor power of the 26-dimensional fundamental (or "standard") irreducible representation of F_4.

The programs for A353173, there is no canonical definition to state claims against.
-/

/-! ## A353173.P3381884032413028

`A005843(A179685(n))-A179684(n)`
-/

namespace A353173.P3381884032413028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A179685 n).toNat - A179684 n

end

end A353173.P3381884032413028

/-! ## A353173.P18439085539982085428

`A103221(A266549(n+2)+A103221(n))`
-/

namespace A353173.P18439085539982085428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A266549 (n + 2) + A103221 n).toNat

end

end A353173.P18439085539982085428

/-!
# A353174: Irregular table T(n, k), n >= 0, k = 0..A352502(n)-1; the n-th row lists in ascending order the numbers k in 0..n such that k and n-k can be added without carries in balanced ternary.

The programs for A353174, there is no canonical definition to state claims against.
-/

/-! ## A353174.P12729406712846686237

`A002262(eq[A003056(n), A343836(n)])`
-/

namespace A353174.P12729406712846686237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A353174.P12729406712846686237

/-! ## A353174.P15840534480042410662

`A002262(lt[A343316(n), A137163(2*n+1)])`
-/

namespace A353174.P15840534480042410662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137163 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353174.P15840534480042410662

/-! ## A353174.P2022872452038850935

`A002262(eq[A156070(n), A287091(n)])`
-/

namespace A353174.P2022872452038850935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A353174.P2022872452038850935

/-! ## A353174.P10591716162100602675

`A163351(eq[A156070(n), A287091(n)])`
-/

namespace A353174.P10591716162100602675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A353174.P10591716162100602675

/-! ## A353174.P7149621646443456047

`A051775(n)+A007814(A128362(n+2))`
-/

namespace A353174.P7149621646443456047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 n + A007814 (A128362 (n + 2)).toNat

end

end A353174.P7149621646443456047

/-!
# A353177: E.g.f. A(x) satisfies A(x) = 1 + (1 - exp(-x)) * A(1 - exp(-x)).

The programs for A353177, there is no canonical definition to state claims against.
-/

/-! ## A353177.P12061007910739818198

`A354574(n+1)/(n+1)`
-/

namespace A353177.P12061007910739818198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354574 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A353177.P12061007910739818198

/-!
# A353178: The row numbers of the Trithoff (tribonacci) array that correspond to difference sequences of other rows of the Trithoff array.

The programs for A353178, there is no canonical definition to state claims against.
-/

/-! ## A353178.P1734287475919459921

`comp[A353193(n+1)-1]+1`
-/

namespace A353178.P1734287475919459921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353193 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A353178.P1734287475919459921

/-! ## A353178.P14003642653734746922

`eq[1, ∑[char[A288464(n+1)]]%2]`
-/

namespace A353178.P14003642653734746922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353178.P14003642653734746922

/-! ## A353178.P14224269617948989912

`A020725(comp[A353193(n+1)-1])`
-/

namespace A353178.P14224269617948989912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353193 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A353178.P14224269617948989912

/-! ## A353178.P4393669420700537652

`comp[A353193(A246700(n+1))%A226922(n+1)]`
-/

namespace A353178.P4393669420700537652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353193 (A246700 (n + 1)).toNat) (A226922 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353178.P4393669420700537652

/-! ## A353178.P14902785622319629865

`comp[A353193(A246694(n))%A226922(3*n+2)]`
-/

namespace A353178.P14902785622319629865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353193 (A246694 n).toNat) (A226922 (3 * n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353178.P14902785622319629865

/-!
# A353179: a(n) is the first nonzero digit in the decimal expansion of 1/prime(n).

The programs for A353179, the canonical program `A353179.P15255588477754131034` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353179 has offset 1).

The definition of A353179 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052038, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353179.P15255588477754131034

`A052038(A000040(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A353179

/-- `A052038(A000040(n+1))` -/
def P15255588477754131034.Spec : Prop :=
  ∀ n, P15255588477754131034.a n = A353179 (n + 1)

theorem P15255588477754131034.correct : P15255588477754131034.Spec := by
  intro n
  simp only [A353179, Nat.add_sub_cancel]

end A353179

/-! ## A353179.P1945259203267181524

`A052038(Δ[A007504(n)])`
-/

namespace A353179.P1945259203267181524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (f1 (n + 1) - f1 n).toNat

end

end A353179.P1945259203267181524

namespace A353179

/-- `A052038(Δ[A007504(n)])` -/
def P1945259203267181524.Spec : Prop :=
  ∀ n, P1945259203267181524.a n = A353179 (n + 1)

end A353179

/-! ## A353179.P16209568710144974229

`A052038(record[A051698(n)])`
-/

namespace A353179.P16209568710144974229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353179.P16209568710144974229

namespace A353179

/-- `A052038(record[A051698(n)])` -/
def P16209568710144974229.Spec : Prop :=
  ∀ n, P16209568710144974229.a n = A353179 (n + 1)

end A353179

/-! ## A353179.P10711390599288537094

`A052038(A171048(n+1))`
-/

namespace A353179.P10711390599288537094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A171048 (n + 1)).toNat

end

end A353179.P10711390599288537094

namespace A353179

/-- `A052038(A171048(n+1))` -/
def P10711390599288537094.Spec : Prop :=
  ∀ n, P10711390599288537094.a n = A353179 (n + 1)

end A353179

/-! ## A353179.P14710798843522770702

`A052038(A008578(n+2))`
-/

namespace A353179.P14710798843522770702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A008578 (n + 2)).toNat

end

end A353179.P14710798843522770702

namespace A353179

/-- `A052038(A008578(n+2))` -/
def P14710798843522770702.Spec : Prop :=
  ∀ n, P14710798843522770702.a n = A353179 (n + 1)

end A353179

/-! ## A353179.P18204617389912875103

`A052038(A182986(n+2))`
-/

namespace A353179.P18204617389912875103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A182986 (n + 2)).toNat

end

end A353179.P18204617389912875103

namespace A353179

/-- `A052038(A182986(n+2))` -/
def P18204617389912875103.Spec : Prop :=
  ∀ n, P18204617389912875103.a n = A353179 (n + 1)

end A353179

/-! ## A353179.P4427008659211344883

`A052038(A067747(2*n+1))`
-/

namespace A353179.P4427008659211344883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A067747 (2 * n + 1)).toNat

end

end A353179.P4427008659211344883

namespace A353179

/-- `A052038(A067747(2*n+1))` -/
def P4427008659211344883.Spec : Prop :=
  ∀ n, P4427008659211344883.a n = A353179 (n + 1)

end A353179

/-! ## A353179.P4373630645818734509

`A052038(A142342(n+1))`
-/

namespace A353179.P4373630645818734509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A142342 (n + 1)).toNat

end

end A353179.P4373630645818734509

namespace A353179

/-- `A052038(A142342(n+1))` -/
def P4373630645818734509.Spec : Prop :=
  ∀ n, P4373630645818734509.a n = A353179 (n + 1)

end A353179

/-! ## A353179.P3247649413178884718

`A052038(A259228(A099406(n+1)))`
-/

namespace A353179.P3247649413178884718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A259228 (A099406 (n + 1)).toNat).toNat

end

end A353179.P3247649413178884718

namespace A353179

/-- `A052038(A259228(A099406(n+1)))` -/
def P3247649413178884718.Spec : Prop :=
  ∀ n, P3247649413178884718.a n = A353179 (n + 1)

end A353179

/-!
# A353180: Expansion of e.g.f. 1/(1 - Sum_{k>=1} x^(k^2) / (k^2)!).

The programs for A353180, there is no canonical definition to state claims against.
-/

/-! ## A353180.P103036642212113321

`A000027(A356634(n+1))/(n+1)`
-/

namespace A353180.P103036642212113321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A356634 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A353180.P103036642212113321

/-! ## A353180.P10367119284001560034

`A356634(A032561(n+1))/A077168(n)`
-/

namespace A353180.P10367119284001560034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356634 (A032561 (n + 1)).toNat : ℚ) / (A077168 n : ℚ)

end

end A353180.P10367119284001560034

/-! ## A353180.P13295730961081640044

`A356634(A061805(n+1))/A061805(n+1)`
-/

namespace A353180.P13295730961081640044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356634 (A061805 (n + 1)).toNat : ℚ) / (A061805 (n + 1) : ℚ)

end

end A353180.P13295730961081640044

/-!
# A353183: Number of numbers < 10^n in which more than half of the digits are the same.

The programs for A353183, there is no canonical definition to state claims against.
-/

/-! ## A353183.P7289273321248303793

`∑[A353182(n+1)]`
-/

namespace A353183.P7289273321248303793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353183.P7289273321248303793

/-!
# A353184: Expansion of e.g.f. 1/(1 - Sum_{k>=1} x^(k^2) / (k^2)).

The programs for A353184, there is no canonical definition to state claims against.
-/

/-! ## A353184.P5660116504837909847

`(floor(n/4)^3^n+n)*a(n-1)` with `a(0)=1`
-/

namespace A353184.P5660116504837909847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (⌊(n : ℚ) / 4⌋ ^ 3 ^ n + (n : ℤ)) * a (n - 1)

end

end A353184.P5660116504837909847

/-! ## A353184.P17962082523139499460

`∏[A120699(n!)]`
-/

namespace A353184.P17962082523139499460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120699 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A353184.P17962082523139499460

/-! ## A353184.P13711785442121286343

`ceil(A153880(n!)/4)`
-/

namespace A353184.P13711785442121286343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A153880 (Nat.factorial n) : ℚ) / 4⌉

end

end A353184.P13711785442121286343

/-! ## A353184.P4107843984499955674

`ceil(A000005(5^n)!/4)`
-/

namespace A353184.P4107843984499955674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (A000005 (5 ^ n)).toNat : ℚ) / 4⌉

end

end A353184.P4107843984499955674

/-!
# A353186: Expansion of e.g.f. 1/(1 - Sum_{k>=1} d(k) * x^k / k), where d(n) = number of divisors of n (A000005).

The programs for A353186, there is no canonical definition to state claims against.
-/

/-! ## A353186.P4925357681638937676

`A122797(∑[A122704(n)])`
-/

namespace A353186.P4925357681638937676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A353186.P4925357681638937676

/-! ## A353186.P15464952796993132709

`A240807(A074140(n)+2)`
-/

namespace A353186.P15464952796993132709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240807 (A074140 n + 2).toNat

end

end A353186.P15464952796993132709

/-!
# A353187: Lexicographically earliest strictly increasing sequence of positive integers in which every triple of consecutive terms contains only one pair that is not coprime.

The programs for A353187, there is no canonical definition to state claims against.
-/

/-! ## A353187.P3389840306265320132

`record[A052938(n)-A181839(n)]`
-/

namespace A353187.P3389840306265320132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n - A181839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353187.P3389840306265320132

/-! ## A353187.P10977171958984547512

`record[A284749(A247309(n)+1)+n]`
-/

namespace A353187.P10977171958984547512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (A247309 n + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353187.P10977171958984547512

/-! ## A353187.P12006836805688043305

`∑[gcd(A119910(2*n+5), A119942(n+4))]`
-/

namespace A353187.P12006836805688043305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119910 (2 * n + 5)) (A119942 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353187.P12006836805688043305

/-! ## A353187.P8141120724381787022

`lt[A005131(n), A286462(A107461(n+1))]`
-/

namespace A353187.P8141120724381787022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286462 (A107461 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353187.P8141120724381787022

/-! ## A353187.P2660607301035794560

`∪[A000593(A239885(n+1)), A016789(n)]`
-/

namespace A353187.P2660607301035794560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A239885 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353187.P2660607301035794560

/-!
# A353188: Number of partitions of n that contain at least one composite part.

The programs for A353188, there is no canonical definition to state claims against.
-/

/-! ## A353188.P4612680617875256865

`A000041(n)-A034891(n)`
-/

namespace A353188.P4612680617875256865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A034891 n

end

end A353188.P4612680617875256865

/-! ## A353188.P9318387185004576233

`A000041(n)-∑[A000607(n)]`
-/

namespace A353188.P9318387185004576233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353188.P9318387185004576233

/-! ## A353188.P10685644680587019061

`∑[A002865(n)-A000607(n)]`
-/

namespace A353188.P10685644680587019061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A000607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353188.P10685644680587019061

/-! ## A353188.P14237623515918403645

`∑[A002865(n)]-A034891(n)`
-/

namespace A353188.P14237623515918403645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A034891 n

end

end A353188.P14237623515918403645

/-! ## A353188.P11276617111986589674

`A000065(n)+1-A034891(n)`
-/

namespace A353188.P11276617111986589674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A034891 n)

end

end A353188.P11276617111986589674

/-! ## A353188.P7052647549877164054

`A139582(n)/2-A034891(n)`
-/

namespace A353188.P7052647549877164054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A034891 n : ℚ)

end

end A353188.P7052647549877164054

/-! ## A353188.P16382187016290557819

`A133041(n)-(A034891(n)+n)`
-/

namespace A353188.P16382187016290557819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A034891 n + (n : ℤ))

end

end A353188.P16382187016290557819

/-! ## A353188.P5981246256005177604

`∑[A085811(n+3)-A000607(n)]`
-/

namespace A353188.P5981246256005177604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3) - A000607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353188.P5981246256005177604

/-! ## A353188.P7951562784648751028

`∑[A085811(n+3)]-A034891(n)`
-/

namespace A353188.P7951562784648751028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A034891 n

end

end A353188.P7951562784648751028

/-! ## A353188.P1941442637117607856

`A000041(n)-(A339381(n)+A339380(n))`
-/

namespace A353188.P1941442637117607856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A339381 n + A339380 n)

end

end A353188.P1941442637117607856

/-!
# A353190: a(n) is the (n-1)st odd number minus the sum of the aliquot parts of n.

The programs for A353190, the canonical program `A353190.P11422691785722745783` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353190 has offset 1).

The definition of A353190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353190.P8706780920472521661

`3*(n+1)-1-A000203(n+1)`
-/

namespace A353190.P8706780920472521661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - 1 - A000203 (n + 1)

end

end A353190.P8706780920472521661

namespace A353190

/-- `3*(n+1)-1-A000203(n+1)` -/
def P8706780920472521661.Spec : Prop :=
  ∀ n, P8706780920472521661.a n = A353190 (n + 1)

theorem P8706780920472521661.correct : P8706780920472521661.Spec := by
  intro n
  simp only [A353190, Nat.add_sub_cancel, A353190.P8706780920472521661.a, A353190.P11422691785722745783.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353190

/-! ## A353190.P11422691785722745783

`A005408(n)-A001065(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A353190

/-- `A005408(n)-A001065(n+1)` -/
def P11422691785722745783.Spec : Prop :=
  ∀ n, P11422691785722745783.a n = A353190 (n + 1)

theorem P11422691785722745783.correct : P11422691785722745783.Spec := by
  intro n
  simp only [A353190, Nat.add_sub_cancel]

end A353190

/-! ## A353190.P5765883472877707627

`3*n+2-∑{d}[n+1, #]`
-/

namespace A353190.P5765883472877707627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A353190.P5765883472877707627

namespace A353190

/-- `3*n+2-∑{d}[n+1, #]` -/
def P5765883472877707627.Spec : Prop :=
  ∀ n, P5765883472877707627.a n = A353190 (n + 1)

theorem P5765883472877707627.correct : P5765883472877707627.Spec := by
  intro n
  simp only [A353190, Nat.add_sub_cancel, A353190.P5765883472877707627.f1, A353190.P5765883472877707627.a, A353190.P11422691785722745783.a, A001065, A001065.P4097147489331274860.a, A005408, A005408.P17437947328870227736.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353190

/-! ## A353190.P5688792039953623736

`n+2-∑{d}[n+1, #]+n+n`
-/

namespace A353190.P5688792039953623736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (n : ℤ) + (n : ℤ)

end

end A353190.P5688792039953623736

namespace A353190

/-- `n+2-∑{d}[n+1, #]+n+n` -/
def P5688792039953623736.Spec : Prop :=
  ∀ n, P5688792039953623736.a n = A353190 (n + 1)

theorem P5688792039953623736.correct : P5688792039953623736.Spec := by
  intro n
  simp only [A353190, Nat.add_sub_cancel, A353190.P5688792039953623736.f1, A353190.P5688792039953623736.a, A353190.P11422691785722745783.a, A001065, A001065.P4097147489331274860.a, A005408, A005408.P17437947328870227736.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353190

/-! ## A353190.P6867552069260316531

`Δ[A111490(n)]+n`
-/

namespace A353190.P6867552069260316531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A353190.P6867552069260316531

namespace A353190

/-- `Δ[A111490(n)]+n` -/
def P6867552069260316531.Spec : Prop :=
  ∀ n, P6867552069260316531.a n = A353190 (n + 1)

end A353190

/-! ## A353190.P8454615971063693648

`A033885(n+1)-1`
-/

namespace A353190.P8454615971063693648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1) - 1

end

end A353190.P8454615971063693648

namespace A353190

/-- `A033885(n+1)-1` -/
def P8454615971063693648.Spec : Prop :=
  ∀ n, P8454615971063693648.a n = A353190 (n + 1)

theorem P8454615971063693648.correct : P8454615971063693648.Spec := by
  intro n
  simp only [A353190, Nat.add_sub_cancel, A353190.P8454615971063693648.a, A353190.P11422691785722745783.a, A001065, A001065.P4097147489331274860.a, A005408, A005408.P17437947328870227736.a, A033885, A033885.P621255430935931612.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353190

/-! ## A353190.P2600676300389444146

`A033879(n+1)+n`
-/

namespace A353190.P2600676300389444146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (n : ℤ)

end

end A353190.P2600676300389444146

namespace A353190

/-- `A033879(n+1)+n` -/
def P2600676300389444146.Spec : Prop :=
  ∀ n, P2600676300389444146.a n = A353190 (n + 1)

end A353190

/-! ## A353190.P12847613890443181675

`n-A033880(n+1)`
-/

namespace A353190.P12847613890443181675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033880 (n + 1)

end

end A353190.P12847613890443181675

namespace A353190

/-- `n-A033880(n+1)` -/
def P12847613890443181675.Spec : Prop :=
  ∀ n, P12847613890443181675.a n = A353190 (n + 1)

theorem P12847613890443181675.correct : P12847613890443181675.Spec := by
  intro n
  simp only [A353190, Nat.add_sub_cancel, A353190.P12847613890443181675.a, A353190.P11422691785722745783.a, A001065, A001065.P4097147489331274860.a, A005408, A005408.P17437947328870227736.a, A033880, A033880.P6005875780263802708.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353190

/-! ## A353190.P7221631785288026384

`A235796(n+1)+1+n`
-/

namespace A353190.P7221631785288026384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + 1 + (n : ℤ)

end

end A353190.P7221631785288026384

namespace A353190

/-- `A235796(n+1)+1+n` -/
def P7221631785288026384.Spec : Prop :=
  ∀ n, P7221631785288026384.a n = A353190 (n + 1)

theorem P7221631785288026384.correct : P7221631785288026384.Spec := by
  intro n
  simp only [A353190, Nat.add_sub_cancel, A353190.P7221631785288026384.a, A353190.P11422691785722745783.a, A001065, A001065.P4097147489331274860.a, A005408, A005408.P17437947328870227736.a, A235796, A235796.P5769590272751401819.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353190

/-! ## A353190.P13907155600553195003

`1-A237588(n+1)+n`
-/

namespace A353190.P13907155600553195003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A237588 (n + 1) + (n : ℤ)

end

end A353190.P13907155600553195003

namespace A353190

/-- `1-A237588(n+1)+n` -/
def P13907155600553195003.Spec : Prop :=
  ∀ n, P13907155600553195003.a n = A353190 (n + 1)

theorem P13907155600553195003.correct : P13907155600553195003.Spec := by
  intro n
  simp only [A353190, Nat.add_sub_cancel, A353190.P13907155600553195003.a, A353190.P11422691785722745783.a, A001065, A001065.P4097147489331274860.a, A005408, A005408.P17437947328870227736.a, A237588, A237588.P10590847318200798620.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353190

/-! ## A353190.P10802024022909320483

`3*(n+1)-A088580(n+1)`
-/

namespace A353190.P10802024022909320483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A088580 (n + 1)

end

end A353190.P10802024022909320483

namespace A353190

/-- `3*(n+1)-A088580(n+1)` -/
def P10802024022909320483.Spec : Prop :=
  ∀ n, P10802024022909320483.a n = A353190 (n + 1)

theorem P10802024022909320483.correct : P10802024022909320483.Spec := by
  intro n
  simp only [A353190, Nat.add_sub_cancel, A353190.P10802024022909320483.a, A353190.P11422691785722745783.a, A001065, A001065.P4097147489331274860.a, A005408, A005408.P17437947328870227736.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353190

/-! ## A353190.P18314068808251149503

`5*(n+1)-A387001(n+1)`
-/

namespace A353190.P18314068808251149503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A387001 (n + 1)

end

end A353190.P18314068808251149503

namespace A353190

/-- `5*(n+1)-A387001(n+1)` -/
def P18314068808251149503.Spec : Prop :=
  ∀ n, P18314068808251149503.a n = A353190 (n + 1)

theorem P18314068808251149503.correct : P18314068808251149503.Spec := by
  intro n
  simp only [A353190, Nat.add_sub_cancel, A353190.P18314068808251149503.a, A353190.P11422691785722745783.a, A001065, A001065.P4097147489331274860.a, A005408, A005408.P17437947328870227736.a, A387001, A387001.P16811340479551848930.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A224880, A224880.P6780601834210635688.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353190

/-! ## A353190.P17642840011755617066

`3*n-(A000203(-xor(n, -1))-2)`
-/

namespace A353190.P17642840011755617066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (A000203 (-Int.xor (n : ℤ) (-1)).toNat - 2)

end

end A353190.P17642840011755617066

namespace A353190

/-- `3*n-(A000203(-xor(n, -1))-2)` -/
def P17642840011755617066.Spec : Prop :=
  ∀ n, P17642840011755617066.a n = A353190 (n + 1)

end A353190

/-! ## A353190.P12655716667850894146

`∑{d}[n+1, A000010(#)-#]+Δ[n²]`
-/

namespace A353190.P12655716667850894146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d - (d : ℤ)) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A353190.P12655716667850894146

namespace A353190

/-- `∑{d}[n+1, A000010(#)-#]+Δ[n²]` -/
def P12655716667850894146.Spec : Prop :=
  ∀ n, P12655716667850894146.a n = A353190 (n + 1)

end A353190

/-! ## A353190.P1655469114242602941

`n+2-A000203(C(n+1, n))+n+n`
-/

namespace A353190.P1655469114242602941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000203 (Nat.choose (n + 1) n) + (n : ℤ) + (n : ℤ)

end

end A353190.P1655469114242602941

namespace A353190

/-- `n+2-A000203(C(n+1, n))+n+n` -/
def P1655469114242602941.Spec : Prop :=
  ∀ n, P1655469114242602941.a n = A353190 (n + 1)

end A353190

/-! ## A353190.P13991600879830359380

`A117966(A295882(n+1))+n`
-/

namespace A353190.P13991600879830359380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A295882 (n + 1)).toNat + (n : ℤ)

end

end A353190.P13991600879830359380

namespace A353190

/-- `A117966(A295882(n+1))+n` -/
def P13991600879830359380.Spec : Prop :=
  ∀ n, P13991600879830359380.a n = A353190 (n + 1)

end A353190

/-! ## A353190.P15361994894481838971

`A004277(n)-A048050(n+1)`
-/

namespace A353190.P15361994894481838971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A048050 (n + 1)

end

end A353190.P15361994894481838971

namespace A353190

/-- `A004277(n)-A048050(n+1)` -/
def P15361994894481838971.Spec : Prop :=
  ∀ n, P15361994894481838971.a n = A353190 (n + 1)

end A353190

/-! ## A353190.P3211998960401256464

`A016777(n)-A039653(n+1)`
-/

namespace A353190.P3211998960401256464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A039653 (n + 1)

end

end A353190.P3211998960401256464

namespace A353190

/-- `A016777(n)-A039653(n+1)` -/
def P3211998960401256464.Spec : Prop :=
  ∀ n, P3211998960401256464.a n = A353190 (n + 1)

end A353190

/-! ## A353190.P5703944190488710686

`A004767(n)-A155085(n+1)`
-/

namespace A353190.P5703944190488710686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A155085 (n + 1)

end

end A353190.P5703944190488710686

namespace A353190

/-- `A004767(n)-A155085(n+1)` -/
def P5703944190488710686.Spec : Prop :=
  ∀ n, P5703944190488710686.a n = A353190 (n + 1)

theorem P5703944190488710686.correct : P5703944190488710686.Spec := by
  intro n
  simp only [A353190, Nat.add_sub_cancel, A353190.P5703944190488710686.a, A353190.P11422691785722745783.a, A001065, A001065.P4097147489331274860.a, A004767, A004767.P13352534504447192883.a, A005408, A005408.P17437947328870227736.a, A155085, A155085.P2440965829929837208.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353190

/-!
# A353191: Expansion of e.g.f. 1/(1 - Sum_{k>=1} mu(k) * x^k / k), where mu() is the Moebius function (A008683).

The programs for A353191, there is no canonical definition to state claims against.
-/

/-! ## A353191.P8371373342406862048

`A048866(∏[a(n-1)+4])` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A353191.P8371373342406862048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A353191.P8371373342406862048

/-! ## A353191.P10498206539626777548

`A048896(n)-A358330(A152876(n))`
-/

namespace A353191.P10498206539626777548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n - A358330 (A152876 n).toNat

end

end A353191.P10498206539626777548

/-!
# A353192: Expansion of e.g.f. 1/(1 - Sum_{k>=1} phi(k) * x^k / k), where phi is the Euler totient function A000010.

The programs for A353192, there is no canonical definition to state claims against.
-/

/-! ## A353192.P2081752086449719922

`A004497(xor(4, A120732(n)))`
-/

namespace A353192.P2081752086449719922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004497 (Int.xor 4 (A120732 n)).toNat

end

end A353192.P2081752086449719922

/-! ## A353192.P18180509788713011531

`A324843(A143588(n+5)+1)-1`
-/

namespace A353192.P18180509788713011531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324843 (A143588 (n + 5) + 1).toNat - 1

end

end A353192.P18180509788713011531

/-!
# A353193: The row numbers of the Trithoff (tribonacci) array that don't correspond to difference sequences of other rows of the Trithoff array.

The programs for A353193, there is no canonical definition to state claims against.
-/

/-! ## A353193.P2217813938868422376

`eq[char[A353178(n+1)], A151933(n)]`
-/

namespace A353193.P2217813938868422376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353178 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A353193.P2217813938868422376

/-!
# A353195: Coefficients of the open mirror map of P2.

The programs for A353195, there is no canonical definition to state claims against.
-/

/-! ## A353195.P11585780072133382355

`A016789(n)*A364973(n+1)`
-/

namespace A353195.P11585780072133382355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n * A364973 (n + 1)

end

end A353195.P11585780072133382355

/-! ## A353195.P18408935445443657439

`A035100(A282238(3*(n+1)))*A364973(n+1)`
-/

namespace A353195.P18408935445443657439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (A282238 (3 * (n + 1))).toNat * A364973 (n + 1)

end

end A353195.P18408935445443657439

/-!
# A353196: Number of stabilizer states on n qubits.

The programs for A353196, there is no canonical definition to state claims against.
-/

/-! ## A353196.P4860771571143659798

`A000079(n+1)*A028362(n+2)`
-/

namespace A353196.P4860771571143659798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A028362 (n + 2)

end

end A353196.P4860771571143659798

/-! ## A353196.P2393395283370185796

`∏[2^(n+2)+2]`
-/

namespace A353196.P2393395283370185796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A353196.P2393395283370185796

/-! ## A353196.P2432600111500071830

`(2^(n+2)+2)*a(n-1)` with `a(0)=6`
-/

namespace A353196.P2432600111500071830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  (2 ^ (n + 2) + 2) * a (n - 1)

end

end A353196.P2432600111500071830

/-! ## A353196.P13145881353485263968

`A006088(n+2)/4`
-/

namespace A353196.P13145881353485263968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006088 (n + 2) : ℚ) / 4

end

end A353196.P13145881353485263968

/-! ## A353196.P14591389885852643035

`Δ[A028362(n+2)/2]`
-/

namespace A353196.P14591389885852643035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028362 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A353196.P14591389885852643035

/-!
# A353197: Numbers k such that k + s + k*s is prime, where s is the sum of digits of k.

The programs for A353197, there is no canonical definition to state claims against.
-/

/-! ## A353197.P3688783422843852581

`lt[A072480(A062028(n)+A057147(n)), n]`
-/

namespace A353197.P3688783422843852581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A062028 n + A057147 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A353197.P3688783422843852581

/-! ## A353197.P4070402729608725195

`eq[1, A032741(A160942(n+1)+n)]`
-/

namespace A353197.P4070402729608725195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A160942 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353197.P4070402729608725195

/-! ## A353197.P17738955884966082976

`lt[1, A055672(A160942(n+1)+n)]`
-/

namespace A353197.P17738955884966082976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A160942 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353197.P17738955884966082976

/-!
# A353198: Intersection of A000404 and A024614.

The programs for A353198, the canonical program `A353198.P877011731945880113` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353198 has offset 1).

The definition of A353198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2650 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353198.P877011731945880113

`filter[A024614(n+1), A353814(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A353198

/-- `filter[A024614(n+1), A353814(#)]` -/
def P877011731945880113.Spec : Prop :=
  ∀ n, P877011731945880113.a n = A353198 (n + 1)

theorem P877011731945880113.correct : P877011731945880113.Spec := by
  intro n
  simp only [A353198, Nat.add_sub_cancel]

end A353198

/-! ## A353198.P16898780155435476221

`∩[A024614(n+1), A097268(n+1)]`
-/

namespace A353198.P16898780155435476221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353198.P16898780155435476221

namespace A353198

/-- `∩[A024614(n+1), A097268(n+1)]` -/
def P16898780155435476221.Spec : Prop :=
  ∀ n, (P16898780155435476221.a n : ℤ) = A353198 (n + 1)

end A353198

/-! ## A353198.P2768543434778170181

`∩[A024614(n+1), A155560(n+1)]`
-/

namespace A353198.P2768543434778170181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353198.P2768543434778170181

namespace A353198

/-- `∩[A024614(n+1), A155560(n+1)]` -/
def P2768543434778170181.Spec : Prop :=
  ∀ n, (P2768543434778170181.a n : ℤ) = A353198 (n + 1)

end A353198

/-! ## A353198.P18364023788507654260

`∩[A024614(n+1), A264732(n+1)]`
-/

namespace A353198.P18364023788507654260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353198.P18364023788507654260

namespace A353198

/-- `∩[A024614(n+1), A264732(n+1)]` -/
def P18364023788507654260.Spec : Prop :=
  ∀ n, (P18364023788507654260.a n : ℤ) = A353198 (n + 1)

end A353198

/-! ## A353198.P7466903862073673807

`∩[A155560(n+1), A300332(n+1)]`
-/

namespace A353198.P7466903862073673807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353198.P7466903862073673807

namespace A353198

/-- `∩[A155560(n+1), A300332(n+1)]` -/
def P7466903862073673807.Spec : Prop :=
  ∀ n, (P7466903862073673807.a n : ℤ) = A353198 (n + 1)

end A353198

/-! ## A353198.P14624038282807355816

`∩[A264732(n+1), A300332(n+1)]`
-/

namespace A353198.P14624038282807355816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353198.P14624038282807355816

namespace A353198

/-- `∩[A264732(n+1), A300332(n+1)]` -/
def P14624038282807355816.Spec : Prop :=
  ∀ n, (P14624038282807355816.a n : ℤ) = A353198 (n + 1)

end A353198

/-! ## A353198.P4055074330018365232

`∩[A004431(n+1), A024614(n+1)]`
-/

namespace A353198.P4055074330018365232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353198.P4055074330018365232

namespace A353198

/-- `∩[A004431(n+1), A024614(n+1)]` -/
def P4055074330018365232.Spec : Prop :=
  ∀ n, (P4055074330018365232.a n : ℤ) = A353198 (n + 1)

end A353198

/-! ## A353198.P882979117043380430

`∩[A000404(n+1), A024614(n+1)]`
-/

namespace A353198.P882979117043380430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353198.P882979117043380430

namespace A353198

/-- `∩[A000404(n+1), A024614(n+1)]` -/
def P882979117043380430.Spec : Prop :=
  ∀ n, (P882979117043380430.a n : ℤ) = A353198 (n + 1)

end A353198

/-! ## A353198.P16316457211783190159

`∩[A050931(n+1), A155560(n+1)]`
-/

namespace A353198.P16316457211783190159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353198.P16316457211783190159

namespace A353198

/-- `∩[A050931(n+1), A155560(n+1)]` -/
def P16316457211783190159.Spec : Prop :=
  ∀ n, (P16316457211783190159.a n : ℤ) = A353198 (n + 1)

end A353198

/-! ## A353198.P10908334219298723389

`∩[A050931(n+1), A264732(n+1)]`
-/

namespace A353198.P10908334219298723389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353198.P10908334219298723389

namespace A353198

/-- `∩[A050931(n+1), A264732(n+1)]` -/
def P10908334219298723389.Spec : Prop :=
  ∀ n, (P10908334219298723389.a n : ℤ) = A353198 (n + 1)

end A353198

