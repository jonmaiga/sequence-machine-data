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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
# A274405: Number of anti-down steps in all modified skew Dyck paths of semilength n.

The programs for A274405, there is no canonical definition to state claims against.
-/

/-! ## A274405.P390114509926449815

`A079691(xor(A149395(n), A318919(n+1)))`
-/

namespace A274405.P390114509926449815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079691 (Int.xor (A149395 n) (A318919 (n + 1))).toNat

end

end A274405.P390114509926449815

/-! ## A274405.P1713290789171400576

`round(A217595(2*(n+1))/10)`
-/

namespace A274405.P1713290789171400576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A217595 (2 * (n + 1)) : ℚ) / 10)

end

end A274405.P1713290789171400576

/-! ## A274405.P7684993463911363307

`A100196(A001810(n))`
-/

namespace A274405.P7684993463911363307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A001810 n).toNat

end

end A274405.P7684993463911363307

/-!
# A274406: Numbers m such that 9 divides m*(m + 1).

The programs for A274406, the canonical program `A274406.P920743806926607208` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274406 has offset 1).

The definition of A274406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274406.P920743806926607208

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=8, a(2)=9`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274406

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P920743806926607208.Spec : Prop :=
  ∀ n, P920743806926607208.a n = A274406 (n + 1)

theorem P920743806926607208.correct : P920743806926607208.Spec := by
  intro n
  simp only [A274406, Nat.add_sub_cancel]

end A274406

/-! ## A274406.P2337506349999046629

`(18*(n+1)+7*(-1)^(n+1)-11)/4`
-/

namespace A274406.P2337506349999046629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 * (n + 1) : ℤ) + 7 * (-1) ^ (n + 1) - 11 : ℚ) / 4

end

end A274406.P2337506349999046629

namespace A274406

/-- `(18*(n+1)+7*(-1)^(n+1)-11)/4` -/
def P2337506349999046629.Spec : Prop :=
  ∀ n, P2337506349999046629.a n = (A274406 (n + 1) : ℚ)

theorem P2337506349999046629.correct : P2337506349999046629.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A274406, Nat.add_sub_cancel, A274406.P2337506349999046629.a, A274406.P920743806926607208.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A274406, Nat.add_sub_cancel, A274406.P2337506349999046629.a, A274406.P920743806926607208.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A274406

/-! ## A274406.P10441497960762938805

`a(n-2)+9` with `a(0)=0, a(1)=8`
-/

namespace A274406.P10441497960762938805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n a =>
  a (n - 2) + 9

end

end A274406.P10441497960762938805

namespace A274406

/-- `a(n-2)+9` -/
def P10441497960762938805.Spec : Prop :=
  ∀ n, (P10441497960762938805.a n : ℤ) = A274406 (n + 1)

end A274406

/-! ## A274406.P2257625308141376947

`∑[8^(n%2)]-1`
-/

namespace A274406.P2257625308141376947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A274406.P2257625308141376947

namespace A274406

/-- `∑[8^(n%2)]-1` -/
def P2257625308141376947.Spec : Prop :=
  ∀ n, P2257625308141376947.a n = A274406 (n + 1)

end A274406

/-! ## A274406.P1218648818254463778

`∑[8^and(1, n)]-1`
-/

namespace A274406.P1218648818254463778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A274406.P1218648818254463778

namespace A274406

/-- `∑[8^and(1, n)]-1` -/
def P1218648818254463778.Spec : Prop :=
  ∀ n, P1218648818254463778.a n = A274406 (n + 1)

end A274406

/-! ## A274406.P7312381222486995804

`∑[abs(a(n-2))]` with `a(0)=0, a(1)=8, a(2)=1`
-/

namespace A274406.P7312381222486995804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8, 1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274406.P7312381222486995804

namespace A274406

/-- `∑[abs(a(n-2))]` -/
def P7312381222486995804.Spec : Prop :=
  ∀ n, (P7312381222486995804.a n : ℤ) = A274406 (n + 1)

end A274406

/-! ## A274406.P1350695164531310816

`∑[9-a(n-1)]` with `a(0)=0, a(1)=8`
-/

namespace A274406.P1350695164531310816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274406.P1350695164531310816

namespace A274406

/-- `∑[9-a(n-1)]` -/
def P1350695164531310816.Spec : Prop :=
  ∀ n, P1350695164531310816.a n = A274406 (n + 1)

end A274406

/-! ## A274406.P16025324463863188555

`∑[∑[ogf((8x+x^2)/(1+x))]]`
-/

namespace A274406.P16025324463863188555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274406.P16025324463863188555

namespace A274406

/-- `∑[∑[ogf((8x+x^2)/(1+x))]]` -/
def P16025324463863188555.Spec : Prop :=
  ∀ n, P16025324463863188555.a n = A274406 (n + 1)

end A274406

/-! ## A274406.P11692391200174385941

`ogf((8x+x^2)/(1-x-x^2+x^3))`
-/

namespace A274406.P11692391200174385941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 1] [1, -1, -1, 1] n

end

end A274406.P11692391200174385941

namespace A274406

/-- `ogf((8x+x^2)/(1-x-x^2+x^3))` -/
def P11692391200174385941.Spec : Prop :=
  ∀ n, P11692391200174385941.a n = A274406 (n + 1)

end A274406

/-! ## A274406.P5231301231649996880

`∑[gcd(2, n+1)^3]-1`
-/

namespace A274406.P5231301231649996880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A274406.P5231301231649996880

namespace A274406

/-- `∑[gcd(2, n+1)^3]-1` -/
def P5231301231649996880.Spec : Prop :=
  ∀ n, P5231301231649996880.a n = A274406 (n + 1)

end A274406

/-! ## A274406.P7213718898989479354

`9-floor(-a(n-2))` with `a(0)=0, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A274406.P7213718898989479354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  9 - (-a (n - 2))

end

end A274406.P7213718898989479354

namespace A274406

/-- `9-floor(-a(n-2))` -/
def P7213718898989479354.Spec : Prop :=
  ∀ n, P7213718898989479354.a n = A274406 (n + 1)

end A274406

/-! ## A274406.P4878559660146054679

`9-ceil(-a(n-2))` with `a(0)=0, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A274406.P4878559660146054679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  9 - (-a (n - 2))

end

end A274406.P4878559660146054679

namespace A274406

/-- `9-ceil(-a(n-2))` -/
def P4878559660146054679.Spec : Prop :=
  ∀ n, P4878559660146054679.a n = A274406 (n + 1)

end A274406

/-! ## A274406.P14369132019938886018

`9-round(-a(n-2))` with `a(0)=0, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A274406.P14369132019938886018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  9 - (-a (n - 2))

end

end A274406.P14369132019938886018

namespace A274406

/-- `9-round(-a(n-2))` -/
def P14369132019938886018.Spec : Prop :=
  ∀ n, P14369132019938886018.a n = A274406 (n + 1)

end A274406

/-! ## A274406.P12866292072688665195

`lt[n*(dr(n+2)-2), 1]`
-/

namespace A274406.P12866292072688665195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((SequenceMachineLib.digitalRoot (n + 2 : ℤ) : ℤ) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274406.P12866292072688665195

namespace A274406

/-- `lt[n*(dr(n+2)-2), 1]` -/
def P12866292072688665195.Spec : Prop :=
  ∀ n, (P12866292072688665195.a n : ℤ) = A274406 (n + 1)

end A274406

/-! ## A274406.P11889283847683318807

`lt[dr(n+2)+n, n+3]`
-/

namespace A274406.P11889283847683318807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 2 : ℤ) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274406.P11889283847683318807

namespace A274406

/-- `lt[dr(n+2)+n, n+3]` -/
def P11889283847683318807.Spec : Prop :=
  ∀ n, (P11889283847683318807.a n : ℤ) = A274406 (n + 1)

end A274406

/-! ## A274406.P14754588848077579715

`record[n-5*dr((2*n)²)]`
-/

namespace A274406.P14754588848077579715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (5 * SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274406.P14754588848077579715

namespace A274406

/-- `record[n-5*dr((2*n)²)]` -/
def P14754588848077579715.Spec : Prop :=
  ∀ n, P14754588848077579715.a n = A274406 (n + 1)

end A274406

/-! ## A274406.P3735337421007213565

`9*n-a(n-1)-1` with `a(0)=0`
-/

namespace A274406.P3735337421007213565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (9 * n : ℤ) - a (n - 1) - 1

end

end A274406.P3735337421007213565

namespace A274406

/-- `9*n-a(n-1)-1` -/
def P3735337421007213565.Spec : Prop :=
  ∀ n, P3735337421007213565.a n = A274406 (n + 1)

end A274406

/-! ## A274406.P2916559796982227189

`lt[(n+1)%9+n, n+2]`
-/

namespace A274406.P2916559796982227189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 9 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274406.P2916559796982227189

namespace A274406

/-- `lt[(n+1)%9+n, n+2]` -/
def P2916559796982227189.Spec : Prop :=
  ∀ n, (P2916559796982227189.a n : ℤ) = A274406 (n + 1)

end A274406

/-! ## A274406.P3112703448574026897

`record[n+2-((n+2)%9)!]`
-/

namespace A274406.P3112703448574026897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.factorial ((n + 2) % 9) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274406.P3112703448574026897

namespace A274406

/-- `record[n+2-((n+2)%9)!]` -/
def P3112703448574026897.Spec : Prop :=
  ∀ n, P3112703448574026897.a n = A274406 (n + 1)

end A274406

/-! ## A274406.P585480958011428763

`eq[n, n*dr((2*n+1)²)]`
-/

namespace A274406.P585480958011428763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot ((2 * n + 1) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274406.P585480958011428763

namespace A274406

/-- `eq[n, n*dr((2*n+1)²)]` -/
def P585480958011428763.Spec : Prop :=
  ∀ n, (P585480958011428763.a n : ℤ) = A274406 (n + 1)

end A274406

/-!
# A274409: Number of binary strings of length n having the maximum possible number of different antipower periods.

The programs for A274409, there is no canonical definition to state claims against.
-/

/-! ## A274409.P9689702813162963756

`A008904(A057171(n+1))*A102086(n)`
-/

namespace A274409.P9689702813162963756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 (A057171 (n + 1)).toNat * A102086 n

end

end A274409.P9689702813162963756

/-! ## A274409.P4610707140007047596

`A259939(n)*A334028(A332474(n+2))`
-/

namespace A274409.P4610707140007047596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n * A334028 (A332474 (n + 2)).toNat

end

end A274409.P4610707140007047596

/-! ## A274409.P9296117174710488516

`and(A000203(A060642(3*n+5)), A246121(n))`
-/

namespace A274409.P9296117174710488516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A060642 (3 * n + 5)).toNat) (A246121 n)

end

end A274409.P9296117174710488516

/-!
# A274425: Consider van Eck's sequences with a(1)=n and a(2)=0. Sequence lists the index of second occurrence of n.

The programs for A274425, there is no canonical definition to state claims against.
-/

/-! ## A274425.P4802165441054181387

`1+A171862(n+1)`
-/

namespace A274425.P4802165441054181387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A171862 (n + 1)

end

end A274425.P4802165441054181387

/-! ## A274425.P16080801439864190425

`Δ[∑[A171862(n)]-A024000(n)]`
-/

namespace A274425.P16080801439864190425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274425.P16080801439864190425

/-! ## A274425.P12458302793375463927

`A020725(A171862(n+1))`
-/

namespace A274425.P12458302793375463927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A171862 (n + 1)).toNat

end

end A274425.P12458302793375463927

/-! ## A274425.P3963997932278516035

`1-A001478(A171862(Δ[n²]-n))`
-/

namespace A274425.P3963997932278516035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001478 (A171862 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A274425.P3963997932278516035

/-! ## A274425.P7418557775481905397

`A008619(2*A171862(Δ[n²]-n))`
-/

namespace A274425.P7418557775481905397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A171862 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A274425.P7418557775481905397

/-!
# A274426: Numbers that are a product of two distinct Fibonacci numbers >1 or two distinct Lucas numbers > 1.

The programs for A274426, there is no canonical definition to state claims against.
-/

/-! ## A274426.P2754885010234437788

`∪[A049862(A183569(n+1)+4), A274347(n+1)]`
-/

namespace A274426.P2754885010234437788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (A183569 (n + 1) + 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274426.P2754885010234437788

/-! ## A274426.P13944992406253336684

`∪[A271354(n+1), A274347(n+1)]`
-/

namespace A274426.P13944992406253336684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274426.P13944992406253336684

/-! ## A274426.P17341572276692953114

`∩[A274429(n+1), comp[A090244(n)]]`
-/

namespace A274426.P17341572276692953114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274429 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A274426.P17341572276692953114

/-! ## A274426.P11400460589446957445

`∩[A057854(n+1), A274429(n+1)]`
-/

namespace A274426.P11400460589446957445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274426.P11400460589446957445

/-! ## A274426.P9361490542536069544

`∩[A090946(n+1), A274429(n+1)]`
-/

namespace A274426.P9361490542536069544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274426.P9361490542536069544

/-!
# A274427: Positions in A274426 of products of distinct Fibonacci numbers > 1.

The programs for A274427, the canonical program `A274427.P17681569367121436313` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274427 has offset 1).

The definition of A274427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274427.P17681569367121436313

`record[n*floor(sqrt(8*n+1))%2+1]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274427

/-- `record[n*floor(sqrt(8*n+1))%2+1]` -/
def P17681569367121436313.Spec : Prop :=
  ∀ n, (P17681569367121436313.a n : ℤ) = A274427 (n + 1)

theorem P17681569367121436313.correct : P17681569367121436313.Spec := by
  intro n
  simp only [A274427, Nat.add_sub_cancel]

end A274427

/-! ## A274427.P6061250087386396246

`floor(1/4*(floor(sqrt(4*n+1))-1)²)+1+n`
-/

namespace A274427.P6061250087386396246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 : ℚ) / 4 * (((Nat.sqrt (4 * n + 1) : ℤ) - 1) ^ 2 : ℚ)⌋ + 1 + (n : ℤ)

end

end A274427.P6061250087386396246

namespace A274427

/-- `floor(1/4*(floor(sqrt(4*n+1))-1)²)+1+n` -/
def P6061250087386396246.Spec : Prop :=
  ∀ n, P6061250087386396246.a n = A274427 (n + 1)

end A274427

/-! ## A274427.P6647686373881166964

`record[A116942(n)+1]`
-/

namespace A274427.P6647686373881166964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274427.P6647686373881166964

namespace A274427

/-- `record[A116942(n)+1]` -/
def P6647686373881166964.Spec : Prop :=
  ∀ n, P6647686373881166964.a n = A274427 (n + 1)

end A274427

/-! ## A274427.P18266157151975122681

`filter[n+1, A077605(#)]`
-/

namespace A274427.P18266157151975122681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A077605 (f1 j) = 1) n)

end

end A274427.P18266157151975122681

namespace A274427

/-- `filter[n+1, A077605(#)]` -/
def P18266157151975122681.Spec : Prop :=
  ∀ n, (P18266157151975122681.a n : ℤ) = A274427 (n + 1)

end A274427

/-! ## A274427.P18412327278987437475

`record[2-A306846(n)+n]`
-/

namespace A274427.P18412327278987437475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A306846 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274427.P18412327278987437475

namespace A274427

/-- `record[2-A306846(n)+n]` -/
def P18412327278987437475.Spec : Prop :=
  ∀ n, P18412327278987437475.a n = A274427 (n + 1)

end A274427

/-! ## A274427.P5123141371219561706

`record[2-A057058(n+1)+n]`
-/

namespace A274427.P5123141371219561706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A057058 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274427.P5123141371219561706

namespace A274427

/-- `record[2-A057058(n+1)+n]` -/
def P5123141371219561706.Spec : Prop :=
  ∀ n, P5123141371219561706.a n = A274427 (n + 1)

end A274427

/-! ## A274427.P11273965660262757465

`record[(n+1)/A010783(n+1)]`
-/

namespace A274427.P11273965660262757465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A010783 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274427.P11273965660262757465

namespace A274427

/-- `record[(n+1)/A010783(n+1)]` -/
def P11273965660262757465.Spec : Prop :=
  ∀ n, P11273965660262757465.a n = (A274427 (n + 1) : ℚ)

end A274427

/-! ## A274427.P6791927573079401509

`record[(n+1)%(A114327(n)+2+n)]`
-/

namespace A274427.P6791927573079401509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A114327 n + 2 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274427.P6791927573079401509

namespace A274427

/-- `record[(n+1)%(A114327(n)+2+n)]` -/
def P6791927573079401509.Spec : Prop :=
  ∀ n, P6791927573079401509.a n = A274427 (n + 1)

end A274427

/-! ## A274427.P7253426150539055983

`record[A008619(n*A118175(n))]`
-/

namespace A274427.P7253426150539055983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A118175 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274427.P7253426150539055983

namespace A274427

/-- `record[A008619(n*A118175(n))]` -/
def P7253426150539055983.Spec : Prop :=
  ∀ n, P7253426150539055983.a n = A274427 (n + 1)

end A274427

/-! ## A274427.P10270843178257619248

`record[A008619(n*A266502(n))]`
-/

namespace A274427.P10270843178257619248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A266502 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274427.P10270843178257619248

namespace A274427

/-- `record[A008619(n*A266502(n))]` -/
def P10270843178257619248.Spec : Prop :=
  ∀ n, P10270843178257619248.a n = A274427 (n + 1)

end A274427

/-! ## A274427.P4958664251715800041

`record[A008619(n*A267050(n))]`
-/

namespace A274427.P4958664251715800041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A267050 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274427.P4958664251715800041

namespace A274427

/-- `record[A008619(n*A267050(n))]` -/
def P4958664251715800041.Spec : Prop :=
  ∀ n, P4958664251715800041.a n = A274427 (n + 1)

end A274427

/-! ## A274427.P6539570995406380818

`record[A242112(n*A118175(n))]`
-/

namespace A274427.P6539570995406380818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 ((n : ℤ) * A118175 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274427.P6539570995406380818

namespace A274427

/-- `record[A242112(n*A118175(n))]` -/
def P6539570995406380818.Spec : Prop :=
  ∀ n, P6539570995406380818.a n = A274427 (n + 1)

end A274427

/-! ## A274427.P17788634391165199472

`lt[A112467(lt[n, A028326(n)]), 1]`
-/

namespace A274427.P17788634391165199472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A274427.P17788634391165199472

namespace A274427

/-- `lt[A112467(lt[n, A028326(n)]), 1]` -/
def P17788634391165199472.Spec : Prop :=
  ∀ n, (P17788634391165199472.a n : ℤ) = A274427 (n + 1)

end A274427

/-! ## A274427.P4327959013830499773

`record[n+1-A001281(A002262(n))]`
-/

namespace A274427.P4327959013830499773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001281 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274427.P4327959013830499773

namespace A274427

/-- `record[n+1-A001281(A002262(n))]` -/
def P4327959013830499773.Spec : Prop :=
  ∀ n, P4327959013830499773.a n = A274427 (n + 1)

end A274427

/-! ## A274427.P3358640095035901215

`(A214661(A056536(n+1))+1)/2`
-/

namespace A274427.P3358640095035901215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214661 (A056536 (n + 1)).toNat + 1 : ℚ) / 2

end

end A274427.P3358640095035901215

namespace A274427

/-- `(A214661(A056536(n+1))+1)/2` -/
def P3358640095035901215.Spec : Prop :=
  ∀ n, P3358640095035901215.a n = (A274427 (n + 1) : ℚ)

end A274427

/-! ## A274427.P765922379797893400

`lt[A238160(lt[n, A115241(n+1)]), 1]`
-/

namespace A274427.P765922379797893400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115241 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A274427.P765922379797893400

namespace A274427

/-- `lt[A238160(lt[n, A115241(n+1)]), 1]` -/
def P765922379797893400.Spec : Prop :=
  ∀ n, (P765922379797893400.a n : ℤ) = A274427 (n + 1)

end A274427

/-! ## A274427.P4747026882931886079

`record[A242112(n)^(∑[A239303(2*n+1)]%2)]`
-/

namespace A274427.P4747026882931886079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239303 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242112 n : ℚ) ^ (Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274427.P4747026882931886079

namespace A274427

/-- `record[A242112(n)^(∑[A239303(2*n+1)]%2)]` -/
def P4747026882931886079.Spec : Prop :=
  ∀ n, P4747026882931886079.a n = (A274427 (n + 1) : ℚ)

end A274427

/-! ## A274427.P3083370317785084767

`A322832((n+1)²-A322832(n))`
-/

namespace A274427.P3083370317785084767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (((n + 1) ^ 2 : ℤ) - A322832 n).toNat

end

end A274427.P3083370317785084767

namespace A274427

/-- `A322832((n+1)²-A322832(n))` -/
def P3083370317785084767.Spec : Prop :=
  ∀ n, P3083370317785084767.a n = A274427 (n + 1)

end A274427

/-!
# A274428: Positions in A274426 of products of distinct Lucas numbers > 1.

The programs for A274428, the canonical program `A274428.P9528690247099153984` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274428 has offset 1).

The definition of A274428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274428.P9528690247099153984

`lt[floor(sqrt(8*n+1))%2, 1]+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274428

/-- `lt[floor(sqrt(8*n+1))%2, 1]+1` -/
def P9528690247099153984.Spec : Prop :=
  ∀ n, (P9528690247099153984.a n : ℤ) = A274428 (n + 1)

theorem P9528690247099153984.correct : P9528690247099153984.Spec := by
  intro n
  simp only [A274428, Nat.add_sub_cancel]

end A274428

/-! ## A274428.P1368593195861263449

`ceil((ceil(2*sqrt(n+1))+1)*sqrt(n+1))`
-/

namespace A274428.P1368593195861263449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈2 * Real.sqrt (n + 1 : ℝ)⌉ + 1 : ℝ) * Real.sqrt (n + 1 : ℝ)⌉

end

end A274428.P1368593195861263449

namespace A274428

/-- `ceil((ceil(2*sqrt(n+1))+1)*sqrt(n+1))` -/
def P1368593195861263449.Spec : Prop :=
  ∀ n, P1368593195861263449.a n = A274428 (n + 1)

end A274428

/-! ## A274428.P190466728158882684

`comp[A245300(n)]+1`
-/

namespace A274428.P190466728158882684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A274428.P190466728158882684

namespace A274428

/-- `comp[A245300(n)]+1` -/
def P190466728158882684.Spec : Prop :=
  ∀ n, (P190466728158882684.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P11603381918888276226

`eq[1, A068344(n)]+1`
-/

namespace A274428.P11603381918888276226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274428.P11603381918888276226

namespace A274428

/-- `eq[1, A068344(n)]+1` -/
def P11603381918888276226.Spec : Prop :=
  ∀ n, (P11603381918888276226.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P124340023940501526

`lt[0, A141692(n)]+1`
-/

namespace A274428.P124340023940501526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A274428.P124340023940501526

namespace A274428

/-- `lt[0, A141692(n)]+1` -/
def P124340023940501526.Spec : Prop :=
  ∀ n, (P124340023940501526.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P9964638861123010592

`eq[1, A340507(n)]+1`
-/

namespace A274428.P9964638861123010592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274428.P9964638861123010592

namespace A274428

/-- `eq[1, A340507(n)]+1` -/
def P9964638861123010592.Spec : Prop :=
  ∀ n, (P9964638861123010592.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P338375856565916490

`lt[A052553(n), 1]+1`
-/

namespace A274428.P338375856565916490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274428.P338375856565916490

namespace A274428

/-- `lt[A052553(n), 1]+1` -/
def P338375856565916490.Spec : Prop :=
  ∀ n, (P338375856565916490.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P3635827171588783313

`lt[A061896(n), 1]+1`
-/

namespace A274428.P3635827171588783313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274428.P3635827171588783313

namespace A274428

/-- `lt[A061896(n), 1]+1` -/
def P3635827171588783313.Spec : Prop :=
  ∀ n, (P3635827171588783313.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P17478457955675085932

`lt[A080159(n), 1]+1`
-/

namespace A274428.P17478457955675085932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274428.P17478457955675085932

namespace A274428

/-- `lt[A080159(n), 1]+1` -/
def P17478457955675085932.Spec : Prop :=
  ∀ n, (P17478457955675085932.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P8278539073287687436

`lt[A080233(n), 1]+1`
-/

namespace A274428.P8278539073287687436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274428.P8278539073287687436

namespace A274428

/-- `lt[A080233(n), 1]+1` -/
def P8278539073287687436.Spec : Prop :=
  ∀ n, (P8278539073287687436.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P12687201374458199797

`lt[1, A099097(n)]+1`
-/

namespace A274428.P12687201374458199797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A274428.P12687201374458199797

namespace A274428

/-- `lt[1, A099097(n)]+1` -/
def P12687201374458199797.Spec : Prop :=
  ∀ n, (P12687201374458199797.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P16443309373135760260

`lt[A144299(n), 1]+1`
-/

namespace A274428.P16443309373135760260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274428.P16443309373135760260

namespace A274428

/-- `lt[A144299(n), 1]+1` -/
def P16443309373135760260.Spec : Prop :=
  ∀ n, (P16443309373135760260.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P14261962200435098839

`lt[A152815(n), 1]+1`
-/

namespace A274428.P14261962200435098839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274428.P14261962200435098839

namespace A274428

/-- `lt[A152815(n), 1]+1` -/
def P14261962200435098839.Spec : Prop :=
  ∀ n, (P14261962200435098839.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P11738713969638177132

`lt[A201701(n), 1]+1`
-/

namespace A274428.P11738713969638177132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274428.P11738713969638177132

namespace A274428

/-- `lt[A201701(n), 1]+1` -/
def P11738713969638177132.Spec : Prop :=
  ∀ n, (P11738713969638177132.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P1529555471181473005

`lt[A202023(n), 1]+1`
-/

namespace A274428.P1529555471181473005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274428.P1529555471181473005

namespace A274428

/-- `lt[A202023(n), 1]+1` -/
def P1529555471181473005.Spec : Prop :=
  ∀ n, (P1529555471181473005.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P14605433197677985160

`lt[A202064(n), 1]+1`
-/

namespace A274428.P14605433197677985160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202064 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274428.P14605433197677985160

namespace A274428

/-- `lt[A202064(n), 1]+1` -/
def P14605433197677985160.Spec : Prop :=
  ∀ n, (P14605433197677985160.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P8318360691196663424

`lt[A202209(n), 1]+1`
-/

namespace A274428.P8318360691196663424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202209 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274428.P8318360691196663424

namespace A274428

/-- `lt[A202209(n), 1]+1` -/
def P8318360691196663424.Spec : Prop :=
  ∀ n, (P8318360691196663424.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P11795613682171475976

`lt[1, A207543(n)]+1`
-/

namespace A274428.P11795613682171475976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A274428.P11795613682171475976

namespace A274428

/-- `lt[1, A207543(n)]+1` -/
def P11795613682171475976.Spec : Prop :=
  ∀ n, (P11795613682171475976.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P10024312961521926620

`lt[A209599(n), 1]+1`
-/

namespace A274428.P10024312961521926620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274428.P10024312961521926620

namespace A274428

/-- `lt[A209599(n), 1]+1` -/
def P10024312961521926620.Spec : Prop :=
  ∀ n, (P10024312961521926620.a n : ℤ) = A274428 (n + 1)

end A274428

/-! ## A274428.P15001319983447650549

`lt[1, A236076(n)]+1`
-/

namespace A274428.P15001319983447650549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A274428.P15001319983447650549

namespace A274428

/-- `lt[1, A236076(n)]+1` -/
def P15001319983447650549.Spec : Prop :=
  ∀ n, (P15001319983447650549.a n : ℤ) = A274428 (n + 1)

end A274428

/-!
# A274429: Numbers that are a product of two distinct Fibonacci numbers >1 or two distinct Lucas numbers > 0 (excluding 2).

The programs for A274429, there is no canonical definition to state claims against.
-/

/-! ## A274429.P17842595789812366829

`∪[A274426(n+1), A000032(n+2)]`
-/

namespace A274429.P17842595789812366829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274429.P17842595789812366829

/-! ## A274429.P12583556257228580725

`∪[A274426(n+1), record[A090244(n+2)]]`
-/

namespace A274429.P12583556257228580725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274429.P12583556257228580725

/-! ## A274429.P8095003919354313702

`∪[A090244(2*(n+1)), A274426(n+1)]`
-/

namespace A274429.P8095003919354313702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274429.P8095003919354313702

/-! ## A274429.P1348208783744279671

`lt[A334165(A340245(n+1)), A046521(n)]`
-/

namespace A274429.P1348208783744279671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334165 (A340245 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274429.P1348208783744279671

/-!
# A274430: Positions in A274429 of products of distinct Fibonacci numbers > 1.

The programs for A274430, there is no canonical definition to state claims against.
-/

/-! ## A274430.P12249059930654572302

`comp[n*ceil(sqrt(8*n))%2]+1`
-/

namespace A274430.P12249059930654572302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ⌈Real.sqrt (8 * n : ℝ)⌉ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A274430.P12249059930654572302

/-! ## A274430.P2600596499009708811

`eq[0, ceil(sqrt(8*(n+1)))%2]+2`
-/

namespace A274430.P2600596499009708811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A274430.P2600596499009708811

/-! ## A274430.P11380584167892895704

`comp[n²]-n%floor(sqrt(n+1))+n+1`
-/

namespace A274430.P11380584167892895704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n % Nat.sqrt (n + 1) : ℕ) : ℤ) + (n : ℤ) + 1

end

end A274430.P11380584167892895704

/-! ## A274430.P16412427202545347200

`lt[0, round(sqrt(2*(n+1)))²-(2*n+1)]+2`
-/

namespace A274430.P16412427202545347200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A274430.P16412427202545347200

/-! ## A274430.P13316330651437476240

`eq[0, A026729(n)]+2`
-/

namespace A274430.P13316330651437476240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A274430.P13316330651437476240

/-! ## A274430.P6912169252392162184

`eq[1, A067586(n)]+1`
-/

namespace A274430.P6912169252392162184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274430.P6912169252392162184

/-! ## A274430.P13590376704736454216

`eq[0, A098158(n)]+2`
-/

namespace A274430.P13590376704736454216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A274430.P13590376704736454216

/-! ## A274430.P12105420908949500309

`eq[0, A099040(n)]+2`
-/

namespace A274430.P12105420908949500309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099040 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A274430.P12105420908949500309

/-! ## A274430.P6806386126198611094

`eq[0, A099089(n)]+2`
-/

namespace A274430.P6806386126198611094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A274430.P6806386126198611094

/-! ## A274430.P12671795253651809510

`eq[0, A099097(n)]+2`
-/

namespace A274430.P12671795253651809510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A274430.P12671795253651809510

/-!
# A274431: Positions in A274426 of products of distinct Lucas numbers > 1 (excluding 2).

The programs for A274431, there is no canonical definition to state claims against.
-/

/-! ## A274431.P1910336991511503511

`record[n*ceil(sqrt(8*n))%2]+1`
-/

namespace A274431.P1910336991511503511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ⌈Real.sqrt (8 * n : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A274431.P1910336991511503511

/-! ## A274431.P8127243293791432530

`eq[0, floor(2*sqrt(abs(2*n-3)))%2]`
-/

namespace A274431.P8127243293791432530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (|(2 * n : ℤ) - 3| : ℝ)⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274431.P8127243293791432530

/-! ## A274431.P2096903593590299169

`floor(2/acot(n))-(n-1)%floor(sqrt(n+1))`
-/

namespace A274431.P2096903593590299169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - Int.tmod ((n : ℤ) - 1) (Nat.sqrt (n + 1) : ℤ)

end

end A274431.P2096903593590299169

/-! ## A274431.P3976999027432557488

`lt[A355342(n)², 2]+1`
-/

namespace A274431.P3976999027432557488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355342 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274431.P3976999027432557488

/-! ## A274431.P18196579366225459938

`record[gcd(n+1, A218757(n))]`
-/

namespace A274431.P18196579366225459938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A218757 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274431.P18196579366225459938

/-! ## A274431.P7056834021959956175

`comp[A274430(n+1)-1]+1`
-/

namespace A274431.P7056834021959956175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274430 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A274431.P7056834021959956175

/-! ## A274431.P7577506357911888097

`comp[A216252(2*(n+1))]+1`
-/

namespace A274431.P7577506357911888097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A274431.P7577506357911888097

/-! ## A274431.P17215171122207910304

`comp[eq[0, A109466(n)]+1]+1`
-/

namespace A274431.P17215171122207910304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A274431.P17215171122207910304

/-! ## A274431.P14676443846411115546

`record[A004736(a(n-1))+n]` with `a(0)=1`
-/

namespace A274431.P14676443846411115546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004736 (f1 (n - 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274431.P14676443846411115546

/-! ## A274431.P4404904372529328316

`record[floor(n/2)+2-A144331(n)]`
-/

namespace A274431.P4404904372529328316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + 2 - A144331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274431.P4404904372529328316

/-!
# A274432: Products of distinct tribonacci numbers (A000213).

The programs for A274432, there is no canonical definition to state claims against.
-/

/-! ## A274432.P13886942226507008816

`record[A206914(n+3)/A257635(n)]`
-/

namespace A274432.P13886942226507008816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206914 (n + 3) : ℚ) / (A257635 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274432.P13886942226507008816

/-! ## A274432.P2883323529153962169

`A206914(A133263(n)+A077739(n+1))`
-/

namespace A274432.P2883323529153962169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (A133263 n + A077739 (n + 1)).toNat

end

end A274432.P2883323529153962169

/-! ## A274432.P16319733556710654966

`A206914(A133263(n+1)*A287378(n))`
-/

namespace A274432.P16319733556710654966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (A133263 (n + 1) * A287378 n).toNat

end

end A274432.P16319733556710654966

/-! ## A274432.P17031039096406548467

`A206914(A133263(n+1)^A287378(n))`
-/

namespace A274432.P17031039096406548467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (SequenceMachineLib.roundAway ((A133263 (n + 1) : ℚ) ^ (A287378 n : ℤ))).toNat

end

end A274432.P17031039096406548467

/-!
# A274434: Products of three distinct tribonacci numbers > 1.

The programs for A274434, there is no canonical definition to state claims against.
-/

/-! ## A274434.P18131253379449958397

`A274432(eq[3, A272947(n+1)])`
-/

namespace A274434.P18131253379449958397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274434.P18131253379449958397

/-!
# A274435: Numbers having equal numbers of distinct prime factors of forms 3*k+1 and 3*k+2.

The programs for A274435, the canonical program `A274435.P2491110059342128538` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274435 has offset 1).

The definition of A274435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274435.P2491110059342128538

`eq[∑{p}[n+1, C(#, 2)%3], ∑{p}[n+1, (#%3)%2]]+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274435

/-- `eq[∑{p}[n+1, C(#, 2)%3], ∑{p}[n+1, (#%3)%2]]+1` -/
def P2491110059342128538.Spec : Prop :=
  ∀ n, (P2491110059342128538.a n : ℤ) = A274435 (n + 1)

theorem P2491110059342128538.correct : P2491110059342128538.Spec := by
  intro n
  simp only [A274435, Nat.add_sub_cancel]

end A274435

/-! ## A274435.P9806186008489984969

`eq[0, A368647(n+1)]+1`
-/

namespace A274435.P9806186008489984969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368647 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274435.P9806186008489984969

namespace A274435

/-- `eq[0, A368647(n+1)]+1` -/
def P9806186008489984969.Spec : Prop :=
  ∀ n, (P9806186008489984969.a n : ℤ) = A274435 (n + 1)

end A274435

/-! ## A274435.P17471946796539030378

`eq[A005088(n+1), A005090(n+1)]+1`
-/

namespace A274435.P17471946796539030378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A274435.P17471946796539030378

namespace A274435

/-- `eq[A005088(n+1), A005090(n+1)]+1` -/
def P17471946796539030378.Spec : Prop :=
  ∀ n, (P17471946796539030378.a n : ℤ) = A274435 (n + 1)

end A274435

/-!
# A274436: Numbers having fewer distinct prime factors of form 3*k+1 than of the form 3*k+2.

The programs for A274436, the canonical program `A274436.P7948712717257988562` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274436 has offset 1).

The definition of A274436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274436.P7948712717257988562

`lt[∑{p}[n+1, (#%3)%2], ∑{p}[n+1, C(#, 2)%3]]+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274436

/-- `lt[∑{p}[n+1, (#%3)%2], ∑{p}[n+1, C(#, 2)%3]]+1` -/
def P7948712717257988562.Spec : Prop :=
  ∀ n, (P7948712717257988562.a n : ℤ) = A274436 (n + 1)

theorem P7948712717257988562.correct : P7948712717257988562.Spec := by
  intro n
  simp only [A274436, Nat.add_sub_cancel]

end A274436

/-! ## A274436.P6045376697976044178

`lt[A005088(n+1), A005090(n+1)]+1`
-/

namespace A274436.P6045376697976044178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A274436.P6045376697976044178

namespace A274436

/-- `lt[A005088(n+1), A005090(n+1)]+1` -/
def P6045376697976044178.Spec : Prop :=
  ∀ n, (P6045376697976044178.a n : ℤ) = A274436 (n + 1)

end A274436

/-! ## A274436.P11865498786570052327

`lt[A001221(A248909(n+1)), A005090(n+1)]+1`
-/

namespace A274436.P11865498786570052327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A248909 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A274436.P11865498786570052327

namespace A274436

/-- `lt[A001221(A248909(n+1)), A005090(n+1)]+1` -/
def P11865498786570052327.Spec : Prop :=
  ∀ n, (P11865498786570052327.a n : ℤ) = A274436 (n + 1)

end A274436

/-! ## A274436.P11956604764336827498

`lt[3, 3-∑{p}[n, A049347(#-1)]]`
-/

namespace A274436.P11956604764336827498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ p ∈ Nat.primeFactors (f3 n), A049347 (p - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A274436.P11956604764336827498

namespace A274436

/-- `lt[3, 3-∑{p}[n, A049347(#-1)]]` -/
def P11956604764336827498.Spec : Prop :=
  ∀ n, (P11956604764336827498.a n : ℤ) = A274436 (n + 1)

end A274436

/-!
# A274437: Numbers having more distinct prime factors of form 3*k+1 than of the form 3*k+2.

The programs for A274437, the canonical program `A274437.P16973748106690964927` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274437 has offset 1).

The definition of A274437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274437.P16973748106690964927

`lt[A005090(n+1), A005088(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A274437

/-- `lt[A005090(n+1), A005088(n+1)]+1` -/
def P16973748106690964927.Spec : Prop :=
  ∀ n, (P16973748106690964927.a n : ℤ) = A274437 (n + 1)

theorem P16973748106690964927.correct : P16973748106690964927.Spec := by
  intro n
  simp only [A274437, Nat.add_sub_cancel]

end A274437

/-! ## A274437.P445317563350680114

`lt[A005090(n+1), A001221(A248909(n+1))]+1`
-/

namespace A274437.P445317563350680114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A248909 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A274437.P445317563350680114

namespace A274437

/-- `lt[A005090(n+1), A001221(A248909(n+1))]+1` -/
def P445317563350680114.Spec : Prop :=
  ∀ n, (P445317563350680114.a n : ℤ) = A274437 (n + 1)

end A274437

/-! ## A274437.P957681294669678681

`lt[A130440(A284260(n+1)), A004016(n)]`
-/

namespace A274437.P957681294669678681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130440 (A284260 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274437.P957681294669678681

namespace A274437

/-- `lt[A130440(A284260(n+1)), A004016(n)]` -/
def P957681294669678681.Spec : Prop :=
  ∀ n, (P957681294669678681.a n : ℤ) = A274437 (n + 1)

end A274437

/-! ## A274437.P2683342733137366782

`lt[A161532(A046206(n+1)), A004016(n)]`
-/

namespace A274437.P2683342733137366782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 (A046206 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274437.P2683342733137366782

namespace A274437

/-- `lt[A161532(A046206(n+1)), A004016(n)]` -/
def P2683342733137366782.Spec : Prop :=
  ∀ n, (P2683342733137366782.a n : ℤ) = A274437 (n + 1)

end A274437

/-! ## A274437.P1641395254753351454

`∩[A024606(n+1), A172247(n+1)]`
-/

namespace A274437.P1641395254753351454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274437.P1641395254753351454

namespace A274437

/-- `∩[A024606(n+1), A172247(n+1)]` -/
def P1641395254753351454.Spec : Prop :=
  ∀ n, (P1641395254753351454.a n : ℤ) = A274437 (n + 1)

end A274437

/-!
# A274447: Numerators in expansion of W(exp(x)) about x=1, where W is the Lambert function.

The programs for A274447, there is no canonical definition to state claims against.
-/

/-! ## A274447.P1935749384396973345

`A001662(A015161(n)+n)`
-/

namespace A274447.P1935749384396973345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001662 (A015161 n + (n : ℤ)).toNat

end

end A274447.P1935749384396973345

/-! ## A274447.P7594102115901038617

`A001662(xor(n, A015161(n)))`
-/

namespace A274447.P7594102115901038617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001662 (Int.xor (n : ℤ) (A015161 n)).toNat

end

end A274447.P7594102115901038617

/-! ## A274447.P14683507658205834998

`A033683(2^n)+A001662(n)`
-/

namespace A274447.P14683507658205834998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 (2 ^ n) + A001662 n

end

end A274447.P14683507658205834998

/-! ## A274447.P6612504602624428495

`A036987(2^n)+A001662(n)`
-/

namespace A274447.P6612504602624428495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 ^ n) + A001662 n

end

end A274447.P6612504602624428495

/-! ## A274447.P1145855486847756488

`or(A001662(n), A359170(2^n))`
-/

namespace A274447.P1145855486847756488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001662 n) (A359170 (2 ^ n))

end

end A274447.P1145855486847756488

/-!
# A274449: Number of binary strings of length n having the minimum possible number of different antipower periods.

The programs for A274449, there is no canonical definition to state claims against.
-/

/-! ## A274449.P9282224362733941750

`A190014(∑[3^(n+1)])`
-/

namespace A274449.P9282224362733941750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274449.P9282224362733941750

/-! ## A274449.P16956783505748588108

`2^A001222(or(4, 5^(n+1)))`
-/

namespace A274449.P16956783505748588108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (Nat.lor 4 (5 ^ (n + 1))) : ℤ)

end

end A274449.P16956783505748588108

/-! ## A274449.P950814924701377357

`A000122(4^n)^((n+1)/gcd(n-(2*n+1), C(2*n, n+2)))`
-/

namespace A274449.P950814924701377357
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000122 (4 ^ n) : ℝ) ^ ((n + 1 : ℚ) / (Int.gcd ((n : ℤ) - (2 * n + 1 : ℤ)) (Nat.choose (2 * n) (n + 2) : ℤ) : ℚ) : ℝ)

end

end A274449.P950814924701377357

/-!
# A274450: Largest number of antipower periods possible for a binary string of length n.

The programs for A274450, there is no canonical definition to state claims against.
-/

/-! ## A274450.P1112900703891894200

`∑{d}[n+1, round(root(#/(n+1), #))]`
-/

namespace A274450.P1112900703891894200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (((d : ℚ) / (n + 1 : ℚ) : ℝ) ^ (1 / (d : ℝ)))

end

end A274450.P1112900703891894200

/-! ## A274450.P16303977820333969382

`floor(∏{e}[n+1, #+1]/atan(A274457(n+1)))`
-/

namespace A274450.P16303977820333969382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ) / Real.arctan (A274457 (n + 1) : ℝ)⌋

end

end A274450.P16303977820333969382

/-! ## A274450.P8415077030187358673

`A082647(2*A297002(n+1))`
-/

namespace A274450.P8415077030187358673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (2 * A297002 (n + 1)).toNat

end

end A274450.P8415077030187358673

/-! ## A274450.P7438685688883378286

`A069288(4*A297002(n+1))`
-/

namespace A274450.P7438685688883378286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (4 * A297002 (n + 1)).toNat

end

end A274450.P7438685688883378286

/-! ## A274450.P2803108883902773404

`A082647(lcm(2, A297002(n+1)))`
-/

namespace A274450.P2803108883902773404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (Int.lcm 2 (A297002 (n + 1)))

end

end A274450.P2803108883902773404

/-!
# A274451: Number of possible sets of antipower periods for binary strings of length n.

The programs for A274451, there is no canonical definition to state claims against.
-/

/-! ## A274451.P2030239458669185501

`A088433(n+1)+A067742(A054496(n+1))`
-/

namespace A274451.P2030239458669185501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088433 (n + 1) + A067742 (A054496 (n + 1)).toNat

end

end A274451.P2030239458669185501

/-! ## A274451.P10091406430962758069

`A088433(n+1)+A067742(A187829(n+1))`
-/

namespace A274451.P10091406430962758069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088433 (n + 1) + A067742 (A187829 (n + 1)).toNat

end

end A274451.P10091406430962758069

/-! ## A274451.P2817173109359862660

`A000005(A089543(2*n+3)%A089489(n+1))`
-/

namespace A274451.P2817173109359862660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A089543 (2 * n + 3)) (A089489 (n + 1))).toNat

end

end A274451.P2817173109359862660

/-! ## A274451.P6446986624448340325

`A204550(A327527(n+1))+A067742(A054496(n+1))`
-/

namespace A274451.P6446986624448340325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204550 (A327527 (n + 1)).toNat + A067742 (A054496 (n + 1)).toNat

end

end A274451.P6446986624448340325

/-! ## A274451.P18175907487322907765

`A377365(A063962(3*n+1)+A034839(2*n))`
-/

namespace A274451.P18175907487322907765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377365 (A063962 (3 * n + 1) + A034839 (2 * n)).toNat

end

end A274451.P18175907487322907765

/-!
# A274452: Products of distinct Narayana's cow numbers (A000930).

The programs for A274452, there is no canonical definition to state claims against.
-/

/-! ## A274452.P9803845100153174902

`A191284(A130233(Δ[A164417(n)]))`
-/

namespace A274452.P9803845100153174902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191284 (A130233 (f1 (n + 1) - f1 n).toNat).toNat

end

end A274452.P9803845100153174902

/-! ## A274452.P17289475956535501638

`eq[A013681(A326678(2*n+1)), A354896(n+1)]`
-/

namespace A274452.P17289475956535501638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013681 (A326678 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354896 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274452.P17289475956535501638

/-!
# A274456: Numbers k such that 5*10^k + 77 is prime.

The programs for A274456, there is no canonical definition to state claims against.
-/

/-! ## A274456.P3411134325971595898

`A055571(A051453(n+2))`
-/

namespace A274456.P3411134325971595898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A051453 (n + 2)).toNat

end

end A274456.P3411134325971595898

/-! ## A274456.P4574925628330262711

`eq[A118402(A051700(n)), A187187(n+1)]`
-/

namespace A274456.P4574925628330262711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118402 (A051700 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274456.P4574925628330262711

/-!
# A274457: Shortest possible antipower period of a binary string of length n.

The programs for A274457, there is no canonical definition to state claims against.
-/

/-! ## A274457.P5645425900662062301

`(A088444(n+1)-char[1])%A116076(n+4)`
-/

namespace A274457.P5645425900662062301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088444 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A116076 (n + 4))

end

end A274457.P5645425900662062301

/-! ## A274457.P906992298306559791

`A088444(n+1)-A000007(A023360(n))`
-/

namespace A274457.P906992298306559791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088444 (n + 1) - A000007 (A023360 n).toNat

end

end A274457.P906992298306559791

/-! ## A274457.P9343089498112099241

`A088444(n+1)-A163533(A000043(n+1))`
-/

namespace A274457.P9343089498112099241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088444 (n + 1) - A163533 (A000043 (n + 1)).toNat

end

end A274457.P9343089498112099241

/-! ## A274457.P13340474473256970620

`A088444(n+1)-A005369(A270831(n+1))`
-/

namespace A274457.P13340474473256970620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088444 (n + 1) - A005369 (A270831 (n + 1)).toNat

end

end A274457.P13340474473256970620

/-! ## A274457.P15652674947279237019

`A088444(n+1)^A276630(A160121(n+4))`
-/

namespace A274457.P15652674947279237019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088444 (n + 1) : ℚ) ^ (A276630 (A160121 (n + 4)).toNat : ℤ)

end

end A274457.P15652674947279237019

/-!
# A274459: Least number of perfect powers that add up to n.

The programs for A274459, there is no canonical definition to state claims against.
-/

/-! ## A274459.P9836629839917923693

`A063274(n+1)+A025461(A321271(n+1))`
-/

namespace A274459.P9836629839917923693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (n + 1) + A025461 (A321271 (n + 1)).toNat

end

end A274459.P9836629839917923693

/-! ## A274459.P5938372941880311507

`A063274(n+1)+A003982(A327012(n+1))`
-/

namespace A274459.P5938372941880311507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (n + 1) + A003982 (A327012 (n + 1)).toNat

end

end A274459.P5938372941880311507

/-! ## A274459.P1585003835888576181

`A063274(n+1)+A062535(A326975(n+1))`
-/

namespace A274459.P1585003835888576181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (n + 1) + A062535 (A326975 (n + 1)).toNat

end

end A274459.P1585003835888576181

/-! ## A274459.P8329789052968655687

`A008327(A356069(n+1))*A063274(n+1)`
-/

namespace A274459.P8329789052968655687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008327 (A356069 (n + 1)).toNat * A063274 (n + 1)

end

end A274459.P8329789052968655687

/-! ## A274459.P9839592597636419864

`A063274(n+1)-A126564(A094497(2*n))`
-/

namespace A274459.P9839592597636419864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (n + 1) - A126564 (A094497 (2 * n)).toNat

end

end A274459.P9839592597636419864

/-!
# A274460: Values of A003327(n) that are the sum of 4 but no fewer nonzero squares.

The programs for A274460, there is no canonical definition to state claims against.
-/

/-! ## A274460.P12589578271281883579

`lt[A000164(n), A025457(n)]`
-/

namespace A274460.P12589578271281883579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274460.P12589578271281883579

/-! ## A274460.P16723945028362535116

`lt[A002102(n), A025457(n)]`
-/

namespace A274460.P16723945028362535116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274460.P16723945028362535116

/-! ## A274460.P2651811182946662045

`lt[A005875(n), A025457(n)]`
-/

namespace A274460.P2651811182946662045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274460.P2651811182946662045

/-! ## A274460.P3348936433164494939

`lt[A138202(n), A025457(n)]`
-/

namespace A274460.P3348936433164494939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138202 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274460.P3348936433164494939

/-! ## A274460.P9309820817273748032

`lt[A246631(n), A025457(n)]`
-/

namespace A274460.P9309820817273748032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274460.P9309820817273748032

/-! ## A274460.P12098289254844794549

`filter[A003327(n+1), A072401(#)]`
-/

namespace A274460.P12098289254844794549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A274460.P12098289254844794549

/-! ## A274460.P16483756296922212837

`∩[A003327(n+1), A004215(n+1)]`
-/

namespace A274460.P16483756296922212837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274460.P16483756296922212837

/-!
# A274461: Least common multiple of first n proper prime powers.

The programs for A274461, there is no canonical definition to state claims against.
-/

/-! ## A274461.P5066659647907884337

`lcm(a(n-1), A134612(n))` with `a(0)=1`
-/

namespace A274461.P5066659647907884337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A134612 n)

end

end A274461.P5066659647907884337

/-! ## A274461.P11437559992868250185

`lcm(floor(a(n-1)), A134611(n+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A274461.P11437559992868250185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A134611 (n + 1))

end

end A274461.P11437559992868250185

/-! ## A274461.P11628774235174273664

`∏[A059806(A025475(n+1))]`
-/

namespace A274461.P11628774235174273664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (A025475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A274461.P11628774235174273664

/-! ## A274461.P3665061865777136242

`gcd(A002110(n), A048148(n+1))*A048148(n+1)`
-/

namespace A274461.P3665061865777136242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A002110 n) (A048148 (n + 1)) : ℤ) * A048148 (n + 1)

end

end A274461.P3665061865777136242

/-!
# A274462: Place n equally-spaced points around a circle, labeled 0,1,2,...,n-1. For each i = 0..n-1 such that 4i != i mod n, draw an (undirected) chord from i to (4i mod n). Then a(n) is the total number of distinct chords.

The programs for A274462, there is no canonical definition to state claims against.
-/

/-! ## A274462.P11337868376357082852

`n-∏{p}[n, A214717(#+1)]%(n+1)`
-/

namespace A274462.P11337868376357082852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), A214717 (p + 1)) (n + 1 : ℤ)

end

end A274462.P11337868376357082852

/-! ## A274462.P4764930403099579219

`A028310(n)-∏{p}[n, A214717(#+1)]`
-/

namespace A274462.P4764930403099579219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - ∏ p ∈ Nat.primeFactors (f1 n), A214717 (p + 1)

end

end A274462.P4764930403099579219

/-! ## A274462.P3522596146954602212

`A065033(2*n)-∏{p}[n, A214717(#+1)]`
-/

namespace A274462.P3522596146954602212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - ∏ p ∈ Nat.primeFactors (f1 n), A214717 (p + 1)

end

end A274462.P3522596146954602212

/-! ## A274462.P11808573646213372877

`A000007(n)+n-∏{p}[n, A214717(#+1)]`
-/

namespace A274462.P11808573646213372877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((n : ℤ) - ∏ p ∈ Nat.primeFactors (f1 n), A214717 (p + 1))

end

end A274462.P11808573646213372877

/-! ## A274462.P7367092541233423110

`A151878(n)+n-∏{p}[n, A214717(#+1)]`
-/

namespace A274462.P7367092541233423110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + (n : ℤ) - ∏ p ∈ Nat.primeFactors (f1 n), A214717 (p + 1)

end

end A274462.P7367092541233423110

/-! ## A274462.P15843269896231709630

`A004277(n)-n-∏{p}[n, A214717(#+1)]`
-/

namespace A274462.P15843269896231709630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (n : ℤ) - ∏ p ∈ Nat.primeFactors (f1 n), A214717 (p + 1)

end

end A274462.P15843269896231709630

/-! ## A274462.P6624024747712152043

`A005843(n)%(∏{p}[n, A214717(#+1)]+n)`
-/

namespace A274462.P6624024747712152043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 n) (∏ p ∈ Nat.primeFactors (f1 n), A214717 (p + 1) + (n : ℤ))

end

end A274462.P6624024747712152043

/-! ## A274462.P7807059828808437310

`(n-∏{p}[n, A214717(#+1)])%A002522(n)`
-/

namespace A274462.P7807059828808437310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - ∏ p ∈ Nat.primeFactors (f1 n), A214717 (p + 1)) (A002522 n)

end

end A274462.P7807059828808437310

/-!
# A274463: Subsequence of the automorphic numbers (A003226) with initial term 5 and such that a(n+1) ends with the digits of a(n).

The programs for A274463, there is no canonical definition to state claims against.
-/

/-! ## A274463.P1755451022174754302

`A007185(2^A039076(n+1))`
-/

namespace A274463.P1755451022174754302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007185 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A039076 (n + 1) : ℤ))).toNat

end

end A274463.P1755451022174754302

/-! ## A274463.P3597995556818967379

`A007185(lcm(A000079(n), A346426(n)))`
-/

namespace A274463.P3597995556818967379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007185 (Int.lcm (A000079 n) (A346426 n))

end

end A274463.P3597995556818967379

/-!
# A274465: Primes which are the sum of cousin prime pairs - 1.

The programs for A274465, the canonical program `A274465.P13282728255068810620` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274465 has offset 1).

The definition of A274465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274465.P13282728255068810620

`∩[A072669(n+1), A145471(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A274465

/-- `∩[A072669(n+1), A145471(n+1)]` -/
def P13282728255068810620.Spec : Prop :=
  ∀ n, (P13282728255068810620.a n : ℤ) = A274465 (n + 1)

theorem P13282728255068810620.correct : P13282728255068810620.Spec := by
  intro n
  simp only [A274465, Nat.add_sub_cancel]

end A274465

/-! ## A274465.P261657822621148183

`∩[A089531(n+1), A145471(n+1)]`
-/

namespace A274465.P261657822621148183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274465.P261657822621148183

namespace A274465

/-- `∩[A089531(n+1), A145471(n+1)]` -/
def P261657822621148183.Spec : Prop :=
  ∀ n, (P261657822621148183.a n : ℤ) = A274465 (n + 1)

end A274465

/-! ## A274465.P15636202642406389927

`p?[A165986(n+1)+3]`
-/

namespace A274465.P15636202642406389927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165986 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274465.P15636202642406389927

namespace A274465

/-- `p?[A165986(n+1)+3]` -/
def P15636202642406389927.Spec : Prop :=
  ∀ n, P15636202642406389927.a n = A274465 (n + 1)

end A274465

/-! ## A274465.P10986165391005202062

`p?[2*A029708(n+1)-1]`
-/

namespace A274465.P10986165391005202062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029708 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274465.P10986165391005202062

namespace A274465

/-- `p?[2*A029708(n+1)-1]` -/
def P10986165391005202062.Spec : Prop :=
  ∀ n, P10986165391005202062.a n = A274465 (n + 1)

end A274465

/-! ## A274465.P2508245587503450934

`p?[2*A087679(n+1)-1]`
-/

namespace A274465.P2508245587503450934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087679 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274465.P2508245587503450934

namespace A274465

/-- `p?[2*A087679(n+1)-1]` -/
def P2508245587503450934.Spec : Prop :=
  ∀ n, P2508245587503450934.a n = A274465 (n + 1)

end A274465

/-! ## A274465.P10228720600476790975

`p?[2*A015913(n+1)+3]`
-/

namespace A274465.P10228720600476790975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015913 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274465.P10228720600476790975

namespace A274465

/-- `p?[2*A015913(n+1)+3]` -/
def P10228720600476790975.Spec : Prop :=
  ∀ n, P10228720600476790975.a n = A274465 (n + 1)

end A274465

/-! ## A274465.P10958715644773349913

`p?[2*A029710(n+1)+3]`
-/

namespace A274465.P10958715644773349913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029710 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274465.P10958715644773349913

namespace A274465

/-- `p?[2*A029710(n+1)+3]` -/
def P10958715644773349913.Spec : Prop :=
  ∀ n, P10958715644773349913.a n = A274465 (n + 1)

end A274465

/-! ## A274465.P8299834558943046778

`p?[2*A046132(n+1)-5]`
-/

namespace A274465.P8299834558943046778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046132 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274465.P8299834558943046778

namespace A274465

/-- `p?[2*A046132(n+1)-5]` -/
def P8299834558943046778.Spec : Prop :=
  ∀ n, P8299834558943046778.a n = A274465 (n + 1)

end A274465

/-! ## A274465.P10874463574160437118

`p?[A087679(n+1)+A072541(2*n+1)]`
-/

namespace A274465.P10874463574160437118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1) + A072541 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274465.P10874463574160437118

namespace A274465

/-- `p?[A087679(n+1)+A072541(2*n+1)]` -/
def P10874463574160437118.Spec : Prop :=
  ∀ n, P10874463574160437118.a n = A274465 (n + 1)

end A274465

/-! ## A274465.P8900637220015794115

`p?[A046132(n+2)-(5-A046132(n+2))]`
-/

namespace A274465.P8900637220015794115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 2) - (5 - A046132 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274465.P8900637220015794115

namespace A274465

/-- `p?[A046132(n+2)-(5-A046132(n+2))]` -/
def P8900637220015794115.Spec : Prop :=
  ∀ n, P8900637220015794115.a n = A274465 (n + 1)

end A274465

/-! ## A274465.P11230167826298614093

`p?[A072541(2*n+1)+2*A088762(n+1)+1]`
-/

namespace A274465.P11230167826298614093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072541 (2 * n + 1) + (2 * A088762 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274465.P11230167826298614093

namespace A274465

/-- `p?[A072541(2*n+1)+2*A088762(n+1)+1]` -/
def P11230167826298614093.Spec : Prop :=
  ∀ n, P11230167826298614093.a n = A274465 (n + 1)

end A274465

/-! ## A274465.P10935024897660717624

`p?[A072541(2*n+1)+A072541(2*(n+1))-3]`
-/

namespace A274465.P10935024897660717624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072541 (2 * n + 1) + (A072541 (2 * (n + 1)) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274465.P10935024897660717624

namespace A274465

/-- `p?[A072541(2*n+1)+A072541(2*(n+1))-3]` -/
def P10935024897660717624.Spec : Prop :=
  ∀ n, P10935024897660717624.a n = A274465 (n + 1)

end A274465

/-! ## A274465.P9705294905416312448

`∩[A145471(n+1), A076273(n)]`
-/

namespace A274465.P9705294905416312448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274465.P9705294905416312448

namespace A274465

/-- `∩[A145471(n+1), A076273(n)]` -/
def P9705294905416312448.Spec : Prop :=
  ∀ n, (P9705294905416312448.a n : ℤ) = A274465 (n + 1)

end A274465

/-! ## A274465.P16825918619698238495

`∩[A129069(n+1), A145471(n+1)]`
-/

namespace A274465.P16825918619698238495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274465.P16825918619698238495

namespace A274465

/-- `∩[A129069(n+1), A145471(n+1)]` -/
def P16825918619698238495.Spec : Prop :=
  ∀ n, (P16825918619698238495.a n : ℤ) = A274465 (n + 1)

end A274465

/-! ## A274465.P15211078994720753273

`p?[A167607(n+1)-1]`
-/

namespace A274465.P15211078994720753273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167607 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274465.P15211078994720753273

namespace A274465

/-- `p?[A167607(n+1)-1]` -/
def P15211078994720753273.Spec : Prop :=
  ∀ n, P15211078994720753273.a n = A274465 (n + 1)

end A274465

/-! ## A274465.P4043031770525656350

`record[A006530(A167607(n+2)-1)]`
-/

namespace A274465.P4043031770525656350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A167607 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274465.P4043031770525656350

namespace A274465

/-- `record[A006530(A167607(n+2)-1)]` -/
def P4043031770525656350.Spec : Prop :=
  ∀ n, P4043031770525656350.a n = A274465 (n + 1)

end A274465

/-! ## A274465.P4315189451363567014

`p?[A060325(n+2)+1]`
-/

namespace A274465.P4315189451363567014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060325 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274465.P4315189451363567014

namespace A274465

/-- `p?[A060325(n+2)+1]` -/
def P4315189451363567014.Spec : Prop :=
  ∀ n, P4315189451363567014.a n = A274465 (n + 1)

end A274465

/-! ## A274465.P12224059900785838793

`p?[A040976(n+1)²-A028815(n)²]`
-/

namespace A274465.P12224059900785838793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) ^ 2 - A028815 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274465.P12224059900785838793

namespace A274465

/-- `p?[A040976(n+1)²-A028815(n)²]` -/
def P12224059900785838793.Spec : Prop :=
  ∀ n, P12224059900785838793.a n = A274465 (n + 1)

end A274465

/-!
# A274467: Numbers that are the largest value in the Collatz (3x+1) trajectories of exactly six initial values.

The programs for A274467, there is no canonical definition to state claims against.
-/

/-! ## A274467.P13658873942898639300

`∩[A033496(n+1), A154267(n)+1]`
-/

namespace A274467.P13658873942898639300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274467.P13658873942898639300

/-! ## A274467.P14520954055907025813

`∩[A176869(n+1), A154267(n)+1]`
-/

namespace A274467.P14520954055907025813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274467.P14520954055907025813

/-! ## A274467.P3768031641472904321

`record[A087258(A154267(n)+1)]`
-/

namespace A274467.P3768031641472904321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (A154267 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274467.P3768031641472904321

/-! ## A274467.P2412882121924485352

`eq[6, A087255(A028310(n))]`
-/

namespace A274467.P2412882121924485352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274467.P2412882121924485352

/-! ## A274467.P9461139429325359750

`record[A087258(A014681(A154267(n)))]`
-/

namespace A274467.P9461139429325359750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (A014681 (A154267 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274467.P9461139429325359750

/-!
# A274472: Number of iterations of the Collatz recursion required to reach a prime number.

The programs for A274472, there is no canonical definition to state claims against.
-/

/-! ## A274472.P4525721559479567185

`A005171(n+1)*A280929(n+1)`
-/

namespace A274472.P4525721559479567185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A280929 (n + 1)

end

end A274472.P4525721559479567185

/-! ## A274472.P7669645490772107678

`A280929(n+1)%A000032(A001222(n+1))²²`
-/

namespace A274472.P7669645490772107678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280929 (n + 1)) ((A000032 (A001222 (n + 1)).toNat ^ 2) ^ 2)

end

end A274472.P7669645490772107678

/-! ## A274472.P929473126675927441

`A280929(2*(n+1))-1`
-/

namespace A274472.P929473126675927441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280929 (2 * (n + 1)) - 1

end

end A274472.P929473126675927441

/-! ## A274472.P14465759044283076714

`A323048(A280929(2*(n+1)))`
-/

namespace A274472.P14465759044283076714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A280929 (2 * (n + 1))).toNat

end

end A274472.P14465759044283076714

/-! ## A274472.P1763890723502801180

`A280929(n+1)%A280929(2*(n+1))`
-/

namespace A274472.P1763890723502801180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280929 (n + 1)) (A280929 (2 * (n + 1)))

end

end A274472.P1763890723502801180

/-!
# A274473: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

The programs for A274473, the canonical program `A274473.P317316573485528462` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274473 has offset 0).

The definition of A274473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274473.P17561699814151728530

`gcd(A274224(n), A282388(n))`
-/

namespace A274473.P17561699814151728530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274224 n) (A282388 n)

end

end A274473.P17561699814151728530

namespace A274473

/-- `gcd(A274224(n), A282388(n))` -/
def P17561699814151728530.Spec : Prop :=
  ∀ n, (P17561699814151728530.a n : ℤ) = A274473 n

end A274473

/-! ## A274473.P317316573485528462

`and(A001317(A042948(n)), A126646(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A274473

/-- `and(A001317(A042948(n)), A126646(n))` -/
def P317316573485528462.Spec : Prop :=
  ∀ n, P317316573485528462.a n = A274473 n

theorem P317316573485528462.correct : P317316573485528462.Spec := by
  intro n
  simp only [A274473]

end A274473

/-! ## A274473.P4455974545297697796

`and(A118171(n), A277934(n))`
-/

namespace A274473.P4455974545297697796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118171 n) (A277934 n)

end

end A274473.P4455974545297697796

namespace A274473

/-- `and(A118171(n), A277934(n))` -/
def P4455974545297697796.Spec : Prop :=
  ∀ n, P4455974545297697796.a n = A274473 n

end A274473

/-! ## A274473.P1080527150668505997

`and(A118171(n), A282388(n))`
-/

namespace A274473.P1080527150668505997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118171 n) (A282388 n)

end

end A274473.P1080527150668505997

namespace A274473

/-- `and(A118171(n), A282388(n))` -/
def P1080527150668505997.Spec : Prop :=
  ∀ n, P1080527150668505997.a n = A274473 n

end A274473

/-! ## A274473.P9001775594058493375

`gcd(A274224(n)², A038192(n))`
-/

namespace A274473.P9001775594058493375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274224 n ^ 2) (A038192 n)

end

end A274473.P9001775594058493375

namespace A274473

/-- `gcd(A274224(n)², A038192(n))` -/
def P9001775594058493375.Spec : Prop :=
  ∀ n, (P9001775594058493375.a n : ℤ) = A274473 n

end A274473

/-! ## A274473.P1252634370359724354

`and(A112627(n+1), A277934(n))`
-/

namespace A274473.P1252634370359724354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112627 (n + 1)) (A277934 n)

end

end A274473.P1252634370359724354

namespace A274473

/-- `and(A112627(n+1), A277934(n))` -/
def P1252634370359724354.Spec : Prop :=
  ∀ n, P1252634370359724354.a n = A274473 n

end A274473

/-! ## A274473.P4568526810595020453

`and(A176963(n+1), A277934(n))`
-/

namespace A274473.P4568526810595020453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176963 (n + 1)) (A277934 n)

end

end A274473.P4568526810595020453

namespace A274473

/-- `and(A176963(n+1), A277934(n))` -/
def P4568526810595020453.Spec : Prop :=
  ∀ n, P4568526810595020453.a n = A274473 n

end A274473

/-! ## A274473.P3343385190148499860

`and(A038192(A052928(n)), A277934(n))`
-/

namespace A274473.P3343385190148499860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038192 (A052928 n).toNat) (A277934 n)

end

end A274473.P3343385190148499860

namespace A274473

/-- `and(A038192(A052928(n)), A277934(n))` -/
def P3343385190148499860.Spec : Prop :=
  ∀ n, P3343385190148499860.a n = A274473 n

end A274473

/-!
# A274474: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 30", based on the 5-celled von Neumann neighborhood.

The programs for A274474, there is no canonical definition to state claims against.
-/

/-! ## A274474.P1014737780894185702

`A007088(A274476(n))`
-/

namespace A274474.P1014737780894185702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A274476 n).toNat

end

end A274474.P1014737780894185702

/-! ## A274474.P3648623855081822536

`A185544(2*A274476(n))`
-/

namespace A274474.P3648623855081822536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A274476 n).toNat

end

end A274474.P3648623855081822536

/-! ## A274474.P14365417173529932145

`A278819(n)^(n-∑{digits}[n, #])!`
-/

namespace A274474.P14365417173529932145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278819 n ^ Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

end

end A274474.P14365417173529932145

/-! ## A274474.P4769348182701447295

`A278819(n^2^∑{digits}[n, #%C(n, #)])`
-/

namespace A274474.P4769348182701447295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278819 (n ^ 2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)

end

end A274474.P4769348182701447295

/-! ## A274474.P8029068776677343973

`A278819(A046469(n))`
-/

namespace A274474.P8029068776677343973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278819 (A046469 n).toNat

end

end A274474.P8029068776677343973

/-!
# A274475: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 30", based on the 5-celled von Neumann neighborhood.

The programs for A274475, there is no canonical definition to state claims against.
-/

/-! ## A274475.P10126076961818544957

`A007088(A274487(n))`
-/

namespace A274475.P10126076961818544957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A274487 n).toNat

end

end A274475.P10126076961818544957

/-! ## A274475.P11829207785660374657

`A305989(A274476(n)/A055642(n))`
-/

namespace A274475.P11829207785660374657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A274476 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A274475.P11829207785660374657

/-! ## A274475.P2639837599157620963

`A305989(A274476(n)/A237442(n+1))`
-/

namespace A274475.P2639837599157620963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A274476 n : ℚ) / (A237442 (n + 1) : ℚ))).toNat

end

end A274475.P2639837599157620963

/-! ## A274475.P17981617883733331340

`A305989(A274476(n))`
-/

namespace A274475.P17981617883733331340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A274476 n).toNat

end

end A274475.P17981617883733331340

/-! ## A274475.P16672557720718388438

`A185544(2*A274487(n))`
-/

namespace A274475.P16672557720718388438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A274487 n).toNat

end

end A274475.P16672557720718388438

/-!
# A274476: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 30", based on the 5-celled von Neumann neighborhood.

The programs for A274476, there is no canonical definition to state claims against.
-/

/-! ## A274476.P13433274275692576378

`A278821(n)^C(n, 9)!`
-/

namespace A274476.P13433274275692576378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278821 n ^ Nat.factorial (Nat.choose n 9)

end

end A274476.P13433274275692576378

/-! ## A274476.P3520372959914496729

`A278821(A046469(n))`
-/

namespace A274476.P3520372959914496729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278821 (A046469 n).toNat

end

end A274476.P3520372959914496729

/-! ## A274476.P3898177226609089401

`A065668(A278821(n))`
-/

namespace A274476.P3898177226609089401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065668 (A278821 n).toNat

end

end A274476.P3898177226609089401

/-! ## A274476.P10437820452879434174

`A278821(A087036(n))`
-/

namespace A274476.P10437820452879434174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278821 (A087036 n).toNat

end

end A274476.P10437820452879434174

/-! ## A274476.P13392301401344044462

`A278821(A087051(n))`
-/

namespace A274476.P13392301401344044462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278821 (A087051 n).toNat

end

end A274476.P13392301401344044462

/-!
# A274478: G.f. satisfies: A(x)^2 = A( x^2/(1 - 2*x - 2*x^2) ).

The programs for A274478, there is no canonical definition to state claims against.
-/

/-! ## A274478.P12618809889220743682

`A192512(A104934(n))-n`
-/

namespace A274478.P12618809889220743682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192512 (A104934 n).toNat - (n : ℤ)

end

end A274478.P12618809889220743682

/-! ## A274478.P9999680509365677261

`A059995(A053406(n))+A053447(n)`
-/

namespace A274478.P9999680509365677261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A053406 n).toNat + A053447 n

end

end A274478.P9999680509365677261

/-! ## A274478.P12731923303059990491

`A340763(A055099(n))+A047000(2*n)`
-/

namespace A274478.P12731923303059990491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A055099 n).toNat + A047000 (2 * n)

end

end A274478.P12731923303059990491

/-!
# A274479: G.f. satisfies: A(x)^2 = A( x^2/(1 - 2*x - 4*x^2) ).

The programs for A274479, there is no canonical definition to state claims against.
-/

/-! ## A274479.P17530985786067363266

`A002264(abs(A370145(n+2)))`
-/

namespace A274479.P17530985786067363266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 |A370145 (n + 2)|.toNat

end

end A274479.P17530985786067363266

/-! ## A274479.P15781164576671167146

`A316103(n+2)-A167613(A194588(n))`
-/

namespace A274479.P15781164576671167146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316103 (n + 2) - A167613 (A194588 n).toNat

end

end A274479.P15781164576671167146

/-!
# A274480: Triangle T, read by rows, where T(n,k) = [T^(3^k)](n-k,0) * (3^k)^(n-k) for n>=k>=0 such that row n of the 3^(n-1)-th root of T consists solely of integers given by: [T^( 1/3^(n-1) )](n,k) = (3^k)^(n-k) for n>=0.

The programs for A274480, there is no canonical definition to state claims against.
-/

/-! ## A274480.P9657463248733468575

`A182164(A147703(n)!)`
-/

namespace A274480.P9657463248733468575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182164 (Nat.factorial (A147703 n).toNat)

end

end A274480.P9657463248733468575

/-! ## A274480.P8117807780988721048

`A330509(A056040(n)-A011373(n))`
-/

namespace A274480.P8117807780988721048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330509 (A056040 n - A011373 n).toNat

end

end A274480.P8117807780988721048

/-! ## A274480.P15901651577966466846

`A121481(A243660(n+1)+A000122(n))`
-/

namespace A274480.P15901651577966466846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121481 (A243660 (n + 1) + A000122 n).toNat

end

end A274480.P15901651577966466846

/-!
# A274481: Column 0 of triangle A274480.

The programs for A274481, there is no canonical definition to state claims against.
-/

/-! ## A274481.P15065776343336318316

`A274480(∑[n])`
-/

namespace A274481.P15065776343336318316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274480 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274481.P15065776343336318316

/-! ## A274481.P4204101382173113676

`or(A000007(n), A274480(A000217(n)))`
-/

namespace A274481.P4204101382173113676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A274480 (A000217 n).toNat)

end

end A274481.P4204101382173113676

/-! ## A274481.P6082391746113250258

`A274480(A000217(n))+A000007(A093561(n))`
-/

namespace A274481.P6082391746113250258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274480 (A000217 n).toNat + A000007 (A093561 n).toNat

end

end A274481.P6082391746113250258

/-! ## A274481.P668452160524218715

`A274480(A000217(n))+A000007(A011782(n))`
-/

namespace A274481.P668452160524218715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274480 (A000217 n).toNat + A000007 (A011782 n).toNat

end

end A274481.P668452160524218715

/-! ## A274481.P17104740405210696333

`A274480(A000217(n))+A000007(A134484(n))`
-/

namespace A274481.P17104740405210696333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274480 (A000217 n).toNat + A000007 (A134484 n).toNat

end

end A274481.P17104740405210696333

/-!
# A274482: E.g.f. satisfies: A(x)^2 = A( x^2*exp(2*x) ).

The programs for A274482, there is no canonical definition to state claims against.
-/

/-! ## A274482.P12475346031627844615

`abs(A274277(∑[A290663(n)]))`
-/

namespace A274482.P12475346031627844615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A274482.P12475346031627844615

/-! ## A274482.P4735453702854872588

`abs(A274277(A290663(n)+n))`
-/

namespace A274482.P4735453702854872588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274277 (A290663 n + (n : ℤ)).toNat|

end

end A274482.P4735453702854872588

/-! ## A274482.P7565998976725216382

`abs(A274277(∑[A274391(n)^3]))`
-/

namespace A274482.P7565998976725216382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A274482.P7565998976725216382

/-! ## A274482.P13226721988815683912

`gcd(A008683(A002023(n)), A274277(n+1))`
-/

namespace A274482.P13226721988815683912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A002023 n).toNat) (A274277 (n + 1))

end

end A274482.P13226721988815683912

/-!
# A274483: G.f. A(x) satisfies: A(x)^2 = A( x^2/(1 - 4*x - 2*x^2) ).

The programs for A274483, there is no canonical definition to state claims against.
-/

/-! ## A274483.P17882958811501227472

`A161765(A150842(n))`
-/

namespace A274483.P17882958811501227472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161765 (A150842 n).toNat

end

end A274483.P17882958811501227472

/-! ## A274483.P2842116189953208892

`A150842(n)+A005089(A150796(n))`
-/

namespace A274483.P2842116189953208892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150842 n + A005089 (A150796 n).toNat

end

end A274483.P2842116189953208892

/-! ## A274483.P1216724869785050716

`A150842(n)+A007949(A150806(n))`
-/

namespace A274483.P1216724869785050716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150842 n + A007949 (A150806 n).toNat

end

end A274483.P1216724869785050716

/-!
# A274484: G.f. satisfies: A(x)^2 = A( x^2/(1 - 4*x + 2*x^2) ).

The programs for A274484, there is no canonical definition to state claims against.
-/

/-! ## A274484.P2815346482853405783

`A128729(A002998(n)+1)`
-/

namespace A274484.P2815346482853405783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128729 (A002998 n + 1).toNat

end

end A274484.P2815346482853405783

/-! ## A274484.P10942316465982318745

`A052410(A128729(n+1))`
-/

namespace A274484.P10942316465982318745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A128729 (n + 1)).toNat

end

end A274484.P10942316465982318745

/-! ## A274484.P2927140320020725879

`A128729(A062399(n+1))`
-/

namespace A274484.P2927140320020725879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128729 (A062399 (n + 1)).toNat

end

end A274484.P2927140320020725879

/-! ## A274484.P6943063151045996264

`A128729(A120126(n+1))`
-/

namespace A274484.P6943063151045996264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128729 (A120126 (n + 1)).toNat

end

end A274484.P6943063151045996264

/-! ## A274484.P17460659425953460866

`A128729(A349423(n)+1)`
-/

namespace A274484.P17460659425953460866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128729 (A349423 n + 1).toNat

end

end A274484.P17460659425953460866

/-!
# A274487: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 30", based on the 5-celled von Neumann neighborhood.

The programs for A274487, there is no canonical definition to state claims against.
-/

/-! ## A274487.P10342839534222611209

`A325401(A274476(n)/A026517(n))`
-/

namespace A274487.P10342839534222611209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A274476 n : ℚ) / (A026517 n : ℚ))).toNat

end

end A274487.P10342839534222611209

/-! ## A274487.P5318210940323701275

`A325401(A274476(n)/A055642(n))`
-/

namespace A274487.P5318210940323701275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A274476 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A274487.P5318210940323701275

/-! ## A274487.P13126499518099808174

`A325401(A274476(n)/A193517(n+1))`
-/

namespace A274487.P13126499518099808174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A274476 n : ℚ) / (A193517 (n + 1) : ℚ))).toNat

end

end A274487.P13126499518099808174

/-! ## A274487.P10121430238300181164

`A325401(A274476(n)/A237442(n+1))`
-/

namespace A274487.P10121430238300181164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A274476 n : ℚ) / (A237442 (n + 1) : ℚ))).toNat

end

end A274487.P10121430238300181164

/-! ## A274487.P4427423892332193113

`A325401(A274476(n))`
-/

namespace A274487.P4427423892332193113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A274476 n).toNat

end

end A274487.P4427423892332193113

/-!
# A274488: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having least column-height k (n>=2, k>=1).

The programs for A274488, there is no canonical definition to state claims against.
-/

/-! ## A274488.P3339650229671285637

`A188464(val(A114283(n), 3))`
-/

namespace A274488.P3339650229671285637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 (SequenceMachineLib.valuation (A114283 n).toNat 3)

end

end A274488.P3339650229671285637

/-! ## A274488.P2531279973247849507

`A188464(log2(A155038(n+1)))`
-/

namespace A274488.P2531279973247849507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 (SequenceMachineLib.roundAway (Real.logb 2 (A155038 (n + 1) : ℝ))).toNat

end

end A274488.P2531279973247849507

/-! ## A274488.P1056412699331455479

`A188464(val(A155038(n+1), 2))`
-/

namespace A274488.P1056412699331455479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 (SequenceMachineLib.valuation (A155038 (n + 1)).toNat 2)

end

end A274488.P1056412699331455479

/-! ## A274488.P5527118134745728658

`A188464(A025581(n+1)%A193739(n))`
-/

namespace A274488.P5527118134745728658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 (Int.tmod (A025581 (n + 1)) (A193739 n)).toNat

end

end A274488.P5527118134745728658

/-! ## A274488.P6478562863573687727

`A188464(A193739(n+2)%A155038(n+1))`
-/

namespace A274488.P6478562863573687727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 (Int.tmod (A193739 (n + 2)) (A155038 (n + 1))).toNat

end

end A274488.P6478562863573687727

/-! ## A274488.P14239036957791730784

`∏{e}[A155038(n+1), A188464(#)]`
-/

namespace A274488.P14239036957791730784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A188464 (Nat.factorization (f1 n).natAbs p)

end

end A274488.P14239036957791730784

/-! ## A274488.P1562813095591448110

`A274490(A007401(n+2))`
-/

namespace A274488.P1562813095591448110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274490 (A007401 (n + 2)).toNat

end

end A274488.P1562813095591448110

/-! ## A274488.P12960113557414790251

`A274490(lt[1, A274480(n)])`
-/

namespace A274488.P12960113557414790251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A274488.P12960113557414790251

/-! ## A274488.P9230656618307920308

`A274490(lt[2, A119308(n)])`
-/

namespace A274488.P9230656618307920308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A274488.P9230656618307920308

/-! ## A274488.P11091283494282566855

`A274490(A181133(n+1)+1)`
-/

namespace A274488.P11091283494282566855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274490 (A181133 (n + 1) + 1).toNat

end

end A274488.P11091283494282566855

/-!
# A274489: a(n) = floor(sinh(n) / n^2).

The programs for A274489, the canonical program `A274489.P18076663869588074972` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274489 has offset 1).

The definition of A274489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sinh(n+1)/(n+1)²)` (program `A274489.P18076663869588074972`, by `A274489.P18076663869588074972.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274489.P18076663869588074972

`floor(sinh(n+1)/(n+1)²)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274489

/-- `floor(sinh(n+1)/(n+1)²)` -/
def P18076663869588074972.Spec : Prop :=
  ∀ n, P18076663869588074972.a n = A274489 (n + 1)

theorem P18076663869588074972.correct : P18076663869588074972.Spec := by
  intro n
  simp only [A274489, Nat.add_sub_cancel]

end A274489

/-! ## A274489.P2276734649858753590

`floor(floor((exp((n+1)/2)/(n+1))²)/2)`
-/

namespace A274489.P2276734649858753590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(Real.exp ((n + 1 : ℚ) / 2 : ℝ) / (n + 1 : ℝ)) ^ 2⌋ : ℚ) / 2⌋

end

end A274489.P2276734649858753590

namespace A274489

/-- `floor(floor((exp((n+1)/2)/(n+1))²)/2)` -/
def P2276734649858753590.Spec : Prop :=
  ∀ n, P2276734649858753590.a n = A274489 (n + 1)

end A274489

/-! ## A274489.P4187476448879453367

`ceil(A132408(n+1)/2)-1`
-/

namespace A274489.P4187476448879453367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132408 (n + 1) : ℚ) / 2⌉ - 1

end

end A274489.P4187476448879453367

namespace A274489

/-- `ceil(A132408(n+1)/2)-1` -/
def P4187476448879453367.Spec : Prop :=
  ∀ n, P4187476448879453367.a n = A274489 (n + 1)

end A274489

/-! ## A274489.P9668529413898369342

`A316441(A000040(n+1))+round(A132408(n+1)/2)`
-/

namespace A274489.P9668529413898369342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + SequenceMachineLib.roundAway ((A132408 (n + 1) : ℚ) / 2)

end

end A274489.P9668529413898369342

namespace A274489

/-- `A316441(A000040(n+1))+round(A132408(n+1)/2)` -/
def P9668529413898369342.Spec : Prop :=
  ∀ n, P9668529413898369342.a n = A274489 (n + 1)

end A274489

/-! ## A274489.P12545788051237032365

`ceil(cosh(n+1)/(n+1)²)-1`
-/

namespace A274489.P12545788051237032365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (n + 1 : ℝ) / ((n + 1) ^ 2 : ℝ)⌉ - 1

end

end A274489.P12545788051237032365

namespace A274489

/-- `ceil(cosh(n+1)/(n+1)²)-1` -/
def P12545788051237032365.Spec : Prop :=
  ∀ n, P12545788051237032365.a n = A274489 (n + 1)

end A274489

/-! ## A274489.P4493285114886310463

`ceil(sinh(n+1)/(n+1)²)-1`
-/

namespace A274489.P4493285114886310463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (n + 1 : ℝ) / ((n + 1) ^ 2 : ℝ)⌉ - 1

end

end A274489.P4493285114886310463

namespace A274489

/-- `ceil(sinh(n+1)/(n+1)²)-1` -/
def P4493285114886310463.Spec : Prop :=
  ∀ n, P4493285114886310463.a n = A274489 (n + 1)

end A274489

/-!
# A274490: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n starting with k columns of length 1 (n>=2, k>=0).

The programs for A274490, there is no canonical definition to state claims against.
-/

/-! ## A274490.P17766433195376607645

`A265542(A112413(n+1))`
-/

namespace A274490.P17766433195376607645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265542 (A112413 (n + 1)).toNat

end

end A274490.P17766433195376607645

/-! ## A274490.P2864091615838213828

`abs(A099324(A025581(A187829(n+1))))`
-/

namespace A274490.P2864091615838213828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099324 (A025581 (A187829 (n + 1)).toNat).toNat|

end

end A274490.P2864091615838213828

/-! ## A274490.P3774062412581124896

`A238955(A217654(n+1))`
-/

namespace A274490.P3774062412581124896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238955 (A217654 (n + 1)).toNat

end

end A274490.P3774062412581124896

/-! ## A274490.P521143512833106476

`A024375(A134275(n+2))`
-/

namespace A274490.P521143512833106476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024375 (A134275 (n + 2)).toNat

end

end A274490.P521143512833106476

/-! ## A274490.P7799882952575941344

`A126309(A171095(n+2))`
-/

namespace A274490.P7799882952575941344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126309 (A171095 (n + 2)).toNat

end

end A274490.P7799882952575941344

/-!
# A274492: Number of horizontal segments of length 1 in all bargraphs of semiperimeter n (n>=2). By a horizontal segment of length 1 we mean a horizontal step that is not adjacent to any other horizontal step.

The programs for A274492, there is no canonical definition to state claims against.
-/

/-! ## A274492.P5455684130902402232

`Δ[A273345(n+2)]`
-/

namespace A274492.P5455684130902402232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273345 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274492.P5455684130902402232

/-! ## A274492.P7260021020590176704

`A273345(n+3)-A273345(n+2)`
-/

namespace A274492.P7260021020590176704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273345 (n + 3) - A273345 (n + 2)

end

end A274492.P7260021020590176704

/-! ## A274492.P10783160470608176087

`Δ[Δ[A047086(n)%A294159(n)]]`
-/

namespace A274492.P10783160470608176087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047086 n) (A294159 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274492.P10783160470608176087

/-! ## A274492.P12770464285365405166

`Δ[Δ[Δ[A294159(n)]%A047085(n)]]`
-/

namespace A274492.P12770464285365405166
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (n + 1) - f3 n) (A047085 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274492.P12770464285365405166

/-! ## A274492.P16749645456972682744

`Δ[Δ[Δ[A047085(n)]%A047086(n)]]`
-/

namespace A274492.P16749645456972682744
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (n + 1) - f3 n) (A047086 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274492.P16749645456972682744

/-!
# A274493: Number of bargraphs of semiperimeter n having no horizontal segments of length 1 (n>=2). By a horizontal segment of length 1 we mean a horizontal step that is not adjacent to any other horizontal step.

The programs for A274493, there is no canonical definition to state claims against.
-/

/-! ## A274493.P2730192212828670570

`A274491(A087483(n+1))`
-/

namespace A274493.P2730192212828670570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274491 (A087483 (n + 1)).toNat

end

end A274493.P2730192212828670570

/-! ## A274493.P9858445312192654571

`A274491(A232739(n+1))`
-/

namespace A274493.P9858445312192654571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274491 (A232739 (n + 1)).toNat

end

end A274493.P9858445312192654571

/-! ## A274493.P2105506689509453337

`A108602(A151420(n+2)+1)-1`
-/

namespace A274493.P2105506689509453337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A151420 (n + 2) + 1).toNat - 1

end

end A274493.P2105506689509453337

/-! ## A274493.P820868248120381439

`A172471(A124528(n)-A239232(n+1))`
-/

namespace A274493.P820868248120381439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A124528 n - A239232 (n + 1)).toNat

end

end A274493.P820868248120381439

/-! ## A274493.P4735514151549200696

`A055086(A056272(n)*A361121(3*n+4))`
-/

namespace A274493.P4735514151549200696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A056272 n * A361121 (3 * n + 4)).toNat

end

end A274493.P4735514151549200696

/-!
# A274494: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having k as the length of the longest initial sequence of the form UHUH... (n>=2, 1<=k<=2*floor(n/2)).

The programs for A274494, there is no canonical definition to state claims against.
-/

/-! ## A274494.P17658648699149595579

`lt[(-1)^∑{e}[n, #], 0]%A341975(A196268(n+1))`
-/

namespace A274494.P17658648699149595579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n : ℤ) (A341975 ((A196268 (n + 1)).toNat + 11))

end

end A274494.P17658648699149595579

/-! ## A274494.P17107876312939345511

`A342085(A290383(n+1))%A001370(n)`
-/

namespace A274494.P17107876312939345511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342085 (A290383 (n + 1)).toNat) (A001370 n)

end

end A274494.P17107876312939345511

/-! ## A274494.P15030189053647537654

`A254433(A007318(2*n))%A364884(n+1)`
-/

namespace A274494.P15030189053647537654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254433 (A007318 (2 * n)).toNat) (A364884 (n + 1))

end

end A274494.P15030189053647537654

/-!
# A274495: The length of the longest initial sequence of the form UHUH..., summed over all bargraphs having semiperimeter n (n>=2).

The programs for A274495, there is no canonical definition to state claims against.
-/

/-! ## A274495.P18171775068768605496

`A003059(A377098(n))+A000149(n)`
-/

namespace A274495.P18171775068768605496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A377098 n).toNat + A000149 n

end

end A274495.P18171775068768605496

/-! ## A274495.P2473986327857905360

`A093043(n)+A054846(A096267(n+1))`
-/

namespace A274495.P2473986327857905360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093043 n + A054846 (A096267 (n + 1)).toNat

end

end A274495.P2473986327857905360

/-! ## A274495.P8202980361976042433

`A204908(A000079(n)*A304712(2*n))`
-/

namespace A274495.P8202980361976042433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204908 (A000079 n * A304712 (2 * n)).toNat

end

end A274495.P8202980361976042433

/-!
# A274496: Triangle read by rows: T(n,k) is the number of binary words of length n having degree of asymmetry equal to k (n >= 0; 0 <= k <= n/2).

The programs for A274496, there is no canonical definition to state claims against.
-/

/-! ## A274496.P10432244664829540859

`2^A000196(n)*A152198(n)`
-/

namespace A274496.P10432244664829540859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000196 n : ℤ) * (A152198 n : ℚ)

end

end A274496.P10432244664829540859

/-! ## A274496.P1336401417779388414

`A000079(floor(sqrt(n)))*A152198(n)`
-/

namespace A274496.P1336401417779388414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.sqrt n) * A152198 n

end

end A274496.P1336401417779388414

/-! ## A274496.P12424559025491312471

`A016116(A000267(n))*A152198(n)`
-/

namespace A274496.P12424559025491312471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A000267 n).toNat * A152198 n

end

end A274496.P12424559025491312471

/-! ## A274496.P10005347746090238830

`A060546(A055086(n))*A152198(n)`
-/

namespace A274496.P10005347746090238830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A055086 n).toNat * A152198 n

end

end A274496.P10005347746090238830

/-! ## A274496.P10290751355049096360

`A060546(A082375(n))*A188440(n)`
-/

namespace A274496.P10290751355049096360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A082375 n).toNat * A188440 n

end

end A274496.P10290751355049096360

/-! ## A274496.P10701433499329497453

`A011782(A003059(n+1))*A152198(n)`
-/

namespace A274496.P10701433499329497453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003059 (n + 1)).toNat * A152198 n

end

end A274496.P10701433499329497453

/-!
# A274497: Sum of the degrees of asymmetry of all binary words of length n.

The programs for A274497, the canonical program `A274497.P15700823160003549097` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274497 has offset 0).

The definition of A274497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274497.P7055532134529584395

`2^(n-1)*floor(n/2)`
-/

namespace A274497.P7055532134529584395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (⌊(n : ℚ) / 2⌋ : ℚ)

end

end A274497.P7055532134529584395

namespace A274497

/-- `2^(n-1)*floor(n/2)` -/
def P7055532134529584395.Spec : Prop :=
  ∀ n, P7055532134529584395.a n = (A274497 n : ℚ)

end A274497

/-! ## A274497.P15700823160003549097

`2*a(n-1)+4*a(n-2)-8*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274497

/-- `2*a(n-1)+4*a(n-2)-8*a(n-3)` -/
def P15700823160003549097.Spec : Prop :=
  ∀ n, P15700823160003549097.a n = A274497 n

theorem P15700823160003549097.correct : P15700823160003549097.Spec := by
  intro n
  simp only [A274497]

end A274497

/-! ## A274497.P9463957474018161839

`abs((or(1, n)-1)*2^(n-2))`
-/

namespace A274497.P9463957474018161839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 1 n : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)|

end

end A274497.P9463957474018161839

namespace A274497

/-- `abs((or(1, n)-1)*2^(n-2))` -/
def P9463957474018161839.Spec : Prop :=
  ∀ n, P9463957474018161839.a n = (A274497 n : ℚ)

end A274497

/-! ## A274497.P15494732531715222055

`A199573(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A274497.P15494732531715222055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A199573 n + 2 * a (n - 1)

end

end A274497.P15494732531715222055

namespace A274497

/-- `A199573(n)+2*a(n-1)` -/
def P15494732531715222055.Spec : Prop :=
  ∀ n, P15494732531715222055.a n = A274497 n

end A274497

/-! ## A274497.P5914249465194085439

`(A008619(n)+1)*2^n/2-2^n`
-/

namespace A274497.P5914249465194085439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n + 1 : ℚ) * ((2 ^ n : ℚ) / 2) - (2 ^ n : ℚ)

end

end A274497.P5914249465194085439

namespace A274497

/-- `(A008619(n)+1)*2^n/2-2^n` -/
def P5914249465194085439.Spec : Prop :=
  ∀ n, P5914249465194085439.a n = (A274497 n : ℚ)

end A274497

/-! ## A274497.P3599253828982720889

`A045623(n)-A134683(n)`
-/

namespace A274497.P3599253828982720889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A134683 n

end

end A274497.P3599253828982720889

namespace A274497

/-- `A045623(n)-A134683(n)` -/
def P3599253828982720889.Spec : Prop :=
  ∀ n, P3599253828982720889.a n = A274497 n

end A274497

/-! ## A274497.P12511432085828811666

`A104721(n)-A172160(n)`
-/

namespace A274497.P12511432085828811666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104721 n - A172160 n

end

end A274497.P12511432085828811666

namespace A274497

/-- `A104721(n)-A172160(n)` -/
def P12511432085828811666.Spec : Prop :=
  ∀ n, P12511432085828811666.a n = A274497 n

end A274497

/-! ## A274497.P1585675608541359782

`A008619(n)*A011782(n)-A011782(n)`
-/

namespace A274497.P1585675608541359782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A011782 n - A011782 n

end

end A274497.P1585675608541359782

namespace A274497

/-- `A008619(n)*A011782(n)-A011782(n)` -/
def P1585675608541359782.Spec : Prop :=
  ∀ n, P1585675608541359782.a n = A274497 n

end A274497

/-! ## A274497.P5790678008717086780

`A008619(n)*A131577(n)-A131577(n)`
-/

namespace A274497.P5790678008717086780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A131577 n - A131577 n

end

end A274497.P5790678008717086780

namespace A274497

/-- `A008619(n)*A131577(n)-A131577(n)` -/
def P5790678008717086780.Spec : Prop :=
  ∀ n, P5790678008717086780.a n = A274497 n

end A274497

/-! ## A274497.P16730210229291491906

`A008619(n)*A034008(n+1)-A034008(n+1)`
-/

namespace A274497.P16730210229291491906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A034008 (n + 1) - A034008 (n + 1)

end

end A274497.P16730210229291491906

namespace A274497

/-- `A008619(n)*A034008(n+1)-A034008(n+1)` -/
def P16730210229291491906.Spec : Prop :=
  ∀ n, P16730210229291491906.a n = A274497 n

end A274497

/-! ## A274497.P12150124905995421058

`A008619(n)*A166444(n+1)-A166444(n+1)`
-/

namespace A274497.P12150124905995421058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A166444 (n + 1) - A166444 (n + 1)

end

end A274497.P12150124905995421058

namespace A274497

/-- `A008619(n)*A166444(n+1)-A166444(n+1)` -/
def P12150124905995421058.Spec : Prop :=
  ∀ n, P12150124905995421058.a n = A274497 n

end A274497

/-! ## A274497.P2292344450138792461

`ogf(2x^2/(1-2x-4x^2+8x^3))`
-/

namespace A274497.P2292344450138792461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -2, -4, 8] n

end

end A274497.P2292344450138792461

namespace A274497

/-- `ogf(2x^2/(1-2x-4x^2+8x^3))` -/
def P2292344450138792461.Spec : Prop :=
  ∀ n, P2292344450138792461.a n = A274497 n

end A274497

/-! ## A274497.P6781940555334473920

`floor(n/2)*A000079(n)/2`
-/

namespace A274497.P6781940555334473920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ * A000079 n : ℚ) / 2

end

end A274497.P6781940555334473920

namespace A274497

/-- `floor(n/2)*A000079(n)/2` -/
def P6781940555334473920.Spec : Prop :=
  ∀ n, P6781940555334473920.a n = (A274497 n : ℚ)

end A274497

/-! ## A274497.P5572885321002116328

`floor(n/2)*A155559(n)/2`
-/

namespace A274497.P5572885321002116328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ * A155559 n : ℚ) / 2

end

end A274497.P5572885321002116328

namespace A274497

/-- `floor(n/2)*A155559(n)/2` -/
def P5572885321002116328.Spec : Prop :=
  ∀ n, P5572885321002116328.a n = (A274497 n : ℚ)

end A274497

/-! ## A274497.P13939654249801698169

`A097064(n)-2*a(n-1)` with `a(0)=0`
-/

namespace A274497.P13939654249801698169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A097064 n - 2 * a (n - 1)

end

end A274497.P13939654249801698169

namespace A274497

/-- `A097064(n)-2*a(n-1)` -/
def P13939654249801698169.Spec : Prop :=
  ∀ n, P13939654249801698169.a n = A274497 n

end A274497

/-! ## A274497.P15989369164007148094

`A179608(n)-A001792(n)`
-/

namespace A274497.P15989369164007148094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179608 n - A001792 n

end

end A274497.P15989369164007148094

namespace A274497

/-- `A179608(n)-A001792(n)` -/
def P15989369164007148094.Spec : Prop :=
  ∀ n, P15989369164007148094.a n = A274497 n

end A274497

/-! ## A274497.P2227704028546231303

`A291938(A065033(2*n))/2`
-/

namespace A274497.P2227704028546231303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291938 (A065033 (2 * n)).toNat : ℚ) / 2

end

end A274497.P2227704028546231303

namespace A274497

/-- `A291938(A065033(2*n))/2` -/
def P2227704028546231303.Spec : Prop :=
  ∀ n, P2227704028546231303.a n = (A274497 n : ℚ)

end A274497

/-! ## A274497.P14047724782892357019

`(A134353(n)-A000079(n))/2`
-/

namespace A274497.P14047724782892357019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134353 n - A000079 n : ℚ) / 2

end

end A274497.P14047724782892357019

namespace A274497

/-- `(A134353(n)-A000079(n))/2` -/
def P14047724782892357019.Spec : Prop :=
  ∀ n, P14047724782892357019.a n = (A274497 n : ℚ)

end A274497

/-! ## A274497.P3375756523031205045

`A291938(A004277(n)-n)/2`
-/

namespace A274497.P3375756523031205045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291938 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

end

end A274497.P3375756523031205045

namespace A274497

/-- `A291938(A004277(n)-n)/2` -/
def P3375756523031205045.Spec : Prop :=
  ∀ n, P3375756523031205045.a n = (A274497 n : ℚ)

end A274497

/-! ## A274497.P9135033622876965353

`A001787(n)-A004526(n+1)*A131577(n)`
-/

namespace A274497.P9135033622876965353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - A004526 (n + 1) * A131577 n

end

end A274497.P9135033622876965353

namespace A274497

/-- `A001787(n)-A004526(n+1)*A131577(n)` -/
def P9135033622876965353.Spec : Prop :=
  ∀ n, P9135033622876965353.a n = A274497 n

end A274497

/-!
# A274498: Triangle read by rows: T(n,k) is the number of ternary words of length n having degree of asymmetry equal to k (n>=0; 0<=k<=n/2).

The programs for A274498, there is no canonical definition to state claims against.
-/

/-! ## A274498.P7436033518150122718

`3^A000196(n)*A188440(n)`
-/

namespace A274498.P7436033518150122718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000196 n : ℤ) * (A188440 n : ℚ)

end

end A274498.P7436033518150122718

/-! ## A274498.P2882355720069751357

`A108411(floor(1/Δ[sqrt(n)]))*A188440(n)`
-/

namespace A274498.P2882355720069751357
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 ⌊1 / (f1 (n + 1) - f1 n)⌋.toNat * A188440 n

end

end A274498.P2882355720069751357

/-! ## A274498.P4098191162356221280

`A000244(A000196(n))*A188440(n)`
-/

namespace A274498.P4098191162356221280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A000196 n).toNat * A188440 n

end

end A274498.P4098191162356221280

/-! ## A274498.P14001021492793559514

`A133494(A003059(n+1))*A188440(n)`
-/

namespace A274498.P14001021492793559514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (A003059 (n + 1)).toNat * A188440 n

end

end A274498.P14001021492793559514

/-! ## A274498.P8999439666174238357

`A226602(∑[record[A162201(n+1)]])`
-/

namespace A274498.P8999439666174238357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274498.P8999439666174238357

/-!
# A274499: Sum of the degrees of asymmetry of all ternary words of length n.

The programs for A274499, the canonical program `A274499.P2088991251890602603` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274499 has offset 0).

The definition of A274499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274499.P6775624671367995388

`1/6*(2*n-1+(-1)^n)*3^n`
-/

namespace A274499.P6775624671367995388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((2 * n : ℤ) - 1 + (-1) ^ n : ℚ) * (3 ^ n : ℚ)

end

end A274499.P6775624671367995388

namespace A274499

/-- `1/6*(2*n-1+(-1)^n)*3^n` -/
def P6775624671367995388.Spec : Prop :=
  ∀ n, P6775624671367995388.a n = (A274499 n : ℚ)

theorem P6775624671367995388.correct : P6775624671367995388.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A274499, Nat.add_sub_cancel, A274499.P6775624671367995388.a, A274499.P2088991251890602603.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A274499, Nat.add_sub_cancel, A274499.P6775624671367995388.a, A274499.P2088991251890602603.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A274499

/-! ## A274499.P2088991251890602603

`3*a(n-1)+9*a(n-2)-27*a(n-3)` with `a(0)=0, a(1)=0, a(2)=6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274499

/-- `3*a(n-1)+9*a(n-2)-27*a(n-3)` -/
def P2088991251890602603.Spec : Prop :=
  ∀ n, P2088991251890602603.a n = A274499 n

theorem P2088991251890602603.correct : P2088991251890602603.Spec := by
  intro n
  simp only [A274499]

end A274499

/-! ## A274499.P1416877333494328690

`3^(n-1)*A109613(n)-3^(n-1)`
-/

namespace A274499.P1416877333494328690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A109613 n : ℚ) - (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A274499.P1416877333494328690

namespace A274499

/-- `3^(n-1)*A109613(n)-3^(n-1)` -/
def P1416877333494328690.Spec : Prop :=
  ∀ n, P1416877333494328690.a n = (A274499 n : ℚ)

end A274499

/-! ## A274499.P3225344177151736143

`A006234(n+3)-A133125(n)`
-/

namespace A274499.P3225344177151736143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (n + 3) - A133125 n

end

end A274499.P3225344177151736143

namespace A274499

/-- `A006234(n+3)-A133125(n)` -/
def P3225344177151736143.Spec : Prop :=
  ∀ n, P3225344177151736143.a n = A274499 n

end A274499

/-! ## A274499.P9945709457955474524

`A002265(2*n)*A068911(2*n)/2`
-/

namespace A274499.P9945709457955474524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002265 (2 * n) * A068911 (2 * n) : ℚ) / 2

end

end A274499.P9945709457955474524

namespace A274499

/-- `A002265(2*n)*A068911(2*n)/2` -/
def P9945709457955474524.Spec : Prop :=
  ∀ n, P9945709457955474524.a n = (A274499 n : ℚ)

end A274499

/-! ## A274499.P3187339376396629052

`A074324(2*n)*A130722(2*n)/2`
-/

namespace A274499.P3187339376396629052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074324 (2 * n) * A130722 (2 * n) : ℚ) / 2

end

end A274499.P3187339376396629052

namespace A274499

/-- `A074324(2*n)*A130722(2*n)/2` -/
def P3187339376396629052.Spec : Prop :=
  ∀ n, P3187339376396629052.a n = (A274499 n : ℚ)

end A274499

/-! ## A274499.P7421150608486080357

`A008619(n)*A025192(n)-A025192(n)`
-/

namespace A274499.P7421150608486080357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A025192 n - A025192 n

end

end A274499.P7421150608486080357

namespace A274499

/-- `A008619(n)*A025192(n)-A025192(n)` -/
def P7421150608486080357.Spec : Prop :=
  ∀ n, P7421150608486080357.a n = A274499 n

end A274499

/-! ## A274499.P1338344472769231785

`A000244(n)²*A004524(2*n)/A000244(n+1)`
-/

namespace A274499.P1338344472769231785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n ^ 2 * A004524 (2 * n) : ℚ) / (A000244 (n + 1) : ℚ)

end

end A274499.P1338344472769231785

namespace A274499

/-- `A000244(n)²*A004524(2*n)/A000244(n+1)` -/
def P1338344472769231785.Spec : Prop :=
  ∀ n, P1338344472769231785.a n = (A274499 n : ℚ)

end A274499

/-! ## A274499.P2105756554309574571

`A000244(2*n)*A004524(2*n)/A000244(n+1)`
-/

namespace A274499.P2105756554309574571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (2 * n) * A004524 (2 * n) : ℚ) / (A000244 (n + 1) : ℚ)

end

end A274499.P2105756554309574571

namespace A274499

/-- `A000244(2*n)*A004524(2*n)/A000244(n+1)` -/
def P2105756554309574571.Spec : Prop :=
  ∀ n, P2105756554309574571.a n = (A274499 n : ℚ)

end A274499

