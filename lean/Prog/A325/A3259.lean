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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
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
import Seq.B002.C006
import Seq.B003.C000
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C012
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
# A325901: Numbers having at least two representations as multinomial coefficients M(n;lambda), where lambda is a partition of n into distinct parts.

The programs for A325901, there is no canonical definition to state claims against.
-/

/-! ## A325901.P2549259196589723133

`lt[A290858(n²), A003016(n)]`
-/

namespace A325901.P2549259196589723133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290858 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325901.P2549259196589723133

/-! ## A325901.P9795049081181376493

`lt[A003016(A047966(n+1)), A003016(n)]`
-/

namespace A325901.P9795049081181376493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (A047966 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325901.P9795049081181376493

/-! ## A325901.P15326659309429609460

`lt[A003016(A053219(n+1)), A003016(n)]`
-/

namespace A325901.P15326659309429609460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (A053219 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325901.P15326659309429609460

/-! ## A325901.P5276664037652924732

`eq[A003016(A138797(n+2)), A003016(n)]`
-/

namespace A325901.P5276664037652924732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (A138797 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325901.P5276664037652924732

/-! ## A325901.P12845483767249238295

`lt[A003016(A344296(n+2)), A003016(n)]`
-/

namespace A325901.P12845483767249238295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (A344296 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325901.P12845483767249238295

/-!
# A325903: Numbers having at least three representations as multinomial coefficients M(n;lambda), where lambda is a partition of n into distinct parts.

The programs for A325903, there is no canonical definition to state claims against.
-/

/-! ## A325903.P2842017492825062716

`A325593(A106108(n+1)^A051724(n))`
-/

namespace A325903.P2842017492825062716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325593 (SequenceMachineLib.roundAway ((A106108 (n + 1) : ℚ) ^ (A051724 n : ℤ))).toNat

end

end A325903.P2842017492825062716

/-!
# A325906: a(n) = ( (-1)^n * Sum_{k=0..n-2} (-1)^k*10^(2^k) + 10^(2^(n-1)) - ((-1)^n+3)/2 )/9.

The programs for A325906, there is no canonical definition to state claims against.
-/

/-! ## A325906.P1947960282728362711

`A325907(n+1)/3`
-/

namespace A325906.P1947960282728362711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325907 (n + 1) : ℚ) / 3

end

end A325906.P1947960282728362711

/-! ## A325906.P11458991994383444818

`A325910(n)+A002275(2^n)`
-/

namespace A325906.P11458991994383444818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325910 n + A002275 (2 ^ n)

end

end A325906.P11458991994383444818

/-!
# A325907: a(n) = ( (-1)^n * Sum_{k=0..n-2} (-1)^k*10^(2^k) + 10^(2^(n-1)) - ((-1)^n+3)/2 )/3.

The programs for A325907, there is no canonical definition to state claims against.
-/

/-! ## A325907.P12260809846395325900

`3*A325906(n+1)`
-/

namespace A325907.P12260809846395325900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A325906 (n + 1)

end

end A325907.P12260809846395325900

/-!
# A325908: The largest k such that an integer x between 1 and k (inclusive) can be guessed in at most n queries "is x < y?" with one lie.

The programs for A325908, there is no canonical definition to state claims against.
-/

/-! ## A325908.P9079578002794765843

`A359536(A331330(n))`
-/

namespace A325908.P9079578002794765843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359536 (A331330 n).toNat

end

end A325908.P9079578002794765843

/-! ## A325908.P755203551336828125

`A003056(A380805(comp[2*n])+1)`
-/

namespace A325908.P755203551336828125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A380805 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A325908.P755203551336828125

/-! ## A325908.P6475749436643277161

`A232746(A303204(n)+A060130(n))`
-/

namespace A325908.P6475749436643277161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A303204 n + A060130 n).toNat

end

end A325908.P6475749436643277161

/-! ## A325908.P9581164315684302502

`A232746(A303204(n)+A090001(n))`
-/

namespace A325908.P9581164315684302502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A303204 n + A090001 n).toNat

end

end A325908.P9581164315684302502

/-! ## A325908.P5715044221008149850

`A232746(A355427(n)+A303204(n))`
-/

namespace A325908.P5715044221008149850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A355427 n + A303204 n).toNat

end

end A325908.P5715044221008149850

/-!
# A325909: Lexicographically earliest sequence of distinct positive terms such that for any n > 0, n divides Sum_{k = 1..n} (-1)^k * a(k).

The programs for A325909, there is no canonical definition to state claims against.
-/

/-! ## A325909.P16318563471763180835

`abs(1-Δ[n*(n+1)%3])`
-/

namespace A325909.P16318563471763180835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A325909.P16318563471763180835

/-! ## A325909.P7759542572778476349

`C(n+1, n*n%3)+n`
-/

namespace A325909.P7759542572778476349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (n * (n % 3)) + n

end

end A325909.P7759542572778476349

/-! ## A325909.P1566204215426721317

`lcm(2, Δ[n²%3+n²])/2`
-/

namespace A325909.P1566204215426721317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3 + n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A325909.P1566204215426721317

/-! ## A325909.P780358335241666810

`∑[Δ[C(n, a(n-1)²)]+1]` with `a(0)=1`
-/

namespace A325909.P780358335241666810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.choose n (f2 (n - 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325909.P780358335241666810

/-! ## A325909.P10643349450658964653

`Δ[∪[∑[3*n], 6*n²-1]]`
-/

namespace A325909.P10643349450658964653
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325909.P10643349450658964653

/-! ## A325909.P13944121255485187742

`C(n+1, C(a(n-1), n)²)+n` with `a(0)=1`
-/

namespace A325909.P13944121255485187742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (n + 1) (Nat.choose (a (n - 1)) n ^ 2) + n

end

end A325909.P13944121255485187742

/-! ## A325909.P13296471357414121901

`((n+2)%3+1+n)%(n+2)+n`
-/

namespace A325909.P13296471357414121901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) % 3 + 1 + n) % (n + 2) + n

end

end A325909.P13296471357414121901

/-! ## A325909.P11209576286885855197

`C(A064429(n), n)+n`
-/

namespace A325909.P11209576286885855197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A064429 n).toNat n + n

end

end A325909.P11209576286885855197

/-! ## A325909.P11133054799724500728

`abs(Δ[n*A092220(n)])`
-/

namespace A325909.P11133054799724500728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A092220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325909.P11133054799724500728

/-! ## A325909.P14580398224897999802

`abs(Δ[n*A102283(n)])`
-/

namespace A325909.P14580398224897999802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A325909.P14580398224897999802

/-!
# A325910: a(n) = ( (-1)^(n-1) * Sum_{k=0..n-1} (-1)^k*10^(2^k) - (1-(-1)^n)/2 )/9.

The programs for A325910, there is no canonical definition to state claims against.
-/

/-! ## A325910.P2921287027150339867

`A325906(n+1)-A002275(2^n)`
-/

namespace A325910.P2921287027150339867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325906 (n + 1) - A002275 (2 ^ n)

end

end A325910.P2921287027150339867

/-!
# A325911: Screaming numbers in base 16: numbers whose hexadecimal representation is AAAAAAA...

The programs for A325911, the canonical program `A325911.P4943304661791504299` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325911 has offset 1).

The definition of A325911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325911.P1114560842895133683

`10*(16^(n+1)-1)/15`
-/

namespace A325911.P1114560842895133683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * (((16 ^ (n + 1) : ℤ) - 1 : ℚ) / 15)

end

end A325911.P1114560842895133683

namespace A325911

/-- `10*(16^(n+1)-1)/15` -/
def P1114560842895133683.Spec : Prop :=
  ∀ n, P1114560842895133683.a n = (A325911 (n + 1) : ℚ)

theorem P1114560842895133683.correct : P1114560842895133683.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A325911, Nat.add_sub_cancel, A325911.P1114560842895133683.a, A325911.P4943304661791504299.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A325911, Nat.add_sub_cancel, A325911.P1114560842895133683.a, A325911.P4943304661791504299.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A325911

/-! ## A325911.P4943304661791504299

`17*a(n-1)-16*a(n-2)` with `a(0)=10, a(1)=170`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A325911

/-- `17*a(n-1)-16*a(n-2)` -/
def P4943304661791504299.Spec : Prop :=
  ∀ n, P4943304661791504299.a n = A325911 (n + 1)

theorem P4943304661791504299.correct : P4943304661791504299.Spec := by
  intro n
  simp only [A325911, Nat.add_sub_cancel]

end A325911

/-! ## A325911.P5150696272975891361

`16*a(n-1)+10` with `a(0)=10`
-/

namespace A325911.P5150696272975891361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  16 * a (n - 1) + 10

end

end A325911.P5150696272975891361

namespace A325911

/-- `16*a(n-1)+10` -/
def P5150696272975891361.Spec : Prop :=
  ∀ n, (P5150696272975891361.a n : ℤ) = A325911 (n + 1)

end A325911

/-! ## A325911.P12373465814761663520

`or(10, 16*a(n-1))` with `a(0)=10`
-/

namespace A325911.P12373465814761663520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  Nat.lor 10 (16 * a (n - 1))

end

end A325911.P12373465814761663520

namespace A325911

/-- `or(10, 16*a(n-1))` -/
def P12373465814761663520.Spec : Prop :=
  ∀ n, (P12373465814761663520.a n : ℤ) = A325911 (n + 1)

end A325911

/-! ## A325911.P9713001421432711866

`xor(10, 16*a(n-1))` with `a(0)=10`
-/

namespace A325911.P9713001421432711866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  Nat.xor 10 (16 * a (n - 1))

end

end A325911.P9713001421432711866

namespace A325911

/-- `xor(10, 16*a(n-1))` -/
def P9713001421432711866.Spec : Prop :=
  ∀ n, (P9713001421432711866.a n : ℤ) = A325911 (n + 1)

end A325911

/-! ## A325911.P860963379231025329

`floor(∑[16*a(n-1)])` with `a(0)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A325911.P860963379231025329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  16 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325911.P860963379231025329

namespace A325911

/-- `floor(∑[16*a(n-1)])` -/
def P860963379231025329.Spec : Prop :=
  ∀ n, (P860963379231025329.a n : ℤ) = A325911 (n + 1)

end A325911

/-! ## A325911.P5325017401321804399

`ceil(∑[16*a(n-1)])` with `a(0)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A325911.P5325017401321804399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  16 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325911.P5325017401321804399

namespace A325911

/-- `ceil(∑[16*a(n-1)])` -/
def P5325017401321804399.Spec : Prop :=
  ∀ n, (P5325017401321804399.a n : ℤ) = A325911 (n + 1)

end A325911

/-!
# A325912: a(n) = (-1)^n * Sum_{k=0..n} (-1)^k*2^(2^k).

The programs for A325912, the canonical program `A325912.P16718850207318004596` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325912 has offset 0).

The definition of A325912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325912.P16718850207318004596

`A001146(n)-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A325912

/-- `A001146(n)-a(n-1)` -/
def P16718850207318004596.Spec : Prop :=
  ∀ n, P16718850207318004596.a n = A325912 n

theorem P16718850207318004596.correct : P16718850207318004596.Spec := by
  intro n
  simp only [A325912]

end A325912

/-! ## A325912.P12823572356472011816

`2^2^n-a(n-1)` with `a(0)=2`
-/

namespace A325912.P12823572356472011816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (2 ^ 2 ^ n : ℤ) - a (n - 1)

end

end A325912.P12823572356472011816

namespace A325912

/-- `2^2^n-a(n-1)` -/
def P12823572356472011816.Spec : Prop :=
  ∀ n, P12823572356472011816.a n = A325912 n

end A325912

/-!
# A325913: Integers m such that there are exactly two powers of 2 between 3^m and 3^(m+1).

The programs for A325913, the canonical program `A325913.P4452241317005607291` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325913 has offset 1).

The definition of A325913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325913.P4452241317005607291

`floor((n+1)/(log2(3)-1))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A325913

/-- `floor((n+1)/(log2(3)-1))` -/
def P4452241317005607291.Spec : Prop :=
  ∀ n, P4452241317005607291.a n = A325913 (n + 1)

theorem P4452241317005607291.correct : P4452241317005607291.Spec := by
  intro n
  simp only [A325913, Nat.add_sub_cancel]

end A325913

/-! ## A325913.P603967899904146744

`comp[A020914(n)-2]-n`
-/

namespace A325913.P603967899904146744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A325913.P603967899904146744

namespace A325913

/-- `comp[A020914(n)-2]-n` -/
def P603967899904146744.Spec : Prop :=
  ∀ n, P603967899904146744.a n = A325913 (n + 1)

end A325913

/-! ## A325913.P12663477463004610498

`A117630(n+1)-(n+1)`
-/

namespace A325913.P12663477463004610498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117630 (n + 1) - (n + 1 : ℤ)

end

end A325913.P12663477463004610498

namespace A325913

/-- `A117630(n+1)-(n+1)` -/
def P12663477463004610498.Spec : Prop :=
  ∀ n, P12663477463004610498.a n = A325913 (n + 1)

end A325913

/-! ## A325913.P12990383276343300560

`∑[Δ[A054414(n)]-1]`
-/

namespace A325913.P12990383276343300560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325913.P12990383276343300560

namespace A325913

/-- `∑[Δ[A054414(n)]-1]` -/
def P12990383276343300560.Spec : Prop :=
  ∀ n, P12990383276343300560.a n = A325913 (n + 1)

end A325913

/-! ## A325913.P9663506630149122030

`n+1+A368131(n+1)`
-/

namespace A325913.P9663506630149122030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A368131 (n + 1)

end

end A325913.P9663506630149122030

namespace A325913

/-- `n+1+A368131(n+1)` -/
def P9663506630149122030.Spec : Prop :=
  ∀ n, P9663506630149122030.a n = A325913 (n + 1)

end A325913

/-! ## A325913.P617676616895025560

`A054414(n+1)-(n+2)`
-/

namespace A325913.P617676616895025560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 (n + 1) - (n + 2 : ℤ)

end

end A325913.P617676616895025560

namespace A325913

/-- `A054414(n+1)-(n+2)` -/
def P617676616895025560.Spec : Prop :=
  ∀ n, P617676616895025560.a n = A325913 (n + 1)

end A325913

/-! ## A325913.P18252856972097173133

`∑[A003986(Δ[A054414(n)])]`
-/

namespace A325913.P18252856972097173133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325913.P18252856972097173133

namespace A325913

/-- `∑[A003986(Δ[A054414(n)])]` -/
def P18252856972097173133.Spec : Prop :=
  ∀ n, P18252856972097173133.a n = A325913 (n + 1)

end A325913

/-! ## A325913.P2208387623509414031

`A185050(n)-2`
-/

namespace A325913.P2208387623509414031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185050 n - 2

end

end A325913.P2208387623509414031

namespace A325913

/-- `A185050(n)-2` -/
def P2208387623509414031.Spec : Prop :=
  ∀ n, P2208387623509414031.a n = A325913 (n + 1)

end A325913

/-! ## A325913.P4391538815318413845

`lt[n, n*A022921(n)]`
-/

namespace A325913.P4391538815318413845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A022921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A325913.P4391538815318413845

namespace A325913

/-- `lt[n, n*A022921(n)]` -/
def P4391538815318413845.Spec : Prop :=
  ∀ n, (P4391538815318413845.a n : ℤ) = A325913 (n + 1)

end A325913

/-! ## A325913.P2262488979369528057

`lt[n, n*Δ[A056576(n)]]`
-/

namespace A325913.P2262488979369528057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f3 (n + 1) - f3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A325913.P2262488979369528057

namespace A325913

/-- `lt[n, n*Δ[A056576(n)]]` -/
def P2262488979369528057.Spec : Prop :=
  ∀ n, (P2262488979369528057.a n : ℤ) = A325913 (n + 1)

end A325913

/-! ## A325913.P6709090549243903124

`eq[2, A093476(n+2)]+1`
-/

namespace A325913.P6709090549243903124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093476 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325913.P6709090549243903124

namespace A325913

/-- `eq[2, A093476(n+2)]+1` -/
def P6709090549243903124.Spec : Prop :=
  ∀ n, (P6709090549243903124.a n : ℤ) = A325913 (n + 1)

end A325913

/-! ## A325913.P272333909029971922

`A022921(a(n-1)+2)+a(n-1)` with `a(0)=1`
-/

namespace A325913.P272333909029971922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022921 (a (n - 1) + 2).toNat + a (n - 1)

end

end A325913.P272333909029971922

namespace A325913

/-- `A022921(a(n-1)+2)+a(n-1)` -/
def P272333909029971922.Spec : Prop :=
  ∀ n, P272333909029971922.a n = A325913 (n + 1)

end A325913

/-! ## A325913.P12608656259495534256

`lt[A022927(n), A022921(n)²]`
-/

namespace A325913.P12608656259495534256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325913.P12608656259495534256

namespace A325913

/-- `lt[A022927(n), A022921(n)²]` -/
def P12608656259495534256.Spec : Prop :=
  ∀ n, (P12608656259495534256.a n : ℤ) = A325913 (n + 1)

end A325913

/-! ## A325913.P9263951803727351780

`A023443(A117630(n+1)-n)`
-/

namespace A325913.P9263951803727351780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A117630 (n + 1) - (n : ℤ)).toNat

end

end A325913.P9263951803727351780

namespace A325913

/-- `A023443(A117630(n+1)-n)` -/
def P9263951803727351780.Spec : Prop :=
  ∀ n, P9263951803727351780.a n = A325913 (n + 1)

end A325913

/-! ## A325913.P811858653834963062

`eq[A022921(n), A165063(n+1)]`
-/

namespace A325913.P811858653834963062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325913.P811858653834963062

namespace A325913

/-- `eq[A022921(n), A165063(n+1)]` -/
def P811858653834963062.Spec : Prop :=
  ∀ n, (P811858653834963062.a n : ℤ) = A325913 (n + 1)

end A325913

/-! ## A325913.P12918329976960114966

`eq[A022921(n), A236213(n+1)]`
-/

namespace A325913.P12918329976960114966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325913.P12918329976960114966

namespace A325913

/-- `eq[A022921(n), A236213(n+1)]` -/
def P12918329976960114966.Spec : Prop :=
  ∀ n, (P12918329976960114966.a n : ℤ) = A325913 (n + 1)

end A325913

/-! ## A325913.P4945933176007032267

`lt[atan(A022911(n+1)), A022921(n)]`
-/

namespace A325913.P4945933176007032267
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A022911 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A325913.P4945933176007032267

namespace A325913

/-- `lt[atan(A022911(n+1)), A022921(n)]` -/
def P4945933176007032267.Spec : Prop :=
  ∀ n, (P4945933176007032267.a n : ℤ) = A325913 (n + 1)

end A325913

/-! ## A325913.P16485250761825551477

`A014682(record[(n+1)*A022921(n+1)])`
-/

namespace A325913.P16485250761825551477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A022921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A325913.P16485250761825551477

namespace A325913

/-- `A014682(record[(n+1)*A022921(n+1)])` -/
def P16485250761825551477.Spec : Prop :=
  ∀ n, P16485250761825551477.a n = A325913 (n + 1)

end A325913

/-!
# A325914: 

The programs for A325914, there is no canonical definition to state claims against.
-/

/-! ## A325914.P16420049768912564892

`A092440(A006598(n+1))`
-/

namespace A325914.P16420049768912564892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092440 (A006598 (n + 1)).toNat

end

end A325914.P16420049768912564892

/-!
# A325915: Total number of colors used in all colored integer partitions of n where all colors from an initial interval of the color palette are used and parts differ by size or by color.

The programs for A325915, there is no canonical definition to state claims against.
-/

/-! ## A325915.P9571791579514820741

`A110655(A294782(n)-A003114(n))`
-/

namespace A325915.P9571791579514820741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A294782 n - A003114 n).toNat

end

end A325915.P9571791579514820741

/-! ## A325915.P10610362426911408900

`A110655(A294782(n)-A035363(n))`
-/

namespace A325915.P10610362426911408900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A294782 n - A035363 n).toNat

end

end A325915.P10610362426911408900

/-! ## A325915.P14612592122443974196

`A110655(A294782(n)-A103563(n))`
-/

namespace A325915.P14612592122443974196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A294782 n - A103563 n).toNat

end

end A325915.P14612592122443974196

/-! ## A325915.P7489993336855190127

`A110655(A294782(n)-A293985(n))`
-/

namespace A325915.P7489993336855190127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A294782 n - A293985 n).toNat

end

end A325915.P7489993336855190127

/-! ## A325915.P10275361584935833630

`A110655(A294782(n)-A317239(n))`
-/

namespace A325915.P10275361584935833630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A294782 n - A317239 n).toNat

end

end A325915.P10275361584935833630

/-!
# A325916: Number of partitions of n into colored blocks of equal parts with colors from a set of size n such that the block with largest parts has the first color.

The programs for A325916, there is no canonical definition to state claims against.
-/

/-! ## A325916.P14331573887221312928

`A321880(n)/A028310(n)`
-/

namespace A325916.P14331573887221312928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321880 n : ℚ) / (A028310 n : ℚ)

end

end A325916.P14331573887221312928

/-! ## A325916.P13930797562201353065

`A321880(n)/A065033(2*n)`
-/

namespace A325916.P13930797562201353065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321880 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A325916.P13930797562201353065

/-! ## A325916.P2686377734212539535

`A321880(n)/A123108(2*n)`
-/

namespace A325916.P2686377734212539535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321880 n : ℚ) / (A123108 (2 * n) : ℚ)

end

end A325916.P2686377734212539535

/-! ## A325916.P4291477435163715480

`A321880(n)/A007318(A000124(n))`
-/

namespace A325916.P4291477435163715480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321880 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A325916.P4291477435163715480

/-! ## A325916.P12199674718232921253

`A321880(n)/A003056(∑[n]+1)`
-/

namespace A325916.P12199674718232921253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321880 n : ℚ) / (A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A325916.P12199674718232921253

/-!
# A325917: Number of Motzkin meanders of length n with an even number of humps and without peaks.

The programs for A325917, there is no canonical definition to state claims against.
-/

/-! ## A325917.P9043042230744679105

`A091964(n)-A325919(n)`
-/

namespace A325917.P9043042230744679105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091964 n - A325919 n

end

end A325917.P9043042230744679105

/-! ## A325917.P14625032752533287731

`A088518(Δ[n²])-A325919(n)`
-/

namespace A325917.P14625032752533287731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A325919 n

end

end A325917.P14625032752533287731

/-! ## A325917.P11589941133382002861

`A329703(Δ[n²])-A325919(n)`
-/

namespace A325917.P11589941133382002861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329703 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A325919 n

end

end A325917.P11589941133382002861

/-! ## A325917.P17639455551036661749

`∑[A088518(2*n)]-A325919(n)`
-/

namespace A325917.P17639455551036661749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325919 n

end

end A325917.P17639455551036661749

/-! ## A325917.P17604536184610589751

`A078678(n+1)/2-A325919(n)`
-/

namespace A325917.P17604536184610589751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078678 (n + 1) : ℚ) / 2 - (A325919 n : ℚ)

end

end A325917.P17604536184610589751

/-!
# A325918: Number of Motzkin excursions of length n with an even number of humps and without peaks.

The programs for A325918, there is no canonical definition to state claims against.
-/

/-! ## A325918.P10963935704659077543

`A004148(n)-A325920(n)`
-/

namespace A325918.P10963935704659077543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 n - A325920 n

end

end A325918.P10963935704659077543

/-! ## A325918.P15287624803707459499

`A203019(n+2)-A325920(n)`
-/

namespace A325918.P15287624803707459499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (n + 2) - A325920 n

end

end A325918.P15287624803707459499

/-! ## A325918.P13691431251274774691

`A292460(abs(1-n))-A325920(n)`
-/

namespace A325918.P13691431251274774691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 |1 - (n : ℤ)|.toNat - A325920 n

end

end A325918.P13691431251274774691

/-! ## A325918.P1911006204360439412

`abs(A292461(n+2))-A325920(n)`
-/

namespace A325918.P1911006204360439412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292461 (n + 2)| - A325920 n

end

end A325918.P1911006204360439412

/-! ## A325918.P4676911181635346928

`A097724(∑[n])-A325920(n)`
-/

namespace A325918.P4676911181635346928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097724 (∑ j ∈ Finset.range (n + 1), f1 j) - A325920 n

end

end A325918.P4676911181635346928

/-!
# A325919: Number of Motzkin meanders of length n with an odd number of humps and without peaks.

The programs for A325919, there is no canonical definition to state claims against.
-/

/-! ## A325919.P6906846492128669657

`A091964(n)-A325917(n)`
-/

namespace A325919.P6906846492128669657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091964 n - A325917 n

end

end A325919.P6906846492128669657

/-! ## A325919.P927222106291652415

`A088518(Δ[n²])-A325917(n)`
-/

namespace A325919.P927222106291652415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A325917 n

end

end A325919.P927222106291652415

/-! ## A325919.P7468855833134993384

`A329703(Δ[n²])-A325917(n)`
-/

namespace A325919.P7468855833134993384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329703 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A325917 n

end

end A325919.P7468855833134993384

/-! ## A325919.P231789363849801770

`∑[A088518(2*n)]-A325917(n)`
-/

namespace A325919.P231789363849801770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325917 n

end

end A325919.P231789363849801770

/-! ## A325919.P9993418037922578304

`A078678(n+1)/2-A325917(n)`
-/

namespace A325919.P9993418037922578304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078678 (n + 1) : ℚ) / 2 - (A325917 n : ℚ)

end

end A325919.P9993418037922578304

/-!
# A325920: Number of Motzkin excursions of length n with an odd number of humps and without peaks.

The programs for A325920, there is no canonical definition to state claims against.
-/

/-! ## A325920.P1596177978106487959

`A004148(n)-A325918(n)`
-/

namespace A325920.P1596177978106487959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 n - A325918 n

end

end A325920.P1596177978106487959

/-! ## A325920.P10614576038776883482

`A203019(n+2)-A325918(n)`
-/

namespace A325920.P10614576038776883482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (n + 2) - A325918 n

end

end A325920.P10614576038776883482

/-! ## A325920.P173927462089477727

`A292460(abs(1-n))-A325918(n)`
-/

namespace A325920.P173927462089477727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 |1 - (n : ℤ)|.toNat - A325918 n

end

end A325920.P173927462089477727

/-! ## A325920.P10948425261665440878

`abs(A292461(n+2))-A325918(n)`
-/

namespace A325920.P10948425261665440878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292461 (n + 2)| - A325918 n

end

end A325920.P10948425261665440878

/-! ## A325920.P9584427006782321449

`A097724(∑[n])-A325918(n)`
-/

namespace A325920.P9584427006782321449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097724 (∑ j ∈ Finset.range (n + 1), f1 j) - A325918 n

end

end A325920.P9584427006782321449

/-!
# A325921: Number of Motzkin meanders of length n with an even number of humps and an even number of peaks.

The programs for A325921, there is no canonical definition to state claims against.
-/

/-! ## A325921.P6505375710904659300

`A307555(n)-A325925(n)`
-/

namespace A325921.P6505375710904659300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307555 n - A325925 n

end

end A325921.P6505375710904659300

/-! ## A325921.P1185299958790884448

`A307575(n)-A325923(n)`
-/

namespace A325921.P1185299958790884448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307575 n - A325923 n

end

end A325921.P1185299958790884448

/-! ## A325921.P9192644352270048808

`A005773(n+1)-A307572(n)-A325925(n)`
-/

namespace A325921.P9192644352270048808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - A307572 n - A325925 n

end

end A325921.P9192644352270048808

/-! ## A325921.P6922584906487577903

`A038622(∑[n])-A307572(n)-A325925(n)`
-/

namespace A325921.P6922584906487577903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (∑ j ∈ Finset.range (n + 1), f1 j) - A307572 n - A325925 n

end

end A325921.P6922584906487577903

/-! ## A325921.P5580870128133505741

`record[A038622(n)]-A307572(n)-A325925(n)`
-/

namespace A325921.P5580870128133505741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A307572 n - A325925 n

end

end A325921.P5580870128133505741

/-!
# A325922: Number of Motzkin excursions of length n with an even number of humps and an even number of peaks.

The programs for A325922, there is no canonical definition to state claims against.
-/

/-! ## A325922.P4258621987240712658

`A307564(n)-A325926(n)`
-/

namespace A325922.P4258621987240712658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307564 n - A325926 n

end

end A325922.P4258621987240712658

/-! ## A325922.P4785735699366635124

`A307576(n)-A325924(n)`
-/

namespace A325922.P4785735699366635124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307576 n - A325924 n

end

end A325922.P4785735699366635124

/-! ## A325922.P15180424169076549881

`A307564(n)+A325928(n)-A307578(n)`
-/

namespace A325922.P15180424169076549881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307564 n + (A325928 n - A307578 n)

end

end A325922.P15180424169076549881

/-! ## A325922.P1148127443378679752

`A001006(n)-(A325924(n)+A307578(n))`
-/

namespace A325922.P1148127443378679752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - (A325924 n + A307578 n)

end

end A325922.P1148127443378679752

/-! ## A325922.P16004500804851211498

`A001006(n)-(A325926(n)+A307573(n))`
-/

namespace A325922.P16004500804851211498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - (A325926 n + A307573 n)

end

end A325922.P16004500804851211498

/-!
# A325923: Number of Motzkin meanders of length n with an odd number of humps and an even number of peaks.

The programs for A325923, there is no canonical definition to state claims against.
-/

/-! ## A325923.P17647709173678811809

`A307572(n)-A325927(n)`
-/

namespace A325923.P17647709173678811809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307572 n - A325927 n

end

end A325923.P17647709173678811809

/-! ## A325923.P1537956309062270714

`A307575(n)-A325921(n)`
-/

namespace A325923.P1537956309062270714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307575 n - A325921 n

end

end A325923.P1537956309062270714

/-! ## A325923.P9241470832017297410

`A307572(n)%A325927(round(acot(n)+n))`
-/

namespace A325923.P9241470832017297410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307572 n) (A325927 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A325923.P9241470832017297410

/-! ## A325923.P13149786585244016263

`A307575(A028310(n))%A325921(n)`
-/

namespace A325923.P13149786585244016263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307575 (A028310 n).toNat) (A325921 n)

end

end A325923.P13149786585244016263

/-! ## A325923.P12457708327243923011

`A307575(n)+A325925(n)-A307555(n)`
-/

namespace A325923.P12457708327243923011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307575 n + (A325925 n - A307555 n)

end

end A325923.P12457708327243923011

/-! ## A325923.P7663703089479057016

`A005773(n+1)-(A325921(n)+A307577(n))`
-/

namespace A325923.P7663703089479057016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - (A325921 n + A307577 n)

end

end A325923.P7663703089479057016

/-!
# A325924: Number of Motzkin excursions of length n with an odd number of humps and an even number of peaks.

The programs for A325924, there is no canonical definition to state claims against.
-/

/-! ## A325924.P14754156981429944713

`A307573(n)-A325928(n)`
-/

namespace A325924.P14754156981429944713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307573 n - A325928 n

end

end A325924.P14754156981429944713

/-! ## A325924.P18016866563592651707

`A307576(n)-A325922(n)`
-/

namespace A325924.P18016866563592651707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307576 n - A325922 n

end

end A325924.P18016866563592651707

/-! ## A325924.P10073079538676227044

`A307573(n)%A325928(A233583(n+1))`
-/

namespace A325924.P10073079538676227044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307573 n) (A325928 (A233583 (n + 1)).toNat)

end

end A325924.P10073079538676227044

/-! ## A325924.P5634245312644182423

`A307576(n)+A325926(n)-A307564(n)`
-/

namespace A325924.P5634245312644182423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307576 n + (A325926 n - A307564 n)

end

end A325924.P5634245312644182423

/-! ## A325924.P6115110231832250218

`A307573(n)+A325926(n)-A307578(n)`
-/

namespace A325924.P6115110231832250218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307573 n + (A325926 n - A307578 n)

end

end A325924.P6115110231832250218

/-! ## A325924.P4990591978949909415

`A001006(n)-(A325928(n)+A307564(n))`
-/

namespace A325924.P4990591978949909415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - (A325928 n + A307564 n)

end

end A325924.P4990591978949909415

/-!
# A325925: Number of Motzkin meanders of length n with an even number of humps and an odd number of peaks.

The programs for A325925, there is no canonical definition to state claims against.
-/

/-! ## A325925.P14873819750790021709

`A307555(n)-A325921(n)`
-/

namespace A325925.P14873819750790021709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307555 n - A325921 n

end

end A325925.P14873819750790021709

/-! ## A325925.P16639776992476432781

`A307577(n)-A325927(n)`
-/

namespace A325925.P16639776992476432781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307577 n - A325927 n

end

end A325925.P16639776992476432781

/-! ## A325925.P4552751975122538628

`A307555(A028310(n))%A325921(n)`
-/

namespace A325925.P4552751975122538628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307555 (A028310 n).toNat) (A325921 n)

end

end A325925.P4552751975122538628

/-! ## A325925.P2494438982249691345

`A307555(n)+A325923(n)-A307575(n)`
-/

namespace A325925.P2494438982249691345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307555 n + (A325923 n - A307575 n)

end

end A325925.P2494438982249691345

/-! ## A325925.P818023899223181355

`A005773(n+1)-A307572(n)-A325921(n)`
-/

namespace A325925.P818023899223181355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - A307572 n - A325921 n

end

end A325925.P818023899223181355

/-! ## A325925.P13652727283509117881

`A001006(n)+A005774(n)-A307572(n)-A325921(n)`
-/

namespace A325925.P13652727283509117881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + (A005774 n - A307572 n) - A325921 n

end

end A325925.P13652727283509117881

/-! ## A325925.P11051307216151265686

`A307575(n)+A307577(n)-A307572(n)-A325921(n)`
-/

namespace A325925.P11051307216151265686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307575 n + (A307577 n - A307572 n) - A325921 n

end

end A325925.P11051307216151265686

/-!
# A325926: Number of Motzkin excursions of length n with an even number of humps and an odd number of peaks.

The programs for A325926, there is no canonical definition to state claims against.
-/

/-! ## A325926.P5504771368589236259

`A307564(n)-A325922(n)`
-/

namespace A325926.P5504771368589236259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307564 n - A325922 n

end

end A325926.P5504771368589236259

/-! ## A325926.P12950760739234063240

`A307578(n)-A325928(n)`
-/

namespace A325926.P12950760739234063240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307578 n - A325928 n

end

end A325926.P12950760739234063240

/-! ## A325926.P9813256911019711300

`A307564(n)+A325924(n)-A307576(n)`
-/

namespace A325926.P9813256911019711300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307564 n + (A325924 n - A307576 n)

end

end A325926.P9813256911019711300

/-! ## A325926.P16829815944795059777

`A307578(n)+A325924(n)-A307573(n)`
-/

namespace A325926.P16829815944795059777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307578 n + (A325924 n - A307573 n)

end

end A325926.P16829815944795059777

/-! ## A325926.P16269122587342275856

`A001006(n)-(A325928(n)+A307576(n))`
-/

namespace A325926.P16269122587342275856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - (A325928 n + A307576 n)

end

end A325926.P16269122587342275856

/-! ## A325926.P5476265512038686959

`A064189(∑[n])-A307576(n)-A325928(n)`
-/

namespace A325926.P5476265512038686959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j) - A307576 n - A325928 n

end

end A325926.P5476265512038686959

/-!
# A325927: Number of Motzkin meanders of length n with an odd number of humps and an odd number of peaks.

The programs for A325927, there is no canonical definition to state claims against.
-/

/-! ## A325927.P12491294654415963342

`A307572(n)-A325923(n)`
-/

namespace A325927.P12491294654415963342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307572 n - A325923 n

end

end A325927.P12491294654415963342

/-! ## A325927.P12294564285604835341

`A307577(n)-A325925(n)`
-/

namespace A325927.P12294564285604835341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307577 n - A325925 n

end

end A325927.P12294564285604835341

/-! ## A325927.P3314833513314461633

`A307577(n)+A325921(n)-A307555(n)`
-/

namespace A325927.P3314833513314461633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307577 n + (A325921 n - A307555 n)

end

end A325927.P3314833513314461633

/-! ## A325927.P15407623065192545992

`A307572(n)+A325921(n)-A307575(n)`
-/

namespace A325927.P15407623065192545992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307572 n + (A325921 n - A307575 n)

end

end A325927.P15407623065192545992

/-! ## A325927.P1705128810870092933

`A038622(∑[n])-A307555(n)-A325923(n)`
-/

namespace A325927.P1705128810870092933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (∑ j ∈ Finset.range (n + 1), f1 j) - A307555 n - A325923 n

end

end A325927.P1705128810870092933

/-!
# A325928: Number of Motzkin excursions of length n with an odd number of humps and an odd number of peaks.

The programs for A325928, there is no canonical definition to state claims against.
-/

/-! ## A325928.P1310695842051751484

`A307573(n)-A325924(n)`
-/

namespace A325928.P1310695842051751484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307573 n - A325924 n

end

end A325928.P1310695842051751484

/-! ## A325928.P8306676170212872822

`A307578(n)-A325926(n)`
-/

namespace A325928.P8306676170212872822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307578 n - A325926 n

end

end A325928.P8306676170212872822

/-! ## A325928.P7114904755747889219

`A001006(n)-(A325924(n)+A307564(n))`
-/

namespace A325928.P7114904755747889219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - (A325924 n + A307564 n)

end

end A325928.P7114904755747889219

/-! ## A325928.P17867992271802998202

`A001006(n)-(A325926(n)+A307576(n))`
-/

namespace A325928.P17867992271802998202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - (A325926 n + A307576 n)

end

end A325928.P17867992271802998202

/-! ## A325928.P16704639373069933960

`A064189(∑[n])-A307576(n)-A325926(n)`
-/

namespace A325928.P16704639373069933960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j) - A307576 n - A325926 n

end

end A325928.P16704639373069933960

/-!
# A325929: Total number of sub-subsets of set partitions of [n] where each subset is again partitioned into nonempty subsets.

The programs for A325929, there is no canonical definition to state claims against.
-/

/-! ## A325929.P6196069060553326727

`ceil(Δ[A276974(∑[4*n])]/2)`
-/

namespace A325929.P6196069060553326727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276974 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 2⌉

end

end A325929.P6196069060553326727

/-!
# A325930: Total number of colors used in all colored set partitions of [n] where colors of the elements of subsets are distinct and in increasing order and the colors span an initial interval of the color palette.

The programs for A325930, there is no canonical definition to state claims against.
-/

/-! ## A325930.P241948153119986884

`A037474(2*(n+1)*a(n-1))+1` with `a(0)=0`
-/

namespace A325930.P241948153119986884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A037474 ((2 * (n + 1) : ℤ) * a (n - 1)).toNat + 1

end

end A325930.P241948153119986884

/-!
# A325931: Signs of first differences of A076042.

The programs for A325931, there is no canonical definition to state claims against.
-/

/-! ## A325931.P6169882837845583604

`(-1)^comp[a(n-1)+a(n-2)+1]` with `a(0)=1, a(1)=1`
-/

namespace A325931.P6169882837845583604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A325931.P6169882837845583604

/-! ## A325931.P3450331727578249376

`2*and(1, comp[a(n-1)+a(n-2)])-1` with `a(0)=0, a(1)=2`
-/

namespace A325931.P3450331727578249376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) - 1

end

end A325931.P3450331727578249376

/-! ## A325931.P9474265944499625166

`Δ[A325933(n)]`
-/

namespace A325931.P9474265944499625166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325931.P9474265944499625166

/-! ## A325931.P10293019069625813489

`(-1)^comp[A001595(n)]`
-/

namespace A325931.P10293019069625813489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A325931.P10293019069625813489

/-! ## A325931.P8555969315738406041

`(-1)^comp[∑[A006355(n)]]`
-/

namespace A325931.P8555969315738406041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A325931.P8555969315738406041

/-! ## A325931.P2951204676948888343

`Δ[A076042(n)]%(n+2)`
-/

namespace A325931.P2951204676948888343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 2 : ℤ)

end

end A325931.P2951204676948888343

/-! ## A325931.P2440604607527546687

`(-1)^(3-comp[2*A000045(n)])`
-/

namespace A325931.P2440604607527546687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (3 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) : ℤ)

end

end A325931.P2440604607527546687

/-! ## A325931.P11650225733827487124

`A062157(comp[2*A000045(n)])`
-/

namespace A325931.P11650225733827487124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A325931.P11650225733827487124

/-! ## A325931.P7854595230267899721

`A165326(comp[2*A000045(n)])`
-/

namespace A325931.P7854595230267899721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A325931.P7854595230267899721

/-! ## A325931.P12699340084028859509

`A325933(n+1)-A325933(n)`
-/

namespace A325931.P12699340084028859509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325933 (n + 1) - A325933 n

end

end A325931.P12699340084028859509

/-!
# A325933: Partial sums of A325931.

The programs for A325933, there is no canonical definition to state claims against.
-/

/-! ## A325933.P5947076243503299581

`a(n-1)+A325931(n)` with `a(0)=0`
-/

namespace A325933.P5947076243503299581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A325931 n

end

end A325933.P5947076243503299581

/-! ## A325933.P2297319038371390656

`∑[A325931(lcm(n, a(n-1)))]` with `a(0)=0, a(1)=1`
-/

namespace A325933.P2297319038371390656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A325931 (Int.lcm (n : ℤ) (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325933.P2297319038371390656

/-! ## A325933.P8908571970603361128

`∑[A325931(round(sqrt(n²+1)))]-1`
-/

namespace A325933.P8908571970603361128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325931 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A325933.P8908571970603361128

/-! ## A325933.P6147698802958287423

`∑[A325931(n-round(a(n-1)/3))]` with `a(0)=0`
-/

namespace A325933.P6147698802958287423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A325931 ((n : ℤ) - SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325933.P6147698802958287423

/-! ## A325933.P8271481002390315653

`A130696(∑[A325931(round(acot(n)+n))])`
-/

namespace A325933.P8271481002390315653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325931 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325933.P8271481002390315653

/-! ## A325933.P17328632443981384199

`A002837(∑[A325931(A233583(n+1))])`
-/

namespace A325933.P17328632443981384199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325931 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325933.P17328632443981384199

/-! ## A325933.P7649964327369885458

`∑[A000040(n+1)%2*A325931(A028310(n))]`
-/

namespace A325933.P7649964327369885458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A325931 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325933.P7649964327369885458

/-! ## A325933.P11060456786898649220

`∑[(n²*A325931(A028310(n)))%A006530(n+1)]`
-/

namespace A325933.P11060456786898649220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) * A325931 (A028310 n).toNat) (A006530 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325933.P11060456786898649220

/-!
# A325934: Primes consisting of a single 1 and at least one copy of some other digit.

The programs for A325934, there is no canonical definition to state claims against.
-/

/-! ## A325934.P10457760245968576919

`∩[A030291(n+1), A178550(n+1)]`
-/

namespace A325934.P10457760245968576919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325934.P10457760245968576919

/-! ## A325934.P9966254544355356062

`∩[A031955(n+1), A178550(n+1)]`
-/

namespace A325934.P9966254544355356062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325934.P9966254544355356062

/-! ## A325934.P1175985779454302288

`∩[A083984(n+1), A178550(n+1)]`
-/

namespace A325934.P1175985779454302288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325934.P1175985779454302288

/-! ## A325934.P11104958281446042870

`∩[A101594(n+1), A178550(n+1)]`
-/

namespace A325934.P11104958281446042870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325934.P11104958281446042870

/-! ## A325934.P1067708862792337348

`∩[A178550(n+1), A206159(n+1)]`
-/

namespace A325934.P1067708862792337348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325934.P1067708862792337348

/-!
# A325936: a(n) is the number of creatures that can be made from exactly n Palago tiles.

The programs for A325936, there is no canonical definition to state claims against.
-/

/-! ## A325936.P10040048413658607847

`A000788(A000673(n)%A000679(n))`
-/

namespace A325936.P10040048413658607847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (Int.tmod (A000673 n) (A000679 n)).toNat

end

end A325936.P10040048413658607847

/-! ## A325936.P5610649869289388136

`A010878(A165877(n))+A007083(n+2)`
-/

namespace A325936.P5610649869289388136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A165877 n).toNat + A007083 (n + 2)

end

end A325936.P5610649869289388136

/-!
# A325937: Expansion of Sum_{k>=1} (-1)^(k + 1) * x^(2*k) / (1 - x^k).

The programs for A325937, the canonical program `A325937.P7515168000438611485` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325937 has offset 1).

The definition of A325937 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325937.P7515168000438611485

`A048272(n+1)+(-1)^(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A325937

/-- `A048272(n+1)+(-1)^(n+1)` -/
def P7515168000438611485.Spec : Prop :=
  ∀ n, P7515168000438611485.a n = A325937 (n + 1)

theorem P7515168000438611485.correct : P7515168000438611485.Spec := by
  intro n
  simp only [A325937, Nat.add_sub_cancel]

end A325937

/-! ## A325937.P16378654807448294959

`Δ[A059851(n)]-(-1)^n`
-/

namespace A325937.P16378654807448294959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (-1) ^ n

end

end A325937.P16378654807448294959

namespace A325937

/-- `Δ[A059851(n)]-(-1)^n` -/
def P16378654807448294959.Spec : Prop :=
  ∀ n, P16378654807448294959.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P15556628734114760902

`(A335021(n+1)+1)%(n+1)`
-/

namespace A325937.P15556628734114760902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335021 (n + 1) + 1) (n + 1 : ℤ)

end

end A325937.P15556628734114760902

namespace A325937

/-- `(A335021(n+1)+1)%(n+1)` -/
def P15556628734114760902.Spec : Prop :=
  ∀ n, P15556628734114760902.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P15466794868829667649

`Δ[A275495(n+1-n²%(n+1))]`
-/

namespace A325937.P15466794868829667649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275495 (n + 1 - n ^ 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325937.P15466794868829667649

namespace A325937

/-- `Δ[A275495(n+1-n²%(n+1))]` -/
def P15466794868829667649.Spec : Prop :=
  ∀ n, P15466794868829667649.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P5091952689263672344

`A335021(n+1)+A057427(n)`
-/

namespace A325937.P5091952689263672344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335021 (n + 1) + A057427 n

end

end A325937.P5091952689263672344

namespace A325937

/-- `A335021(n+1)+A057427(n)` -/
def P5091952689263672344.Spec : Prop :=
  ∀ n, P5091952689263672344.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P4520017084981954595

`A010673(n)-A325939(n+1)`
-/

namespace A325937.P4520017084981954595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n - A325939 (n + 1)

end

end A325937.P4520017084981954595

namespace A325937

/-- `A010673(n)-A325939(n+1)` -/
def P4520017084981954595.Spec : Prop :=
  ∀ n, P4520017084981954595.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P12878934288298423061

`A335021(n+1)-A057428(n)`
-/

namespace A325937.P12878934288298423061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335021 (n + 1) - A057428 n

end

end A325937.P12878934288298423061

namespace A325937

/-- `A335021(n+1)-A057428(n)` -/
def P12878934288298423061.Spec : Prop :=
  ∀ n, P12878934288298423061.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P16515497442758297200

`A335021(n+1)+A062157(n)²`
-/

namespace A325937.P16515497442758297200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335021 (n + 1) + A062157 n ^ 2

end

end A325937.P16515497442758297200

namespace A325937

/-- `A335021(n+1)+A062157(n)²` -/
def P16515497442758297200.Spec : Prop :=
  ∀ n, P16515497442758297200.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P12434768337821913029

`A335021(n+1)+1-A000007(n)`
-/

namespace A325937.P12434768337821913029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335021 (n + 1) + (1 - A000007 n)

end

end A325937.P12434768337821913029

namespace A325937

/-- `A335021(n+1)+1-A000007(n)` -/
def P12434768337821913029.Spec : Prop :=
  ∀ n, P12434768337821913029.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P828863383693195631

`(A112329(n+1)-1)*A033999(n)`
-/

namespace A325937.P828863383693195631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112329 (n + 1) - 1) * A033999 n

end

end A325937.P828863383693195631

namespace A325937

/-- `(A112329(n+1)-1)*A033999(n)` -/
def P828863383693195631.Spec : Prop :=
  ∀ n, P828863383693195631.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P17038573417860489445

`2*A000035(n)-A325939(n+1)`
-/

namespace A325937.P17038573417860489445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000035 n - A325939 (n + 1)

end

end A325937.P17038573417860489445

namespace A325937

/-- `2*A000035(n)-A325939(n+1)` -/
def P17038573417860489445.Spec : Prop :=
  ∀ n, P17038573417860489445.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P7766025391025138005

`A335021(n+1)+n/A028310(n)`
-/

namespace A325937.P7766025391025138005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335021 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A325937.P7766025391025138005

namespace A325937

/-- `A335021(n+1)+n/A028310(n)` -/
def P7766025391025138005.Spec : Prop :=
  ∀ n, P7766025391025138005.a n = (A325937 (n + 1) : ℚ)

end A325937

/-! ## A325937.P2275702239321460041

`∑{d}[n+1, A023900(#)*A091570((n+1)/#)]`
-/

namespace A325937.P2275702239321460041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A091570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325937.P2275702239321460041

namespace A325937

/-- `∑{d}[n+1, A023900(#)*A091570((n+1)/#)]` -/
def P2275702239321460041.Spec : Prop :=
  ∀ n, P2275702239321460041.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P4925922118392852853

`∑{d}[n+1, A001065(#)*A117212((n+1)/#)]`
-/

namespace A325937.P4925922118392852853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325937.P4925922118392852853

namespace A325937

/-- `∑{d}[n+1, A001065(#)*A117212((n+1)/#)]` -/
def P4925922118392852853.Spec : Prop :=
  ∀ n, P4925922118392852853.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P15203124932683186010

`∑{d}[n+1, A048272(#)*A157658((n+1)/#)]`
-/

namespace A325937.P15203124932683186010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325937.P15203124932683186010

namespace A325937

/-- `∑{d}[n+1, A048272(#)*A157658((n+1)/#)]` -/
def P15203124932683186010.Spec : Prop :=
  ∀ n, P15203124932683186010.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P8351461662721207589

`∑{d}[n+1, A118209(#)*A293228((n+1)/#)]`
-/

namespace A325937.P8351461662721207589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A118209 d * A293228 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325937.P8351461662721207589

namespace A325937

/-- `∑{d}[n+1, A118209(#)*A293228((n+1)/#)]` -/
def P8351461662721207589.Spec : Prop :=
  ∀ n, P8351461662721207589.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P10507186161195409306

`∑{d}[n+1, A238952(#)*A361019((n+1)/#)]`
-/

namespace A325937.P10507186161195409306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238952 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325937.P10507186161195409306

namespace A325937

/-- `∑{d}[n+1, A238952(#)*A361019((n+1)/#)]` -/
def P10507186161195409306.Spec : Prop :=
  ∀ n, P10507186161195409306.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P9737126622253592073

`∑{d}[n+1, A317528(#)*A344617((n+1)/#)]`
-/

namespace A325937.P9737126622253592073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317528 d * A344617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325937.P9737126622253592073

namespace A325937

/-- `∑{d}[n+1, A317528(#)*A344617((n+1)/#)]` -/
def P9737126622253592073.Spec : Prop :=
  ∀ n, P9737126622253592073.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P10970288641985335637

`A335021(n+1)+A001221(A034444(n+1))`
-/

namespace A325937.P10970288641985335637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335021 (n + 1) + A001221 (A034444 (n + 1)).toNat

end

end A325937.P10970288641985335637

namespace A325937

/-- `A335021(n+1)+A001221(A034444(n+1))` -/
def P10970288641985335637.Spec : Prop :=
  ∀ n, P10970288641985335637.a n = A325937 (n + 1)

end A325937

/-! ## A325937.P12410590157731322725

`A091954(n+1)+A091954(n+1)-A032741(n+1)`
-/

namespace A325937.P12410590157731322725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) + (A091954 (n + 1) - A032741 (n + 1))

end

end A325937.P12410590157731322725

namespace A325937

/-- `A091954(n+1)+A091954(n+1)-A032741(n+1)` -/
def P12410590157731322725.Spec : Prop :=
  ∀ n, P12410590157731322725.a n = A325937 (n + 1)

end A325937

/-!
# A325938: a(n) = omega(n)^tau(n), where omega=A001221 and tau=A000005.

The programs for A325938, the canonical program `A325938.P14006727487049740035` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325938 has offset 1).

The definition of A325938 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325938.P14006727487049740035

`A001221(n+1)^A000005(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A325938

/-- `A001221(n+1)^A000005(n+1)` -/
def P14006727487049740035.Spec : Prop :=
  ∀ n, P14006727487049740035.a n = (A325938 (n + 1) : ℚ)

end A325938

/-! ## A325938.P12719985500922299529

`∏{d}[n+1, A001221(lcm(#, n+1))]`
-/

namespace A325938.P12719985500922299529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A001221 (Nat.lcm d (n + 1))

end

end A325938.P12719985500922299529

namespace A325938

/-- `∏{d}[n+1, A001221(lcm(#, n+1))]` -/
def P12719985500922299529.Spec : Prop :=
  ∀ n, P12719985500922299529.a n = A325938 (n + 1)

end A325938

/-! ## A325938.P14074122187832092386

`A001222(∏{p}[n+1, #])^∏{e}[n+1, #+1]`
-/

namespace A325938.P14074122187832092386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A325938.P14074122187832092386

namespace A325938

/-- `A001222(∏{p}[n+1, #])^∏{e}[n+1, #+1]` -/
def P14074122187832092386.Spec : Prop :=
  ∀ n, P14074122187832092386.a n = A325938 (n + 1)

end A325938

/-! ## A325938.P15112783829556458250

`A001221(n+1)^Δ[A006218(n)]`
-/

namespace A325938.P15112783829556458250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A325938.P15112783829556458250

namespace A325938

/-- `A001221(n+1)^Δ[A006218(n)]` -/
def P15112783829556458250.Spec : Prop :=
  ∀ n, P15112783829556458250.a n = (A325938 (n + 1) : ℚ)

end A325938

/-! ## A325938.P16728738039905319481

`A001221(n+1)^(A038040(n+1)/(n+1))`
-/

namespace A325938.P16728738039905319481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℝ) ^ ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A325938.P16728738039905319481

namespace A325938

/-- `A001221(n+1)^(A038040(n+1)/(n+1))` -/
def P16728738039905319481.Spec : Prop :=
  ∀ n, P16728738039905319481.a n = (A325938 (n + 1) : ℝ)

end A325938

/-! ## A325938.P14363136950182675118

`A001221(n+1)^∑{d}[n+1, A057427(#)]`
-/

namespace A325938.P14363136950182675118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), A057427 d : ℤ)

end

end A325938.P14363136950182675118

namespace A325938

/-- `A001221(n+1)^∑{d}[n+1, A057427(#)]` -/
def P14363136950182675118.Spec : Prop :=
  ∀ n, P14363136950182675118.a n = (A325938 (n + 1) : ℚ)

end A325938

/-! ## A325938.P5700830498137394921

`A106404(2*(n+1))^A000005(n+1)`
-/

namespace A325938.P5700830498137394921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106404 (2 * (n + 1)) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A325938.P5700830498137394921

namespace A325938

/-- `A106404(2*(n+1))^A000005(n+1)` -/
def P5700830498137394921.Spec : Prop :=
  ∀ n, P5700830498137394921.a n = (A325938 (n + 1) : ℚ)

end A325938

/-! ## A325938.P16394072599123126115

`∏{d}[n+1, A001221(#*(n+1))]`
-/

namespace A325938.P16394072599123126115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A001221 (d * (n + 1))

end

end A325938.P16394072599123126115

namespace A325938

/-- `∏{d}[n+1, A001221(#*(n+1))]` -/
def P16394072599123126115.Spec : Prop :=
  ∀ n, P16394072599123126115.a n = A325938 (n + 1)

end A325938

/-! ## A325938.P248792868981245243

`A001221(n+1)^A001222(A100587(n+1)+1)`
-/

namespace A325938.P248792868981245243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) ^ (A001222 (A100587 (n + 1) + 1).toNat : ℤ)

end

end A325938.P248792868981245243

namespace A325938

/-- `A001221(n+1)^A001222(A100587(n+1)+1)` -/
def P248792868981245243.Spec : Prop :=
  ∀ n, P248792868981245243.a n = (A325938 (n + 1) : ℚ)

end A325938

/-! ## A325938.P18437719791284265324

`A001221(n+1)^A238353(∑[n+1])`
-/

namespace A325938.P18437719791284265324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) ^ (A238353 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A325938.P18437719791284265324

namespace A325938

/-- `A001221(n+1)^A238353(∑[n+1])` -/
def P18437719791284265324.Spec : Prop :=
  ∀ n, P18437719791284265324.a n = (A325938 (n + 1) : ℚ)

end A325938

/-!
# A325939: Expansion of Sum_{k>=1} x^(2*k) / (1 + x^k).

The programs for A325939, the canonical program `A325939.P14233231963195728863` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325939 has offset 1).

The definition of A325939 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325939.P14233231963195728863

`1-A048272(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A325939

/-- `1-A048272(n+1)` -/
def P14233231963195728863.Spec : Prop :=
  ∀ n, P14233231963195728863.a n = A325939 (n + 1)

theorem P14233231963195728863.correct : P14233231963195728863.Spec := by
  intro n
  simp only [A325939, Nat.add_sub_cancel]

end A325939

/-! ## A325939.P1242269629117033266

`∑{d}[n+1, (-1)^#]+1`
-/

namespace A325939.P1242269629117033266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1) ^ d + 1

end

end A325939.P1242269629117033266

namespace A325939

/-- `∑{d}[n+1, (-1)^#]+1` -/
def P1242269629117033266.Spec : Prop :=
  ∀ n, P1242269629117033266.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P13511846037198176122

`1-Δ[A059851(n)]`
-/

namespace A325939.P13511846037198176122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A325939.P13511846037198176122

namespace A325939

/-- `1-Δ[A059851(n)]` -/
def P13511846037198176122.Spec : Prop :=
  ∀ n, P13511846037198176122.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P8663533584890474707

`∑{d}[n+1, A062157(#-1)]`
-/

namespace A325939.P8663533584890474707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062157 (d - 1)

end

end A325939.P8663533584890474707

namespace A325939

/-- `∑{d}[n+1, A062157(#-1)]` -/
def P8663533584890474707.Spec : Prop :=
  ∀ n, P8663533584890474707.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P5372814314732600873

`1-(A325937(n+1)-(n-xor(1, n)))`
-/

namespace A325939.P5372814314732600873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A325937 (n + 1) - ((n : ℤ) - (Nat.xor 1 n : ℤ)))

end

end A325939.P5372814314732600873

namespace A325939

/-- `1-(A325937(n+1)-(n-xor(1, n)))` -/
def P5372814314732600873.Spec : Prop :=
  ∀ n, P5372814314732600873.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P17412546290733144120

`A010673(n)-A325937(n+1)`
-/

namespace A325939.P17412546290733144120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n - A325937 (n + 1)

end

end A325939.P17412546290733144120

namespace A325939

/-- `A010673(n)-A325937(n+1)` -/
def P17412546290733144120.Spec : Prop :=
  ∀ n, P17412546290733144120.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P2512114468663360198

`A062157(n)-A335021(n+1)`
-/

namespace A325939.P2512114468663360198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n - A335021 (n + 1)

end

end A325939.P2512114468663360198

namespace A325939

/-- `A062157(n)-A335021(n+1)` -/
def P2512114468663360198.Spec : Prop :=
  ∀ n, P2512114468663360198.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P10108364510869464543

`A114003(n+1)-A302707(n)`
-/

namespace A325939.P10108364510869464543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) - A302707 n

end

end A325939.P10108364510869464543

namespace A325939

/-- `A114003(n+1)-A302707(n)` -/
def P10108364510869464543.Spec : Prop :=
  ∀ n, P10108364510869464543.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P18317038581341007970

`A069735(n+1)-A066660(n+1)`
-/

namespace A325939.P18317038581341007970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (n + 1) - A066660 (n + 1)

end

end A325939.P18317038581341007970

namespace A325939

/-- `A069735(n+1)-A066660(n+1)` -/
def P18317038581341007970.Spec : Prop :=
  ∀ n, P18317038581341007970.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P14453121789592041134

`1-(A325937(n+1)+A033999(n))`
-/

namespace A325939.P14453121789592041134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A325937 (n + 1) + A033999 n)

end

end A325939.P14453121789592041134

namespace A325939

/-- `1-(A325937(n+1)+A033999(n))` -/
def P14453121789592041134.Spec : Prop :=
  ∀ n, P14453121789592041134.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P2828652676725225921

`A334954(n+1)-A054844(n+1)`
-/

namespace A325939.P2828652676725225921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A054844 (n + 1)

end

end A325939.P2828652676725225921

namespace A325939

/-- `A334954(n+1)-A054844(n+1)` -/
def P2828652676725225921.Spec : Prop :=
  ∀ n, P2828652676725225921.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P156483784800884832

`1-A033999(n)*A112329(n+1)`
-/

namespace A325939.P156483784800884832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033999 n * A112329 (n + 1)

end

end A325939.P156483784800884832

namespace A325939

/-- `1-A033999(n)*A112329(n+1)` -/
def P156483784800884832.Spec : Prop :=
  ∀ n, P156483784800884832.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P8925772826785336255

`1-Δ[A000120(n)]*A001227(n+1)`
-/

namespace A325939.P8925772826785336255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) * A001227 (n + 1)

end

end A325939.P8925772826785336255

namespace A325939

/-- `1-Δ[A000120(n)]*A001227(n+1)` -/
def P8925772826785336255.Spec : Prop :=
  ∀ n, P8925772826785336255.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P15664335806098230463

`A002129(n+1)+A363629(n+1)+1`
-/

namespace A325939.P15664335806098230463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) + (A363629 (n + 1) + 1)

end

end A325939.P15664335806098230463

namespace A325939

/-- `A002129(n+1)+A363629(n+1)+1` -/
def P15664335806098230463.Spec : Prop :=
  ∀ n, P15664335806098230463.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P9486677246182066738

`A000005(n+1)+1-A054844(n+1)`
-/

namespace A325939.P9486677246182066738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A054844 (n + 1))

end

end A325939.P9486677246182066738

namespace A325939

/-- `A000005(n+1)+1-A054844(n+1)` -/
def P9486677246182066738.Spec : Prop :=
  ∀ n, P9486677246182066738.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P2754145504512445493

`A069735(n+1)+1-A099777(n+1)`
-/

namespace A325939.P2754145504512445493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (n + 1) + (1 - A099777 (n + 1))

end

end A325939.P2754145504512445493

namespace A325939

/-- `A069735(n+1)+1-A099777(n+1)` -/
def P2754145504512445493.Spec : Prop :=
  ∀ n, P2754145504512445493.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P17097333884357197513

`A183063(n+1)+1-A001227(n+1)`
-/

namespace A325939.P17097333884357197513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + (1 - A001227 (n + 1))

end

end A325939.P17097333884357197513

namespace A325939

/-- `A183063(n+1)+1-A001227(n+1)` -/
def P17097333884357197513.Spec : Prop :=
  ∀ n, P17097333884357197513.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P2621676467054576693

`1-(A325940(n+1)+A002129(n+1))`
-/

namespace A325939.P2621676467054576693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A325940 (n + 1) + A002129 (n + 1))

end

end A325939.P2621676467054576693

namespace A325939

/-- `1-(A325940(n+1)+A002129(n+1))` -/
def P2621676467054576693.Spec : Prop :=
  ∀ n, P2621676467054576693.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P2082099801447693488

`A062011(n+1)+1-A372784(n+1)`
-/

namespace A325939.P2082099801447693488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) + (1 - A372784 (n + 1))

end

end A325939.P2082099801447693488

namespace A325939

/-- `A062011(n+1)+1-A372784(n+1)` -/
def P2082099801447693488.Spec : Prop :=
  ∀ n, P2082099801447693488.a n = A325939 (n + 1)

end A325939

/-! ## A325939.P11810886346077614000

`A348951(n+1)+1-A333781(n+1)`
-/

namespace A325939.P11810886346077614000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348951 (n + 1) + (1 - A333781 (n + 1))

end

end A325939.P11810886346077614000

namespace A325939

/-- `A348951(n+1)+1-A333781(n+1)` -/
def P11810886346077614000.Spec : Prop :=
  ∀ n, P11810886346077614000.a n = A325939 (n + 1)

end A325939

/-!
# A325940: Expansion of Sum_{k>=1} x^(2*k) / (1 + x^k)^2.

The programs for A325940, the canonical program `A325940.P5826704247194185154` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325940 has offset 1).

The definition of A325940 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325940.P5826704247194185154

`A048272(n+1)-A002129(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A325940

/-- `A048272(n+1)-A002129(n+1)` -/
def P5826704247194185154.Spec : Prop :=
  ∀ n, P5826704247194185154.a n = A325940 (n + 1)

theorem P5826704247194185154.correct : P5826704247194185154.Spec := by
  intro n
  simp only [A325940, Nat.add_sub_cancel]

end A325940

/-! ## A325940.P17408958318625126240

`∑{d}[n+1, A181983(#-1)]`
-/

namespace A325940.P17408958318625126240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A181983 (d - 1)

end

end A325940.P17408958318625126240

namespace A325940

/-- `∑{d}[n+1, A181983(#-1)]` -/
def P17408958318625126240.Spec : Prop :=
  ∀ n, P17408958318625126240.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P2997142614926956274

`Δ[A059851(n)]-A002129(n+1)`
-/

namespace A325940.P2997142614926956274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002129 (n + 1)

end

end A325940.P2997142614926956274

namespace A325940

/-- `Δ[A059851(n)]-A002129(n+1)` -/
def P2997142614926956274.Spec : Prop :=
  ∀ n, P2997142614926956274.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P3242408071680096551

`A363615(n+1)+A363022(n+1)`
-/

namespace A325940.P3242408071680096551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363615 (n + 1) + A363022 (n + 1)

end

end A325940.P3242408071680096551

namespace A325940

/-- `A363615(n+1)+A363022(n+1)` -/
def P3242408071680096551.Spec : Prop :=
  ∀ n, P3242408071680096551.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P4415770152118583741

`A349211(n+1)-A348915(n+1)`
-/

namespace A325940.P4415770152118583741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349211 (n + 1) - A348915 (n + 1)

end

end A325940.P4415770152118583741

namespace A325940

/-- `A349211(n+1)-A348915(n+1)` -/
def P4415770152118583741.Spec : Prop :=
  ∀ n, P4415770152118583741.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P4962193614851819164

`A363629(n+1)+2*A048272(n+1)`
-/

namespace A325940.P4962193614851819164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363629 (n + 1) + 2 * A048272 (n + 1)

end

end A325940.P4962193614851819164

namespace A325940

/-- `A363629(n+1)+2*A048272(n+1)` -/
def P4962193614851819164.Spec : Prop :=
  ∀ n, P4962193614851819164.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P13935746750824468044

`A007503(n+1)-2*A348915(n+1)`
-/

namespace A325940.P13935746750824468044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - 2 * A348915 (n + 1)

end

end A325940.P13935746750824468044

namespace A325940

/-- `A007503(n+1)-2*A348915(n+1)` -/
def P13935746750824468044.Spec : Prop :=
  ∀ n, P13935746750824468044.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P9668517940745735310

`2*A349211(n+1)-A007503(n+1)`
-/

namespace A325940.P9668517940745735310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349211 (n + 1) - A007503 (n + 1)

end

end A325940.P9668517940745735310

namespace A325940

/-- `2*A349211(n+1)-A007503(n+1)` -/
def P9668517940745735310.Spec : Prop :=
  ∀ n, P9668517940745735310.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P2620357657178425311

`∑{d}[n+1, A023900(#)*A325941((n+1)/#)]`
-/

namespace A325940.P2620357657178425311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A325941 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325940.P2620357657178425311

namespace A325940

/-- `∑{d}[n+1, A023900(#)*A325941((n+1)/#)]` -/
def P2620357657178425311.Spec : Prop :=
  ∀ n, P2620357657178425311.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P8384865525386061065

`A065608(n+1)-2*A065608(A000265(n+1))`
-/

namespace A325940.P8384865525386061065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) - 2 * A065608 (A000265 (n + 1)).toNat

end

end A325940.P8384865525386061065

namespace A325940

/-- `A065608(n+1)-2*A065608(A000265(n+1))` -/
def P8384865525386061065.Spec : Prop :=
  ∀ n, P8384865525386061065.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P9369523221438041643

`A059851(n+1)-(A059851(n)+A002129(n+1))`
-/

namespace A325940.P9369523221438041643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) - (A059851 n + A002129 (n + 1))

end

end A325940.P9369523221438041643

namespace A325940

/-- `A059851(n+1)-(A059851(n)+A002129(n+1))` -/
def P9369523221438041643.Spec : Prop :=
  ∀ n, P9369523221438041643.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P17566877901494695287

`A349211(n+1)-(A183063(n+1)+A000593(n+1))`
-/

namespace A325940.P17566877901494695287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349211 (n + 1) - (A183063 (n + 1) + A000593 (n + 1))

end

end A325940.P17566877901494695287

namespace A325940

/-- `A349211(n+1)-(A183063(n+1)+A000593(n+1))` -/
def P17566877901494695287.Spec : Prop :=
  ∀ n, P17566877901494695287.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P12666572720050153463

`A002129(n+1)+A363615(n+1)-A320900(n+1)`
-/

namespace A325940.P12666572720050153463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) + (A363615 (n + 1) - A320900 (n + 1))

end

end A325940.P12666572720050153463

namespace A325940

/-- `A002129(n+1)+A363615(n+1)-A320900(n+1)` -/
def P12666572720050153463.Spec : Prop :=
  ∀ n, P12666572720050153463.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P3897110081108622925

`A048272(n+1)-(A363022(n+1)+A320900(n+1))`
-/

namespace A325940.P3897110081108622925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - (A363022 (n + 1) + A320900 (n + 1))

end

end A325940.P3897110081108622925

namespace A325940

/-- `A048272(n+1)-(A363022(n+1)+A320900(n+1))` -/
def P3897110081108622925.Spec : Prop :=
  ∀ n, P3897110081108622925.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P13685423123838636864

`∑{d}[n+1, A266073(#)-(#+1)]`
-/

namespace A325940.P13685423123838636864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A266073 d - (d + 1 : ℤ))

end

end A325940.P13685423123838636864

namespace A325940

/-- `∑{d}[n+1, A266073(#)-(#+1)]` -/
def P13685423123838636864.Spec : Prop :=
  ∀ n, P13685423123838636864.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P6412269649872555206

`∑{d}[n+1, 1-A266722(#)+#]`
-/

namespace A325940.P6412269649872555206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A266722 d + (d : ℤ))

end

end A325940.P6412269649872555206

namespace A325940

/-- `∑{d}[n+1, 1-A266722(#)+#]` -/
def P6412269649872555206.Spec : Prop :=
  ∀ n, P6412269649872555206.a n = A325940 (n + 1)

end A325940

/-! ## A325940.P1249463562987656822

`A128315(∑[n]+2)`
-/

namespace A325940.P1249463562987656822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128315 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A325940.P1249463562987656822

namespace A325940

/-- `A128315(∑[n]+2)` -/
def P1249463562987656822.Spec : Prop :=
  ∀ n, P1249463562987656822.a n = A325940 (n + 1)

end A325940

/-!
# A325941: Expansion of Sum_{k>=1} k * x^(2*k) / (1 + x^k)^2.

The programs for A325941, the canonical program `A325941.P481027245925735307` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325941 has offset 1).

The definition of A325941 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325941.P481027245925735307

`A000593(n+1)-(n+1)*A048272(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A325941

/-- `A000593(n+1)-(n+1)*A048272(n+1)` -/
def P481027245925735307.Spec : Prop :=
  ∀ n, P481027245925735307.a n = A325941 (n + 1)

theorem P481027245925735307.correct : P481027245925735307.Spec := by
  intro n
  simp only [A325941, Nat.add_sub_cancel]

end A325941

/-! ## A325941.P10150501442216604624

`∑{d}[n+1, #*A181983((n+1)/#-1)]`
-/

namespace A325941.P10150501442216604624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A181983 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A325941.P10150501442216604624

namespace A325941

/-- `∑{d}[n+1, #*A181983((n+1)/#-1)]` -/
def P10150501442216604624.Spec : Prop :=
  ∀ n, P10150501442216604624.a n = A325941 (n + 1)

end A325941

/-! ## A325941.P12711995528800678018

`∑{d}[n+1, A000010(#)*A325940((n+1)/#)]`
-/

namespace A325941.P12711995528800678018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A325940 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325941.P12711995528800678018

namespace A325941

/-- `∑{d}[n+1, A000010(#)*A325940((n+1)/#)]` -/
def P12711995528800678018.Spec : Prop :=
  ∀ n, P12711995528800678018.a n = A325941 (n + 1)

end A325941

/-! ## A325941.P8818798931614885256

`∑{d}[n+1, A001478(#)*A038608((n+1)/#-1)]`
-/

namespace A325941.P8818798931614885256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001478 d * A038608 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A325941.P8818798931614885256

namespace A325941

/-- `∑{d}[n+1, A001478(#)*A038608((n+1)/#-1)]` -/
def P8818798931614885256.Spec : Prop :=
  ∀ n, P8818798931614885256.a n = A325941 (n + 1)

end A325941

/-! ## A325941.P9862247035333670519

`A349213(n+1)-(A367870(n+1)+A001227(n+1))`
-/

namespace A325941.P9862247035333670519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349213 (n + 1) - (A367870 (n + 1) + A001227 (n + 1))

end

end A325941.P9862247035333670519

namespace A325941

/-- `A349213(n+1)-(A367870(n+1)+A001227(n+1))` -/
def P9862247035333670519.Spec : Prop :=
  ∀ n, P9862247035333670519.a n = A325941 (n + 1)

end A325941

/-! ## A325941.P10235528053554295824

`A091570(2*(n+1))-(n+1)*A048272(n+1)`
-/

namespace A325941.P10235528053554295824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (2 * (n + 1)) - (n + 1 : ℤ) * A048272 (n + 1)

end

end A325941.P10235528053554295824

namespace A325941

/-- `A091570(2*(n+1))-(n+1)*A048272(n+1)` -/
def P10235528053554295824.Spec : Prop :=
  ∀ n, P10235528053554295824.a n = A325941 (n + 1)

end A325941

/-! ## A325941.P3320264717567085788

`A000593(n+1)-A143520(n+1)*A187307(3*n)`
-/

namespace A325941.P3320264717567085788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A143520 (n + 1) * A187307 (3 * n)

end

end A325941.P3320264717567085788

namespace A325941

/-- `A000593(n+1)-A143520(n+1)*A187307(3*n)` -/
def P3320264717567085788.Spec : Prop :=
  ∀ n, P3320264717567085788.a n = A325941 (n + 1)

end A325941

/-!
# A325942: Positions of records in A296062.

The programs for A325942, there is no canonical definition to state claims against.
-/

/-! ## A325942.P2754554194262534296

`A325944(record[A296062(n)])`
-/

namespace A325942.P2754554194262534296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325944 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A325942.P2754554194262534296

/-! ## A325942.P3644556739810148322

`A325944(record[n-A268289(n)])`
-/

namespace A325942.P3644556739810148322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325944 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A325942.P3644556739810148322

/-! ## A325942.P1751299685797535932

`A325944(record[log2(A110316(n))])`
-/

namespace A325942.P1751299685797535932
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A110316 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325944 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A325942.P1751299685797535932

/-! ## A325942.P16700328787528168019

`A325944(record[val(A110316(n), 2)])`
-/

namespace A325942.P16700328787528168019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A110316 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325944 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A325942.P16700328787528168019

/-! ## A325942.P11157898595620080771

`A325944(lt[A325944(n), A325946(n+5)])`
-/

namespace A325942.P11157898595620080771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325944 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325946 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325944 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325942.P11157898595620080771

/-!
# A325943: a(n) = floor(n / omega(n)) where omega = A001221.

The programs for A325943, the canonical program `A325943.P7234983070192388028` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325943 has offset 2).

The definition of A325943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325943.P7234983070192388028

`floor((n+2)/A001221(n+2))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A325943

/-- `floor((n+2)/A001221(n+2))` -/
def P7234983070192388028.Spec : Prop :=
  ∀ n, P7234983070192388028.a n = A325943 (n + 2)

theorem P7234983070192388028.correct : P7234983070192388028.Spec := by
  intro n
  simp only [A325943, Nat.add_sub_cancel]

end A325943

/-! ## A325943.P7578272699218831487

`floor((n+2)/A001222(A007947(n+2)))`
-/

namespace A325943.P7578272699218831487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A001222 (A007947 (n + 2)).toNat : ℚ)⌋

end

end A325943.P7578272699218831487

namespace A325943

/-- `floor((n+2)/A001222(A007947(n+2)))` -/
def P7578272699218831487.Spec : Prop :=
  ∀ n, P7578272699218831487.a n = A325943 (n + 2)

end A325943

/-! ## A325943.P4825628051114987230

`floor((n+2)/A001222(A034444(n+2)))`
-/

namespace A325943.P4825628051114987230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A001222 (A034444 (n + 2)).toNat : ℚ)⌋

end

end A325943.P4825628051114987230

namespace A325943

/-- `floor((n+2)/A001222(A034444(n+2)))` -/
def P4825628051114987230.Spec : Prop :=
  ∀ n, P4825628051114987230.a n = A325943 (n + 2)

end A325943

/-! ## A325943.P13791250283826887765

`floor((n+2)/A087802(n+2))`
-/

namespace A325943.P13791250283826887765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A087802 (n + 2) : ℚ)⌋

end

end A325943.P13791250283826887765

namespace A325943

/-- `floor((n+2)/A087802(n+2))` -/
def P13791250283826887765.Spec : Prop :=
  ∀ n, P13791250283826887765.a n = A325943 (n + 2)

end A325943

/-! ## A325943.P3665825318328493631

`val(A000079(n+2), A034444(n+2))`
-/

namespace A325943.P3665825318328493631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (n + 2)).toNat (A034444 (n + 2)).toNat

end

end A325943.P3665825318328493631

namespace A325943

/-- `val(A000079(n+2), A034444(n+2))` -/
def P3665825318328493631.Spec : Prop :=
  ∀ n, (P3665825318328493631.a n : ℤ) = A325943 (n + 2)

end A325943

/-! ## A325943.P1160827374460184040

`val(A000302(n+2), A007426(A007947(n+2)))`
-/

namespace A325943.P1160827374460184040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000302 (n + 2)).toNat (A007426 (A007947 (n + 2)).toNat).toNat

end

end A325943.P1160827374460184040

namespace A325943

/-- `val(A000302(n+2), A007426(A007947(n+2)))` -/
def P1160827374460184040.Spec : Prop :=
  ∀ n, (P1160827374460184040.a n : ℤ) = A325943 (n + 2)

end A325943

/-!
# A325944: Least k such that A296062(k) = n.

The programs for A325944, there is no canonical definition to state claims against.
-/

/-! ## A325944.P10315466099860276769

`record[and(A107753(n+1), A172094(n+4))]`
-/

namespace A325944.P10315466099860276769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107753 (n + 1)) (A172094 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325944.P10315466099860276769

/-!
# A325946: Maximum number of intercardinal adjacencies among all n-celled polyplets.

The programs for A325946, the canonical program `A325946.P15888509630698788642` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325946 has offset 1).

The definition of A325946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325946.P15888509630698788642

`4*(n+1)-ceil(sqrt(28*(n+1)-12))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A325946

/-- `4*(n+1)-ceil(sqrt(28*(n+1)-12))` -/
def P15888509630698788642.Spec : Prop :=
  ∀ n, P15888509630698788642.a n = A325946 (n + 1)

theorem P15888509630698788642.correct : P15888509630698788642.Spec := by
  intro n
  simp only [A325946, Nat.add_sub_cancel]

end A325946

/-! ## A325946.P17620257369372258652

`record[A289440(2*n+3)-A055086(n)]`
-/

namespace A325946.P17620257369372258652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (2 * n + 3) - A055086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325946.P17620257369372258652

namespace A325946

/-- `record[A289440(2*n+3)-A055086(n)]` -/
def P17620257369372258652.Spec : Prop :=
  ∀ n, P17620257369372258652.a n = A325946 (n + 1)

end A325946

/-!
# A325947: a(n) = 4^n * [x^n] 1/sqrt(1-x) * Product_{k>=1} 1/(1 - x^k).

The programs for A325947, there is no canonical definition to state claims against.
-/

/-! ## A325947.P11106457283101728334

`A325948(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A325947.P11106457283101728334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325948 n + 4 * a (n - 1)

end

end A325947.P11106457283101728334

/-!
# A325948: a(n) = 4^n * [x^n] sqrt(1-x) * Product_{k>=1} 1/(1 - x^k).

The programs for A325948, there is no canonical definition to state claims against.
-/

/-! ## A325948.P13204352628695467849

`record[A127520(n+1)-(∑[abs(1-n)!]-1)]`
-/

namespace A325948.P13204352628695467849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127520 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325948.P13204352628695467849

/-!
# A325949: a(n) = 4^n * [x^n] sqrt(1-x) * Product_{k>=1} (1 + x^k).

The programs for A325949, there is no canonical definition to state claims against.
-/

/-! ## A325949.P14928289049318551163

`A182534(A175661(n))`
-/

namespace A325949.P14928289049318551163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182534 (A175661 n).toNat

end

end A325949.P14928289049318551163

/-!
# A325950: a(n) = 4^n * [x^n] 1/sqrt(1-x) * Product_{k>=1} (1 + x^k).

The programs for A325950, there is no canonical definition to state claims against.
-/

/-! ## A325950.P919134134577614300

`A033879(A077399(n)+4^n)`
-/

namespace A325950.P919134134577614300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A077399 n + (4 ^ n : ℤ)).toNat

end

end A325950.P919134134577614300

/-!
# A325951: G.f.: 1/(1-x)^3 * Product_{k>=1} (1 + x^k).

The programs for A325951, there is no canonical definition to state claims against.
-/

/-! ## A325951.P3910551937124378260

`∑[∑[A036469(n)]]`
-/

namespace A325951.P3910551937124378260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325951.P3910551937124378260

/-! ## A325951.P2985918342683669667

`∑[A095944(n+1)]`
-/

namespace A325951.P2985918342683669667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325951.P2985918342683669667

/-! ## A325951.P16232068014219843417

`∑[∑[∑[A000009(n)]]]`
-/

namespace A325951.P16232068014219843417
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325951.P16232068014219843417

/-! ## A325951.P5430484459085606056

`∑[∑[∑[A111133(n)+1]]]`
-/

namespace A325951.P5430484459085606056
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325951.P5430484459085606056

/-! ## A325951.P10261793766440080880

`∑[2*A096914(n+2)]-A096914(n+2)`
-/

namespace A325951.P10261793766440080880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096914 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A096914 (n + 2)

end

end A325951.P10261793766440080880

/-! ## A325951.P10632992446228249905

`A360487(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A325951.P10632992446228249905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A360487 (n + 1) - a (n - 1)

end

end A325951.P10632992446228249905

/-! ## A325951.P173042282438158611

`A325952(n+1)-(A325952(n)+A095944(n+2))`
-/

namespace A325951.P173042282438158611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325952 (n + 1) - (A325952 n + A095944 (n + 2))

end

end A325951.P173042282438158611

/-! ## A325951.P17217705366762823559

`∑[∑[∑[A035457(2*n)]]]`
-/

namespace A325951.P17217705366762823559
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325951.P17217705366762823559

/-! ## A325951.P3710302128613370510

`∑[∑[∑[A172033(2*n)]]]`
-/

namespace A325951.P3710302128613370510
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325951.P3710302128613370510

/-! ## A325951.P18198741717632741408

`∑[∑[2^n]-A095941(n+1)]`
-/

namespace A325951.P18198741717632741408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A095941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325951.P18198741717632741408

/-!
# A325952: G.f.: 1/(1-x)^4 * Product_{k>=1} (1 + x^k).

The programs for A325952, there is no canonical definition to state claims against.
-/

/-! ## A325952.P15152400384703761197

`∑[A325951(n)]`
-/

namespace A325952.P15152400384703761197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325952.P15152400384703761197

/-! ## A325952.P4688720714866608422

`∑[∑[∑[A036469(n)]]]`
-/

namespace A325952.P4688720714866608422
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325952.P4688720714866608422

/-! ## A325952.P731858103441770477

`∑[∑[A095944(n+1)]]`
-/

namespace A325952.P731858103441770477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095944 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325952.P731858103441770477

/-! ## A325952.P12229486184091001460

`∑[∑[∑[∑[A000009(n)]]]]`
-/

namespace A325952.P12229486184091001460
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325952.P12229486184091001460

/-! ## A325952.P11354626249373766197

`∑[∑[∑[A317910(n)+1+n]]]`
-/

namespace A325952.P11354626249373766197
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317910 n + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325952.P11354626249373766197

/-!
# A325956: Number of cyclic permutations of [n] with symmetry order s=1.

The programs for A325956, there is no canonical definition to state claims against.
-/

/-! ## A325956.P11007635519770780459

`(n+1)*A064852(n+1)`
-/

namespace A325956.P11007635519770780459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064852 (n + 1)

end

end A325956.P11007635519770780459

/-! ## A325956.P4550310758046408749

`A047919(∑[n+1])`
-/

namespace A325956.P4550310758046408749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047919 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A325956.P4550310758046408749

/-! ## A325956.P16957087844076417363

`A047919(A000096(n)+1)+(2*n)%2`
-/

namespace A325956.P16957087844076417363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047919 (A000096 n + 1).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A325956.P16957087844076417363

/-! ## A325956.P96240831820762967

`A300579(n)%3*A047919(A000096(n)+1)`
-/

namespace A325956.P96240831820762967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300579 n) 3 * A047919 (A000096 n + 1).toNat

end

end A325956.P96240831820762967

/-! ## A325956.P15039830057318143143

`A047919(A000096(n)+1)+floor(A103921(n)/4)`
-/

namespace A325956.P15039830057318143143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047919 (A000096 n + 1).toNat + ⌊(A103921 n : ℚ) / 4⌋

end

end A325956.P15039830057318143143

/-! ## A325956.P8287870797802699498

`A047919(A000096(n)+1)+floor(A020987(4*n+3)/4)`
-/

namespace A325956.P8287870797802699498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047919 (A000096 n + 1).toNat + ⌊(A020987 (4 * n + 3) : ℚ) / 4⌋

end

end A325956.P8287870797802699498

/-! ## A325956.P14482891968144075534

`A047918(∑[n+1])/(n+1)`
-/

namespace A325956.P14482891968144075534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047918 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A325956.P14482891968144075534

/-!
# A325957: Sophie Germain primes equal to the sum of the first k Sophie Germain primes for some k.

The programs for A325957, there is no canonical definition to state claims against.
-/

/-! ## A325957.P14003439184128471257

`A172037(∑[A018009(n)^A229223(n)])`
-/

namespace A325957.P14003439184128471257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018009 n : ℚ) ^ (A229223 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172037 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A325957.P14003439184128471257

/-!
# A325958: Sum of the corners of a 2n+1 X 2n+1 square spiral.

The programs for A325958, the canonical program `A325958.P3897492207661601591` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325958 has offset 1).

The definition of A325958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325958.P3897492207661601591

`16*(n+1)²+4*(n+1)+4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A325958

/-- `16*(n+1)²+4*(n+1)+4` -/
def P3897492207661601591.Spec : Prop :=
  ∀ n, (P3897492207661601591.a n : ℤ) = A325958 (n + 1)

theorem P3897492207661601591.correct : P3897492207661601591.Spec := by
  intro n
  simp only [A325958, Nat.add_sub_cancel]

end A325958

/-! ## A325958.P13277356162372675733

`Δ[A114254(n)]`
-/

namespace A325958.P13277356162372675733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325958.P13277356162372675733

namespace A325958

/-- `Δ[A114254(n)]` -/
def P13277356162372675733.Spec : Prop :=
  ∀ n, P13277356162372675733.a n = A325958 (n + 1)

end A325958

/-! ## A325958.P11283965215048457929

`Δ[4*A332698(n)]`
-/

namespace A325958.P11283965215048457929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A332698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325958.P11283965215048457929

namespace A325958

/-- `Δ[4*A332698(n)]` -/
def P11283965215048457929.Spec : Prop :=
  ∀ n, P11283965215048457929.a n = A325958 (n + 1)

end A325958

/-!
# A325959: a(n) = n - A325967(n).

The programs for A325959, there is no canonical definition to state claims against.
-/

/-! ## A325959.P606647696094787536

`n+1-A325967(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325959.P606647696094787536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A325967 (n + 1)

end

end A325959.P606647696094787536

/-! ## A325959.P1995399758679947518

`A033879(n+1)+A325969(n+1)`
-/

namespace A325959.P1995399758679947518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A325969 (n + 1)

end

end A325959.P1995399758679947518

/-! ## A325959.P3119150667932043418

`A325968(n+1)-A001065(n+1)`
-/

namespace A325959.P3119150667932043418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325968 (n + 1) - A001065 (n + 1)

end

end A325959.P3119150667932043418

/-! ## A325959.P10459509275401704295

`A325969(n+1)-A033880(n+1)`
-/

namespace A325959.P10459509275401704295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325969 (n + 1) - A033880 (n + 1)

end

end A325959.P10459509275401704295

/-! ## A325959.P4088340298180020896

`A325968(n+1)+n+1-A000203(n+1)`
-/

namespace A325959.P4088340298180020896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325968 (n + 1) + ((n + 1 : ℤ) - A000203 (n + 1))

end

end A325959.P4088340298180020896

/-! ## A325959.P353880920445646436

`A325968(n+1)-(A325826(n+1)+A325817(n+1))`
-/

namespace A325959.P353880920445646436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325968 (n + 1) - (A325826 (n + 1) + A325817 (n + 1))

end

end A325959.P353880920445646436

/-!
# A325960: a(n) is k-n for the least k >= n+(A020639(n)-1) such that n-k and n-(sigma(n)-k) are relatively prime, or 0 if no such k <= sigma(n) exists.

The programs for A325960, there is no canonical definition to state claims against.
-/

/-! ## A325960.P2692901421198765376

`(A325961(n+1)-A325962(n+1))/2`
-/

namespace A325960.P2692901421198765376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325961 (n + 1) - A325962 (n + 1) : ℚ) / 2

end

end A325960.P2692901421198765376

/-! ## A325960.P12975808237634459624

`A325961(n+1)%(n+1)`
-/

namespace A325960.P12975808237634459624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325961 (n + 1)) (n + 1 : ℤ)

end

end A325960.P12975808237634459624

/-! ## A325960.P1591170167394194235

`(n*A325962(n+1))%(n+1)`
-/

namespace A325960.P1591170167394194235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A325962 (n + 1)) (n + 1 : ℤ)

end

end A325960.P1591170167394194235

/-! ## A325960.P6355459009197653874

`A004526(A325961(n+1)-A325962(n+1))`
-/

namespace A325960.P6355459009197653874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A325961 (n + 1) - A325962 (n + 1)).toNat

end

end A325960.P6355459009197653874

/-! ## A325960.P13441271999051732167

`A110654(A325961(n+1)-A325962(n+1))`
-/

namespace A325960.P13441271999051732167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A325961 (n + 1) - A325962 (n + 1)).toNat

end

end A325960.P13441271999051732167

/-! ## A325960.P9802584448656607157

`A175126(A325961(n+1)-A325962(n+1))`
-/

namespace A325960.P9802584448656607157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A325961 (n + 1) - A325962 (n + 1)).toNat

end

end A325960.P9802584448656607157

/-! ## A325960.P17848364033309676032

`A061228(n+1)%(A325962(n+1)+A020639(n+1))`
-/

namespace A325960.P17848364033309676032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061228 (n + 1)) (A325962 (n + 1) + A020639 (n + 1))

end

end A325960.P17848364033309676032

/-!
# A325961: a(n) is the least k >= A061228(n)-1 such that n-k and n-(sigma(n)-k) are relatively prime, or 0 if no such k <= sigma(n) exists.

The programs for A325961, there is no canonical definition to state claims against.
-/

/-! ## A325961.P2336786274388849512

`A325962(n+1)+2*A325960(n+1)`
-/

namespace A325961.P2336786274388849512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325962 (n + 1) + 2 * A325960 (n + 1)

end

end A325961.P2336786274388849512

/-! ## A325961.P12537118857955024098

`A325962(n+1)+A005843(A325960(n+1))`
-/

namespace A325961.P12537118857955024098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325962 (n + 1) + A005843 (A325960 (n + 1)).toNat

end

end A325961.P12537118857955024098

/-! ## A325961.P1295011559518411922

`A325962(n+1)+A005843((n*A325962(n+1))%(n+1))`
-/

namespace A325961.P1295011559518411922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325962 (n + 1) + A005843 (Int.tmod ((n : ℤ) * A325962 (n + 1)) (n + 1 : ℤ)).toNat

end

end A325961.P1295011559518411922

/-! ## A325961.P8978574485685091284

`xor(A003558(2^n-1), A250480(n+1))`
-/

namespace A325961.P8978574485685091284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003558 (2 ^ n - 1)) (A250480 (n + 1))

end

end A325961.P8978574485685091284

/-! ## A325961.P1338120215776578925

`A193356(A279061(n)+A077168(n))`
-/

namespace A325961.P1338120215776578925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A279061 n + A077168 n).toNat

end

end A325961.P1338120215776578925

/-!
# A325962: a(1) = 1; for n > 1, a(n) is the largest k <= 1+A046666(n) such that n-k and n-(sigma(n)-k) are relatively prime, or -1 if no such nonnegative k exists.

The programs for A325962, there is no canonical definition to state claims against.
-/

/-! ## A325962.P7741744907131710604

`abs(A191558(n+1)-A325960(n+1))`
-/

namespace A325962.P7741744907131710604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A191558 (n + 1) - A325960 (n + 1)|

end

end A325962.P7741744907131710604

/-! ## A325962.P12712301598271525013

`A325961(n+1)-2*A325960(n+1)`
-/

namespace A325962.P12712301598271525013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325961 (n + 1) - 2 * A325960 (n + 1)

end

end A325962.P12712301598271525013

/-! ## A325962.P4227718888570301110

`A144396(n+1)%(A325961(n+1)+1)`
-/

namespace A325962.P4227718888570301110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144396 (n + 1)) (A325961 (n + 1) + 1)

end

end A325962.P4227718888570301110

/-! ## A325962.P8027050502375027310

`((2*n+1)*A325961(n+1))%Δ[A202018(n)]`
-/

namespace A325962.P8027050502375027310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 1 : ℤ) * A325961 (n + 1)) (f1 (n + 1) - f1 n)

end

end A325962.P8027050502375027310

/-! ## A325962.P1903836050415444417

`A325961(n+1)-A005843(A325960(n+1))`
-/

namespace A325962.P1903836050415444417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325961 (n + 1) - A005843 (A325960 (n + 1)).toNat

end

end A325962.P1903836050415444417

/-!
# A325963: Numbers n for which A034448(n)-n is equal to n-A048250(n).

The programs for A325963, there is no canonical definition to state claims against.
-/

/-! ## A325963.P16366565079485384720

`∏[A141905(∑[A049977(n+1)])]`
-/

namespace A325963.P16366565079485384720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049977 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141905 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A325963.P16366565079485384720

/-!
# A325964: a(n) = 1 if n and sigma(n) are relatively prime, 0 otherwise, where sigma(n) = sum of divisors of n, A000203; Characteristic function of A014567.

The programs for A325964, the canonical program `A325964.P15804438111234452342` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325964 has offset 1).

The definition of A325964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325964.P1939475595941029930

`floor(acot(A240923(n+1)))`
-/

namespace A325964.P1939475595941029930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A240923 (n + 1) : ℝ)⌋

end

end A325964.P1939475595941029930

namespace A325964

/-- `floor(acot(A240923(n+1)))` -/
def P1939475595941029930.Spec : Prop :=
  ∀ n, P1939475595941029930.a n = A325964 (n + 1)

end A325964

/-! ## A325964.P9948372060811200282

`floor(acot(A325817(n+1)))`
-/

namespace A325964.P9948372060811200282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A325817 (n + 1) : ℝ)⌋

end

end A325964.P9948372060811200282

namespace A325964

/-- `floor(acot(A325817(n+1)))` -/
def P9948372060811200282.Spec : Prop :=
  ∀ n, P9948372060811200282.a n = A325964 (n + 1)

end A325964

/-! ## A325964.P17136014633287144053

`floor(acot(A325967(n+1)))`
-/

namespace A325964.P17136014633287144053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A325967 (n + 1) : ℝ)⌋

end

end A325964.P17136014633287144053

namespace A325964

/-- `floor(acot(A325967(n+1)))` -/
def P17136014633287144053.Spec : Prop :=
  ∀ n, P17136014633287144053.a n = A325964 (n + 1)

end A325964

/-! ## A325964.P13248660930195672204

`round(acot(A009194(n+1)))`
-/

namespace A325964.P13248660930195672204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A009194 (n + 1) : ℝ))

end

end A325964.P13248660930195672204

namespace A325964

/-- `round(acot(A009194(n+1)))` -/
def P13248660930195672204.Spec : Prop :=
  ∀ n, P13248660930195672204.a n = A325964 (n + 1)

end A325964

/-! ## A325964.P15804438111234452342

`floor(1/A073802(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A325964

/-- `floor(1/A073802(n+1))` -/
def P15804438111234452342.Spec : Prop :=
  ∀ n, P15804438111234452342.a n = A325964 (n + 1)

theorem P15804438111234452342.correct : P15804438111234452342.Spec := by
  intro n
  simp only [A325964, Nat.add_sub_cancel]

end A325964

/-! ## A325964.P7873067091036015557

`floor(1/A082062(n+1))`
-/

namespace A325964.P7873067091036015557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A082062 (n + 1) : ℚ)⌋

end

end A325964.P7873067091036015557

namespace A325964

/-- `floor(1/A082062(n+1))` -/
def P7873067091036015557.Spec : Prop :=
  ∀ n, P7873067091036015557.a n = A325964 (n + 1)

end A325964

/-! ## A325964.P13245493723125828596

`floor(1/A082068(n+1))`
-/

namespace A325964.P13245493723125828596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A082068 (n + 1) : ℚ)⌋

end

end A325964.P13245493723125828596

namespace A325964

/-- `floor(1/A082068(n+1))` -/
def P13245493723125828596.Spec : Prop :=
  ∀ n, P13245493723125828596.a n = A325964 (n + 1)

end A325964

/-! ## A325964.P18206186440977755207

`floor(1/A306682(n+1))`
-/

namespace A325964.P18206186440977755207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A306682 (n + 1) : ℚ)⌋

end

end A325964.P18206186440977755207

namespace A325964

/-- `floor(1/A306682(n+1))` -/
def P18206186440977755207.Spec : Prop :=
  ∀ n, P18206186440977755207.a n = A325964 (n + 1)

end A325964

/-! ## A325964.P14852802514135081914

`floor(1/A327154(n+1))`
-/

namespace A325964.P14852802514135081914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A327154 (n + 1) : ℚ)⌋

end

end A325964.P14852802514135081914

namespace A325964

/-- `floor(1/A327154(n+1))` -/
def P14852802514135081914.Spec : Prop :=
  ∀ n, P14852802514135081914.a n = A325964 (n + 1)

end A325964

/-! ## A325964.P5148263065257753008

`floor(1/A327155(n+1))`
-/

namespace A325964.P5148263065257753008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A327155 (n + 1) : ℚ)⌋

end

end A325964.P5148263065257753008

namespace A325964

/-- `floor(1/A327155(n+1))` -/
def P5148263065257753008.Spec : Prop :=
  ∀ n, P5148263065257753008.a n = A325964 (n + 1)

end A325964

/-! ## A325964.P14044676084688422800

`round(1/A326193(n+1))`
-/

namespace A325964.P14044676084688422800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A326193 (n + 1) : ℚ))

end

end A325964.P14044676084688422800

namespace A325964

/-- `round(1/A326193(n+1))` -/
def P14044676084688422800.Spec : Prop :=
  ∀ n, P14044676084688422800.a n = A325964 (n + 1)

end A325964

/-! ## A325964.P13102422978814408639

`char[eq[1, A356157(n+1)]]`
-/

namespace A325964.P13102422978814408639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356157 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A325964.P13102422978814408639

namespace A325964

/-- `char[eq[1, A356157(n+1)]]` -/
def P13102422978814408639.Spec : Prop :=
  ∀ n, (P13102422978814408639.a n : ℤ) = A325964 (n + 1)

end A325964

/-! ## A325964.P4298233759080470170

`∏{d}[A341523(n+1), log(#)]`
-/

namespace A325964.P4298233759080470170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341523 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A325964.P4298233759080470170

namespace A325964

/-- `∏{d}[A341523(n+1), log(#)]` -/
def P4298233759080470170.Spec : Prop :=
  ∀ n, P4298233759080470170.a n = (A325964 (n + 1) : ℝ)

end A325964

/-! ## A325964.P6089866618676759338

`char[lt[n, A017666(n+1)]]`
-/

namespace A325964.P6089866618676759338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A325964.P6089866618676759338

namespace A325964

/-- `char[lt[n, A017666(n+1)]]` -/
def P6089866618676759338.Spec : Prop :=
  ∀ n, (P6089866618676759338.a n : ℤ) = A325964 (n + 1)

end A325964

/-! ## A325964.P11446937934575355700

`C(n+1, A162657(n+1))`
-/

namespace A325964.P11446937934575355700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A162657 (n + 1)).toNat

end

end A325964.P11446937934575355700

namespace A325964

/-- `C(n+1, A162657(n+1))` -/
def P11446937934575355700.Spec : Prop :=
  ∀ n, (P11446937934575355700.a n : ℤ) = A325964 (n + 1)

end A325964

/-! ## A325964.P15279924832200238870

`C(A325959(n+1), n+1)`
-/

namespace A325964.P15279924832200238870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325959 (n + 1)).toNat (n + 1)

end

end A325964.P15279924832200238870

namespace A325964

/-- `C(A325959(n+1), n+1)` -/
def P15279924832200238870.Spec : Prop :=
  ∀ n, (P15279924832200238870.a n : ℤ) = A325964 (n + 1)

end A325964

/-! ## A325964.P3913898277735158102

`C(A325976(n+1), n+1)`
-/

namespace A325964.P3913898277735158102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325976 (n + 1)).toNat (n + 1)

end

end A325964.P3913898277735158102

namespace A325964

/-- `C(A325976(n+1), n+1)` -/
def P3913898277735158102.Spec : Prop :=
  ∀ n, (P3913898277735158102.a n : ℤ) = A325964 (n + 1)

end A325964

/-! ## A325964.P13086535540527802044

`round(acot(gcd(n+1, A000203(n+1))))`
-/

namespace A325964.P13086535540527802044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Int.gcd (n + 1 : ℤ) (A000203 (n + 1)) : ℝ))

end

end A325964.P13086535540527802044

namespace A325964

/-- `round(acot(gcd(n+1, A000203(n+1))))` -/
def P13086535540527802044.Spec : Prop :=
  ∀ n, P13086535540527802044.a n = A325964 (n + 1)

end A325964

/-! ## A325964.P12276793890179320616

`floor(1/gcd(2*n+1-n, A155085(n+1)))`
-/

namespace A325964.P12276793890179320616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (A155085 (n + 1)) : ℚ)⌋

end

end A325964.P12276793890179320616

namespace A325964

/-- `floor(1/gcd(2*n+1-n, A155085(n+1)))` -/
def P12276793890179320616.Spec : Prop :=
  ∀ n, P12276793890179320616.a n = A325964 (n + 1)

end A325964

/-! ## A325964.P14738870349092110205

`A000007(A240923(n+1))`
-/

namespace A325964.P14738870349092110205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A240923 (n + 1)).toNat

end

end A325964.P14738870349092110205

namespace A325964

/-- `A000007(A240923(n+1))` -/
def P14738870349092110205.Spec : Prop :=
  ∀ n, P14738870349092110205.a n = A325964 (n + 1)

end A325964

/-!
# A325965: a(n) is the least k >= A020639(n) such that n-k and n-(sigma(n)-k) are relatively prime.

The programs for A325965, there is no canonical definition to state claims against.
-/

/-! ## A325965.P9347490252344685048

`A000203(n+1)-A325966(n+1)`
-/

namespace A325965.P9347490252344685048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325966 (n + 1)

end

end A325965.P9347490252344685048

/-! ## A325965.P4283581319968993908

`Δ[A160664(n)]-A325966(n+1)`
-/

namespace A325965.P4283581319968993908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A325966 (n + 1)

end

end A325965.P4283581319968993908

/-! ## A325965.P13653957286491473696

`A088580(n+1)-(A325966(n+1)+1)`
-/

namespace A325965.P13653957286491473696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A325966 (n + 1) + 1)

end

end A325965.P13653957286491473696

/-! ## A325965.P2311804249299878543

`A001065(n+1)+1+n-A325966(n+1)`
-/

namespace A325965.P2311804249299878543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A325966 (n + 1)

end

end A325965.P2311804249299878543

/-! ## A325965.P6093711392071233435

`2*(n+1)-A033879(n+1)-A325966(n+1)`
-/

namespace A325965.P6093711392071233435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A325966 (n + 1)

end

end A325965.P6093711392071233435

/-! ## A325965.P14082387668983186669

`A034448(n+1)+A048146(n+1)-A325966(n+1)`
-/

namespace A325965.P14082387668983186669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A325966 (n + 1))

end

end A325965.P14082387668983186669

/-! ## A325965.P2515934998649201082

`A000593(n+1)+A146076(n+1)-A325966(n+1)`
-/

namespace A325965.P2515934998649201082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A325966 (n + 1))

end

end A325965.P2515934998649201082

/-! ## A325965.P7229658678933540504

`A324121(n+1)+A324122(n+1)-A325966(n+1)`
-/

namespace A325965.P7229658678933540504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (n + 1) + (A324122 (n + 1) - A325966 (n + 1))

end

end A325965.P7229658678933540504

/-! ## A325965.P15732161747562441862

`A325817(n+1)+A325818(n+1)-A325966(n+1)`
-/

namespace A325965.P15732161747562441862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 1) + (A325818 (n + 1) - A325966 (n + 1))

end

end A325965.P15732161747562441862

/-! ## A325965.P15929896118343295403

`A325971(n+1)+A325972(n+1)-A325966(n+1)`
-/

namespace A325965.P15929896118343295403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325971 (n + 1) + (A325972 (n + 1) - A325966 (n + 1))

end

end A325965.P15929896118343295403

/-! ## A325965.P16162295005406838761

`A325973(n+1)+A325974(n+1)-A325966(n+1)`
-/

namespace A325965.P16162295005406838761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) + (A325974 (n + 1) - A325966 (n + 1))

end

end A325965.P16162295005406838761

/-! ## A325965.P2825145997243563694

`A113184(A000265(n+1))+A146076(n+1)-A325966(n+1)`
-/

namespace A325965.P2825145997243563694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (A000265 (n + 1)).toNat + (A146076 (n + 1) - A325966 (n + 1))

end

end A325965.P2825145997243563694

/-!
# A325966: a(n) is the largest i <= sigma(n)-A020639(n) such that n-i and n-(sigma(n)-i) are relatively prime.

The programs for A325966, there is no canonical definition to state claims against.
-/

/-! ## A325966.P14945961210706266879

`A000203(n+1)-A325965(n+1)`
-/

namespace A325966.P14945961210706266879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325965 (n + 1)

end

end A325966.P14945961210706266879

/-! ## A325966.P4677578404049092354

`A088580(n+1)-(A325965(n+1)+1)`
-/

namespace A325966.P4677578404049092354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A325965 (n + 1) + 1)

end

end A325966.P4677578404049092354

/-! ## A325966.P16174181509845508546

`A074400(n+1)/2-A325965(n+1)`
-/

namespace A325966.P16174181509845508546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A325965 (n + 1) : ℚ)

end

end A325966.P16174181509845508546

/-! ## A325966.P9463052772030853775

`A001065(n+1)+1+n-A325965(n+1)`
-/

namespace A325966.P9463052772030853775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A325965 (n + 1)

end

end A325966.P9463052772030853775

/-! ## A325966.P2921465898481219348

`2*(n+1)-A033879(n+1)-A325965(n+1)`
-/

namespace A325966.P2921465898481219348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A325965 (n + 1)

end

end A325966.P2921465898481219348

/-! ## A325966.P13235063166177906197

`A034448(n+1)+A048146(n+1)-A325965(n+1)`
-/

namespace A325966.P13235063166177906197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A325965 (n + 1))

end

end A325966.P13235063166177906197

/-! ## A325966.P12897635601194601575

`A000593(n+1)+A146076(n+1)-A325965(n+1)`
-/

namespace A325966.P12897635601194601575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A325965 (n + 1))

end

end A325966.P12897635601194601575

/-! ## A325966.P6558042798085633286

`A324121(n+1)+A324122(n+1)-A325965(n+1)`
-/

namespace A325966.P6558042798085633286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (n + 1) + (A324122 (n + 1) - A325965 (n + 1))

end

end A325966.P6558042798085633286

/-! ## A325966.P7296044535505792530

`A325817(n+1)+A325818(n+1)-A325965(n+1)`
-/

namespace A325966.P7296044535505792530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 1) + (A325818 (n + 1) - A325965 (n + 1))

end

end A325966.P7296044535505792530

/-! ## A325966.P9703470598613858527

`A325971(n+1)+A325972(n+1)-A325965(n+1)`
-/

namespace A325966.P9703470598613858527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325971 (n + 1) + (A325972 (n + 1) - A325965 (n + 1))

end

end A325966.P9703470598613858527

/-! ## A325966.P3203340199969865776

`A325973(n+1)+A325974(n+1)-A325965(n+1)`
-/

namespace A325966.P3203340199969865776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) + (A325974 (n + 1) - A325965 (n + 1))

end

end A325966.P3203340199969865776

/-! ## A325966.P13666817809799734066

`A113184(A000265(n+1))+A146076(n+1)-A325965(n+1)`
-/

namespace A325966.P13666817809799734066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (A000265 (n + 1)).toNat + (A146076 (n + 1) - A325965 (n + 1))

end

end A325966.P13666817809799734066

/-! ## A325966.P16469796372716623474

`A008619(A002659(n+1))-A325965(n+1)`
-/

namespace A325966.P16469796372716623474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002659 (n + 1)).toNat - A325965 (n + 1)

end

end A325966.P16469796372716623474

/-! ## A325966.P18419824397034013527

`A004525(A074400(n+1))-A325965(n+1)`
-/

namespace A325966.P18419824397034013527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A074400 (n + 1)).toNat - A325965 (n + 1)

end

end A325966.P18419824397034013527

/-!
# A325967: a(n) is the minimum sum of all such subsets of divisors of n for which n-s and (sigma(n)-s)-n are relatively prime, where s is the sum of the subset.

The programs for A325967, there is no canonical definition to state claims against.
-/

/-! ## A325967.P5549948777093459528

`A000203(n+1)-A325968(n+1)`
-/

namespace A325967.P5549948777093459528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325968 (n + 1)

end

end A325967.P5549948777093459528

/-! ## A325967.P2680169451579246104

`A001065(n+1)-A325969(n+1)`
-/

namespace A325967.P2680169451579246104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A325969 (n + 1)

end

end A325967.P2680169451579246104

/-! ## A325967.P14793397779446242430

`1-A325959(n+1)+n`
-/

namespace A325967.P14793397779446242430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A325959 (n + 1) + (n : ℤ)

end

end A325967.P14793397779446242430

/-! ## A325967.P16801144891207687861

`A088580(n+1)-(A325968(n+1)+1)`
-/

namespace A325967.P16801144891207687861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A325968 (n + 1) + 1)

end

end A325967.P16801144891207687861

/-! ## A325967.P3801682423056748582

`A000203(n+1)-(A325969(n+1)+n+1)`
-/

namespace A325967.P3801682423056748582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A325969 (n + 1) + (n + 1 : ℤ))

end

end A325967.P3801682423056748582

/-! ## A325967.P16071025599318457343

`A001065(n+1)+1+n-A325968(n+1)`
-/

namespace A325967.P16071025599318457343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A325968 (n + 1)

end

end A325967.P16071025599318457343

/-! ## A325967.P4290232757287290212

`2*(n+1)-A033879(n+1)-A325968(n+1)`
-/

namespace A325967.P4290232757287290212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A325968 (n + 1)

end

end A325967.P4290232757287290212

/-! ## A325967.P13915615537482059086

`A000217(n+1)%(A325959(n+1)+A000217(n))`
-/

namespace A325967.P13915615537482059086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 1)) (A325959 (n + 1) + A000217 n)

end

end A325967.P13915615537482059086

/-! ## A325967.P463155971066197525

`A034448(n+1)+A048146(n+1)-A325968(n+1)`
-/

namespace A325967.P463155971066197525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A325968 (n + 1))

end

end A325967.P463155971066197525

/-! ## A325967.P14035587017878943622

`A324121(n+1)+A324122(n+1)-A325968(n+1)`
-/

namespace A325967.P14035587017878943622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (n + 1) + (A324122 (n + 1) - A325968 (n + 1))

end

end A325967.P14035587017878943622

/-! ## A325967.P5663216967652142004

`A325817(n+1)+A325818(n+1)-A325968(n+1)`
-/

namespace A325967.P5663216967652142004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 1) + (A325818 (n + 1) - A325968 (n + 1))

end

end A325967.P5663216967652142004

/-! ## A325967.P12466957987644760851

`A325817(n+1)+A325826(n+1)-A325969(n+1)`
-/

namespace A325967.P12466957987644760851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 1) + (A325826 (n + 1) - A325969 (n + 1))

end

end A325967.P12466957987644760851

/-! ## A325967.P2818482804739350332

`A325965(n+1)+A325966(n+1)-A325968(n+1)`
-/

namespace A325967.P2818482804739350332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325965 (n + 1) + (A325966 (n + 1) - A325968 (n + 1))

end

end A325967.P2818482804739350332

/-! ## A325967.P15264157505843560614

`A325971(n+1)+A325972(n+1)-A325968(n+1)`
-/

namespace A325967.P15264157505843560614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325971 (n + 1) + (A325972 (n + 1) - A325968 (n + 1))

end

end A325967.P15264157505843560614

/-! ## A325967.P6458315619036103805

`A325973(n+1)+A325974(n+1)-A325968(n+1)`
-/

namespace A325967.P6458315619036103805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) + (A325974 (n + 1) - A325968 (n + 1))

end

end A325967.P6458315619036103805

/-!
# A325968: a(n) is the sum k of such a subset of divisors of n with the largest sum and for which n-k and n-(sigma(n)-k) are relatively prime.

The programs for A325968, there is no canonical definition to state claims against.
-/

/-! ## A325968.P17988177296190532965

`n+1+A325969(n+1)`
-/

namespace A325968.P17988177296190532965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A325969 (n + 1)

end

end A325968.P17988177296190532965

/-! ## A325968.P81130662556987533

`A000203(n+1)-A325967(n+1)`
-/

namespace A325968.P81130662556987533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325967 (n + 1)

end

end A325968.P81130662556987533

/-! ## A325968.P16542191867462724005

`A325959(n+1)+A001065(n+1)`
-/

namespace A325968.P16542191867462724005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325959 (n + 1) + A001065 (n + 1)

end

end A325968.P16542191867462724005

/-! ## A325968.P12864769026831973972

`A088580(n+1)-(A325967(n+1)+1)`
-/

namespace A325968.P12864769026831973972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A325967 (n + 1) + 1)

end

end A325968.P12864769026831973972

/-! ## A325968.P3283552969572168615

`A001065(n+1)+1+n-A325967(n+1)`
-/

namespace A325968.P3283552969572168615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A325967 (n + 1)

end

end A325968.P3283552969572168615

/-! ## A325968.P16762827363333812049

`2*(n+1)-A033879(n+1)-A325967(n+1)`
-/

namespace A325968.P16762827363333812049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A325967 (n + 1)

end

end A325968.P16762827363333812049

/-! ## A325968.P14333056559264345309

`A325817(n+1)+A325959(n+1)+A325826(n+1)`
-/

namespace A325968.P14333056559264345309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 1) + (A325959 (n + 1) + A325826 (n + 1))

end

end A325968.P14333056559264345309

/-! ## A325968.P1738422063499459271

`A034448(n+1)+A048146(n+1)-A325967(n+1)`
-/

namespace A325968.P1738422063499459271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A325967 (n + 1))

end

end A325968.P1738422063499459271

/-! ## A325968.P6280721328677049221

`A324121(n+1)+A324122(n+1)-A325967(n+1)`
-/

namespace A325968.P6280721328677049221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (n + 1) + (A324122 (n + 1) - A325967 (n + 1))

end

end A325968.P6280721328677049221

/-! ## A325968.P8986752774252796949

`A325817(n+1)+A325818(n+1)-A325967(n+1)`
-/

namespace A325968.P8986752774252796949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 1) + (A325818 (n + 1) - A325967 (n + 1))

end

end A325968.P8986752774252796949

/-! ## A325968.P9342988296627144560

`A325818(n+1)+A325959(n+1)-A325976(n+1)`
-/

namespace A325968.P9342988296627144560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325818 (n + 1) + (A325959 (n + 1) - A325976 (n + 1))

end

end A325968.P9342988296627144560

/-! ## A325968.P16724494792990359944

`A325965(n+1)+A325966(n+1)-A325967(n+1)`
-/

namespace A325968.P16724494792990359944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325965 (n + 1) + (A325966 (n + 1) - A325967 (n + 1))

end

end A325968.P16724494792990359944

/-! ## A325968.P17186448012055865624

`A325971(n+1)+A325972(n+1)-A325967(n+1)`
-/

namespace A325968.P17186448012055865624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325971 (n + 1) + (A325972 (n + 1) - A325967 (n + 1))

end

end A325968.P17186448012055865624

/-! ## A325968.P11809371203325880859

`A325973(n+1)+A325974(n+1)-A325967(n+1)`
-/

namespace A325968.P11809371203325880859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) + (A325974 (n + 1) - A325967 (n + 1))

end

end A325968.P11809371203325880859

/-!
# A325969: a(n) = A325968(n) - n.

The programs for A325969, there is no canonical definition to state claims against.
-/

/-! ## A325969.P4062411166349158188

`A325968(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325969.P4062411166349158188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325968 (n + 1) - (n + 1 : ℤ)

end

end A325969.P4062411166349158188

/-! ## A325969.P17544746617335809631

`A001065(n+1)-A325967(n+1)`
-/

namespace A325969.P17544746617335809631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A325967 (n + 1)

end

end A325969.P17544746617335809631

/-! ## A325969.P17321637672556583342

`A325959(n+1)-A033879(n+1)`
-/

namespace A325969.P17321637672556583342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325959 (n + 1) - A033879 (n + 1)

end

end A325969.P17321637672556583342

/-! ## A325969.P18009827592619663439

`A325959(n+1)+A033880(n+1)`
-/

namespace A325969.P18009827592619663439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325959 (n + 1) + A033880 (n + 1)

end

end A325969.P18009827592619663439

/-! ## A325969.P8923885832083274308

`A325817(n+1)+A325826(n+1)-A325967(n+1)`
-/

namespace A325969.P8923885832083274308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 1) + (A325826 (n + 1) - A325967 (n + 1))

end

end A325969.P8923885832083274308

/-! ## A325969.P6610742187383267655

`A325818(n+1)-(A325976(n+1)+A325967(n+1))`
-/

namespace A325969.P6610742187383267655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325818 (n + 1) - (A325976 (n + 1) + A325967 (n + 1))

end

end A325969.P6610742187383267655

/-! ## A325969.P15834594705632091577

`A325826(n+1)+A325959(n+1)-A325976(n+1)`
-/

namespace A325969.P15834594705632091577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325826 (n + 1) + (A325959 (n + 1) - A325976 (n + 1))

end

end A325969.P15834594705632091577

/-! ## A325969.P18396899364552484001

`A325972(n+1)-(A325970(n+1)+A325967(n+1))`
-/

namespace A325969.P18396899364552484001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325972 (n + 1) - (A325970 (n + 1) + A325967 (n + 1))

end

end A325969.P18396899364552484001

/-!
# A325970: a(n) is the largest k <= A066503(n) such that k and (2n-sigma(n)) [= A033879(n)] are relatively prime.

The programs for A325970, there is no canonical definition to state claims against.
-/

/-! ## A325970.P14686719134629341766

`n+1-A325971(n+1)`
-/

namespace A325970.P14686719134629341766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A325971 (n + 1)

end

end A325970.P14686719134629341766

/-! ## A325970.P3573560809388113278

`A325972(n+1)-A001065(n+1)`
-/

namespace A325970.P3573560809388113278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325972 (n + 1) - A001065 (n + 1)

end

end A325970.P3573560809388113278

/-! ## A325970.P3112327445304691416

`1-A000203(n+1)+A325972(n+1)+n`
-/

namespace A325970.P3112327445304691416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000203 (n + 1) + (A325972 (n + 1) + (n : ℤ))

end

end A325970.P3112327445304691416

/-! ## A325970.P17862663310641783542

`A033879(n+1)+A325972(n+1)-(n+1)`
-/

namespace A325970.P17862663310641783542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (A325972 (n + 1) - (n + 1 : ℤ))

end

end A325970.P17862663310641783542

/-! ## A325970.P8107514324759249808

`A325972(n+1)-(A326188(n+1)+A003557(n+1))`
-/

namespace A325970.P8107514324759249808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325972 (n + 1) - (A326188 (n + 1) + A003557 (n + 1))

end

end A325970.P8107514324759249808

/-! ## A325970.P6471584321760308751

`A325972(n+1)-(A326185(n+1)+A057521(n+1))`
-/

namespace A325970.P6471584321760308751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325972 (n + 1) - (A326185 (n + 1) + A057521 (n + 1))

end

end A325970.P6471584321760308751

/-! ## A325970.P16661785558064073777

`A004736(A167614(n+1))+A001489(A325971(n+1))`
-/

namespace A325970.P16661785558064073777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A167614 (n + 1)).toNat + A001489 (A325971 (n + 1)).toNat

end

end A325970.P16661785558064073777

/-!
# A325971: a(n) is the least k >= A007947(n) such that -n + k and (n-sigma(n))+k are relatively prime.

The programs for A325971, there is no canonical definition to state claims against.
-/

/-! ## A325971.P8966628919463706970

`n+1-A325970(n+1)`
-/

namespace A325971.P8966628919463706970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A325970 (n + 1)

end

end A325971.P8966628919463706970

/-! ## A325971.P15943963876585668173

`A000203(n+1)-A325972(n+1)`
-/

namespace A325971.P15943963876585668173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325972 (n + 1)

end

end A325971.P15943963876585668173

/-! ## A325971.P16865748456312465697

`abs(A325970(n+1)+A001478(n+1))`
-/

namespace A325971.P16865748456312465697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325970 (n + 1) + A001478 (n + 1)|

end

end A325971.P16865748456312465697

/-! ## A325971.P1886242512388728501

`abs(A325972(n+1)-A245092(2*n+1))`
-/

namespace A325971.P1886242512388728501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325972 (n + 1) - A245092 (2 * n + 1)|

end

end A325971.P1886242512388728501

/-! ## A325971.P13116932196553721119

`A001065(n+1)+1+n-A325972(n+1)`
-/

namespace A325971.P13116932196553721119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A325972 (n + 1)

end

end A325971.P13116932196553721119

/-! ## A325971.P10582819340405627927

`2*(n+1)-A033879(n+1)-A325972(n+1)`
-/

namespace A325971.P10582819340405627927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A325972 (n + 1)

end

end A325971.P10582819340405627927

/-! ## A325971.P11387385232172418335

`A034448(n+1)+A048146(n+1)-A325972(n+1)`
-/

namespace A325971.P11387385232172418335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A325972 (n + 1))

end

end A325971.P11387385232172418335

/-! ## A325971.P5504071464708177

`A000593(n+1)+A146076(n+1)-A325972(n+1)`
-/

namespace A325971.P5504071464708177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A325972 (n + 1))

end

end A325971.P5504071464708177

/-! ## A325971.P7615645406141043880

`A091051(n+1)+A183101(n+1)-A325972(n+1)`
-/

namespace A325971.P7615645406141043880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091051 (n + 1) + (A183101 (n + 1) - A325972 (n + 1))

end

end A325971.P7615645406141043880

/-! ## A325971.P7931073292298561149

`A003557(n+1)+A326187(n+1)-A325972(n+1)`
-/

namespace A325971.P7931073292298561149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + (A326187 (n + 1) - A325972 (n + 1))

end

end A325971.P7931073292298561149

/-! ## A325971.P1298648292431153276

`A011772(n+1)+A344765(n+1)-A325972(n+1)`
-/

namespace A325971.P1298648292431153276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + (A344765 (n + 1) - A325972 (n + 1))

end

end A325971.P1298648292431153276

/-! ## A325971.P3071002049643244457

`A071090(n+1)+A302433(n+1)-A325972(n+1)`
-/

namespace A325971.P3071002049643244457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (n + 1) + (A302433 (n + 1) - A325972 (n + 1))

end

end A325971.P3071002049643244457

/-! ## A325971.P17712420938032114848

`A057521(n+1)+A326184(n+1)-A325972(n+1)`
-/

namespace A325971.P17712420938032114848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) + (A326184 (n + 1) - A325972 (n + 1))

end

end A325971.P17712420938032114848

/-! ## A325971.P5776404258544884207

`A324121(n+1)+A324122(n+1)-A325972(n+1)`
-/

namespace A325971.P5776404258544884207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (n + 1) + (A324122 (n + 1) - A325972 (n + 1))

end

end A325971.P5776404258544884207

/-! ## A325971.P4808303097237565696

`A325973(n+1)+A325974(n+1)-A325972(n+1)`
-/

namespace A325971.P4808303097237565696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) + (A325974 (n + 1) - A325972 (n + 1))

end

end A325971.P4808303097237565696

/-! ## A325971.P14847402801956822332

`A326135(n+1)+A326136(n+1)-A325972(n+1)`
-/

namespace A325971.P14847402801956822332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (n + 1) + (A326136 (n + 1) - A325972 (n + 1))

end

end A325971.P14847402801956822332

/-! ## A325971.P7439504026530241523

`A294896(n+1)*A295655(n+1)-A325972(n+1)`
-/

namespace A325971.P7439504026530241523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294896 (n + 1) * A295655 (n + 1) - A325972 (n + 1)

end

end A325971.P7439504026530241523

/-! ## A325971.P6125831579427690701

`A341529(n+1)/A003961(n+1)-A325972(n+1)`
-/

namespace A325971.P6125831579427690701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) - (A325972 (n + 1) : ℚ)

end

end A325971.P6125831579427690701

/-! ## A325971.P13004870222033323007

`A348688(n+1)-(A348689(n+2)+A325972(n+1))`
-/

namespace A325971.P13004870222033323007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348688 (n + 1) - (A348689 (n + 2) + A325972 (n + 1))

end

end A325971.P13004870222033323007

/-!
# A325972: a(n) is the largest k <= sigma(n)-A007947(n) such that n-k and n-(sigma(n)-k) are relatively prime.

The programs for A325972, there is no canonical definition to state claims against.
-/

/-! ## A325972.P15216243946579292015

`A000203(n+1)-A325971(n+1)`
-/

namespace A325972.P15216243946579292015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325971 (n + 1)

end

end A325972.P15216243946579292015

/-! ## A325972.P8183110181108210786

`A325970(n+1)+A001065(n+1)`
-/

namespace A325972.P8183110181108210786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (n + 1) + A001065 (n + 1)

end

end A325972.P8183110181108210786

/-! ## A325972.P6948320434322258267

`A325970(n+1)+A091818(n+1)/2`
-/

namespace A325972.P6948320434322258267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325970 (n + 1) : ℚ) + (A091818 (n + 1) : ℚ) / 2

end

end A325972.P6948320434322258267

/-! ## A325972.P11174701690119369969

`abs(A325971(n+1)-A245092(2*n+1))`
-/

namespace A325972.P11174701690119369969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325971 (n + 1) - A245092 (2 * n + 1)|

end

end A325972.P11174701690119369969

/-! ## A325972.P14643649566304904241

`A000203(n+1)+A325970(n+1)-(n+1)`
-/

namespace A325972.P14643649566304904241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A325970 (n + 1) - (n + 1 : ℤ))

end

end A325972.P14643649566304904241

/-! ## A325972.P7371186768182001451

`A001065(n+1)+1+n-A325971(n+1)`
-/

namespace A325972.P7371186768182001451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A325971 (n + 1)

end

end A325972.P7371186768182001451

/-! ## A325972.P17712485404884241301

`2*(n+1)-A033879(n+1)-A325971(n+1)`
-/

namespace A325972.P17712485404884241301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A325971 (n + 1)

end

end A325972.P17712485404884241301

/-! ## A325972.P3670733429998839689

`A325817(n+1)+A325970(n+1)+A325826(n+1)`
-/

namespace A325972.P3670733429998839689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 1) + (A325970 (n + 1) + A325826 (n + 1))

end

end A325972.P3670733429998839689

/-! ## A325972.P14121621329370651657

`A325967(n+1)+A325970(n+1)+A325969(n+1)`
-/

namespace A325972.P14121621329370651657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325967 (n + 1) + (A325970 (n + 1) + A325969 (n + 1))

end

end A325972.P14121621329370651657

/-! ## A325972.P15217896986409504041

`A034448(n+1)+A048146(n+1)-A325971(n+1)`
-/

namespace A325972.P15217896986409504041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A325971 (n + 1))

end

end A325972.P15217896986409504041

/-! ## A325972.P3437356953553725972

`A000593(n+1)+A146076(n+1)-A325971(n+1)`
-/

namespace A325972.P3437356953553725972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A325971 (n + 1))

end

end A325972.P3437356953553725972

/-! ## A325972.P2631820708635113992

`A325970(n+1)+A326142(n+1)-A066503(n+1)`
-/

namespace A325972.P2631820708635113992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (n + 1) + (A326142 (n + 1) - A066503 (n + 1))

end

end A325972.P2631820708635113992

/-! ## A325972.P16232982054963572056

`A324121(n+1)+A324122(n+1)-A325971(n+1)`
-/

namespace A325972.P16232982054963572056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (n + 1) + (A324122 (n + 1) - A325971 (n + 1))

end

end A325972.P16232982054963572056

/-! ## A325972.P9714362117861263637

`A325817(n+1)+A325818(n+1)-A325971(n+1)`
-/

namespace A325972.P9714362117861263637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 1) + (A325818 (n + 1) - A325971 (n + 1))

end

end A325972.P9714362117861263637

/-! ## A325972.P6165481630142032934

`A325968(n+1)+A325970(n+1)-A325959(n+1)`
-/

namespace A325972.P6165481630142032934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325968 (n + 1) + (A325970 (n + 1) - A325959 (n + 1))

end

end A325972.P6165481630142032934

/-! ## A325972.P6087808594379201920

`A325973(n+1)+A325974(n+1)-A325971(n+1)`
-/

namespace A325972.P6087808594379201920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) + (A325974 (n + 1) - A325971 (n + 1))

end

end A325972.P6087808594379201920

/-! ## A325972.P7692267868757342305

`A046520(n+1)+A000005(n+1)+A109606(n+1)+1-A325971(n+1)`
-/

namespace A325972.P7692267868757342305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1) + A000005 (n + 1) + (A109606 (n + 1) + 1) - A325971 (n + 1)

end

end A325972.P7692267868757342305

/-! ## A325972.P14693711135176049987

`A325970(n+1)+A110654(A091818(n+1))`
-/

namespace A325972.P14693711135176049987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (n + 1) + A110654 (A091818 (n + 1)).toNat

end

end A325972.P14693711135176049987

/-! ## A325972.P16977601503705046591

`abs(A325971(n+1)-A245093(∑[n+1]))`
-/

namespace A325972.P16977601503705046591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325971 (n + 1) - A245093 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A325972.P16977601503705046591

/-!
# A325973: Arithmetic mean of {sum of unitary divisors} and {sum of squarefree divisors}: a(n) = (1/2) * (A034448(n) + A048250(n)).

The programs for A325973, the canonical program `A325973.P1592013717773654083` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325973 has offset 1).

The definition of A325973 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325973.P5344278607348147232

`n+1+A325977(n+1)`
-/

namespace A325973.P5344278607348147232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A325977 (n + 1)

end

end A325973.P5344278607348147232

namespace A325973

/-- `n+1+A325977(n+1)` -/
def P5344278607348147232.Spec : Prop :=
  ∀ n, P5344278607348147232.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P16450929099792214823

`A000203(n+1)-A325974(n+1)`
-/

namespace A325973.P16450929099792214823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325974 (n + 1)

end

end A325973.P16450929099792214823

namespace A325973

/-- `A000203(n+1)-A325974(n+1)` -/
def P16450929099792214823.Spec : Prop :=
  ∀ n, P16450929099792214823.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P1592013717773654083

`(A034448(n+1)+A048250(n+1))/2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A325973

/-- `(A034448(n+1)+A048250(n+1))/2` -/
def P1592013717773654083.Spec : Prop :=
  ∀ n, P1592013717773654083.a n = (A325973 (n + 1) : ℚ)

end A325973

/-! ## A325973.P16060155942696504730

`1/2*(A034448(n+1)+A048250(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325973.P16060155942696504730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A034448 (n + 1) + A048250 (n + 1) : ℚ)

end

end A325973.P16060155942696504730

namespace A325973

/-- `1/2*(A034448(n+1)+A048250(n+1))` -/
def P16060155942696504730.Spec : Prop :=
  ∀ n, P16060155942696504730.a n = (A325973 (n + 1) : ℚ)

end A325973

/-! ## A325973.P3956786284921783943

`∑{d}[n+1, A388286(#)]`
-/

namespace A325973.P3956786284921783943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A388286 d

end

end A325973.P3956786284921783943

namespace A325973

/-- `∑{d}[n+1, A388286(#)]` -/
def P3956786284921783943.Spec : Prop :=
  ∀ n, P3956786284921783943.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P9011195514866110867

`A325978(n+1)+A001065(n+1)`
-/

namespace A325973.P9011195514866110867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1) + A001065 (n + 1)

end

end A325973.P9011195514866110867

namespace A325973

/-- `A325978(n+1)+A001065(n+1)` -/
def P9011195514866110867.Spec : Prop :=
  ∀ n, P9011195514866110867.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P13271343983472087966

`A359431(n+1)+A326043(n+1)`
-/

namespace A325973.P13271343983472087966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359431 (n + 1) + A326043 (n + 1)

end

end A325973.P13271343983472087966

namespace A325973

/-- `A359431(n+1)+A326043(n+1)` -/
def P13271343983472087966.Spec : Prop :=
  ∀ n, P13271343983472087966.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P13052175138632192370

`A389204(n+1)+A325974(n+1)`
-/

namespace A325973.P13052175138632192370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389204 (n + 1) + A325974 (n + 1)

end

end A325973.P13052175138632192370

namespace A325973

/-- `A389204(n+1)+A325974(n+1)` -/
def P13052175138632192370.Spec : Prop :=
  ∀ n, P13052175138632192370.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P8159783878226305567

`A348984(n+1)*A348986(n+1)`
-/

namespace A325973.P8159783878226305567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348984 (n + 1) * A348986 (n + 1)

end

end A325973.P8159783878226305567

namespace A325973

/-- `A348984(n+1)*A348986(n+1)` -/
def P8159783878226305567.Spec : Prop :=
  ∀ n, P8159783878226305567.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P8621333832277182849

`A088580(n+1)-(A325974(n+1)+1)`
-/

namespace A325973.P8621333832277182849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A325974 (n + 1) + 1)

end

end A325973.P8621333832277182849

namespace A325973

/-- `A088580(n+1)-(A325974(n+1)+1)` -/
def P8621333832277182849.Spec : Prop :=
  ∀ n, P8621333832277182849.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P10343145159516033605

`A074400(n+1)/2-A325974(n+1)`
-/

namespace A325973.P10343145159516033605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A325974 (n + 1) : ℚ)

end

end A325973.P10343145159516033605

namespace A325973

/-- `A074400(n+1)/2-A325974(n+1)` -/
def P10343145159516033605.Spec : Prop :=
  ∀ n, P10343145159516033605.a n = (A325973 (n + 1) : ℚ)

end A325973

/-! ## A325973.P17710492780447421868

`abs(A325974(n+1)-A245092(2*n+1))`
-/

namespace A325973.P17710492780447421868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325974 (n + 1) - A245092 (2 * n + 1)|

end

end A325973.P17710492780447421868

namespace A325973

/-- `abs(A325974(n+1)-A245092(2*n+1))` -/
def P17710492780447421868.Spec : Prop :=
  ∀ n, P17710492780447421868.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P14752560330410449049

`A000203(n+1)+A325978(n+1)-(n+1)`
-/

namespace A325973.P14752560330410449049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A325978 (n + 1) - (n + 1 : ℤ))

end

end A325973.P14752560330410449049

namespace A325973

/-- `A000203(n+1)+A325978(n+1)-(n+1)` -/
def P14752560330410449049.Spec : Prop :=
  ∀ n, P14752560330410449049.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P15549575214664740474

`A001065(n+1)+1+n-A325974(n+1)`
-/

namespace A325973.P15549575214664740474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A325974 (n + 1)

end

end A325973.P15549575214664740474

namespace A325973

/-- `A001065(n+1)+1+n-A325974(n+1)` -/
def P15549575214664740474.Spec : Prop :=
  ∀ n, P15549575214664740474.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P14580687714563977980

`2*(n+1)-A033879(n+1)-A325974(n+1)`
-/

namespace A325973.P14580687714563977980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A325974 (n + 1)

end

end A325973.P14580687714563977980

namespace A325973

/-- `2*(n+1)-A033879(n+1)-A325974(n+1)` -/
def P14580687714563977980.Spec : Prop :=
  ∀ n, P14580687714563977980.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P5987194466460439439

`(A034448(A007947(n+1))+A034448(n+1))/2`
-/

namespace A325973.P5987194466460439439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (A007947 (n + 1)).toNat + A034448 (n + 1) : ℚ) / 2

end

end A325973.P5987194466460439439

namespace A325973

/-- `(A034448(A007947(n+1))+A034448(n+1))/2` -/
def P5987194466460439439.Spec : Prop :=
  ∀ n, P5987194466460439439.a n = (A325973 (n + 1) : ℚ)

end A325973

/-! ## A325973.P6701964323512604930

`A034460(n+1)+A325978(n+1)+A048146(n+1)`
-/

namespace A325973.P6701964323512604930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (A325978 (n + 1) + A048146 (n + 1))

end

end A325973.P6701964323512604930

namespace A325973

/-- `A034460(n+1)+A325978(n+1)+A048146(n+1)` -/
def P6701964323512604930.Spec : Prop :=
  ∀ n, P6701964323512604930.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P1638105642084603682

`A000217(n+1)-(A325974(n+1)+A024816(n+1))`
-/

namespace A325973.P1638105642084603682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - (A325974 (n + 1) + A024816 (n + 1))

end

end A325973.P1638105642084603682

namespace A325973

/-- `A000217(n+1)-(A325974(n+1)+A024816(n+1))` -/
def P1638105642084603682.Spec : Prop :=
  ∀ n, P1638105642084603682.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P6690294285950068218

`A034448(n+1)+A048146(n+1)-A325974(n+1)`
-/

namespace A325973.P6690294285950068218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A325974 (n + 1))

end

end A325973.P6690294285950068218

namespace A325973

/-- `A034448(n+1)+A048146(n+1)-A325974(n+1)` -/
def P6690294285950068218.Spec : Prop :=
  ∀ n, P6690294285950068218.a n = A325973 (n + 1)

end A325973

/-! ## A325973.P18178046825011343464

`A048250(n+1)+A325974(n+1)-A048146(n+1)`
-/

namespace A325973.P18178046825011343464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A325974 (n + 1) - A048146 (n + 1))

end

end A325973.P18178046825011343464

namespace A325973

/-- `A048250(n+1)+A325974(n+1)-A048146(n+1)` -/
def P18178046825011343464.Spec : Prop :=
  ∀ n, P18178046825011343464.a n = A325973 (n + 1)

end A325973

/-!
# A325974: Arithmetic mean of {sum of non-unitary divisors} and {sum of nonsquarefree divisors}: a(n) = (1/2)*(A048146(n) + A162296(n)).

The programs for A325974, the canonical program `A325974.P5304343172121658747` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325974 has offset 1).

The definition of A325974 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325974.P18388429869434850432

`n+1-A325978(n+1)`
-/

namespace A325974.P18388429869434850432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A325978 (n + 1)

end

end A325974.P18388429869434850432

namespace A325974

/-- `n+1-A325978(n+1)` -/
def P18388429869434850432.Spec : Prop :=
  ∀ n, P18388429869434850432.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P5304343172121658747

`A000203(n+1)-A325973(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A325974

/-- `A000203(n+1)-A325973(n+1)` -/
def P5304343172121658747.Spec : Prop :=
  ∀ n, P5304343172121658747.a n = A325974 (n + 1)

theorem P5304343172121658747.correct : P5304343172121658747.Spec := by
  intro n
  simp only [A325974, Nat.add_sub_cancel]

end A325974

/-! ## A325974.P8412100215154502689

`(A048146(n+1)+A162296(n+1))/2`
-/

namespace A325974.P8412100215154502689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A162296 (n + 1) : ℚ) / 2

end

end A325974.P8412100215154502689

namespace A325974

/-- `(A048146(n+1)+A162296(n+1))/2` -/
def P8412100215154502689.Spec : Prop :=
  ∀ n, P8412100215154502689.a n = (A325974 (n + 1) : ℚ)

end A325974

/-! ## A325974.P7985132718777005784

`1/2*(A048146(n+1)+A162296(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325974.P7985132718777005784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A048146 (n + 1) + A162296 (n + 1) : ℚ)

end

end A325974.P7985132718777005784

namespace A325974

/-- `1/2*(A048146(n+1)+A162296(n+1))` -/
def P7985132718777005784.Spec : Prop :=
  ∀ n, P7985132718777005784.a n = (A325974 (n + 1) : ℚ)

end A325974

/-! ## A325974.P6643546185165016789

`∑{d}[n+1, A389072(#)]`
-/

namespace A325974.P6643546185165016789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A389072 d

end

end A325974.P6643546185165016789

namespace A325974

/-- `∑{d}[n+1, A389072(#)]` -/
def P6643546185165016789.Spec : Prop :=
  ∀ n, P6643546185165016789.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P6278219049427638740

`A001065(n+1)-A325977(n+1)`
-/

namespace A325974.P6278219049427638740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A325977 (n + 1)

end

end A325974.P6278219049427638740

namespace A325974

/-- `A001065(n+1)-A325977(n+1)` -/
def P6278219049427638740.Spec : Prop :=
  ∀ n, P6278219049427638740.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P941435661560487749

`A325973(n+1)-A389204(n+1)`
-/

namespace A325974.P941435661560487749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) - A389204 (n + 1)

end

end A325974.P941435661560487749

namespace A325974

/-- `A325973(n+1)-A389204(n+1)` -/
def P941435661560487749.Spec : Prop :=
  ∀ n, P941435661560487749.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P6921397568644551813

`A245092(2*n+1)-A325973(n+1)`
-/

namespace A325974.P6921397568644551813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A325973 (n + 1)

end

end A325974.P6921397568644551813

namespace A325974

/-- `A245092(2*n+1)-A325973(n+1)` -/
def P6921397568644551813.Spec : Prop :=
  ∀ n, P6921397568644551813.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P4217679603311833992

`A237588(n+1)-A325977(n+1)+n`
-/

namespace A325974.P4217679603311833992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) - A325977 (n + 1) + (n : ℤ)

end

end A325974.P4217679603311833992

namespace A325974

/-- `A237588(n+1)-A325977(n+1)+n` -/
def P4217679603311833992.Spec : Prop :=
  ∀ n, P4217679603311833992.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P5944314971910816476

`A000203(n+1)-(A325977(n+1)+n+1)`
-/

namespace A325974.P5944314971910816476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A325977 (n + 1) + (n + 1 : ℤ))

end

end A325974.P5944314971910816476

namespace A325974

/-- `A000203(n+1)-(A325977(n+1)+n+1)` -/
def P5944314971910816476.Spec : Prop :=
  ∀ n, P5944314971910816476.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P15289670771763508914

`A007503(n+1)-(A325977(n+1)+A062249(n+1))`
-/

namespace A325974.P15289670771763508914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - (A325977 (n + 1) + A062249 (n + 1))

end

end A325974.P15289670771763508914

namespace A325974

/-- `A007503(n+1)-(A325977(n+1)+A062249(n+1))` -/
def P15289670771763508914.Spec : Prop :=
  ∀ n, P15289670771763508914.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P14303311703942763022

`A034448(n+1)+A048146(n+1)-A325973(n+1)`
-/

namespace A325974.P14303311703942763022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A325973 (n + 1))

end

end A325974.P14303311703942763022

namespace A325974

/-- `A034448(n+1)+A048146(n+1)-A325973(n+1)` -/
def P14303311703942763022.Spec : Prop :=
  ∀ n, P14303311703942763022.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P8713014956731693587

`A034460(n+1)+A048146(n+1)-A325977(n+1)`
-/

namespace A325974.P8713014956731693587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (A048146 (n + 1) - A325977 (n + 1))

end

end A325974.P8713014956731693587

namespace A325974

/-- `A034460(n+1)+A048146(n+1)-A325977(n+1)` -/
def P8713014956731693587.Spec : Prop :=
  ∀ n, P8713014956731693587.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P4814393436182941923

`A048146(n+1)+A325973(n+1)-A048250(n+1)`
-/

namespace A325974.P4814393436182941923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) + (A325973 (n + 1) - A048250 (n + 1))

end

end A325974.P4814393436182941923

namespace A325974

/-- `A048146(n+1)+A325973(n+1)-A048250(n+1)` -/
def P4814393436182941923.Spec : Prop :=
  ∀ n, P4814393436182941923.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P936118838127103988

`A162296(n+1)+A325973(n+1)-A034448(n+1)`
-/

namespace A325974.P936118838127103988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1) + (A325973 (n + 1) - A034448 (n + 1))

end

end A325974.P936118838127103988

namespace A325974

/-- `A162296(n+1)+A325973(n+1)-A034448(n+1)` -/
def P936118838127103988.Spec : Prop :=
  ∀ n, P936118838127103988.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P12465480468448823197

`A162296(n+1)+A325977(n+1)-A034460(n+1)`
-/

namespace A325974.P12465480468448823197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1) + (A325977 (n + 1) - A034460 (n + 1))

end

end A325974.P12465480468448823197

namespace A325974

/-- `A162296(n+1)+A325977(n+1)-A034460(n+1)` -/
def P12465480468448823197.Spec : Prop :=
  ∀ n, P12465480468448823197.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P17599866511560932433

`A048250(n+1)+A162296(n+1)-A325973(n+1)`
-/

namespace A325974.P17599866511560932433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A162296 (n + 1) - A325973 (n + 1))

end

end A325974.P17599866511560932433

namespace A325974

/-- `A048250(n+1)+A162296(n+1)-A325973(n+1)` -/
def P17599866511560932433.Spec : Prop :=
  ∀ n, P17599866511560932433.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P14638584283253602928

`A000203(n+1)-(A359431(n+1)+A326043(n+1))`
-/

namespace A325974.P14638584283253602928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A359431 (n + 1) + A326043 (n + 1))

end

end A325974.P14638584283253602928

namespace A325974

/-- `A000203(n+1)-(A359431(n+1)+A326043(n+1))` -/
def P14638584283253602928.Spec : Prop :=
  ∀ n, P14638584283253602928.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P15310163660238755571

`A034448(n+1)-(A325977(n+1)+A325814(n+1))`
-/

namespace A325974.P15310163660238755571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (A325977 (n + 1) + A325814 (n + 1))

end

end A325974.P15310163660238755571

namespace A325974

/-- `A034448(n+1)-(A325977(n+1)+A325814(n+1))` -/
def P15310163660238755571.Spec : Prop :=
  ∀ n, P15310163660238755571.a n = A325974 (n + 1)

end A325974

/-! ## A325974.P17014840429483442838

`A048146(n+1)+A325977(n+1)-A325313(n+1)`
-/

namespace A325974.P17014840429483442838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) + (A325977 (n + 1) - A325313 (n + 1))

end

end A325974.P17014840429483442838

namespace A325974

/-- `A048146(n+1)+A325977(n+1)-A325313(n+1)` -/
def P17014840429483442838.Spec : Prop :=
  ∀ n, P17014840429483442838.a n = A325974 (n + 1)

end A325974

/-!
# A325975: a(n) = gcd(A325977(n), A325978(n)).

The programs for A325975, the canonical program `A325975.P4868771464823910361` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325975 has offset 1).

The definition of A325975 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, A325313, A325314, A325814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325975.P4868771464823910361

`1/2*gcd(A034460(n+1)+A325313(n+1), A325814(n+1)+A325314(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A325975

/-- `1/2*gcd(A034460(n+1)+A325313(n+1), A325814(n+1)+A325314(n+1))` -/
def P4868771464823910361.Spec : Prop :=
  ∀ n, P4868771464823910361.a n = (A325975 (n + 1) : ℚ)

end A325975

/-! ## A325975.P6031337466533168473

`gcd(A033879(n+1), A325977(n+1))`
-/

namespace A325975.P6031337466533168473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033879 (n + 1)) (A325977 (n + 1))

end

end A325975.P6031337466533168473

namespace A325975

/-- `gcd(A033879(n+1), A325977(n+1))` -/
def P6031337466533168473.Spec : Prop :=
  ∀ n, (P6031337466533168473.a n : ℤ) = A325975 (n + 1)

end A325975

/-! ## A325975.P5698086708315354445

`gcd(A033880(n+1), A325978(n+1))`
-/

namespace A325975.P5698086708315354445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033880 (n + 1)) (A325978 (n + 1))

end

end A325975.P5698086708315354445

namespace A325975

/-- `gcd(A033880(n+1), A325978(n+1))` -/
def P5698086708315354445.Spec : Prop :=
  ∀ n, (P5698086708315354445.a n : ℤ) = A325975 (n + 1)

end A325975

/-! ## A325975.P10956796489555273414

`gcd(abs(A325978(n+1)), -A033879(n+1))`
-/

namespace A325975.P10956796489555273414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A325978 (n + 1)| (-A033879 (n + 1))

end

end A325975.P10956796489555273414

namespace A325975

/-- `gcd(abs(A325978(n+1)), -A033879(n+1))` -/
def P10956796489555273414.Spec : Prop :=
  ∀ n, (P10956796489555273414.a n : ℤ) = A325975 (n + 1)

end A325975

/-! ## A325975.P3214073881141181398

`gcd(-A325977(n+1), -A325978(n+1))`
-/

namespace A325975.P3214073881141181398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A325977 (n + 1)) (-A325978 (n + 1))

end

end A325975.P3214073881141181398

namespace A325975

/-- `gcd(-A325977(n+1), -A325978(n+1))` -/
def P3214073881141181398.Spec : Prop :=
  ∀ n, (P3214073881141181398.a n : ℤ) = A325975 (n + 1)

end A325975

/-! ## A325975.P13415080313043888309

`gcd(A325978(n+1), A326068(A103517(n)))`
-/

namespace A325975.P13415080313043888309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325978 (n + 1)) (A326068 (A103517 n).toNat)

end

end A325975.P13415080313043888309

namespace A325975

/-- `gcd(A325978(n+1), A326068(A103517(n)))` -/
def P13415080313043888309.Spec : Prop :=
  ∀ n, (P13415080313043888309.a n : ℤ) = A325975 (n + 1)

end A325975

/-! ## A325975.P2186900302789238782

`gcd(A000917(n), A325385(n+1))`
-/

namespace A325975.P2186900302789238782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000917 n) (A325385 (n + 1))

end

end A325975.P2186900302789238782

namespace A325975

/-- `gcd(A000917(n), A325385(n+1))` -/
def P2186900302789238782.Spec : Prop :=
  ∀ n, (P2186900302789238782.a n : ℤ) = A325975 (n + 1)

end A325975

/-! ## A325975.P8400994840900018677

`gcd(A002322(A306695(n+1)²), A009194(n+1))`
-/

namespace A325975.P8400994840900018677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002322 (A306695 (n + 1) ^ 2).toNat) (A009194 (n + 1))

end

end A325975.P8400994840900018677

namespace A325975

/-- `gcd(A002322(A306695(n+1)²), A009194(n+1))` -/
def P8400994840900018677.Spec : Prop :=
  ∀ n, (P8400994840900018677.a n : ℤ) = A325975 (n + 1)

end A325975

/-! ## A325975.P6093594002805615892

`gcd(∑{d}[A261893(n), #], A009194(n+1))`
-/

namespace A325975.P6093594002805615892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A009194 (n + 1))

end

end A325975.P6093594002805615892

namespace A325975

/-- `gcd(∑{d}[A261893(n), #], A009194(n+1))` -/
def P6093594002805615892.Spec : Prop :=
  ∀ n, (P6093594002805615892.a n : ℤ) = A325975 (n + 1)

end A325975

/-! ## A325975.P14671728052983334834

`A009194(n+1)%A054584(n²+2)`
-/

namespace A325975.P14671728052983334834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009194 (n + 1)) (A054584 (n ^ 2 + 2))

end

end A325975.P14671728052983334834

namespace A325975

/-- `A009194(n+1)%A054584(n²+2)` -/
def P14671728052983334834.Spec : Prop :=
  ∀ n, P14671728052983334834.a n = A325975 (n + 1)

end A325975

/-! ## A325975.P16667368533494755364

`gcd(A284255((n+1)²)+n+1, A306682(n+1))`
-/

namespace A325975.P16667368533494755364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284255 ((n + 1) ^ 2) + (n + 1 : ℤ)) (A306682 (n + 1))

end

end A325975.P16667368533494755364

namespace A325975

/-- `gcd(A284255((n+1)²)+n+1, A306682(n+1))` -/
def P16667368533494755364.Spec : Prop :=
  ∀ n, (P16667368533494755364.a n : ℤ) = A325975 (n + 1)

end A325975

/-! ## A325975.P17257972137498652558

`gcd(gcd(n+1, A284255((n+1)²)), A000203(n+1))`
-/

namespace A325975.P17257972137498652558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.gcd (n + 1 : ℤ) (A284255 ((n + 1) ^ 2)) : ℤ) (A000203 (n + 1))

end

end A325975.P17257972137498652558

namespace A325975

/-- `gcd(gcd(n+1, A284255((n+1)²)), A000203(n+1))` -/
def P17257972137498652558.Spec : Prop :=
  ∀ n, (P17257972137498652558.a n : ℤ) = A325975 (n + 1)

end A325975

/-!
# A325976: a(n) is the largest k <= n such that k and (2n-sigma(n)) [= A033879(n)] are relatively prime.

The programs for A325976, there is no canonical definition to state claims against.
-/

/-! ## A325976.P8621743950760092178

`n+1-A325817(n+1)`
-/

namespace A325976.P8621743950760092178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A325817 (n + 1)

end

end A325976.P8621743950760092178

/-! ## A325976.P6341170166786464486

`A033879(n+1)+A325826(n+1)`
-/

namespace A325976.P6341170166786464486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A325826 (n + 1)

end

end A325976.P6341170166786464486

/-! ## A325976.P13173293235299552610

`A325818(n+1)-A001065(n+1)`
-/

namespace A325976.P13173293235299552610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325818 (n + 1) - A001065 (n + 1)

end

end A325976.P13173293235299552610

/-! ## A325976.P17521011780467874210

`A325826(n+1)-A033880(n+1)`
-/

namespace A325976.P17521011780467874210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325826 (n + 1) - A033880 (n + 1)

end

end A325976.P17521011780467874210

/-! ## A325976.P1587359926968334564

`A325818(n+1)-(A237588(n+1)+n)`
-/

namespace A325976.P1587359926968334564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325818 (n + 1) - (A237588 (n + 1) + (n : ℤ))

end

end A325976.P1587359926968334564

/-! ## A325976.P7285160973507348972

`A325818(n+1)+n+1-A000203(n+1)`
-/

namespace A325976.P7285160973507348972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325818 (n + 1) + ((n + 1 : ℤ) - A000203 (n + 1))

end

end A325976.P7285160973507348972

/-! ## A325976.P1035533887415539350

`A325818(n+1)+A325959(n+1)-A325968(n+1)`
-/

namespace A325976.P1035533887415539350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325818 (n + 1) + (A325959 (n + 1) - A325968 (n + 1))

end

end A325976.P1035533887415539350

/-! ## A325976.P9682426405581193290

`A325818(n+1)-(A325969(n+1)+A325967(n+1))`
-/

namespace A325976.P9682426405581193290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325818 (n + 1) - (A325969 (n + 1) + A325967 (n + 1))

end

end A325976.P9682426405581193290

/-! ## A325976.P14020878939156031419

`A325826(n+1)+A325959(n+1)-A325969(n+1)`
-/

namespace A325976.P14020878939156031419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325826 (n + 1) + (A325959 (n + 1) - A325969 (n + 1))

end

end A325976.P14020878939156031419

/-!
# A325977: a(n) = (1/2)*(A034448(n)+A048250(n)-2*n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

The programs for A325977, the canonical program `A325977.P12931186378742614702` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325977 has offset 1).

The definition of A325977 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, A325313, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325977.P12665872783362353141

`A325973(n+1)-(n+1)`
-/

namespace A325977.P12665872783362353141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) - (n + 1 : ℤ)

end

end A325977.P12665872783362353141

namespace A325977

/-- `A325973(n+1)-(n+1)` -/
def P12665872783362353141.Spec : Prop :=
  ∀ n, P12665872783362353141.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P5668662173645264283

`A325978(n+1)-A033879(n+1)`
-/

namespace A325977.P5668662173645264283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1) - A033879 (n + 1)

end

end A325977.P5668662173645264283

namespace A325977

/-- `A325978(n+1)-A033879(n+1)` -/
def P5668662173645264283.Spec : Prop :=
  ∀ n, P5668662173645264283.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P12931186378742614702

`(A034460(n+1)+A325313(n+1))/2`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A325977

/-- `(A034460(n+1)+A325313(n+1))/2` -/
def P12931186378742614702.Spec : Prop :=
  ∀ n, P12931186378742614702.a n = (A325977 (n + 1) : ℚ)

end A325977

/-! ## A325977.P8913456243976238021

`(A034448(n+1)+A048250(n+1)-2*(n+1))/2`
-/

namespace A325977.P8913456243976238021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) + A048250 (n + 1) - (2 * (n + 1) : ℤ) : ℚ) / 2

end

end A325977.P8913456243976238021

namespace A325977

/-- `(A034448(n+1)+A048250(n+1)-2*(n+1))/2` -/
def P8913456243976238021.Spec : Prop :=
  ∀ n, P8913456243976238021.a n = (A325977 (n + 1) : ℚ)

end A325977

/-! ## A325977.P2896387731395323792

`1/2*(A034448(n+1)+A048250(n+1)-2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325977.P2896387731395323792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A034448 (n + 1) + A048250 (n + 1) - (2 * (n + 1) : ℤ) : ℚ)

end

end A325977.P2896387731395323792

namespace A325977

/-- `1/2*(A034448(n+1)+A048250(n+1)-2*(n+1))` -/
def P2896387731395323792.Spec : Prop :=
  ∀ n, P2896387731395323792.a n = (A325977 (n + 1) : ℚ)

end A325977

/-! ## A325977.P4111606798470114657

`∑{d}[n+1, #]-(n+1)-A325974(n+1)`
-/

namespace A325977.P4111606798470114657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) - A325974 (n + 1)

end

end A325977.P4111606798470114657

namespace A325977

/-- `∑{d}[n+1, #]-(n+1)-A325974(n+1)` -/
def P4111606798470114657.Spec : Prop :=
  ∀ n, P4111606798470114657.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P3987872408064503538

`A325978(n+1)+A033880(n+1)`
-/

namespace A325977.P3987872408064503538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1) + A033880 (n + 1)

end

end A325977.P3987872408064503538

namespace A325977

/-- `A325978(n+1)+A033880(n+1)` -/
def P3987872408064503538.Spec : Prop :=
  ∀ n, P3987872408064503538.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P16831077929120420360

`A001065(n+1)-A325974(n+1)`
-/

namespace A325977.P16831077929120420360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A325974 (n + 1)

end

end A325977.P16831077929120420360

namespace A325977

/-- `A001065(n+1)-A325974(n+1)` -/
def P16831077929120420360.Spec : Prop :=
  ∀ n, P16831077929120420360.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P7130230201742656203

`A389204(n+1)-A325978(n+1)`
-/

namespace A325977.P7130230201742656203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389204 (n + 1) - A325978 (n + 1)

end

end A325977.P7130230201742656203

namespace A325977

/-- `A389204(n+1)-A325978(n+1)` -/
def P7130230201742656203.Spec : Prop :=
  ∀ n, P7130230201742656203.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P16861413653200538204

`A325978(n+1)+A001065(n+1)-(n+1)`
-/

namespace A325977.P16861413653200538204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1) + (A001065 (n + 1) - (n + 1 : ℤ))

end

end A325977.P16861413653200538204

namespace A325977

/-- `A325978(n+1)+A001065(n+1)-(n+1)` -/
def P16861413653200538204.Spec : Prop :=
  ∀ n, P16861413653200538204.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P2950192167234458350

`A325978(n+1)+A000203(n+1)-2*(n+1)`
-/

namespace A325977.P2950192167234458350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1) + (A000203 (n + 1) - (2 * (n + 1) : ℤ))

end

end A325977.P2950192167234458350

namespace A325977

/-- `A325978(n+1)+A000203(n+1)-2*(n+1)` -/
def P2950192167234458350.Spec : Prop :=
  ∀ n, P2950192167234458350.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P13517756543239603955

`A325978(n+1)-(2*n-A064987(n+1)/(n+1)+2)`
-/

namespace A325977.P13517756543239603955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325978 (n + 1) : ℚ) - ((2 * n : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 2)

end

end A325977.P13517756543239603955

namespace A325977

/-- `A325978(n+1)-(2*n-A064987(n+1)/(n+1)+2)` -/
def P13517756543239603955.Spec : Prop :=
  ∀ n, P13517756543239603955.a n = (A325977 (n + 1) : ℚ)

end A325977

/-! ## A325977.P11961915732848954058

`A000217(n)-(A325974(n+1)+A024816(n+1))`
-/

namespace A325977.P11961915732848954058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A325974 (n + 1) + A024816 (n + 1))

end

end A325977.P11961915732848954058

namespace A325977

/-- `A000217(n)-(A325974(n+1)+A024816(n+1))` -/
def P11961915732848954058.Spec : Prop :=
  ∀ n, P11961915732848954058.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P17384765400322123248

`A325978(n+1)+A111490(n)-A111490(n+1)`
-/

namespace A325977.P17384765400322123248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1) + (A111490 n - A111490 (n + 1))

end

end A325977.P17384765400322123248

namespace A325977

/-- `A325978(n+1)+A111490(n)-A111490(n+1)` -/
def P17384765400322123248.Spec : Prop :=
  ∀ n, P17384765400322123248.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P5638383838479734627

`A007503(n+1)-(A325974(n+1)+A062249(n+1))`
-/

namespace A325977.P5638383838479734627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - (A325974 (n + 1) + A062249 (n + 1))

end

end A325977.P5638383838479734627

namespace A325977

/-- `A007503(n+1)-(A325974(n+1)+A062249(n+1))` -/
def P5638383838479734627.Spec : Prop :=
  ∀ n, P5638383838479734627.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P16851540729550817928

`A048250(n+1)-(A325978(n+1)+A048146(n+1))`
-/

namespace A325977.P16851540729550817928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - (A325978 (n + 1) + A048146 (n + 1))

end

end A325977.P16851540729550817928

namespace A325977

/-- `A048250(n+1)-(A325978(n+1)+A048146(n+1))` -/
def P16851540729550817928.Spec : Prop :=
  ∀ n, P16851540729550817928.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P3801812586566425989

`A034448(n+1)-(A325978(n+1)+A162296(n+1))`
-/

namespace A325977.P3801812586566425989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (A325978 (n + 1) + A162296 (n + 1))

end

end A325977.P3801812586566425989

namespace A325977

/-- `A034448(n+1)-(A325978(n+1)+A162296(n+1))` -/
def P3801812586566425989.Spec : Prop :=
  ∀ n, P3801812586566425989.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P17878651678632168359

`A034460(n+1)+A325314(n+1)-A325978(n+1)`
-/

namespace A325977.P17878651678632168359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (A325314 (n + 1) - A325978 (n + 1))

end

end A325977.P17878651678632168359

namespace A325977

/-- `A034460(n+1)+A325314(n+1)-A325978(n+1)` -/
def P17878651678632168359.Spec : Prop :=
  ∀ n, P17878651678632168359.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P5284548070833539015

`A034448(n+1)-(A325974(n+1)+A325814(n+1))`
-/

namespace A325977.P5284548070833539015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (A325974 (n + 1) + A325814 (n + 1))

end

end A325977.P5284548070833539015

namespace A325977

/-- `A034448(n+1)-(A325974(n+1)+A325814(n+1))` -/
def P5284548070833539015.Spec : Prop :=
  ∀ n, P5284548070833539015.a n = A325977 (n + 1)

end A325977

/-! ## A325977.P13270935805103026455

`A034460(n+1)+A325978(n+1)-A325814(n+1)`
-/

namespace A325977.P13270935805103026455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (A325978 (n + 1) - A325814 (n + 1))

end

end A325977.P13270935805103026455

namespace A325977

/-- `A034460(n+1)+A325978(n+1)-A325814(n+1)` -/
def P13270935805103026455.Spec : Prop :=
  ∀ n, P13270935805103026455.a n = A325977 (n + 1)

end A325977

/-!
# A325978: a(n) = (1/2)*(A325314(n) + A325814(n)).

The programs for A325978, the canonical program `A325978.P3623255337971187287` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325978 has offset 1).

The definition of A325978 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325977, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325978.P9070563071724344132

`n+1-A325974(n+1)`
-/

namespace A325978.P9070563071724344132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A325974 (n + 1)

end

end A325978.P9070563071724344132

namespace A325978

/-- `n+1-A325974(n+1)` -/
def P9070563071724344132.Spec : Prop :=
  ∀ n, P9070563071724344132.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P3623255337971187287

`A033879(n+1)+A325977(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A325978

/-- `A033879(n+1)+A325977(n+1)` -/
def P3623255337971187287.Spec : Prop :=
  ∀ n, P3623255337971187287.a n = A325978 (n + 1)

theorem P3623255337971187287.correct : P3623255337971187287.Spec := by
  intro n
  simp only [A325978, Nat.add_sub_cancel]

end A325978

/-! ## A325978.P3897966465010705421

`(A325314(n+1)+A325814(n+1))/2`
-/

namespace A325978.P3897966465010705421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325314 (n + 1) + A325814 (n + 1) : ℚ) / 2

end

end A325978.P3897966465010705421

namespace A325978

/-- `(A325314(n+1)+A325814(n+1))/2` -/
def P3897966465010705421.Spec : Prop :=
  ∀ n, P3897966465010705421.a n = (A325978 (n + 1) : ℚ)

end A325978

/-! ## A325978.P1891687667891745421

`1/2*(A325314(n+1)+A325814(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325978.P1891687667891745421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A325314 (n + 1) + A325814 (n + 1) : ℚ)

end

end A325978.P1891687667891745421

namespace A325978

/-- `1/2*(A325314(n+1)+A325814(n+1))` -/
def P1891687667891745421.Spec : Prop :=
  ∀ n, P1891687667891745421.a n = (A325978 (n + 1) : ℚ)

end A325978

/-! ## A325978.P17503482969255852801

`A325973(n+1)-A001065(n+1)`
-/

namespace A325978.P17503482969255852801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) - A001065 (n + 1)

end

end A325978.P17503482969255852801

namespace A325978

/-- `A325973(n+1)-A001065(n+1)` -/
def P17503482969255852801.Spec : Prop :=
  ∀ n, P17503482969255852801.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P18081541280576311776

`A325977(n+1)-A033880(n+1)`
-/

namespace A325978.P18081541280576311776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1) - A033880 (n + 1)

end

end A325978.P18081541280576311776

namespace A325978

/-- `A325977(n+1)-A033880(n+1)` -/
def P18081541280576311776.Spec : Prop :=
  ∀ n, P18081541280576311776.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P2848340078741297955

`A325977(n+1)+1-A237588(n+1)`
-/

namespace A325978.P2848340078741297955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1) + (1 - A237588 (n + 1))

end

end A325978.P2848340078741297955

namespace A325978

/-- `A325977(n+1)+1-A237588(n+1)` -/
def P2848340078741297955.Spec : Prop :=
  ∀ n, P2848340078741297955.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P7139430297988931576

`A325977(n+1)+n+1-A001065(n+1)`
-/

namespace A325978.P7139430297988931576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1) + ((n + 1 : ℤ) - A001065 (n + 1))

end

end A325978.P7139430297988931576

namespace A325978

/-- `A325977(n+1)+n+1-A001065(n+1)` -/
def P7139430297988931576.Spec : Prop :=
  ∀ n, P7139430297988931576.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P5190402469487745941

`A325977(n+1)+2*(n+1)-A000203(n+1)`
-/

namespace A325978.P5190402469487745941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1) + ((2 * (n + 1) : ℤ) - A000203 (n + 1))

end

end A325978.P5190402469487745941

namespace A325978

/-- `A325977(n+1)+2*(n+1)-A000203(n+1)` -/
def P5190402469487745941.Spec : Prop :=
  ∀ n, P5190402469487745941.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P10095206540439952170

`A325977(n+1)+2*n-A064987(n+1)/(n+1)+2`
-/

namespace A325978.P10095206540439952170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325977 (n + 1) : ℚ) + ((2 * n : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 2)

end

end A325978.P10095206540439952170

namespace A325978

/-- `A325977(n+1)+2*n-A064987(n+1)/(n+1)+2` -/
def P10095206540439952170.Spec : Prop :=
  ∀ n, P10095206540439952170.a n = (A325978 (n + 1) : ℚ)

end A325978

/-! ## A325978.P15497549641097923824

`A325973(n+1)-(A048146(n+1)+A034460(n+1))`
-/

namespace A325978.P15497549641097923824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) - (A048146 (n + 1) + A034460 (n + 1))

end

end A325978.P15497549641097923824

namespace A325978

/-- `A325973(n+1)-(A048146(n+1)+A034460(n+1))` -/
def P15497549641097923824.Spec : Prop :=
  ∀ n, P15497549641097923824.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P221275955377455899

`A048250(n+1)-(A325977(n+1)+A048146(n+1))`
-/

namespace A325978.P221275955377455899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - (A325977 (n + 1) + A048146 (n + 1))

end

end A325978.P221275955377455899

namespace A325978

/-- `A048250(n+1)-(A325977(n+1)+A048146(n+1))` -/
def P221275955377455899.Spec : Prop :=
  ∀ n, P221275955377455899.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P9745941463826410291

`A034448(n+1)-(A325977(n+1)+A162296(n+1))`
-/

namespace A325978.P9745941463826410291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (A325977 (n + 1) + A162296 (n + 1))

end

end A325978.P9745941463826410291

namespace A325978

/-- `A034448(n+1)-(A325977(n+1)+A162296(n+1))` -/
def P9745941463826410291.Spec : Prop :=
  ∀ n, P9745941463826410291.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P11267022505281155470

`A325814(n+1)+A325977(n+1)-A034460(n+1)`
-/

namespace A325978.P11267022505281155470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1) + (A325977 (n + 1) - A034460 (n + 1))

end

end A325978.P11267022505281155470

namespace A325978

/-- `A325814(n+1)+A325977(n+1)-A034460(n+1)` -/
def P11267022505281155470.Spec : Prop :=
  ∀ n, P11267022505281155470.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P9681834823184161582

`A318878(n+1)+A325977(n+1)-A318879(n+1)`
-/

namespace A325978.P9681834823184161582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318878 (n + 1) + (A325977 (n + 1) - A318879 (n + 1))

end

end A325978.P9681834823184161582

namespace A325978

/-- `A318878(n+1)+A325977(n+1)-A318879(n+1)` -/
def P9681834823184161582.Spec : Prop :=
  ∀ n, P9681834823184161582.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P13592646646463197166

`A325314(n+1)+A325977(n+1)-A325313(n+1)`
-/

namespace A325978.P13592646646463197166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (n + 1) + (A325977 (n + 1) - A325313 (n + 1))

end

end A325978.P13592646646463197166

namespace A325978

/-- `A325314(n+1)+A325977(n+1)-A325313(n+1)` -/
def P13592646646463197166.Spec : Prop :=
  ∀ n, P13592646646463197166.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P4036755217002378403

`A325977(n+1)+A326058(n+1)-A326059(n+1)`
-/

namespace A325978.P4036755217002378403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1) + (A326058 (n + 1) - A326059 (n + 1))

end

end A325978.P4036755217002378403

namespace A325978

/-- `A325977(n+1)+A326058(n+1)-A326059(n+1)` -/
def P4036755217002378403.Spec : Prop :=
  ∀ n, P4036755217002378403.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P14869378569278525088

`A325977(n+1)+A326128(n+1)-A326127(n+1)`
-/

namespace A325978.P14869378569278525088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1) + (A326128 (n + 1) - A326127 (n + 1))

end

end A325978.P14869378569278525088

namespace A325978

/-- `A325977(n+1)+A326128(n+1)-A326127(n+1)` -/
def P14869378569278525088.Spec : Prop :=
  ∀ n, P14869378569278525088.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P12437863493402720919

`A325977(n+1)+A336564(n+1)-A336563(n+1)`
-/

namespace A325978.P12437863493402720919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1) + (A336564 (n + 1) - A336563 (n + 1))

end

end A325978.P12437863493402720919

namespace A325978

/-- `A325977(n+1)+A336564(n+1)-A336563(n+1)` -/
def P12437863493402720919.Spec : Prop :=
  ∀ n, P12437863493402720919.a n = A325978 (n + 1)

end A325978

/-! ## A325978.P15104851352170473488

`A325977(n+1)+n+2-(A000203(A000027(n+1))-n)`
-/

namespace A325978.P15104851352170473488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1) + ((n + 2 : ℤ) - (A000203 (A000027 (n + 1)).toNat - (n : ℤ)))

end

end A325978.P15104851352170473488

namespace A325978

/-- `A325977(n+1)+n+2-(A000203(A000027(n+1))-n)` -/
def P15104851352170473488.Spec : Prop :=
  ∀ n, P15104851352170473488.a n = A325978 (n + 1)

end A325978

/-!
# A325981: Odd composites for which gcd(A325977(n), A325978(n)) is equal to abs(A325977(n)).

The programs for A325981, there is no canonical definition to state claims against.
-/

/-! ## A325981.P1473491143735777168

`A230462(n+1)*A321542(A000051(2*(n+1)))`
-/

namespace A325981.P1473491143735777168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1) * A321542 (A000051 (2 * (n + 1))).toNat

end

end A325981.P1473491143735777168

/-!
# A325983: Row sums of the triangle A325982.

The programs for A325983, there is no canonical definition to state claims against.
-/

/-! ## A325983.P15061831328936971555

`∑{digits}[A241114(A173125(n)), #]`
-/

namespace A325983.P15061831328936971555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (A173125 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A325983.P15061831328936971555

/-! ## A325983.P652728179818767238

`A128227(or(A042435(n), A080513(n)))`
-/

namespace A325983.P652728179818767238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (Int.lor (A042435 n) (A080513 n)).toNat

end

end A325983.P652728179818767238

/-! ## A325983.P13305032219712548368

`A128227(or(A042435(n), A109128(n)))`
-/

namespace A325983.P13305032219712548368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (Int.lor (A042435 n) (A109128 n)).toNat

end

end A325983.P13305032219712548368

/-! ## A325983.P1556921714582292510

`A193738(or(A042435(n), A080513(n)))`
-/

namespace A325983.P1556921714582292510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (Int.lor (A042435 n) (A080513 n)).toNat

end

end A325983.P1556921714582292510

/-! ## A325983.P13467853779828946152

`A193738(or(A042435(n), A109128(n)))`
-/

namespace A325983.P13467853779828946152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (Int.lor (A042435 n) (A109128 n)).toNat

end

end A325983.P13467853779828946152

/-!
# A325984: Lexicographically earliest sequence of distinct nonnegative terms such that for any n >= 0, the sum of digits of n in base 2 equals the sum of digits of a(n) in base 3.

The programs for A325984, there is no canonical definition to state claims against.
-/

/-! ## A325984.P10494272850847489475

`A091205(A379472(n)%A141497(n+1))`
-/

namespace A325984.P10494272850847489475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (Int.tmod (A379472 n) (A141497 (n + 1))).toNat

end

end A325984.P10494272850847489475

/-!
# A325986: Heinz numbers of complete strict integer partitions.

The programs for A325986, there is no canonical definition to state claims against.
-/

/-! ## A325986.P5985839084445254808

`A265501(∑[A003557(∑[2^n])])`
-/

namespace A325986.P5985839084445254808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265501 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325986.P5985839084445254808

/-! ## A325986.P1379004222605244978

`A286652(∑[A003557(∑[2^n])])`
-/

namespace A325986.P1379004222605244978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325986.P1379004222605244978

/-! ## A325986.P17893851459363360591

`record[gcd(A034386(n), A208984(n+1))]`
-/

namespace A325986.P17893851459363360591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A208984 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325986.P17893851459363360591

/-! ## A325986.P12016703718174576026

`∩[A087007(n+1), A308115(n+1)]`
-/

namespace A325986.P12016703718174576026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325986.P12016703718174576026

/-! ## A325986.P11700820284665707589

`∩[A087007(n+1), A359420(n+1)]`
-/

namespace A325986.P11700820284665707589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325986.P11700820284665707589

/-!
# A325987: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n with k submultisets, k > 0.

The programs for A325987, there is no canonical definition to state claims against.
-/

/-! ## A325987.P13714974485638306213

`A292030(and(A304708(n), A376055(n+2)))`
-/

namespace A325987.P13714974485638306213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 (Int.land (A304708 n) (A376055 (n + 2))).toNat

end

end A325987.P13714974485638306213

/-! ## A325987.P15655933396407782461

`A327517(n+1)+A327517(A236104(n+2))`
-/

namespace A325987.P15655933396407782461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327517 (n + 1) + A327517 (A236104 (n + 2)).toNat

end

end A325987.P15655933396407782461

/-! ## A325987.P10533396247114972942

`A286627(A032447(n+1)*A084542(n+1))`
-/

namespace A325987.P10533396247114972942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286627 (A032447 (n + 1) * A084542 (n + 1)).toNat

end

end A325987.P10533396247114972942

/-! ## A325987.P14109253516697651776

`A350529(∑{e}[∑[3*(2^n-1)]+1, #])`
-/

namespace A325987.P14109253516697651776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((2 ^ n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A325987.P14109253516697651776

/-! ## A325987.P17486988457348099586

`A247477(A294750(n)+n)`
-/

namespace A325987.P17486988457348099586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247477 (A294750 n + (n : ℤ)).toNat

end

end A325987.P17486988457348099586

/-!
# A325988: Number of covering (or complete) factorizations of n.

The programs for A325988, there is no canonical definition to state claims against.
-/

/-! ## A325988.P709603369270182139

`∏{e}[n+1, ceil(#²/8)]`
-/

namespace A325988.P709603369270182139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(Nat.factorization (f1 n) p ^ 2 : ℚ) / 8⌉

end

end A325988.P709603369270182139

/-! ## A325988.P13905953874335752132

`floor(log2(exp(A050361(n+1))))`
-/

namespace A325988.P13905953874335752132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.exp (A050361 (n + 1) : ℝ))⌋

end

end A325988.P13905953874335752132

/-! ## A325988.P15064097475287223689

`A082647(∏{e}[n+1, #!])`
-/

namespace A325988.P15064097475287223689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))

end

end A325988.P15064097475287223689

/-! ## A325988.P15116688872101936862

`A250068(∏{e}[n+1, #!])`
-/

namespace A325988.P15116688872101936862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))

end

end A325988.P15116688872101936862

/-! ## A325988.P3136577736219998529

`∑{e}[n+1, A133620(#)]+1`
-/

namespace A325988.P3136577736219998529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A133620 (Nat.factorization (f1 n) p) + 1

end

end A325988.P3136577736219998529

/-! ## A325988.P1812387288658990545

`∑{e}[n+1, A233771(#)]+1`
-/

namespace A325988.P1812387288658990545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A233771 (Nat.factorization (f1 n) p) + 1

end

end A325988.P1812387288658990545

/-! ## A325988.P580055746925316829

`A325166(∏{e}[n+1, #!])+1`
-/

namespace A325988.P580055746925316829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)) + 1

end

end A325988.P580055746925316829

/-! ## A325988.P9991728951895510279

`A002487(∏{e}[n+1, #!])%7`
-/

namespace A325988.P9991728951895510279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))) 7

end

end A325988.P9991728951895510279

/-! ## A325988.P9867162324018807899

`floor(sqrt(A000005(∏{e}[n+1, #!])))`
-/

namespace A325988.P9867162324018807899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000005 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)))

end

end A325988.P9867162324018807899

/-! ## A325988.P8752466096441553954

`floor(sqrt(A101296(∏{e}[n+1, #!])))`
-/

namespace A325988.P8752466096441553954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A101296 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)))

end

end A325988.P8752466096441553954

/-!
# A325989: Number of perfect factorizations of n.

The programs for A325989, there is no canonical definition to state claims against.
-/

/-! ## A325989.P6196488275596369510

`ceil(sqrt(∏{e}[n+1, #^(#%2)]))`
-/

namespace A325989.P6196488275596369510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ (Nat.factorization (f1 n) p % 2) : ℕ) : ℝ)⌉

end

end A325989.P6196488275596369510

/-! ## A325989.P5440360134891538752

`val(∏{e}[(n+1)/∏{p}[n+1, #], #], 2)+1`
-/

namespace A325989.P5440360134891538752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p) 2 + 1

end

end A325989.P5440360134891538752

/-! ## A325989.P9946568535288350910

`ceil(sqrt(A370079(n+1)))`
-/

namespace A325989.P9946568535288350910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A370079 (n + 1) : ℝ)⌉

end

end A325989.P9946568535288350910

/-! ## A325989.P10968117991701835843

`∏{e}[n+1, A002033(#)]`
-/

namespace A325989.P10968117991701835843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002033 (Nat.factorization (f1 n) p)

end

end A325989.P10968117991701835843

/-! ## A325989.P12727730506049994159

`∏{e}[n+1, A007879(#)]`
-/

namespace A325989.P12727730506049994159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007879 (Nat.factorization (f1 n) p)

end

end A325989.P12727730506049994159

/-! ## A325989.P1880513125971811186

`∏{e}[n+1, A010193(#)]`
-/

namespace A325989.P1880513125971811186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A010193 (Nat.factorization (f1 n) p)

end

end A325989.P1880513125971811186

/-! ## A325989.P17285589366203587368

`∏{e}[n+1, A020652(#)]`
-/

namespace A325989.P17285589366203587368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A020652 (Nat.factorization (f1 n) p)

end

end A325989.P17285589366203587368

/-! ## A325989.P17852564183118131508

`∏{e}[n+1, A027750(#)]`
-/

namespace A325989.P17852564183118131508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A027750 (Nat.factorization (f1 n) p)

end

end A325989.P17852564183118131508

/-! ## A325989.P825599540595930006

`∏{e}[n+1, A034807(#)]`
-/

namespace A325989.P825599540595930006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A034807 (Nat.factorization (f1 n) p)

end

end A325989.P825599540595930006

/-! ## A325989.P7249540547360391773

`∏{e}[n+1, A034868(#)]`
-/

namespace A325989.P7249540547360391773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A034868 (Nat.factorization (f1 n) p)

end

end A325989.P7249540547360391773

/-!
# A325990: Numbers with more than one perfect factorization.

The programs for A325990, there is no canonical definition to state claims against.
-/

/-! ## A325990.P7028129319961753153

`∪[A295661(n+1), A016900(n)]`
-/

namespace A325990.P7028129319961753153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325990.P7028129319961753153

/-! ## A325990.P2890813374140261129

`∪[A295661(n+1), A016960(n)]`
-/

namespace A325990.P2890813374140261129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016960 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325990.P2890813374140261129

/-! ## A325990.P13224889973804032886

`∪[A295661(n+1), A017032(n)]`
-/

namespace A325990.P13224889973804032886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017032 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325990.P13224889973804032886

/-! ## A325990.P2985518603044471207

`∪[A295661(n+1), A017116(n)]`
-/

namespace A325990.P2985518603044471207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017116 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325990.P2985518603044471207

/-! ## A325990.P4736223777538478618

`∪[A295661(n+1), A017212(n)]`
-/

namespace A325990.P4736223777538478618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017212 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325990.P4736223777538478618

/-! ## A325990.P18158893360575950726

`∪[A295661(n+1), A017320(n)]`
-/

namespace A325990.P18158893360575950726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017320 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325990.P18158893360575950726

/-! ## A325990.P17976007131677937363

`∪[A295661(n+1), A017440(n)]`
-/

namespace A325990.P17976007131677937363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325990.P17976007131677937363

/-! ## A325990.P1178616607290610854

`∪[A295661(n+1), A017572(n)]`
-/

namespace A325990.P1178616607290610854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325990.P1178616607290610854

/-! ## A325990.P13492924595307424281

`∪[A014969(n+1), A295661(n+1)]`
-/

namespace A325990.P13492924595307424281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325990.P13492924595307424281

/-! ## A325990.P5253119307597524683

`∪[A016780(n+1), A295661(n+1)]`
-/

namespace A325990.P5253119307597524683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325990.P5253119307597524683

/-!
# A325991: Heinz numbers of integer partitions such that not every orderless pair of distinct parts has a different sum.

The programs for A325991, there is no canonical definition to state claims against.
-/

/-! ## A325991.P2451746577399452900

`∩[A034683(n+1), A008486(A360681(n+1))]`
-/

namespace A325991.P2451746577399452900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A360681 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325991.P2451746577399452900

/-!
# A325992: Heinz numbers of integer partitions such that not every ordered pair of distinct parts has a different difference.

The programs for A325992, there is no canonical definition to state claims against.
-/

/-! ## A325992.P4866228463551101239

`record[gcd(A000977(n+1), A335084(n+1))]`
-/

namespace A325992.P4866228463551101239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000977 (n + 1)) (A335084 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325992.P4866228463551101239

/-! ## A325992.P17070007662537341988

`∩[A304391(n+1), A341329(n+1)]`
-/

namespace A325992.P17070007662537341988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325992.P17070007662537341988

/-!
# A325994: Heinz numbers of integer partitions such that not every ordered pair of distinct parts has a different quotient.

The programs for A325994, there is no canonical definition to state claims against.
-/

/-! ## A325994.P3932370516628778272

`A333919(A043413(n+1)+A007980(n))`
-/

namespace A325994.P3932370516628778272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333919 (A043413 (n + 1) + A007980 n).toNat

end

end A325994.P3932370516628778272

/-!
# A325995: E.g.f.: Sum_{n>=0} (n+1) * x^n * (exp(n*x) + 1)^n / (1 + x*exp(n*x))^(n+2).

The programs for A325995, there is no canonical definition to state claims against.
-/

/-! ## A325995.P4368722408212938346

`A331590(∑[A183067(n)])`
-/

namespace A325995.P4368722408212938346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331590 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325995.P4368722408212938346

/-!
# A325996: E.g.f.: Sum_{n>=0} (n+1)*(n+2)/2 * x^n * (exp(n*x) + 1)^n / (1 + x*exp(n*x))^(n+3).

The programs for A325996, there is no canonical definition to state claims against.
-/

/-! ## A325996.P15698674051235486415

`∑[A126287(∑[A304192(n)])]`
-/

namespace A325996.P15698674051235486415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126287 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325996.P15698674051235486415

