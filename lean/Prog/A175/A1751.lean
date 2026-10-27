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
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A175101: The number of bases b for which the odd squarefree semiprime A046388(n) is a Fermat pseudoprime.

The programs for A175101, the canonical program `A175101.P10372877108701866296` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175101 has offset 1).

The definition of A175101 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046388, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175101.P10372877108701866296

`A063994(A046388(n+1))-2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A175101

/-- `A063994(A046388(n+1))-2` -/
def P10372877108701866296.Spec : Prop :=
  ∀ n, P10372877108701866296.a n = A175101 (n + 1)

theorem P10372877108701866296.correct : P10372877108701866296.Spec := by
  intro n
  simp only [A175101, Nat.add_sub_cancel]

end A175101

/-! ## A175101.P6842450948217190277

`A348259(eq[gcd(n+1, 2*n)², A077462(n)])-1`
-/

namespace A175101.P6842450948217190277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A175101.P6842450948217190277

namespace A175101

/-- `A348259(eq[gcd(n+1, 2*n)², A077462(n)])-1` -/
def P6842450948217190277.Spec : Prop :=
  ∀ n, P6842450948217190277.a n = A175101 (n + 1)

end A175101

/-! ## A175101.P4523281829918628641

`A348259(eq[A040007(n), A074206(n)])-1`
-/

namespace A175101.P4523281829918628641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A175101.P4523281829918628641

namespace A175101

/-- `A348259(eq[A040007(n), A074206(n)])-1` -/
def P4523281829918628641.Spec : Prop :=
  ∀ n, P4523281829918628641.a n = A175101 (n + 1)

end A175101

/-! ## A175101.P16163310682935333258

`A348259(eq[A040022(n), A074206(n)])-1`
-/

namespace A175101.P16163310682935333258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A175101.P16163310682935333258

namespace A175101

/-- `A348259(eq[A040022(n), A074206(n)])-1` -/
def P16163310682935333258.Spec : Prop :=
  ∀ n, P16163310682935333258.a n = A175101 (n + 1)

end A175101

/-! ## A175101.P17743854598319023547

`A348259(eq[(2*A010132(n))², A077462(n)])-1`
-/

namespace A175101.P17743854598319023547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A010132 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A175101.P17743854598319023547

namespace A175101

/-- `A348259(eq[(2*A010132(n))², A077462(n)])-1` -/
def P17743854598319023547.Spec : Prop :=
  ∀ n, P17743854598319023547.a n = A175101 (n + 1)

end A175101

/-!
# A175103: Integers n such that 17+30*n are terms in A172456.

The programs for A175103, there is no canonical definition to state claims against.
-/

/-! ## A175103.P6655380923746586299

`(A172456(n+1)-17)/30`
-/

namespace A175103.P6655380923746586299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172456 (n + 1) - 17 : ℚ) / 30

end

end A175103.P6655380923746586299

/-! ## A175103.P4938750563007569059

`floor(A172456(n+1)/30)`
-/

namespace A175103.P4938750563007569059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172456 (n + 1) : ℚ) / 30⌋

end

end A175103.P4938750563007569059

/-! ## A175103.P12968084652986174889

`floor(∩[A078946(n+1), A187057(n+1)]/30)`
-/

namespace A175103.P12968084652986174889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187057 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 30⌋

end

end A175103.P12968084652986174889

/-! ## A175103.P2832856852908971667

`floor(∩[A089629(n+1), A187057(n+1)]/30)`
-/

namespace A175103.P2832856852908971667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187057 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 30⌋

end

end A175103.P2832856852908971667

/-! ## A175103.P16752848272207162683

`floor(∩[A078946(n+1), A078955(n+1)-2]/30)`
-/

namespace A175103.P16752848272207162683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078955 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 30⌋

end

end A175103.P16752848272207162683

/-!
# A175104: a(1)=1. For n >= 2, a(n) = 2*a(n-1) + (number of composites among first n-1 terms of the sequence).

The programs for A175104, there is no canonical definition to state claims against.
-/

/-! ## A175104.P16324317103703564660

`A364254(A005010(n))+A178742(n+1)`
-/

namespace A175104.P16324317103703564660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364254 (A005010 n).toNat + A178742 (n + 1)

end

end A175104.P16324317103703564660

/-! ## A175104.P4050164398252667475

`∑[A033183(∑[A005029(n)])]`
-/

namespace A175104.P4050164398252667475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005029 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175104.P4050164398252667475

/-! ## A175104.P5222980555954276352

`∑[A005041(∑[A346627(n+1)])]`
-/

namespace A175104.P5222980555954276352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346627 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175104.P5222980555954276352

/-! ## A175104.P1933929228406845276

`A349052(n)+A054404(A070933(n))`
-/

namespace A175104.P1933929228406845276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349052 n + A054404 (A070933 n).toNat

end

end A175104.P1933929228406845276

/-!
# A175105: Triangle T(n,k) read by rows. T(n,1)=1; T(n,k) = Sum_{i=1..k-1} ( T(n-i,k-1) + T(n-i,k) ), k>1.

The programs for A175105, there is no canonical definition to state claims against.
-/

/-! ## A175105.P15065510069733310650

`A167383(6*A029635(n))`
-/

namespace A175105.P15065510069733310650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167383 (6 * A029635 n).toNat

end

end A175105.P15065510069733310650

/-! ## A175105.P8501425786452155639

`A167383(6*A135226(n))`
-/

namespace A175105.P8501425786452155639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167383 (6 * A135226 n).toNat

end

end A175105.P8501425786452155639

/-! ## A175105.P3837483977239345099

`A065108(A104559(n)%A089317(n))`
-/

namespace A175105.P3837483977239345099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065108 (Int.tmod (A104559 n) (A089317 n)).toNat

end

end A175105.P3837483977239345099

/-! ## A175105.P4717295591113657953

`A001222(A004248(n)!)+A007318(n)`
-/

namespace A175105.P4717295591113657953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A004248 n).toNat) + A007318 n

end

end A175105.P4717295591113657953

/-! ## A175105.P5611250764895497260

`A076831(n)+A001222(A004248(n)!)`
-/

namespace A175105.P5611250764895497260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076831 n + A001222 (Nat.factorial (A004248 n).toNat)

end

end A175105.P5611250764895497260

/-!
# A175106: a(0)=1. a(2n-1) = smallest prime > a(2n-2). a(2n) = smallest proper prime power > a(2n-1).

The programs for A175106, there is no canonical definition to state claims against.
-/

/-! ## A175106.P8332851040727184953

`A070082(A000041(n)*A371284(2*(n+1)))`
-/

namespace A175106.P8332851040727184953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (A000041 n * A371284 (2 * (n + 1))).toNat

end

end A175106.P8332851040727184953

/-! ## A175106.P10960078350731194405

`record[gcd(A013928(n+1), A137408(n+1))]`
-/

namespace A175106.P10960078350731194405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013928 (n + 1)) (A137408 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175106.P10960078350731194405

/-! ## A175106.P3831890908637516643

`record[and(A034699(n+1), A218795(n+1))]`
-/

namespace A175106.P3831890908637516643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034699 (n + 1)) (A218795 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175106.P3831890908637516643

/-! ## A175106.P252326417330934809

`record[and(A100994(n+1), A218795(n+1))]`
-/

namespace A175106.P252326417330934809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100994 (n + 1)) (A218795 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175106.P252326417330934809

/-! ## A175106.P4291610790644973499

`record[A003557(A007913(n+1)*A344005(n+1))]`
-/

namespace A175106.P4291610790644973499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A007913 (n + 1) * A344005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175106.P4291610790644973499

/-!
# A175107: a(1)=1. For n >= 2, if A025474(n) is the exponent of the n-th prime-power (1 is considered the first prime-power here), then a(n) = the A025474(n)th integer from among those positive integers not yet in the sequence.

The programs for A175107, there is no canonical definition to state claims against.
-/

/-! ## A175107.P9122063857500898951

`A120911(A120913(n+1)%A048940(n+1))`
-/

namespace A175107.P9122063857500898951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120911 (Int.tmod (A120913 (n + 1)) (A048940 (n + 1))).toNat

end

end A175107.P9122063857500898951

/-! ## A175107.P15512732564209009429

`A073287(A316669(n+1)%A048940(n+1))`
-/

namespace A175107.P15512732564209009429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (Int.tmod (A316669 (n + 1)) (A048940 (n + 1))).toNat

end

end A175107.P15512732564209009429

/-! ## A175107.P14898591791652775717

`A120911(A120913(n+1))%A029518(3*n+2)`
-/

namespace A175107.P14898591791652775717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120911 (A120913 (n + 1)).toNat) (A029518 (3 * n + 2))

end

end A175107.P14898591791652775717

/-! ## A175107.P918512168142246050

`A120911(A120913(n+1))+A083928(A000124(n))`
-/

namespace A175107.P918512168142246050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120911 (A120913 (n + 1)).toNat + A083928 (A000124 n).toNat

end

end A175107.P918512168142246050

/-!
# A175109: a(n) = ((2*n+1)^3+(-1)^n)/2.

The programs for A175109, the canonical program `A175109.P8526944772484404784` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175109 has offset 0).

The definition of A175109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((2*n+1)^3+(-1)^n)/2` (program `A175109.P7355312840391020812`, by `A175109.P7355312840391020812.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175109.P7355312840391020812

`((2*n+1)^3+(-1)^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175109.P7355312840391020812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 3 : ℤ) + (-1) ^ n : ℚ) / 2

end

end A175109.P7355312840391020812

namespace A175109

/-- `((2*n+1)^3+(-1)^n)/2` -/
def P7355312840391020812.Spec : Prop :=
  ∀ n, P7355312840391020812.a n = (A175109 n : ℚ)

theorem P7355312840391020812.correct : P7355312840391020812.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A175109, Nat.add_sub_cancel, A175109.P7355312840391020812.a, A175109.P8526944772484404784.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A175109, Nat.add_sub_cancel, A175109.P7355312840391020812.a, A175109.P8526944772484404784.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175109

/-! ## A175109.P8526944772484404784

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=13, a(2)=63, a(3)=171, a(4)=365`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175109

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P8526944772484404784.Spec : Prop :=
  ∀ n, P8526944772484404784.a n = A175109 n

theorem P8526944772484404784.correct : P8526944772484404784.Spec := by
  intro n
  simp only [A175109]

end A175109

/-! ## A175109.P14180444012804979013

`or(1, ∑[12*n²]+n)`
-/

namespace A175109.P14180444012804979013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A175109.P14180444012804979013

namespace A175109

/-- `or(1, ∑[12*n²]+n)` -/
def P14180444012804979013.Spec : Prop :=
  ∀ n, (P14180444012804979013.a n : ℤ) = A175109 n

end A175109

/-! ## A175109.P15082817659420282157

`Δ[n²²]-(and(1, n)+n)`
-/

namespace A175109.P15082817659420282157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.land 1 n + n : ℤ)

end

end A175109.P15082817659420282157

namespace A175109

/-- `Δ[n²²]-(and(1, n)+n)` -/
def P15082817659420282157.Spec : Prop :=
  ∀ n, P15082817659420282157.a n = A175109 n

end A175109

/-! ## A175109.P1259874677927004470

`Δ[n²²]-and(1, n)-n`
-/

namespace A175109.P1259874677927004470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.land 1 n : ℤ) - (n : ℤ)

end

end A175109.P1259874677927004470

namespace A175109

/-- `Δ[n²²]-and(1, n)-n` -/
def P1259874677927004470.Spec : Prop :=
  ∀ n, P1259874677927004470.a n = A175109 n

end A175109

/-! ## A175109.P10271259296431810724

`abs(or(1, Δ[n^4]-(n+1)))`
-/

namespace A175109.P10271259296431810724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 1 : ℤ))|

end

end A175109.P10271259296431810724

namespace A175109

/-- `abs(or(1, Δ[n^4]-(n+1)))` -/
def P10271259296431810724.Spec : Prop :=
  ∀ n, P10271259296431810724.a n = A175109 n

end A175109

/-! ## A175109.P15319368510177656018

`floor(or(2, (2*n+1)^3)/2)`
-/

namespace A175109.P15319368510177656018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 ((2 * n + 1) ^ 3) : ℚ) / 2⌋

end

end A175109.P15319368510177656018

namespace A175109

/-- `floor(or(2, (2*n+1)^3)/2)` -/
def P15319368510177656018.Spec : Prop :=
  ∀ n, P15319368510177656018.a n = A175109 n

end A175109

/-! ## A175109.P16120834912944302652

`∑[A110907(n)]`
-/

namespace A175109.P16120834912944302652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175109.P16120834912944302652

namespace A175109

/-- `∑[A110907(n)]` -/
def P16120834912944302652.Spec : Prop :=
  ∀ n, P16120834912944302652.a n = A175109 n

end A175109

/-! ## A175109.P6980531693737958739

`A050492(n+1)-and(1, n)`
-/

namespace A175109.P6980531693737958739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050492 (n + 1) - (Nat.land 1 n : ℤ)

end

end A175109.P6980531693737958739

namespace A175109

/-- `A050492(n+1)-and(1, n)` -/
def P6980531693737958739.Spec : Prop :=
  ∀ n, P6980531693737958739.a n = A175109 n

end A175109

/-! ## A175109.P18186192098470991228

`A173962(n)-a(n-1)` with `a(0)=1`
-/

namespace A175109.P18186192098470991228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A173962 n - a (n - 1)

end

end A175109.P18186192098470991228

namespace A175109

/-- `A173962(n)-a(n-1)` -/
def P18186192098470991228.Spec : Prop :=
  ∀ n, P18186192098470991228.a n = A175109 n

end A175109

/-! ## A175109.P2970278786231403129

`A109613(n)+∑[12*n²]`
-/

namespace A175109.P2970278786231403129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A175109.P2970278786231403129

namespace A175109

/-- `A109613(n)+∑[12*n²]` -/
def P2970278786231403129.Spec : Prop :=
  ∀ n, P2970278786231403129.a n = A175109 n

end A175109

/-! ## A175109.P11465956134812677094

`Δ[n²²-A099392(n+1)]`
-/

namespace A175109.P11465956134812677094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A099392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175109.P11465956134812677094

namespace A175109

/-- `Δ[n²²-A099392(n+1)]` -/
def P11465956134812677094.Spec : Prop :=
  ∀ n, P11465956134812677094.a n = A175109 n

end A175109

/-! ## A175109.P15534936520343438553

`A129957(n)+A059986(n)`
-/

namespace A175109.P15534936520343438553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129957 n + A059986 n

end

end A175109.P15534936520343438553

namespace A175109

/-- `A129957(n)+A059986(n)` -/
def P15534936520343438553.Spec : Prop :=
  ∀ n, P15534936520343438553.a n = A175109 n

end A175109

/-! ## A175109.P9035598422180389307

`A300758(n)+A109613(n)`
-/

namespace A175109.P9035598422180389307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n + A109613 n

end

end A175109.P9035598422180389307

namespace A175109

/-- `A300758(n)+A109613(n)` -/
def P9035598422180389307.Spec : Prop :=
  ∀ n, P9035598422180389307.a n = A175109 n

end A175109

/-! ## A175109.P7099229605609877968

`A395241(n)+A090381(n)`
-/

namespace A175109.P7099229605609877968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395241 n + A090381 n

end

end A175109.P7099229605609877968

namespace A175109

/-- `A395241(n)+A090381(n)` -/
def P7099229605609877968.Spec : Prop :=
  ∀ n, P7099229605609877968.a n = A175109 n

end A175109

/-! ## A175109.P8810497511811242421

`∑[A195143(n)+A010002(n)]`
-/

namespace A175109.P8810497511811242421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 n + A010002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175109.P8810497511811242421

namespace A175109

/-- `∑[A195143(n)+A010002(n)]` -/
def P8810497511811242421.Spec : Prop :=
  ∀ n, P8810497511811242421.a n = A175109 n

end A175109

/-! ## A175109.P16594176814102364833

`∑[A005914(n)-A010673(n)]`
-/

namespace A175109.P16594176814102364833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 n - A010673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175109.P16594176814102364833

namespace A175109

/-- `∑[A005914(n)-A010673(n)]` -/
def P16594176814102364833.Spec : Prop :=
  ∀ n, P16594176814102364833.a n = A175109 n

end A175109

/-! ## A175109.P10079098243758370288

`A268201(n+1)+A059841(n)`
-/

namespace A175109.P10079098243758370288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268201 (n + 1) + A059841 n

end

end A175109.P10079098243758370288

namespace A175109

/-- `A268201(n+1)+A059841(n)` -/
def P10079098243758370288.Spec : Prop :=
  ∀ n, P10079098243758370288.a n = A175109 n

end A175109

/-! ## A175109.P6083761373421966589

`A050492(n+1)-A000035(n)`
-/

namespace A175109.P6083761373421966589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050492 (n + 1) - A000035 n

end

end A175109.P6083761373421966589

namespace A175109

/-- `A050492(n+1)-A000035(n)` -/
def P6083761373421966589.Spec : Prop :=
  ∀ n, P6083761373421966589.a n = A175109 n

end A175109

/-! ## A175109.P13114494915906980668

`∑[A005914(n)-2*A000035(n)]`
-/

namespace A175109.P13114494915906980668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 n - 2 * A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175109.P13114494915906980668

namespace A175109

/-- `∑[A005914(n)-2*A000035(n)]` -/
def P13114494915906980668.Spec : Prop :=
  ∀ n, P13114494915906980668.a n = A175109 n

end A175109

/-!
# A175110: a(n) = ((2*n+1)^4+1)/2.

The programs for A175110, the canonical program `A175110.P3665220089273309715` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175110 has offset 0).

The definition of A175110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175110.P12037309714338766615

`((2*n+1)^4+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175110.P12037309714338766615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 4 + 1 : ℚ) / 2

end

end A175110.P12037309714338766615

namespace A175110

/-- `((2*n+1)^4+1)/2` -/
def P12037309714338766615.Spec : Prop :=
  ∀ n, P12037309714338766615.a n = (A175110 n : ℚ)

end A175110

/-! ## A175110.P3665220089273309715

`8*A219086(n)+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175110

/-- `8*A219086(n)+1` -/
def P3665220089273309715.Spec : Prop :=
  ∀ n, P3665220089273309715.a n = A175110 n

theorem P3665220089273309715.correct : P3665220089273309715.Spec := by
  intro n
  simp only [A175110]

end A175110

/-! ## A175110.P4731652158667977505

`8*A001844(n)*A000217(n)+1`
-/

namespace A175110.P4731652158667977505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A001844 n * A000217 n + 1

end

end A175110.P4731652158667977505

namespace A175110

/-- `8*A001844(n)*A000217(n)+1` -/
def P4731652158667977505.Spec : Prop :=
  ∀ n, P4731652158667977505.a n = A175110 n

end A175110

/-! ## A175110.P10266840311719878738

`round(or(1, 2*n)^4/2)`
-/

namespace A175110.P10266840311719878738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (2 * n) ^ 4 : ℚ) / 2)

end

end A175110.P10266840311719878738

namespace A175110

/-- `round(or(1, 2*n)^4/2)` -/
def P10266840311719878738.Spec : Prop :=
  ∀ n, P10266840311719878738.a n = A175110 n

end A175110

/-! ## A175110.P13826309760649128637

`round(xor(1, 2*n)^4/2)`
-/

namespace A175110.P13826309760649128637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n) ^ 4 : ℚ) / 2)

end

end A175110.P13826309760649128637

namespace A175110

/-- `round(xor(1, 2*n)^4/2)` -/
def P13826309760649128637.Spec : Prop :=
  ∀ n, P13826309760649128637.a n = A175110 n

end A175110

/-! ## A175110.P35319732102770951

`round(or(1, 2*n)²²/2)`
-/

namespace A175110.P35319732102770951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor 1 (2 * n) ^ 2) ^ 2 : ℚ) / 2)

end

end A175110.P35319732102770951

namespace A175110

/-- `round(or(1, 2*n)²²/2)` -/
def P35319732102770951.Spec : Prop :=
  ∀ n, P35319732102770951.a n = A175110 n

end A175110

/-! ## A175110.P1410202018927817683

`round(xor(1, 2*n)²²/2)`
-/

namespace A175110.P1410202018927817683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.xor 1 (2 * n) ^ 2) ^ 2 : ℚ) / 2)

end

end A175110.P1410202018927817683

namespace A175110

/-- `round(xor(1, 2*n)²²/2)` -/
def P1410202018927817683.Spec : Prop :=
  ∀ n, P1410202018927817683.a n = A175110 n

end A175110

/-! ## A175110.P11904272439003626673

`round(cosh(4*log(2*n+1)))`
-/

namespace A175110.P11904272439003626673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (4 * Real.log (2 * n + 1 : ℝ)))

end

end A175110.P11904272439003626673

namespace A175110

/-- `round(cosh(4*log(2*n+1)))` -/
def P11904272439003626673.Spec : Prop :=
  ∀ n, P11904272439003626673.a n = A175110 n

end A175110

/-! ## A175110.P6928040306972987423

`floor(cosh(log(Δ[n²]²²+2)))`
-/

namespace A175110.P6928040306972987423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2 + 2 : ℝ))⌋

end

end A175110.P6928040306972987423

namespace A175110

/-- `floor(cosh(log(Δ[n²]²²+2)))` -/
def P6928040306972987423.Spec : Prop :=
  ∀ n, P6928040306972987423.a n = A175110 n

end A175110

/-! ## A175110.P8547078083345009935

`xor(1, floor((2*n+1)²²/2))`
-/

namespace A175110.P8547078083345009935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(((2 * n + 1) ^ 2) ^ 2 : ℚ) / 2⌋

end

end A175110.P8547078083345009935

namespace A175110

/-- `xor(1, floor((2*n+1)²²/2))` -/
def P8547078083345009935.Spec : Prop :=
  ∀ n, P8547078083345009935.a n = A175110 n

end A175110

/-! ## A175110.P9094161623748724001

`floor(or(2, (2*n+1)²²)/2)`
-/

namespace A175110.P9094161623748724001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 (((2 * n + 1) ^ 2) ^ 2) : ℚ) / 2⌋

end

end A175110.P9094161623748724001

namespace A175110

/-- `floor(or(2, (2*n+1)²²)/2)` -/
def P9094161623748724001.Spec : Prop :=
  ∀ n, P9094161623748724001.a n = A175110 n

end A175110

/-! ## A175110.P9716685902801332625

`round(C(2*n+1, 2*n)²²/2)`
-/

namespace A175110.P9716685902801332625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (2 * n + 1) (2 * n) ^ 2) ^ 2 : ℚ) / 2)

end

end A175110.P9716685902801332625

namespace A175110

/-- `round(C(2*n+1, 2*n)²²/2)` -/
def P9716685902801332625.Spec : Prop :=
  ∀ n, P9716685902801332625.a n = A175110 n

end A175110

/-! ## A175110.P12015445574755865320

`(2*n+1)²*cosh(log((2*n+1)²))`
-/

namespace A175110.P12015445574755865320
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℝ) * Real.cosh (Real.log ((2 * n + 1) ^ 2 : ℝ))

end

end A175110.P12015445574755865320

namespace A175110

/-- `(2*n+1)²*cosh(log((2*n+1)²))` -/
def P12015445574755865320.Spec : Prop :=
  ∀ n, P12015445574755865320.a n = (A175110 n : ℝ)

end A175110

/-! ## A175110.P4169199343638674316

`∑[A117216(n)]`
-/

namespace A175110.P4169199343638674316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175110.P4169199343638674316

namespace A175110

/-- `∑[A117216(n)]` -/
def P4169199343638674316.Spec : Prop :=
  ∀ n, P4169199343638674316.a n = A175110 n

end A175110

/-! ## A175110.P14302815923988074740

`A060300(n)+A007204(n)`
-/

namespace A175110.P14302815923988074740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060300 n + A007204 n

end

end A175110.P14302815923988074740

namespace A175110

/-- `A060300(n)+A007204(n)` -/
def P14302815923988074740.Spec : Prop :=
  ∀ n, P14302815923988074740.a n = A175110 n

end A175110

/-! ## A175110.P10185624127750872579

`A185096(n)+A001844(n)`
-/

namespace A175110.P10185624127750872579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185096 n + A001844 n

end

end A175110.P10185624127750872579

namespace A175110

/-- `A185096(n)+A001844(n)` -/
def P10185624127750872579.Spec : Prop :=
  ∀ n, P10185624127750872579.a n = A175110 n

end A175110

/-! ## A175110.P5158919429945997758

`A272850(n)-A046092(n)`
-/

namespace A175110.P5158919429945997758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272850 n - A046092 n

end

end A175110.P5158919429945997758

namespace A175110

/-- `A272850(n)-A046092(n)` -/
def P5158919429945997758.Spec : Prop :=
  ∀ n, P5158919429945997758.a n = A175110 n

end A175110

/-! ## A175110.P4467468084848590634

`A365206(n+1)-A033996(n)`
-/

namespace A175110.P4467468084848590634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365206 (n + 1) - A033996 n

end

end A175110.P4467468084848590634

namespace A175110

/-- `A365206(n+1)-A033996(n)` -/
def P4467468084848590634.Spec : Prop :=
  ∀ n, P4467468084848590634.a n = A175110 n

end A175110

/-! ## A175110.P16239489957416128901

`A191903(2*n)+1`
-/

namespace A175110.P16239489957416128901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191903 (2 * n) + 1

end

end A175110.P16239489957416128901

namespace A175110

/-- `A191903(2*n)+1` -/
def P16239489957416128901.Spec : Prop :=
  ∀ n, P16239489957416128901.a n = A175110 n

end A175110

/-! ## A175110.P14453359559570736168

`A171714(2*n)`
-/

namespace A175110.P14453359559570736168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171714 (2 * n)

end

end A175110.P14453359559570736168

namespace A175110

/-- `A171714(2*n)` -/
def P14453359559570736168.Spec : Prop :=
  ∀ n, P14453359559570736168.a n = A175110 n

end A175110

/-!
# A175111: a(n) = ((2*n+1)^5+(-1)^n)/2.

The programs for A175111, the canonical program `A175111.P1009465188080786622` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175111 has offset 0).

The definition of A175111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175111.P1009465188080786622

`((2*n+1)^5+(-1)^n)/2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175111

/-- `((2*n+1)^5+(-1)^n)/2` -/
def P1009465188080786622.Spec : Prop :=
  ∀ n, P1009465188080786622.a n = (A175111 n : ℚ)

end A175111

/-! ## A175111.P8316732463127183021

`or(1, floor((2*n+1)^5/2))`
-/

namespace A175111.P8316732463127183021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊((2 * n + 1) ^ 5 : ℚ) / 2⌋

end

end A175111.P8316732463127183021

namespace A175111

/-- `or(1, floor((2*n+1)^5/2))` -/
def P8316732463127183021.Spec : Prop :=
  ∀ n, P8316732463127183021.a n = A175111 n

end A175111

/-! ## A175111.P12995307947142660324

`∑[A175112(n)]`
-/

namespace A175111.P12995307947142660324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175111.P12995307947142660324

namespace A175111

/-- `∑[A175112(n)]` -/
def P12995307947142660324.Spec : Prop :=
  ∀ n, P12995307947142660324.a n = A175111 n

end A175111

/-! ## A175111.P14369477479433630130

`A191902(2*n)+A059841(n)`
-/

namespace A175111.P14369477479433630130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191902 (2 * n) + A059841 n

end

end A175111.P14369477479433630130

namespace A175111

/-- `A191902(2*n)+A059841(n)` -/
def P14369477479433630130.Spec : Prop :=
  ∀ n, P14369477479433630130.a n = A175111 n

end A175111

/-! ## A175111.P1460363540765791083

`A191902(2*n)+A056594(n)²`
-/

namespace A175111.P1460363540765791083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191902 (2 * n) + A056594 n ^ 2

end

end A175111.P1460363540765791083

namespace A175111

/-- `A191902(2*n)+A056594(n)²` -/
def P1460363540765791083.Spec : Prop :=
  ∀ n, P1460363540765791083.a n = A175111 n

end A175111

/-! ## A175111.P3774846761472228079

`A191902(2*n)+A109613(n)-n`
-/

namespace A175111.P3774846761472228079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191902 (2 * n) + (A109613 n - (n : ℤ))

end

end A175111.P3774846761472228079

namespace A175111

/-- `A191902(2*n)+A109613(n)-n` -/
def P3774846761472228079.Spec : Prop :=
  ∀ n, P3774846761472228079.a n = A175111 n

end A175111

/-! ## A175111.P6031943134222585514

`A191902(2*n)+ceil(ratio[A057077(n)]/2)`
-/

namespace A175111.P6031943134222585514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191902 (2 * n) + ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) / 2⌉

end

end A175111.P6031943134222585514

namespace A175111

/-- `A191902(2*n)+ceil(ratio[A057077(n)]/2)` -/
def P6031943134222585514.Spec : Prop :=
  ∀ n, P6031943134222585514.a n = A175111 n

end A175111

/-! ## A175111.P17876544492443018238

`A191484(2*n)-A059841(n+1)`
-/

namespace A175111.P17876544492443018238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191484 (2 * n) - A059841 (n + 1)

end

end A175111.P17876544492443018238

namespace A175111

/-- `A191484(2*n)-A059841(n+1)` -/
def P17876544492443018238.Spec : Prop :=
  ∀ n, P17876544492443018238.a n = A175111 n

end A175111

/-! ## A175111.P8676792801971014937

`A004525(2*n+1)+n*A027445(2*n+1)`
-/

namespace A175111.P8676792801971014937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n + 1) + (n : ℤ) * A027445 (2 * n + 1)

end

end A175111.P8676792801971014937

namespace A175111

/-- `A004525(2*n+1)+n*A027445(2*n+1)` -/
def P8676792801971014937.Spec : Prop :=
  ∀ n, P8676792801971014937.a n = A175111 n

end A175111

/-! ## A175111.P8132265511944592492

`A191484(2*n)+A191903(n+1)-A171714(n+1)`
-/

namespace A175111.P8132265511944592492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191484 (2 * n) + (A191903 (n + 1) - A171714 (n + 1))

end

end A175111.P8132265511944592492

namespace A175111

/-- `A191484(2*n)+A191903(n+1)-A171714(n+1)` -/
def P8132265511944592492.Spec : Prop :=
  ∀ n, P8132265511944592492.a n = A175111 n

end A175111

/-! ## A175111.P7625832511036812028

`A191484(2*n)+A191900(n+1)-A191494(n+1)`
-/

namespace A175111.P7625832511036812028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191484 (2 * n) + (A191900 (n + 1) - A191494 (n + 1))

end

end A175111.P7625832511036812028

namespace A175111

/-- `A191484(2*n)+A191900(n+1)-A191494(n+1)` -/
def P7625832511036812028.Spec : Prop :=
  ∀ n, P7625832511036812028.a n = A175111 n

end A175111

/-! ## A175111.P7642701764286460435

`A191484(2*n)+A191902(n+1)-A191484(n+1)`
-/

namespace A175111.P7642701764286460435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191484 (2 * n) + (A191902 (n + 1) - A191484 (n + 1))

end

end A175111.P7642701764286460435

namespace A175111

/-- `A191484(2*n)+A191902(n+1)-A191484(n+1)` -/
def P7642701764286460435.Spec : Prop :=
  ∀ n, P7642701764286460435.a n = A175111 n

end A175111

/-! ## A175111.P16463736051711001084

`A191484(2*n)+A036487(3*n)-A036486(3*n)`
-/

namespace A175111.P16463736051711001084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191484 (2 * n) + (A036487 (3 * n) - A036486 (3 * n))

end

end A175111.P16463736051711001084

namespace A175111

/-- `A191484(2*n)+A036487(3*n)-A036486(3*n)` -/
def P16463736051711001084.Spec : Prop :=
  ∀ n, P16463736051711001084.a n = A175111 n

end A175111

/-! ## A175111.P6308742715442044931

`xor(A059841(A000982(n)), A191902(2*n))`
-/

namespace A175111.P6308742715442044931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 (A000982 n).toNat) (A191902 (2 * n))

end

end A175111.P6308742715442044931

namespace A175111

/-- `xor(A059841(A000982(n)), A191902(2*n))` -/
def P6308742715442044931.Spec : Prop :=
  ∀ n, P6308742715442044931.a n = A175111 n

end A175111

/-!
# A175112: First differences of A175111.

The programs for A175112, there is no canonical definition to state claims against.
-/

/-! ## A175112.P2912998469810183382

`A134593((2*n)²)-A062157(n)`
-/

namespace A175112.P2912998469810183382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134593 ((2 * n) ^ 2) - A062157 n

end

end A175112.P2912998469810183382

/-!
# A175113: a(n) = ((2*n + 1)^6 + 1)/2.

The programs for A175113, the canonical program `A175113.P15508926392791470040` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175113 has offset 0).

The definition of A175113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175113.P15508926392791470040

`((2*n+1)^6+1)/2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175113

/-- `((2*n+1)^6+1)/2` -/
def P15508926392791470040.Spec : Prop :=
  ∀ n, P15508926392791470040.a n = (A175113 n : ℚ)

end A175113

/-! ## A175113.P12045323931416934583

`round(cosh(6*log(2*n+1)))`
-/

namespace A175113.P12045323931416934583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (6 * Real.log (2 * n + 1 : ℝ)))

end

end A175113.P12045323931416934583

namespace A175113

/-- `round(cosh(6*log(2*n+1)))` -/
def P12045323931416934583.Spec : Prop :=
  ∀ n, P12045323931416934583.a n = A175113 n

end A175113

/-! ## A175113.P8174780637826876838

`∑[A175114(n)]`
-/

namespace A175113.P8174780637826876838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175113.P8174780637826876838

namespace A175113

/-- `∑[A175114(n)]` -/
def P8174780637826876838.Spec : Prop :=
  ∀ n, P8174780637826876838.a n = A175113 n

end A175113

/-! ## A175113.P15542403734461659821

`ceil(A016755(n)²/2)`
-/

namespace A175113.P15542403734461659821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016755 n ^ 2 : ℚ) / 2⌉

end

end A175113.P15542403734461659821

namespace A175113

/-- `ceil(A016755(n)²/2)` -/
def P15542403734461659821.Spec : Prop :=
  ∀ n, P15542403734461659821.a n = A175113 n

end A175113

/-! ## A175113.P3740797121289603104

`A050492(n+1)²+A268201(n+1)²`
-/

namespace A175113.P3740797121289603104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050492 (n + 1) ^ 2 + A268201 (n + 1) ^ 2

end

end A175113.P3740797121289603104

namespace A175113

/-- `A050492(n+1)²+A268201(n+1)²` -/
def P3740797121289603104.Spec : Prop :=
  ∀ n, P3740797121289603104.a n = A175113 n

end A175113

/-! ## A175113.P10505367927443454320

`∑[lcm(A144965(n)+A022144(n), A010014(n))]`
-/

namespace A175113.P10505367927443454320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144965 n + A022144 n) (A010014 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175113.P10505367927443454320

namespace A175113

/-- `∑[lcm(A144965(n)+A022144(n), A010014(n))]` -/
def P10505367927443454320.Spec : Prop :=
  ∀ n, (P10505367927443454320.a n : ℤ) = A175113 n

end A175113

/-! ## A175113.P17573339167625988759

`A191901(2*n)+1`
-/

namespace A175113.P17573339167625988759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191901 (2 * n) + 1

end

end A175113.P17573339167625988759

namespace A175113

/-- `A191901(2*n)+1` -/
def P17573339167625988759.Spec : Prop :=
  ∀ n, P17573339167625988759.a n = A175113 n

end A175113

/-! ## A175113.P3538950063914807566

`A191489(2*n)`
-/

namespace A175113.P3538950063914807566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191489 (2 * n)

end

end A175113.P3538950063914807566

namespace A175113

/-- `A191489(2*n)` -/
def P3538950063914807566.Spec : Prop :=
  ∀ n, P3538950063914807566.a n = A175113 n

end A175113

/-! ## A175113.P2863405937439008048

`A167963(Δ[n²])-n`
-/

namespace A175113.P2863405937439008048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A175113.P2863405937439008048

namespace A175113

/-- `A167963(Δ[n²])-n` -/
def P2863405937439008048.Spec : Prop :=
  ∀ n, P2863405937439008048.a n = A175113 n

end A175113

/-! ## A175113.P6641205987355584749

`floor(A002604(2*n+1)/2)`
-/

namespace A175113.P6641205987355584749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002604 (2 * n + 1) : ℚ) / 2⌋

end

end A175113.P6641205987355584749

namespace A175113

/-- `floor(A002604(2*n+1)/2)` -/
def P6641205987355584749.Spec : Prop :=
  ∀ n, P6641205987355584749.a n = A175113 n

end A175113

/-! ## A175113.P5773128335079344588

`round(A001014(2*n+1)/2)`
-/

namespace A175113.P5773128335079344588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001014 (2 * n + 1) : ℚ) / 2)

end

end A175113.P5773128335079344588

namespace A175113

/-- `round(A001014(2*n+1)/2)` -/
def P5773128335079344588.Spec : Prop :=
  ∀ n, P5773128335079344588.a n = A175113 n

end A175113

/-! ## A175113.P8318451961657523477

`A123866(2*n+1)/2+1`
-/

namespace A175113.P8318451961657523477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123866 (2 * n + 1) : ℚ) / 2 + 1

end

end A175113.P8318451961657523477

namespace A175113

/-- `A123866(2*n+1)/2+1` -/
def P8318451961657523477.Spec : Prop :=
  ∀ n, P8318451961657523477.a n = (A175113 n : ℚ)

end A175113

/-! ## A175113.P14230378953179970643

`1-A024004(2*n+1)/2`
-/

namespace A175113.P14230378953179970643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A024004 (2 * n + 1) : ℚ) / 2

end

end A175113.P14230378953179970643

namespace A175113

/-- `1-A024004(2*n+1)/2` -/
def P14230378953179970643.Spec : Prop :=
  ∀ n, P14230378953179970643.a n = (A175113 n : ℚ)

end A175113

/-! ## A175113.P10596881843818338282

`n*A053700(2*n+1)+1`
-/

namespace A175113.P10596881843818338282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053700 (2 * n + 1) + 1

end

end A175113.P10596881843818338282

namespace A175113

/-- `n*A053700(2*n+1)+1` -/
def P10596881843818338282.Spec : Prop :=
  ∀ n, P10596881843818338282.a n = A175113 n

end A175113

/-! ## A175113.P7097033265857992322

`A131472(2*n+1)/2-n`
-/

namespace A175113.P7097033265857992322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131472 (2 * n + 1) : ℚ) / 2 - (n : ℚ)

end

end A175113.P7097033265857992322

namespace A175113

/-- `A131472(2*n+1)/2-n` -/
def P7097033265857992322.Spec : Prop :=
  ∀ n, P7097033265857992322.a n = (A175113 n : ℚ)

end A175113

/-! ## A175113.P751105014334610952

`ceil(A000578(2*n+1)²/2)`
-/

namespace A175113.P751105014334610952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000578 (2 * n + 1) ^ 2 : ℚ) / 2⌉

end

end A175113.P751105014334610952

namespace A175113

/-- `ceil(A000578(2*n+1)²/2)` -/
def P751105014334610952.Spec : Prop :=
  ∀ n, P751105014334610952.a n = A175113 n

end A175113

/-! ## A175113.P12018596057731485839

`A006003(2*n+1)+A085744(2*n+1)-n`
-/

namespace A175113.P12018596057731485839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (2 * n + 1) + (A085744 (2 * n + 1) - (n : ℤ))

end

end A175113.P12018596057731485839

namespace A175113

/-- `A006003(2*n+1)+A085744(2*n+1)-n` -/
def P12018596057731485839.Spec : Prop :=
  ∀ n, P12018596057731485839.a n = A175113 n

end A175113

/-! ## A175113.P8725031028491999028

`A085743(2*n+1)+A100855(2*n+1)-n`
-/

namespace A175113.P8725031028491999028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085743 (2 * n + 1) + (A100855 (2 * n + 1) - (n : ℤ))

end

end A175113.P8725031028491999028

namespace A175113

/-- `A085743(2*n+1)+A100855(2*n+1)-n` -/
def P8725031028491999028.Spec : Prop :=
  ∀ n, P8725031028491999028.a n = A175113 n

end A175113

/-! ## A175113.P10975487330310215704

`A000584(2*n+1)+n*A125083(2*n+1)`
-/

namespace A175113.P10975487330310215704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (2 * n + 1) + (n : ℤ) * A125083 (2 * n + 1)

end

end A175113.P10975487330310215704

namespace A175113

/-- `A000584(2*n+1)+n*A125083(2*n+1)` -/
def P10975487330310215704.Spec : Prop :=
  ∀ n, P10975487330310215704.a n = A175113 n

end A175113

/-!
# A175114: First differences of A175113.

The programs for A175114, the canonical program `A175114.P11097718546423522819` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175114 has offset 0).

The definition of A175114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175114.P16660432250058613150

`round(A158480(n)/acot(A271636(n)))`
-/

namespace A175114.P16660432250058613150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A158480 n : ℝ) / SequenceMachineLib.acot (A271636 n : ℝ))

end

end A175114.P16660432250058613150

namespace A175114

/-- `round(A158480(n)/acot(A271636(n)))` -/
def P16660432250058613150.Spec : Prop :=
  ∀ n, P16660432250058613150.a n = A175114 n

end A175114

/-! ## A175114.P11097718546423522819

`lcm(A144965(n)+A022144(n), A010014(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175114

/-- `lcm(A144965(n)+A022144(n), A010014(n))` -/
def P11097718546423522819.Spec : Prop :=
  ∀ n, (P11097718546423522819.a n : ℤ) = A175114 n

theorem P11097718546423522819.correct : P11097718546423522819.Spec := by
  intro n
  simp only [A175114]

end A175114

/-! ## A175114.P14487340603512383923

`A010014(n)*A079908(2*n)`
-/

namespace A175114.P14487340603512383923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010014 n * A079908 (2 * n)

end

end A175114.P14487340603512383923

namespace A175114

/-- `A010014(n)*A079908(2*n)` -/
def P14487340603512383923.Spec : Prop :=
  ∀ n, P14487340603512383923.a n = A175114 n

end A175114

/-! ## A175114.P10609694612664614653

`A000007(n)+A008513(2*n)/2`
-/

namespace A175114.P10609694612664614653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A008513 (2 * n) : ℚ) / 2

end

end A175114.P10609694612664614653

namespace A175114

/-- `A000007(n)+A008513(2*n)/2` -/
def P10609694612664614653.Spec : Prop :=
  ∀ n, P10609694612664614653.a n = (A175114 n : ℚ)

end A175114

/-! ## A175114.P12866016030060309400

`A005897(2*n)*A079908(2*n)`
-/

namespace A175114.P12866016030060309400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (2 * n) * A079908 (2 * n)

end

end A175114.P12866016030060309400

namespace A175114

/-- `A005897(2*n)*A079908(2*n)` -/
def P12866016030060309400.Spec : Prop :=
  ∀ n, P12866016030060309400.a n = A175114 n

end A175114

/-!
# A175115: An integer k, k >=3, is included if d(k) = d(k-1)*d(k-2), where d(k) is the number of divisors of k.

The programs for A175115, there is no canonical definition to state claims against.
-/

/-! ## A175115.P13759188058969856476

`eq[A000005((n+2)*(n+1)), A000005(n+3)]+3`
-/

namespace A175115.P13759188058969856476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2) * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A175115.P13759188058969856476

/-!
# A175116: A positive integer k is included if d(k) = d(k+1) * d(k+2), where d(k) is the number of divisors of k.

The programs for A175116, the canonical program `A175116.P9810145318194581764` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175116 has offset 1).

The definition of A175116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175116.P12581721109866405048

`eq[A001057(A032741(n)), A063123(n+1)]`
-/

namespace A175116.P12581721109866405048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175116.P12581721109866405048

namespace A175116

/-- `eq[A001057(A032741(n)), A063123(n+1)]` -/
def P12581721109866405048.Spec : Prop :=
  ∀ n, (P12581721109866405048.a n : ℤ) = A175116 (n + 1)

end A175116

/-! ## A175116.P13164146794467452188

`eq[A000005(A028310(n)), A092517(n+1)]`
-/

namespace A175116.P13164146794467452188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175116.P13164146794467452188

namespace A175116

/-- `eq[A000005(A028310(n)), A092517(n+1)]` -/
def P13164146794467452188.Spec : Prop :=
  ∀ n, (P13164146794467452188.a n : ℤ) = A175116 (n + 1)

end A175116

/-! ## A175116.P9810145318194581764

`eq[A014681(A092517(n+1)), A032741(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A175116

/-- `eq[A014681(A092517(n+1)), A032741(n)]` -/
def P9810145318194581764.Spec : Prop :=
  ∀ n, (P9810145318194581764.a n : ℤ) = A175116 (n + 1)

theorem P9810145318194581764.correct : P9810145318194581764.Spec := by
  intro n
  simp only [A175116, Nat.add_sub_cancel]

end A175116

/-! ## A175116.P2553797930792073403

`eq[A000005(A060000(n+1)), A092517(n+1)]`
-/

namespace A175116.P2553797930792073403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A060000 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175116.P2553797930792073403

namespace A175116

/-- `eq[A000005(A060000(n+1)), A092517(n+1)]` -/
def P2553797930792073403.Spec : Prop :=
  ∀ n, (P2553797930792073403.a n : ℤ) = A175116 (n + 1)

end A175116

/-!
# A175117: Numbers k such that Sum_(i=1..k) prime(i)*(-1)^(i+1) is a square.

The programs for A175117, there is no canonical definition to state claims against.
-/

/-! ## A175117.P12450518797934659712

`eq[2, A002448(A008347(n))]`
-/

namespace A175117.P12450518797934659712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A008347 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175117.P12450518797934659712

/-! ## A175117.P18205696355968588905

`eq[A010052(A008347(n)), A010156(n)]`
-/

namespace A175117.P18205696355968588905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A008347 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175117.P18205696355968588905

/-! ## A175117.P15511368041429459599

`eq[A010052(A008347(n)), A040055(n)]`
-/

namespace A175117.P15511368041429459599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A008347 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175117.P15511368041429459599

/-! ## A175117.P14017844389317684560

`eq[A010052(A008347(n)), A062157(n)]`
-/

namespace A175117.P14017844389317684560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A008347 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175117.P14017844389317684560

/-! ## A175117.P3751699000511325001

`eq[A000122(A008347(n)), A176059(n)]`
-/

namespace A175117.P3751699000511325001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A008347 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175117.P3751699000511325001

/-!
# A175118: a(1)=2. a(n) = the smallest prime p > a(n-1) such that p-a(n-1)+1 is composite.

The programs for A175118, there is no canonical definition to state claims against.
-/

/-! ## A175118.P15900781755979090434

`A079778(a(n-1)-1)` with `a(0)=2`
-/

namespace A175118.P15900781755979090434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A079778 (a (n - 1) - 1).toNat

end

end A175118.P15900781755979090434

/-! ## A175118.P8086985585086393373

`p?[abs(A121466(2^∑{e}[n+1, #])+1-4*n)]`
-/

namespace A175118.P8086985585086393373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121466 (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) + 1 - (4 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175118.P8086985585086393373

/-! ## A175118.P14907077737581025520

`p?[A288872(n)+A136290(n)]`
-/

namespace A175118.P14907077737581025520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288872 n + A136290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175118.P14907077737581025520

/-! ## A175118.P9427346801908344231

`p?[A004280(record[A288966(n+1)])]`
-/

namespace A175118.P9427346801908344231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288966 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175118.P9427346801908344231

/-! ## A175118.P1983552973238249097

`p?[A163820(n+2)+A004277(2*n)]`
-/

namespace A175118.P1983552973238249097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163820 (n + 2) + A004277 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175118.P1983552973238249097

/-!
# A175119: a(n) = A175118(n+1) - A175118(n) + 1.

The programs for A175119, there is no canonical definition to state claims against.
-/

/-! ## A175119.P2445592600990117955

`A175118(n+2)-A175118(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175119.P2445592600990117955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175118 (n + 2) - A175118 (n + 1) + 1

end

end A175119.P2445592600990117955

/-! ## A175119.P15993989034232364644

`Δ[A175118(n+1)]+1`
-/

namespace A175119.P15993989034232364644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A175119.P15993989034232364644

/-! ## A175119.P5245086761343503088

`A020725(Δ[A175118(n+1)])`
-/

namespace A175119.P5245086761343503088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (f1 (n + 1) - f1 n).toNat

end

end A175119.P5245086761343503088

/-! ## A175119.P8085372849185649889

`A065475(Δ[A175118(n+1)])`
-/

namespace A175119.P8085372849185649889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (f1 (n + 1) - f1 n).toNat

end

end A175119.P8085372849185649889

/-! ## A175119.P17043009752268013035

`A113484(Δ[A175118(n+1)])`
-/

namespace A175119.P17043009752268013035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (f1 (n + 1) - f1 n).toNat

end

end A175119.P17043009752268013035

/-! ## A175119.P276524409958356221

`A175118(n+2)-A000010(A175118(n+1))`
-/

namespace A175119.P276524409958356221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175118 (n + 2) - A000010 (A175118 (n + 1)).toNat

end

end A175119.P276524409958356221

/-!
# A175120: a(1)=2. a(n) = the smallest prime p > a(n-1) such that p-a(n-1)-1 is composite.

The programs for A175120, there is no canonical definition to state claims against.
-/

/-! ## A175120.P8971540888931090487

`A079778(a(n-1)+1)` with `a(0)=2`
-/

namespace A175120.P8971540888931090487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A079778 (a (n - 1) + 1).toNat

end

end A175120.P8971540888931090487

/-!
# A175121: a(n) = A175120(n+1) - A175120(n) - 1.

The programs for A175121, there is no canonical definition to state claims against.
-/

/-! ## A175121.P757763144881418159

`A175120(n+2)-A175120(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175121.P757763144881418159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175120 (n + 2) - A175120 (n + 1) - 1

end

end A175121.P757763144881418159

/-! ## A175121.P7617365752126724646

`Δ[A175120(n+1)]-1`
-/

namespace A175121.P7617365752126724646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A175121.P7617365752126724646

/-! ## A175121.P2203842114469304130

`A023443(Δ[A175120(n+1)])`
-/

namespace A175121.P2203842114469304130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A175121.P2203842114469304130

/-! ## A175121.P10375856661581593653

`A055456(Δ[A175120(n+1)])`
-/

namespace A175121.P10375856661581593653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (f1 (n + 1) - f1 n).toNat

end

end A175121.P10375856661581593653

/-! ## A175121.P8632787500978509688

`A199969(Δ[A175120(n+1)])`
-/

namespace A175121.P8632787500978509688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (f1 (n + 1) - f1 n).toNat

end

end A175121.P8632787500978509688

/-! ## A175121.P15834067684603334859

`A233583(Δ[A175120(n+1)])`
-/

namespace A175121.P15834067684603334859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (n + 1) - f1 n).toNat

end

end A175121.P15834067684603334859

/-! ## A175121.P17674864012769067389

`abs(A024000(Δ[A175120(n+1)]))`
-/

namespace A175121.P17674864012769067389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (f1 (n + 1) - f1 n).toNat|

end

end A175121.P17674864012769067389

/-! ## A175121.P14489289915280833791

`A004275(Δ[A175120(n+1)])/2`
-/

namespace A175121.P14489289915280833791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175120 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A175121.P14489289915280833791

/-! ## A175121.P3215398076807365932

`Δ[A175120(n+1)+A001489(n)]`
-/

namespace A175121.P3215398076807365932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175120 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175121.P3215398076807365932

/-! ## A175121.P5870843052430527831

`floor(A004273(Δ[A175120(n+1)])/2)`
-/

namespace A175121.P5870843052430527831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004273 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌋

end

end A175121.P5870843052430527831

/-!
# A175122: a(1)=3. a(n) = smallest prime > a(n-1) such that a(n)-a(n-1) = 2*m, where m is composite.

The programs for A175122, there is no canonical definition to state claims against.
-/

/-! ## A175122.P12747068107275571548

`A000040(3*n+2)-A378034(A033842(n))`
-/

namespace A175122.P12747068107275571548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * n + 2) - A378034 (A033842 n).toNat

end

end A175122.P12747068107275571548

/-! ## A175122.P1486261654919413111

`A005180(A335376(2*n+1)+A077741(n+2))`
-/

namespace A175122.P1486261654919413111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (A335376 (2 * n + 1) + A077741 (n + 2)).toNat

end

end A175122.P1486261654919413111

/-! ## A175122.P16503451702850384588

`A000040(A098451(2*(n+1))+A098428(3*(n+1)))`
-/

namespace A175122.P16503451702850384588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098451 (2 * (n + 1)) + A098428 (3 * (n + 1))).toNat

end

end A175122.P16503451702850384588

/-! ## A175122.P7390981939186677822

`A000040(∑[A276856(3^n)])`
-/

namespace A175122.P7390981939186677822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276856 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175122.P7390981939186677822

/-! ## A175122.P8911064088844848459

`A005180(3*A032563(n+1))`
-/

namespace A175122.P8911064088844848459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (3 * A032563 (n + 1)).toNat

end

end A175122.P8911064088844848459

/-!
# A175123: a(n) = (A175122(n+1) - A175122(n))/2.

The programs for A175123, there is no canonical definition to state claims against.
-/

/-! ## A175123.P9563222088926979830

`(A175122(n+2)-A175122(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175123.P9563222088926979830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175122 (n + 2) - A175122 (n + 1) : ℚ) / 2

end

end A175123.P9563222088926979830

/-! ## A175123.P3672940337247507722

`Δ[A175122(n+1)/2]`
-/

namespace A175123.P3672940337247507722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175122 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175123.P3672940337247507722

/-! ## A175123.P17537194341011672954

`Δ[A000463(A175122(n+1))]`
-/

namespace A175123.P17537194341011672954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A175122 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175123.P17537194341011672954

/-! ## A175123.P12550709457733095086

`A001281(Δ[A175122(n+1)])`
-/

namespace A175123.P12550709457733095086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A175123.P12550709457733095086

/-! ## A175123.P3057309727000340482

`A004525(Δ[A175122(n+1)])`
-/

namespace A175123.P3057309727000340482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A175123.P3057309727000340482

/-! ## A175123.P12068475400093461513

`A004526(Δ[A175122(n+1)])`
-/

namespace A175123.P12068475400093461513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A175123.P12068475400093461513

/-! ## A175123.P6340532559880584054

`A006370(Δ[A175122(n+1)])`
-/

namespace A175123.P6340532559880584054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f1 (n + 1) - f1 n).toNat

end

end A175123.P6340532559880584054

/-! ## A175123.P10714905968517542032

`A014682(Δ[A175122(n+1)])`
-/

namespace A175123.P10714905968517542032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A175123.P10714905968517542032

/-! ## A175123.P15245280009076917711

`A025480(Δ[A175122(n+1)])`
-/

namespace A175123.P15245280009076917711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A175123.P15245280009076917711

/-! ## A175123.P12866107720165222053

`A026741(Δ[A175122(n+1)])`
-/

namespace A175123.P12866107720165222053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A175123.P12866107720165222053

/-!
# A175124: A symmetric triangle, with sum the large Schröder numbers.

The programs for A175124, there is no canonical definition to state claims against.
-/

/-! ## A175124.P855069492762309406

`A178798(A255256(n))+A089447(n)`
-/

namespace A175124.P855069492762309406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A255256 n).toNat + A089447 n

end

end A175124.P855069492762309406

/-! ## A175124.P5048084770219965103

`A089447(n)-A004198(A059328(n))`
-/

namespace A175124.P5048084770219965103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089447 n - A004198 (A059328 n).toNat

end

end A175124.P5048084770219965103

/-! ## A175124.P10324915892018070223

`A089447(n)-A073490(A008300(n))`
-/

namespace A175124.P10324915892018070223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089447 n - A073490 (A008300 n).toNat

end

end A175124.P10324915892018070223

/-! ## A175124.P17017712077816766443

`A089447(n)-A089457(A109128(n))`
-/

namespace A175124.P17017712077816766443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089447 n - A089457 (A109128 n).toNat

end

end A175124.P17017712077816766443

/-! ## A175124.P2202938219136646590

`A089447(n)-A178798(A107105(n))`
-/

namespace A175124.P2202938219136646590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089447 n - A178798 (A107105 n).toNat

end

end A175124.P2202938219136646590

/-!
# A175125: a(n) is the number of numbers m such that the number of iterations of r -> r - (largest divisor d < r) needed to reach 1 starting at r = m is equal to n.

The programs for A175125, there is no canonical definition to state claims against.
-/

/-! ## A175125.P17865023625247546640

`A294849(A306201(n+1))`
-/

namespace A175125.P17865023625247546640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294849 (A306201 (n + 1)).toNat

end

end A175125.P17865023625247546640

/-! ## A175125.P7715564260748648282

`A000196(A026522(n+2)+A003724(n))`
-/

namespace A175125.P7715564260748648282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A026522 (n + 2) + A003724 n).toNat

end

end A175125.P7715564260748648282

/-! ## A175125.P11641437758528476514

`A000196(A196195(n+2)+A196195(n))`
-/

namespace A175125.P11641437758528476514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A196195 (n + 2) + A196195 n).toNat

end

end A175125.P11641437758528476514

/-! ## A175125.P241037044667808578

`A261915(A007051(n))+A008794(A000196(n))`
-/

namespace A175125.P241037044667808578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 (A007051 n).toNat + A008794 (A000196 n).toNat

end

end A175125.P241037044667808578

/-! ## A175125.P11074390802143815916

`A236510(A225393(n))+A087897(A318403(n))`
-/

namespace A175125.P11074390802143815916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236510 (A225393 n).toNat + A087897 (A318403 n).toNat

end

end A175125.P11074390802143815916

/-!
# A175126: a(0) = a(1) = 0, for n >= 2, a(n) = number of steps of iteration of {r - (smallest prime divisor of r)} needed to reach 0 starting at r = n.

The programs for A175126, there is no canonical definition to state claims against.
-/

/-! ## A175126.P17893483866996593977

`1+a(A046666(n))` with `a(0)=0, a(1)=0`
-/

namespace A175126.P17893483866996593977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 + a (A046666 n).toNat

end

end A175126.P17893483866996593977

/-! ## A175126.P14164155522194142178

`a(2*A046667(n))+1` with `a(0)=0, a(1)=0`
-/

namespace A175126.P14164155522194142178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (2 * A046667 n).toNat + 1

end

end A175126.P14164155522194142178

/-! ## A175126.P2993434839176189607

`a(n-A020639(n))+1` with `a(0)=0, a(1)=0`
-/

namespace A175126.P2993434839176189607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a ((n : ℤ) - A020639 n).toNat + 1

end

end A175126.P2993434839176189607

/-! ## A175126.P2929126918165457402

`(n+1)%(A140524(xor(1, n)+1)/2)`
-/

namespace A175126.P2929126918165457402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A140524 (Nat.xor 1 n + 1) : ℚ) / 2))

end

end A175126.P2929126918165457402

/-! ## A175126.P7276778097880809374

`A008619(n)-A055034(A020639(A028310(n)))`
-/

namespace A175126.P7276778097880809374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A055034 (A020639 (A028310 n).toNat).toNat

end

end A175126.P7276778097880809374

/-! ## A175126.P5442385618351205008

`A157928(n)+A046667(A233583(n+1))`
-/

namespace A175126.P5442385618351205008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A046667 (A233583 (n + 1)).toNat

end

end A175126.P5442385618351205008

/-! ## A175126.P1271531196700360537

`A001057(A233583(n+2)-A020639(A233583(n+1)))`
-/

namespace A175126.P1271531196700360537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A233583 (n + 2) - A020639 (A233583 (n + 1)).toNat).toNat

end

end A175126.P1271531196700360537

/-! ## A175126.P3403508452531205279

`A008619(A285109(A233583(n+1)))%A008619(n)`
-/

namespace A175126.P3403508452531205279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A285109 (A233583 (n + 1)).toNat).toNat) (A008619 n)

end

end A175126.P3403508452531205279

/-!
# A175127: a(n) = the largest numbers m with the number of steps n of iterations of {r - (smallest prime divisor of r)} needed to reach 0 starting at r = m.

The programs for A175127, there is no canonical definition to state claims against.
-/

/-! ## A175127.P7610140033752172627

`A005408(A187829(n+1))+A000010(A133946(n+1))`
-/

namespace A175127.P7610140033752172627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A187829 (n + 1)).toNat + A000010 (A133946 (n + 1)).toNat

end

end A175127.P7610140033752172627

/-! ## A175127.P9071001468973258059

`A364232(2*n+3)+A008835(A026634(n))`
-/

namespace A175127.P9071001468973258059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364232 (2 * n + 3) + A008835 (A026634 n).toNat

end

end A175127.P9071001468973258059

/-! ## A175127.P15771249040524967990

`A326399(2*n+3)+A168184(A000079(n))`
-/

namespace A175127.P15771249040524967990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326399 (2 * n + 3) + A168184 (A000079 n).toNat

end

end A175127.P15771249040524967990

/-! ## A175127.P4210860753274322811

`A364232(2*n+3)+A001511(A038692(n+1))`
-/

namespace A175127.P4210860753274322811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364232 (2 * n + 3) + A001511 (A038692 (n + 1)).toNat

end

end A175127.P4210860753274322811

/-! ## A175127.P6034250785908197467

`A364012(2*n+3)+A124772(A011782(n+1))`
-/

namespace A175127.P6034250785908197467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364012 (2 * n + 3) + A124772 (A011782 (n + 1)).toNat

end

end A175127.P6034250785908197467

/-!
# A175128: a(n) = the number of natural numbers m with n steps of iterations of {r - (smallest prime divisor of r)} needed to reach 0 starting at r = m .

The programs for A175128, there is no canonical definition to state claims against.
-/

/-! ## A175128.P17053932045000980848

`A082478(17*A004767(n))`
-/

namespace A175128.P17053932045000980848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082478 (17 * A004767 n).toNat

end

end A175128.P17053932045000980848

/-! ## A175128.P4267093375712116721

`A001221(gcd(2*(n+1), A263170(n+1)))`
-/

namespace A175128.P4267093375712116721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (2 * (n + 1) : ℤ) (A263170 (n + 1)))

end

end A175128.P4267093375712116721

/-! ## A175128.P6086372626698807418

`A057368(gcd(∏{p}[n+1, #], A121250(2*n+5)))`
-/

namespace A175128.P6086372626698807418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057368 (Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A121250 (2 * n + 5)))

end

end A175128.P6086372626698807418

/-! ## A175128.P12209075447458829800

`ceil(A109386(2*(n+1))/A006218(2*(n+2)))`
-/

namespace A175128.P12209075447458829800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109386 (2 * (n + 1)) : ℚ) / (A006218 (2 * (n + 2)) : ℚ)⌉

end

end A175128.P12209075447458829800

/-!
# A175129: a(0)=1, a(1)=3; for n>=2, a(n) = 3^A042950(n-2).

The programs for A175129, there is no canonical definition to state claims against.
-/

/-! ## A175129.P14484167582269355194

`a(n-1)²` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`
-/

namespace A175129.P14484167582269355194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27] fun n a =>
  a (n - 1) ^ 2

end

end A175129.P14484167582269355194

/-! ## A175129.P8444643913417438131

`a(n-1)^2` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`
-/

namespace A175129.P8444643913417438131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27] fun n a =>
  a (n - 1) ^ 2

end

end A175129.P8444643913417438131

/-! ## A175129.P14593680762181779733

`3^round(3*2^(n-3))`
-/

namespace A175129.P14593680762181779733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (SequenceMachineLib.roundAway (3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)) : ℤ)

end

end A175129.P14593680762181779733

/-! ## A175129.P2048971025366784168

`a(n-1)*a(n-1)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`
-/

namespace A175129.P2048971025366784168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27] fun n a =>
  a (n - 1) * a (n - 1)

end

end A175129.P2048971025366784168

/-! ## A175129.P6002012087421277134

`record[3^A251714(n)]`
-/

namespace A175129.P6002012087421277134
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A251714 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175129.P6002012087421277134

/-!
# A175130: Indices of Fibonacci numbers that are not cubefree.

The programs for A175130, there is no canonical definition to state claims against.
-/

/-! ## A175130.P8390298650054991692

`eq[-a(n-2), A119624(n+1)]` with `a(0)=0, a(1)=4`
-/

namespace A175130.P8390298650054991692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  -f1 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175130.P8390298650054991692

/-! ## A175130.P12975901964245984330

`eq[(1-A038712(n+1))², A119624(n+1)]`
-/

namespace A175130.P12975901964245984330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A038712 (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175130.P12975901964245984330

/-! ## A175130.P1916912923344860720

`eq[(2*A007814(n+1))², A119624(n+1)]`
-/

namespace A175130.P1916912923344860720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A007814 (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175130.P1916912923344860720

/-! ## A175130.P15897604799616660129

`eq[A119624(n+1), A233035(A127750(n))]`
-/

namespace A175130.P15897604799616660129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233035 (A127750 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175130.P15897604799616660129

/-! ## A175130.P5680991796031476551

`eq[A006880(A007814(n+1)), A119624(n+1)]`
-/

namespace A175130.P5680991796031476551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (A007814 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175130.P5680991796031476551

/-!
# A175131: a(n) = 2^(n-1) mod semiprime(n).

The programs for A175131, the canonical program `A175131.P6524666404151477770` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175131 has offset 1).

The definition of A175131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175131.P4440214008587320556

`(2^n)%A001358(n+1)`
-/

namespace A175131.P4440214008587320556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (A001358 (n + 1))

end

end A175131.P4440214008587320556

namespace A175131

/-- `(2^n)%A001358(n+1)` -/
def P4440214008587320556.Spec : Prop :=
  ∀ n, P4440214008587320556.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P13820616676236449304

`abs(((-2)^n)%record[A088740(n+1)])`
-/

namespace A175131.P13820616676236449304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((-2) ^ n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))|

end

end A175131.P13820616676236449304

namespace A175131

/-- `abs(((-2)^n)%record[A088740(n+1)])` -/
def P13820616676236449304.Spec : Prop :=
  ∀ n, P13820616676236449304.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P6524666404151477770

`A000079(n)%eq[2, A105700(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175131

/-- `A000079(n)%eq[2, A105700(n)]` -/
def P6524666404151477770.Spec : Prop :=
  ∀ n, P6524666404151477770.a n = A175131 (n + 1)

theorem P6524666404151477770.correct : P6524666404151477770.Spec := by
  intro n
  simp only [A175131, Nat.add_sub_cancel]

end A175131

/-! ## A175131.P5860306677894863162

`∑[A011782(n)]%eq[2, A105700(n)]`
-/

namespace A175131.P5860306677894863162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A175131.P5860306677894863162

namespace A175131

/-- `∑[A011782(n)]%eq[2, A105700(n)]` -/
def P5860306677894863162.Spec : Prop :=
  ∀ n, P5860306677894863162.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P15436397044198210740

`record[A077958(n)]%-A001358(n+1)`
-/

namespace A175131.P15436397044198210740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (-A001358 (n + 1))

end

end A175131.P15436397044198210740

namespace A175131

/-- `record[A077958(n)]%-A001358(n+1)` -/
def P15436397044198210740.Spec : Prop :=
  ∀ n, P15436397044198210740.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P10326776892729554741

`(A000225(n)+1)%-A001358(n+1)`
-/

namespace A175131.P10326776892729554741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 n + 1) (-A001358 (n + 1))

end

end A175131.P10326776892729554741

namespace A175131

/-- `(A000225(n)+1)%-A001358(n+1)` -/
def P10326776892729554741.Spec : Prop :=
  ∀ n, P10326776892729554741.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P9160496887871486401

`abs(A077966(2*n)%A001358(n+1))`
-/

namespace A175131.P9160496887871486401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A077966 (2 * n)) (A001358 (n + 1))|

end

end A175131.P9160496887871486401

namespace A175131

/-- `abs(A077966(2*n)%A001358(n+1))` -/
def P9160496887871486401.Spec : Prop :=
  ∀ n, P9160496887871486401.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P5624889078098015240

`record[A077957(n)]%(A186621(n+1)+1)`
-/

namespace A175131.P5624889078098015240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A186621 (n + 1) + 1)

end

end A175131.P5624889078098015240

namespace A175131

/-- `record[A077957(n)]%(A186621(n+1)+1)` -/
def P5624889078098015240.Spec : Prop :=
  ∀ n, P5624889078098015240.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P15951034833074287287

`A016116(2*n)%(A088707(n+1)-1)`
-/

namespace A175131.P15951034833074287287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016116 (2 * n)) (A088707 (n + 1) - 1)

end

end A175131.P15951034833074287287

namespace A175131

/-- `A016116(2*n)%(A088707(n+1)-1)` -/
def P15951034833074287287.Spec : Prop :=
  ∀ n, P15951034833074287287.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P5935720813618296452

`A011782(n+1)%eq[3, A001222(A008486(n))]`
-/

namespace A175131.P5935720813618296452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 1)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A175131.P5935720813618296452

namespace A175131

/-- `A011782(n+1)%eq[3, A001222(A008486(n))]` -/
def P5935720813618296452.Spec : Prop :=
  ∀ n, P5935720813618296452.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P16630192449093117773

`Δ[A000225(n)]%eq[2, A105700(n)]`
-/

namespace A175131.P16630192449093117773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A175131.P16630192449093117773

namespace A175131

/-- `Δ[A000225(n)]%eq[2, A105700(n)]` -/
def P16630192449093117773.Spec : Prop :=
  ∀ n, P16630192449093117773.a n = A175131 (n + 1)

theorem P16630192449093117773.correct : P16630192449093117773.Spec := by
  intro n
  simp only [A175131, Nat.add_sub_cancel, A175131.P16630192449093117773.f1, A175131.P16630192449093117773.f2, A175131.P16630192449093117773.f3, A175131.P16630192449093117773.a, A175131.P6524666404151477770.f1, A175131.P6524666404151477770.f2, A175131.P6524666404151477770.a, A000079, A000079.P10855139691139572931.a, A000225, A000225.P6535533121115206393.a, A105700, A105700.P11445853484209819291.f2, A105700.P11445853484209819291.f1, A105700.P11445853484209819291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175131

/-! ## A175131.P2235007906220862752

`Δ[A000051(n)]%(1-A088707(n+1))`
-/

namespace A175131.P2235007906220862752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (1 - A088707 (n + 1))

end

end A175131.P2235007906220862752

namespace A175131

/-- `Δ[A000051(n)]%(1-A088707(n+1))` -/
def P2235007906220862752.Spec : Prop :=
  ∀ n, P2235007906220862752.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P1834773251860150357

`A001281((2^(n+1))%A075818(n+1))`
-/

namespace A175131.P1834773251860150357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.tmod (2 ^ (n + 1) : ℤ) (A075818 (n + 1))).toNat

end

end A175131.P1834773251860150357

namespace A175131

/-- `A001281((2^(n+1))%A075818(n+1))` -/
def P1834773251860150357.Spec : Prop :=
  ∀ n, P1834773251860150357.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P13675836918712597312

`A074323(2*n+1)%(A088707(n+1)-1)`
-/

namespace A175131.P13675836918712597312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074323 (2 * n + 1)) (A088707 (n + 1) - 1)

end

end A175131.P13675836918712597312

namespace A175131

/-- `A074323(2*n+1)%(A088707(n+1)-1)` -/
def P13675836918712597312.Spec : Prop :=
  ∀ n, P13675836918712597312.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P5371968302217805637

`abs((A000225(n+1)-A000225(n))%A001358(n+1))`
-/

namespace A175131.P5371968302217805637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000225 (n + 1) - A000225 n) (A001358 (n + 1))|

end

end A175131.P5371968302217805637

namespace A175131

/-- `abs((A000225(n+1)-A000225(n))%A001358(n+1))` -/
def P5371968302217805637.Spec : Prop :=
  ∀ n, P5371968302217805637.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P14984921706181087485

`A102363(∑[n])%eq[2, A226378(n)]`
-/

namespace A175131.P14984921706181087485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102363 (∑ j ∈ Finset.range (n + 1), f1 j)) (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A175131.P14984921706181087485

namespace A175131

/-- `A102363(∑[n])%eq[2, A226378(n)]` -/
def P14984921706181087485.Spec : Prop :=
  ∀ n, P14984921706181087485.a n = A175131 (n + 1)

end A175131

/-! ## A175131.P1263265350935986738

`record[A130321(n)]%(A075818(n+1)/2)`
-/

namespace A175131.P1263265350935986738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2))

end

end A175131.P1263265350935986738

namespace A175131

/-- `record[A130321(n)]%(A075818(n+1)/2)` -/
def P1263265350935986738.Spec : Prop :=
  ∀ n, P1263265350935986738.a n = A175131 (n + 1)

end A175131

/-!
# A175132: Integers k such that the k-th triangular number is the sum of 2 consecutive primes.

The programs for A175132, there is no canonical definition to state claims against.
-/

/-! ## A175132.P8506546407113060332

`floor(sqrt(2*A111163(n+1)))`
-/

namespace A175132.P8506546407113060332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A111163 (n + 1))

end

end A175132.P8506546407113060332

/-! ## A175132.P4955610164026726412

`floor(2*sqrt(A225077(n+1)))`
-/

namespace A175132.P4955610164026726412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A225077 (n + 1) : ℝ)⌋

end

end A175132.P4955610164026726412

/-! ## A175132.P13507713559885744744

`A014601(floor(sqrt(A225077(n+1))))`
-/

namespace A175132.P13507713559885744744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (Int.sqrt (A225077 (n + 1))).toNat

end

end A175132.P13507713559885744744

/-! ## A175132.P11583072704716564720

`A042964(floor(sqrt(A225077(n+1))))+1`
-/

namespace A175132.P11583072704716564720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (Int.sqrt (A225077 (n + 1))).toNat + 1

end

end A175132.P11583072704716564720

/-! ## A175132.P12105859366522353733

`round(sqrt(2*A111163(n+1)-A055620(n)))`
-/

namespace A175132.P12105859366522353733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A111163 (n + 1) - A055620 n : ℝ))

end

end A175132.P12105859366522353733

/-! ## A175132.P7557124314576353312

`round(sqrt(2*A111163(n+1)-A193592(n)))`
-/

namespace A175132.P7557124314576353312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A111163 (n + 1) - A193592 n : ℝ))

end

end A175132.P7557124314576353312

/-! ## A175132.P10358385102756426595

`round(sqrt(2*A111163(n+1)-A233583(n+1)))`
-/

namespace A175132.P10358385102756426595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A111163 (n + 1) - A233583 (n + 1) : ℝ))

end

end A175132.P10358385102756426595

/-! ## A175132.P16698804398703371398

`round(sqrt(2*A111163(n+1)))%A008597(n+1)`
-/

namespace A175132.P16698804398703371398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A111163 (n + 1) : ℝ))) (A008597 (n + 1))

end

end A175132.P16698804398703371398

/-!
# A175136: Triangle T(n,k) read by rows: number of LCO forests of size n with k leaves, 1 <= k <= n.

The programs for A175136, there is no canonical definition to state claims against.
-/

/-! ## A175136.P14493482802584146320

`A196182(comp[∑[n]])`
-/

namespace A175136.P14493482802584146320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196182 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A175136.P14493482802584146320

/-! ## A175136.P8098914247616000121

`and(-1, A196182(A014132(n+1)))`
-/

namespace A175136.P8098914247616000121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A196182 (A014132 (n + 1)).toNat)

end

end A175136.P8098914247616000121

/-! ## A175136.P7005328281652228726

`A196182(A014132(n+1))^(gcd(2, A000010(n+2))-1)`
-/

namespace A175136.P7005328281652228726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196182 (A014132 (n + 1)).toNat : ℚ) ^ ((Int.gcd 2 (A000010 (n + 2)) : ℤ) - 1 : ℤ)

end

end A175136.P7005328281652228726

/-! ## A175136.P13508516759323362925

`-(-A000040(n+2)%2*A196182(A014132(n+1)))`
-/

namespace A175136.P13508516759323362925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.tmod (-A000040 (n + 2)) 2 * A196182 (A014132 (n + 1)).toNat)

end

end A175136.P13508516759323362925

/-! ## A175136.P17941740738929923539

`A196182(A014132(n+1))+A000045(n)%-1`
-/

namespace A175136.P17941740738929923539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196182 (A014132 (n + 1)).toNat + Int.tmod (A000045 n) (-1)

end

end A175136.P17941740738929923539

/-!
# A175138: a(n) = Product_{i=1..n-1} a(i), with a(1) = 3 and a(2) = 5.

The programs for A175138, there is no canonical definition to state claims against.
-/

/-! ## A175138.P10724433659022487546

`a(n-1)²` with `a(0)=3, a(1)=5, a(2)=15`
-/

namespace A175138.P10724433659022487546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 15] fun n a =>
  a (n - 1) ^ 2

end

end A175138.P10724433659022487546

/-! ## A175138.P7096469059886897515

`a(n-1)*a(n-1)` with `a(0)=3, a(1)=5, a(2)=15`
-/

namespace A175138.P7096469059886897515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 15] fun n a =>
  a (n - 1) * a (n - 1)

end

end A175138.P7096469059886897515

/-! ## A175138.P6427042160784059438

`A018157(A257113(n+1))`
-/

namespace A175138.P6427042160784059438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018157 (A257113 (n + 1)).toNat

end

end A175138.P6427042160784059438

/-! ## A175138.P14869379952012955877

`or(1, A018089(A000079(n)))`
-/

namespace A175138.P14869379952012955877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A018089 (A000079 n).toNat)

end

end A175138.P14869379952012955877

/-!
# A175139: a(1)= 1. a(n) = smallest integer > a(n-1) such that the partial sums of A175140 are avoided. Or, the first difference of A131937.

The programs for A175139, there is no canonical definition to state claims against.
-/

/-! ## A175139.P11334668641788688801

`comp[∑[comp[n^(n%7)]]]`
-/

namespace A175139.P11334668641788688801
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 7)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175139.P11334668641788688801

/-! ## A175139.P11479903051322111184

`comp[∑[comp[2^∑{p}[n, #]]]]`
-/

namespace A175139.P11479903051322111184
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f4 n), p)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175139.P11479903051322111184

/-! ## A175139.P9257795794765496082

`comp[∑[comp[∏{p}[n, 2^#]]]]`
-/

namespace A175139.P9257795794765496082
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), 2 ^ p

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175139.P9257795794765496082

/-! ## A175139.P81251404772633440

`comp[∑[comp[2^n]]+1]+1`
-/

namespace A175139.P81251404772633440
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A175139.P81251404772633440

/-! ## A175139.P4631616603642420483

`comp[∑[comp[2*a(n-1)]]]` with `a(0)=1, a(1)=4`
-/

namespace A175139.P4631616603642420483
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f3 =>
  2 * f3 (n - 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175139.P4631616603642420483

/-! ## A175139.P9218283005022065789

`comp[∑[comp[A018252(2^n)]]]`
-/

namespace A175139.P9218283005022065789
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 ^ n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175139.P9218283005022065789

/-! ## A175139.P15878537860956704544

`comp[∑[comp[∑[A000032(n+1)]]]]`
-/

namespace A175139.P15878537860956704544
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175139.P15878537860956704544

/-! ## A175139.P17244406385903294852

`comp[∑[comp[∑[A000203(n+1)]]]]`
-/

namespace A175139.P17244406385903294852
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175139.P17244406385903294852

/-! ## A175139.P642889304090928481

`comp[∑[comp[A000040(2*(n+1))]]+n]`
-/

namespace A175139.P642889304090928481
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175139.P642889304090928481

/-! ## A175139.P15463891855010887001

`comp[∑[comp[A000203(A000203(2^n))]]]`
-/

namespace A175139.P15463891855010887001
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (2 ^ n)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175139.P15463891855010887001

/-!
# A175140: a(1)= 2. a(n) = smallest integer > a(n-1) such that the partial sums of A175139 are avoided. Or, the first difference of A131938.

The programs for A175140, there is no canonical definition to state claims against.
-/

/-! ## A175140.P110384451357439942

`comp[∑[comp[∑[comp[n²]]]]]`
-/

namespace A175140.P110384451357439942
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175140.P110384451357439942

/-! ## A175140.P3037444320960341820

`∑[Δ[round(n^cos(1))]+1]`
-/

namespace A175140.P3037444320960341820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ (Real.cos (1 : ℝ)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175140.P3037444320960341820

/-! ## A175140.P594695927848947511

`∑[2^Δ[round(n^cos(1))]]`
-/

namespace A175140.P594695927848947511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ (Real.cos (1 : ℝ)))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175140.P594695927848947511

/-! ## A175140.P17257415778970200878

`ceil(sqrt((n+1)*tan(1))+n)`
-/

namespace A175140.P17257415778970200878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1 : ℝ) * Real.tan (1 : ℝ)) + (n : ℝ)⌉

end

end A175140.P17257415778970200878

/-! ## A175140.P16098798933352822661

`ceil(sqrt((n+1)*cosh(1))+n)`
-/

namespace A175140.P16098798933352822661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1 : ℝ) * Real.cosh (1 : ℝ)) + (n : ℝ)⌉

end

end A175140.P16098798933352822661

/-! ## A175140.P842002599946459104

`ceil(sqrt((n+1)/cot(1))+n)`
-/

namespace A175140.P842002599946459104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1 : ℝ) / Real.cot (1 : ℝ)) + (n : ℝ)⌉

end

end A175140.P842002599946459104

/-! ## A175140.P12005214479860281922

`round((n+1)^cos(1)+n+1)`
-/

namespace A175140.P12005214479860281922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (Real.cos (1 : ℝ)) + (n + 1 : ℝ))

end

end A175140.P12005214479860281922

/-! ## A175140.P1894145340435893272

`floor(sqrt((n+1)*tan(1))+n+1)`
-/

namespace A175140.P1894145340435893272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1 : ℝ) * Real.tan (1 : ℝ)) + (n + 1 : ℝ)⌋

end

end A175140.P1894145340435893272

/-! ## A175140.P13347267439753445142

`floor(sqrt((n+1)*cosh(1))+n+1)`
-/

namespace A175140.P13347267439753445142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1 : ℝ) * Real.cosh (1 : ℝ)) + (n + 1 : ℝ)⌋

end

end A175140.P13347267439753445142

/-! ## A175140.P14333363831907850340

`comp[∑[comp[A000712(n)]]]+1`
-/

namespace A175140.P14333363831907850340
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A175140.P14333363831907850340

/-!
# A175141: a(1)=2. a(n) = the smallest integer > a(n-1) that is not equal to the sum of the divisors of any earlier term.

The programs for A175141, there is no canonical definition to state claims against.
-/

/-! ## A175141.P10455988568553314601

`lt[A001221(3*n+5), A054390(A276086(n))]`
-/

namespace A175141.P10455988568553314601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (A276086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175141.P10455988568553314601

/-! ## A175141.P16260782428823032177

`A000201(n+2)-A007949(A001644(n))`
-/

namespace A175141.P16260782428823032177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 2) - A007949 (A001644 n).toNat

end

end A175141.P16260782428823032177

/-! ## A175141.P7280934180863047221

`record[A125746(A287355(n+1)+A025847(n))]`
-/

namespace A175141.P7280934180863047221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A287355 (n + 1) + A025847 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175141.P7280934180863047221

/-! ## A175141.P1842353270120691938

`eq[A010052(A223620(n+1)), A035263(n+1)]`
-/

namespace A175141.P1842353270120691938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A223620 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175141.P1842353270120691938

/-!
# A175142: a(n) = sigma(A175141(n)), where sigma(n) = A000203(n).

The programs for A175142, there is no canonical definition to state claims against.
-/

/-! ## A175142.P46436636022361167

`A000203(A175141(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175142.P46436636022361167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A175141 (n + 1)).toNat

end

end A175142.P46436636022361167

/-! ## A175142.P8043691587068861220

`∑{d}[∑[A374740(A380708(n))], #]`
-/

namespace A175142.P8043691587068861220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374740 (A380708 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A175142.P8043691587068861220

/-! ## A175142.P1169595502216828022

`A000203(lt[4, A343262(n+3)])`
-/

namespace A175142.P1169595502216828022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343262 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A175142.P1169595502216828022

/-!
# A175143: a(1)=1. a(n) = the smallest integer > a(n-1) such that d(a(n))+d(a(n)+1) > d(a(n-1))+d(a(n-1)+1), where d(m) = the number of divisors of m.

The programs for A175143, there is no canonical definition to state claims against.
-/

/-! ## A175143.P8924418498275049272

`A137179(record[A092405(n+1)])`
-/

namespace A175143.P8924418498275049272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137179 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175143.P8924418498275049272

/-! ## A175143.P10074736481775130989

`A137179(record[A274010(n+2)+2])`
-/

namespace A175143.P10074736481775130989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137179 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175143.P10074736481775130989

/-! ## A175143.P2084501816538427056

`A137179(record[A069157(2*(n+1))+A069157(2*(n+2))])`
-/

namespace A175143.P2084501816538427056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (2 * (n + 1)) + A069157 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137179 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175143.P2084501816538427056

/-! ## A175143.P8213179671494496149

`∑[A162909(∑[A304967(n)])]`
-/

namespace A175143.P8213179671494496149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304967 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162909 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175143.P8213179671494496149

/-! ## A175143.P1518312738611036232

`A342515(A342494(n+3)-2)`
-/

namespace A175143.P1518312738611036232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (A342494 (n + 3) - 2).toNat

end

end A175143.P1518312738611036232

/-!
# A175144: a(n) = d(p(n)-1) + d(p(n)+1), where p(n) is the n-th prime, and where d(m) is the number of divisors of m.

The programs for A175144, the canonical program `A175144.P696110972913207213` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175144 has offset 1).

The definition of A175144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175144.P696110972913207213

`A000005(A006093(n+1))+A000005(A008864(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175144

/-- `A000005(A006093(n+1))+A000005(A008864(n+1))` -/
def P696110972913207213.Spec : Prop :=
  ∀ n, P696110972913207213.a n = A175144 (n + 1)

theorem P696110972913207213.correct : P696110972913207213.Spec := by
  intro n
  simp only [A175144, Nat.add_sub_cancel]

end A175144

/-! ## A175144.P6366513787742823065

`A000005(A000040(n+1)-1)+A000005(A000040(n+1)+1)`
-/

namespace A175144.P6366513787742823065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) - 1).toNat + A000005 (A000040 (n + 1) + 1).toNat

end

end A175144.P6366513787742823065

namespace A175144

/-- `A000005(A000040(n+1)-1)+A000005(A000040(n+1)+1)` -/
def P6366513787742823065.Spec : Prop :=
  ∀ n, P6366513787742823065.a n = A175144 (n + 1)

end A175144

/-! ## A175144.P2109163854644428221

`A008329(n+1)+A008328(n+1)`
-/

namespace A175144.P2109163854644428221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1) + A008328 (n + 1)

end

end A175144.P2109163854644428221

namespace A175144

/-- `A008329(n+1)+A008328(n+1)` -/
def P2109163854644428221.Spec : Prop :=
  ∀ n, P2109163854644428221.a n = A175144 (n + 1)

theorem P2109163854644428221.correct : P2109163854644428221.Spec := by
  intro n
  simp only [A175144, Nat.add_sub_cancel, A175144.P2109163854644428221.a, A175144.P696110972913207213.a, A000005, A000005.P16091521709108585461.a, A006093, A006093.P2906174024863549003.a, A008328, A008328.P3425095105082656605.a, A008329, A008329.P18061230809908035593.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175144

/-! ## A175144.P1536139966870726093

`A145337(n)+2*A008328(n+1)`
-/

namespace A175144.P1536139966870726093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145337 n + 2 * A008328 (n + 1)

end

end A175144.P1536139966870726093

namespace A175144

/-- `A145337(n)+2*A008328(n+1)` -/
def P1536139966870726093.Spec : Prop :=
  ∀ n, P1536139966870726093.a n = A175144 (n + 1)

theorem P1536139966870726093.correct : P1536139966870726093.Spec := by
  intro n
  simp only [A175144, Nat.add_sub_cancel, A175144.P1536139966870726093.a, A175144.P696110972913207213.a, A000005, A000005.P16091521709108585461.a, A006093, A006093.P2906174024863549003.a, A008328, A008328.P3425095105082656605.a, A008864, A008864.P9177617808325052279.a, A145337, A145337.P14852323097851792559.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008329, A008329.P18061230809908035593.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175144

/-! ## A175144.P16853662362934677713

`2*A008329(n+1)-A145337(n)`
-/

namespace A175144.P16853662362934677713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008329 (n + 1) - A145337 n

end

end A175144.P16853662362934677713

namespace A175144

/-- `2*A008329(n+1)-A145337(n)` -/
def P16853662362934677713.Spec : Prop :=
  ∀ n, P16853662362934677713.a n = A175144 (n + 1)

theorem P16853662362934677713.correct : P16853662362934677713.Spec := by
  intro n
  simp only [A175144, Nat.add_sub_cancel, A175144.P16853662362934677713.a, A175144.P696110972913207213.a, A000005, A000005.P16091521709108585461.a, A006093, A006093.P2906174024863549003.a, A008329, A008329.P18061230809908035593.a, A008864, A008864.P9177617808325052279.a, A145337, A145337.P14852323097851792559.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008328, A008328.P3425095105082656605.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175144

/-! ## A175144.P8988151713958157032

`A008329(n+1)+A000005(A006093(n+1))`
-/

namespace A175144.P8988151713958157032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1) + A000005 (A006093 (n + 1)).toNat

end

end A175144.P8988151713958157032

namespace A175144

/-- `A008329(n+1)+A000005(A006093(n+1))` -/
def P8988151713958157032.Spec : Prop :=
  ∀ n, P8988151713958157032.a n = A175144 (n + 1)

theorem P8988151713958157032.correct : P8988151713958157032.Spec := by
  intro n
  simp only [A175144, Nat.add_sub_cancel, A175144.P8988151713958157032.a, A175144.P696110972913207213.a, A000005, A000005.P16091521709108585461.a, A006093, A006093.P2906174024863549003.a, A008329, A008329.P18061230809908035593.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175144

/-! ## A175144.P1592133597582632523

`A008328(n+1)+A000005(A000040(n+1)+1)`
-/

namespace A175144.P1592133597582632523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008328 (n + 1) + A000005 (A000040 (n + 1) + 1).toNat

end

end A175144.P1592133597582632523

namespace A175144

/-- `A008328(n+1)+A000005(A000040(n+1)+1)` -/
def P1592133597582632523.Spec : Prop :=
  ∀ n, P1592133597582632523.a n = A175144 (n + 1)

end A175144

/-! ## A175144.P10720117946452403319

`A008329(n+1)+A000005(A008864(n+1)-2)`
-/

namespace A175144.P10720117946452403319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1) + A000005 (A008864 (n + 1) - 2).toNat

end

end A175144.P10720117946452403319

namespace A175144

/-- `A008329(n+1)+A000005(A008864(n+1)-2)` -/
def P10720117946452403319.Spec : Prop :=
  ∀ n, P10720117946452403319.a n = A175144 (n + 1)

theorem P10720117946452403319.correct : P10720117946452403319.Spec := by
  intro n
  simp only [A175144, Nat.add_sub_cancel, A175144.P10720117946452403319.a, A175144.P696110972913207213.a, A000005, A000005.P16091521709108585461.a, A006093, A006093.P2906174024863549003.a, A008329, A008329.P18061230809908035593.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175144

/-! ## A175144.P5868741042884700112

`A189827(A000040(n+1))`
-/

namespace A175144.P5868741042884700112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (A000040 (n + 1)).toNat

end

end A175144.P5868741042884700112

namespace A175144

/-- `A189827(A000040(n+1))` -/
def P5868741042884700112.Spec : Prop :=
  ∀ n, P5868741042884700112.a n = A175144 (n + 1)

end A175144

/-! ## A175144.P4094550401138616846

`A189827(A008578(n+2))`
-/

namespace A175144.P4094550401138616846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (A008578 (n + 2)).toNat

end

end A175144.P4094550401138616846

namespace A175144

/-- `A189827(A008578(n+2))` -/
def P4094550401138616846.Spec : Prop :=
  ∀ n, P4094550401138616846.a n = A175144 (n + 1)

end A175144

/-! ## A175144.P11462783734266810331

`A189827(A182986(n+2))`
-/

namespace A175144.P11462783734266810331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (A182986 (n + 2)).toNat

end

end A175144.P11462783734266810331

namespace A175144

/-- `A189827(A182986(n+2))` -/
def P11462783734266810331.Spec : Prop :=
  ∀ n, P11462783734266810331.a n = A175144 (n + 1)

end A175144

/-! ## A175144.P992983114344385989

`A189827(record[A006530(n+2)])`
-/

namespace A175144.P992983114344385989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175144.P992983114344385989

namespace A175144

/-- `A189827(record[A006530(n+2)])` -/
def P992983114344385989.Spec : Prop :=
  ∀ n, P992983114344385989.a n = A175144 (n + 1)

end A175144

/-! ## A175144.P13876904361698493829

`A189827(record[A014963(n+2)])`
-/

namespace A175144.P13876904361698493829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175144.P13876904361698493829

namespace A175144

/-- `A189827(record[A014963(n+2)])` -/
def P13876904361698493829.Spec : Prop :=
  ∀ n, P13876904361698493829.a n = A175144 (n + 1)

end A175144

/-! ## A175144.P3213920336189108743

`A189827(record[A020639(n+2)])`
-/

namespace A175144.P3213920336189108743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175144.P3213920336189108743

namespace A175144

/-- `A189827(record[A020639(n+2)])` -/
def P3213920336189108743.Spec : Prop :=
  ∀ n, P3213920336189108743.a n = A175144 (n + 1)

end A175144

/-! ## A175144.P2259984674329493020

`A189827(A006093(n+1)+1)`
-/

namespace A175144.P2259984674329493020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (A006093 (n + 1) + 1).toNat

end

end A175144.P2259984674329493020

namespace A175144

/-- `A189827(A006093(n+1)+1)` -/
def P2259984674329493020.Spec : Prop :=
  ∀ n, P2259984674329493020.a n = A175144 (n + 1)

end A175144

/-! ## A175144.P9167790196295718594

`A189827(A008864(n+1)-1)`
-/

namespace A175144.P9167790196295718594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (A008864 (n + 1) - 1).toNat

end

end A175144.P9167790196295718594

namespace A175144

/-- `A189827(A008864(n+1)-1)` -/
def P9167790196295718594.Spec : Prop :=
  ∀ n, P9167790196295718594.a n = A175144 (n + 1)

end A175144

/-! ## A175144.P17274251884754656452

`A189827(A040976(n+1)+2)`
-/

namespace A175144.P17274251884754656452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (A040976 (n + 1) + 2).toNat

end

end A175144.P17274251884754656452

namespace A175144

/-- `A189827(A040976(n+1)+2)` -/
def P17274251884754656452.Spec : Prop :=
  ∀ n, P17274251884754656452.a n = A175144 (n + 1)

end A175144

/-! ## A175144.P15048825045486721676

`A189827(eq[2, A000005(n+1)]+1)`
-/

namespace A175144.P15048825045486721676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A175144.P15048825045486721676

namespace A175144

/-- `A189827(eq[2, A000005(n+1)]+1)` -/
def P15048825045486721676.Spec : Prop :=
  ∀ n, P15048825045486721676.a n = A175144 (n + 1)

end A175144

/-! ## A175144.P5654735737357456022

`A189827(eq[2, A100577(n+1)]+1)`
-/

namespace A175144.P5654735737357456022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A175144.P5654735737357456022

namespace A175144

/-- `A189827(eq[2, A100577(n+1)]+1)` -/
def P5654735737357456022.Spec : Prop :=
  ∀ n, P5654735737357456022.a n = A175144 (n + 1)

end A175144

/-! ## A175144.P17817454697909040763

`abs(A145337(n))+2*A145339(n+1)`
-/

namespace A175144.P17817454697909040763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145337 n| + 2 * A145339 (n + 1)

end

end A175144.P17817454697909040763

namespace A175144

/-- `abs(A145337(n))+2*A145339(n+1)` -/
def P17817454697909040763.Spec : Prop :=
  ∀ n, P17817454697909040763.a n = A175144 (n + 1)

end A175144

/-!
# A175146: a(n) = d(A175145(n)-1)+d(A175145(n)+1), where d(m) is the number of divisors of m.

The programs for A175146, there is no canonical definition to state claims against.
-/

/-! ## A175146.P248122576399637352

`record[A175144(n+1)]`
-/

namespace A175146.P248122576399637352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175146.P248122576399637352

/-! ## A175146.P5436271791511741431

`record[A008329(n+1)+A008328(n+1)]`
-/

namespace A175146.P5436271791511741431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1) + A008328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175146.P5436271791511741431

/-! ## A175146.P8828706650960416707

`A175144(A000720(A090481(n+1)))`
-/

namespace A175146.P8828706650960416707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175144 (A000720 (A090481 (n + 1)).toNat).toNat

end

end A175146.P8828706650960416707

/-! ## A175146.P2638535265876974193

`A189827(A090481(n+1))`
-/

namespace A175146.P2638535265876974193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (A090481 (n + 1)).toNat

end

end A175146.P2638535265876974193

/-! ## A175146.P2873515004066035440

`record[A189827(A000040(n+1))]`
-/

namespace A175146.P2873515004066035440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175146.P2873515004066035440

/-!
# A175147: a(n) = number of primes p, p <= 2^n, where 2^n + p is prime.

The programs for A175147, there is no canonical definition to state claims against.
-/

/-! ## A175147.P4694261480199665265

`A007053(n)-A175148(n)`
-/

namespace A175147.P4694261480199665265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n - A175148 n

end

end A175147.P4694261480199665265

/-! ## A175147.P3647458185245011308

`A060967(2*n)-A175148(n)`
-/

namespace A175147.P3647458185245011308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * n) - A175148 n

end

end A175147.P3647458185245011308

/-! ## A175147.P7262922198501194837

`A060969(3*n)-A175148(n)`
-/

namespace A175147.P7262922198501194837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060969 (3 * n) - A175148 n

end

end A175147.P7262922198501194837

/-! ## A175147.P13098838121896449261

`A060970(4*n)-A175148(n)`
-/

namespace A175147.P13098838121896449261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060970 (4 * n) - A175148 n

end

end A175147.P13098838121896449261

/-! ## A175147.P18000691224178078580

`A060971(5*n)-A175148(n)`
-/

namespace A175147.P18000691224178078580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060971 (5 * n) - A175148 n

end

end A175147.P18000691224178078580

/-!
# A175148: a(n) = number of primes p, p <= 2^n, where 2^n + p is composite.

The programs for A175148, there is no canonical definition to state claims against.
-/

/-! ## A175148.P17608349814600579112

`A007053(n)-A175147(n)`
-/

namespace A175148.P17608349814600579112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 n - A175147 n

end

end A175148.P17608349814600579112

/-! ## A175148.P14856407499578277384

`A060967(2*n)-A175147(n)`
-/

namespace A175148.P14856407499578277384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * n) - A175147 n

end

end A175148.P14856407499578277384

/-! ## A175148.P17275007471229198855

`A060969(3*n)-A175147(n)`
-/

namespace A175148.P17275007471229198855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060969 (3 * n) - A175147 n

end

end A175148.P17275007471229198855

/-! ## A175148.P8732392135975049316

`A060970(4*n)-A175147(n)`
-/

namespace A175148.P8732392135975049316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060970 (4 * n) - A175147 n

end

end A175148.P8732392135975049316

/-! ## A175148.P249028703153473634

`A060971(5*n)-A175147(n)`
-/

namespace A175148.P249028703153473634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060971 (5 * n) - A175147 n

end

end A175148.P249028703153473634

/-!
# A175149: A positive integer n is included if (d(n),d(n+1),d(n+2)) is a permutation of three integers in arithmetic progression, where d(n) = the number of divisors of n.

The programs for A175149, there is no canonical definition to state claims against.
-/

/-! ## A175149.P18297242825205560563

`lt[A117910(n+2), A038500(A307119(n+1))]`
-/

namespace A175149.P18297242825205560563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A307119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175149.P18297242825205560563

/-!
# A175150: a(1)=0. If d(n)>d(n-1), then a(n)=a(n-1)+1. If d(n)<d(n-1), then a(n)=a(n-1)-1. If d(n)=d(n-1), then a(n)=a(n-1). (d(n) is the number of divisors of n.)

The programs for A175150, the canonical program `A175150.P4900912508559324144` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175150 has offset 1).

The definition of A175150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175150.P4900912508559324144

`∑[A182394(abs(1-n)+2)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A175150

/-- `∑[A182394(abs(1-n)+2)]` -/
def P4900912508559324144.Spec : Prop :=
  ∀ n, P4900912508559324144.a n = A175150 (n + 1)

theorem P4900912508559324144.correct : P4900912508559324144.Spec := by
  intro n
  simp only [A175150, Nat.add_sub_cancel]

end A175150

/-! ## A175150.P10077075496254190122

`A182394(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A175150.P10077075496254190122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A182394 (n + 1) + a (n - 1)

end

end A175150.P10077075496254190122

namespace A175150

/-- `A182394(n+1)+a(n-1)` -/
def P10077075496254190122.Spec : Prop :=
  ∀ n, P10077075496254190122.a n = A175150 (n + 1)

end A175150

/-! ## A175150.P7776451522605039661

`∑[A182394(A028310(n)+1)]-1`
-/

namespace A175150.P7776451522605039661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A175150.P7776451522605039661

namespace A175150

/-- `∑[A182394(A028310(n)+1)]-1` -/
def P7776451522605039661.Spec : Prop :=
  ∀ n, P7776451522605039661.a n = A175150 (n + 1)

end A175150

/-! ## A175150.P7012224512022398744

`∑[A182394(n+2)]-A182394(n+2)`
-/

namespace A175150.P7012224512022398744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182394 (n + 2)

end

end A175150.P7012224512022398744

namespace A175150

/-- `∑[A182394(n+2)]-A182394(n+2)` -/
def P7012224512022398744.Spec : Prop :=
  ∀ n, P7012224512022398744.a n = A175150 (n + 1)

end A175150

/-! ## A175150.P8483758334903618046

`A325169(A003961(n+1)-A332412(n))`
-/

namespace A175150.P8483758334903618046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A003961 (n + 1) - A332412 n).toNat

end

end A175150.P8483758334903618046

namespace A175150

/-- `A325169(A003961(n+1)-A332412(n))` -/
def P8483758334903618046.Spec : Prop :=
  ∀ n, P8483758334903618046.a n = A175150 (n + 1)

end A175150

/-!
# A175151: a(n) = Sum_{i=1..n} ((i+1)^i - 1)/i.

The programs for A175151, there is no canonical definition to state claims against.
-/

/-! ## A175151.P17184611471055823260

`∑[A060072(n+2)]`
-/

namespace A175151.P17184611471055823260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060072 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175151.P17184611471055823260

/-! ## A175151.P13617402091410963781

`∑[(n+2)*A125598(n+1)+1]`
-/

namespace A175151.P13617402091410963781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A125598 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175151.P13617402091410963781

/-! ## A175151.P9271820352235619539

`A060072(A028310(n)+2)+a(n-1)` with `a(0)=1`
-/

namespace A175151.P9271820352235619539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060072 (A028310 n + 2).toNat + a (n - 1)

end

end A175151.P9271820352235619539

/-! ## A175151.P10539811426057006161

`∑[((n+2)^(n+1)-1)/(n+1)]`
-/

namespace A175151.P10539811426057006161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ (n + 1) : ℤ) - 1 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175151.P10539811426057006161

/-! ## A175151.P17903773061994727394

`floor(∑[sqrt(A068792(n+2))])`
-/

namespace A175151.P17903773061994727394
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A068792 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A175151.P17903773061994727394

/-!
# A175152: Numbers k such that 11*k-1 and 11*k+1 are twin primes.

The programs for A175152, the canonical program `A175152.P2272878857478968243` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175152 has offset 1).

The definition of A175152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175152.P2272878857478968243

`∩[A102656(n+1), A107960(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A175152

/-- `∩[A102656(n+1), A107960(n+1)]` -/
def P2272878857478968243.Spec : Prop :=
  ∀ n, (P2272878857478968243.a n : ℤ) = A175152 (n + 1)

theorem P2272878857478968243.correct : P2272878857478968243.Spec := by
  intro n
  simp only [A175152, Nat.add_sub_cancel]

end A175152

/-! ## A175152.P5348284880761494347

`eq[1, A353464(A017401(n))]`
-/

namespace A175152.P5348284880761494347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A017401 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175152.P5348284880761494347

namespace A175152

/-- `eq[1, A353464(A017401(n))]` -/
def P5348284880761494347.Spec : Prop :=
  ∀ n, (P5348284880761494347.a n : ℤ) = A175152 (n + 1)

end A175152

/-! ## A175152.P12871699267465291448

`lt[A353464(n+2), A353464(A017401(n))]`
-/

namespace A175152.P12871699267465291448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A017401 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175152.P12871699267465291448

namespace A175152

/-- `lt[A353464(n+2), A353464(A017401(n))]` -/
def P12871699267465291448.Spec : Prop :=
  ∀ n, (P12871699267465291448.a n : ℤ) = A175152 (n + 1)

end A175152

/-! ## A175152.P3137514980512718817

`eq[2, A072680(2*A315484(n)-n)]`
-/

namespace A175152.P3137514980512718817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (2 * A315484 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175152.P3137514980512718817

namespace A175152

/-- `eq[2, A072680(2*A315484(n)-n)]` -/
def P3137514980512718817.Spec : Prop :=
  ∀ n, (P3137514980512718817.a n : ℤ) = A175152 (n + 1)

end A175152

/-! ## A175152.P15368183095269618965

`eq[A010882(n), A129950(A017401(n))]`
-/

namespace A175152.P15368183095269618965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (A017401 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175152.P15368183095269618965

namespace A175152

/-- `eq[A010882(n), A129950(A017401(n))]` -/
def P15368183095269618965.Spec : Prop :=
  ∀ n, (P15368183095269618965.a n : ℤ) = A175152 (n + 1)

end A175152

/-!
# A175153: Numbers k such that 13*k-1, 13*k+1 are twin primes.

The programs for A175153, the canonical program `A175153.P2056557595373446709` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175153 has offset 1).

The definition of A175153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175153.P2056557595373446709

`eq[1, A353464(A190991(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A175153

/-- `eq[1, A353464(A190991(n))]` -/
def P2056557595373446709.Spec : Prop :=
  ∀ n, (P2056557595373446709.a n : ℤ) = A175153 (n + 1)

theorem P2056557595373446709.correct : P2056557595373446709.Spec := by
  intro n
  simp only [A175153, Nat.add_sub_cancel]

end A175153

/-! ## A175153.P13478125002662620400

`lt[A001222(n+1), n*A353464(A190991(n))]`
-/

namespace A175153.P13478125002662620400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A353464 (A190991 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175153.P13478125002662620400

namespace A175153

/-- `lt[A001222(n+1), n*A353464(A190991(n))]` -/
def P13478125002662620400.Spec : Prop :=
  ∀ n, (P13478125002662620400.a n : ℤ) = A175153 (n + 1)

end A175153

/-! ## A175153.P11688284438149943606

`eq[1, A143697(A168105(n))]`
-/

namespace A175153.P11688284438149943606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143697 (A168105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175153.P11688284438149943606

namespace A175153

/-- `eq[1, A143697(A168105(n))]` -/
def P11688284438149943606.Spec : Prop :=
  ∀ n, (P11688284438149943606.a n : ℤ) = A175153 (n + 1)

end A175153

/-! ## A175153.P8360161419667895967

`eq[A010882(n), A129950(A190991(n))]`
-/

namespace A175153.P8360161419667895967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (A190991 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175153.P8360161419667895967

namespace A175153

/-- `eq[A010882(n), A129950(A190991(n))]` -/
def P8360161419667895967.Spec : Prop :=
  ∀ n, (P8360161419667895967.a n : ℤ) = A175153 (n + 1)

end A175153

/-! ## A175153.P3220754230130825105

`eq[1, A325142(13*n)]`
-/

namespace A175153.P3220754230130825105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (13 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175153.P3220754230130825105

namespace A175153

/-- `eq[1, A325142(13*n)]` -/
def P3220754230130825105.Spec : Prop :=
  ∀ n, (P3220754230130825105.a n : ℤ) = A175153 (n + 1)

end A175153

/-!
# A175154: a(n) = prime index of A048059(n).

The programs for A175154, the canonical program `A175154.P10023110274526491753` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175154 has offset 1).

The definition of A175154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175154.P16187851145624541353

`A000720(A048059(n+1))`
-/

namespace A175154.P16187851145624541353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A048059 (n + 1)).toNat

end

end A175154.P16187851145624541353

namespace A175154

/-- `A000720(A048059(n+1))` -/
def P16187851145624541353.Spec : Prop :=
  ∀ n, P16187851145624541353.a n = A175154 (n + 1)

end A175154

/-! ## A175154.P10023110274526491753

`record[A061395(n²+11+n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A175154

/-- `record[A061395(n²+11+n)]` -/
def P10023110274526491753.Spec : Prop :=
  ∀ n, P10023110274526491753.a n = A175154 (n + 1)

theorem P10023110274526491753.correct : P10023110274526491753.Spec := by
  intro n
  simp only [A175154, Nat.add_sub_cancel]

end A175154

/-! ## A175154.P229201842927408877

`A000720(p?[n²+11+n])`
-/

namespace A175154.P229201842927408877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 11 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A175154.P229201842927408877

namespace A175154

/-- `A000720(p?[n²+11+n])` -/
def P229201842927408877.Spec : Prop :=
  ∀ n, P229201842927408877.a n = A175154 (n + 1)

end A175154

/-! ## A175154.P2854745354705196856

`A061395(p?[n²+11+n])`
-/

namespace A175154.P2854745354705196856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 11 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A175154.P2854745354705196856

namespace A175154

/-- `A061395(p?[n²+11+n])` -/
def P2854745354705196856.Spec : Prop :=
  ∀ n, P2854745354705196856.a n = A175154 (n + 1)

end A175154

/-! ## A175154.P1304943243802210530

`A061395(or(1, A048059(n+1)))`
-/

namespace A175154.P1304943243802210530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A048059 (n + 1))).toNat

end

end A175154.P1304943243802210530

namespace A175154

/-- `A061395(or(1, A048059(n+1)))` -/
def P1304943243802210530.Spec : Prop :=
  ∀ n, P1304943243802210530.a n = A175154 (n + 1)

end A175154

/-! ## A175154.P9135318021560049222

`A000720(record[A006530(n²+11+n)])`
-/

namespace A175154.P9135318021560049222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 11 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175154.P9135318021560049222

namespace A175154

/-- `A000720(record[A006530(n²+11+n)])` -/
def P9135318021560049222.Spec : Prop :=
  ∀ n, P9135318021560049222.a n = A175154 (n + 1)

end A175154

/-! ## A175154.P2950134437236447288

`A000720(A048058(A048097(n+1)))`
-/

namespace A175154.P2950134437236447288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A048058 (A048097 (n + 1)).toNat).toNat

end

end A175154.P2950134437236447288

namespace A175154

/-- `A000720(A048058(A048097(n+1)))` -/
def P2950134437236447288.Spec : Prop :=
  ∀ n, P2950134437236447288.a n = A175154 (n + 1)

end A175154

/-! ## A175154.P15211374470833040065

`record[A326846(n²+11+n)]`
-/

namespace A175154.P15211374470833040065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (n ^ 2 + 11 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175154.P15211374470833040065

namespace A175154

/-- `record[A326846(n²+11+n)]` -/
def P15211374470833040065.Spec : Prop :=
  ∀ n, P15211374470833040065.a n = A175154 (n + 1)

end A175154

/-! ## A175154.P9876913480332347413

`A263297(or(1, p?[n²+11+n]))`
-/

namespace A175154.P9876913480332347413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 11 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A175154.P9876913480332347413

namespace A175154

/-- `A263297(or(1, p?[n²+11+n]))` -/
def P9876913480332347413.Spec : Prop :=
  ∀ n, P9876913480332347413.a n = A175154 (n + 1)

end A175154

/-!
# A175156: a(n) = 2^(n-1) mod composite(n).

The programs for A175156, the canonical program `A175156.P17258388974337502969` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175156 has offset 1).

The definition of A175156 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175156.P17258388974337502969

`(2^n)%A002808(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A175156

/-- `(2^n)%A002808(n+1)` -/
def P17258388974337502969.Spec : Prop :=
  ∀ n, P17258388974337502969.a n = A175156 (n + 1)

theorem P17258388974337502969.correct : P17258388974337502969.Spec := by
  intro n
  simp only [A175156, Nat.add_sub_cancel]

end A175156

/-! ## A175156.P14575269893235263259

`(2^n)%Δ[A053767(n)]`
-/

namespace A175156.P14575269893235263259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (f1 (n + 1) - f1 n)

end

end A175156.P14575269893235263259

namespace A175156

/-- `(2^n)%Δ[A053767(n)]` -/
def P14575269893235263259.Spec : Prop :=
  ∀ n, P14575269893235263259.a n = A175156 (n + 1)

end A175156

/-! ## A175156.P11475903564536426897

`∑[ceil(2^(n-1))]%comp[A351078(n)]`
-/

namespace A175156.P11475903564536426897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A175156.P11475903564536426897

namespace A175156

/-- `∑[ceil(2^(n-1))]%comp[A351078(n)]` -/
def P11475903564536426897.Spec : Prop :=
  ∀ n, P11475903564536426897.a n = A175156 (n + 1)

end A175156

/-! ## A175156.P5059634342658654547

`A000079(n)%lt[0, A082023(n)]`
-/

namespace A175156.P5059634342658654547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A175156.P5059634342658654547

namespace A175156

/-- `A000079(n)%lt[0, A082023(n)]` -/
def P5059634342658654547.Spec : Prop :=
  ∀ n, P5059634342658654547.a n = A175156 (n + 1)

end A175156

/-! ## A175156.P13038564622102947695

`A074323(2*n+1)%A018252(n+2)`
-/

namespace A175156.P13038564622102947695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074323 (2 * n + 1)) (A018252 (n + 2))

end

end A175156.P13038564622102947695

namespace A175156

/-- `A074323(2*n+1)%A018252(n+2)` -/
def P13038564622102947695.Spec : Prop :=
  ∀ n, P13038564622102947695.a n = A175156 (n + 1)

end A175156

/-!
# A175157: Numbers n such that 19*n-1, 19*n+1 are twin primes.

The programs for A175157, there is no canonical definition to state claims against.
-/

/-! ## A175157.P1161196150863196714

`eq[1, A325142(A008601(n))]`
-/

namespace A175157.P1161196150863196714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A008601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175157.P1161196150863196714

/-!
# A175158: Primes p such that (p+18), (p+36) and (p+72) are also prime.

The programs for A175158, there is no canonical definition to state claims against.
-/

/-! ## A175158.P9894250576642072614

`∩[A156110(n+1), A156112(n+1)]`
-/

namespace A175158.P9894250576642072614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175158.P9894250576642072614

/-! ## A175158.P8849063716939816797

`∩[A156109(n+1), A156110(n+1)]`
-/

namespace A175158.P8849063716939816797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175158.P8849063716939816797

/-! ## A175158.P9690779543926153373

`∩[A156109(n+1), A156112(n+1)]`
-/

namespace A175158.P9690779543926153373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175158.P9690779543926153373

/-! ## A175158.P16423171305766982753

`∩[A153418(n+1), A156112(n+1)]`
-/

namespace A175158.P16423171305766982753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175158.P16423171305766982753

/-! ## A175158.P8635982404348819096

`∩[A156104(n+1), A156110(n+1)]`
-/

namespace A175158.P8635982404348819096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175158.P8635982404348819096

/-! ## A175158.P4283935549208424362

`∩[A156105(n+1), A156109(n+1)]`
-/

namespace A175158.P4283935549208424362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175158.P4283935549208424362

/-!
# A175159: Primes p such that 2*p+3, 4*p+9 and 16*p+45 are also prime.

The programs for A175159, there is no canonical definition to state claims against.
-/

/-! ## A175159.P15357242166021579398

`∩[A023242(n+1), A023251(n+1)]`
-/

namespace A175159.P15357242166021579398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175159.P15357242166021579398

/-! ## A175159.P11630940603977272425

`∩[A023204(n+1), A023251(n+1)]`
-/

namespace A175159.P11630940603977272425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175159.P11630940603977272425

/-! ## A175159.P16571740369668323397

`∩[A023242(n+1), A156005(n+1)]`
-/

namespace A175159.P16571740369668323397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175159.P16571740369668323397

/-! ## A175159.P11568089012342236716

`∩[A023216(n+1), A156011(n+1)]`
-/

namespace A175159.P11568089012342236716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175159.P11568089012342236716

/-! ## A175159.P4686188883479416352

`∩[A023242(n+1), A156011(n+1)]`
-/

namespace A175159.P4686188883479416352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175159.P4686188883479416352

/-! ## A175159.P1378555002444974662

`∩[A023251(n+1), A156011(n+1)]`
-/

namespace A175159.P1378555002444974662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175159.P1378555002444974662

/-! ## A175159.P15780432441612268823

`p?[floor(A156010(n+1)/2)-1]`
-/

namespace A175159.P15780432441612268823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156010 (n + 1) : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175159.P15780432441612268823

/-! ## A175159.P7435015605442639731

`∩[A111199(n+1), A156011(n+1)]`
-/

namespace A175159.P7435015605442639731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175159.P7435015605442639731

/-! ## A175159.P2220783074635679693

`∩[A023251(n+1), A067076(n+1)]`
-/

namespace A175159.P2220783074635679693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175159.P2220783074635679693

/-!
# A175161: a(n) = 8*(2^n + 1).

The programs for A175161, the canonical program `A175161.P2150735603067975038` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175161 has offset 0).

The definition of A175161 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(2^n+1)` (program `A175161.P2150735603067975038`, by `A175161.P2150735603067975038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175161.P2150735603067975038

`8*(2^n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175161

/-- `8*(2^n+1)` -/
def P2150735603067975038.Spec : Prop :=
  ∀ n, (P2150735603067975038.a n : ℤ) = A175161 n

theorem P2150735603067975038.correct : P2150735603067975038.Spec := by
  intro n
  simp only [A175161]

end A175161

/-! ## A175161.P7453190176780277200

`3*a(n-1)-2*a(n-2)` with `a(0)=16, a(1)=24`
-/

namespace A175161.P7453190176780277200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 24] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A175161.P7453190176780277200

namespace A175161

/-- `3*a(n-1)-2*a(n-2)` -/
def P7453190176780277200.Spec : Prop :=
  ∀ n, P7453190176780277200.a n = A175161 n

theorem P7453190176780277200.correct : P7453190176780277200.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A175161, Nat.add_sub_cancel, A175161.P7453190176780277200.a, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A175161, Nat.add_sub_cancel, A175161.P7453190176780277200.a, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175161

/-! ## A175161.P2932573596765953205

`ogf((16-24x)/(1-3x+2x^2))`
-/

namespace A175161.P2932573596765953205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -24] [1, -3, 2] n

end

end A175161.P2932573596765953205

namespace A175161

/-- `ogf((16-24x)/(1-3x+2x^2))` -/
def P2932573596765953205.Spec : Prop :=
  ∀ n, P2932573596765953205.a n = A175161 n

end A175161

/-! ## A175161.P7602276796718208603

`a(n-1)+a(n-1)-8` with `a(0)=16`
-/

namespace A175161.P7602276796718208603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  a (n - 1) + (a (n - 1) - 8)

end

end A175161.P7602276796718208603

namespace A175161

/-- `a(n-1)+a(n-1)-8` -/
def P7602276796718208603.Spec : Prop :=
  ∀ n, P7602276796718208603.a n = A175161 n

theorem P7602276796718208603.correct : P7602276796718208603.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175161, Nat.add_sub_cancel, A175161.P7602276796718208603.a, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175161, Nat.add_sub_cancel, A175161.P7602276796718208603.a, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175161

/-! ## A175161.P2276155195609944446

`a(n-1)-(8-a(n-1))` with `a(0)=16`
-/

namespace A175161.P2276155195609944446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  a (n - 1) - (8 - a (n - 1))

end

end A175161.P2276155195609944446

namespace A175161

/-- `a(n-1)-(8-a(n-1))` -/
def P2276155195609944446.Spec : Prop :=
  ∀ n, P2276155195609944446.a n = A175161 n

theorem P2276155195609944446.correct : P2276155195609944446.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175161, Nat.add_sub_cancel, A175161.P2276155195609944446.a, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175161, Nat.add_sub_cancel, A175161.P2276155195609944446.a, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175161

/-! ## A175161.P12771163511430349236

`A242475(n+3)`
-/

namespace A175161.P12771163511430349236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242475 (n + 3)

end

end A175161.P12771163511430349236

namespace A175161

/-- `A242475(n+3)` -/
def P12771163511430349236.Spec : Prop :=
  ∀ n, P12771163511430349236.a n = A175161 n

theorem P12771163511430349236.correct : P12771163511430349236.Spec := by
  intro n
  simp only [A175161, Nat.add_sub_cancel, A175161.P12771163511430349236.a, A175161.P2150735603067975038.a, A242475, A242475.P2006482224610185527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175161

/-! ## A175161.P4294896240031479956

`A168415(n+3)+1`
-/

namespace A175161.P4294896240031479956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168415 (n + 3) + 1

end

end A175161.P4294896240031479956

namespace A175161

/-- `A168415(n+3)+1` -/
def P4294896240031479956.Spec : Prop :=
  ∀ n, P4294896240031479956.a n = A175161 n

theorem P4294896240031479956.correct : P4294896240031479956.Spec := by
  intro n
  simp only [A175161, Nat.add_sub_cancel, A175161.P4294896240031479956.a, A175161.P2150735603067975038.a, A168415, A168415.P15469723963420890649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175161

/-! ## A175161.P5387934893835584681

`A153972(n+3)+2`
-/

namespace A175161.P5387934893835584681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153972 (n + 3) + 2

end

end A175161.P5387934893835584681

namespace A175161

/-- `A153972(n+3)+2` -/
def P5387934893835584681.Spec : Prop :=
  ∀ n, P5387934893835584681.a n = A175161 n

theorem P5387934893835584681.correct : P5387934893835584681.Spec := by
  intro n
  simp only [A175161, Nat.add_sub_cancel, A175161.P5387934893835584681.a, A175161.P2150735603067975038.a, A153972, A153972.P197572763491864962.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175161

/-! ## A175161.P3790215703525388472

`A188165(n+3)-1`
-/

namespace A175161.P3790215703525388472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188165 (n + 3) - 1

end

end A175161.P3790215703525388472

namespace A175161

/-- `A188165(n+3)-1` -/
def P3790215703525388472.Spec : Prop :=
  ∀ n, P3790215703525388472.a n = A175161 n

theorem P3790215703525388472.correct : P3790215703525388472.Spec := by
  intro n
  simp only [A175161, Nat.add_sub_cancel, A175161.P3790215703525388472.a, A175161.P2150735603067975038.a, A188165, A188165.P8185940414168996735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175161

/-! ## A175161.P14417125424286699640

`A168614(n+3)+3`
-/

namespace A175161.P14417125424286699640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168614 (n + 3) + 3

end

end A175161.P14417125424286699640

namespace A175161

/-- `A168614(n+3)+3` -/
def P14417125424286699640.Spec : Prop :=
  ∀ n, P14417125424286699640.a n = A175161 n

theorem P14417125424286699640.correct : P14417125424286699640.Spec := by
  intro n
  simp only [A175161, Nat.add_sub_cancel, A175161.P14417125424286699640.a, A175161.P2150735603067975038.a, A168614, A168614.P8565637346810562881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175161

/-! ## A175161.P13098034471973409731

`A246139(n+3)-2`
-/

namespace A175161.P13098034471973409731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246139 (n + 3) - 2

end

end A175161.P13098034471973409731

namespace A175161

/-- `A246139(n+3)-2` -/
def P13098034471973409731.Spec : Prop :=
  ∀ n, P13098034471973409731.a n = A175161 n

theorem P13098034471973409731.correct : P13098034471973409731.Spec := by
  intro n
  simp only [A175161, Nat.add_sub_cancel, A175161.P13098034471973409731.a, A175161.P2150735603067975038.a, A246139, A246139.P9892592564014298492.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175161

/-! ## A175161.P6551122789037755468

`A140504(n+3)+4`
-/

namespace A175161.P6551122789037755468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140504 (n + 3) + 4

end

end A175161.P6551122789037755468

namespace A175161

/-- `A140504(n+3)+4` -/
def P6551122789037755468.Spec : Prop :=
  ∀ n, P6551122789037755468.a n = A175161 n

theorem P6551122789037755468.correct : P6551122789037755468.Spec := by
  intro n
  simp only [A175161, Nat.add_sub_cancel, A175161.P6551122789037755468.a, A175161.P2150735603067975038.a, A140504, A140504.P8641820625195625758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175161

/-! ## A175161.P6223350169153685149

`A146528(n+3)+4`
-/

namespace A175161.P6223350169153685149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146528 (n + 3) + 4

end

end A175161.P6223350169153685149

namespace A175161

/-- `A146528(n+3)+4` -/
def P6223350169153685149.Spec : Prop :=
  ∀ n, P6223350169153685149.a n = A175161 n

end A175161

/-! ## A175161.P11877203159931005326

`A267615(n+3)-3`
-/

namespace A175161.P11877203159931005326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 (n + 3) - 3

end

end A175161.P11877203159931005326

namespace A175161

/-- `A267615(n+3)-3` -/
def P11877203159931005326.Spec : Prop :=
  ∀ n, P11877203159931005326.a n = A175161 n

theorem P11877203159931005326.correct : P11877203159931005326.Spec := by
  intro n
  simp only [A175161, Nat.add_sub_cancel, A175161.P11877203159931005326.a, A175161.P2150735603067975038.a, A267615, A267615.P2967466212908059866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175161

/-! ## A175161.P15740342566488771320

`A020737(n+1)+7`
-/

namespace A175161.P15740342566488771320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 (n + 1) + 7

end

end A175161.P15740342566488771320

namespace A175161

/-- `A020737(n+1)+7` -/
def P15740342566488771320.Spec : Prop :=
  ∀ n, P15740342566488771320.a n = A175161 n

theorem P15740342566488771320.correct : P15740342566488771320.Spec := by
  intro n
  simp only [A175161, Nat.add_sub_cancel, A175161.P15740342566488771320.a, A175161.P2150735603067975038.a, A020737, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175161

/-! ## A175161.P2244998724585219913

`A062709(n+3)+5`
-/

namespace A175161.P2244998724585219913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 (n + 3) + 5

end

end A175161.P2244998724585219913

namespace A175161

/-- `A062709(n+3)+5` -/
def P2244998724585219913.Spec : Prop :=
  ∀ n, P2244998724585219913.a n = A175161 n

theorem P2244998724585219913.correct : P2244998724585219913.Spec := by
  intro n
  simp only [A175161, Nat.add_sub_cancel, A175161.P2244998724585219913.a, A175161.P2150735603067975038.a, A062709, A062709.P9130590619411367143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175161

/-! ## A175161.P3321426548911109733

`A134351(n+2)+6`
-/

namespace A175161.P3321426548911109733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134351 (n + 2) + 6

end

end A175161.P3321426548911109733

namespace A175161

/-- `A134351(n+2)+6` -/
def P3321426548911109733.Spec : Prop :=
  ∀ n, P3321426548911109733.a n = A175161 n

end A175161

/-! ## A175161.P9347097441151425033

`A020707(n+1)+8`
-/

namespace A175161.P9347097441151425033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (n + 1) + 8

end

end A175161.P9347097441151425033

namespace A175161

/-- `A020707(n+1)+8` -/
def P9347097441151425033.Spec : Prop :=
  ∀ n, P9347097441151425033.a n = A175161 n

theorem P9347097441151425033.correct : P9347097441151425033.Spec := by
  intro n
  simp only [A175161, Nat.add_sub_cancel, A175161.P9347097441151425033.a, A175161.P2150735603067975038.a, A020707, A020707.P16024998955381595964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175161

/-! ## A175161.P18134173523593176403

`A048578(n+2)+7`
-/

namespace A175161.P18134173523593176403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (n + 2) + 7

end

end A175161.P18134173523593176403

namespace A175161

/-- `A048578(n+2)+7` -/
def P18134173523593176403.Spec : Prop :=
  ∀ n, P18134173523593176403.a n = A175161 n

theorem P18134173523593176403.correct : P18134173523593176403.Spec := by
  intro n
  simp only [A175161, Nat.add_sub_cancel, A175161.P18134173523593176403.a, A175161.P2150735603067975038.a, A048578, A048578.P13686089786535013419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175161

/-! ## A175161.P8881292061336878400

`A176449(n)-A246168(n)`
-/

namespace A175161.P8881292061336878400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176449 n - A246168 n

end

end A175161.P8881292061336878400

namespace A175161

/-- `A176449(n)-A246168(n)` -/
def P8881292061336878400.Spec : Prop :=
  ∀ n, P8881292061336878400.a n = A175161 n

theorem P8881292061336878400.correct : P8881292061336878400.Spec := by
  intro n
  simp only [A175161, Nat.add_sub_cancel, A175161.P8881292061336878400.a, A175161.P2150735603067975038.a, A176449, A176449.P17517383944047529496.a, A246168, A246168.P6408836301477959437.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175161

/-!
# A175162: a(n) = 16*(2^n + 1).

The programs for A175162, the canonical program `A175162.P18254170328065775909` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175162 has offset 0).

The definition of A175162 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*(2^n+1)` (program `A175162.P18254170328065775909`, by `A175162.P18254170328065775909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175162.P18254170328065775909

`16*(2^n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175162

/-- `16*(2^n+1)` -/
def P18254170328065775909.Spec : Prop :=
  ∀ n, (P18254170328065775909.a n : ℤ) = A175162 n

theorem P18254170328065775909.correct : P18254170328065775909.Spec := by
  intro n
  simp only [A175162]

end A175162

/-! ## A175162.P13494842255342388265

`3*a(n-1)-2*a(n-2)` with `a(0)=32, a(1)=48`
-/

namespace A175162.P13494842255342388265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32, 48] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A175162.P13494842255342388265

namespace A175162

/-- `3*a(n-1)-2*a(n-2)` -/
def P13494842255342388265.Spec : Prop :=
  ∀ n, P13494842255342388265.a n = A175162 n

theorem P13494842255342388265.correct : P13494842255342388265.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A175162, Nat.add_sub_cancel, A175162.P13494842255342388265.a, A175162.P18254170328065775909.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A175162, Nat.add_sub_cancel, A175162.P13494842255342388265.a, A175162.P18254170328065775909.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175162

/-! ## A175162.P9481167964536424884

`2*a(n-1)-32/2` with `a(0)=32`
-/

namespace A175162.P9481167964536424884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [32] fun n a =>
  2 * a (n - 1) - (32 : ℚ) / 2

end

end A175162.P9481167964536424884

namespace A175162

/-- `2*a(n-1)-32/2` -/
def P9481167964536424884.Spec : Prop :=
  ∀ n, P9481167964536424884.a n = (A175162 n : ℚ)

theorem P9481167964536424884.correct : P9481167964536424884.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175162, Nat.add_sub_cancel, A175162.P9481167964536424884.a, A175162.P18254170328065775909.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175162, Nat.add_sub_cancel, A175162.P9481167964536424884.a, A175162.P18254170328065775909.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175162

/-! ## A175162.P18296661022141000009

`floor(8*∑[2*a(n-1)])` with `a(0)=4, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A175162.P18296661022141000009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175162.P18296661022141000009

namespace A175162

/-- `floor(8*∑[2*a(n-1)])` -/
def P18296661022141000009.Spec : Prop :=
  ∀ n, (P18296661022141000009.a n : ℤ) = A175162 n

end A175162

/-! ## A175162.P7357328512506592697

`∑[2^((n-2)%(n+1)+5)]`
-/

namespace A175162.P7357328512506592697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 2) (n + 1 : ℤ) + 5 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175162.P7357328512506592697

namespace A175162

/-- `∑[2^((n-2)%(n+1)+5)]` -/
def P7357328512506592697.Spec : Prop :=
  ∀ n, P7357328512506592697.a n = (A175162 n : ℚ)

end A175162

/-! ## A175162.P1945793716623337810

`a(n-1)+a(n-1)-16` with `a(0)=32`
-/

namespace A175162.P1945793716623337810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  a (n - 1) + (a (n - 1) - 16)

end

end A175162.P1945793716623337810

namespace A175162

/-- `a(n-1)+a(n-1)-16` -/
def P1945793716623337810.Spec : Prop :=
  ∀ n, P1945793716623337810.a n = A175162 n

theorem P1945793716623337810.correct : P1945793716623337810.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175162, Nat.add_sub_cancel, A175162.P1945793716623337810.a, A175162.P18254170328065775909.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175162, Nat.add_sub_cancel, A175162.P1945793716623337810.a, A175162.P18254170328065775909.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175162

/-! ## A175162.P18385995197527253649

`a(n-1)-(16-a(n-1))` with `a(0)=32`
-/

namespace A175162.P18385995197527253649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  a (n - 1) - (16 - a (n - 1))

end

end A175162.P18385995197527253649

namespace A175162

/-- `a(n-1)-(16-a(n-1))` -/
def P18385995197527253649.Spec : Prop :=
  ∀ n, P18385995197527253649.a n = A175162 n

theorem P18385995197527253649.correct : P18385995197527253649.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175162, Nat.add_sub_cancel, A175162.P18385995197527253649.a, A175162.P18254170328065775909.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175162, Nat.add_sub_cancel, A175162.P18385995197527253649.a, A175162.P18254170328065775909.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175162

/-! ## A175162.P4601965391475396038

`A250737(n+3)+2`
-/

namespace A175162.P4601965391475396038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250737 (n + 3) + 2

end

end A175162.P4601965391475396038

namespace A175162

/-- `A250737(n+3)+2` -/
def P4601965391475396038.Spec : Prop :=
  ∀ n, P4601965391475396038.a n = A175162 n

theorem P4601965391475396038.correct : P4601965391475396038.Spec := by
  intro n
  simp only [A175162, Nat.add_sub_cancel, A175162.P4601965391475396038.a, A175162.P18254170328065775909.a, A250737, A250737.P17497338391346816911.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175162

/-! ## A175162.P5795802303112633028

`A175161(n+1)+8`
-/

namespace A175162.P5795802303112633028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175161 (n + 1) + 8

end

end A175162.P5795802303112633028

namespace A175162

/-- `A175161(n+1)+8` -/
def P5795802303112633028.Spec : Prop :=
  ∀ n, P5795802303112633028.a n = A175162 n

theorem P5795802303112633028.correct : P5795802303112633028.Spec := by
  intro n
  simp only [A175162, Nat.add_sub_cancel, A175162.P5795802303112633028.a, A175162.P18254170328065775909.a, A175161, A175161.P2150735603067975038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175162

/-! ## A175162.P10804979492638023141

`A198633(n+3)+16`
-/

namespace A175162.P10804979492638023141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (n + 3) + 16

end

end A175162.P10804979492638023141

namespace A175162

/-- `A198633(n+3)+16` -/
def P10804979492638023141.Spec : Prop :=
  ∀ n, P10804979492638023141.a n = A175162 n

end A175162

/-! ## A175162.P11751116381860967731

`A000079(n+4)+16`
-/

namespace A175162.P11751116381860967731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 4) + 16

end

end A175162.P11751116381860967731

namespace A175162

/-- `A000079(n+4)+16` -/
def P11751116381860967731.Spec : Prop :=
  ∀ n, P11751116381860967731.a n = A175162 n

theorem P11751116381860967731.correct : P11751116381860967731.Spec := by
  intro n
  simp only [A175162, Nat.add_sub_cancel, A175162.P11751116381860967731.a, A175162.P18254170328065775909.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175162

/-! ## A175162.P9823826944698720953

`A134067(n+2)+18`
-/

namespace A175162.P9823826944698720953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 (n + 2) + 18

end

end A175162.P9823826944698720953

namespace A175162

/-- `A134067(n+2)+18` -/
def P9823826944698720953.Spec : Prop :=
  ∀ n, P9823826944698720953.a n = A175162 n

end A175162

/-! ## A175162.P14950494528787943851

`A151821(n+4)+16`
-/

namespace A175162.P14950494528787943851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 4) + 16

end

end A175162.P14950494528787943851

namespace A175162

/-- `A151821(n+4)+16` -/
def P14950494528787943851.Spec : Prop :=
  ∀ n, P14950494528787943851.a n = A175162 n

end A175162

/-! ## A175162.P2704718859697399459

`A155559(n+4)+16`
-/

namespace A175162.P2704718859697399459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 (n + 4) + 16

end

end A175162.P2704718859697399459

namespace A175162

/-- `A155559(n+4)+16` -/
def P2704718859697399459.Spec : Prop :=
  ∀ n, P2704718859697399459.a n = A175162 n

end A175162

/-! ## A175162.P16537682508313584047

`A171449(n+4)+16`
-/

namespace A175162.P16537682508313584047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171449 (n + 4) + 16

end

end A175162.P16537682508313584047

namespace A175162

/-- `A171449(n+4)+16` -/
def P16537682508313584047.Spec : Prop :=
  ∀ n, P16537682508313584047.a n = A175162 n

end A175162

/-! ## A175162.P5853019044039106173

`A171559(n+4)+16`
-/

namespace A175162.P5853019044039106173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 (n + 4) + 16

end

end A175162.P5853019044039106173

namespace A175162

/-- `A171559(n+4)+16` -/
def P5853019044039106173.Spec : Prop :=
  ∀ n, P5853019044039106173.a n = A175162 n

end A175162

/-! ## A175162.P8732843558849963753

`A186949(n+4)+16`
-/

namespace A175162.P8732843558849963753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186949 (n + 4) + 16

end

end A175162.P8732843558849963753

namespace A175162

/-- `A186949(n+4)+16` -/
def P8732843558849963753.Spec : Prop :=
  ∀ n, P8732843558849963753.a n = A175162 n

end A175162

/-! ## A175162.P3939632099759927417

`A258935(n+4)+16`
-/

namespace A175162.P3939632099759927417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258935 (n + 4) + 16

end

end A175162.P3939632099759927417

namespace A175162

/-- `A258935(n+4)+16` -/
def P3939632099759927417.Spec : Prop :=
  ∀ n, P3939632099759927417.a n = A175162 n

end A175162

/-! ## A175162.P6592423779899083339

`A240951(n+5)+16`
-/

namespace A175162.P6592423779899083339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240951 (n + 5) + 16

end

end A175162.P6592423779899083339

namespace A175162

/-- `A240951(n+5)+16` -/
def P6592423779899083339.Spec : Prop :=
  ∀ n, P6592423779899083339.a n = A175162 n

end A175162

/-! ## A175162.P15781377964154003823

`A168616(n+4)+21`
-/

namespace A175162.P15781377964154003823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 (n + 4) + 21

end

end A175162.P15781377964154003823

namespace A175162

/-- `A168616(n+4)+21` -/
def P15781377964154003823.Spec : Prop :=
  ∀ n, P15781377964154003823.a n = A175162 n

theorem P15781377964154003823.correct : P15781377964154003823.Spec := by
  intro n
  simp only [A175162, Nat.add_sub_cancel, A175162.P15781377964154003823.a, A175162.P18254170328065775909.a, A168616, A168616.P12817012548853144141.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175162

/-!
# A175163: a(n) = 32*(2^n + 1).

The programs for A175163, the canonical program `A175163.P12186374432870604410` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175163 has offset 0).

The definition of A175163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*(2^n+1)` (program `A175163.P12186374432870604410`, by `A175163.P12186374432870604410.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175163.P12186374432870604410

`32*(2^n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175163

/-- `32*(2^n+1)` -/
def P12186374432870604410.Spec : Prop :=
  ∀ n, (P12186374432870604410.a n : ℤ) = A175163 n

theorem P12186374432870604410.correct : P12186374432870604410.Spec := by
  intro n
  simp only [A175163]

end A175163

/-! ## A175163.P15828385874433953224

`3*a(n-1)-2*a(n-2)` with `a(0)=64, a(1)=96`
-/

namespace A175163.P15828385874433953224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [64, 96] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A175163.P15828385874433953224

namespace A175163

/-- `3*a(n-1)-2*a(n-2)` -/
def P15828385874433953224.Spec : Prop :=
  ∀ n, P15828385874433953224.a n = A175163 n

theorem P15828385874433953224.correct : P15828385874433953224.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A175163, Nat.add_sub_cancel, A175163.P15828385874433953224.a, A175163.P12186374432870604410.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A175163, Nat.add_sub_cancel, A175163.P15828385874433953224.a, A175163.P12186374432870604410.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175163

/-! ## A175163.P1340926691886347510

`2*a(n-1)-64/2` with `a(0)=64`
-/

namespace A175163.P1340926691886347510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [64] fun n a =>
  2 * a (n - 1) - (64 : ℚ) / 2

end

end A175163.P1340926691886347510

namespace A175163

/-- `2*a(n-1)-64/2` -/
def P1340926691886347510.Spec : Prop :=
  ∀ n, P1340926691886347510.a n = (A175163 n : ℚ)

theorem P1340926691886347510.correct : P1340926691886347510.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175163, Nat.add_sub_cancel, A175163.P1340926691886347510.a, A175163.P12186374432870604410.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175163, Nat.add_sub_cancel, A175163.P1340926691886347510.a, A175163.P12186374432870604410.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175163

/-! ## A175163.P6896518972608947208

`floor(8*∑[2*a(n-1)])` with `a(0)=8, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A175163.P6896518972608947208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175163.P6896518972608947208

namespace A175163

/-- `floor(8*∑[2*a(n-1)])` -/
def P6896518972608947208.Spec : Prop :=
  ∀ n, (P6896518972608947208.a n : ℤ) = A175163 n

end A175163

/-! ## A175163.P5569857029922551649

`a(n-1)+a(n-1)-32` with `a(0)=64`
-/

namespace A175163.P5569857029922551649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [64] fun n a =>
  a (n - 1) + (a (n - 1) - 32)

end

end A175163.P5569857029922551649

namespace A175163

/-- `a(n-1)+a(n-1)-32` -/
def P5569857029922551649.Spec : Prop :=
  ∀ n, P5569857029922551649.a n = A175163 n

theorem P5569857029922551649.correct : P5569857029922551649.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175163, Nat.add_sub_cancel, A175163.P5569857029922551649.a, A175163.P12186374432870604410.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175163, Nat.add_sub_cancel, A175163.P5569857029922551649.a, A175163.P12186374432870604410.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175163

/-! ## A175163.P15468988339586243666

`a(n-1)-(32-a(n-1))` with `a(0)=64`
-/

namespace A175163.P15468988339586243666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [64] fun n a =>
  a (n - 1) - (32 - a (n - 1))

end

end A175163.P15468988339586243666

namespace A175163

/-- `a(n-1)-(32-a(n-1))` -/
def P15468988339586243666.Spec : Prop :=
  ∀ n, P15468988339586243666.a n = A175163 n

theorem P15468988339586243666.correct : P15468988339586243666.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175163, Nat.add_sub_cancel, A175163.P15468988339586243666.a, A175163.P12186374432870604410.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175163, Nat.add_sub_cancel, A175163.P15468988339586243666.a, A175163.P12186374432870604410.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175163

/-! ## A175163.P15836222767871130218

`A171497(n+3)+32`
-/

namespace A175163.P15836222767871130218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171497 (n + 3) + 32

end

end A175163.P15836222767871130218

namespace A175163

/-- `A171497(n+3)+32` -/
def P15836222767871130218.Spec : Prop :=
  ∀ n, P15836222767871130218.a n = A175163 n

end A175163

/-! ## A175163.P380876095302445972

`A198633(n+4)+32`
-/

namespace A175163.P380876095302445972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (n + 4) + 32

end

end A175163.P380876095302445972

namespace A175163

/-- `A198633(n+4)+32` -/
def P380876095302445972.Spec : Prop :=
  ∀ n, P380876095302445972.a n = A175163 n

end A175163

/-! ## A175163.P14338398782268433998

`A134067(n+3)+34`
-/

namespace A175163.P14338398782268433998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 (n + 3) + 34

end

end A175163.P14338398782268433998

namespace A175163

/-- `A134067(n+3)+34` -/
def P14338398782268433998.Spec : Prop :=
  ∀ n, P14338398782268433998.a n = A175163 n

end A175163

/-! ## A175163.P12842879363539538085

`A258935(n+5)+32`
-/

namespace A175163.P12842879363539538085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258935 (n + 5) + 32

end

end A175163.P12842879363539538085

namespace A175163

/-- `A258935(n+5)+32` -/
def P12842879363539538085.Spec : Prop :=
  ∀ n, P12842879363539538085.a n = A175163 n

end A175163

/-! ## A175163.P12693576391970195823

`8*A000079(n+2)+32`
-/

namespace A175163.P12693576391970195823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000079 (n + 2) + 32

end

end A175163.P12693576391970195823

namespace A175163

/-- `8*A000079(n+2)+32` -/
def P12693576391970195823.Spec : Prop :=
  ∀ n, P12693576391970195823.a n = A175163 n

theorem P12693576391970195823.correct : P12693576391970195823.Spec := by
  intro n
  simp only [A175163, Nat.add_sub_cancel, A175163.P12693576391970195823.a, A175163.P12186374432870604410.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175163

/-! ## A175163.P8282561909939405581

`∑[A000079(abs(1-n)+5)]`
-/

namespace A175163.P8282561909939405581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (|1 - (n : ℤ)| + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175163.P8282561909939405581

namespace A175163

/-- `∑[A000079(abs(1-n)+5)]` -/
def P8282561909939405581.Spec : Prop :=
  ∀ n, P8282561909939405581.a n = A175163 n

end A175163

/-! ## A175163.P13463134619967095757

`∑[A011782(abs(1-n)+6)]`
-/

namespace A175163.P13463134619967095757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (|1 - (n : ℤ)| + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175163.P13463134619967095757

namespace A175163

/-- `∑[A011782(abs(1-n)+6)]` -/
def P13463134619967095757.Spec : Prop :=
  ∀ n, P13463134619967095757.a n = A175163 n

end A175163

/-! ## A175163.P10766303325009210687

`A000079(n+4)+a(n-1)` with `a(0)=64`
-/

namespace A175163.P10766303325009210687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [64] fun n a =>
  A000079 (n + 4) + a (n - 1)

end

end A175163.P10766303325009210687

namespace A175163

/-- `A000079(n+4)+a(n-1)` -/
def P10766303325009210687.Spec : Prop :=
  ∀ n, P10766303325009210687.a n = A175163 n

theorem P10766303325009210687.correct : P10766303325009210687.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175163, Nat.add_sub_cancel, A175163.P10766303325009210687.a, A175163.P12186374432870604410.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175163, Nat.add_sub_cancel, A175163.P10766303325009210687.a, A175163.P12186374432870604410.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A175163

/-! ## A175163.P6753357137994234002

`A175162(n)+A175162(n)`
-/

namespace A175163.P6753357137994234002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175162 n + A175162 n

end

end A175163.P6753357137994234002

namespace A175163

/-- `A175162(n)+A175162(n)` -/
def P6753357137994234002.Spec : Prop :=
  ∀ n, P6753357137994234002.a n = A175163 n

theorem P6753357137994234002.correct : P6753357137994234002.Spec := by
  intro n
  simp only [A175163, Nat.add_sub_cancel, A175163.P6753357137994234002.a, A175163.P12186374432870604410.a, A175162, A175162.P18254170328065775909.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175163

/-! ## A175163.P6972688065773861563

`Δ[A000225(n+5)]+32`
-/

namespace A175163.P6972688065773861563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 32

end

end A175163.P6972688065773861563

namespace A175163

/-- `Δ[A000225(n+5)]+32` -/
def P6972688065773861563.Spec : Prop :=
  ∀ n, P6972688065773861563.a n = A175163 n

theorem P6972688065773861563.correct : P6972688065773861563.Spec := by
  intro n
  simp only [A175163, Nat.add_sub_cancel, A175163.P6972688065773861563.f1, A175163.P6972688065773861563.a, A175163.P12186374432870604410.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175163

/-! ## A175163.P1366842725630882420

`Δ[A175165(n+1)]-A175165(n)`
-/

namespace A175163.P1366842725630882420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A175165 n

end

end A175163.P1366842725630882420

namespace A175163

/-- `Δ[A175165(n+1)]-A175165(n)` -/
def P1366842725630882420.Spec : Prop :=
  ∀ n, P1366842725630882420.a n = A175163 n

theorem P1366842725630882420.correct : P1366842725630882420.Spec := by
  intro n
  simp only [A175163, Nat.add_sub_cancel, A175163.P1366842725630882420.f1, A175163.P1366842725630882420.a, A175163.P12186374432870604410.a, A175165, A175165.P13391023397149546966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175163

/-! ## A175163.P17864404869761152314

`Δ[A175166(n)]-A175166(n)/2`
-/

namespace A175163.P17864404869761152314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175166 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A175166 n : ℚ) / 2

end

end A175163.P17864404869761152314

namespace A175163

/-- `Δ[A175166(n)]-A175166(n)/2` -/
def P17864404869761152314.Spec : Prop :=
  ∀ n, P17864404869761152314.a n = (A175163 n : ℚ)

theorem P17864404869761152314.correct : P17864404869761152314.Spec := by
  intro n
  simp only [A175163, Nat.add_sub_cancel, A175163.P17864404869761152314.f1, A175163.P17864404869761152314.a, A175163.P12186374432870604410.a, A175166, A175166.P10305004087690730400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175163

/-! ## A175163.P254155518307236318

`A175166(n+1)-3*A175165(n)`
-/

namespace A175163.P254155518307236318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175166 (n + 1) - 3 * A175165 n

end

end A175163.P254155518307236318

namespace A175163

/-- `A175166(n+1)-3*A175165(n)` -/
def P254155518307236318.Spec : Prop :=
  ∀ n, P254155518307236318.a n = A175163 n

theorem P254155518307236318.correct : P254155518307236318.Spec := by
  intro n
  simp only [A175163, Nat.add_sub_cancel, A175163.P254155518307236318.a, A175163.P12186374432870604410.a, A175165, A175165.P13391023397149546966.a, A175166, A175166.P10305004087690730400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175163

/-! ## A175163.P4730990043428855277

`A175166(n+1)-(A175166(n)+A175165(n))`
-/

namespace A175163.P4730990043428855277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175166 (n + 1) - (A175166 n + A175165 n)

end

end A175163.P4730990043428855277

namespace A175163

/-- `A175166(n+1)-(A175166(n)+A175165(n))` -/
def P4730990043428855277.Spec : Prop :=
  ∀ n, P4730990043428855277.a n = A175163 n

theorem P4730990043428855277.correct : P4730990043428855277.Spec := by
  intro n
  simp only [A175163, Nat.add_sub_cancel, A175163.P4730990043428855277.a, A175163.P12186374432870604410.a, A175165, A175165.P13391023397149546966.a, A175166, A175166.P10305004087690730400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175163

/-!
# A175164: a(n) = 16*(2^n - 1).

The programs for A175164, the canonical program `A175164.P8473928831672684715` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175164 has offset 0).

The definition of A175164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*(2^n-1)` (program `A175164.P8473928831672684715`, by `A175164.P8473928831672684715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175164.P8473928831672684715

`16*(2^n-1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175164

/-- `16*(2^n-1)` -/
def P8473928831672684715.Spec : Prop :=
  ∀ n, P8473928831672684715.a n = A175164 n

theorem P8473928831672684715.correct : P8473928831672684715.Spec := by
  intro n
  simp only [A175164]

end A175164

/-! ## A175164.P844110981659391195

`3*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=16`
-/

namespace A175164.P844110981659391195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 16] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A175164.P844110981659391195

namespace A175164

/-- `3*a(n-1)-2*a(n-2)` -/
def P844110981659391195.Spec : Prop :=
  ∀ n, P844110981659391195.a n = A175164 n

theorem P844110981659391195.correct : P844110981659391195.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A175164, Nat.add_sub_cancel, A175164.P844110981659391195.a, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A175164, Nat.add_sub_cancel, A175164.P844110981659391195.a, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175164

/-! ## A175164.P4450729153433724124

`ogf(16x/(1-3x+2x^2))`
-/

namespace A175164.P4450729153433724124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 16] [1, -3, 2] n

end

end A175164.P4450729153433724124

namespace A175164

/-- `ogf(16x/(1-3x+2x^2))` -/
def P4450729153433724124.Spec : Prop :=
  ∀ n, P4450729153433724124.a n = A175164 n

end A175164

/-! ## A175164.P1120931438117754174

`xor(8, ∑[2^(n+3)])`
-/

namespace A175164.P1120931438117754174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 8 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175164.P1120931438117754174

namespace A175164

/-- `xor(8, ∑[2^(n+3)])` -/
def P1120931438117754174.Spec : Prop :=
  ∀ n, (P1120931438117754174.a n : ℤ) = A175164 n

end A175164

/-! ## A175164.P8722992628448204758

`2*a(n-1)+16` with `a(0)=0`
-/

namespace A175164.P8722992628448204758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + 16

end

end A175164.P8722992628448204758

namespace A175164

/-- `2*a(n-1)+16` -/
def P8722992628448204758.Spec : Prop :=
  ∀ n, (P8722992628448204758.a n : ℤ) = A175164 n

theorem P8722992628448204758.correct : P8722992628448204758.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175164, Nat.add_sub_cancel, A175164.P8722992628448204758.a, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175164, Nat.add_sub_cancel, A175164.P8722992628448204758.a, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175164

/-! ## A175164.P11566055658577769

`∑[2*a(n-1)]` with `a(0)=0, a(1)=16`
-/

namespace A175164.P11566055658577769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 16] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175164.P11566055658577769

namespace A175164

/-- `∑[2*a(n-1)]` -/
def P11566055658577769.Spec : Prop :=
  ∀ n, (P11566055658577769.a n : ℤ) = A175164 n

end A175164

/-! ## A175164.P4707436916907204909

`∑[and(-9, 2^(n+3))]`
-/

namespace A175164.P4707436916907204909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-9) (2 ^ (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175164.P4707436916907204909

namespace A175164

/-- `∑[and(-9, 2^(n+3))]` -/
def P4707436916907204909.Spec : Prop :=
  ∀ n, P4707436916907204909.a n = A175164 n

end A175164

/-! ## A175164.P15175276078518297170

`∑[(2%(n+2))^(n+3)]`
-/

namespace A175164.P15175276078518297170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 % (n + 2)) ^ (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175164.P15175276078518297170

namespace A175164

/-- `∑[(2%(n+2))^(n+3)]` -/
def P15175276078518297170.Spec : Prop :=
  ∀ n, (P15175276078518297170.a n : ℤ) = A175164 n

end A175164

/-! ## A175164.P5531943720087476082

`∑[ceil(atan(2*n))^(n+3)]`
-/

namespace A175164.P5531943720087476082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (2 * n : ℝ)⌉ ^ (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175164.P5531943720087476082

namespace A175164

/-- `∑[ceil(atan(2*n))^(n+3)]` -/
def P5531943720087476082.Spec : Prop :=
  ∀ n, P5531943720087476082.a n = A175164 n

end A175164

/-! ## A175164.P8102481941744627915

`18-2*(1-a(n-1))` with `a(0)=0`
-/

namespace A175164.P8102481941744627915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  18 - 2 * (1 - a (n - 1))

end

end A175164.P8102481941744627915

namespace A175164

/-- `18-2*(1-a(n-1))` -/
def P8102481941744627915.Spec : Prop :=
  ∀ n, P8102481941744627915.a n = A175164 n

theorem P8102481941744627915.correct : P8102481941744627915.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175164, Nat.add_sub_cancel, A175164.P8102481941744627915.a, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175164, Nat.add_sub_cancel, A175164.P8102481941744627915.a, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175164

/-! ## A175164.P3221565244918053211

`a(n-1)+2^(n+3)` with `a(0)=0`
-/

namespace A175164.P3221565244918053211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 ^ (n + 3)

end

end A175164.P3221565244918053211

namespace A175164

/-- `a(n-1)+2^(n+3)` -/
def P3221565244918053211.Spec : Prop :=
  ∀ n, (P3221565244918053211.a n : ℤ) = A175164 n

theorem P3221565244918053211.correct : P3221565244918053211.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175164, Nat.add_sub_cancel, A175164.P3221565244918053211.a, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175164, Nat.add_sub_cancel, A175164.P3221565244918053211.a, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175164

/-! ## A175164.P3484711282337009624

`a(n-1)+a(n-1)+16` with `a(0)=0`
-/

namespace A175164.P3484711282337009624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + a (n - 1) + 16

end

end A175164.P3484711282337009624

namespace A175164

/-- `a(n-1)+a(n-1)+16` -/
def P3484711282337009624.Spec : Prop :=
  ∀ n, (P3484711282337009624.a n : ℤ) = A175164 n

theorem P3484711282337009624.correct : P3484711282337009624.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175164, Nat.add_sub_cancel, A175164.P3484711282337009624.a, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175164, Nat.add_sub_cancel, A175164.P3484711282337009624.a, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175164

/-! ## A175164.P7052659120353528859

`∑[16*A131577(n)]`
-/

namespace A175164.P7052659120353528859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175164.P7052659120353528859

namespace A175164

/-- `∑[16*A131577(n)]` -/
def P7052659120353528859.Spec : Prop :=
  ∀ n, P7052659120353528859.a n = A175164 n

end A175164

/-! ## A175164.P15844714962891917992

`A159741(n+1)-8`
-/

namespace A175164.P15844714962891917992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159741 (n + 1) - 8

end

end A175164.P15844714962891917992

namespace A175164

/-- `A159741(n+1)-8` -/
def P15844714962891917992.Spec : Prop :=
  ∀ n, P15844714962891917992.a n = A175164 n

theorem P15844714962891917992.correct : P15844714962891917992.Spec := by
  intro n
  simp only [A175164, Nat.add_sub_cancel, A175164.P15844714962891917992.a, A175164.P8473928831672684715.a, A159741, A159741.P12178551765370653186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175164

/-! ## A175164.P2288561637751061025

`A172252(n+2)-7`
-/

namespace A175164.P2288561637751061025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172252 (n + 2) - 7

end

end A175164.P2288561637751061025

namespace A175164

/-- `A172252(n+2)-7` -/
def P2288561637751061025.Spec : Prop :=
  ∀ n, P2288561637751061025.a n = A175164 n

theorem P2288561637751061025.correct : P2288561637751061025.Spec := by
  intro n
  simp only [A175164, Nat.add_sub_cancel, A175164.P2288561637751061025.a, A175164.P8473928831672684715.a, A172252, A172252.P507886656103785375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A175164

/-! ## A175164.P13029923578802364068

`A048490(n+1)-9`
-/

namespace A175164.P13029923578802364068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048490 (n + 1) - 9

end

end A175164.P13029923578802364068

namespace A175164

/-- `A048490(n+1)-9` -/
def P13029923578802364068.Spec : Prop :=
  ∀ n, P13029923578802364068.a n = A175164 n

theorem P13029923578802364068.correct : P13029923578802364068.Spec := by
  intro n
  simp only [A175164, Nat.add_sub_cancel, A175164.P13029923578802364068.a, A175164.P8473928831672684715.a, A048490, A048490.P10521047800746211574.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175164

/-! ## A175164.P5077983098463412957

`∑[A132479(n+1)]-5`
-/

namespace A175164.P5077983098463412957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A175164.P5077983098463412957

namespace A175164

/-- `∑[A132479(n+1)]-5` -/
def P5077983098463412957.Spec : Prop :=
  ∀ n, P5077983098463412957.a n = A175164 n

end A175164

/-! ## A175164.P11875586294285822917

`∑[4*A186949(n+1)]`
-/

namespace A175164.P11875586294285822917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A186949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175164.P11875586294285822917

namespace A175164

/-- `∑[4*A186949(n+1)]` -/
def P11875586294285822917.Spec : Prop :=
  ∀ n, P11875586294285822917.a n = A175164 n

end A175164

/-! ## A175164.P1490022971458813365

`A164096(2*n+1)-5`
-/

namespace A175164.P1490022971458813365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164096 (2 * n + 1) - 5

end

end A175164.P1490022971458813365

namespace A175164

/-- `A164096(2*n+1)-5` -/
def P1490022971458813365.Spec : Prop :=
  ∀ n, P1490022971458813365.a n = A175164 n

end A175164

/-!
# A175165: a(n) = 32*(2^n - 1).

The programs for A175165, the canonical program `A175165.P13391023397149546966` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175165 has offset 0).

The definition of A175165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*(2^n-1)` (program `A175165.P13391023397149546966`, by `A175165.P13391023397149546966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175165.P13391023397149546966

`32*(2^n-1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175165

/-- `32*(2^n-1)` -/
def P13391023397149546966.Spec : Prop :=
  ∀ n, P13391023397149546966.a n = A175165 n

theorem P13391023397149546966.correct : P13391023397149546966.Spec := by
  intro n
  simp only [A175165]

end A175165

/-! ## A175165.P169347799037060284

`3*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=32`
-/

namespace A175165.P169347799037060284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 32] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A175165.P169347799037060284

namespace A175165

/-- `3*a(n-1)-2*a(n-2)` -/
def P169347799037060284.Spec : Prop :=
  ∀ n, P169347799037060284.a n = A175165 n

theorem P169347799037060284.correct : P169347799037060284.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A175165, Nat.add_sub_cancel, A175165.P169347799037060284.a, A175165.P13391023397149546966.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A175165, Nat.add_sub_cancel, A175165.P169347799037060284.a, A175165.P13391023397149546966.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175165

/-! ## A175165.P3242883207164989086

`2*a(n-1)+32` with `a(0)=0`
-/

namespace A175165.P3242883207164989086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + 32

end

end A175165.P3242883207164989086

namespace A175165

/-- `2*a(n-1)+32` -/
def P3242883207164989086.Spec : Prop :=
  ∀ n, (P3242883207164989086.a n : ℤ) = A175165 n

theorem P3242883207164989086.correct : P3242883207164989086.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175165, Nat.add_sub_cancel, A175165.P3242883207164989086.a, A175165.P13391023397149546966.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175165, Nat.add_sub_cancel, A175165.P3242883207164989086.a, A175165.P13391023397149546966.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175165

/-! ## A175165.P12439950749038820740

`∑[2*a(n-1)]` with `a(0)=0, a(1)=32`
-/

namespace A175165.P12439950749038820740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 32] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175165.P12439950749038820740

namespace A175165

/-- `∑[2*a(n-1)]` -/
def P12439950749038820740.Spec : Prop :=
  ∀ n, (P12439950749038820740.a n : ℤ) = A175165 n

end A175165

/-! ## A175165.P13537457657830508674

`lcm(32, ∑[floor(2^(n-1))])`
-/

namespace A175165.P13537457657830508674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 32 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175165.P13537457657830508674

namespace A175165

/-- `lcm(32, ∑[floor(2^(n-1))])` -/
def P13537457657830508674.Spec : Prop :=
  ∀ n, (P13537457657830508674.a n : ℤ) = A175165 n

end A175165

/-! ## A175165.P715279636915782335

`34-2*(1-a(n-1))` with `a(0)=0`
-/

namespace A175165.P715279636915782335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  34 - 2 * (1 - a (n - 1))

end

end A175165.P715279636915782335

namespace A175165

/-- `34-2*(1-a(n-1))` -/
def P715279636915782335.Spec : Prop :=
  ∀ n, P715279636915782335.a n = A175165 n

theorem P715279636915782335.correct : P715279636915782335.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175165, Nat.add_sub_cancel, A175165.P715279636915782335.a, A175165.P13391023397149546966.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175165, Nat.add_sub_cancel, A175165.P715279636915782335.a, A175165.P13391023397149546966.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175165

/-! ## A175165.P2800829066690418111

`a(n-1)+2^(n+4)` with `a(0)=0`
-/

namespace A175165.P2800829066690418111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 ^ (n + 4)

end

end A175165.P2800829066690418111

namespace A175165

/-- `a(n-1)+2^(n+4)` -/
def P2800829066690418111.Spec : Prop :=
  ∀ n, (P2800829066690418111.a n : ℤ) = A175165 n

theorem P2800829066690418111.correct : P2800829066690418111.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175165, Nat.add_sub_cancel, A175165.P2800829066690418111.a, A175165.P13391023397149546966.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175165, Nat.add_sub_cancel, A175165.P2800829066690418111.a, A175165.P13391023397149546966.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175165

/-! ## A175165.P1482191301127133623

`∑[8*(2%(n+1)²)^(n+1)]`
-/

namespace A175165.P1482191301127133623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (2 % (n + 1) ^ 2) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175165.P1482191301127133623

namespace A175165

/-- `∑[8*(2%(n+1)²)^(n+1)]` -/
def P1482191301127133623.Spec : Prop :=
  ∀ n, (P1482191301127133623.a n : ℤ) = A175165 n

end A175165

/-! ## A175165.P5502966620107190523

`A175163(n)-64`
-/

namespace A175165.P5502966620107190523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175163 n - 64

end

end A175165.P5502966620107190523

namespace A175165

/-- `A175163(n)-64` -/
def P5502966620107190523.Spec : Prop :=
  ∀ n, P5502966620107190523.a n = A175165 n

theorem P5502966620107190523.correct : P5502966620107190523.Spec := by
  intro n
  simp only [A175165, Nat.add_sub_cancel, A175165.P5502966620107190523.a, A175165.P13391023397149546966.a, A175163, A175163.P12186374432870604410.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175165

/-! ## A175165.P13874403385173896388

`A020707(n+3)-32`
-/

namespace A175165.P13874403385173896388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (n + 3) - 32

end

end A175165.P13874403385173896388

namespace A175165

/-- `A020707(n+3)-32` -/
def P13874403385173896388.Spec : Prop :=
  ∀ n, P13874403385173896388.a n = A175165 n

theorem P13874403385173896388.correct : P13874403385173896388.Spec := by
  intro n
  simp only [A175165, Nat.add_sub_cancel, A175165.P13874403385173896388.a, A175165.P13391023397149546966.a, A020707, A020707.P16024998955381595964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175165

/-! ## A175165.P4169131925425028658

`A171497(n+3)-32`
-/

namespace A175165.P4169131925425028658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171497 (n + 3) - 32

end

end A175165.P4169131925425028658

namespace A175165

/-- `A171497(n+3)-32` -/
def P4169131925425028658.Spec : Prop :=
  ∀ n, P4169131925425028658.a n = A175165 n

end A175165

/-! ## A175165.P16199840934069126544

`A198633(n+4)-32`
-/

namespace A175165.P16199840934069126544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (n + 4) - 32

end

end A175165.P16199840934069126544

namespace A175165

/-- `A198633(n+4)-32` -/
def P16199840934069126544.Spec : Prop :=
  ∀ n, P16199840934069126544.a n = A175165 n

end A175165

/-! ## A175165.P15143445529921704062

`A258935(n+5)-32`
-/

namespace A175165.P15143445529921704062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258935 (n + 5) - 32

end

end A175165.P15143445529921704062

namespace A175165

/-- `A258935(n+5)-32` -/
def P15143445529921704062.Spec : Prop :=
  ∀ n, P15143445529921704062.a n = A175165 n

end A175165

/-! ## A175165.P10073306057520977006

`8*A020707(n)-32`
-/

namespace A175165.P10073306057520977006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A020707 n - 32

end

end A175165.P10073306057520977006

namespace A175165

/-- `8*A020707(n)-32` -/
def P10073306057520977006.Spec : Prop :=
  ∀ n, P10073306057520977006.a n = A175165 n

theorem P10073306057520977006.correct : P10073306057520977006.Spec := by
  intro n
  simp only [A175165, Nat.add_sub_cancel, A175165.P10073306057520977006.a, A175165.P13391023397149546966.a, A020707, A020707.P16024998955381595964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175165

/-! ## A175165.P5342709560584349230

`A155559(n+4)+a(n-1)` with `a(0)=0`
-/

namespace A175165.P5342709560584349230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A155559 (n + 4) + a (n - 1)

end

end A175165.P5342709560584349230

namespace A175165

/-- `A155559(n+4)+a(n-1)` -/
def P5342709560584349230.Spec : Prop :=
  ∀ n, P5342709560584349230.a n = A175165 n

end A175165

/-! ## A175165.P8240720474185313177

`A186949(n+4)+a(n-1)` with `a(0)=0`
-/

namespace A175165.P8240720474185313177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A186949 (n + 4) + a (n - 1)

end

end A175165.P8240720474185313177

namespace A175165

/-- `A186949(n+4)+a(n-1)` -/
def P8240720474185313177.Spec : Prop :=
  ∀ n, P8240720474185313177.a n = A175165 n

end A175165

/-! ## A175165.P698794002357023549

`lcm((8/2)², A225883(n+1))-(8/2)²`
-/

namespace A175165.P698794002357023549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (SequenceMachineLib.roundAway (((8 : ℚ) / 2) ^ 2)) (A225883 (n + 1)) : ℚ) - ((8 : ℚ) / 2) ^ 2

end

end A175165.P698794002357023549

namespace A175165

/-- `lcm((8/2)², A225883(n+1))-(8/2)²` -/
def P698794002357023549.Spec : Prop :=
  ∀ n, P698794002357023549.a n = (A175165 n : ℚ)

end A175165

/-! ## A175165.P16109862741366443742

`A175164(n)+A175164(n)`
-/

namespace A175165.P16109862741366443742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175164 n + A175164 n

end

end A175165.P16109862741366443742

namespace A175165

/-- `A175164(n)+A175164(n)` -/
def P16109862741366443742.Spec : Prop :=
  ∀ n, P16109862741366443742.a n = A175165 n

theorem P16109862741366443742.correct : P16109862741366443742.Spec := by
  intro n
  simp only [A175165, Nat.add_sub_cancel, A175165.P16109862741366443742.a, A175165.P13391023397149546966.a, A175164, A175164.P8473928831672684715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175165

/-! ## A175165.P635011243266942019

`∑[A146541(log2(A146541(n)))]-1`
-/

namespace A175165.P635011243266942019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146541 (SequenceMachineLib.roundAway (Real.logb 2 (A146541 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A175165.P635011243266942019

namespace A175165

/-- `∑[A146541(log2(A146541(n)))]-1` -/
def P635011243266942019.Spec : Prop :=
  ∀ n, P635011243266942019.a n = A175165 n

end A175165

/-! ## A175165.P8713772972998202278

`A139698(n+1)+A048489(n)-2`
-/

namespace A175165.P8713772972998202278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139698 (n + 1) + (A048489 n - 2)

end

end A175165.P8713772972998202278

namespace A175165

/-- `A139698(n+1)+A048489(n)-2` -/
def P8713772972998202278.Spec : Prop :=
  ∀ n, P8713772972998202278.a n = A175165 n

theorem P8713772972998202278.correct : P8713772972998202278.Spec := by
  intro n
  simp only [A175165, Nat.add_sub_cancel, A175165.P8713772972998202278.a, A175165.P13391023397149546966.a, A048489, A048489.P11253217557276495286.a, A139698, A139698.P268275234337463081.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175165

/-!
# A175166: a(n) = 64*(2^n - 1).

The programs for A175166, the canonical program `A175166.P10305004087690730400` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175166 has offset 0).

The definition of A175166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*(2^n-1)` (program `A175166.P10305004087690730400`, by `A175166.P10305004087690730400.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175166.P10305004087690730400

`64*(2^n-1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175166

/-- `64*(2^n-1)` -/
def P10305004087690730400.Spec : Prop :=
  ∀ n, P10305004087690730400.a n = A175166 n

theorem P10305004087690730400.correct : P10305004087690730400.Spec := by
  intro n
  simp only [A175166]

end A175166

/-! ## A175166.P11411050643087232777

`2*a(n-1)+64` with `a(0)=0`
-/

namespace A175166.P11411050643087232777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + 64

end

end A175166.P11411050643087232777

namespace A175166

/-- `2*a(n-1)+64` -/
def P11411050643087232777.Spec : Prop :=
  ∀ n, (P11411050643087232777.a n : ℤ) = A175166 n

theorem P11411050643087232777.correct : P11411050643087232777.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175166, Nat.add_sub_cancel, A175166.P11411050643087232777.a, A175166.P10305004087690730400.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175166, Nat.add_sub_cancel, A175166.P11411050643087232777.a, A175166.P10305004087690730400.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175166

/-! ## A175166.P4473936045462138314

`or(64, 2*a(n-1))` with `a(0)=0`
-/

namespace A175166.P4473936045462138314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 64 (2 * a (n - 1))

end

end A175166.P4473936045462138314

namespace A175166

/-- `or(64, 2*a(n-1))` -/
def P4473936045462138314.Spec : Prop :=
  ∀ n, (P4473936045462138314.a n : ℤ) = A175166 n

end A175166

/-! ## A175166.P6030241837625158882

`xor(64, 2*a(n-1))` with `a(0)=0`
-/

namespace A175166.P6030241837625158882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 64 (2 * a (n - 1))

end

end A175166.P6030241837625158882

namespace A175166

/-- `xor(64, 2*a(n-1))` -/
def P6030241837625158882.Spec : Prop :=
  ∀ n, (P6030241837625158882.a n : ℤ) = A175166 n

end A175166

/-! ## A175166.P4596205340961973729

`∑[2*a(n-1)]` with `a(0)=0, a(1)=64`
-/

namespace A175166.P4596205340961973729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 64] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175166.P4596205340961973729

namespace A175166

/-- `∑[2*a(n-1)]` -/
def P4596205340961973729.Spec : Prop :=
  ∀ n, (P4596205340961973729.a n : ℤ) = A175166 n

end A175166

/-! ## A175166.P10711386004700467854

`66-2*(1-a(n-1))` with `a(0)=0`
-/

namespace A175166.P10711386004700467854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  66 - 2 * (1 - a (n - 1))

end

end A175166.P10711386004700467854

namespace A175166

/-- `66-2*(1-a(n-1))` -/
def P10711386004700467854.Spec : Prop :=
  ∀ n, P10711386004700467854.a n = A175166 n

theorem P10711386004700467854.correct : P10711386004700467854.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175166, Nat.add_sub_cancel, A175166.P10711386004700467854.a, A175166.P10305004087690730400.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175166, Nat.add_sub_cancel, A175166.P10711386004700467854.a, A175166.P10305004087690730400.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175166

/-! ## A175166.P15614181669459047488

`a(n-1)+2^(n+5)` with `a(0)=0`
-/

namespace A175166.P15614181669459047488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 ^ (n + 5)

end

end A175166.P15614181669459047488

namespace A175166

/-- `a(n-1)+2^(n+5)` -/
def P15614181669459047488.Spec : Prop :=
  ∀ n, (P15614181669459047488.a n : ℤ) = A175166 n

theorem P15614181669459047488.correct : P15614181669459047488.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A175166, Nat.add_sub_cancel, A175166.P15614181669459047488.a, A175166.P10305004087690730400.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A175166, Nat.add_sub_cancel, A175166.P15614181669459047488.a, A175166.P10305004087690730400.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A175166

/-! ## A175166.P3312512203571353055

`A173033(n+4)-60`
-/

namespace A175166.P3312512203571353055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173033 (n + 4) - 60

end

end A175166.P3312512203571353055

namespace A175166

/-- `A173033(n+4)-60` -/
def P3312512203571353055.Spec : Prop :=
  ∀ n, P3312512203571353055.a n = A175166 n

end A175166

/-! ## A175166.P11050170722070820553

`A020707(n+4)-64`
-/

namespace A175166.P11050170722070820553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (n + 4) - 64

end

end A175166.P11050170722070820553

namespace A175166

/-- `A020707(n+4)-64` -/
def P11050170722070820553.Spec : Prop :=
  ∀ n, P11050170722070820553.a n = A175166 n

theorem P11050170722070820553.correct : P11050170722070820553.Spec := by
  intro n
  simp only [A175166, Nat.add_sub_cancel, A175166.P11050170722070820553.a, A175166.P10305004087690730400.a, A020707, A020707.P16024998955381595964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175166

/-! ## A175166.P9701803459578010097

`16*A020707(n)-64`
-/

namespace A175166.P9701803459578010097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A020707 n - 64

end

end A175166.P9701803459578010097

namespace A175166

/-- `16*A020707(n)-64` -/
def P9701803459578010097.Spec : Prop :=
  ∀ n, P9701803459578010097.a n = A175166 n

theorem P9701803459578010097.correct : P9701803459578010097.Spec := by
  intro n
  simp only [A175166, Nat.add_sub_cancel, A175166.P9701803459578010097.a, A175166.P10305004087690730400.a, A020707, A020707.P16024998955381595964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175166

/-! ## A175166.P14518742555607791287

`A175165(n)+A175165(n)`
-/

namespace A175166.P14518742555607791287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175165 n + A175165 n

end

end A175166.P14518742555607791287

namespace A175166

/-- `A175165(n)+A175165(n)` -/
def P14518742555607791287.Spec : Prop :=
  ∀ n, P14518742555607791287.a n = A175166 n

theorem P14518742555607791287.correct : P14518742555607791287.Spec := by
  intro n
  simp only [A175166, Nat.add_sub_cancel, A175166.P14518742555607791287.a, A175166.P10305004087690730400.a, A175165, A175165.P13391023397149546966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175166

/-! ## A175166.P8773520888221687493

`lcm((A040056(n)/2)², A225883(n))`
-/

namespace A175166.P8773520888221687493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (((A040056 n : ℚ) / 2) ^ 2)) (A225883 n)

end

end A175166.P8773520888221687493

namespace A175166

/-- `lcm((A040056(n)/2)², A225883(n))` -/
def P8773520888221687493.Spec : Prop :=
  ∀ n, (P8773520888221687493.a n : ℤ) = A175166 n

end A175166

/-! ## A175166.P8843430831698159181

`A028399(n+2)*A182466(n)/A153893(n)`
-/

namespace A175166.P8843430831698159181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028399 (n + 2) * A182466 n : ℚ) / (A153893 n : ℚ)

end

end A175166.P8843430831698159181

namespace A175166

/-- `A028399(n+2)*A182466(n)/A153893(n)` -/
def P8843430831698159181.Spec : Prop :=
  ∀ n, P8843430831698159181.a n = (A175166 n : ℚ)

end A175166

/-! ## A175166.P3519106663225946348

`A028399(n+2)*A182466(n)/A055010(n+1)`
-/

namespace A175166.P3519106663225946348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028399 (n + 2) * A182466 n : ℚ) / (A055010 (n + 1) : ℚ)

end

end A175166.P3519106663225946348

namespace A175166

/-- `A028399(n+2)*A182466(n)/A055010(n+1)` -/
def P3519106663225946348.Spec : Prop :=
  ∀ n, P3519106663225946348.a n = (A175166 n : ℚ)

end A175166

/-! ## A175166.P9805560725225735245

`A028399(n+3)*A175164(n)/A000225(n+1)`
-/

namespace A175166.P9805560725225735245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028399 (n + 3) * A175164 n : ℚ) / (A000225 (n + 1) : ℚ)

end

end A175166.P9805560725225735245

namespace A175166

/-- `A028399(n+3)*A175164(n)/A000225(n+1)` -/
def P9805560725225735245.Spec : Prop :=
  ∀ n, P9805560725225735245.a n = (A175166 n : ℚ)

end A175166

/-! ## A175166.P14834007709664946103

`A175164(n+1)*A175164(n)/A028399(n+3)`
-/

namespace A175166.P14834007709664946103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175164 (n + 1) * A175164 n : ℚ) / (A028399 (n + 3) : ℚ)

end

end A175166.P14834007709664946103

namespace A175166

/-- `A175164(n+1)*A175164(n)/A028399(n+3)` -/
def P14834007709664946103.Spec : Prop :=
  ∀ n, P14834007709664946103.a n = (A175166 n : ℚ)

end A175166

/-!
# A175167: a(n) = Sum_{j=1..floor(n/2)} binomial(n+j-1,j-1).

The programs for A175167, the canonical program `A175167.P11513884740046432962` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175167 has offset 1).

The definition of A175167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175167.P11513884740046432962

`floor((n+1)/2)*C(n+1+floor((n+1)/2), floor((n+1)/2))/(n+2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175167

/-- `floor((n+1)/2)*C(n+1+floor((n+1)/2), floor((n+1)/2))/(n+2)` -/
def P11513884740046432962.Spec : Prop :=
  ∀ n, P11513884740046432962.a n = (A175167 (n + 1) : ℚ)

end A175167

/-! ## A175167.P1588785849807326606

`(A065942(n+1)-A047749(n+1))/2`
-/

namespace A175167.P1588785849807326606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065942 (n + 1) - A047749 (n + 1) : ℚ) / 2

end

end A175167.P1588785849807326606

namespace A175167

/-- `(A065942(n+1)-A047749(n+1))/2` -/
def P1588785849807326606.Spec : Prop :=
  ∀ n, P1588785849807326606.a n = (A175167 (n + 1) : ℚ)

end A175167

/-! ## A175167.P13822813119299107084

`A099576(n)-A127040(n)`
-/

namespace A175167.P13822813119299107084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099576 n - A127040 n

end

end A175167.P13822813119299107084

namespace A175167

/-- `A099576(n)-A127040(n)` -/
def P13822813119299107084.Spec : Prop :=
  ∀ n, P13822813119299107084.a n = A175167 (n + 1)

end A175167

/-! ## A175167.P11127028014236461479

`C(∑[n%2+1], n+2)`
-/

namespace A175167.P11127028014236461479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2)

end

end A175167.P11127028014236461479

namespace A175167

/-- `C(∑[n%2+1], n+2)` -/
def P11127028014236461479.Spec : Prop :=
  ∀ n, (P11127028014236461479.a n : ℤ) = A175167 (n + 1)

end A175167

/-! ## A175167.P18028621526889712743

`C(∑[gcd(2, n+1)], n+2)`
-/

namespace A175167.P18028621526889712743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2)

end

end A175167.P18028621526889712743

namespace A175167

/-- `C(∑[gcd(2, n+1)], n+2)` -/
def P18028621526889712743.Spec : Prop :=
  ∀ n, (P18028621526889712743.a n : ℤ) = A175167 (n + 1)

end A175167

/-! ## A175167.P14802386251655438713

`C(∑[and(1, n)+1], n+2)`
-/

namespace A175167.P14802386251655438713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2)

end

end A175167.P14802386251655438713

namespace A175167

/-- `C(∑[and(1, n)+1], n+2)` -/
def P14802386251655438713.Spec : Prop :=
  ∀ n, (P14802386251655438713.a n : ℤ) = A175167 (n + 1)

end A175167

/-! ## A175167.P16484642243181924909

`C(floor(3*(n+1)/2), n+2)`
-/

namespace A175167.P16484642243181924909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊3 * ((n + 1 : ℚ) / 2)⌋.toNat (n + 2)

end

end A175167.P16484642243181924909

namespace A175167

/-- `C(floor(3*(n+1)/2), n+2)` -/
def P16484642243181924909.Spec : Prop :=
  ∀ n, (P16484642243181924909.a n : ℤ) = A175167 (n + 1)

end A175167

/-! ## A175167.P3322398885467885966

`A198321(A210981(n+1))`
-/

namespace A175167.P3322398885467885966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (A210981 (n + 1)).toNat

end

end A175167.P3322398885467885966

namespace A175167

/-- `A198321(A210981(n+1))` -/
def P3322398885467885966.Spec : Prop :=
  ∀ n, P3322398885467885966.a n = A175167 (n + 1)

end A175167

/-! ## A175167.P4590030367877584213

`A103631(A132209(n+1))`
-/

namespace A175167.P4590030367877584213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A132209 (n + 1)).toNat

end

end A175167.P4590030367877584213

namespace A175167

/-- `A103631(A132209(n+1))` -/
def P4590030367877584213.Spec : Prop :=
  ∀ n, P4590030367877584213.a n = A175167 (n + 1)

end A175167

/-! ## A175167.P5873568205680801317

`A103631(A142463(n+1))`
-/

namespace A175167.P5873568205680801317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A142463 (n + 1)).toNat

end

end A175167.P5873568205680801317

namespace A175167

/-- `A103631(A142463(n+1))` -/
def P5873568205680801317.Spec : Prop :=
  ∀ n, P5873568205680801317.a n = A175167 (n + 1)

end A175167

/-!
# A175168: Numbers k such that 2^(k-1) mod k is a prime number.

The programs for A175168, there is no canonical definition to state claims against.
-/

/-! ## A175168.P16760484507434922000

`eq[2, A005127(A062173(n+1))]+1`
-/

namespace A175168.P16760484507434922000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (A062173 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175168.P16760484507434922000

/-! ## A175168.P8685563712733690419

`eq[2, ∑{d}[(2^n)%(n+1), gcd(41, #)]]+1`
-/

namespace A175168.P8685563712733690419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), Nat.gcd 41 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175168.P8685563712733690419

/-! ## A175168.P8808873315185417423

`eq[1, A178054(A182256(n)+1)]`
-/

namespace A175168.P8808873315185417423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178054 (A182256 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175168.P8808873315185417423

/-!
# A175170: Primes of the form k^6 - k^3 + 1.

The programs for A175170, there is no canonical definition to state claims against.
-/

/-! ## A175170.P6553333001124348013

`A060891(A164989(n+1))`
-/

namespace A175170.P6553333001124348013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060891 (A164989 (n + 1)).toNat

end

end A175170.P6553333001124348013

/-!
# A175171: Primes p such that 3*2^p-1 is also prime.

The programs for A175171, there is no canonical definition to state claims against.
-/

/-! ## A175171.P5813354606833215795

`p?[A002235(n+1)]`
-/

namespace A175171.P5813354606833215795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175171.P5813354606833215795

/-! ## A175171.P7050201796378157404

`p?[A091997(n+1)-1]`
-/

namespace A175171.P7050201796378157404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091997 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175171.P7050201796378157404

/-! ## A175171.P15359886413013285188

`record[p?[A002235(A007306(n))]]`
-/

namespace A175171.P15359886413013285188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002235 (A007306 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175171.P15359886413013285188

/-! ## A175171.P8023104354288717806

`p?[record[A002235(A126759(n))]]`
-/

namespace A175171.P8023104354288717806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002235 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175171.P8023104354288717806

/-! ## A175171.P8863564380701131377

`∩[A002235(n+1), A039786(n+1)]`
-/

namespace A175171.P8863564380701131377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175171.P8863564380701131377

/-!
# A175173: Primes p such that 2^p + 5 is also prime.

The programs for A175173, there is no canonical definition to state claims against.
-/

/-! ## A175173.P13591244014845375466

`p?[A059242(n+1)]`
-/

namespace A175173.P13591244014845375466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175173.P13591244014845375466

/-! ## A175173.P14670092715361432215

`A059242(record[A061896(n)])`
-/

namespace A175173.P14670092715361432215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175173.P14670092715361432215

/-! ## A175173.P13446200869864512246

`p?[record[A059242(A012257(n))]]`
-/

namespace A175173.P13446200869864512246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059242 (A012257 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175173.P13446200869864512246

/-!
# A175174: Least primitive number k such that 1/k is in the Cantor set and the fraction 1/k has period n in base 3.

The programs for A175174, there is no canonical definition to state claims against.
-/

/-! ## A175174.P3939679229014353266

`A004793(A212953(n+1)%A192292(2*n+5))`
-/

namespace A175174.P3939679229014353266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (Int.tmod (A212953 (n + 1)) (A192292 (2 * n + 5))).toNat

end

end A175174.P3939679229014353266

/-! ## A175174.P8140747447260983418

`A173800(lt[A173800(n+1), 14*n])`
-/

namespace A175174.P8140747447260983418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173800 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173800 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A175174.P8140747447260983418

/-! ## A175174.P18192279833822345783

`A289440(A063427(∑[3*a(n-1)]))` with `a(0)=2`
-/

namespace A175174.P18192279833822345783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A063427 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A175174.P18192279833822345783

/-!
# A175175: Number of primitive numbers k such that 1/k is in the Cantor set and 3^n <= k < 3^(n+1).

The programs for A175175, there is no canonical definition to state claims against.
-/

/-! ## A175175.P4766824578330525403

`Δ[A173784(n)]`
-/

namespace A175175.P4766824578330525403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175175.P4766824578330525403

/-! ## A175175.P360453731091611552

`A173784(n+1)-A173784(n)`
-/

namespace A175175.P360453731091611552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173784 (n + 1) - A173784 n

end

end A175175.P360453731091611552

/-! ## A175175.P4808169823464312311

`record[A173784(A029402(n))]-A173784(n)`
-/

namespace A175175.P4808169823464312311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173784 (A029402 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A173784 n

end

end A175175.P4808169823464312311

/-! ## A175175.P6135873596379324247

`record[A173784(A057979(n))]-A173784(n)`
-/

namespace A175175.P6135873596379324247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173784 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A173784 n

end

end A175175.P6135873596379324247

/-!
# A175176: Number of vector sums of two permutations of 1,2,...,n.

The programs for A175176, there is no canonical definition to state claims against.
-/

/-! ## A175176.P14229148625629104035

`A159797(∏[∑[A347443(n)]])`
-/

namespace A175176.P14229148625629104035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347443 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175176.P14229148625629104035

/-! ## A175176.P12288935038897417192

`A159797(∏[A000045(n+2)])`
-/

namespace A175176.P12288935038897417192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175176.P12288935038897417192

/-!
# A175179: Primes for which value of CRT (Cardinality of rooted tree) is equal to 1.

The programs for A175179, there is no canonical definition to state claims against.
-/

/-! ## A175179.P16459550334376509967

`A000040(eq[1, A175178(n+1)]+1)`
-/

namespace A175179.P16459550334376509967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A175179.P16459550334376509967

/-! ## A175179.P6086613769492848671

`p?[A000040(n+1)*A175178(n+1)]`
-/

namespace A175179.P6086613769492848671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A175178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175179.P6086613769492848671

/-! ## A175179.P1578348265975084218

`record[sqrt(A001248(n+1)/A175178(n+1))]`
-/

namespace A175179.P1578348265975084218
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A001248 (n + 1) : ℚ) / (A175178 (n + 1) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175179.P1578348265975084218

/-! ## A175179.P9301091232169503354

`record[∑[A054541(n+1)]/A175178(n+1)]`
-/

namespace A175179.P9301091232169503354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A175178 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175179.P9301091232169503354

/-! ## A175179.P6725467884059504174

`p?[record[A006530(n+2)]*A175178(n+1)]`
-/

namespace A175179.P6725467884059504174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A175178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175179.P6725467884059504174

/-!
# A175180: Numbers k such that k^2 + 2 is powerful in the sense of A001694.

The programs for A175180, there is no canonical definition to state claims against.
-/

/-! ## A175180.P10122676097990514816

`ceil(sqrt(A388967(n+2)))`
-/

namespace A175180.P10122676097990514816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A388967 (n + 2) : ℝ)⌉

end

end A175180.P10122676097990514816

/-!
# A175181: Pisano period of the 2-Fibonacci numbers A000129.

The programs for A175181, there is no canonical definition to state claims against.
-/

/-! ## A175181.P14280637607926318428

`A214027(n+1)*A214028(n+1)`
-/

namespace A175181.P14280637607926318428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (n + 1) * A214028 (n + 1)

end

end A175181.P14280637607926318428

/-! ## A175181.P7210422729644300319

`A214027(A002522(2*n+1))*A298210(n+1)*A214027(n+1)`
-/

namespace A175181.P7210422729644300319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (A002522 (2 * n + 1)).toNat * A298210 (n + 1) * A214027 (n + 1)

end

end A175181.P7210422729644300319

/-! ## A175181.P12349669942090862018

`A321477(∑[n]+round(sqrt(n²+1)))`
-/

namespace A175181.P12349669942090862018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321477 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A175181.P12349669942090862018

/-! ## A175181.P7782898312891248013

`A214027(n+1)*A321476(∑[n-char[1]]+n+1)`
-/

namespace A175181.P7782898312891248013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (n + 1) * A321476 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1).toNat

end

end A175181.P7782898312891248013

/-!
# A175182: Pisano period of the 3-Fibonacci numbers A006190.

The programs for A175182, there is no canonical definition to state claims against.
-/

/-! ## A175182.P6745728815619149968

`A322906(n+1)*A322907(n+1)`
-/

namespace A175182.P6745728815619149968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (n + 1) * A322907 (n + 1)

end

end A175182.P6745728815619149968

/-! ## A175182.P6445722846719830323

`(A262213(n+1)+a(A158388(n)-1))*A322906(n+1)` with `a(0)=1`
-/

namespace A175182.P6445722846719830323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A262213 (n + 1) + a (A158388 n - 1).toNat) * A322906 (n + 1)

end

end A175182.P6445722846719830323

/-! ## A175182.P8744629683924535332

`(A262213(n+1)+a(A000027(n)-n))*A322906(n+1)` with `a(0)=1`
-/

namespace A175182.P8744629683924535332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A262213 (n + 1) + a (A000027 n - (n : ℤ)).toNat) * A322906 (n + 1)

end

end A175182.P8744629683924535332

/-! ## A175182.P3203927334978684507

`(A262213(A233583(n+2))%(n+1)²+1)*A322906(n+1)`
-/

namespace A175182.P3203927334978684507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A262213 (A233583 (n + 2)).toNat) ((n + 1) ^ 2 : ℤ) + 1) * A322906 (n + 1)

end

end A175182.P3203927334978684507

/-! ## A175182.P17958888341905045939

`(A262213(A003056(∑[n]+1)+1)%(n+1)²+1)*A322906(n+1)`
-/

namespace A175182.P17958888341905045939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A262213 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat) ((n + 1) ^ 2 : ℤ) + 1) * A322906 (n + 1)

end

end A175182.P17958888341905045939

/-! ## A175182.P1857935321163470948

`(A262213(A028310(n)+1)+A158388(n))*A322906(n+1)`
-/

namespace A175182.P1857935321163470948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262213 (A028310 n + 1).toNat + A158388 n) * A322906 (n + 1)

end

end A175182.P1857935321163470948

/-! ## A175182.P5298156745677052153

`(A262213(A233583(n+2))+A158388(n))*A322906(n+1)`
-/

namespace A175182.P5298156745677052153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262213 (A233583 (n + 2)).toNat + A158388 n) * A322906 (n + 1)

end

end A175182.P5298156745677052153

/-! ## A175182.P7613086280699160094

`(A262213(A233583(n+2))+1-A000038(n))*A322906(n+1)`
-/

namespace A175182.P7613086280699160094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262213 (A233583 (n + 2)).toNat + (1 - A000038 n)) * A322906 (n + 1)

end

end A175182.P7613086280699160094

/-! ## A175182.P15026355049468234557

`(A262213(A233583(n+2))-A165326(2*n))*A322906(n+1)`
-/

namespace A175182.P15026355049468234557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262213 (A233583 (n + 2)).toNat - A165326 (2 * n)) * A322906 (n + 1)

end

end A175182.P15026355049468234557

/-!
# A175183: Pisano period of the 4-Fibonacci numbers A001076.

The programs for A175183, there is no canonical definition to state claims against.
-/

/-! ## A175183.P735818033999032911

`A051176(A001175(n+1))+char[1]`
-/

namespace A175183.P735818033999032911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A001175 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A175183.P735818033999032911

/-! ## A175183.P12021788352055372366

`A063524(n)+A051176(A001175(n+1))`
-/

namespace A175183.P12021788352055372366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A051176 (A001175 (n + 1)).toNat

end

end A175183.P12021788352055372366

/-! ## A175183.P8279174263420737338

`A051176(lcm(A000034(n), A001175(n+1)))`
-/

namespace A175183.P8279174263420737338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.lcm (A000034 n) (A001175 (n + 1)))

end

end A175183.P8279174263420737338

/-! ## A175183.P11158304167360842679

`A020639(A001316(n))*A051176(A281230(n+1))`
-/

namespace A175183.P11158304167360842679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A051176 (A281230 (n + 1)).toNat

end

end A175183.P11158304167360842679

/-! ## A175183.P10010248755160224351

`A034444(A034444(n+1))*A051176(A281230(n+1))`
-/

namespace A175183.P10010248755160224351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A034444 (n + 1)).toNat * A051176 (A281230 (n + 1)).toNat

end

end A175183.P10010248755160224351

/-! ## A175183.P1755408728558034243

`A014963(A061142(n+1))*A051176(A281230(n+1))`
-/

namespace A175183.P1755408728558034243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A061142 (n + 1)).toNat * A051176 (A281230 (n + 1)).toNat

end

end A175183.P1755408728558034243

/-! ## A175183.P3668931855169572593

`A051176(A281230(n+1))*A138010(A001747(n+2))`
-/

namespace A175183.P3668931855169572593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A281230 (n + 1)).toNat * A138010 (A001747 (n + 2)).toNat

end

end A175183.P3668931855169572593

/-!
# A175186: a(1)=0. For 1<= n <= 2^m, m>=0, a(n+ 2^m) = a(n)+n.

The programs for A175186, there is no canonical definition to state claims against.
-/

/-! ## A175186.P1359786894872574666

`n-A397672(n+1)`
-/

namespace A175186.P1359786894872574666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A397672 (n + 1)

end

end A175186.P1359786894872574666

/-! ## A175186.P4396752637325232041

`(n*A298011(n))%(n+1)`
-/

namespace A175186.P4396752637325232041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A298011 n) (n + 1 : ℤ)

end

end A175186.P4396752637325232041

/-! ## A175186.P17860975349701019658

`A083741(n+1)+and(n, -(n+2))`
-/

namespace A175186.P17860975349701019658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083741 (n + 1) + Int.land (n : ℤ) (-(n + 2 : ℤ))

end

end A175186.P17860975349701019658

/-! ## A175186.P14697291899844590498

`∑[A000120(n)]+∑[or(n, -n)]+n`
-/

namespace A175186.P14697291899844590498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ))

end

end A175186.P14697291899844590498

/-! ## A175186.P10669224175533628375

`A083741(n)+∑[∑{e}[xor(n, -n), 2-#]]`
-/

namespace A175186.P10669224175533628375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083741 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175186.P10669224175533628375

/-! ## A175186.P4336036094563254438

`n-∑[A005187(n)-n-and(n, n-1)]`
-/

namespace A175186.P4336036094563254438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - (n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175186.P4336036094563254438

/-! ## A175186.P3409456143346249096

`∑[A000120(2*n)]-(∑[and(n, -n)]-n)`
-/

namespace A175186.P3409456143346249096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ))

end

end A175186.P3409456143346249096

/-! ## A175186.P7886133780823740526

`A083741(n)+A000120(n)`
-/

namespace A175186.P7886133780823740526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083741 n + A000120 n

end

end A175186.P7886133780823740526

/-! ## A175186.P9435198923967145525

`A000788(n)-A136013(n)`
-/

namespace A175186.P9435198923967145525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n - A136013 n

end

end A175186.P9435198923967145525

/-! ## A175186.P17831584984227413347

`A298043(n)-A011371(n)`
-/

namespace A175186.P17831584984227413347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298043 n - A011371 n

end

end A175186.P17831584984227413347

/-!
# A175187: a(n) = A175186(n)+n.

The programs for A175187, there is no canonical definition to state claims against.
-/

/-! ## A175187.P1201323305622505413

`A175186(n+1)+n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175187.P1201323305622505413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175186 (n + 1) + (n + 1 : ℤ)

end

end A175187.P1201323305622505413

/-! ## A175187.P10642550098313329382

`a(n-2^floor(log2(n)))+1+n` with `a(0)=1`
-/

namespace A175187.P10642550098313329382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 2 ^ Nat.log 2 n) + 1 + n

end

end A175187.P10642550098313329382

/-! ## A175187.P13218258768693009613

`Δ[n²]-(n-a(n-2^floor(log2(n))))` with `a(0)=1`
-/

namespace A175187.P13218258768693009613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - a (n - 2 ^ Nat.log 2 n))

end

end A175187.P13218258768693009613

/-! ## A175187.P5565972310712766688

`2*n-(n-a(n-2^floor(log2(n))))-or(1, -n)%2` with `a(0)=1`
-/

namespace A175187.P5565972310712766688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - a (n - 2 ^ Nat.log 2 n)) - Int.tmod (Int.lor 1 (-(n : ℤ))) 2

end

end A175187.P5565972310712766688

/-! ## A175187.P5043911547756051569

`n+1+a(A053645(n))` with `a(0)=1`
-/

namespace A175187.P5043911547756051569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A053645 n).toNat

end

end A175187.P5043911547756051569

/-! ## A175187.P15535849877610447813

`Δ[n²]-A397672(n+1)`
-/

namespace A175187.P15535849877610447813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A397672 (n + 1)

end

end A175187.P15535849877610447813

/-! ## A175187.P15777950710504291557

`a(A062050(n)-1)+n+1` with `a(0)=1`
-/

namespace A175187.P15777950710504291557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A062050 n - 1).toNat + (n + 1)

end

end A175187.P15777950710504291557

/-! ## A175187.P2455055146115273240

`a(A164089(2*n))+n+1` with `a(0)=1`
-/

namespace A175187.P2455055146115273240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A164089 (2 * n)).toNat + (n + 1)

end

end A175187.P2455055146115273240

/-! ## A175187.P6148406399649531637

`A083741(n+1)+or(n, n+1)`
-/

namespace A175187.P6148406399649531637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083741 (n + 1) + (Nat.lor n (n + 1) : ℤ)

end

end A175187.P6148406399649531637

/-! ## A175187.P10164334829500239710

`a(n-A053644(n))+n+1` with `a(0)=1`
-/

namespace A175187.P10164334829500239710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A053644 n).toNat + (n + 1)

end

end A175187.P10164334829500239710

/-!
# A175190: Number of irreducible factors in the factorization of the polynomial x^n + x + 1 over the integers mod 2.

The programs for A175190, there is no canonical definition to state claims against.
-/

/-! ## A175190.P943212791340606255

`A001221(A347803(n)+A014743(n))`
-/

namespace A175190.P943212791340606255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A347803 n + A014743 n).toNat

end

end A175190.P943212791340606255

/-! ## A175190.P15289599516503747862

`A001221(and(A041067(n), A083329(n)))`
-/

namespace A175190.P15289599516503747862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.land (A041067 n) (A083329 n)).toNat

end

end A175190.P15289599516503747862

/-! ## A175190.P15322368823494248143

`A124766(A003757(n)%A054753(n+1))`
-/

namespace A175190.P15322368823494248143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (Int.tmod (A003757 n) (A054753 (n + 1))).toNat

end

end A175190.P15322368823494248143

/-! ## A175190.P9894812636341796928

`A001221(A172317(n)+A128834(n))`
-/

namespace A175190.P9894812636341796928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A172317 n + A128834 n).toNat

end

end A175190.P9894812636341796928

/-! ## A175190.P6678145128791717491

`A000120(A234713(n)^A240021(3*(n+1)))`
-/

namespace A175190.P6678145128791717491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A234713 n : ℚ) ^ (A240021 (3 * (n + 1)) : ℤ))).toNat

end

end A175190.P6678145128791717491

/-!
# A175191: a(n) = the smallest positive integer such that (the n-th prime)+2*a(n) is composite.

The programs for A175191, the canonical program `A175191.P2783859153547134366` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175191 has offset 1).

The definition of A175191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175191.P5292260700619913220

`A054546(A014689(n+2))`
-/

namespace A175191.P5292260700619913220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (A014689 (n + 2)).toNat

end

end A175191.P5292260700619913220

namespace A175191

/-- `A054546(A014689(n+2))` -/
def P5292260700619913220.Spec : Prop :=
  ∀ n, P5292260700619913220.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P7370622823502750416

`A175933(A006093(n+2))+1`
-/

namespace A175191.P7370622823502750416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (A006093 (n + 2)).toNat + 1

end

end A175191.P7370622823502750416

namespace A175191

/-- `A175933(A006093(n+2))+1` -/
def P7370622823502750416.Spec : Prop :=
  ∀ n, P7370622823502750416.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P17232607625227059761

`A054546(A014692(n+2)-1)`
-/

namespace A175191.P17232607625227059761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (A014692 (n + 2) - 1).toNat

end

end A175191.P17232607625227059761

namespace A175191

/-- `A054546(A014692(n+2)-1)` -/
def P17232607625227059761.Spec : Prop :=
  ∀ n, P17232607625227059761.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P8356339918430751433

`A054546(lt[1, A054546(n+1)])`
-/

namespace A175191.P8356339918430751433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A175191.P8356339918430751433

namespace A175191

/-- `A054546(lt[1, A054546(n+1)])` -/
def P8356339918430751433.Spec : Prop :=
  ∀ n, P8356339918430751433.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P5940916805997245410

`A054546(A040976(n+2)-n)`
-/

namespace A175191.P5940916805997245410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (A040976 (n + 2) - (n : ℤ)).toNat

end

end A175191.P5940916805997245410

namespace A175191

/-- `A054546(A040976(n+2)-n)` -/
def P5940916805997245410.Spec : Prop :=
  ∀ n, P5940916805997245410.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P5550711916037223176

`A054546(∑[A054541(n+2)]-n)`
-/

namespace A175191.P5550711916037223176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A175191.P5550711916037223176

namespace A175191

/-- `A054546(∑[A054541(n+2)]-n)` -/
def P5550711916037223176.Spec : Prop :=
  ∀ n, P5550711916037223176.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P2783859153547134366

`A104435(n+1)-A106002(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175191

/-- `A104435(n+1)-A106002(n+1)` -/
def P2783859153547134366.Spec : Prop :=
  ∀ n, P2783859153547134366.a n = A175191 (n + 1)

theorem P2783859153547134366.correct : P2783859153547134366.Spec := by
  intro n
  simp only [A175191, Nat.add_sub_cancel]

end A175191

/-! ## A175191.P9061107218278626551

`A054546(A006093(n+2)-(n+1))`
-/

namespace A175191.P9061107218278626551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (A006093 (n + 2) - (n + 1 : ℤ)).toNat

end

end A175191.P9061107218278626551

namespace A175191

/-- `A054546(A006093(n+2)-(n+1))` -/
def P9061107218278626551.Spec : Prop :=
  ∀ n, P9061107218278626551.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P48642601303388516

`A054546(A000040(n+2)-(n+2))`
-/

namespace A175191.P48642601303388516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (A000040 (n + 2) - (n + 2 : ℤ)).toNat

end

end A175191.P48642601303388516

namespace A175191

/-- `A054546(A000040(n+2)-(n+2))` -/
def P48642601303388516.Spec : Prop :=
  ∀ n, P48642601303388516.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P6531564740297836911

`A054546(A008578(n+3)-(n+2))`
-/

namespace A175191.P6531564740297836911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (A008578 (n + 3) - (n + 2 : ℤ)).toNat

end

end A175191.P6531564740297836911

namespace A175191

/-- `A054546(A008578(n+3)-(n+2))` -/
def P6531564740297836911.Spec : Prop :=
  ∀ n, P6531564740297836911.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P279329990721566569

`A095248(Δ[A007504(n+1)]-1)-1`
-/

namespace A175191.P279329990721566569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095248 (f1 (n + 1) - f1 n - 1).toNat - 1

end

end A175191.P279329990721566569

namespace A175191

/-- `A095248(Δ[A007504(n+1)]-1)-1` -/
def P279329990721566569.Spec : Prop :=
  ∀ n, P279329990721566569.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P12865237614804704762

`A095248(eq[1, A095248(n+2)]+1)-1`
-/

namespace A175191.P12865237614804704762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A175191.P12865237614804704762

namespace A175191

/-- `A095248(eq[1, A095248(n+2)]+1)-1` -/
def P12865237614804704762.Spec : Prop :=
  ∀ n, P12865237614804704762.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P16052400988157467066

`A001222(a(A001223(n+1)/2)+1)` with `a(0)=1, a(1)=3`
-/

namespace A175191.P16052400988157467066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A001222 (a (SequenceMachineLib.roundAway ((A001223 (n + 1) : ℚ) / 2)).toNat + 1).toNat

end

end A175191.P16052400988157467066

namespace A175191

/-- `A001222(a(A001223(n+1)/2)+1)` -/
def P16052400988157467066.Spec : Prop :=
  ∀ n, P16052400988157467066.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P1949285111703055655

`A054546(A000720(A065994(n+2)))`
-/

namespace A175191.P1949285111703055655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (A000720 (A065994 (n + 2)).toNat).toNat

end

end A175191.P1949285111703055655

namespace A175191

/-- `A054546(A000720(A065994(n+2)))` -/
def P1949285111703055655.Spec : Prop :=
  ∀ n, P1949285111703055655.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P12361753281815133079

`A054546(A065308(A002808(n+1))-(n+2))`
-/

namespace A175191.P12361753281815133079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (A065308 (A002808 (n + 1)).toNat - (n + 2 : ℤ)).toNat

end

end A175191.P12361753281815133079

namespace A175191

/-- `A054546(A065308(A002808(n+1))-(n+2))` -/
def P12361753281815133079.Spec : Prop :=
  ∀ n, P12361753281815133079.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P15266721337394104213

`A067513(n*A010051(n+1)+1)+A062301(n+2)`
-/

namespace A175191.P15266721337394104213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 ((n : ℤ) * A010051 (n + 1) + 1).toNat + A062301 (n + 2)

end

end A175191.P15266721337394104213

namespace A175191

/-- `A067513(n*A010051(n+1)+1)+A062301(n+2)` -/
def P15266721337394104213.Spec : Prop :=
  ∀ n, P15266721337394104213.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P1781995127130293059

`A054546(A000720(A065308(A000040(n+2))))`
-/

namespace A175191.P1781995127130293059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (A000720 (A065308 (A000040 (n + 2)).toNat).toNat).toNat

end

end A175191.P1781995127130293059

namespace A175191

/-- `A054546(A000720(A065308(A000040(n+2))))` -/
def P1781995127130293059.Spec : Prop :=
  ∀ n, P1781995127130293059.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P14102340836965168977

`A141468(A014692(n+2))-A141468(A014689(n+2))`
-/

namespace A175191.P14102340836965168977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A014692 (n + 2)).toNat - A141468 (A014689 (n + 2)).toNat

end

end A175191.P14102340836965168977

namespace A175191

/-- `A141468(A014692(n+2))-A141468(A014689(n+2))` -/
def P14102340836965168977.Spec : Prop :=
  ∀ n, P14102340836965168977.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P8146817864406969773

`A054546(A000720(A065308(A065308(A002808(n+1)))))`
-/

namespace A175191.P8146817864406969773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (A000720 (A065308 (A065308 (A002808 (n + 1)).toNat).toNat).toNat).toNat

end

end A175191.P8146817864406969773

namespace A175191

/-- `A054546(A000720(A065308(A065308(A002808(n+1)))))` -/
def P8146817864406969773.Spec : Prop :=
  ∀ n, P8146817864406969773.a n = A175191 (n + 1)

end A175191

/-! ## A175191.P2593642246847753608

`A322976(A074845(n+2))`
-/

namespace A175191.P2593642246847753608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322976 (A074845 (n + 2)).toNat

end

end A175191.P2593642246847753608

namespace A175191

/-- `A322976(A074845(n+2))` -/
def P2593642246847753608.Spec : Prop :=
  ∀ n, P2593642246847753608.a n = A175191 (n + 1)

end A175191

/-!
# A175192: a(n) = characteristic function of numbers k such that A000203(m) = k has solution, where A000203(m) = sums of divisors of m.

The programs for A175192, the canonical program `A175192.P1621049955634462593` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175192 has offset 1).

The definition of A175192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175192.P5773065648891705945

`1-A175253(n+1)`
-/

namespace A175192.P5773065648891705945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A175253 (n + 1)

end

end A175192.P5773065648891705945

namespace A175192

/-- `1-A175253(n+1)` -/
def P5773065648891705945.Spec : Prop :=
  ∀ n, P5773065648891705945.a n = A175192 (n + 1)

theorem P5773065648891705945.correct : P5773065648891705945.Spec := by
  intro n
  simp only [A175192, Nat.add_sub_cancel, A175192.P5773065648891705945.a, A175192.P1621049955634462593.f1, A175192.P1621049955634462593.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A175253, A175253.P7822939282831738553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175192

/-! ## A175192.P1351618918861986216

`round(atan(A286011(n+1)))`
-/

namespace A175192.P1351618918861986216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A286011 (n + 1) : ℝ))

end

end A175192.P1351618918861986216

namespace A175192

/-- `round(atan(A286011(n+1)))` -/
def P1351618918861986216.Spec : Prop :=
  ∀ n, P1351618918861986216.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P1621049955634462593

`char[A000203(n+1)-1]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175192

/-- `char[A000203(n+1)-1]` -/
def P1621049955634462593.Spec : Prop :=
  ∀ n, (P1621049955634462593.a n : ℤ) = A175192 (n + 1)

theorem P1621049955634462593.correct : P1621049955634462593.Spec := by
  intro n
  simp only [A175192, Nat.add_sub_cancel]

end A175192

/-! ## A175192.P7284348856574079385

`char[A002191(n+1)-1]`
-/

namespace A175192.P7284348856574079385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A175192.P7284348856574079385

namespace A175192

/-- `char[A002191(n+1)-1]` -/
def P7284348856574079385.Spec : Prop :=
  ∀ n, (P7284348856574079385.a n : ℤ) = A175192 (n + 1)

end A175192

/-! ## A175192.P16112816036768070944

`char[A090128(n+1)-1]`
-/

namespace A175192.P16112816036768070944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090128 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A175192.P16112816036768070944

namespace A175192

/-- `char[A090128(n+1)-1]` -/
def P16112816036768070944.Spec : Prop :=
  ∀ n, (P16112816036768070944.a n : ℤ) = A175192 (n + 1)

end A175192

/-! ## A175192.P10001618692749713868

`round(sqrt(atan(A258913(n+1))))`
-/

namespace A175192.P10001618692749713868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.arctan (A258913 (n + 1) : ℝ)))

end

end A175192.P10001618692749713868

namespace A175192

/-- `round(sqrt(atan(A258913(n+1))))` -/
def P10001618692749713868.Spec : Prop :=
  ∀ n, P10001618692749713868.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P18039017687858679208

`1-floor(acot(A054973(n+1)))`
-/

namespace A175192.P18039017687858679208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊SequenceMachineLib.acot (A054973 (n + 1) : ℝ)⌋

end

end A175192.P18039017687858679208

namespace A175192

/-- `1-floor(acot(A054973(n+1)))` -/
def P18039017687858679208.Spec : Prop :=
  ∀ n, P18039017687858679208.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P6719017719499752440

`1-floor(1/A283524(n+1))`
-/

namespace A175192.P6719017719499752440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊1 / (A283524 (n + 1) : ℚ)⌋

end

end A175192.P6719017719499752440

namespace A175192

/-- `1-floor(1/A283524(n+1))` -/
def P6719017719499752440.Spec : Prop :=
  ∀ n, P6719017719499752440.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P323443449133151351

`1-char[A007369(n+1)-1]`
-/

namespace A175192.P323443449133151351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A175192.P323443449133151351

namespace A175192

/-- `1-char[A007369(n+1)-1]` -/
def P323443449133151351.Spec : Prop :=
  ∀ n, P323443449133151351.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P16765505413320841994

`ceil(A051444(n+1)/(n+1))`
-/

namespace A175192.P16765505413320841994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051444 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A175192.P16765505413320841994

namespace A175192

/-- `ceil(A051444(n+1)/(n+1))` -/
def P16765505413320841994.Spec : Prop :=
  ∀ n, P16765505413320841994.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P4695819493629568574

`ceil(A057637(n+1)/(n+1))`
-/

namespace A175192.P4695819493629568574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057637 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A175192.P4695819493629568574

namespace A175192

/-- `ceil(A057637(n+1)/(n+1))` -/
def P4695819493629568574.Spec : Prop :=
  ∀ n, P4695819493629568574.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P9846163243897391915

`ceil(A240667(n+1)/(n+1))`
-/

namespace A175192.P9846163243897391915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A240667 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A175192.P9846163243897391915

namespace A175192

/-- `ceil(A240667(n+1)/(n+1))` -/
def P9846163243897391915.Spec : Prop :=
  ∀ n, P9846163243897391915.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P1614165744727178862

`A000007(A072612(n+1))`
-/

namespace A175192.P1614165744727178862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A072612 (n + 1)).toNat

end

end A175192.P1614165744727178862

namespace A175192

/-- `A000007(A072612(n+1))` -/
def P1614165744727178862.Spec : Prop :=
  ∀ n, P1614165744727178862.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P13665278029510563749

`A057427(A051444(n+1))`
-/

namespace A175192.P13665278029510563749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A051444 (n + 1)).toNat

end

end A175192.P13665278029510563749

namespace A175192

/-- `A057427(A051444(n+1))` -/
def P13665278029510563749.Spec : Prop :=
  ∀ n, P13665278029510563749.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P11608464695665846902

`A057427(A057637(n+1))`
-/

namespace A175192.P11608464695665846902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A057637 (n + 1)).toNat

end

end A175192.P11608464695665846902

namespace A175192

/-- `A057427(A057637(n+1))` -/
def P11608464695665846902.Spec : Prop :=
  ∀ n, P11608464695665846902.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P3984685217029929721

`A057427(A240667(n+1))`
-/

namespace A175192.P3984685217029929721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A240667 (n + 1)).toNat

end

end A175192.P3984685217029929721

namespace A175192

/-- `A057427(A240667(n+1))` -/
def P3984685217029929721.Spec : Prop :=
  ∀ n, P3984685217029929721.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P3039678060947433189

`A132199(n+1)%A283524(n+1)`
-/

namespace A175192.P3039678060947433189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132199 (n + 1)) (A283524 (n + 1))

end

end A175192.P3039678060947433189

namespace A175192

/-- `A132199(n+1)%A283524(n+1)` -/
def P3039678060947433189.Spec : Prop :=
  ∀ n, P3039678060947433189.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P16082323924622778324

`A134743(n+1)%A283524(n+1)`
-/

namespace A175192.P16082323924622778324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134743 (n + 1)) (A283524 (n + 1))

end

end A175192.P16082323924622778324

namespace A175192

/-- `A134743(n+1)%A283524(n+1)` -/
def P16082323924622778324.Spec : Prop :=
  ∀ n, P16082323924622778324.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P16589789692717595948

`A204120(n+1)%A283524(n+1)`
-/

namespace A175192.P16589789692717595948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204120 (n + 1)) (A283524 (n + 1))

end

end A175192.P16589789692717595948

namespace A175192

/-- `A204120(n+1)%A283524(n+1)` -/
def P16589789692717595948.Spec : Prop :=
  ∀ n, P16589789692717595948.a n = A175192 (n + 1)

end A175192

/-! ## A175192.P5190184618224775709

`A204125(n+1)%A283524(n+1)`
-/

namespace A175192.P5190184618224775709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204125 (n + 1)) (A283524 (n + 1))

end

end A175192.P5190184618224775709

namespace A175192

/-- `A204125(n+1)%A283524(n+1)` -/
def P5190184618224775709.Spec : Prop :=
  ∀ n, P5190184618224775709.a n = A175192 (n + 1)

end A175192

/-!
# A175193: a(n) is the smallest positive integer such that (the n-th prime)+a(n)! is prime, or -1 if no such prime exists.

The programs for A175193, there is no canonical definition to state claims against.
-/

/-! ## A175193.P11147906170513564540

`A245714(Δ[A007504(n)])`
-/

namespace A175193.P11147906170513564540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (f1 (n + 1) - f1 n).toNat

end

end A175193.P11147906170513564540

/-! ## A175193.P8853978619164528625

`A245714(record[A110560(n)])`
-/

namespace A175193.P8853978619164528625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175193.P8853978619164528625

/-! ## A175193.P8606073365398482700

`A245714(record[A162753(n)])`
-/

namespace A175193.P8606073365398482700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175193.P8606073365398482700

/-! ## A175193.P1347215069229141960

`A245714(A000040(n+1))`
-/

namespace A175193.P1347215069229141960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (A000040 (n + 1)).toNat

end

end A175193.P1347215069229141960

/-! ## A175193.P9080224048143546047

`A245714(A006005(n+1))`
-/

namespace A175193.P9080224048143546047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (A006005 (n + 1)).toNat

end

end A175193.P9080224048143546047

/-! ## A175193.P11838765674820488658

`A245714(A008578(n+2))`
-/

namespace A175193.P11838765674820488658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (A008578 (n + 2)).toNat

end

end A175193.P11838765674820488658

/-! ## A175193.P3057327642602757558

`A245714(A075643(n+2))`
-/

namespace A175193.P3057327642602757558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (A075643 (n + 2)).toNat

end

end A175193.P3057327642602757558

/-! ## A175193.P3702770267068499186

`A245714(A182986(n+2))`
-/

namespace A175193.P3702770267068499186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (A182986 (n + 2)).toNat

end

end A175193.P3702770267068499186

/-! ## A175193.P2916447663905639501

`A245714(record[A006530(n+2)])`
-/

namespace A175193.P2916447663905639501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175193.P2916447663905639501

/-! ## A175193.P8605003985730624149

`A245714(record[A014963(n+2)])`
-/

namespace A175193.P8605003985730624149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175193.P8605003985730624149

/-! ## A175193.P970170148376247158

`A245714(record[A020639(n+2)])`
-/

namespace A175193.P970170148376247158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175193.P970170148376247158

/-! ## A175193.P8927731363440240589

`A245714(eq[1, A245714(n+1)]+2)`
-/

namespace A175193.P8927731363440240589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A175193.P8927731363440240589

/-! ## A175193.P5367107866000143869

`A245714(A007504(n+1)-A007504(n))`
-/

namespace A175193.P5367107866000143869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (A007504 (n + 1) - A007504 n).toNat

end

end A175193.P5367107866000143869

/-!
# A175194: a(n) = the smallest factorial such that (the n-th prime)+a(n) is prime, or -1 if no such prime exists.

The programs for A175194, there is no canonical definition to state claims against.
-/

/-! ## A175194.P15735318789677723488

`A175193(n+1)!`
-/

namespace A175194.P15735318789677723488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A175193 (n + 1)).toNat

end

end A175194.P15735318789677723488

/-! ## A175194.P13190838912887746372

`A245714(p?[xor(1, n)+1])!`
-/

namespace A175194.P13190838912887746372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A245714 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A175194.P13190838912887746372

/-! ## A175194.P9506204812333371330

`A245714(Δ[A007504(n)])!`
-/

namespace A175194.P9506204812333371330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A245714 (f1 (n + 1) - f1 n).toNat).toNat

end

end A175194.P9506204812333371330

/-! ## A175194.P14561313066007028494

`A245714(record[A110560(n)])!`
-/

namespace A175194.P14561313066007028494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A245714 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A175194.P14561313066007028494

/-! ## A175194.P1325521791784391713

`A245714(A000040(n+1))!`
-/

namespace A175194.P1325521791784391713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A245714 (A000040 (n + 1)).toNat).toNat

end

end A175194.P1325521791784391713

/-! ## A175194.P2517492223825206719

`A245714(A006005(n+1))!`
-/

namespace A175194.P2517492223825206719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A245714 (A006005 (n + 1)).toNat).toNat

end

end A175194.P2517492223825206719

/-! ## A175194.P9300274759630254434

`A245714(record[A006530(n+2)])!`
-/

namespace A175194.P9300274759630254434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A245714 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A175194.P9300274759630254434

/-! ## A175194.P14878582890467963720

`A245714(record[A014963(n+2)])!`
-/

namespace A175194.P14878582890467963720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A245714 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A175194.P14878582890467963720

/-! ## A175194.P7596369036228119903

`A245714(record[A020639(n+2)])!`
-/

namespace A175194.P7596369036228119903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A245714 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A175194.P7596369036228119903

/-! ## A175194.P12877635350380819587

`A092789(n+1)-A000040(n+1)`
-/

namespace A175194.P12877635350380819587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092789 (n + 1) - A000040 (n + 1)

end

end A175194.P12877635350380819587

/-!
# A175195: a(0)=1. For n >=1, a(n) = the smallest positive multiple of a(n-1) such that (the n-th prime)+a(n) is prime.

The programs for A175195, there is no canonical definition to state claims against.
-/

/-! ## A175195.P16507341631387546778

`∏[A003989(∑[A178901(n+1)])]`
-/

namespace A175195.P16507341631387546778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178901 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175195.P16507341631387546778

/-! ## A175195.P1487899065179828899

`∏[A092334(A092293(3*n))]`
-/

namespace A175195.P1487899065179828899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092334 (A092293 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175195.P1487899065179828899

/-! ## A175195.P3162237297219044365

`∏[A001222(∑[A110542(n+1)])]`
-/

namespace A175195.P3162237297219044365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110542 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175195.P3162237297219044365

/-! ## A175195.P12285838350700621802

`∏[A043277(A220770(n))]`
-/

namespace A175195.P12285838350700621802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A220770 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175195.P12285838350700621802

/-! ## A175195.P9309459797133788992

`∏[A328481(Δ[A328521(n)])]`
-/

namespace A175195.P9309459797133788992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328521 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328481 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175195.P9309459797133788992

/-!
# A175196: a(n) = the n-th prime + A175195(n).

The programs for A175196, there is no canonical definition to state claims against.
-/

/-! ## A175196.P5561878192404364079

`A175195(n+1)+A000040(n+1)`
-/

namespace A175196.P5561878192404364079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175195 (n + 1) + A000040 (n + 1)

end

end A175196.P5561878192404364079

/-! ## A175196.P1148801705691829047

`A175195(n+1)+record[A006530(n+2)]`
-/

namespace A175196.P1148801705691829047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175195 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175196.P1148801705691829047

/-! ## A175196.P2082306570966043585

`A175195(n+1)+record[A014963(n+2)]`
-/

namespace A175196.P2082306570966043585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175195 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175196.P2082306570966043585

/-! ## A175196.P8093469705549317315

`A175195(n+1)+record[A020639(n+2)]`
-/

namespace A175196.P8093469705549317315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175195 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175196.P8093469705549317315

/-! ## A175196.P4156978273187972876

`A175195(n+1)+record[A000010(n+1)]+1`
-/

namespace A175196.P4156978273187972876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175195 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A175196.P4156978273187972876

/-!
# A175197: Array A(k,n) of the number of points of the A_k lattice with maximum infinity norm n, read by antidiagonals.

The programs for A175197, there is no canonical definition to state claims against.
-/

/-! ## A175197.P14248654666097863174

`A257686(A108998(A018895(n)+n))`
-/

namespace A175197.P14248654666097863174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257686 (A108998 (A018895 n + (n : ℤ)).toNat).toNat

end

end A175197.P14248654666097863174

/-! ## A175197.P12691758823783388432

`A123068(A266213(n)+A257565(n))`
-/

namespace A175197.P12691758823783388432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A266213 n + A257565 n).toNat

end

end A175197.P12691758823783388432

/-! ## A175197.P876923138207815357

`A175427(A266213(n)+A257565(n))`
-/

namespace A175197.P876923138207815357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A266213 n + A257565 n).toNat

end

end A175197.P876923138207815357

/-! ## A175197.P6301007082297743679

`A257686(or(A018895(n), A108998(n)))`
-/

namespace A175197.P6301007082297743679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257686 (Int.lor (A018895 n) (A108998 n)).toNat

end

end A175197.P6301007082297743679

/-! ## A175197.P5659341533315716722

`A383900(A249157(n+1))`
-/

namespace A175197.P5659341533315716722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383900 (A249157 (n + 1)).toNat

end

end A175197.P5659341533315716722

