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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
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
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A160800: Toothpick sequence in Fibonacci spiral (see Comments lines for definition).

The programs for A160800, there is no canonical definition to state claims against.
-/

/-! ## A160800.P16896360413815831982

`A160801(n)+a(n-1)` with `a(0)=0`
-/

namespace A160800.P16896360413815831982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160801 n + a (n - 1)

end

end A160800.P16896360413815831982

/-! ## A160800.P16838594146559055811

`∑[A160801(floor(acot(n)+n))]-1`
-/

namespace A160800.P16838594146559055811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160801 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160800.P16838594146559055811

/-! ## A160800.P18323277570723210128

`∑[A160801(n^floor(atan(n)))]-1`
-/

namespace A160800.P18323277570723210128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160801 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160800.P18323277570723210128

/-! ## A160800.P9957240550122201564

`∑[A160801(round(sqrt(n²+1)))]-1`
-/

namespace A160800.P9957240550122201564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160801 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160800.P9957240550122201564

/-! ## A160800.P3753746120385861544

`∑[A160801(A028310(n))-1]+n`
-/

namespace A160800.P3753746120385861544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160801 (A028310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A160800.P3753746120385861544

/-! ## A160800.P9735347474924426822

`∑[A057427(n)*A160801(A028310(n))]`
-/

namespace A160800.P9735347474924426822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A160801 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160800.P9735347474924426822

/-! ## A160800.P2767922502396644156

`∑[A160801(A028310(n))%A000070(n)]`
-/

namespace A160800.P2767922502396644156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160801 (A028310 n).toNat) (A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160800.P2767922502396644156

/-! ## A160800.P7147118831892300604

`∑[A057428(n)²*A160801(A028310(n))]`
-/

namespace A160800.P7147118831892300604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A160801 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160800.P7147118831892300604

/-! ## A160800.P15657671354557999773

`∑[A000040(n+1)%2*A160801(A028310(n))]`
-/

namespace A160800.P15657671354557999773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A160801 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160800.P15657671354557999773

/-!
# A160801: First differences of A160800.

The programs for A160801, there is no canonical definition to state claims against.
-/

/-! ## A160801.P16331145228778543571

`Δ[A160800(n)]`
-/

namespace A160801.P16331145228778543571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160801.P16331145228778543571

/-! ## A160801.P16271648123229106906

`A160800(n+1)-A160800(n)`
-/

namespace A160801.P16271648123229106906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160800 (n + 1) - A160800 n

end

end A160801.P16271648123229106906

/-! ## A160801.P1506735766137048001

`A160800(floor((2*n+3)/2))%(A160800(n)+1)+1`
-/

namespace A160801.P1506735766137048001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160800 ⌊(2 * n + 3 : ℚ) / 2⌋.toNat) (A160800 n + 1) + 1

end

end A160801.P1506735766137048001

/-! ## A160801.P15195429689142616000

`A000027(A160800(n+1)%(A160800(n)+1)+1)`
-/

namespace A160801.P15195429689142616000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A160800 (n + 1)) (A160800 n + 1) + 1).toNat

end

end A160801.P15195429689142616000

/-!
# A160802: Toothpick sequence in Fibonacci spiral (see Comments lines for definition).

The programs for A160802, there is no canonical definition to state claims against.
-/

/-! ## A160802.P10208891303644180745

`∑[A160803(A028310(n))]-1`
-/

namespace A160802.P10208891303644180745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160803 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160802.P10208891303644180745

/-! ## A160802.P15894597617156068920

`∑[A057427(n)*A160803(A028310(n))]`
-/

namespace A160802.P15894597617156068920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A160803 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160802.P15894597617156068920

/-! ## A160802.P488254116987347046

`∑[A160803(A028310(n))%A003215(n)]`
-/

namespace A160802.P488254116987347046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160803 (A028310 n).toNat) (A003215 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160802.P488254116987347046

/-! ## A160802.P12460478057202354303

`A010815(gcd(n, n+1))+∑[A160803(A028310(n))]`
-/

namespace A160802.P12460478057202354303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160803 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Nat.gcd n (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160802.P12460478057202354303

/-! ## A160802.P9060166302754716223

`∑[A160803(n+1)]-A160803(n+1)`
-/

namespace A160802.P9060166302754716223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160803 (n + 1)

end

end A160802.P9060166302754716223

/-!
# A160803: First differences of A160802.

The programs for A160803, there is no canonical definition to state claims against.
-/

/-! ## A160803.P6457668773607131855

`Δ[A160802(n)]`
-/

namespace A160803.P6457668773607131855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160803.P6457668773607131855

/-! ## A160803.P6911087094289906791

`A160802(n+1)-A160802(n)`
-/

namespace A160803.P6911087094289906791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160802 (n + 1) - A160802 n

end

end A160803.P6911087094289906791

/-! ## A160803.P15526827324867213632

`A160802(n+1)+A160802(n)/A008683(A046133(n+1))`
-/

namespace A160803.P15526827324867213632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160802 (n + 1) : ℚ) + (A160802 n : ℚ) / (A008683 (A046133 (n + 1)).toNat : ℚ)

end

end A160803.P15526827324867213632

/-!
# A160804: Consider a permutation K = (k(1),k(2),...k(A000005(n))) of the positive divisors of n. Consider the partial sums S = Sum_{j=1..m} k(j), 1 <= m <= A000005(n). Then, a(n) = the minimum number, for any permutation K, of partial sums S that are coprime to n.

The programs for A160804, there is no canonical definition to state claims against.
-/

/-! ## A160804.P7111999813644645512

`C(A108461(A273730(n)), A009194(n+1))`
-/

namespace A160804.P7111999813644645512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A108461 (A273730 n).toNat).toNat (A009194 (n + 1)).toNat

end

end A160804.P7111999813644645512

/-! ## A160804.P214298797727431455

`A000122(A322452(n+1)*A337696(n+1))`
-/

namespace A160804.P214298797727431455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A322452 (n + 1) * A337696 (n + 1)).toNat

end

end A160804.P214298797727431455

/-! ## A160804.P4788112736175697581

`C(A285572(n+1), A388846(A348929(n+1)))`
-/

namespace A160804.P4788112736175697581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A285572 (n + 1)).toNat (A388846 (A348929 (n + 1)).toNat).toNat

end

end A160804.P4788112736175697581

/-! ## A160804.P340260725759561968

`A000925(A099258(2*(n+2))*A364830(n+1))`
-/

namespace A160804.P340260725759561968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A099258 (2 * (n + 2)) * A364830 (n + 1)).toNat

end

end A160804.P340260725759561968

/-! ## A160804.P9357780360894755000

`A382771(A339629(n+4)+∏{p}[n+1, #])`
-/

namespace A160804.P9357780360894755000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382771 (A339629 (n + 4) + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)).toNat

end

end A160804.P9357780360894755000

/-!
# A160805: a(n) = (2*n^3 + 9*n^2 + n + 24) / 6.

The programs for A160805, the canonical program `A160805.P4633505952596634507` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160805 has offset 0).

The definition of A160805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n^3+9*n²+n+24)/6` (program `A160805.P15278250751157746031`, by `A160805.P15278250751157746031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160805.P15278250751157746031

`(2*n^3+9*n²+n+24)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160805.P15278250751157746031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 + 9 * n ^ 2 + n + 24 : ℚ) / 6

end

end A160805.P15278250751157746031

namespace A160805

/-- `(2*n^3+9*n²+n+24)/6` -/
def P15278250751157746031.Spec : Prop :=
  ∀ n, P15278250751157746031.a n = (A160805 n : ℚ)

theorem P15278250751157746031.correct : P15278250751157746031.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A160805, Nat.add_sub_cancel, A160805.P15278250751157746031.a, A160805.P4633505952596634507.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A160805, Nat.add_sub_cancel, A160805.P15278250751157746031.a, A160805.P4633505952596634507.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A160805

/-! ## A160805.P4633505952596634507

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=6, a(2)=13, a(3)=27`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160805

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4633505952596634507.Spec : Prop :=
  ∀ n, P4633505952596634507.a n = A160805 n

theorem P4633505952596634507.correct : P4633505952596634507.Spec := by
  intro n
  simp only [A160805]

end A160805

/-! ## A160805.P6968682286202848196

`∑[∑[a(n-1)+2]]` with `a(0)=4, a(1)=-2, a(2)=5`
-/

namespace A160805.P6968682286202848196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, -2, 5] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160805.P6968682286202848196

namespace A160805

/-- `∑[∑[a(n-1)+2]]` -/
def P6968682286202848196.Spec : Prop :=
  ∀ n, P6968682286202848196.a n = A160805 n

end A160805

/-! ## A160805.P13158883287510212654

`(n+1)²+a(n-1)-2` with `a(0)=4`
-/

namespace A160805.P13158883287510212654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ((n + 1) ^ 2 : ℤ) + (a (n - 1) - 2)

end

end A160805.P13158883287510212654

namespace A160805

/-- `(n+1)²+a(n-1)-2` -/
def P13158883287510212654.Spec : Prop :=
  ∀ n, P13158883287510212654.a n = A160805 n

end A160805

/-! ## A160805.P1545368662013237504

`a(n-1)+n*(n+2)-1` with `a(0)=4`
-/

namespace A160805.P1545368662013237504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + ((n * (n + 2) : ℤ) - 1)

end

end A160805.P1545368662013237504

namespace A160805

/-- `a(n-1)+n*(n+2)-1` -/
def P1545368662013237504.Spec : Prop :=
  ∀ n, P1545368662013237504.a n = A160805 n

end A160805

/-! ## A160805.P8186113630455073073

`A101986(n)+4`
-/

namespace A160805.P8186113630455073073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n + 4

end

end A160805.P8186113630455073073

namespace A160805

/-- `A101986(n)+4` -/
def P8186113630455073073.Spec : Prop :=
  ∀ n, P8186113630455073073.a n = A160805 n

end A160805

/-! ## A160805.P2482473175330854667

`A153058(n)+n²`
-/

namespace A160805.P2482473175330854667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 n + (n ^ 2 : ℤ)

end

end A160805.P2482473175330854667

namespace A160805

/-- `A153058(n)+n²` -/
def P2482473175330854667.Spec : Prop :=
  ∀ n, P2482473175330854667.a n = A160805 n

end A160805

/-! ## A160805.P15841771019174296444

`7-A058372(n+1)`
-/

namespace A160805.P15841771019174296444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A058372 (n + 1)

end

end A160805.P15841771019174296444

namespace A160805

/-- `7-A058372(n+1)` -/
def P15841771019174296444.Spec : Prop :=
  ∀ n, P15841771019174296444.a n = A160805 n

end A160805

/-! ## A160805.P1822277701231582271

`A047732(n)+3-n`
-/

namespace A160805.P1822277701231582271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047732 n + (3 - (n : ℤ))

end

end A160805.P1822277701231582271

namespace A160805

/-- `A047732(n)+3-n` -/
def P1822277701231582271.Spec : Prop :=
  ∀ n, P1822277701231582271.a n = A160805 n

end A160805

/-! ## A160805.P11969971915846784622

`A087475(n)+∑[n²]`
-/

namespace A160805.P11969971915846784622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A160805.P11969971915846784622

namespace A160805

/-- `A087475(n)+∑[n²]` -/
def P11969971915846784622.Spec : Prop :=
  ∀ n, P11969971915846784622.a n = A160805 n

end A160805

/-! ## A160805.P17893868889599426301

`∑[A008865(n+1)]+5`
-/

namespace A160805.P17893868889599426301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A160805.P17893868889599426301

namespace A160805

/-- `∑[A008865(n+1)]+5` -/
def P17893868889599426301.Spec : Prop :=
  ∀ n, P17893868889599426301.a n = A160805 n

end A160805

/-! ## A160805.P12602997842318314634

`A153058(n+1)-(n+1)-n`
-/

namespace A160805.P12602997842318314634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 (n + 1) - (n + 1 : ℤ) - (n : ℤ)

end

end A160805.P12602997842318314634

namespace A160805

/-- `A153058(n+1)-(n+1)-n` -/
def P12602997842318314634.Spec : Prop :=
  ∀ n, P12602997842318314634.a n = A160805 n

end A160805

/-! ## A160805.P492313918134046927

`∑[A005563(n)+2]+2-2*n-n`
-/

namespace A160805.P492313918134046927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 - (2 * n : ℤ) - (n : ℤ)

end

end A160805.P492313918134046927

namespace A160805

/-- `∑[A005563(n)+2]+2-2*n-n` -/
def P492313918134046927.Spec : Prop :=
  ∀ n, P492313918134046927.a n = A160805 n

end A160805

/-! ## A160805.P1841046316512209228

`A051925(n)+A027689(n)`
-/

namespace A160805.P1841046316512209228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 n + A027689 n

end

end A160805.P1841046316512209228

namespace A160805

/-- `A051925(n)+A027689(n)` -/
def P1841046316512209228.Spec : Prop :=
  ∀ n, P1841046316512209228.a n = A160805 n

end A160805

/-! ## A160805.P14567663705645073761

`A153057(n)+A002522(n)`
-/

namespace A160805.P14567663705645073761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153057 n + A002522 n

end

end A160805.P14567663705645073761

namespace A160805

/-- `A153057(n)+A002522(n)` -/
def P14567663705645073761.Spec : Prop :=
  ∀ n, P14567663705645073761.a n = A160805 n

end A160805

/-! ## A160805.P16705332360393360803

`A117950(n)+A056520(n)`
-/

namespace A160805.P16705332360393360803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117950 n + A056520 n

end

end A160805.P16705332360393360803

namespace A160805

/-- `A117950(n)+A056520(n)` -/
def P16705332360393360803.Spec : Prop :=
  ∀ n, P16705332360393360803.a n = A160805 n

end A160805

/-! ## A160805.P15656215764778519718

`A153056(n)+A059100(n)`
-/

namespace A160805.P15656215764778519718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153056 n + A059100 n

end

end A160805.P15656215764778519718

namespace A160805

/-- `A153056(n)+A059100(n)` -/
def P15656215764778519718.Spec : Prop :=
  ∀ n, P15656215764778519718.a n = A160805 n

end A160805

/-! ## A160805.P15672669794066100246

`A152949(n+1)+A064999(n)`
-/

namespace A160805.P15672669794066100246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152949 (n + 1) + A064999 n

end

end A160805.P15672669794066100246

namespace A160805

/-- `A152949(n+1)+A064999(n)` -/
def P15672669794066100246.Spec : Prop :=
  ∀ n, P15672669794066100246.a n = A160805 n

end A160805

/-! ## A160805.P2551624887571252131

`A145018(n+1)+A084990(n)`
-/

namespace A160805.P2551624887571252131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145018 (n + 1) + A084990 n

end

end A160805.P2551624887571252131

namespace A160805

/-- `A145018(n+1)+A084990(n)` -/
def P2551624887571252131.Spec : Prop :=
  ∀ n, P2551624887571252131.a n = A160805 n

end A160805

/-! ## A160805.P9918895181236971687

`A270809(n)+A115067(n+1)`
-/

namespace A160805.P9918895181236971687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270809 n + A115067 (n + 1)

end

end A160805.P9918895181236971687

namespace A160805

/-- `A270809(n)+A115067(n+1)` -/
def P9918895181236971687.Spec : Prop :=
  ∀ n, P9918895181236971687.a n = A160805 n

end A160805

/-!
# A160806: Expansion of q^(-1/3) * (eta(q) * eta(q^7) + eta(q^4) * eta(q^28)) in powers of q^2.

The programs for A160806, there is no canonical definition to state claims against.
-/

/-! ## A160806.P3474304385650138380

`A002655(2*n)`
-/

namespace A160806.P3474304385650138380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002655 (2 * n)

end

end A160806.P3474304385650138380

/-! ## A160806.P1798425889480365436

`A030201(6*n+1)`
-/

namespace A160806.P1798425889480365436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (6 * n + 1)

end

end A160806.P1798425889480365436

/-! ## A160806.P4235272700345704348

`A002655(n+n)%5`
-/

namespace A160806.P4235272700345704348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002655 (n + n)) 5

end

end A160806.P4235272700345704348

/-! ## A160806.P15280501400533865398

`A257685(Δ[A005563(n)])+A002655(n+n)`
-/

namespace A160806.P15280501400533865398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257685 (f1 (n + 1) - f1 n).toNat + A002655 (n + n)

end

end A160806.P15280501400533865398

/-! ## A160806.P16590439205692594369

`A257685(A257688(n+1))+A002655(n+n)`
-/

namespace A160806.P16590439205692594369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257685 (A257688 (n + 1)).toNat + A002655 (n + n)

end

end A160806.P16590439205692594369

/-! ## A160806.P14081547649506342436

`A096904(Δ[A257688(n+1)])+A002655(n+n)`
-/

namespace A160806.P14081547649506342436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096904 (f1 (n + 1) - f1 n).toNat + A002655 (n + n)

end

end A160806.P14081547649506342436

/-! ## A160806.P8788380231199918469

`A002655(n+n)/A140996(∑[n])`
-/

namespace A160806.P8788380231199918469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002655 (n + n) : ℚ) / (A140996 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A160806.P8788380231199918469

/-!
# A160807: a(n) = A160799(n)/4.

The programs for A160807, the canonical program `A160807.P7920303016798829141` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160807 has offset 1).

The definition of A160807 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160799, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160807.P7920303016798829141

`A160799(n+1)/4`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A160807

/-- `A160799(n+1)/4` -/
def P7920303016798829141.Spec : Prop :=
  ∀ n, P7920303016798829141.a n = (A160807 (n + 1) : ℚ)

end A160807

/-! ## A160807.P10016103632553001317

`∑[A160412(n)/3]`
-/

namespace A160807.P10016103632553001317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160412 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160807.P10016103632553001317

namespace A160807

/-- `∑[A160412(n)/3]` -/
def P10016103632553001317.Spec : Prop :=
  ∀ n, P10016103632553001317.a n = (A160807 (n + 1) : ℚ)

end A160807

/-! ## A160807.P15023721216655621233

`∑[A160410(n)/4]`
-/

namespace A160807.P15023721216655621233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160410 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160807.P15023721216655621233

namespace A160807

/-- `∑[A160410(n)/4]` -/
def P15023721216655621233.Spec : Prop :=
  ∀ n, P15023721216655621233.a n = (A160807 (n + 1) : ℚ)

end A160807

/-! ## A160807.P4424937566951012598

`∑[A130665(n)]-A130665(n)`
-/

namespace A160807.P4424937566951012598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130665 n

end

end A160807.P4424937566951012598

namespace A160807

/-- `∑[A130665(n)]-A130665(n)` -/
def P4424937566951012598.Spec : Prop :=
  ∀ n, P4424937566951012598.a n = A160807 (n + 1)

end A160807

/-! ## A160807.P2249163921598911362

`∑[∑[A048883(n)]-A048883(n)]`
-/

namespace A160807.P2249163921598911362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160807.P2249163921598911362

namespace A160807

/-- `∑[∑[A048883(n)]-A048883(n)]` -/
def P2249163921598911362.Spec : Prop :=
  ∀ n, P2249163921598911362.a n = A160807 (n + 1)

end A160807

/-! ## A160807.P7046220590706206979

`∑[∑[A147610(2*(n+1))]-A147610(2*(n+1))]`
-/

namespace A160807.P7046220590706206979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147610 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A147610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160807.P7046220590706206979

namespace A160807

/-- `∑[∑[A147610(2*(n+1))]-A147610(2*(n+1))]` -/
def P7046220590706206979.Spec : Prop :=
  ∀ n, P7046220590706206979.a n = A160807 (n + 1)

end A160807

/-! ## A160807.P6981683843284981677

`(3*A272928(n)+n)/4`
-/

namespace A160807.P6981683843284981677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A272928 n + (n : ℤ) : ℚ) / 4

end

end A160807.P6981683843284981677

namespace A160807

/-- `(3*A272928(n)+n)/4` -/
def P6981683843284981677.Spec : Prop :=
  ∀ n, P6981683843284981677.a n = (A160807 (n + 1) : ℚ)

end A160807

/-! ## A160807.P9001211121504965549

`∑[record[A079317(n)-1]/4]`
-/

namespace A160807.P9001211121504965549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160807.P9001211121504965549

namespace A160807

/-- `∑[record[A079317(n)-1]/4]` -/
def P9001211121504965549.Spec : Prop :=
  ∀ n, P9001211121504965549.a n = (A160807 (n + 1) : ℚ)

end A160807

/-! ## A160807.P10181967451348843620

`∑[A160796(2*n)/8]`
-/

namespace A160807.P10181967451348843620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160796 (2 * n) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160807.P10181967451348843620

namespace A160807

/-- `∑[A160796(2*n)/8]` -/
def P10181967451348843620.Spec : Prop :=
  ∀ n, P10181967451348843620.a n = (A160807 (n + 1) : ℚ)

end A160807

/-! ## A160807.P10529869087046885612

`∑[∑[A160797(2*n+1)]-A160797(2*n+1)]`
-/

namespace A160807.P10529869087046885612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160797 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A160797 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160807.P10529869087046885612

namespace A160807

/-- `∑[∑[A160797(2*n+1)]-A160797(2*n+1)]` -/
def P10529869087046885612.Spec : Prop :=
  ∀ n, P10529869087046885612.a n = A160807 (n + 1)

end A160807

/-! ## A160807.P206106085402781966

`∑[A374800(∑[n])]`
-/

namespace A160807.P206106085402781966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374800 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160807.P206106085402781966

namespace A160807

/-- `∑[A374800(∑[n])]` -/
def P206106085402781966.Spec : Prop :=
  ∀ n, P206106085402781966.a n = A160807 (n + 1)

end A160807

/-! ## A160807.P15579541224539961399

`∑[A032766(A151917(n))]`
-/

namespace A160807.P15579541224539961399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A151917 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160807.P15579541224539961399

namespace A160807

/-- `∑[A032766(A151917(n))]` -/
def P15579541224539961399.Spec : Prop :=
  ∀ n, P15579541224539961399.a n = A160807 (n + 1)

end A160807

/-!
# A160808: Toothpick sequence in Fibonacci spiral (see Comments lines for definition).

The programs for A160808, there is no canonical definition to state claims against.
-/

/-! ## A160808.P16125564234814261972

`A160809(n)+a(n-1)` with `a(0)=0`
-/

namespace A160808.P16125564234814261972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160809 n + a (n - 1)

end

end A160808.P16125564234814261972

/-! ## A160808.P5413950432627962510

`∑[A160809(A028310(n))]-1`
-/

namespace A160808.P5413950432627962510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160809 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160808.P5413950432627962510

/-! ## A160808.P17889941458012984727

`∑[A160809(A000007(n)+n)]-1`
-/

namespace A160808.P17889941458012984727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160809 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160808.P17889941458012984727

/-! ## A160808.P2456137728760154149

`A160809(n)-(A000038(n)-a(n-1))` with `a(0)=0`
-/

namespace A160808.P2456137728760154149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160809 n - (A000038 n - a (n - 1))

end

end A160808.P2456137728760154149

/-! ## A160808.P15342387440668467830

`∑[A160809(n+1)]-A160809(n+1)`
-/

namespace A160808.P15342387440668467830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160809 (n + 1)

end

end A160808.P15342387440668467830

/-!
# A160809: First differences of A160808.

The programs for A160809, there is no canonical definition to state claims against.
-/

/-! ## A160809.P17341755404100185838

`Δ[A160808(n)]`
-/

namespace A160809.P17341755404100185838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160809.P17341755404100185838

/-! ## A160809.P6696788924405979805

`A160808(n+1)-A160808(n)`
-/

namespace A160809.P6696788924405979805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160808 (n + 1) - A160808 n

end

end A160809.P6696788924405979805

/-!
# A160810: Numbers k such that the number of partitions of k into prime divisors of k exceeds the number of distinct transpositions of prime factors of k.

The programs for A160810, there is no canonical definition to state claims against.
-/

/-! ## A160810.P14027902008903590118

`lt[3, A066882(n)]`
-/

namespace A160810.P14027902008903590118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A160810.P14027902008903590118

/-! ## A160810.P3324521184748358465

`lt[2, A014649(n+1)]+1`
-/

namespace A160810.P3324521184748358465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A160810.P3324521184748358465

/-! ## A160810.P12832932832352101156

`lt[3, A300831(n+1)]+1`
-/

namespace A160810.P12832932832352101156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A160810.P12832932832352101156

/-! ## A160810.P8631484690323253862

`lt[9, A078644(n+1)]+1`
-/

namespace A160810.P8631484690323253862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A160810.P8631484690323253862

/-! ## A160810.P6998325421500398846

`lt[A131233(n+2), n]+2`
-/

namespace A160810.P6998325421500398846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131233 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A160810.P6998325421500398846

/-! ## A160810.P7398780214844497639

`lt[2*n+3, A225244(n)]`
-/

namespace A160810.P7398780214844497639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A160810.P7398780214844497639

/-! ## A160810.P2085983013289455122

`lt[19, A000005(n*2*(n+2)+2)]+1`
-/

namespace A160810.P2085983013289455122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n * (2 * (n + 2)) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A160810.P2085983013289455122

/-! ## A160810.P1204214186504199762

`lt[round(4/(3*acot(2*n))), A205959(n+1)]+1`
-/

namespace A160810.P1204214186504199762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 / (3 * SequenceMachineLib.acot (2 * n : ℝ)))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A160810.P1204214186504199762

/-! ## A160810.P12273668995542183803

`lt[n, A013928(A092976(n))]`
-/

namespace A160810.P12273668995542183803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A092976 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A160810.P12273668995542183803

/-! ## A160810.P17040455409348520548

`lt[A257088(n), A092976(n)]`
-/

namespace A160810.P17040455409348520548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160810.P17040455409348520548

/-!
# A160811: Numbers not dividing 24.

The programs for A160811, there is no canonical definition to state claims against.
-/

/-! ## A160811.P17665539378844618350

`round(∑[9/∑[A207605(n+1)]]/2+n)`
-/

namespace A160811.P17665539378844618350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207605 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) / 2 + (n : ℚ))

end

end A160811.P17665539378844618350

/-!
# A160812: a(n) = A161205(n)-A000005(n).

The programs for A160812, the canonical program `A160812.P12792635546813163810` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160812 has offset 1).

The definition of A160812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160812.P1904626127071858489

`2*A236627(n+1)`
-/

namespace A160812.P1904626127071858489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236627 (n + 1)

end

end A160812.P1904626127071858489

namespace A160812

/-- `2*A236627(n+1)` -/
def P1904626127071858489.Spec : Prop :=
  ∀ n, P1904626127071858489.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P12792635546813163810

`A161205(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160812

/-- `A161205(n+1)-A000005(n+1)` -/
def P12792635546813163810.Spec : Prop :=
  ∀ n, P12792635546813163810.a n = A160812 (n + 1)

theorem P12792635546813163810.correct : P12792635546813163810.Spec := by
  intro n
  simp only [A160812, Nat.add_sub_cancel]

end A160812

/-! ## A160812.P10280218914041402378

`2*(A000196(n+1)-A038548(n+1))`
-/

namespace A160812.P10280218914041402378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000196 (n + 1) - A038548 (n + 1))

end

end A160812.P10280218914041402378

namespace A160812

/-- `2*(A000196(n+1)-A038548(n+1))` -/
def P10280218914041402378.Spec : Prop :=
  ∀ n, P10280218914041402378.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P15539970142422103008

`∑[char[∑[n*and(1, n)+1]]]+1-∏{e}[n+1, #+1]`
-/

namespace A160812.P15539970142422103008
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1) : ℕ) : ℤ)

end

end A160812.P15539970142422103008

namespace A160812

/-- `∑[char[∑[n*and(1, n)+1]]]+1-∏{e}[n+1, #+1]` -/
def P15539970142422103008.Spec : Prop :=
  ∀ n, P15539970142422103008.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P16997939370756699360

`comp[n*(n+3)]-(∏{e}[n+1, #+1]+n-floor(sqrt(n)))`
-/

namespace A160812.P16997939370756699360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) + ((n : ℤ) - (Nat.sqrt n : ℤ)))

end

end A160812.P16997939370756699360

namespace A160812

/-- `comp[n*(n+3)]-(∏{e}[n+1, #+1]+n-floor(sqrt(n)))` -/
def P16997939370756699360.Spec : Prop :=
  ∀ n, P16997939370756699360.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P4734818402384799781

`comp[∪[n², n²-2]]-n-2-2^∑{e}[n+1, log2(#+1)]`
-/

namespace A160812.P4734818402384799781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - 2 : ℝ) - (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f4 n), Real.logb 2 (Nat.factorization (f4 n) p + 1 : ℝ))

end

end A160812.P4734818402384799781

namespace A160812

/-- `comp[∪[n², n²-2]]-n-2-2^∑{e}[n+1, log2(#+1)]` -/
def P4734818402384799781.Spec : Prop :=
  ∀ n, P4734818402384799781.a n = (A160812 (n + 1) : ℝ)

end A160812

/-! ## A160812.P12684277981168298228

`2*n+1-∪[2*n+1, ∑[4*n]]-∏{e}[n+1, #+1]`
-/

namespace A160812.P12684277981168298228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) - ((∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1) : ℕ) : ℤ)

end

end A160812.P12684277981168298228

namespace A160812

/-- `2*n+1-∪[2*n+1, ∑[4*n]]-∏{e}[n+1, #+1]` -/
def P12684277981168298228.Spec : Prop :=
  ∀ n, P12684277981168298228.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P2488898068160019892

`∑[char[∑[(n+1)^and(1, n)]]]+1-∑{d}[n+1, lcm(#, n+1)]/(n+1)`
-/

namespace A160812.P2488898068160019892
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) - ((∑ d ∈ Nat.divisors (f4 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A160812.P2488898068160019892

namespace A160812

/-- `∑[char[∑[(n+1)^and(1, n)]]]+1-∑{d}[n+1, lcm(#, n+1)]/(n+1)` -/
def P2488898068160019892.Spec : Prop :=
  ∀ n, P2488898068160019892.a n = (A160812 (n + 1) : ℚ)

end A160812

/-! ## A160812.P13893810653269044561

`or(1, A046522(n+1))-1`
-/

namespace A160812.P13893810653269044561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046522 (n + 1)) - 1

end

end A160812.P13893810653269044561

namespace A160812

/-- `or(1, A046522(n+1))-1` -/
def P13893810653269044561.Spec : Prop :=
  ∀ n, P13893810653269044561.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P14750511697283834714

`A052928(A046522(n+1))`
-/

namespace A160812.P14750511697283834714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A046522 (n + 1)).toNat

end

end A160812.P14750511697283834714

namespace A160812

/-- `A052928(A046522(n+1))` -/
def P14750511697283834714.Spec : Prop :=
  ∀ n, P14750511697283834714.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P13541780772795638417

`A004524(2*A046522(n+1))`
-/

namespace A160812.P13541780772795638417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * A046522 (n + 1)).toNat

end

end A160812.P13541780772795638417

namespace A160812

/-- `A004524(2*A046522(n+1))` -/
def P13541780772795638417.Spec : Prop :=
  ∀ n, P13541780772795638417.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P14778312347562610873

`2*(A000196(n)-A056924(n+1))`
-/

namespace A160812.P14778312347562610873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000196 n - A056924 (n + 1))

end

end A160812.P14778312347562610873

namespace A160812

/-- `2*(A000196(n)-A056924(n+1))` -/
def P14778312347562610873.Spec : Prop :=
  ∀ n, P14778312347562610873.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P7780219776336726228

`2*(A338236(n+1)-A262202(n+1))`
-/

namespace A160812.P7780219776336726228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A338236 (n + 1) - A262202 (n + 1))

end

end A160812.P7780219776336726228

namespace A160812

/-- `2*(A338236(n+1)-A262202(n+1))` -/
def P7780219776336726228.Spec : Prop :=
  ∀ n, P7780219776336726228.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P1923124709656070134

`floor(∑[A000005(n+1)%2]+sqrt(n))-(∑{d}[n+1, 1-A000010(#)]+n+1)`
-/

namespace A160812.P1923124709656070134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + Real.sqrt (n : ℝ)⌋ - (∑ d ∈ Nat.divisors (f2 n), (1 - A000010 d) + (n + 1 : ℤ))

end

end A160812.P1923124709656070134

namespace A160812

/-- `floor(∑[A000005(n+1)%2]+sqrt(n))-(∑{d}[n+1, 1-A000010(#)]+n+1)` -/
def P1923124709656070134.Spec : Prop :=
  ∀ n, P1923124709656070134.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P5674537752540754586

`A236627(n+1)+A000196(A236627(n+1)²)`
-/

namespace A160812.P5674537752540754586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236627 (n + 1) + A000196 (A236627 (n + 1) ^ 2).toNat

end

end A160812.P5674537752540754586

namespace A160812

/-- `A236627(n+1)+A000196(A236627(n+1)²)` -/
def P5674537752540754586.Spec : Prop :=
  ∀ n, P5674537752540754586.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P16568386361026122895

`A000196(n+1)+A000196(n)-A000005(n+1)`
-/

namespace A160812.P16568386361026122895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) + (A000196 n - A000005 (n + 1))

end

end A160812.P16568386361026122895

namespace A160812

/-- `A000196(n+1)+A000196(n)-A000005(n+1)` -/
def P16568386361026122895.Spec : Prop :=
  ∀ n, P16568386361026122895.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P5429788649280574488

`A000196(n+1)+A000196(n+1)-A161841(n+1)`
-/

namespace A160812.P5429788649280574488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) + (A000196 (n + 1) - A161841 (n + 1))

end

end A160812.P5429788649280574488

namespace A160812

/-- `A000196(n+1)+A000196(n+1)-A161841(n+1)` -/
def P5429788649280574488.Spec : Prop :=
  ∀ n, P5429788649280574488.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P2047298376729979476

`A000196(n+1)+A236627(n+1)-A038548(n+1)`
-/

namespace A160812.P2047298376729979476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) + (A236627 (n + 1) - A038548 (n + 1))

end

end A160812.P2047298376729979476

namespace A160812

/-- `A000196(n+1)+A236627(n+1)-A038548(n+1)` -/
def P2047298376729979476.Spec : Prop :=
  ∀ n, P2047298376729979476.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P10219296257536392413

`and(A046522(n+1), A224077(n+1))`
-/

namespace A160812.P10219296257536392413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046522 (n + 1)) (A224077 (n + 1))

end

end A160812.P10219296257536392413

namespace A160812

/-- `and(A046522(n+1), A224077(n+1))` -/
def P10219296257536392413.Spec : Prop :=
  ∀ n, P10219296257536392413.a n = A160812 (n + 1)

end A160812

/-! ## A160812.P12899981480915055640

`and(A046522(n+1), A056453(n+1))`
-/

namespace A160812.P12899981480915055640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046522 (n + 1)) (A056453 (n + 1))

end

end A160812.P12899981480915055640

namespace A160812

/-- `and(A046522(n+1), A056453(n+1))` -/
def P12899981480915055640.Spec : Prop :=
  ∀ n, P12899981480915055640.a n = A160812 (n + 1)

end A160812

/-!
# A160813: a(n) = n-th squarefree number plus n-th cubefree number.

The programs for A160813, the canonical program `A160813.P14776211626939802739` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160813 has offset 1).

The definition of A160813 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160813.P14776211626939802739

`A005117(n+1)+A004709(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A160813

/-- `A005117(n+1)+A004709(n+1)` -/
def P14776211626939802739.Spec : Prop :=
  ∀ n, P14776211626939802739.a n = A160813 (n + 1)

theorem P14776211626939802739.correct : P14776211626939802739.Spec := by
  intro n
  simp only [A160813, Nat.add_sub_cancel]

end A160813

/-! ## A160813.P17632898186266702404

`A004709(n+1)+comp[A105570(n)]`
-/

namespace A160813.P17632898186266702404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A160813.P17632898186266702404

namespace A160813

/-- `A004709(n+1)+comp[A105570(n)]` -/
def P17632898186266702404.Spec : Prop :=
  ∀ n, P17632898186266702404.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P11761119439551457183

`A004709(n+1)+record[A003967(n+1)]`
-/

namespace A160813.P11761119439551457183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160813.P11761119439551457183

namespace A160813

/-- `A004709(n+1)+record[A003967(n+1)]` -/
def P11761119439551457183.Spec : Prop :=
  ∀ n, P11761119439551457183.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P11506422155316522129

`A004709(n+1)+record[A007913(n+1)]`
-/

namespace A160813.P11506422155316522129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160813.P11506422155316522129

namespace A160813

/-- `A004709(n+1)+record[A007913(n+1)]` -/
def P11506422155316522129.Spec : Prop :=
  ∀ n, P11506422155316522129.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P9188817921765498007

`A004709(n+1)+record[A007947(n+1)]`
-/

namespace A160813.P9188817921765498007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160813.P9188817921765498007

namespace A160813

/-- `A004709(n+1)+record[A007947(n+1)]` -/
def P9188817921765498007.Spec : Prop :=
  ∀ n, P9188817921765498007.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P14328461412824528971

`A005117(n+1)+eq[1, A113061(n+1)]+1`
-/

namespace A160813.P14328461412824528971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A160813.P14328461412824528971

namespace A160813

/-- `A005117(n+1)+eq[1, A113061(n+1)]+1` -/
def P14328461412824528971.Spec : Prop :=
  ∀ n, P14328461412824528971.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P2873688700144297650

`record[A007913(n+1)]+eq[1, A113061(n+1)]+1`
-/

namespace A160813.P2873688700144297650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ)

end

end A160813.P2873688700144297650

namespace A160813

/-- `record[A007913(n+1)]+eq[1, A113061(n+1)]+1` -/
def P2873688700144297650.Spec : Prop :=
  ∀ n, P2873688700144297650.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P7355981875404244511

`record[A007947(n+1)]+eq[1, A113061(n+1)]+1`
-/

namespace A160813.P7355981875404244511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ)

end

end A160813.P7355981875404244511

namespace A160813

/-- `record[A007947(n+1)]+eq[1, A113061(n+1)]+1` -/
def P7355981875404244511.Spec : Prop :=
  ∀ n, P7355981875404244511.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P3767557585932890296

`record[A007913(n+1)]+eq[1, A212793(n+1)]+1`
-/

namespace A160813.P3767557585932890296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ)

end

end A160813.P3767557585932890296

namespace A160813

/-- `record[A007913(n+1)]+eq[1, A212793(n+1)]+1` -/
def P3767557585932890296.Spec : Prop :=
  ∀ n, P3767557585932890296.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P16194509980737656118

`record[A007947(n+1)]+eq[1, A212793(n+1)]+1`
-/

namespace A160813.P16194509980737656118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ)

end

end A160813.P16194509980737656118

namespace A160813

/-- `record[A007947(n+1)]+eq[1, A212793(n+1)]+1` -/
def P16194509980737656118.Spec : Prop :=
  ∀ n, P16194509980737656118.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P2194356011568109768

`record[A007947(n+1)]+eq[1, A295657(n+1)]+1`
-/

namespace A160813.P2194356011568109768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ)

end

end A160813.P2194356011568109768

namespace A160813

/-- `record[A007947(n+1)]+eq[1, A295657(n+1)]+1` -/
def P2194356011568109768.Spec : Prop :=
  ∀ n, P2194356011568109768.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P9500081250966488018

`A004709(n+1)+A161203(n+1)-(n+1)²`
-/

namespace A160813.P9500081250966488018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) + (A161203 (n + 1) - ((n + 1) ^ 2 : ℤ))

end

end A160813.P9500081250966488018

namespace A160813

/-- `A004709(n+1)+A161203(n+1)-(n+1)²` -/
def P9500081250966488018.Spec : Prop :=
  ∀ n, P9500081250966488018.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P6831570751420705095

`A005117(n+1)+A180499(n+1)-A000578(n+1)`
-/

namespace A160813.P6831570751420705095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + (A180499 (n + 1) - A000578 (n + 1))

end

end A160813.P6831570751420705095

namespace A160813

/-- `A005117(n+1)+A180499(n+1)-A000578(n+1)` -/
def P6831570751420705095.Spec : Prop :=
  ∀ n, P6831570751420705095.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P16908615305734208113

`A005117(n+1)+A382888(n+1)*A382890(n+1)`
-/

namespace A160813.P16908615305734208113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + A382888 (n + 1) * A382890 (n + 1)

end

end A160813.P16908615305734208113

namespace A160813

/-- `A005117(n+1)+A382888(n+1)*A382890(n+1)` -/
def P16908615305734208113.Spec : Prop :=
  ∀ n, P16908615305734208113.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P14381178944454591448

`A005117(n+1)+A382889(n+1)*A382891(n+1)`
-/

namespace A160813.P14381178944454591448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + A382889 (n + 1) * A382891 (n + 1)

end

end A160813.P14381178944454591448

namespace A160813

/-- `A005117(n+1)+A382889(n+1)*A382891(n+1)` -/
def P14381178944454591448.Spec : Prop :=
  ∀ n, P14381178944454591448.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P239099452634384939

`A004709(n+1)+A073245(n+1)/A062822(n+1)`
-/

namespace A160813.P239099452634384939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004709 (n + 1) : ℚ) + (A073245 (n + 1) : ℚ) / (A062822 (n + 1) : ℚ)

end

end A160813.P239099452634384939

namespace A160813

/-- `A004709(n+1)+A073245(n+1)/A062822(n+1)` -/
def P239099452634384939.Spec : Prop :=
  ∀ n, P239099452634384939.a n = (A160813 (n + 1) : ℚ)

end A160813

/-! ## A160813.P10361626573215292197

`record[A007913(n+1)]+record[A050985(n+1)]`
-/

namespace A160813.P10361626573215292197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A160813.P10361626573215292197

namespace A160813

/-- `record[A007913(n+1)]+record[A050985(n+1)]` -/
def P10361626573215292197.Spec : Prop :=
  ∀ n, P10361626573215292197.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P7811177553854069934

`A004709(n+1)+A004709(A371188(n+1))`
-/

namespace A160813.P7811177553854069934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) + A004709 (A371188 (n + 1)).toNat

end

end A160813.P7811177553854069934

namespace A160813

/-- `A004709(n+1)+A004709(A371188(n+1))` -/
def P7811177553854069934.Spec : Prop :=
  ∀ n, P7811177553854069934.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P5376802485937326543

`record[A007948(n+1)]+record[A019554(n+1)]`
-/

namespace A160813.P5376802485937326543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A160813.P5376802485937326543

namespace A160813

/-- `record[A007948(n+1)]+record[A019554(n+1)]` -/
def P5376802485937326543.Spec : Prop :=
  ∀ n, P5376802485937326543.a n = A160813 (n + 1)

end A160813

/-! ## A160813.P5665996615303753626

`record[A007948(n+1)]+record[A084371(n+1)]`
-/

namespace A160813.P5665996615303753626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A160813.P5665996615303753626

namespace A160813

/-- `record[A007948(n+1)]+record[A084371(n+1)]` -/
def P5665996615303753626.Spec : Prop :=
  ∀ n, P5665996615303753626.a n = A160813 (n + 1)

end A160813

/-!
# A160815: Expansion of (1+62*x+562*x^2+1023*x^3+458*x^4+49*x^5+x^6)/(1-x)^7.

The programs for A160815, the canonical program `A160815.P12678141719750607569` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160815 has offset 0).

The definition of A160815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160815.P5910759181882441337

`2*A160816(n)-A160817(n)`
-/

namespace A160815.P5910759181882441337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160816 n - A160817 n

end

end A160815.P5910759181882441337

namespace A160815

/-- `2*A160816(n)-A160817(n)` -/
def P5910759181882441337.Spec : Prop :=
  ∀ n, P5910759181882441337.a n = A160815 n

end A160815

/-! ## A160815.P15652481734723325930

`A160816(n)-∑[A161680(n)]²`
-/

namespace A160815.P15652481734723325930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160816 n - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A160815.P15652481734723325930

namespace A160815

/-- `A160816(n)-∑[A161680(n)]²` -/
def P15652481734723325930.Spec : Prop :=
  ∀ n, P15652481734723325930.a n = A160815 n

end A160815

/-! ## A160815.P16693565703744474461

`A160836(n)-A179058(n+1)/2`
-/

namespace A160815.P16693565703744474461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160836 n : ℚ) - (A179058 (n + 1) : ℚ) / 2

end

end A160815.P16693565703744474461

namespace A160815

/-- `A160836(n)-A179058(n+1)/2` -/
def P16693565703744474461.Spec : Prop :=
  ∀ n, P16693565703744474461.a n = (A160815 n : ℚ)

end A160815

/-! ## A160815.P8553124214625459673

`A160817(n)-A179058(n+1)/3`
-/

namespace A160815.P8553124214625459673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160817 n : ℚ) - (A179058 (n + 1) : ℚ) / 3

end

end A160815.P8553124214625459673

namespace A160815

/-- `A160817(n)-A179058(n+1)/3` -/
def P8553124214625459673.Spec : Prop :=
  ∀ n, P8553124214625459673.a n = (A160815 n : ℚ)

end A160815

/-! ## A160815.P1494989184053553670

`A160816(n)-A179058(n+1)/6`
-/

namespace A160815.P1494989184053553670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160816 n : ℚ) - (A179058 (n + 1) : ℚ) / 6

end

end A160815.P1494989184053553670

namespace A160815

/-- `A160816(n)-A179058(n+1)/6` -/
def P1494989184053553670.Spec : Prop :=
  ∀ n, P1494989184053553670.a n = (A160815 n : ℚ)

end A160815

/-! ## A160815.P12678141719750607569

`A160788(n)+A160836(n)-A160817(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A160815

/-- `A160788(n)+A160836(n)-A160817(n)` -/
def P12678141719750607569.Spec : Prop :=
  ∀ n, P12678141719750607569.a n = A160815 n

theorem P12678141719750607569.correct : P12678141719750607569.Spec := by
  intro n
  simp only [A160815]

end A160815

/-! ## A160815.P3634068040905530172

`A160788(n)+A160831(n)-A160833(n)`
-/

namespace A160815.P3634068040905530172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160788 n + (A160831 n - A160833 n)

end

end A160815.P3634068040905530172

namespace A160815

/-- `A160788(n)+A160831(n)-A160833(n)` -/
def P3634068040905530172.Spec : Prop :=
  ∀ n, P3634068040905530172.a n = A160815 n

end A160815

/-! ## A160815.P16396211059745695331

`A160816(n)+A160833(n)-A160831(n)`
-/

namespace A160815.P16396211059745695331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160816 n + (A160833 n - A160831 n)

end

end A160815.P16396211059745695331

namespace A160815

/-- `A160816(n)+A160833(n)-A160831(n)` -/
def P16396211059745695331.Spec : Prop :=
  ∀ n, P16396211059745695331.a n = A160815 n

end A160815

/-! ## A160815.P15371583354103610314

`A160817(n)+A160834(n)-A160833(n)`
-/

namespace A160815.P15371583354103610314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160817 n + (A160834 n - A160833 n)

end

end A160815.P15371583354103610314

namespace A160815

/-- `A160817(n)+A160834(n)-A160833(n)` -/
def P15371583354103610314.Spec : Prop :=
  ∀ n, P15371583354103610314.a n = A160815 n

end A160815

/-! ## A160815.P2709238864458023991

`A160817(n)+A160836(n)-A160834(n)`
-/

namespace A160815.P2709238864458023991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160817 n + (A160836 n - A160834 n)

end

end A160815.P2709238864458023991

namespace A160815

/-- `A160817(n)+A160836(n)-A160834(n)` -/
def P2709238864458023991.Spec : Prop :=
  ∀ n, P2709238864458023991.a n = A160815 n

end A160815

/-! ## A160815.P18128971440030945143

`A160834(n)+A160836(n)-A160831(n)`
-/

namespace A160815.P18128971440030945143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160834 n + (A160836 n - A160831 n)

end

end A160815.P18128971440030945143

namespace A160815

/-- `A160834(n)+A160836(n)-A160831(n)` -/
def P18128971440030945143.Spec : Prop :=
  ∀ n, P18128971440030945143.a n = A160815 n

end A160815

/-!
# A160816: Expansion of (1+62*x+563*x^2+1032*x^3+467*x^4+50*x^5+x^6)/(1-x)^7.

The programs for A160816, the canonical program `A160816.P12891272167244012469` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160816 has offset 0).

The definition of A160816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160816.P12891272167244012469

`A160834(n)-A169801(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160816

/-- `A160834(n)-A169801(n)` -/
def P12891272167244012469.Spec : Prop :=
  ∀ n, P12891272167244012469.a n = A160816 n

theorem P12891272167244012469.correct : P12891272167244012469.Spec := by
  intro n
  simp only [A160816]

end A160816

/-! ## A160816.P6818567014458964496

`A160833(n)-A179058(n+1)`
-/

namespace A160816.P6818567014458964496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160833 n - A179058 (n + 1)

end

end A160816.P6818567014458964496

namespace A160816

/-- `A160833(n)-A179058(n+1)` -/
def P6818567014458964496.Spec : Prop :=
  ∀ n, P6818567014458964496.a n = A160816 n

end A160816

/-! ## A160816.P17449539536907510877

`2*A160815(n)-A160788(n)`
-/

namespace A160816.P17449539536907510877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160815 n - A160788 n

end

end A160816.P17449539536907510877

namespace A160816

/-- `2*A160815(n)-A160788(n)` -/
def P17449539536907510877.Spec : Prop :=
  ∀ n, P17449539536907510877.a n = A160816 n

end A160816

/-! ## A160816.P17729726250093758590

`(A160836(n)+A160788(n))/2`
-/

namespace A160816.P17729726250093758590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160836 n + A160788 n : ℚ) / 2

end

end A160816.P17729726250093758590

namespace A160816

/-- `(A160836(n)+A160788(n))/2` -/
def P17729726250093758590.Spec : Prop :=
  ∀ n, P17729726250093758590.a n = (A160816 n : ℚ)

end A160816

/-! ## A160816.P12323631808773637823

`(A160817(n)+A160815(n))/2`
-/

namespace A160816.P12323631808773637823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160817 n + A160815 n : ℚ) / 2

end

end A160816.P12323631808773637823

namespace A160816

/-- `(A160817(n)+A160815(n))/2` -/
def P12323631808773637823.Spec : Prop :=
  ∀ n, P12323631808773637823.a n = (A160816 n : ℚ)

end A160816

/-! ## A160816.P12674221264240598543

`2*A160817(n)-A160836(n)`
-/

namespace A160816.P12674221264240598543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160817 n - A160836 n

end

end A160816.P12674221264240598543

namespace A160816

/-- `2*A160817(n)-A160836(n)` -/
def P12674221264240598543.Spec : Prop :=
  ∀ n, P12674221264240598543.a n = A160816 n

end A160816

/-! ## A160816.P1710191622746211015

`2*A160836(n)-A160834(n)`
-/

namespace A160816.P1710191622746211015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160836 n - A160834 n

end

end A160816.P1710191622746211015

namespace A160816

/-- `2*A160836(n)-A160834(n)` -/
def P1710191622746211015.Spec : Prop :=
  ∀ n, P1710191622746211015.a n = A160816 n

end A160816

/-! ## A160816.P16579681191244260048

`A160788(n)+A169801(n)/2`
-/

namespace A160816.P16579681191244260048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160788 n : ℚ) + (A169801 n : ℚ) / 2

end

end A160816.P16579681191244260048

namespace A160816

/-- `A160788(n)+A169801(n)/2` -/
def P16579681191244260048.Spec : Prop :=
  ∀ n, P16579681191244260048.a n = (A160816 n : ℚ)

end A160816

/-! ## A160816.P3028918515117353851

`A160836(n)-A169801(n)/2`
-/

namespace A160816.P3028918515117353851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160836 n : ℚ) - (A169801 n : ℚ) / 2

end

end A160816.P3028918515117353851

namespace A160816

/-- `A160836(n)-A169801(n)/2` -/
def P3028918515117353851.Spec : Prop :=
  ∀ n, P3028918515117353851.a n = (A160816 n : ℚ)

end A160816

/-! ## A160816.P17460172978220271385

`A160817(n)-∑[A161680(n)]²`
-/

namespace A160816.P17460172978220271385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160817 n - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A160816.P17460172978220271385

namespace A160816

/-- `A160817(n)-∑[A161680(n)]²` -/
def P17460172978220271385.Spec : Prop :=
  ∀ n, P17460172978220271385.a n = A160816 n

end A160816

/-! ## A160816.P127083239073509545

`A160788(n)+A179058(n+1)/3`
-/

namespace A160816.P127083239073509545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160788 n : ℚ) + (A179058 (n + 1) : ℚ) / 3

end

end A160816.P127083239073509545

namespace A160816

/-- `A160788(n)+A179058(n+1)/3` -/
def P127083239073509545.Spec : Prop :=
  ∀ n, P127083239073509545.a n = (A160816 n : ℚ)

end A160816

/-! ## A160816.P1420474192472220410

`A160836(n)-A179058(n+1)/3`
-/

namespace A160816.P1420474192472220410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160836 n : ℚ) - (A179058 (n + 1) : ℚ) / 3

end

end A160816.P1420474192472220410

namespace A160816

/-- `A160836(n)-A179058(n+1)/3` -/
def P1420474192472220410.Spec : Prop :=
  ∀ n, P1420474192472220410.a n = (A160816 n : ℚ)

end A160816

/-! ## A160816.P7048206499523026758

`A160788(n)+A160833(n)-A160834(n)`
-/

namespace A160816.P7048206499523026758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160788 n + (A160833 n - A160834 n)

end

end A160816.P7048206499523026758

namespace A160816

/-- `A160788(n)+A160833(n)-A160834(n)` -/
def P7048206499523026758.Spec : Prop :=
  ∀ n, P7048206499523026758.a n = A160816 n

end A160816

/-! ## A160816.P7872406162117984080

`A160788(n)+A160834(n)-A160836(n)`
-/

namespace A160816.P7872406162117984080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160788 n + (A160834 n - A160836 n)

end

end A160816.P7872406162117984080

namespace A160816

/-- `A160788(n)+A160834(n)-A160836(n)` -/
def P7872406162117984080.Spec : Prop :=
  ∀ n, P7872406162117984080.a n = A160816 n

end A160816

/-! ## A160816.P11021199711906823555

`A160817(n)+A160833(n)-A160831(n)`
-/

namespace A160816.P11021199711906823555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160817 n + (A160833 n - A160831 n)

end

end A160816.P11021199711906823555

namespace A160816

/-- `A160817(n)+A160833(n)-A160831(n)` -/
def P11021199711906823555.Spec : Prop :=
  ∀ n, P11021199711906823555.a n = A160816 n

end A160816

/-! ## A160816.P17236576004488493078

`A160833(n)-A008911(n)*A132411(n)`
-/

namespace A160816.P17236576004488493078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160833 n - A008911 n * A132411 n

end

end A160816.P17236576004488493078

namespace A160816

/-- `A160833(n)-A008911(n)*A132411(n)` -/
def P17236576004488493078.Spec : Prop :=
  ∀ n, P17236576004488493078.a n = A160816 n

end A160816

/-! ## A160816.P13662304188017295713

`A160833(n)-A008911(n)*A106230(n+1)`
-/

namespace A160816.P13662304188017295713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160833 n - A008911 n * A106230 (n + 1)

end

end A160816.P13662304188017295713

namespace A160816

/-- `A160833(n)-A008911(n)*A106230(n+1)` -/
def P13662304188017295713.Spec : Prop :=
  ∀ n, P13662304188017295713.a n = A160816 n

end A160816

/-! ## A160816.P18214129027579870937

`A160833(n)-A161680(n)*A288961(n+1)`
-/

namespace A160816.P18214129027579870937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160833 n - A161680 n * A288961 (n + 1)

end

end A160816.P18214129027579870937

namespace A160816

/-- `A160833(n)-A161680(n)*A288961(n+1)` -/
def P18214129027579870937.Spec : Prop :=
  ∀ n, P18214129027579870937.a n = A160816 n

end A160816

/-! ## A160816.P18410970515333984455

`A160833(n)-lcm(A002415(n), A303212(n+1))`
-/

namespace A160816.P18410970515333984455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160833 n - (Int.lcm (A002415 n) (A303212 (n + 1)) : ℤ)

end

end A160816.P18410970515333984455

namespace A160816

/-- `A160833(n)-lcm(A002415(n), A303212(n+1))` -/
def P18410970515333984455.Spec : Prop :=
  ∀ n, P18410970515333984455.a n = A160816 n

end A160816

/-!
# A160817: Expansion of (1+62*x+564*x^2+1041*x^3+476*x^4+51*x^5+x^6)/(1-x)^7.

The programs for A160817, the canonical program `A160817.P13598031876587468841` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160817 has offset 0).

The definition of A160817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160817.P4676384597690621638

`A160831(n)-A179058(n+1)`
-/

namespace A160817.P4676384597690621638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160831 n - A179058 (n + 1)

end

end A160817.P4676384597690621638

namespace A160817

/-- `A160831(n)-A179058(n+1)` -/
def P4676384597690621638.Spec : Prop :=
  ∀ n, P4676384597690621638.a n = A160817 n

end A160817

/-! ## A160817.P9943952212835638037

`(A160834(n)+A160788(n))/2`
-/

namespace A160817.P9943952212835638037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160834 n + A160788 n : ℚ) / 2

end

end A160817.P9943952212835638037

namespace A160817

/-- `(A160834(n)+A160788(n))/2` -/
def P9943952212835638037.Spec : Prop :=
  ∀ n, P9943952212835638037.a n = (A160817 n : ℚ)

end A160817

/-! ## A160817.P7929482556614632558

`2*A160816(n)-A160815(n)`
-/

namespace A160817.P7929482556614632558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160816 n - A160815 n

end

end A160817.P7929482556614632558

namespace A160817

/-- `2*A160816(n)-A160815(n)` -/
def P7929482556614632558.Spec : Prop :=
  ∀ n, P7929482556614632558.a n = A160817 n

end A160817

/-! ## A160817.P1950687581564558991

`(A160836(n)+A160816(n))/2`
-/

namespace A160817.P1950687581564558991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160836 n + A160816 n : ℚ) / 2

end

end A160817.P1950687581564558991

namespace A160817

/-- `(A160836(n)+A160816(n))/2` -/
def P1950687581564558991.Spec : Prop :=
  ∀ n, P1950687581564558991.a n = (A160817 n : ℚ)

end A160817

/-! ## A160817.P3297778030831692990

`2*A160834(n)-A160831(n)`
-/

namespace A160817.P3297778030831692990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160834 n - A160831 n

end

end A160817.P3297778030831692990

namespace A160817

/-- `2*A160834(n)-A160831(n)` -/
def P3297778030831692990.Spec : Prop :=
  ∀ n, P3297778030831692990.a n = A160817 n

end A160817

/-! ## A160817.P1928684912708786239

`A160816(n)+∑[A161680(n)]²`
-/

namespace A160817.P1928684912708786239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160816 n + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A160817.P1928684912708786239

namespace A160817

/-- `A160816(n)+∑[A161680(n)]²` -/
def P1928684912708786239.Spec : Prop :=
  ∀ n, P1928684912708786239.a n = A160817 n

end A160817

/-! ## A160817.P9762406397587255333

`A160788(n)+A179058(n+1)/2`
-/

namespace A160817.P9762406397587255333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160788 n : ℚ) + (A179058 (n + 1) : ℚ) / 2

end

end A160817.P9762406397587255333

namespace A160817

/-- `A160788(n)+A179058(n+1)/2` -/
def P9762406397587255333.Spec : Prop :=
  ∀ n, P9762406397587255333.a n = (A160817 n : ℚ)

end A160817

/-! ## A160817.P3871127876009239686

`A160834(n)-A179058(n+1)/2`
-/

namespace A160817.P3871127876009239686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160834 n : ℚ) - (A179058 (n + 1) : ℚ) / 2

end

end A160817.P3871127876009239686

namespace A160817

/-- `A160834(n)-A179058(n+1)/2` -/
def P3871127876009239686.Spec : Prop :=
  ∀ n, P3871127876009239686.a n = (A160817 n : ℚ)

end A160817

/-! ## A160817.P9186554737020902852

`A160788(n)+A160831(n)-A160834(n)`
-/

namespace A160817.P9186554737020902852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160788 n + (A160831 n - A160834 n)

end

end A160817.P9186554737020902852

namespace A160817

/-- `A160788(n)+A160831(n)-A160834(n)` -/
def P9186554737020902852.Spec : Prop :=
  ∀ n, P9186554737020902852.a n = A160817 n

end A160817

/-! ## A160817.P1974092982300151276

`A160816(n)+A160831(n)-A160833(n)`
-/

namespace A160817.P1974092982300151276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160816 n + (A160831 n - A160833 n)

end

end A160817.P1974092982300151276

namespace A160817

/-- `A160816(n)+A160831(n)-A160833(n)` -/
def P1974092982300151276.Spec : Prop :=
  ∀ n, P1974092982300151276.a n = A160817 n

end A160817

/-! ## A160817.P13598031876587468841

`A160834(n)-A002415(n)*A132411(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160817

/-- `A160834(n)-A002415(n)*A132411(n)` -/
def P13598031876587468841.Spec : Prop :=
  ∀ n, P13598031876587468841.a n = A160817 n

theorem P13598031876587468841.correct : P13598031876587468841.Spec := by
  intro n
  simp only [A160817]

end A160817

/-! ## A160817.P8993958835792040656

`A160831(n)-A008911(n)*A132411(n)`
-/

namespace A160817.P8993958835792040656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160831 n - A008911 n * A132411 n

end

end A160817.P8993958835792040656

namespace A160817

/-- `A160831(n)-A008911(n)*A132411(n)` -/
def P8993958835792040656.Spec : Prop :=
  ∀ n, P8993958835792040656.a n = A160817 n

end A160817

/-! ## A160817.P6656872945349235208

`A160831(n)-A161680(n)*A288961(n+1)`
-/

namespace A160817.P6656872945349235208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160831 n - A161680 n * A288961 (n + 1)

end

end A160817.P6656872945349235208

namespace A160817

/-- `A160831(n)-A161680(n)*A288961(n+1)` -/
def P6656872945349235208.Spec : Prop :=
  ∀ n, P6656872945349235208.a n = A160817 n

end A160817

/-! ## A160817.P15289744965435776823

`A160831(n)-lcm(A002415(n), A303212(n+1))`
-/

namespace A160817.P15289744965435776823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160831 n - (Int.lcm (A002415 n) (A303212 (n + 1)) : ℤ)

end

end A160817.P15289744965435776823

namespace A160817

/-- `A160831(n)-lcm(A002415(n), A303212(n+1))` -/
def P15289744965435776823.Spec : Prop :=
  ∀ n, P15289744965435776823.a n = A160817 n

end A160817

/-!
# A160818: Each number is the average of the numbers formed by all the possible permutations of the digits of that number.

The programs for A160818, there is no canonical definition to state claims against.
-/

/-! ## A160818.P7025490235404410150

`A214019(A277112(n)+1)`
-/

namespace A160818.P7025490235404410150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214019 (A277112 n + 1).toNat

end

end A160818.P7025490235404410150

/-! ## A160818.P2103092947082943780

`A214019(comp[A256395(n+1)]+1)`
-/

namespace A160818.P2103092947082943780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256395 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214019 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A160818.P2103092947082943780

/-! ## A160818.P392784266080797084

`A214019(comp[C(A205945(n+1), 3)])`
-/

namespace A160818.P392784266080797084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A205945 (n + 1)).toNat 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214019 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A160818.P392784266080797084

/-! ## A160818.P1931123633480067432

`record[A214019(n+1)%A046728(n+1)]`
-/

namespace A160818.P1931123633480067432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214019 (n + 1)) (A046728 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160818.P1931123633480067432

/-! ## A160818.P15411872675134829152

`A214019(comp[(2^n*∑[2^n]-1)*A214023(n+2)])`
-/

namespace A160818.P15411872675134829152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) - 1) * A214023 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214019 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A160818.P15411872675134829152

/-!
# A160820: a(1)=2. For n >=2, a(n) = smallest positive integer > a(n-1) such that Omega(a(n)) = Omega(a(n)-a(n-1)), where Omega(m) = A001222(m).

The programs for A160820, there is no canonical definition to state claims against.
-/

/-! ## A160820.P11658872704178259668

`∑[A160819(n+1)]`
-/

namespace A160820.P11658872704178259668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160820.P11658872704178259668

/-!
# A160821: a(1)=2. a(n) = smallest positive integer such that omega(a(n)) = omega(sum{k=1 to n} a(k)), where omega(m) = A001221(m).

The programs for A160821, there is no canonical definition to state claims against.
-/

/-! ## A160821.P8990707953640798553

`Δ[A065569(a(n-1))+a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A160821.P8990707953640798553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A065569 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160821.P8990707953640798553

/-!
# A160822: a(1)=2. For n >= 2, a(n) = smallest integer > a(n-1) such that omega(a(n)) = omega(a(n)-a(n-1)), where omega(m) = A001221(m).

The programs for A160822, there is no canonical definition to state claims against.
-/

/-! ## A160822.P16815052619773773917

`∑[A160821(n+1)]`
-/

namespace A160822.P16815052619773773917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160822.P16815052619773773917

/-! ## A160822.P5908151816406117034

`A160821(n+1)+a(abs(A024000(n)))` with `a(0)=2`
-/

namespace A160822.P5908151816406117034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A160821 (n + 1) + a |A024000 n|.toNat

end

end A160822.P5908151816406117034

/-! ## A160822.P4212882523350476692

`A065569(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A160822.P4212882523350476692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A065569 (a (n - 1)).toNat + a (n - 1)

end

end A160822.P4212882523350476692

/-! ## A160822.P13446161770846615159

`A160821(n+1)+eq[1, A344876(n+1)^a(n-1)]` with `a(0)=1`
-/

namespace A160822.P13446161770846615159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f2 =>
  (A344876 (n + 1) : ℝ) ^ (f2 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160821 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n : ℤ)

end

end A160822.P13446161770846615159

/-! ## A160822.P16552707334476550900

`eq[1, A344876(n+1)^a(n-1)]` with `a(0)=2`
-/

namespace A160822.P16552707334476550900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f2 =>
  (A344876 (n + 1) : ℝ) ^ (f2 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A160822.P16552707334476550900

/-!
# A160823: A transform of the large Schroeder numbers.

The programs for A160823, there is no canonical definition to state claims against.
-/

/-! ## A160823.P8743354451406353416

`2*A185089(n)-1`
-/

namespace A160823.P8743354451406353416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185089 n - 1

end

end A160823.P8743354451406353416

/-! ## A160823.P17065574684566458716

`A153881(n+2)+2*A185089(n)`
-/

namespace A160823.P17065574684566458716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + 2 * A185089 n

end

end A160823.P17065574684566458716

/-! ## A160823.P418913090782088965

`A057428(A111453(n+1))+2*A185089(n)`
-/

namespace A160823.P418913090782088965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A111453 (n + 1)).toNat + 2 * A185089 n

end

end A160823.P418913090782088965

/-! ## A160823.P3685715510779682778

`A190615(A007318(C(n, n²)!))+2*A185089(n)`
-/

namespace A160823.P3685715510779682778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190615 (A007318 (Nat.factorial (Nat.choose n (n ^ 2)))).toNat + 2 * A185089 n

end

end A160823.P3685715510779682778

/-! ## A160823.P9802718025695164975

`A190615(A007318(C(n, 2)))+2*A185089(n)`
-/

namespace A160823.P9802718025695164975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190615 (A007318 (Nat.choose n 2)).toNat + 2 * A185089 n

end

end A160823.P9802718025695164975

/-! ## A160823.P4159658974375375772

`A008683(A002148(n))+2*A185089(n)`
-/

namespace A160823.P4159658974375375772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002148 n).toNat + 2 * A185089 n

end

end A160823.P4159658974375375772

/-!
# A160824: a(1)=1, a(n) = the smallest positive integer such that both a(n) and Sum_{k=1..n} a(k) have the same number of (nonleading) 0's when they are represented in binary.

The programs for A160824, the canonical program `A160824.P14781726376737784810` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160824 has offset 1).

The definition of A160824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160824.P14781726376737784810

`2*a(n-2)` with `a(0)=1, a(1)=5, a(2)=1, a(3)=6, a(4)=9, a(5)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160824

/-- `2*a(n-2)` -/
def P14781726376737784810.Spec : Prop :=
  ∀ n, (P14781726376737784810.a n : ℤ) = A160824 (n + 1)

theorem P14781726376737784810.correct : P14781726376737784810.Spec := by
  intro n
  simp only [A160824, Nat.add_sub_cancel]

end A160824

/-! ## A160824.P16252814586836248881

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=5, a(2)=1, a(3)=6, a(4)=9, a(5)=4`
-/

namespace A160824.P16252814586836248881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 1, 6, 9, 4] fun n a =>
  a (n - 2) + a (n - 2)

end

end A160824.P16252814586836248881

namespace A160824

/-- `a(n-2)+a(n-2)` -/
def P16252814586836248881.Spec : Prop :=
  ∀ n, (P16252814586836248881.a n : ℤ) = A160824 (n + 1)

theorem P16252814586836248881.correct : P16252814586836248881.Spec := by
  intro n
  simp only [A160824, Nat.add_sub_cancel, A160824.P16252814586836248881.a, A160824.P14781726376737784810.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A160824

/-! ## A160824.P2184207443733269750

`Δ[A160825(A028310(n))+A057427(n)]`
-/

namespace A160824.P2184207443733269750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160825 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160824.P2184207443733269750

namespace A160824

/-- `Δ[A160825(A028310(n))+A057427(n)]` -/
def P2184207443733269750.Spec : Prop :=
  ∀ n, P2184207443733269750.a n = A160824 (n + 1)

end A160824

/-! ## A160824.P10036374542081915820

`A160825(n+1)-A057427(n)*A160825(A028310(n))`
-/

namespace A160824.P10036374542081915820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160825 (n + 1) - A057427 n * A160825 (A028310 n).toNat

end

end A160824.P10036374542081915820

namespace A160824

/-- `A160825(n+1)-A057427(n)*A160825(A028310(n))` -/
def P10036374542081915820.Spec : Prop :=
  ∀ n, P10036374542081915820.a n = A160824 (n + 1)

end A160824

/-! ## A160824.P13803833013783272732

`Δ[A160825(A028310(n))%A160825(n+1)]`
-/

namespace A160824.P13803833013783272732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160825 (A028310 n).toNat) (A160825 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160824.P13803833013783272732

namespace A160824

/-- `Δ[A160825(A028310(n))%A160825(n+1)]` -/
def P13803833013783272732.Spec : Prop :=
  ∀ n, P13803833013783272732.a n = A160824 (n + 1)

end A160824

/-! ## A160824.P3045030232791332415

`Δ[A160825(A028310(n))%A175660(n)]`
-/

namespace A160824.P3045030232791332415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160825 (A028310 n).toNat) (A175660 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160824.P3045030232791332415

namespace A160824

/-- `Δ[A160825(A028310(n))%A175660(n)]` -/
def P3045030232791332415.Spec : Prop :=
  ∀ n, P3045030232791332415.a n = A160824 (n + 1)

end A160824

/-!
# A160825: a(1) = 1. For n >=2, a(n) = the smallest integer > a(n-1) such that both a(n) and a(n)-a(n-1) have the same number of (non-leading) 0's when they are represented in binary.

The programs for A160825, the canonical program `A160825.P16563990988607560956` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160825 has offset 1).

The definition of A160825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160825.P16563990988607560956

`2*a(n-2)` with `a(0)=1, a(1)=6, a(2)=7, a(3)=13, a(4)=22`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160825

/-- `2*a(n-2)` -/
def P16563990988607560956.Spec : Prop :=
  ∀ n, (P16563990988607560956.a n : ℤ) = A160825 (n + 1)

theorem P16563990988607560956.correct : P16563990988607560956.Spec := by
  intro n
  simp only [A160825, Nat.add_sub_cancel]

end A160825

/-! ## A160825.P13454133663914351569

`ogf((1+6x+5x^2+x^3+8x^4)/(1-2x^2))`
-/

namespace A160825.P13454133663914351569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 5, 1, 8] [1, 0, -2] n

end

end A160825.P13454133663914351569

namespace A160825

/-- `ogf((1+6x+5x^2+x^3+8x^4)/(1-2x^2))` -/
def P13454133663914351569.Spec : Prop :=
  ∀ n, P13454133663914351569.a n = A160825 (n + 1)

end A160825

/-! ## A160825.P8744667805823445623

`∑[A160824(n+1)]`
-/

namespace A160825.P8744667805823445623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160825.P8744667805823445623

namespace A160825

/-- `∑[A160824(n+1)]` -/
def P8744667805823445623.Spec : Prop :=
  ∀ n, P8744667805823445623.a n = A160825 (n + 1)

end A160825

/-! ## A160825.P17331565656483710266

`A160824(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A160825.P17331565656483710266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160824 (n + 1) + a (A028310 n - 1).toNat

end

end A160825.P17331565656483710266

namespace A160825

/-- `A160824(n+1)+a(A028310(n)-1)` -/
def P17331565656483710266.Spec : Prop :=
  ∀ n, P17331565656483710266.a n = A160825 (n + 1)

end A160825

/-! ## A160825.P4067859799712782700

`a(n-1)+A160824(n+1)%(A175660(n)+A027934(n))` with `a(0)=1, a(1)=6`
-/

namespace A160825.P4067859799712782700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + Int.tmod (A160824 (n + 1)) (A175660 n + A027934 n)

end

end A160825.P4067859799712782700

namespace A160825

/-- `a(n-1)+A160824(n+1)%(A175660(n)+A027934(n))` -/
def P4067859799712782700.Spec : Prop :=
  ∀ n, P4067859799712782700.a n = A160825 (n + 1)

end A160825

/-! ## A160825.P14541068814097850190

`a(n-1)+A160824(n+1)%A077985(n)` with `a(0)=1, a(1)=6`
-/

namespace A160825.P14541068814097850190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + Int.tmod (A160824 (n + 1)) (A077985 n)

end

end A160825.P14541068814097850190

namespace A160825

/-- `a(n-1)+A160824(n+1)%A077985(n)` -/
def P14541068814097850190.Spec : Prop :=
  ∀ n, P14541068814097850190.a n = A160825 (n + 1)

end A160825

/-!
# A160827: a(n) = 3*n^4 + 12*n^3 + 30*n^2 + 36*n + 17.

The programs for A160827, the canonical program `A160827.P17194749400231829553` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160827 has offset 0).

The definition of A160827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n^4+12*n^3+30*n²+36*n+17` (program `A160827.P17194749400231829553`, by `A160827.P17194749400231829553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160827.P17194749400231829553

`3*n^4+12*n^3+30*n²+36*n+17`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160827

/-- `3*n^4+12*n^3+30*n²+36*n+17` -/
def P17194749400231829553.Spec : Prop :=
  ∀ n, (P17194749400231829553.a n : ℤ) = A160827 n

theorem P17194749400231829553.correct : P17194749400231829553.Spec := by
  intro n
  simp only [A160827]

end A160827

/-! ## A160827.P2332256945485275375

`(A008514(n+1)+A000583(n))*gcd(n, n+1)`
-/

namespace A160827.P2332256945485275375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * (Nat.gcd n (n + 1) : ℤ)

end

end A160827.P2332256945485275375

namespace A160827

/-- `(A008514(n+1)+A000583(n))*gcd(n, n+1)` -/
def P2332256945485275375.Spec : Prop :=
  ∀ n, P2332256945485275375.a n = A160827 n

end A160827

/-! ## A160827.P7979650217934951667

`lcm(A008514(n+1)+A000583(n), A000034(n))`
-/

namespace A160827.P7979650217934951667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008514 (n + 1) + A000583 n) (A000034 n)

end

end A160827.P7979650217934951667

namespace A160827

/-- `lcm(A008514(n+1)+A000583(n), A000034(n))` -/
def P7979650217934951667.Spec : Prop :=
  ∀ n, (P7979650217934951667.a n : ℤ) = A160827 n

end A160827

/-! ## A160827.P364716656812345970

`(A008514(n+1)+A000583(n))*A000105(C(2, n²))`
-/

namespace A160827.P364716656812345970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * A000105 (Nat.choose 2 (n ^ 2))

end

end A160827.P364716656812345970

namespace A160827

/-- `(A008514(n+1)+A000583(n))*A000105(C(2, n²))` -/
def P364716656812345970.Spec : Prop :=
  ∀ n, P364716656812345970.a n = A160827 n

end A160827

/-! ## A160827.P1638336333597511720

`(A008514(n+1)+A000583(n))*A000988(C(2, n²))`
-/

namespace A160827.P1638336333597511720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * A000988 (Nat.choose 2 (n ^ 2))

end

end A160827.P1638336333597511720

namespace A160827

/-- `(A008514(n+1)+A000583(n))*A000988(C(2, n²))` -/
def P1638336333597511720.Spec : Prop :=
  ∀ n, P1638336333597511720.a n = A160827 n

end A160827

/-! ## A160827.P9428134563440358786

`(A008514(n+1)+A000583(n))*A040005((n+1)%2+n)`
-/

namespace A160827.P9428134563440358786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * A040005 ((n + 1) % 2 + n)

end

end A160827.P9428134563440358786

namespace A160827

/-- `(A008514(n+1)+A000583(n))*A040005((n+1)%2+n)` -/
def P9428134563440358786.Spec : Prop :=
  ∀ n, P9428134563440358786.a n = A160827 n

end A160827

/-! ## A160827.P14438359196746555383

`(A008514(n+1)+A000583(n))*A003958(A001316(n))`
-/

namespace A160827.P14438359196746555383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * A003958 (A001316 n).toNat

end

end A160827.P14438359196746555383

namespace A160827

/-- `(A008514(n+1)+A000583(n))*A003958(A001316(n))` -/
def P14438359196746555383.Spec : Prop :=
  ∀ n, P14438359196746555383.a n = A160827 n

end A160827

/-! ## A160827.P4211989758320139523

`(A008514(n+1)+A000583(n))*A040005(A237420(n)+1)`
-/

namespace A160827.P4211989758320139523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * A040005 (A237420 n + 1).toNat

end

end A160827.P4211989758320139523

namespace A160827

/-- `(A008514(n+1)+A000583(n))*A040005(A237420(n)+1)` -/
def P4211989758320139523.Spec : Prop :=
  ∀ n, P4211989758320139523.a n = A160827 n

end A160827

/-! ## A160827.P53293340536178102

`(A008514(n+1)+A000583(n))*A040005(A005408(n+3))`
-/

namespace A160827.P53293340536178102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * A040005 (A005408 (n + 3)).toNat

end

end A160827.P53293340536178102

namespace A160827

/-- `(A008514(n+1)+A000583(n))*A040005(A005408(n+3))` -/
def P53293340536178102.Spec : Prop :=
  ∀ n, P53293340536178102.a n = A160827 n

end A160827

/-! ## A160827.P9806340413403358409

`(A008514(n+1)+A000583(n))*A000034(2*n)`
-/

namespace A160827.P9806340413403358409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * A000034 (2 * n)

end

end A160827.P9806340413403358409

namespace A160827

/-- `(A008514(n+1)+A000583(n))*A000034(2*n)` -/
def P9806340413403358409.Spec : Prop :=
  ∀ n, P9806340413403358409.a n = A160827 n

end A160827

/-! ## A160827.P3009969606659197577

`(A008514(n+1)+A000583(n))*A000188(A175264(n+1))`
-/

namespace A160827.P3009969606659197577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * A000188 (A175264 (n + 1)).toNat

end

end A160827.P3009969606659197577

namespace A160827

/-- `(A008514(n+1)+A000583(n))*A000188(A175264(n+1))` -/
def P3009969606659197577.Spec : Prop :=
  ∀ n, P3009969606659197577.a n = A160827 n

end A160827

/-! ## A160827.P10125432677558995889

`(A008514(n+1)+A000583(n))*A008683(A090801(n+1))²`
-/

namespace A160827.P10125432677558995889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * A008683 (A090801 (n + 1)).toNat ^ 2

end

end A160827.P10125432677558995889

namespace A160827

/-- `(A008514(n+1)+A000583(n))*A008683(A090801(n+1))²` -/
def P10125432677558995889.Spec : Prop :=
  ∀ n, P10125432677558995889.a n = A160827 n

end A160827

/-! ## A160827.P6624915357881978494

`(A008514(n+1)+A000583(n))*A040005(A175277(n+1))`
-/

namespace A160827.P6624915357881978494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * A040005 (A175277 (n + 1)).toNat

end

end A160827.P6624915357881978494

namespace A160827

/-- `(A008514(n+1)+A000583(n))*A040005(A175277(n+1))` -/
def P6624915357881978494.Spec : Prop :=
  ∀ n, P6624915357881978494.a n = A160827 n

end A160827

/-! ## A160827.P12057477607057390836

`(A008514(n+1)+A000583(n))*A007318(∑[n+1])`
-/

namespace A160827.P12057477607057390836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160827.P12057477607057390836

namespace A160827

/-- `(A008514(n+1)+A000583(n))*A007318(∑[n+1])` -/
def P12057477607057390836.Spec : Prop :=
  ∀ n, P12057477607057390836.a n = A160827 n

end A160827

/-! ## A160827.P11421115270937638614

`(A008514(n+1)+A000583(n))*A059674(∑[n+1])`
-/

namespace A160827.P11421115270937638614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * A059674 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160827.P11421115270937638614

namespace A160827

/-- `(A008514(n+1)+A000583(n))*A059674(∑[n+1])` -/
def P11421115270937638614.Spec : Prop :=
  ∀ n, P11421115270937638614.a n = A160827 n

end A160827

/-! ## A160827.P7461469279435974493

`(A008514(n+1)+A000583(n))*A010892(∑[n+1])²`
-/

namespace A160827.P7461469279435974493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000583 n) * A010892 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A160827.P7461469279435974493

namespace A160827

/-- `(A008514(n+1)+A000583(n))*A010892(∑[n+1])²` -/
def P7461469279435974493.Spec : Prop :=
  ∀ n, P7461469279435974493.a n = A160827 n

end A160827

/-!
# A160828: a(n) = 4*n^4 + 24*n^3 + 84*n^2 + 144*n + 98.

The programs for A160828, the canonical program `A160828.P13997391768670527971` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160828 has offset 0).

The definition of A160828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^4+24*n^3+84*n²+144*n+98` (program `A160828.P13997391768670527971`, by `A160828.P13997391768670527971.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160828.P13997391768670527971

`4*n^4+24*n^3+84*n²+144*n+98`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160828

/-- `4*n^4+24*n^3+84*n²+144*n+98` -/
def P13997391768670527971.Spec : Prop :=
  ∀ n, (P13997391768670527971.a n : ℤ) = A160828 n

theorem P13997391768670527971.correct : P13997391768670527971.Spec := by
  intro n
  simp only [A160828]

end A160828

/-! ## A160828.P4876988304662720268

`lcm(2, A008514(n+2)+A008514(n))`
-/

namespace A160828.P4876988304662720268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A008514 (n + 2) + A008514 n)

end

end A160828.P4876988304662720268

namespace A160828

/-- `lcm(2, A008514(n+2)+A008514(n))` -/
def P4876988304662720268.Spec : Prop :=
  ∀ n, (P4876988304662720268.a n : ℤ) = A160828 n

end A160828

/-! ## A160828.P16718227992347085249

`xor(A008514(n+2)+A008514(n), A000007(n+1))`
-/

namespace A160828.P16718227992347085249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008514 (n + 2) + A008514 n) (A000007 (n + 1))

end

end A160828.P16718227992347085249

namespace A160828

/-- `xor(A008514(n+2)+A008514(n), A000007(n+1))` -/
def P16718227992347085249.Spec : Prop :=
  ∀ n, P16718227992347085249.a n = A160828 n

end A160828

/-! ## A160828.P5395703023737073986

`xor(A008514(n+2)+A008514(n), A000038(n+1))`
-/

namespace A160828.P5395703023737073986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008514 (n + 2) + A008514 n) (A000038 (n + 1))

end

end A160828.P5395703023737073986

namespace A160828

/-- `xor(A008514(n+2)+A008514(n), A000038(n+1))` -/
def P5395703023737073986.Spec : Prop :=
  ∀ n, P5395703023737073986.a n = A160828 n

end A160828

/-! ## A160828.P142789140816705131

`(A008514(n+2)+A008514(n))%(A001567(n+1)-1)²`
-/

namespace A160828.P142789140816705131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008514 (n + 2) + A008514 n) ((A001567 (n + 1) - 1) ^ 2)

end

end A160828.P142789140816705131

namespace A160828

/-- `(A008514(n+2)+A008514(n))%(A001567(n+1)-1)²` -/
def P142789140816705131.Spec : Prop :=
  ∀ n, P142789140816705131.a n = A160828 n

end A160828

/-! ## A160828.P5934888669836334537

`(A008514(n+2)+A008514(n))*A001221(xor(n, n+1)+1)`
-/

namespace A160828.P5934888669836334537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 2) + A008514 n) * A001221 (Nat.xor n (n + 1) + 1)

end

end A160828.P5934888669836334537

namespace A160828

/-- `(A008514(n+2)+A008514(n))*A001221(xor(n, n+1)+1)` -/
def P5934888669836334537.Spec : Prop :=
  ∀ n, P5934888669836334537.a n = A160828 n

end A160828

/-! ## A160828.P12385194900411147679

`(A008514(n+2)+A008514(n))*(A005843(n+1)-(2*n+1))`
-/

namespace A160828.P12385194900411147679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 2) + A008514 n) * (A005843 (n + 1) - (2 * n + 1 : ℤ))

end

end A160828.P12385194900411147679

namespace A160828

/-- `(A008514(n+2)+A008514(n))*(A005843(n+1)-(2*n+1))` -/
def P12385194900411147679.Spec : Prop :=
  ∀ n, P12385194900411147679.a n = A160828 n

end A160828

/-! ## A160828.P7440193114213388584

`(A008514(n+2)+A008514(n))*A014963(A126706(n+1))`
-/

namespace A160828.P7440193114213388584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 2) + A008514 n) * A014963 (A126706 (n + 1)).toNat

end

end A160828.P7440193114213388584

namespace A160828

/-- `(A008514(n+2)+A008514(n))*A014963(A126706(n+1))` -/
def P7440193114213388584.Spec : Prop :=
  ∀ n, P7440193114213388584.a n = A160828 n

end A160828

/-! ## A160828.P12248237965208060143

`(A008514(n+2)+A008514(n))^A008279(n)^A106459(n)`
-/

namespace A160828.P12248237965208060143
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 2) + A008514 n : ℝ) ^ ((A008279 n : ℚ) ^ (A106459 n : ℤ) : ℝ)

end

end A160828.P12248237965208060143

namespace A160828

/-- `(A008514(n+2)+A008514(n))^A008279(n)^A106459(n)` -/
def P12248237965208060143.Spec : Prop :=
  ∀ n, P12248237965208060143.a n = (A160828 n : ℝ)

end A160828

/-! ## A160828.P15536061648819029729

`(A008514(n+2)+A008514(n))*A014963(A008458(n))`
-/

namespace A160828.P15536061648819029729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 2) + A008514 n) * A014963 (A008458 n).toNat

end

end A160828.P15536061648819029729

namespace A160828

/-- `(A008514(n+2)+A008514(n))*A014963(A008458(n))` -/
def P15536061648819029729.Spec : Prop :=
  ∀ n, P15536061648819029729.a n = A160828 n

end A160828

/-! ## A160828.P10259137968898694036

`(A008514(n+2)+A008514(n))*(A035214(A008795(n))-1)`
-/

namespace A160828.P10259137968898694036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 2) + A008514 n) * (A035214 (A008795 n).toNat - 1)

end

end A160828.P10259137968898694036

namespace A160828

/-- `(A008514(n+2)+A008514(n))*(A035214(A008795(n))-1)` -/
def P10259137968898694036.Spec : Prop :=
  ∀ n, P10259137968898694036.a n = A160828 n

end A160828

/-! ## A160828.P9828451007956304607

`(A008514(n+2)+A008514(n))*A014963(A044392(n+1))`
-/

namespace A160828.P9828451007956304607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 2) + A008514 n) * A014963 (A044392 (n + 1)).toNat

end

end A160828.P9828451007956304607

namespace A160828

/-- `(A008514(n+2)+A008514(n))*A014963(A044392(n+1))` -/
def P9828451007956304607.Spec : Prop :=
  ∀ n, P9828451007956304607.a n = A160828 n

end A160828

/-!
# A160829: Expansion of (1 + 44*x + 337*x^2 + 612*x^3 + 305*x^4 + 40*x^5 + x^6)/(1 - x)^7.

The programs for A160829, the canonical program `A160829.P11882751545949830582` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160829 has offset 0).

The definition of A160829 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+44x+337x^2+612x^3+305x^4+40x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` (program `A160829.P11882751545949830582`, by `A160829.P11882751545949830582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160829.P11882751545949830582

`ogf((1+44x+337x^2+612x^3+305x^4+40x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160829

/-- `ogf((1+44x+337x^2+612x^3+305x^4+40x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P11882751545949830582.Spec : Prop :=
  ∀ n, P11882751545949830582.a n = A160829 n

theorem P11882751545949830582.correct : P11882751545949830582.Spec := by
  intro n
  simp only [A160829]

end A160829

/-! ## A160829.P15354280057392451158

`A160815(n)+A160835(n)-A160817(n)`
-/

namespace A160829.P15354280057392451158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160815 n + (A160835 n - A160817 n)

end

end A160829.P15354280057392451158

namespace A160829

/-- `A160815(n)+A160835(n)-A160817(n)` -/
def P15354280057392451158.Spec : Prop :=
  ∀ n, P15354280057392451158.a n = A160829 n

end A160829

/-! ## A160829.P15014498085526743437

`A160816(n)+A160835(n)-A160836(n)`
-/

namespace A160829.P15014498085526743437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160816 n + (A160835 n - A160836 n)

end

end A160829.P15014498085526743437

namespace A160829

/-- `A160816(n)+A160835(n)-A160836(n)` -/
def P15014498085526743437.Spec : Prop :=
  ∀ n, P15014498085526743437.a n = A160829 n

end A160829

/-! ## A160829.P7335509485516071526

`A160834(n)+A160835(n)-A160833(n)`
-/

namespace A160829.P7335509485516071526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160834 n + (A160835 n - A160833 n)

end

end A160829.P7335509485516071526

namespace A160829

/-- `A160834(n)+A160835(n)-A160833(n)` -/
def P7335509485516071526.Spec : Prop :=
  ∀ n, P7335509485516071526.a n = A160829 n

end A160829

/-! ## A160829.P2270775080653160757

`A160835(n)+A160836(n)-A160834(n)`
-/

namespace A160829.P2270775080653160757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160835 n + (A160836 n - A160834 n)

end

end A160829.P2270775080653160757

namespace A160829

/-- `A160835(n)+A160836(n)-A160834(n)` -/
def P2270775080653160757.Spec : Prop :=
  ∀ n, P2270775080653160757.a n = A160829 n

end A160829

/-!
# A160830: Integer part of the product of two consecutive primes divided by their sum.

The programs for A160830, the canonical program `A160830.P3336484421034523192` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160830 has offset 1).

The definition of A160830 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, A006094, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160830.P3336484421034523192

`floor(A006094(n+1)/A001043(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160830

/-- `floor(A006094(n+1)/A001043(n+1))` -/
def P3336484421034523192.Spec : Prop :=
  ∀ n, P3336484421034523192.a n = A160830 (n + 1)

theorem P3336484421034523192.correct : P3336484421034523192.Spec := by
  intro n
  simp only [A160830, Nat.add_sub_cancel]

end A160830

/-! ## A160830.P13653952906767831406

`floor(A078444(n+1)/2)`
-/

namespace A160830.P13653952906767831406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078444 (n + 1) : ℚ) / 2⌋

end

end A160830.P13653952906767831406

namespace A160830

/-- `floor(A078444(n+1)/2)` -/
def P13653952906767831406.Spec : Prop :=
  ∀ n, P13653952906767831406.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P14815120670145735898

`floor(sqrt(A006094(n+1))/2)`
-/

namespace A160830.P14815120670145735898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A006094 (n + 1) : ℝ) / 2⌋

end

end A160830.P14815120670145735898

namespace A160830

/-- `floor(sqrt(A006094(n+1))/2)` -/
def P14815120670145735898.Spec : Prop :=
  ∀ n, P14815120670145735898.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P11920785123598346851

`floor(sqrt(A014303(n+1)/2))`
-/

namespace A160830.P11920785123598346851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A014303 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A160830.P11920785123598346851

namespace A160830

/-- `floor(sqrt(A014303(n+1)/2))` -/
def P11920785123598346851.Spec : Prop :=
  ∀ n, P11920785123598346851.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P15291506502543959709

`floor(sqrt(A037166(n+1))/2)`
-/

namespace A160830.P15291506502543959709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A037166 (n + 1) : ℝ) / 2⌋

end

end A160830.P15291506502543959709

namespace A160830

/-- `floor(sqrt(A037166(n+1))/2)` -/
def P15291506502543959709.Spec : Prop :=
  ∀ n, P15291506502543959709.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P11331971245161017330

`floor(sqrt(sqrt(A166329(n+1)))/2)`
-/

namespace A160830.P11331971245161017330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A166329 (n + 1) : ℝ)) / 2⌋

end

end A160830.P11331971245161017330

namespace A160830

/-- `floor(sqrt(sqrt(A166329(n+1)))/2)` -/
def P11331971245161017330.Spec : Prop :=
  ∀ n, P11331971245161017330.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P3337065708199933779

`(A006094(n+1)-A212769(n+1))/A001043(n+1)`
-/

namespace A160830.P3337065708199933779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) - A212769 (n + 1) : ℚ) / (A001043 (n + 1) : ℚ)

end

end A160830.P3337065708199933779

namespace A160830

/-- `(A006094(n+1)-A212769(n+1))/A001043(n+1)` -/
def P3337065708199933779.Spec : Prop :=
  ∀ n, P3337065708199933779.a n = (A160830 (n + 1) : ℚ)

end A160830

/-! ## A160830.P11391299549662719934

`floor(sqrt(A023515(n+2))/2)`
-/

namespace A160830.P11391299549662719934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A023515 (n + 2) : ℝ) / 2⌋

end

end A160830.P11391299549662719934

namespace A160830

/-- `floor(sqrt(A023515(n+2))/2)` -/
def P11391299549662719934.Spec : Prop :=
  ∀ n, P11391299549662719934.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P14219852382960239813

`floor((A006093(n+2)+A000040(n+1))/4)`
-/

namespace A160830.P14219852382960239813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 2) + A000040 (n + 1) : ℚ) / 4⌋

end

end A160830.P14219852382960239813

namespace A160830

/-- `floor((A006093(n+2)+A000040(n+1))/4)` -/
def P14219852382960239813.Spec : Prop :=
  ∀ n, P14219852382960239813.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P2861246659223394734

`floor((A039915(n+2)+A039915(n+1))/4)`
-/

namespace A160830.P2861246659223394734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039915 (n + 2) + A039915 (n + 1) : ℚ) / 4⌋

end

end A160830.P2861246659223394734

namespace A160830

/-- `floor((A039915(n+2)+A039915(n+1))/4)` -/
def P2861246659223394734.Spec : Prop :=
  ∀ n, P2861246659223394734.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P12914952114512153175

`floor(A006094(n+1)/(A000040(n+1)+A000040(n+2)))`
-/

namespace A160830.P12914952114512153175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 1) : ℚ) / (A000040 (n + 1) + A000040 (n + 2) : ℚ)⌋

end

end A160830.P12914952114512153175

namespace A160830

/-- `floor(A006094(n+1)/(A000040(n+1)+A000040(n+2)))` -/
def P12914952114512153175.Spec : Prop :=
  ∀ n, P12914952114512153175.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P1483492896703559365

`floor(record[sqrt(A116570(n))/2])`
-/

namespace A160830.P1483492896703559365
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A116570 n : ℝ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A160830.P1483492896703559365

namespace A160830

/-- `floor(record[sqrt(A116570(n))/2])` -/
def P1483492896703559365.Spec : Prop :=
  ∀ n, P1483492896703559365.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P10350973492227742536

`floor(sqrt(A116570(2*n))/2)`
-/

namespace A160830.P10350973492227742536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A116570 (2 * n) : ℝ) / 2⌋

end

end A160830.P10350973492227742536

namespace A160830

/-- `floor(sqrt(A116570(2*n))/2)` -/
def P10350973492227742536.Spec : Prop :=
  ∀ n, P10350973492227742536.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P13715538602450377772

`floor(sqrt(A033476(2*n+1))/2)`
-/

namespace A160830.P13715538602450377772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A033476 (2 * n + 1) : ℝ) / 2⌋

end

end A160830.P13715538602450377772

namespace A160830

/-- `floor(sqrt(A033476(2*n+1))/2)` -/
def P13715538602450377772.Spec : Prop :=
  ∀ n, P13715538602450377772.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P3535432650599299378

`floor(sqrt(A333747(2*n+1))/2)`
-/

namespace A160830.P3535432650599299378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A333747 (2 * n + 1) : ℝ) / 2⌋

end

end A160830.P3535432650599299378

namespace A160830

/-- `floor(sqrt(A333747(2*n+1))/2)` -/
def P3535432650599299378.Spec : Prop :=
  ∀ n, P3535432650599299378.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P1423393934100695145

`A004526(A078444(n+1))`
-/

namespace A160830.P1423393934100695145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078444 (n + 1)).toNat

end

end A160830.P1423393934100695145

namespace A160830

/-- `A004526(A078444(n+1))` -/
def P1423393934100695145.Spec : Prop :=
  ∀ n, P1423393934100695145.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P433912311311534242

`floor(A006094(n+1)/A347136(A000040(n+1)))`
-/

namespace A160830.P433912311311534242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 1) : ℚ) / (A347136 (A000040 (n + 1)).toNat : ℚ)⌋

end

end A160830.P433912311311534242

namespace A160830

/-- `floor(A006094(n+1)/A347136(A000040(n+1)))` -/
def P433912311311534242.Spec : Prop :=
  ∀ n, P433912311311534242.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P55082150006803899

`floor(sqrt(A124669(n+1))/2)`
-/

namespace A160830.P55082150006803899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A124669 (n + 1) : ℝ) / 2⌋

end

end A160830.P55082150006803899

namespace A160830

/-- `floor(sqrt(A124669(n+1))/2)` -/
def P55082150006803899.Spec : Prop :=
  ∀ n, P55082150006803899.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P5538673871610502820

`A059169(A001043(n+1))`
-/

namespace A160830.P5538673871610502820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A001043 (n + 1)).toNat

end

end A160830.P5538673871610502820

namespace A160830

/-- `A059169(A001043(n+1))` -/
def P5538673871610502820.Spec : Prop :=
  ∀ n, P5538673871610502820.a n = A160830 (n + 1)

end A160830

/-! ## A160830.P10662135299790783384

`A059169(A011974(n+2))`
-/

namespace A160830.P10662135299790783384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A011974 (n + 2)).toNat

end

end A160830.P10662135299790783384

namespace A160830

/-- `A059169(A011974(n+2))` -/
def P10662135299790783384.Spec : Prop :=
  ∀ n, P10662135299790783384.a n = A160830 (n + 1)

end A160830

/-!
# A160831: G.f.: (1+62*x+570*x^2+1095*x^3+530*x^4+57*x^5+x^6)/(1-x)^7.

The programs for A160831, the canonical program `A160831.P13544186760015330901` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160831 has offset 0).

The definition of A160831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160831.P13544186760015330901

`A160788(n)+A135503(n)²`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160831

/-- `A160788(n)+A135503(n)²` -/
def P13544186760015330901.Spec : Prop :=
  ∀ n, P13544186760015330901.a n = A160831 n

theorem P13544186760015330901.correct : P13544186760015330901.Spec := by
  intro n
  simp only [A160831]

end A160831

/-! ## A160831.P5502388385990664608

`A179058(n+1)+A160817(n)`
-/

namespace A160831.P5502388385990664608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179058 (n + 1) + A160817 n

end

end A160831.P5502388385990664608

namespace A160831

/-- `A179058(n+1)+A160817(n)` -/
def P5502388385990664608.Spec : Prop :=
  ∀ n, P5502388385990664608.a n = A160831 n

end A160831

/-! ## A160831.P16992564513384348853

`2*A160834(n)-A160817(n)`
-/

namespace A160831.P16992564513384348853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160834 n - A160817 n

end

end A160831.P16992564513384348853

namespace A160831

/-- `2*A160834(n)-A160817(n)` -/
def P16992564513384348853.Spec : Prop :=
  ∀ n, P16992564513384348853.a n = A160831 n

end A160831

/-! ## A160831.P3422296350849587759

`A160833(n)+∑[A161680(n)]²`
-/

namespace A160831.P3422296350849587759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160833 n + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A160831.P3422296350849587759

namespace A160831

/-- `A160833(n)+∑[A161680(n)]²` -/
def P3422296350849587759.Spec : Prop :=
  ∀ n, P3422296350849587759.a n = A160831 n

end A160831

/-! ## A160831.P430659452316998435

`A160834(n)+A179058(n+1)/2`
-/

namespace A160831.P430659452316998435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160834 n : ℚ) + (A179058 (n + 1) : ℚ) / 2

end

end A160831.P430659452316998435

namespace A160831

/-- `A160834(n)+A179058(n+1)/2` -/
def P430659452316998435.Spec : Prop :=
  ∀ n, P430659452316998435.a n = (A160831 n : ℚ)

end A160831

/-! ## A160831.P15209208962513343697

`A160817(n)+A160834(n)-A160788(n)`
-/

namespace A160831.P15209208962513343697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160817 n + (A160834 n - A160788 n)

end

end A160831.P15209208962513343697

namespace A160831

/-- `A160817(n)+A160834(n)-A160788(n)` -/
def P15209208962513343697.Spec : Prop :=
  ∀ n, P15209208962513343697.a n = A160831 n

end A160831

/-! ## A160831.P1017855134487648929

`A160833(n)+A160836(n)-A160817(n)`
-/

namespace A160831.P1017855134487648929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160833 n + (A160836 n - A160817 n)

end

end A160831.P1017855134487648929

namespace A160831

/-- `A160833(n)+A160836(n)-A160817(n)` -/
def P1017855134487648929.Spec : Prop :=
  ∀ n, P1017855134487648929.a n = A160831 n

end A160831

/-! ## A160831.P2033272063825774723

`A160834(n)+A002415(n)*A132411(n)`
-/

namespace A160831.P2033272063825774723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160834 n + A002415 n * A132411 n

end

end A160831.P2033272063825774723

namespace A160831

/-- `A160834(n)+A002415(n)*A132411(n)` -/
def P2033272063825774723.Spec : Prop :=
  ∀ n, P2033272063825774723.a n = A160831 n

end A160831

/-! ## A160831.P11831665317218963671

`A160817(n)+A008911(n)*A132411(n)`
-/

namespace A160831.P11831665317218963671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160817 n + A008911 n * A132411 n

end

end A160831.P11831665317218963671

namespace A160831

/-- `A160817(n)+A008911(n)*A132411(n)` -/
def P11831665317218963671.Spec : Prop :=
  ∀ n, P11831665317218963671.a n = A160831 n

end A160831

/-!
# A160833: G.f.: (1+62*x+569*x^2+1086*x^3+521*x^4+56*x^5+x^6)/(1-x)^7.

The programs for A160833, the canonical program `A160833.P15780145902120907609` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160833 has offset 0).

The definition of A160833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160833.P2115748754590904489

`A169801(n)+A160836(n)`
-/

namespace A160833.P2115748754590904489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169801 n + A160836 n

end

end A160833.P2115748754590904489

namespace A160833

/-- `A169801(n)+A160836(n)` -/
def P2115748754590904489.Spec : Prop :=
  ∀ n, P2115748754590904489.a n = A160833 n

end A160833

/-! ## A160833.P930141146100983923

`A179058(n+1)+A160816(n)`
-/

namespace A160833.P930141146100983923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179058 (n + 1) + A160816 n

end

end A160833.P930141146100983923

namespace A160833

/-- `A179058(n+1)+A160816(n)` -/
def P930141146100983923.Spec : Prop :=
  ∀ n, P930141146100983923.a n = A160833 n

end A160833

/-! ## A160833.P11005249687769410440

`A160788(n)+2*A169801(n)`
-/

namespace A160833.P11005249687769410440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160788 n + 2 * A169801 n

end

end A160833.P11005249687769410440

namespace A160833

/-- `A160788(n)+2*A169801(n)` -/
def P11005249687769410440.Spec : Prop :=
  ∀ n, P11005249687769410440.a n = A160833 n

end A160833

/-! ## A160833.P9556026157071438847

`2*A160836(n)-A160788(n)`
-/

namespace A160833.P9556026157071438847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160836 n - A160788 n

end

end A160833.P9556026157071438847

namespace A160833

/-- `2*A160836(n)-A160788(n)` -/
def P9556026157071438847.Spec : Prop :=
  ∀ n, P9556026157071438847.a n = A160833 n

end A160833

/-! ## A160833.P12404572851280911143

`2*A160834(n)-A160836(n)`
-/

namespace A160833.P12404572851280911143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160834 n - A160836 n

end

end A160833.P12404572851280911143

namespace A160833

/-- `2*A160834(n)-A160836(n)` -/
def P12404572851280911143.Spec : Prop :=
  ∀ n, P12404572851280911143.a n = A160833 n

end A160833

/-! ## A160833.P17956690330899164054

`A160834(n)+A169801(n)/2`
-/

namespace A160833.P17956690330899164054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160834 n : ℚ) + (A169801 n : ℚ) / 2

end

end A160833.P17956690330899164054

namespace A160833

/-- `A160834(n)+A169801(n)/2` -/
def P17956690330899164054.Spec : Prop :=
  ∀ n, P17956690330899164054.a n = (A160833 n : ℚ)

end A160833

/-! ## A160833.P15780145902120907609

`A160831(n)-∑[A161680(n)]²`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160833

/-- `A160831(n)-∑[A161680(n)]²` -/
def P15780145902120907609.Spec : Prop :=
  ∀ n, P15780145902120907609.a n = A160833 n

theorem P15780145902120907609.correct : P15780145902120907609.Spec := by
  intro n
  simp only [A160833]

end A160833

/-! ## A160833.P407657123767530758

`A160834(n)+A179058(n+1)/3`
-/

namespace A160833.P407657123767530758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160834 n : ℚ) + (A179058 (n + 1) : ℚ) / 3

end

end A160833.P407657123767530758

namespace A160833

/-- `A160834(n)+A179058(n+1)/3` -/
def P407657123767530758.Spec : Prop :=
  ∀ n, P407657123767530758.a n = (A160833 n : ℚ)

end A160833

/-! ## A160833.P10986176470211302161

`A160816(n)+A160831(n)-A160817(n)`
-/

namespace A160833.P10986176470211302161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160816 n + (A160831 n - A160817 n)

end

end A160833.P10986176470211302161

namespace A160833

/-- `A160816(n)+A160831(n)-A160817(n)` -/
def P10986176470211302161.Spec : Prop :=
  ∀ n, P10986176470211302161.a n = A160833 n

end A160833

/-! ## A160833.P6302229597167857922

`A160817(n)+A160831(n)-A160836(n)`
-/

namespace A160833.P6302229597167857922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160817 n + (A160831 n - A160836 n)

end

end A160833.P6302229597167857922

namespace A160833

/-- `A160817(n)+A160831(n)-A160836(n)` -/
def P6302229597167857922.Spec : Prop :=
  ∀ n, P6302229597167857922.a n = A160833 n

end A160833

/-! ## A160833.P12289546977521884433

`A160816(n)+A008911(n)*A132411(n)`
-/

namespace A160833.P12289546977521884433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160816 n + A008911 n * A132411 n

end

end A160833.P12289546977521884433

namespace A160833

/-- `A160816(n)+A008911(n)*A132411(n)` -/
def P12289546977521884433.Spec : Prop :=
  ∀ n, P12289546977521884433.a n = A160833 n

end A160833

/-! ## A160833.P13748281802801078140

`A160816(n)+A008911(n)*A106230(n+1)`
-/

namespace A160833.P13748281802801078140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160816 n + A008911 n * A106230 (n + 1)

end

end A160833.P13748281802801078140

namespace A160833

/-- `A160816(n)+A008911(n)*A106230(n+1)` -/
def P13748281802801078140.Spec : Prop :=
  ∀ n, P13748281802801078140.a n = A160833 n

end A160833

/-! ## A160833.P16290861778560555431

`A160816(n)+A161680(n)*A288961(n+1)`
-/

namespace A160833.P16290861778560555431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160816 n + A161680 n * A288961 (n + 1)

end

end A160833.P16290861778560555431

namespace A160833

/-- `A160816(n)+A161680(n)*A288961(n+1)` -/
def P16290861778560555431.Spec : Prop :=
  ∀ n, P16290861778560555431.a n = A160833 n

end A160833

/-! ## A160833.P9680664049183409072

`A160816(n)+lcm(A002415(n), A303212(n+1))`
-/

namespace A160833.P9680664049183409072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160816 n + (Int.lcm (A002415 n) (A303212 (n + 1)) : ℤ)

end

end A160833.P9680664049183409072

namespace A160833

/-- `A160816(n)+lcm(A002415(n), A303212(n+1))` -/
def P9680664049183409072.Spec : Prop :=
  ∀ n, P9680664049183409072.a n = A160833 n

end A160833

/-!
# A160834: Expansion of: (1+62*x+567*x^2+1068*x^3+503*x^4+54*x^5+x^6)/(1-x)^7.

The programs for A160834, the canonical program `A160834.P7621129472229904078` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160834 has offset 0).

The definition of A160834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160834.P7621129472229904078

`1+n*(n+1)*(47*n^4+104*n^3+171*n²+114*n+74)/15`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160834

/-- `1+n*(n+1)*(47*n^4+104*n^3+171*n²+114*n+74)/15` -/
def P7621129472229904078.Spec : Prop :=
  ∀ n, P7621129472229904078.a n = (A160834 n : ℚ)

end A160834

/-! ## A160834.P6845437560858540667

`(A160831(n)+A160817(n))/2`
-/

namespace A160834.P6845437560858540667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160831 n + A160817 n : ℚ) / 2

end

end A160834.P6845437560858540667

namespace A160834

/-- `(A160831(n)+A160817(n))/2` -/
def P6845437560858540667.Spec : Prop :=
  ∀ n, P6845437560858540667.a n = (A160834 n : ℚ)

end A160834

/-! ## A160834.P15799292155703215006

`(A160836(n)+A160833(n))/2`
-/

namespace A160834.P15799292155703215006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160836 n + A160833 n : ℚ) / 2

end

end A160834.P15799292155703215006

namespace A160834

/-- `(A160836(n)+A160833(n))/2` -/
def P15799292155703215006.Spec : Prop :=
  ∀ n, P15799292155703215006.a n = (A160834 n : ℚ)

end A160834

/-!
# A160835: G.f.: (1+44*x+339*x^2+630*x^3+323*x^4+42*x^5+x^6)/(1-x)^7.

The programs for A160835, the canonical program `A160835.P8083942848271191664` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160835 has offset 0).

The definition of A160835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160835.P8083942848271191664

`1+n*(n+1)*(23*n^4+48*n^3+98*n²+73*n+58)/12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160835

/-- `1+n*(n+1)*(23*n^4+48*n^3+98*n²+73*n+58)/12` -/
def P8083942848271191664.Spec : Prop :=
  ∀ n, P8083942848271191664.a n = (A160835 n : ℚ)

end A160835

/-!
# A160836: G.f.: (1+62*x+565*x^2+1050*x^3+485*x^4+52*x^5+x^6)/(1-x)^7.

The programs for A160836, the canonical program `A160836.P13397477465687703204` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160836 has offset 0).

The definition of A160836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160836.P15105075854811179247

`A169801(n)+A160788(n)`
-/

namespace A160836.P15105075854811179247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169801 n + A160788 n

end

end A160836.P15105075854811179247

namespace A160836

/-- `A169801(n)+A160788(n)` -/
def P15105075854811179247.Spec : Prop :=
  ∀ n, P15105075854811179247.a n = A160836 n

end A160836

/-! ## A160836.P18224791146005814631

`A160833(n)-A169801(n)`
-/

namespace A160836.P18224791146005814631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160833 n - A169801 n

end

end A160836.P18224791146005814631

namespace A160836

/-- `A160833(n)-A169801(n)` -/
def P18224791146005814631.Spec : Prop :=
  ∀ n, P18224791146005814631.a n = A160836 n

end A160836

/-! ## A160836.P1007479403693576355

`(A160833(n)+A160788(n))/2`
-/

namespace A160836.P1007479403693576355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160833 n + A160788 n : ℚ) / 2

end

end A160836.P1007479403693576355

namespace A160836

/-- `(A160833(n)+A160788(n))/2` -/
def P1007479403693576355.Spec : Prop :=
  ∀ n, P1007479403693576355.a n = (A160836 n : ℚ)

end A160836

/-! ## A160836.P14028937691301561754

`2*A160817(n)-A160816(n)`
-/

namespace A160836.P14028937691301561754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160817 n - A160816 n

end

end A160836.P14028937691301561754

namespace A160836

/-- `2*A160817(n)-A160816(n)` -/
def P14028937691301561754.Spec : Prop :=
  ∀ n, P14028937691301561754.a n = A160836 n

end A160836

/-! ## A160836.P8411534615064689855

`(A160834(n)+A160816(n))/2`
-/

namespace A160836.P8411534615064689855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160834 n + A160816 n : ℚ) / 2

end

end A160836.P8411534615064689855

namespace A160836

/-- `(A160834(n)+A160816(n))/2` -/
def P8411534615064689855.Spec : Prop :=
  ∀ n, P8411534615064689855.a n = (A160836 n : ℚ)

end A160836

/-! ## A160836.P13397477465687703204

`2*A160834(n)-A160833(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A160836

/-- `2*A160834(n)-A160833(n)` -/
def P13397477465687703204.Spec : Prop :=
  ∀ n, P13397477465687703204.a n = A160836 n

theorem P13397477465687703204.correct : P13397477465687703204.Spec := by
  intro n
  simp only [A160836]

end A160836

/-! ## A160836.P1316552206688270743

`A160816(n)+A169801(n)/2`
-/

namespace A160836.P1316552206688270743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160816 n : ℚ) + (A169801 n : ℚ) / 2

end

end A160836.P1316552206688270743

namespace A160836

/-- `A160816(n)+A169801(n)/2` -/
def P1316552206688270743.Spec : Prop :=
  ∀ n, P1316552206688270743.a n = (A160836 n : ℚ)

end A160836

/-! ## A160836.P14751251204297883595

`A160834(n)-A169801(n)/2`
-/

namespace A160836.P14751251204297883595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160834 n : ℚ) - (A169801 n : ℚ) / 2

end

end A160836.P14751251204297883595

namespace A160836

/-- `A160834(n)-A169801(n)/2` -/
def P14751251204297883595.Spec : Prop :=
  ∀ n, P14751251204297883595.a n = (A160836 n : ℚ)

end A160836

/-! ## A160836.P1187528644770844921

`A160817(n)+∑[A161680(n)]²`
-/

namespace A160836.P1187528644770844921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160817 n + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A160836.P1187528644770844921

namespace A160836

/-- `A160817(n)+∑[A161680(n)]²` -/
def P1187528644770844921.Spec : Prop :=
  ∀ n, P1187528644770844921.a n = A160836 n

end A160836

/-! ## A160836.P16531711291766525333

`A160816(n)+A179058(n+1)/3`
-/

namespace A160836.P16531711291766525333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160816 n : ℚ) + (A179058 (n + 1) : ℚ) / 3

end

end A160836.P16531711291766525333

namespace A160836

/-- `A160816(n)+A179058(n+1)/3` -/
def P16531711291766525333.Spec : Prop :=
  ∀ n, P16531711291766525333.a n = (A160836 n : ℚ)

end A160836

/-! ## A160836.P4841617233570225044

`A160834(n)-A179058(n+1)/3`
-/

namespace A160836.P4841617233570225044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160834 n : ℚ) - (A179058 (n + 1) : ℚ) / 3

end

end A160836.P4841617233570225044

namespace A160836

/-- `A160834(n)-A179058(n+1)/3` -/
def P4841617233570225044.Spec : Prop :=
  ∀ n, P4841617233570225044.a n = (A160836 n : ℚ)

end A160836

/-! ## A160836.P12732403561919367511

`A160817(n)+A179058(n+1)/6`
-/

namespace A160836.P12732403561919367511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160817 n : ℚ) + (A179058 (n + 1) : ℚ) / 6

end

end A160836.P12732403561919367511

namespace A160836

/-- `A160817(n)+A179058(n+1)/6` -/
def P12732403561919367511.Spec : Prop :=
  ∀ n, P12732403561919367511.a n = (A160836 n : ℚ)

end A160836

/-! ## A160836.P12103032240171788911

`A160816(n)+A160833(n)-A160834(n)`
-/

namespace A160836.P12103032240171788911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160816 n + (A160833 n - A160834 n)

end

end A160836.P12103032240171788911

namespace A160836

/-- `A160816(n)+A160833(n)-A160834(n)` -/
def P12103032240171788911.Spec : Prop :=
  ∀ n, P12103032240171788911.a n = A160836 n

end A160836

/-! ## A160836.P14019286594941198222

`A160817(n)+A160831(n)-A160833(n)`
-/

namespace A160836.P14019286594941198222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160817 n + (A160831 n - A160833 n)

end

end A160836.P14019286594941198222

namespace A160836

/-- `A160817(n)+A160831(n)-A160833(n)` -/
def P14019286594941198222.Spec : Prop :=
  ∀ n, P14019286594941198222.a n = A160836 n

end A160836

/-!
# A160837: G.f.: (1+38*x+262*x^2+475*x^3+254*x^4+37*x^5+x^6)/(1-x)^7.

The programs for A160837, the canonical program `A160837.P6506458256857455061` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160837 has offset 0).

The definition of A160837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160837.P6506458256857455061

`1+n*(n+1)*(89*n^4+183*n^3+427*n²+333*n+288)/60`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160837

/-- `1+n*(n+1)*(89*n^4+183*n^3+427*n²+333*n+288)/60` -/
def P6506458256857455061.Spec : Prop :=
  ∀ n, P6506458256857455061.a n = (A160837 n : ℚ)

end A160837

/-!
# A160838: G.f.: (1+38*x+263*x^2+484*x^3+263*x^4+38*x^5+x^6)/(1-x)^7.

The programs for A160838, the canonical program `A160838.P6006200299465319187` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160838 has offset 0).

The definition of A160838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160838.P17031887130435230226

`A160815(n)+A160837(n)-A160788(n)`
-/

namespace A160838.P17031887130435230226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160815 n + (A160837 n - A160788 n)

end

end A160838.P17031887130435230226

namespace A160838

/-- `A160815(n)+A160837(n)-A160788(n)` -/
def P17031887130435230226.Spec : Prop :=
  ∀ n, P17031887130435230226.a n = A160838 n

end A160838

/-! ## A160838.P13759876911369211979

`A160816(n)+A160837(n)-A160815(n)`
-/

namespace A160838.P13759876911369211979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160816 n + (A160837 n - A160815 n)

end

end A160838.P13759876911369211979

namespace A160838

/-- `A160816(n)+A160837(n)-A160815(n)` -/
def P13759876911369211979.Spec : Prop :=
  ∀ n, P13759876911369211979.a n = A160838 n

end A160838

/-! ## A160838.P2918154945535392959

`A160817(n)+A160837(n)-A160816(n)`
-/

namespace A160838.P2918154945535392959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160817 n + (A160837 n - A160816 n)

end

end A160838.P2918154945535392959

namespace A160838

/-- `A160817(n)+A160837(n)-A160816(n)` -/
def P2918154945535392959.Spec : Prop :=
  ∀ n, P2918154945535392959.a n = A160838 n

end A160838

/-! ## A160838.P6006200299465319187

`A160836(n)+A160837(n)-A160817(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A160838

/-- `A160836(n)+A160837(n)-A160817(n)` -/
def P6006200299465319187.Spec : Prop :=
  ∀ n, P6006200299465319187.a n = A160838 n

theorem P6006200299465319187.correct : P6006200299465319187.Spec := by
  intro n
  simp only [A160838]

end A160838

/-! ## A160838.P6499692976139110174

`A160831(n)+A160837(n)-A160833(n)`
-/

namespace A160838.P6499692976139110174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160831 n + (A160837 n - A160833 n)

end

end A160838.P6499692976139110174

namespace A160838

/-- `A160831(n)+A160837(n)-A160833(n)` -/
def P6499692976139110174.Spec : Prop :=
  ∀ n, P6499692976139110174.a n = A160838 n

end A160838

/-!
# A160842: Number of lines through at least 2 points of a 2 X n grid of points.

The programs for A160842, the canonical program `A160842.P743506810064101309` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160842 has offset 0).

The definition of A160842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160842.P743506810064101309

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=11, a(4)=18`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160842

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P743506810064101309.Spec : Prop :=
  ∀ n, P743506810064101309.a n = A160842 n

theorem P743506810064101309.correct : P743506810064101309.Spec := by
  intro n
  simp only [A160842]

end A160842

/-! ## A160842.P9138346795717200752

`or(n², ceil(atan(n)))`
-/

namespace A160842.P9138346795717200752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) ⌈Real.arctan (n : ℝ)⌉

end

end A160842.P9138346795717200752

namespace A160842

/-- `or(n², ceil(atan(n)))` -/
def P9138346795717200752.Spec : Prop :=
  ∀ n, P9138346795717200752.a n = A160842 n

end A160842

/-! ## A160842.P8882972214698671027

`2%(n+1)+n²`
-/

namespace A160842.P8882972214698671027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % (n + 1) + n ^ 2

end

end A160842.P8882972214698671027

namespace A160842

/-- `2%(n+1)+n²` -/
def P8882972214698671027.Spec : Prop :=
  ∀ n, (P8882972214698671027.a n : ℤ) = A160842 n

end A160842

/-! ## A160842.P4465592832676815248

`n²+2*floor(atan(n))`
-/

namespace A160842.P4465592832676815248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 2 * ⌊Real.arctan (n : ℝ)⌋

end

end A160842.P4465592832676815248

namespace A160842

/-- `n²+2*floor(atan(n))` -/
def P4465592832676815248.Spec : Prop :=
  ∀ n, P4465592832676815248.a n = A160842 n

end A160842

/-! ## A160842.P9185158579139202666

`or(2-C(2, n+1), n²)`
-/

namespace A160842.P9185158579139202666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 - (Nat.choose 2 (n + 1) : ℤ)) (n ^ 2 : ℤ)

end

end A160842.P9185158579139202666

namespace A160842

/-- `or(2-C(2, n+1), n²)` -/
def P9185158579139202666.Spec : Prop :=
  ∀ n, P9185158579139202666.a n = A160842 n

end A160842

/-! ## A160842.P13285717531221886133

`∑[a(n-1)+2]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=5`
-/

namespace A160842.P13285717531221886133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160842.P13285717531221886133

namespace A160842

/-- `∑[a(n-1)+2]` -/
def P13285717531221886133.Spec : Prop :=
  ∀ n, (P13285717531221886133.a n : ℤ) = A160842 n

end A160842

/-! ## A160842.P14214204445313072215

`or(n², ceil(2*n/(n+1)))`
-/

namespace A160842.P14214204445313072215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) ⌈(2 * n : ℚ) / (n + 1 : ℚ)⌉

end

end A160842.P14214204445313072215

namespace A160842

/-- `or(n², ceil(2*n/(n+1)))` -/
def P14214204445313072215.Spec : Prop :=
  ∀ n, P14214204445313072215.a n = A160842 n

end A160842

/-! ## A160842.P15451381172987070459

`ceil(atan((n-1)*n²))+n²`
-/

namespace A160842.P15451381172987070459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (((n : ℤ) - 1) * (n ^ 2 : ℤ) : ℝ)⌉ + (n ^ 2 : ℤ)

end

end A160842.P15451381172987070459

namespace A160842

/-- `ceil(atan((n-1)*n²))+n²` -/
def P15451381172987070459.Spec : Prop :=
  ∀ n, P15451381172987070459.a n = A160842 n

end A160842

/-! ## A160842.P11555933685972568624

`ogf((x+3x^2-4x^3+2x^4)/(1-3x+3x^2-x^3))`
-/

namespace A160842.P11555933685972568624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, -4, 2] [1, -3, 3, -1] n

end

end A160842.P11555933685972568624

namespace A160842

/-- `ogf((x+3x^2-4x^3+2x^4)/(1-3x+3x^2-x^3))` -/
def P11555933685972568624.Spec : Prop :=
  ∀ n, P11555933685972568624.a n = A160842 n

end A160842

/-! ## A160842.P3421207457606337318

`and(2, lcm(2, a(n-1)))+n²` with `a(0)=0`
-/

namespace A160842.P3421207457606337318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 2 (Nat.lcm 2 (a (n - 1))) + n ^ 2

end

end A160842.P3421207457606337318

namespace A160842

/-- `and(2, lcm(2, a(n-1)))+n²` -/
def P3421207457606337318.Spec : Prop :=
  ∀ n, (P3421207457606337318.a n : ℤ) = A160842 n

end A160842

/-! ## A160842.P12318604314785413649

`n²+n-abs(1-abs(1-n))`
-/

namespace A160842.P12318604314785413649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - |(1 - |1 - (n : ℤ)|)|

end

end A160842.P12318604314785413649

namespace A160842

/-- `n²+n-abs(1-abs(1-n))` -/
def P12318604314785413649.Spec : Prop :=
  ∀ n, P12318604314785413649.a n = A160842 n

end A160842

/-! ## A160842.P4616703317262640718

`floor((n/(a(n-1)+3)+n)²)` with `a(0)=0`
-/

namespace A160842.P4616703317262640718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((n : ℚ) / (a (n - 1) + 3 : ℚ) + (n : ℚ)) ^ 2⌋

end

end A160842.P4616703317262640718

namespace A160842

/-- `floor((n/(a(n-1)+3)+n)²)` -/
def P4616703317262640718.Spec : Prop :=
  ∀ n, P4616703317262640718.a n = A160842 n

end A160842

/-! ## A160842.P2399948469120942142

`(a(n-1)+(n+1)²)/2` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A160842.P2399948469120942142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  (a (n - 1) + ((n + 1) ^ 2 : ℚ)) / 2

end

end A160842.P2399948469120942142

namespace A160842

/-- `(a(n-1)+(n+1)²)/2` -/
def P2399948469120942142.Spec : Prop :=
  ∀ n, P2399948469120942142.a n = (A160842 n : ℚ)

end A160842

/-! ## A160842.P143548337602330400

`floor(∑[2*n]-a(n-2)/(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A160842.P143548337602330400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (a (n - 2) : ℚ) / ((n : ℤ) - 1 : ℚ)⌋

end

end A160842.P143548337602330400

namespace A160842

/-- `floor(∑[2*n]-a(n-2)/(n-1))` -/
def P143548337602330400.Spec : Prop :=
  ∀ n, P143548337602330400.a n = A160842 n

end A160842

/-! ## A160842.P12562650607530366431

`gcd(n²+2, a(n-1)-floor(a(n-1)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A160842.P12562650607530366431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.gcd (n ^ 2 + 2 : ℤ) ((a (n - 1) : ℤ) - (a (n - 1) : ℤ))

end

end A160842.P12562650607530366431

namespace A160842

/-- `gcd(n²+2, a(n-1)-floor(a(n-1)))` -/
def P12562650607530366431.Spec : Prop :=
  ∀ n, (P12562650607530366431.a n : ℤ) = A160842 n

end A160842

/-! ## A160842.P3385884796463721367

`∑[A004273(char[2]+n)]`
-/

namespace A160842.P3385884796463721367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160842.P3385884796463721367

namespace A160842

/-- `∑[A004273(char[2]+n)]` -/
def P3385884796463721367.Spec : Prop :=
  ∀ n, P3385884796463721367.a n = A160842 n

end A160842

/-! ## A160842.P6220333373538295221

`∑[A163985(char[2]+n)]`
-/

namespace A160842.P6220333373538295221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160842.P6220333373538295221

namespace A160842

/-- `∑[A163985(char[2]+n)]` -/
def P6220333373538295221.Spec : Prop :=
  ∀ n, P6220333373538295221.a n = A160842 n

end A160842

/-! ## A160842.P504622354685349198

`(n²+2)%A056105(n)`
-/

namespace A160842.P504622354685349198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 + 2 : ℤ) (A056105 n)

end

end A160842.P504622354685349198

namespace A160842

/-- `(n²+2)%A056105(n)` -/
def P504622354685349198.Spec : Prop :=
  ∀ n, P504622354685349198.a n = A160842 n

end A160842

/-! ## A160842.P11976171848819083229

`A010000(n)%A002523(n)`
-/

namespace A160842.P11976171848819083229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010000 n) (A002523 n)

end

end A160842.P11976171848819083229

namespace A160842

/-- `A010000(n)%A002523(n)` -/
def P11976171848819083229.Spec : Prop :=
  ∀ n, P11976171848819083229.a n = A160842 n

end A160842

/-! ## A160842.P13142478549148900239

`A059100(n)%A002523(n)`
-/

namespace A160842.P13142478549148900239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059100 n) (A002523 n)

end

end A160842.P13142478549148900239

namespace A160842

/-- `A059100(n)%A002523(n)` -/
def P13142478549148900239.Spec : Prop :=
  ∀ n, P13142478549148900239.a n = A160842 n

end A160842

/-!
# A160843: Number of lines through at least 2 points of a 3 X n grid of points.

The programs for A160843, the canonical program `A160843.P785358190991134528` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160843 has offset 0).

The definition of A160843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160843.P785358190991134528

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=11, a(3)=20, a(4)=35, a(5)=52`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160843

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P785358190991134528.Spec : Prop :=
  ∀ n, P785358190991134528.a n = A160843 n

theorem P785358190991134528.correct : P785358190991134528.Spec := by
  intro n
  simp only [A160843]

end A160843

/-! ## A160843.P15782211570606640808

`A077221(n)+3%A275543(n)`
-/

namespace A160843.P15782211570606640808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n + Int.tmod 3 (A275543 n)

end

end A160843.P15782211570606640808

namespace A160843

/-- `A077221(n)+3%A275543(n)` -/
def P15782211570606640808.Spec : Prop :=
  ∀ n, P15782211570606640808.a n = A160843 n

end A160843

/-! ## A160843.P3951571031884415489

`(A077221(n)+3)%A054554(n+1)`
-/

namespace A160843.P3951571031884415489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077221 n + 3) (A054554 (n + 1))

end

end A160843.P3951571031884415489

namespace A160843

/-- `(A077221(n)+3)%A054554(n+1)` -/
def P3951571031884415489.Spec : Prop :=
  ∀ n, P3951571031884415489.a n = A160843 n

end A160843

/-! ## A160843.P8614276732028135003

`A000384(n)+A080335(n+1)%∑[n+1]`
-/

namespace A160843.P8614276732028135003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n + Int.tmod (A080335 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A160843.P8614276732028135003

namespace A160843

/-- `A000384(n)+A080335(n+1)%∑[n+1]` -/
def P8614276732028135003.Spec : Prop :=
  ∀ n, P8614276732028135003.a n = A160843 n

end A160843

/-! ## A160843.P12480573699149217082

`A062545(A004526(n))+A000384(n)`
-/

namespace A160843.P12480573699149217082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A004526 n).toNat + A000384 n

end

end A160843.P12480573699149217082

namespace A160843

/-- `A062545(A004526(n))+A000384(n)` -/
def P12480573699149217082.Spec : Prop :=
  ∀ n, P12480573699149217082.a n = A160843 n

end A160843

/-! ## A160843.P8445598219854036399

`A077221(n)+A000217(A077591(n+1)%(n+1))`
-/

namespace A160843.P8445598219854036399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n + A000217 (Int.tmod (A077591 (n + 1)) (n + 1 : ℤ)).toNat

end

end A160843.P8445598219854036399

namespace A160843

/-- `A077221(n)+A000217(A077591(n+1)%(n+1))` -/
def P8445598219854036399.Spec : Prop :=
  ∀ n, P8445598219854036399.a n = A160843 n

end A160843

/-! ## A160843.P2648939986782660442

`A077221(n)+3-A063667(A077221(n)-n)`
-/

namespace A160843.P2648939986782660442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n + (3 - A063667 (A077221 n - (n : ℤ)).toNat)

end

end A160843.P2648939986782660442

namespace A160843

/-- `A077221(n)+3-A063667(A077221(n)-n)` -/
def P2648939986782660442.Spec : Prop :=
  ∀ n, P2648939986782660442.a n = A160843 n

end A160843

/-! ## A160843.P9056063843820746486

`A062545(A007590(n))+n²`
-/

namespace A160843.P9056063843820746486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A007590 n).toNat + (n ^ 2 : ℤ)

end

end A160843.P9056063843820746486

namespace A160843

/-- `A062545(A007590(n))+n²` -/
def P9056063843820746486.Spec : Prop :=
  ∀ n, P9056063843820746486.a n = A160843 n

end A160843

/-! ## A160843.P13480072364238401989

`A295707(∑[n+2]-1)`
-/

namespace A160843.P13480072364238401989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A160843.P13480072364238401989

namespace A160843

/-- `A295707(∑[n+2]-1)` -/
def P13480072364238401989.Spec : Prop :=
  ∀ n, P13480072364238401989.a n = A160843 n

end A160843

/-! ## A160843.P5182172974531767987

`A295707(A167499(n)-2)-A000007(n)`
-/

namespace A160843.P5182172974531767987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A167499 n - 2).toNat - A000007 n

end

end A160843.P5182172974531767987

namespace A160843

/-- `A295707(A167499(n)-2)-A000007(n)` -/
def P5182172974531767987.Spec : Prop :=
  ∀ n, P5182172974531767987.a n = A160843 n

end A160843

/-! ## A160843.P2536038973085992809

`A057427(n)*A295707(A167499(n)-2)`
-/

namespace A160843.P2536038973085992809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A295707 (A167499 n - 2).toNat

end

end A160843.P2536038973085992809

namespace A160843

/-- `A057427(n)*A295707(A167499(n)-2)` -/
def P2536038973085992809.Spec : Prop :=
  ∀ n, P2536038973085992809.a n = A160843 n

end A160843

/-!
# A160844: Number of lines through at least 2 points of a 4 X n grid of points.

The programs for A160844, the canonical program `A160844.P11998416863675718487` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160844 has offset 0).

The definition of A160844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160844.P11998416863675718487

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=18, a(3)=35, a(4)=62, a(5)=93, a(6)=136, a(7)=181`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160844

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P11998416863675718487.Spec : Prop :=
  ∀ n, P11998416863675718487.a n = A160844 n

theorem P11998416863675718487.correct : P11998416863675718487.Spec := by
  intro n
  simp only [A160844]

end A160844

/-! ## A160844.P12043438948673402518

`A295707(∑[n+3])-floor(acot(n))`
-/

namespace A160844.P12043438948673402518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (∑ j ∈ Finset.range (n + 1), f1 j) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A160844.P12043438948673402518

namespace A160844

/-- `A295707(∑[n+3])-floor(acot(n))` -/
def P12043438948673402518.Spec : Prop :=
  ∀ n, P12043438948673402518.a n = A160844 n

end A160844

/-! ## A160844.P13686361556473264023

`A295707(∑[n+3]^((n+2)%(n+1)))`
-/

namespace A160844.P13686361556473264023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ ((n + 2) % (n + 1)))

end

end A160844.P13686361556473264023

namespace A160844

/-- `A295707(∑[n+3]^((n+2)%(n+1)))` -/
def P13686361556473264023.Spec : Prop :=
  ∀ n, P13686361556473264023.a n = A160844 n

end A160844

/-! ## A160844.P10558216831210396124

`A295707(A155212(n)-abs(1-n))`
-/

namespace A160844.P10558216831210396124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A155212 n - |1 - (n : ℤ)|).toNat

end

end A160844.P10558216831210396124

namespace A160844

/-- `A295707(A155212(n)-abs(1-n))` -/
def P10558216831210396124.Spec : Prop :=
  ∀ n, P10558216831210396124.a n = A160844 n

end A160844

/-! ## A160844.P1222729727913078862

`A295707(∑[n+3])-A000007(n)`
-/

namespace A160844.P1222729727913078862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (∑ j ∈ Finset.range (n + 1), f1 j) - A000007 n

end

end A160844.P1222729727913078862

namespace A160844

/-- `A295707(∑[n+3])-A000007(n)` -/
def P1222729727913078862.Spec : Prop :=
  ∀ n, P1222729727913078862.a n = A160844 n

end A160844

/-! ## A160844.P8667642603312744096

`A057427(n)*A295707(∑[n+3])`
-/

namespace A160844.P8667642603312744096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A295707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160844.P8667642603312744096

namespace A160844

/-- `A057427(n)*A295707(∑[n+3])` -/
def P8667642603312744096.Spec : Prop :=
  ∀ n, P8667642603312744096.a n = A160844 n

end A160844

/-! ## A160844.P9630849515678684212

`A057428(n)²*A295707(∑[n+3])`
-/

namespace A160844.P9630849515678684212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A295707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160844.P9630849515678684212

namespace A160844

/-- `A057428(n)²*A295707(∑[n+3])` -/
def P9630849515678684212.Spec : Prop :=
  ∀ n, P9630849515678684212.a n = A160844 n

end A160844

/-! ## A160844.P857218988913757134

`A295707(∑[n+3])-∏{d}[n, A001222(#)]`
-/

namespace A160844.P857218988913757134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (∑ j ∈ Finset.range (n + 1), f1 j) - ∏ d ∈ Nat.divisors (f2 n), A001222 d

end

end A160844.P857218988913757134

namespace A160844

/-- `A295707(∑[n+3])-∏{d}[n, A001222(#)]` -/
def P857218988913757134.Spec : Prop :=
  ∀ n, P857218988913757134.a n = A160844 n

end A160844

/-! ## A160844.P5557505160225319014

`char[A000463(n+1)]*A295707(∑[n+3])`
-/

namespace A160844.P5557505160225319014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A160844.P5557505160225319014

namespace A160844

/-- `char[A000463(n+1)]*A295707(∑[n+3])` -/
def P5557505160225319014.Spec : Prop :=
  ∀ n, P5557505160225319014.a n = A160844 n

end A160844

/-! ## A160844.P1966672199867911324

`char[A038722(n+1)]*A295707(∑[n+3])`
-/

namespace A160844.P1966672199867911324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A160844.P1966672199867911324

namespace A160844

/-- `char[A038722(n+1)]*A295707(∑[n+3])` -/
def P1966672199867911324.Spec : Prop :=
  ∀ n, P1966672199867911324.a n = A160844 n

end A160844

/-! ## A160844.P17277311818798110970

`ceil(n/A000041(n))*A295707(∑[n+3])`
-/

namespace A160844.P17277311818798110970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A000041 n : ℚ)⌉ * A295707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160844.P17277311818798110970

namespace A160844

/-- `ceil(n/A000041(n))*A295707(∑[n+3])` -/
def P17277311818798110970.Spec : Prop :=
  ∀ n, P17277311818798110970.a n = A160844 n

end A160844

/-! ## A160844.P7892114265041634057

`A000040(n+1)%2*A295707(∑[n+3])`
-/

namespace A160844.P7892114265041634057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A295707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160844.P7892114265041634057

namespace A160844

/-- `A000040(n+1)%2*A295707(∑[n+3])` -/
def P7892114265041634057.Spec : Prop :=
  ∀ n, P7892114265041634057.a n = A160844 n

end A160844

/-! ## A160844.P505469412437019627

`A295707(∑[n+3])-and(1, A000010(n+2))`
-/

namespace A160844.P505469412437019627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (∑ j ∈ Finset.range (n + 1), f1 j) - Int.land 1 (A000010 (n + 2))

end

end A160844.P505469412437019627

namespace A160844

/-- `A295707(∑[n+3])-and(1, A000010(n+2))` -/
def P505469412437019627.Spec : Prop :=
  ∀ n, P505469412437019627.a n = A160844 n

end A160844

/-! ## A160844.P2404276945018715614

`A295707(∑[n+3])-A000045(C(2, n+2))`
-/

namespace A160844.P2404276945018715614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (∑ j ∈ Finset.range (n + 1), f1 j) - A000045 (Nat.choose 2 (n + 2))

end

end A160844.P2404276945018715614

namespace A160844

/-- `A295707(∑[n+3])-A000045(C(2, n+2))` -/
def P2404276945018715614.Spec : Prop :=
  ∀ n, P2404276945018715614.a n = A160844 n

end A160844

/-! ## A160844.P9965347559740711825

`A295707(∑[n+3])+A008683(5*(n+1)²)`
-/

namespace A160844.P9965347559740711825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (∑ j ∈ Finset.range (n + 1), f1 j) + A008683 (5 * (n + 1) ^ 2)

end

end A160844.P9965347559740711825

namespace A160844

/-- `A295707(∑[n+3])+A008683(5*(n+1)²)` -/
def P9965347559740711825.Spec : Prop :=
  ∀ n, P9965347559740711825.a n = A160844 n

end A160844

/-! ## A160844.P10085382866337271649

`A000045(ceil(n/(n+1)))*A295707(∑[n+3])`
-/

namespace A160844.P10085382866337271649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A295707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160844.P10085382866337271649

namespace A160844

/-- `A000045(ceil(n/(n+1)))*A295707(∑[n+3])` -/
def P10085382866337271649.Spec : Prop :=
  ∀ n, P10085382866337271649.a n = A160844 n

end A160844

/-! ## A160844.P8512827133197253866

`A000032(C(2, n+2))+A295707(∑[n+3])-2`
-/

namespace A160844.P8512827133197253866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) + (A295707 (∑ j ∈ Finset.range (n + 1), f1 j) - 2)

end

end A160844.P8512827133197253866

namespace A160844

/-- `A000032(C(2, n+2))+A295707(∑[n+3])-2` -/
def P8512827133197253866.Spec : Prop :=
  ∀ n, P8512827133197253866.a n = A160844 n

end A160844

/-! ## A160844.P9174367111056650962

`A295707(∑[n+3])-(n+1)%A006530(2*(n+1))`
-/

namespace A160844.P9174367111056650962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (∑ j ∈ Finset.range (n + 1), f1 j) - Int.tmod (n + 1 : ℤ) (A006530 (2 * (n + 1)))

end

end A160844.P9174367111056650962

namespace A160844

/-- `A295707(∑[n+3])-(n+1)%A006530(2*(n+1))` -/
def P9174367111056650962.Spec : Prop :=
  ∀ n, P9174367111056650962.a n = A160844 n

end A160844

/-! ## A160844.P4068425215682856402

`A001221(A000961(n+1))*A295707(∑[n+3])`
-/

namespace A160844.P4068425215682856402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * A295707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160844.P4068425215682856402

namespace A160844

/-- `A001221(A000961(n+1))*A295707(∑[n+3])` -/
def P4068425215682856402.Spec : Prop :=
  ∀ n, P4068425215682856402.a n = A160844 n

end A160844

/-! ## A160844.P3322298214206620241

`A001221(A135679(n+1))*A295707(∑[n+3])`
-/

namespace A160844.P3322298214206620241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A135679 (n + 1)).toNat * A295707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160844.P3322298214206620241

namespace A160844

/-- `A001221(A135679(n+1))*A295707(∑[n+3])` -/
def P3322298214206620241.Spec : Prop :=
  ∀ n, P3322298214206620241.a n = A160844 n

end A160844

/-!
# A160845: Number of lines through at least 2 points of a 5 X n grid of points.

The programs for A160845, the canonical program `A160845.P6042427740603163360` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160845 has offset 0).

The definition of A160845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160845.P6042427740603163360

`a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` with `a(0)=0, a(1)=1, a(2)=27, a(3)=52, a(4)=93, a(5)=140, a(6)=207, a(7)=274, a(8)=361, a(9)=454`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160845

/-- `a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` -/
def P6042427740603163360.Spec : Prop :=
  ∀ n, P6042427740603163360.a n = A160845 n

theorem P6042427740603163360.correct : P6042427740603163360.Spec := by
  intro n
  simp only [A160845]

end A160845

/-! ## A160845.P9741493850852423739

`ceil(n/(n+1))*A295707(C(n+4, 2)+n)`
-/

namespace A160845.P9741493850852423739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n + 1 : ℚ)⌉ * A295707 (Nat.choose (n + 4) 2 + n)

end

end A160845.P9741493850852423739

namespace A160845

/-- `ceil(n/(n+1))*A295707(C(n+4, 2)+n)` -/
def P9741493850852423739.Spec : Prop :=
  ∀ n, P9741493850852423739.a n = A160845 n

end A160845

/-! ## A160845.P5211667789932030563

`A295707(A046691(n+2))-floor(acot(n))`
-/

namespace A160845.P5211667789932030563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A046691 (n + 2)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A160845.P5211667789932030563

namespace A160845

/-- `A295707(A046691(n+2))-floor(acot(n))` -/
def P5211667789932030563.Spec : Prop :=
  ∀ n, P5211667789932030563.a n = A160845 n

end A160845

/-! ## A160845.P11615400951996587657

`A295707(A167499(n+2))-floor(acot(n))`
-/

namespace A160845.P11615400951996587657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A167499 (n + 2)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A160845.P11615400951996587657

namespace A160845

/-- `A295707(A167499(n+2))-floor(acot(n))` -/
def P11615400951996587657.Spec : Prop :=
  ∀ n, P11615400951996587657.a n = A160845 n

end A160845

/-! ## A160845.P11363516120901406270

`record[A103452(n+4)*A295707(n+10)]`
-/

namespace A160845.P11363516120901406270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (n + 4) * A295707 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160845.P11363516120901406270

namespace A160845

/-- `record[A103452(n+4)*A295707(n+10)]` -/
def P11363516120901406270.Spec : Prop :=
  ∀ n, P11363516120901406270.a n = A160845 n

end A160845

/-! ## A160845.P7185393173691942484

`A295707(A000217(n+4)-4)-floor(acot(n))`
-/

namespace A160845.P7185393173691942484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 4) - 4).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A160845.P7185393173691942484

namespace A160845

/-- `A295707(A000217(n+4)-4)-floor(acot(n))` -/
def P7185393173691942484.Spec : Prop :=
  ∀ n, P7185393173691942484.a n = A160845 n

end A160845

/-! ## A160845.P12279974133554421624

`A295707(A167499(n+2))-A000007(n)`
-/

namespace A160845.P12279974133554421624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A167499 (n + 2)).toNat - A000007 n

end

end A160845.P12279974133554421624

namespace A160845

/-- `A295707(A167499(n+2))-A000007(n)` -/
def P12279974133554421624.Spec : Prop :=
  ∀ n, P12279974133554421624.a n = A160845 n

end A160845

/-! ## A160845.P13225370345957263965

`A057427(n)*A295707(A167499(n+2))`
-/

namespace A160845.P13225370345957263965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A295707 (A167499 (n + 2)).toNat

end

end A160845.P13225370345957263965

namespace A160845

/-- `A057427(n)*A295707(A167499(n+2))` -/
def P13225370345957263965.Spec : Prop :=
  ∀ n, P13225370345957263965.a n = A160845 n

end A160845

/-! ## A160845.P11746318131122468739

`A295707(A046691(n+2))%A010021(n)`
-/

namespace A160845.P11746318131122468739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295707 (A046691 (n + 2)).toNat) (A010021 n)

end

end A160845.P11746318131122468739

namespace A160845

/-- `A295707(A046691(n+2))%A010021(n)` -/
def P11746318131122468739.Spec : Prop :=
  ∀ n, P11746318131122468739.a n = A160845 n

end A160845

/-! ## A160845.P4397210302430483334

`char[A116966(n)]*A295707(A167499(n+2))`
-/

namespace A160845.P4397210302430483334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A167499 (n + 2)).toNat

end

end A160845.P4397210302430483334

namespace A160845

/-- `char[A116966(n)]*A295707(A167499(n+2))` -/
def P4397210302430483334.Spec : Prop :=
  ∀ n, P4397210302430483334.a n = A160845 n

end A160845

/-! ## A160845.P13959744966541061530

`char[A133310(n)]*A295707(A167499(n+2))`
-/

namespace A160845.P13959744966541061530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A167499 (n + 2)).toNat

end

end A160845.P13959744966541061530

namespace A160845

/-- `char[A133310(n)]*A295707(A167499(n+2))` -/
def P13959744966541061530.Spec : Prop :=
  ∀ n, P13959744966541061530.a n = A160845 n

end A160845

/-! ## A160845.P171868497043718076

`A295707(A167499(n+2))-A008683((n+1)²)`
-/

namespace A160845.P171868497043718076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A167499 (n + 2)).toNat - A008683 ((n + 1) ^ 2)

end

end A160845.P171868497043718076

namespace A160845

/-- `A295707(A167499(n+2))-A008683((n+1)²)` -/
def P171868497043718076.Spec : Prop :=
  ∀ n, P171868497043718076.a n = A160845 n

end A160845

/-! ## A160845.P12778464433223436883

`A000040(n+1)%2*A295707(A046691(n+2))`
-/

namespace A160845.P12778464433223436883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A295707 (A046691 (n + 2)).toNat

end

end A160845.P12778464433223436883

namespace A160845

/-- `A000040(n+1)%2*A295707(A046691(n+2))` -/
def P12778464433223436883.Spec : Prop :=
  ∀ n, P12778464433223436883.a n = A160845 n

end A160845

/-! ## A160845.P10939768998285190338

`A295707(A167499(n+2))-and(1, A000010(n+2))`
-/

namespace A160845.P10939768998285190338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A167499 (n + 2)).toNat - Int.land 1 (A000010 (n + 2))

end

end A160845.P10939768998285190338

namespace A160845

/-- `A295707(A167499(n+2))-and(1, A000010(n+2))` -/
def P10939768998285190338.Spec : Prop :=
  ∀ n, P10939768998285190338.a n = A160845 n

end A160845

/-! ## A160845.P12112324734003452708

`A295707(A167499(n+2))-A000045(C(2, n+2))`
-/

namespace A160845.P12112324734003452708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A167499 (n + 2)).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A160845.P12112324734003452708

namespace A160845

/-- `A295707(A167499(n+2))-A000045(C(2, n+2))` -/
def P12112324734003452708.Spec : Prop :=
  ∀ n, P12112324734003452708.a n = A160845 n

end A160845

/-! ## A160845.P10866709602106625370

`A001221(A000015(n+1))*A295707(A167499(n+2))`
-/

namespace A160845.P10866709602106625370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000015 (n + 1)).toNat * A295707 (A167499 (n + 2)).toNat

end

end A160845.P10866709602106625370

namespace A160845

/-- `A001221(A000015(n+1))*A295707(A167499(n+2))` -/
def P10866709602106625370.Spec : Prop :=
  ∀ n, P10866709602106625370.a n = A160845 n

end A160845

/-! ## A160845.P5637894075589928097

`A008683(2*A000040(n+1))*A295707(A167499(n+2))`
-/

namespace A160845.P5637894075589928097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat * A295707 (A167499 (n + 2)).toNat

end

end A160845.P5637894075589928097

namespace A160845

/-- `A008683(2*A000040(n+1))*A295707(A167499(n+2))` -/
def P5637894075589928097.Spec : Prop :=
  ∀ n, P5637894075589928097.a n = A160845 n

end A160845

/-!
# A160846: Number of lines through at least 2 points of a 6 X n grid of points.

The programs for A160846, there is no canonical definition to state claims against.
-/

/-! ## A160846.P14022946025928077133

`A295707(∑[n+5]+5)%Δ[n^4]`
-/

namespace A160846.P14022946025928077133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295707 (∑ j ∈ Finset.range (n + 1), f1 j + 5)) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A160846.P14022946025928077133

/-! ## A160846.P3811445233097034208

`A295707(C(n+5, 2)+n)-C(2, n+2)`
-/

namespace A160846.P3811445233097034208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (Nat.choose (n + 5) 2 + n) - (Nat.choose 2 (n + 2) : ℤ)

end

end A160846.P3811445233097034208

/-! ## A160846.P13429797864436792382

`A295707(A052905(n+2))-floor(acot(n))`
-/

namespace A160846.P13429797864436792382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A052905 (n + 2)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A160846.P13429797864436792382

/-! ## A160846.P5840444094069123159

`A295707(∑[n+5]+5)-A000007(n)`
-/

namespace A160846.P5840444094069123159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (∑ j ∈ Finset.range (n + 1), f1 j + 5) - A000007 n

end

end A160846.P5840444094069123159

/-! ## A160846.P2725020909860591716

`record[A103452(n+7)*A295707(n+14)]`
-/

namespace A160846.P2725020909860591716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (n + 7) * A295707 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160846.P2725020909860591716

/-! ## A160846.P16927146744400454772

`A000040(n+1)%2*A295707(∑[n+5]+5)`
-/

namespace A160846.P16927146744400454772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A295707 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A160846.P16927146744400454772

/-! ## A160846.P13136050372994120554

`A057427(n)*A295707(A052905(n+2))`
-/

namespace A160846.P13136050372994120554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A295707 (A052905 (n + 2)).toNat

end

end A160846.P13136050372994120554

/-! ## A160846.P1516468568228206277

`xor(A000007(n), A295707(A052905(n+2)))`
-/

namespace A160846.P1516468568228206277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A295707 (A052905 (n + 2)).toNat)

end

end A160846.P1516468568228206277

/-! ## A160846.P2748805021798656904

`char[A065648(n)]*A295707(A052905(n+2))`
-/

namespace A160846.P2748805021798656904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A052905 (n + 2)).toNat

end

end A160846.P2748805021798656904

/-! ## A160846.P10707567914239393068

`char[A263449(n)]*A295707(A052905(n+2))`
-/

namespace A160846.P10707567914239393068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A052905 (n + 2)).toNat

end

end A160846.P10707567914239393068

/-! ## A160846.P4052171539111299302

`char[A344180(n)]*A295707(A052905(n+2))`
-/

namespace A160846.P4052171539111299302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A052905 (n + 2)).toNat

end

end A160846.P4052171539111299302

/-! ## A160846.P1937879566754727531

`char[A003602(n+1)]*A295707(A052905(n+2))`
-/

namespace A160846.P1937879566754727531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A052905 (n + 2)).toNat

end

end A160846.P1937879566754727531

/-! ## A160846.P2272923320990992107

`A295707(A052905(n+2))-val(A030430(n+1), 11)`
-/

namespace A160846.P2272923320990992107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A052905 (n + 2)).toNat - (SequenceMachineLib.valuation (A030430 (n + 1)).toNat 11 : ℤ)

end

end A160846.P2272923320990992107

/-! ## A160846.P17039368115252090327

`A295707(A052905(n+2))-val(A179208(n+1), 11)`
-/

namespace A160846.P17039368115252090327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A052905 (n + 2)).toNat - (SequenceMachineLib.valuation (A179208 (n + 1)).toNat 11 : ℤ)

end

end A160846.P17039368115252090327

/-! ## A160846.P9110224255718704755

`A295707(A052905(n+2))+A008683(2*(n+1)²)`
-/

namespace A160846.P9110224255718704755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A052905 (n + 2)).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A160846.P9110224255718704755

/-! ## A160846.P7408326305098869475

`A001222(A027746(n+1))*A295707(∑[n+5]+5)`
-/

namespace A160846.P7408326305098869475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A027746 (n + 1)).toNat * A295707 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A160846.P7408326305098869475

/-! ## A160846.P9819253951903442920

`A295707(A052905(n+2))-A319453(A000217(n))`
-/

namespace A160846.P9819253951903442920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A052905 (n + 2)).toNat - A319453 (A000217 n).toNat

end

end A160846.P9819253951903442920

/-!
# A160847: Number of lines through at least 2 points of a 7 X n grid of points.

The programs for A160847, there is no canonical definition to state claims against.
-/

/-! ## A160847.P9307506914750948273

`A295707(C(n+6, 2)+n)-C(2, n+2)`
-/

namespace A160847.P9307506914750948273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (Nat.choose (n + 6) 2 + n) - (Nat.choose 2 (n + 2) : ℤ)

end

end A160847.P9307506914750948273

/-! ## A160847.P7287123659826376213

`A295707(A000217(n+6)-6)-floor(acot(n))`
-/

namespace A160847.P7287123659826376213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 6) - 6).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A160847.P7287123659826376213

/-! ## A160847.P6899966601791082377

`A295707(A000124(n+5)+6)-C(2, n+2)`
-/

namespace A160847.P6899966601791082377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000124 (n + 5) + 6).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A160847.P6899966601791082377

/-! ## A160847.P17484674810201684116

`A295707(A000217(n+6)-6)-A000007(n)`
-/

namespace A160847.P17484674810201684116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 6) - 6).toNat - A000007 n

end

end A160847.P17484674810201684116

/-! ## A160847.P9260449234547702767

`A057427(n)*A295707(A000217(n+6)-6)`
-/

namespace A160847.P9260449234547702767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A295707 (A000217 (n + 6) - 6).toNat

end

end A160847.P9260449234547702767

/-! ## A160847.P1666311763123458294

`and(A057428(n), A295707(A000217(n+6)-6))`
-/

namespace A160847.P1666311763123458294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A295707 (A000217 (n + 6) - 6).toNat)

end

end A160847.P1666311763123458294

/-! ## A160847.P3149239419590516345

`char[A007306(n)]*A295707(A000217(n+6)-6)`
-/

namespace A160847.P3149239419590516345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A000217 (n + 6) - 6).toNat

end

end A160847.P3149239419590516345

/-! ## A160847.P4766646086348910036

`A295707(A000217(n+6)-6)-and(1, A000122(n))`
-/

namespace A160847.P4766646086348910036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 6) - 6).toNat - Int.land 1 (A000122 n)

end

end A160847.P4766646086348910036

/-! ## A160847.P8509581402773814170

`A295707(A000217(n+6)-6)-∏{d}[n, A001222(#)]`
-/

namespace A160847.P8509581402773814170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 6) - 6).toNat - ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A160847.P8509581402773814170

/-! ## A160847.P8975624832015766557

`A000040(n+1)%2*A295707(A000217(n+6)-6)`
-/

namespace A160847.P8975624832015766557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A295707 (A000217 (n + 6) - 6).toNat

end

end A160847.P8975624832015766557

/-! ## A160847.P10420625977451339754

`A295707(A000217(n+6)-6)-A001221(ceil(2/(n+1)))`
-/

namespace A160847.P10420625977451339754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 6) - 6).toNat - A001221 ⌈2 / (n + 1 : ℚ)⌉.toNat

end

end A160847.P10420625977451339754

/-! ## A160847.P13584782091057657827

`A000045(ceil(n/(n+1)))*A295707(A000217(n+6)-6)`
-/

namespace A160847.P13584782091057657827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A295707 (A000217 (n + 6) - 6).toNat

end

end A160847.P13584782091057657827

/-! ## A160847.P3734855302566116972

`A295707(A000217(n+6)-6)%record[A020639(n+1)²]²`
-/

namespace A160847.P3734855302566116972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295707 (A000217 (n + 6) - 6).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2)

end

end A160847.P3734855302566116972

/-! ## A160847.P15111354487304912184

`A295707(A000217(n+6)-6)-A008683(A000118(n))`
-/

namespace A160847.P15111354487304912184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 6) - 6).toNat - A008683 (A000118 n).toNat

end

end A160847.P15111354487304912184

/-! ## A160847.P13382612729647898823

`A295707(A000217(n+6)-6)-A008683(A004011(n))`
-/

namespace A160847.P13382612729647898823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 6) - 6).toNat - A008683 (A004011 n).toNat

end

end A160847.P13382612729647898823

/-! ## A160847.P17806701080954131996

`A295707(A000217(n+6)-6)-A008683(A008574(n))`
-/

namespace A160847.P17806701080954131996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 6) - 6).toNat - A008683 (A008574 n).toNat

end

end A160847.P17806701080954131996

/-! ## A160847.P18186485130884609747

`A001221(A062383(n))*A295707(A000217(n+6)-6)`
-/

namespace A160847.P18186485130884609747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A062383 n).toNat * A295707 (A000217 (n + 6) - 6).toNat

end

end A160847.P18186485130884609747

/-! ## A160847.P3252431048181850435

`A008683(2*A000040(n+1))*A295707(A000217(n+6)-6)`
-/

namespace A160847.P3252431048181850435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat * A295707 (A000217 (n + 6) - 6).toNat

end

end A160847.P3252431048181850435

/-! ## A160847.P8396874706119765917

`A001221(2*A000040(n+1))+A295707(A000217(n+6)-6)-2`
-/

namespace A160847.P8396874706119765917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A000040 (n + 1)).toNat + (A295707 (A000217 (n + 6) - 6).toNat - 2)

end

end A160847.P8396874706119765917

/-!
# A160848: Number of lines through at least 2 points of an 8 X n grid of points.

The programs for A160848, there is no canonical definition to state claims against.
-/

/-! ## A160848.P1409423617957770669

`A295707(A055998(n+5)-4)-floor(acot(n))`
-/

namespace A160848.P1409423617957770669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A055998 (n + 5) - 4).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A160848.P1409423617957770669

/-! ## A160848.P9683070637039358220

`A295707(A000124(n+7)-8)-floor(acot(n))`
-/

namespace A160848.P9683070637039358220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000124 (n + 7) - 8).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A160848.P9683070637039358220

/-! ## A160848.P1692104215982053865

`A295707(A167499(n+5)+3)-C(2, n+2)`
-/

namespace A160848.P1692104215982053865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A167499 (n + 5) + 3).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A160848.P1692104215982053865

/-! ## A160848.P4611898598584211695

`A295707(A055998(n+5)-4)-A000007(n)`
-/

namespace A160848.P4611898598584211695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A055998 (n + 5) - 4).toNat - A000007 n

end

end A160848.P4611898598584211695

/-! ## A160848.P7214521730469029166

`A057427(n)*A295707(A055998(n+5)-4)`
-/

namespace A160848.P7214521730469029166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A295707 (A055998 (n + 5) - 4).toNat

end

end A160848.P7214521730469029166

/-! ## A160848.P9561593519177100008

`A295707(A055998(n+5)-4)%A004009(n)`
-/

namespace A160848.P9561593519177100008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295707 (A055998 (n + 5) - 4).toNat) (A004009 n)

end

end A160848.P9561593519177100008

/-! ## A160848.P14126738688108956766

`char[A087507(n)]*A295707(A055998(n+5)-4)`
-/

namespace A160848.P14126738688108956766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A055998 (n + 5) - 4).toNat

end

end A160848.P14126738688108956766

/-! ## A160848.P13967461020878837089

`char[A126759(n)]*A295707(A055998(n+5)-4)`
-/

namespace A160848.P13967461020878837089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A055998 (n + 5) - 4).toNat

end

end A160848.P13967461020878837089

/-! ## A160848.P14483328248417723184

`A295707(A055998(n+5)-4)-A000122(n)%2`
-/

namespace A160848.P14483328248417723184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A055998 (n + 5) - 4).toNat - Int.tmod (A000122 n) 2

end

end A160848.P14483328248417723184

/-! ## A160848.P4897180329521494974

`and(A000035(n)-2, A295707(A055998(n+5)-4))`
-/

namespace A160848.P4897180329521494974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000035 n - 2) (A295707 (A055998 (n + 5) - 4).toNat)

end

end A160848.P4897180329521494974

/-! ## A160848.P13128282912778358095

`and(A000034(n)-3, A295707(A055998(n+5)-4))`
-/

namespace A160848.P13128282912778358095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n - 3) (A295707 (A055998 (n + 5) - 4).toNat)

end

end A160848.P13128282912778358095

/-! ## A160848.P1024437730103563199

`char[A003602(n+1)]*A295707(A055998(n+5)-4)`
-/

namespace A160848.P1024437730103563199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A055998 (n + 5) - 4).toNat

end

end A160848.P1024437730103563199

/-! ## A160848.P6674790628883920090

`char[A003963(n+1)]*A295707(A055998(n+5)-4)`
-/

namespace A160848.P6674790628883920090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A055998 (n + 5) - 4).toNat

end

end A160848.P6674790628883920090

/-! ## A160848.P12729667507352213528

`char[A032742(n+1)]*A295707(A055998(n+5)-4)`
-/

namespace A160848.P12729667507352213528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A055998 (n + 5) - 4).toNat

end

end A160848.P12729667507352213528

/-! ## A160848.P14188073961188332641

`A000040(n+1)%2*A295707(A055998(n+5)-4)`
-/

namespace A160848.P14188073961188332641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A295707 (A055998 (n + 5) - 4).toNat

end

end A160848.P14188073961188332641

/-! ## A160848.P9559994634287868022

`A295707(A055998(n+5)-4)-and(1, A000010(n+2))`
-/

namespace A160848.P9559994634287868022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A055998 (n + 5) - 4).toNat - Int.land 1 (A000010 (n + 2))

end

end A160848.P9559994634287868022

/-! ## A160848.P10825011852653526990

`A295707(A055998(n+5)-4)-A000045(C(2, n+2))`
-/

namespace A160848.P10825011852653526990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A055998 (n + 5) - 4).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A160848.P10825011852653526990

/-! ## A160848.P8118014922765222691

`n^A008683((n+1)²)*A295707(A055998(n+5)-4)`
-/

namespace A160848.P8118014922765222691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A008683 ((n + 1) ^ 2) : ℤ) * (A295707 (A055998 (n + 5) - 4).toNat : ℚ)

end

end A160848.P8118014922765222691

/-! ## A160848.P9968639182051862622

`A001221(A001316(n))*A295707(A055998(n+5)-4)`
-/

namespace A160848.P9968639182051862622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat * A295707 (A055998 (n + 5) - 4).toNat

end

end A160848.P9968639182051862622

/-!
# A160849: Number of lines through at least 2 points of a 9 X n grid of points.

The programs for A160849, there is no canonical definition to state claims against.
-/

/-! ## A160849.P6098364645585938213

`A295707(A000217(n+8)-8)-floor(acot(n))`
-/

namespace A160849.P6098364645585938213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 8) - 8).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A160849.P6098364645585938213

/-! ## A160849.P6661901265384364369

`A295707(A000217(n+8)-8)-A000007(n)`
-/

namespace A160849.P6661901265384364369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 8) - 8).toNat - A000007 n

end

end A160849.P6661901265384364369

/-! ## A160849.P4772991217600843782

`A057427(n)*A295707(A000217(n+8)-8)`
-/

namespace A160849.P4772991217600843782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A295707 (A000217 (n + 8) - 8).toNat

end

end A160849.P4772991217600843782

/-! ## A160849.P7458571721162872226

`A295707(A000217(n+8)-8)%A151989(n)`
-/

namespace A160849.P7458571721162872226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295707 (A000217 (n + 8) - 8).toNat) (A151989 n)

end

end A160849.P7458571721162872226

/-! ## A160849.P381377208647666933

`and(A057428(n), A295707(A000217(n+8)-8))`
-/

namespace A160849.P381377208647666933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A295707 (A000217 (n + 8) - 8).toNat)

end

end A160849.P381377208647666933

/-! ## A160849.P10220968275757556419

`A073424(∑[n])*A295707(A000217(n+8)-8)`
-/

namespace A160849.P10220968275757556419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (∑ j ∈ Finset.range (n + 1), f1 j) * A295707 (A000217 (n + 8) - 8).toNat

end

end A160849.P10220968275757556419

/-! ## A160849.P10388829952421137837

`A295707(A000217(n+8)-8)-A000038(n)/2`
-/

namespace A160849.P10388829952421137837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295707 (A000217 (n + 8) - 8).toNat : ℚ) - (A000038 n : ℚ) / 2

end

end A160849.P10388829952421137837

/-! ## A160849.P13021058489670153229

`A295707(A000217(n+8)-8)-A224822(n)%2`
-/

namespace A160849.P13021058489670153229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 8) - 8).toNat - Int.tmod (A224822 n) 2

end

end A160849.P13021058489670153229

/-! ## A160849.P2140697970416552352

`A295707(A000217(n+8)-8)+n-A028310(n)`
-/

namespace A160849.P2140697970416552352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 8) - 8).toNat + ((n : ℤ) - A028310 n)

end

end A160849.P2140697970416552352

/-! ## A160849.P1305679882508426588

`A295707(A000217(n+8)-8)-A008683((n+1)²)`
-/

namespace A160849.P1305679882508426588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 8) - 8).toNat - A008683 ((n + 1) ^ 2)

end

end A160849.P1305679882508426588

/-! ## A160849.P8143720500197019457

`(n-log2(A011782(n)))*A295707(A000217(n+8)-8)`
-/

namespace A160849.P8143720500197019457
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) - Real.logb 2 (A011782 n : ℝ)) * (A295707 (A000217 (n + 8) - 8).toNat : ℝ)

end

end A160849.P8143720500197019457

/-! ## A160849.P2656835639952151832

`A295707(A000217(n+8)-8)+n-A193739(∑[n])`
-/

namespace A160849.P2656835639952151832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 8) - 8).toNat + ((n : ℤ) - A193739 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A160849.P2656835639952151832

/-! ## A160849.P17431740066822221277

`and(1, A000040(n+1))*A295707(A000217(n+8)-8)`
-/

namespace A160849.P17431740066822221277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A295707 (A000217 (n + 8) - 8).toNat

end

end A160849.P17431740066822221277

/-! ## A160849.P1713945736695223577

`A295707(A000217(n+8)-8)-A000045(C(2, n+2))`
-/

namespace A160849.P1713945736695223577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 8) - 8).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A160849.P1713945736695223577

/-! ## A160849.P9416722352614016014

`floor(A295707(A000217(n+8)-8)/A014963(9*n+3))`
-/

namespace A160849.P9416722352614016014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A295707 (A000217 (n + 8) - 8).toNat : ℚ) / (A014963 (9 * n + 3) : ℚ)⌋

end

end A160849.P9416722352614016014

/-! ## A160849.P13893309404830361393

`A035931(A035931(n))*A295707(A000217(n+8)-8)`
-/

namespace A160849.P13893309404830361393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 (A035931 n).toNat * A295707 (A000217 (n + 8) - 8).toNat

end

end A160849.P13893309404830361393

/-! ## A160849.P14613900814859138352

`A059841(A237709(n+1))*A295707(A000217(n+8)-8)`
-/

namespace A160849.P14613900814859138352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A237709 (n + 1)).toNat * A295707 (A000217 (n + 8) - 8).toNat

end

end A160849.P14613900814859138352

/-! ## A160849.P17852560388521789932

`A295707(A000217(n+8)-8)-A001222(A014963(4*n+2))`
-/

namespace A160849.P17852560388521789932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 8) - 8).toNat - A001222 (A014963 (4 * n + 2)).toNat

end

end A160849.P17852560388521789932

/-!
# A160850: Number of lines through at least 2 points of a 10 X n grid of points.

The programs for A160850, there is no canonical definition to state claims against.
-/

/-! ## A160850.P11179682420474899001

`A295707(A000217(n+9)-9)-floor(acot(n))`
-/

namespace A160850.P11179682420474899001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 9) - 9).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A160850.P11179682420474899001

/-! ## A160850.P16573922446118018050

`A295707(A000217(n+9)-9)-A000007(n)`
-/

namespace A160850.P16573922446118018050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 9) - 9).toNat - A000007 n

end

end A160850.P16573922446118018050

/-! ## A160850.P4444050653700686389

`A057427(n)*A295707(A000217(n+9)-9)`
-/

namespace A160850.P4444050653700686389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A295707 (A000217 (n + 9) - 9).toNat

end

end A160850.P4444050653700686389

/-! ## A160850.P15538550913774790217

`char[A007306(n)]*A295707(A000217(n+9)-9)`
-/

namespace A160850.P15538550913774790217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A000217 (n + 9) - 9).toNat

end

end A160850.P15538550913774790217

/-! ## A160850.P1869549578304586847

`A019426(2*n)*A295707(A000217(n+9)-9)`
-/

namespace A160850.P1869549578304586847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n) * A295707 (A000217 (n + 9) - 9).toNat

end

end A160850.P1869549578304586847

/-! ## A160850.P14125323432440458832

`A295707(A000217(n+9)-9)-A008683((n+1)²)`
-/

namespace A160850.P14125323432440458832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 9) - 9).toNat - A008683 ((n + 1) ^ 2)

end

end A160850.P14125323432440458832

/-! ## A160850.P7707605040547556625

`char[A026338(n+1)]*A295707(A000217(n+9)-9)`
-/

namespace A160850.P7707605040547556625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026338 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A000217 (n + 9) - 9).toNat

end

end A160850.P7707605040547556625

/-! ## A160850.P14236990633707179468

`char[A026342(n+1)]*A295707(A000217(n+9)-9)`
-/

namespace A160850.P14236990633707179468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026342 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A000217 (n + 9) - 9).toNat

end

end A160850.P14236990633707179468

/-! ## A160850.P12712239690667665269

`char[A026346(n+1)]*A295707(A000217(n+9)-9)`
-/

namespace A160850.P12712239690667665269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026346 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A000217 (n + 9) - 9).toNat

end

end A160850.P12712239690667665269

/-! ## A160850.P9749024340867883972

`char[A026350(n+1)]*A295707(A000217(n+9)-9)`
-/

namespace A160850.P9749024340867883972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A000217 (n + 9) - 9).toNat

end

end A160850.P9749024340867883972

/-! ## A160850.P7500020536082261846

`char[A198388(n+1)]*A295707(A000217(n+9)-9)`
-/

namespace A160850.P7500020536082261846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198388 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295707 (A000217 (n + 9) - 9).toNat

end

end A160850.P7500020536082261846

/-! ## A160850.P5661914213164819634

`A000040(n+1)%2*A295707(A000217(n+9)-9)`
-/

namespace A160850.P5661914213164819634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A295707 (A000217 (n + 9) - 9).toNat

end

end A160850.P5661914213164819634

/-! ## A160850.P94402113813083354

`A295707(A000217(n+9)-9)-A000045(C(2, n+2))`
-/

namespace A160850.P94402113813083354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A000217 (n + 9) - 9).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A160850.P94402113813083354

/-! ## A160850.P909499077276690267

`2*n+A295707(A000217(n+9)-9)-A004277(n)`
-/

namespace A160850.P909499077276690267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A295707 (A000217 (n + 9) - 9).toNat - A004277 n)

end

end A160850.P909499077276690267

/-! ## A160850.P17001869860976172355

`A295707(A000217(n+9)-9)-log2(A014963(4*n+2))`
-/

namespace A160850.P17001869860976172355
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295707 (A000217 (n + 9) - 9).toNat : ℝ) - Real.logb 2 (A014963 (4 * n + 2) : ℝ)

end

end A160850.P17001869860976172355

/-!
# A160852: Chebyshev transform of A107841.

The programs for A160852, there is no canonical definition to state claims against.
-/

/-! ## A160852.P3751579702947166460

`A003558(A099713(n))`
-/

namespace A160852.P3751579702947166460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A099713 n).toNat

end

end A160852.P3751579702947166460

/-!
# A160855: a(n) is the smallest positive integer not occurring earlier in the sequence such that Sum_{k=1..n} a(k) written in binary contains binary n as a substring.

The programs for A160855, there is no canonical definition to state claims against.
-/

/-! ## A160855.P11166313984003070212

`Δ[A160856(floor(acot(n)²+n))%(n+1)²]`
-/

namespace A160855.P11166313984003070212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160856 ⌊SequenceMachineLib.acot (n : ℝ) ^ 2 + (n : ℝ)⌋.toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160855.P11166313984003070212

/-! ## A160855.P13797568279186249419

`Δ[A160856(A028310(n))%(n+1)²]`
-/

namespace A160855.P13797568279186249419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160856 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160855.P13797568279186249419

/-! ## A160855.P898982903012326450

`A000007(n)+Δ[A160856(A028310(n))]`
-/

namespace A160855.P898982903012326450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160856 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A160855.P898982903012326450

/-! ## A160855.P6437895660236499842

`Δ[A160856(A028310(n))+A057427(n)]`
-/

namespace A160855.P6437895660236499842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160856 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160855.P6437895660236499842

/-! ## A160855.P16251389354636295882

`Δ[A160856(A028310(n))-A054977(n)]`
-/

namespace A160855.P16251389354636295882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160856 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160855.P16251389354636295882

/-! ## A160855.P351024064975729887

`Δ[A160856(A028310(n))-A057428(n)]`
-/

namespace A160855.P351024064975729887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160856 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160855.P351024064975729887

/-! ## A160855.P5451132180646969179

`A036987(2*n)+Δ[A160856(A028310(n))]`
-/

namespace A160855.P5451132180646969179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160856 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (f1 (n + 1) - f1 n)

end

end A160855.P5451132180646969179

/-! ## A160855.P2125187861046665708

`A010051(2*(n+1))+Δ[A160856(A028310(n))]`
-/

namespace A160855.P2125187861046665708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160856 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A160855.P2125187861046665708

/-! ## A160855.P12486314449824114013

`A160856(n+1)+A000007(n)-A160856(A028310(n))`
-/

namespace A160855.P12486314449824114013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160856 (n + 1) + (A000007 n - A160856 (A028310 n).toNat)

end

end A160855.P12486314449824114013

/-!
# A160856: a(1)=1. a(n) = the smallest integer > a(n-1) such that a(n) written in binary contains binary n as a substring, and such that (for n>=2) each value a(k)-a(k-1), for 2<=k<=n, is unique.

The programs for A160856, there is no canonical definition to state claims against.
-/

/-! ## A160856.P6817045182052872864

`∑[A160855(n+1)]`
-/

namespace A160856.P6817045182052872864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160856.P6817045182052872864

/-! ## A160856.P3771241818978634844

`A160855(abs(1-n)+2)+a(n-1)` with `a(0)=1`
-/

namespace A160856.P3771241818978634844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160855 (|1 - (n : ℤ)| + 2).toNat + a (n - 1)

end

end A160856.P3771241818978634844

/-!
# A160858: Primes p such that p^3-p^2-1 and p^3-p^2+1 are prime.

The programs for A160858, there is no canonical definition to state claims against.
-/

/-! ## A160858.P11439151285801225256

`p?[A111503(n+1)]`
-/

namespace A160858.P11439151285801225256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160858.P11439151285801225256

/-! ## A160858.P18377812882932894934

`p?[record[A111503(A291766(n))]]`
-/

namespace A160858.P18377812882932894934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111503 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160858.P18377812882932894934

/-! ## A160858.P14739830365050526638

`p?[record[A111503(A133310(n))]]`
-/

namespace A160858.P14739830365050526638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111503 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160858.P14739830365050526638

/-! ## A160858.P6020799655827601386

`∩[A045331(n+1), A111503(n+1)]`
-/

namespace A160858.P6020799655827601386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160858.P6020799655827601386

/-! ## A160858.P11047858272101886341

`∩[A040116(n+1), A111503(n+1)]`
-/

namespace A160858.P11047858272101886341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160858.P11047858272101886341

/-! ## A160858.P14025259592375261515

`∩[A111503(n+1), A042990(n)]`
-/

namespace A160858.P14025259592375261515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160858.P14025259592375261515

/-! ## A160858.P1028632686754214318

`∩[A045311(n+1), A111503(n+1)]`
-/

namespace A160858.P1028632686754214318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160858.P1028632686754214318

/-! ## A160858.P1666188666452720923

`∩[A000040(n+1), A111503(n+1)]`
-/

namespace A160858.P1666188666452720923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160858.P1666188666452720923

/-! ## A160858.P17677469634743912668

`∩[A008578(n+1), A111503(n+1)]`
-/

namespace A160858.P17677469634743912668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160858.P17677469634743912668

/-! ## A160858.P7277208095730299668

`∩[A045319(n+1), A111503(n+1)]`
-/

namespace A160858.P7277208095730299668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160858.P7277208095730299668

/-!
# A160859: Primes p such that p^3 + p^2 - 1 and p^3 + p^2 + 1 are prime.

The programs for A160859, there is no canonical definition to state claims against.
-/

/-! ## A160859.P12070534285901536043

`∩[A088796(n+1), A154732(n+1)]`
-/

namespace A160859.P12070534285901536043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P12070534285901536043

/-! ## A160859.P15110797021195451414

`p?[A154732(n+1)]`
-/

namespace A160859.P15110797021195451414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160859.P15110797021195451414

/-! ## A160859.P7167452753024329454

`∩[A003627(n+1), A154732(n+1)]`
-/

namespace A160859.P7167452753024329454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P7167452753024329454

/-! ## A160859.P2234965875041257431

`∩[A045309(n+1), A154732(n+1)]`
-/

namespace A160859.P2234965875041257431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P2234965875041257431

/-! ## A160859.P16383387043277457606

`∩[A073485(n+1), A154732(n+1)]`
-/

namespace A160859.P16383387043277457606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P16383387043277457606

/-! ## A160859.P4334606871693942272

`∩[A049596(n+1), A154732(n+1)]`
-/

namespace A160859.P4334606871693942272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P4334606871693942272

/-! ## A160859.P4466870421546487019

`∩[A040028(n+1), A154732(n+1)]`
-/

namespace A160859.P4466870421546487019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P4466870421546487019

/-! ## A160859.P6800020526652711674

`∩[A040036(n+1), A154732(n+1)]`
-/

namespace A160859.P6800020526652711674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P6800020526652711674

/-! ## A160859.P7359297954218342239

`∩[A040044(n+1), A154732(n+1)]`
-/

namespace A160859.P7359297954218342239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P7359297954218342239

/-! ## A160859.P7831129715334953339

`∩[A040046(n+1), A154732(n+1)]`
-/

namespace A160859.P7831129715334953339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P7831129715334953339

/-! ## A160859.P5813532425902220784

`∩[A040049(n+1), A154732(n+1)]`
-/

namespace A160859.P5813532425902220784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P5813532425902220784

/-! ## A160859.P13625266105824669760

`∩[A040054(n+1), A154732(n+1)]`
-/

namespace A160859.P13625266105824669760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P13625266105824669760

/-! ## A160859.P3010619637157186613

`∩[A040060(n+1), A154732(n+1)]`
-/

namespace A160859.P3010619637157186613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P3010619637157186613

/-! ## A160859.P14322507451478162342

`∩[A040062(n+1), A154732(n+1)]`
-/

namespace A160859.P14322507451478162342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P14322507451478162342

/-! ## A160859.P7327361076846720298

`∩[A040065(n+1), A154732(n+1)]`
-/

namespace A160859.P7327361076846720298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P7327361076846720298

/-! ## A160859.P3792561329757191506

`∩[A040078(n+1), A154732(n+1)]`
-/

namespace A160859.P3792561329757191506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P3792561329757191506

/-! ## A160859.P5767576926081573368

`∩[A040083(n+1), A154732(n+1)]`
-/

namespace A160859.P5767576926081573368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P5767576926081573368

/-! ## A160859.P1491758776315248707

`∩[A040085(n+1), A154732(n+1)]`
-/

namespace A160859.P1491758776315248707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P1491758776315248707

/-! ## A160859.P16265281411808447296

`∩[A040087(n+1), A154732(n+1)]`
-/

namespace A160859.P16265281411808447296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P16265281411808447296

/-! ## A160859.P17215674620321834544

`∩[A040089(n+1), A154732(n+1)]`
-/

namespace A160859.P17215674620321834544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160859.P17215674620321834544

/-!
# A160861: The digits of each number can be divided into two groups which have the same product.

The programs for A160861, there is no canonical definition to state claims against.
-/

/-! ## A160861.P2030201834192829927

`∪[A067042(n+1), A387866(n+1)]`
-/

namespace A160861.P2030201834192829927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A160861.P2030201834192829927

/-! ## A160861.P2293110706992725770

`∪[A226032(n+1), A387866(n+1)]`
-/

namespace A160861.P2293110706992725770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A160861.P2293110706992725770

/-!
# A160862: a(n) = length of period of transformation sum-digit-square: given a number m(k) define m(k+1) to be the sum of the squares of the decimal digits of m(k) and iterate until m(s) is found such that m(s)=m(k) with k

The programs for A160862, there is no canonical definition to state claims against.
-/

/-! ## A160862.P4175623603772155162

`A193995(n+1)-A072839(A049084(A119203(n+1)))`
-/

namespace A160862.P4175623603772155162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193995 (n + 1) - A072839 (A049084 (A119203 (n + 1)).toNat).toNat

end

end A160862.P4175623603772155162

/-! ## A160862.P17448626785136442764

`A193995(n+1)-A021913(A183983(n+1))`
-/

namespace A160862.P17448626785136442764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193995 (n + 1) - A021913 (A183983 (n + 1)).toNat

end

end A160862.P17448626785136442764

/-! ## A160862.P13469475843683868578

`A099645(n+1)+A031176(n+1)-A021913(A183983(n+1))`
-/

namespace A160862.P13469475843683868578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099645 (n + 1) + A031176 (n + 1) - A021913 (A183983 (n + 1)).toNat

end

end A160862.P13469475843683868578

/-! ## A160862.P195547303732463746

`A193995(A003132(n+1))%A247132(2*n+3)`
-/

namespace A160862.P195547303732463746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193995 (A003132 (n + 1)).toNat) (A247132 (2 * n + 3))

end

end A160862.P195547303732463746

/-!
# A160869: a(n) = sigma(6^(n-1)).

The programs for A160869, the canonical program `A160869.P3155991041422948221` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160869 has offset 1).

The definition of A160869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160869.P18364177191347432388

`(2^(n+1)-1)*(3^(n+1)-1)/2`
-/

namespace A160869.P18364177191347432388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 ^ (n + 1) : ℤ) - 1) * ((3 ^ (n + 1) : ℤ) - 1) : ℚ) / 2

end

end A160869.P18364177191347432388

namespace A160869

/-- `(2^(n+1)-1)*(3^(n+1)-1)/2` -/
def P18364177191347432388.Spec : Prop :=
  ∀ n, P18364177191347432388.a n = (A160869 (n + 1) : ℚ)

theorem P18364177191347432388.correct : P18364177191347432388.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A160869, Nat.add_sub_cancel, A160869.P18364177191347432388.a, A160869.P3155991041422948221.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A160869, Nat.add_sub_cancel, A160869.P18364177191347432388.a, A160869.P3155991041422948221.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A160869

/-! ## A160869.P3155991041422948221

`12*a(n-1)-47*a(n-2)+72*a(n-3)-36*a(n-4)` with `a(0)=1, a(1)=12, a(2)=91, a(3)=600`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160869

/-- `12*a(n-1)-47*a(n-2)+72*a(n-3)-36*a(n-4)` -/
def P3155991041422948221.Spec : Prop :=
  ∀ n, P3155991041422948221.a n = A160869 (n + 1)

theorem P3155991041422948221.correct : P3155991041422948221.Spec := by
  intro n
  simp only [A160869, Nat.add_sub_cancel]

end A160869

/-! ## A160869.P3861965911649356244

`A000203(A000400(n))`
-/

namespace A160869.P3861965911649356244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000400 n).toNat

end

end A160869.P3861965911649356244

namespace A160869

/-- `A000203(A000400(n))` -/
def P3861965911649356244.Spec : Prop :=
  ∀ n, P3861965911649356244.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P18183631729346414537

`A036551(n+1)-A007051(n+1)`
-/

namespace A160869.P18183631729346414537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036551 (n + 1) - A007051 (n + 1)

end

end A160869.P18183631729346414537

namespace A160869

/-- `A036551(n+1)-A007051(n+1)` -/
def P18183631729346414537.Spec : Prop :=
  ∀ n, P18183631729346414537.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P16987498448406075122

`A000225(n+1)*A003462(n+1)`
-/

namespace A160869.P16987498448406075122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A003462 (n + 1)

end

end A160869.P16987498448406075122

namespace A160869

/-- `A000225(n+1)*A003462(n+1)` -/
def P16987498448406075122.Spec : Prop :=
  ∀ n, P16987498448406075122.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P4305426644979774742

`A000225(n+1)*A052993(2*n)`
-/

namespace A160869.P4305426644979774742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A052993 (2 * n)

end

end A160869.P4305426644979774742

namespace A160869

/-- `A000225(n+1)*A052993(2*n)` -/
def P4305426644979774742.Spec : Prop :=
  ∀ n, P4305426644979774742.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P8421923134919681011

`A003462(n+1)*A052551(2*n)`
-/

namespace A160869.P8421923134919681011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) * A052551 (2 * n)

end

end A160869.P8421923134919681011

namespace A160869

/-- `A003462(n+1)*A052551(2*n)` -/
def P8421923134919681011.Spec : Prop :=
  ∀ n, P8421923134919681011.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P6750245073118413032

`A003462(n+1)*A075427(2*n)`
-/

namespace A160869.P6750245073118413032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) * A075427 (2 * n)

end

end A160869.P6750245073118413032

namespace A160869

/-- `A003462(n+1)*A075427(2*n)` -/
def P6750245073118413032.Spec : Prop :=
  ∀ n, P6750245073118413032.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P6149860856999399423

`A075427(2*n)*A094025(2*n)`
-/

namespace A160869.P6149860856999399423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (2 * n) * A094025 (2 * n)

end

end A160869.P6149860856999399423

namespace A160869

/-- `A075427(2*n)*A094025(2*n)` -/
def P6149860856999399423.Spec : Prop :=
  ∀ n, P6149860856999399423.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P10932045928253535212

`A003462(n+1)*A094024(2*n+1)`
-/

namespace A160869.P10932045928253535212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) * A094024 (2 * n + 1)

end

end A160869.P10932045928253535212

namespace A160869

/-- `A003462(n+1)*A094024(2*n+1)` -/
def P10932045928253535212.Spec : Prop :=
  ∀ n, P10932045928253535212.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P12259967778833226501

`A000225(n+1)*A120463(2*n+1)`
-/

namespace A160869.P12259967778833226501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A120463 (2 * n + 1)

end

end A160869.P12259967778833226501

namespace A160869

/-- `A000225(n+1)*A120463(2*n+1)` -/
def P12259967778833226501.Spec : Prop :=
  ∀ n, P12259967778833226501.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P7234991504769590307

`A094024(2*n+1)*A094025(2*n)`
-/

namespace A160869.P7234991504769590307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 (2 * n + 1) * A094025 (2 * n)

end

end A160869.P7234991504769590307

namespace A160869

/-- `A094024(2*n+1)*A094025(2*n)` -/
def P7234991504769590307.Spec : Prop :=
  ∀ n, P7234991504769590307.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P17292480287508767545

`A006516(n+1)+A016149(n)-A003462(n+1)`
-/

namespace A160869.P17292480287508767545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) + (A016149 n - A003462 (n + 1))

end

end A160869.P17292480287508767545

namespace A160869

/-- `A006516(n+1)+A016149(n)-A003462(n+1)` -/
def P17292480287508767545.Spec : Prop :=
  ∀ n, P17292480287508767545.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P2456828749441307949

`(A094374(n)-A000392(n+1))*A003462(n+1)`
-/

namespace A160869.P2456828749441307949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094374 n - A000392 (n + 1)) * A003462 (n + 1)

end

end A160869.P2456828749441307949

namespace A160869

/-- `(A094374(n)-A000392(n+1))*A003462(n+1)` -/
def P2456828749441307949.Spec : Prop :=
  ∀ n, P2456828749441307949.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P17014791101945679182

`A000225(n+1)+A000225(n+1)*A029858(n+1)`
-/

namespace A160869.P17014791101945679182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + A000225 (n + 1) * A029858 (n + 1)

end

end A160869.P17014791101945679182

namespace A160869

/-- `A000225(n+1)+A000225(n+1)*A029858(n+1)` -/
def P17014791101945679182.Spec : Prop :=
  ∀ n, P17014791101945679182.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P17948265004602017081

`A000079(n+1)*A003462(n+1)-A003462(n+1)`
-/

namespace A160869.P17948265004602017081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A003462 (n + 1) - A003462 (n + 1)

end

end A160869.P17948265004602017081

namespace A160869

/-- `A000079(n+1)*A003462(n+1)-A003462(n+1)` -/
def P17948265004602017081.Spec : Prop :=
  ∀ n, P17948265004602017081.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P6246620268735298398

`A000225(n+1)*A007051(n+1)-A000225(n+1)`
-/

namespace A160869.P6246620268735298398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A007051 (n + 1) - A000225 (n + 1)

end

end A160869.P6246620268735298398

namespace A160869

/-- `A000225(n+1)*A007051(n+1)-A000225(n+1)` -/
def P6246620268735298398.Spec : Prop :=
  ∀ n, P6246620268735298398.a n = A160869 (n + 1)

end A160869

/-! ## A160869.P2094573377792797244

`(A094374(n+1)-A007051(n+1))*A003462(n+1)`
-/

namespace A160869.P2094573377792797244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094374 (n + 1) - A007051 (n + 1)) * A003462 (n + 1)

end

end A160869.P2094573377792797244

namespace A160869

/-- `(A094374(n+1)-A007051(n+1))*A003462(n+1)` -/
def P2094573377792797244.Spec : Prop :=
  ∀ n, P2094573377792797244.a n = A160869 (n + 1)

end A160869

/-!
# A160870: Array read by antidiagonals: T(n,k) is the number of sublattices of index n in generic k-dimensional lattice (n >= 1, k >= 1).

The programs for A160870, there is no canonical definition to state claims against.
-/

/-! ## A160870.P11682957432406413241

`A128119(A038722(n+1))`
-/

namespace A160870.P11682957432406413241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A038722 (n + 1)).toNat

end

end A160870.P11682957432406413241

/-! ## A160870.P2894656200280092383

`A128119(A061579(n)+1)`
-/

namespace A160870.P2894656200280092383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A061579 n + 1).toNat

end

end A160870.P2894656200280092383

/-! ## A160870.P15637561611311578177

`A128119(A114327(n)+1+n)`
-/

namespace A160870.P15637561611311578177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A114327 n + 1 + (n : ℤ)).toNat

end

end A160870.P15637561611311578177

/-! ## A160870.P8770936520123319927

`A128119(A093995(n+1)-n)`
-/

namespace A160870.P8770936520123319927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A160870.P8770936520123319927

/-! ## A160870.P12318258958384807917

`A128119(A002024(n+1)²-n)`
-/

namespace A160870.P12318258958384807917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128119 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A160870.P12318258958384807917

/-!
# A160871: Column 6 of array in A057004.

The programs for A160871, there is no canonical definition to state claims against.
-/

/-! ## A160871.P15423165879663992762

`A057004(A052905(n+3))`
-/

namespace A160871.P15423165879663992762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A052905 (n + 3)).toNat

end

end A160871.P15423165879663992762

/-!
# A160872: Regular coverings having dihedral voltage groups: see Kwak-Lee reference in A160870 for precise definition.

The programs for A160872, there is no canonical definition to state claims against.
-/

/-! ## A160872.P5191105674318551763

`∑{d}[floor(6^n/3), #]`
-/

namespace A160872.P5191105674318551763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 ^ n : ℚ) / 3⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A160872.P5191105674318551763

/-!
# A160873: Number of isomorphism classes of connected (D_4)-fold coverings of a connected graph with circuit rank n.

The programs for A160873, the canonical program `A160873.P1266173022405748836` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160873 has offset 1).

The definition of A160873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160873.P1266173022405748836

`8^n-6*4^(n-1)+2^(n-1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160873

/-- `8^n-6*4^(n-1)+2^(n-1)` -/
def P1266173022405748836.Spec : Prop :=
  ∀ n, P1266173022405748836.a n = (A160873 (n + 1) : ℚ)

end A160873

/-! ## A160873.P10574002471235882064

`C(2^n, 2)*∑[2^n]`
-/

namespace A160873.P10574002471235882064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160873.P10574002471235882064

namespace A160873

/-- `C(2^n, 2)*∑[2^n]` -/
def P10574002471235882064.Spec : Prop :=
  ∀ n, (P10574002471235882064.a n : ℤ) = A160873 (n + 1)

end A160873

/-! ## A160873.P3795393967807543957

`lcm(C(2^n, 2), ∑[2^n])`
-/

namespace A160873.P3795393967807543957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.choose (2 ^ n) 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160873.P3795393967807543957

namespace A160873

/-- `lcm(C(2^n, 2), ∑[2^n])` -/
def P3795393967807543957.Spec : Prop :=
  ∀ n, (P3795393967807543957.a n : ℤ) = A160873 (n + 1)

end A160873

/-! ## A160873.P10075300071511198776

`(2^(n+1)-1)*C(2^n, 2)`
-/

namespace A160873.P10075300071511198776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - 1) * (Nat.choose (2 ^ n) 2 : ℤ)

end

end A160873.P10075300071511198776

namespace A160873

/-- `(2^(n+1)-1)*C(2^n, 2)` -/
def P10075300071511198776.Spec : Prop :=
  ∀ n, P10075300071511198776.a n = A160873 (n + 1)

end A160873

/-! ## A160873.P16120217064735780722

`lcm(∑[2^n], A006516(n))`
-/

namespace A160873.P16120217064735780722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A006516 n)

end

end A160873.P16120217064735780722

namespace A160873

/-- `lcm(∑[2^n], A006516(n))` -/
def P16120217064735780722.Spec : Prop :=
  ∀ n, (P16120217064735780722.a n : ℤ) = A160873 (n + 1)

end A160873

/-! ## A160873.P17371349259269885344

`lcm(∑[2^n]-1, A171476(n))/2`
-/

namespace A160873.P17371349259269885344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (A171476 n) : ℚ) / 2

end

end A160873.P17371349259269885344

namespace A160873

/-- `lcm(∑[2^n]-1, A171476(n))/2` -/
def P17371349259269885344.Spec : Prop :=
  ∀ n, P17371349259269885344.a n = (A160873 (n + 1) : ℚ)

end A160873

/-! ## A160873.P11776031628723205595

`A006516(n)*A126646(n)`
-/

namespace A160873.P11776031628723205595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n * A126646 n

end

end A160873.P11776031628723205595

namespace A160873

/-- `A006516(n)*A126646(n)` -/
def P11776031628723205595.Spec : Prop :=
  ∀ n, P11776031628723205595.a n = A160873 (n + 1)

end A160873

/-! ## A160873.P16883693605835813982

`A000225(n+1)*A006516(n)`
-/

namespace A160873.P16883693605835813982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A006516 n

end

end A160873.P16883693605835813982

namespace A160873

/-- `A000225(n+1)*A006516(n)` -/
def P16883693605835813982.Spec : Prop :=
  ∀ n, P16883693605835813982.a n = A160873 (n + 1)

end A160873

/-! ## A160873.P7634257358478785689

`A006516(n)*A052955(2*n)`
-/

namespace A160873.P7634257358478785689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n * A052955 (2 * n)

end

end A160873.P7634257358478785689

namespace A160873

/-- `A006516(n)*A052955(2*n)` -/
def P7634257358478785689.Spec : Prop :=
  ∀ n, P7634257358478785689.a n = A160873 (n + 1)

end A160873

/-! ## A160873.P17516800986398777403

`A000225(n+1)*A007179(2*n)`
-/

namespace A160873.P17516800986398777403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A007179 (2 * n)

end

end A160873.P17516800986398777403

namespace A160873

/-- `A000225(n+1)*A007179(2*n)` -/
def P17516800986398777403.Spec : Prop :=
  ∀ n, P17516800986398777403.a n = A160873 (n + 1)

end A160873

/-! ## A160873.P7050264365550985304

`A011782(n)*A274230(2*n+1)`
-/

namespace A160873.P7050264365550985304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A274230 (2 * n + 1)

end

end A160873.P7050264365550985304

namespace A160873

/-- `A011782(n)*A274230(2*n+1)` -/
def P7050264365550985304.Spec : Prop :=
  ∀ n, P7050264365550985304.a n = A160873 (n + 1)

end A160873

/-! ## A160873.P18163652267083474128

`A007179(2*n)*A052551(2*n)`
-/

namespace A160873.P18163652267083474128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (2 * n) * A052551 (2 * n)

end

end A160873.P18163652267083474128

namespace A160873

/-- `A007179(2*n)*A052551(2*n)` -/
def P18163652267083474128.Spec : Prop :=
  ∀ n, P18163652267083474128.a n = A160873 (n + 1)

end A160873

/-! ## A160873.P5088249000063201019

`A007179(2*n)*A077896(2*n)`
-/

namespace A160873.P5088249000063201019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (2 * n) * A077896 (2 * n)

end

end A160873.P5088249000063201019

namespace A160873

/-- `A007179(2*n)*A077896(2*n)` -/
def P5088249000063201019.Spec : Prop :=
  ∀ n, P5088249000063201019.a n = A160873 (n + 1)

end A160873

/-! ## A160873.P15806895115104916322

`(A016152(n+1)-A006516(n+1))/2`
-/

namespace A160873.P15806895115104916322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016152 (n + 1) - A006516 (n + 1) : ℚ) / 2

end

end A160873.P15806895115104916322

namespace A160873

/-- `(A016152(n+1)-A006516(n+1))/2` -/
def P15806895115104916322.Spec : Prop :=
  ∀ n, P15806895115104916322.a n = (A160873 (n + 1) : ℚ)

end A160873

/-! ## A160873.P15946554555102691466

`lcm(A007179(2*n), A122746(2*n))/2`
-/

namespace A160873.P15946554555102691466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007179 (2 * n)) (A122746 (2 * n)) : ℚ) / 2

end

end A160873.P15946554555102691466

namespace A160873

/-- `lcm(A007179(2*n), A122746(2*n))/2` -/
def P15946554555102691466.Spec : Prop :=
  ∀ n, P15946554555102691466.a n = (A160873 (n + 1) : ℚ)

end A160873

/-! ## A160873.P10380680539923365086

`A278756(2*n+1)*A278756(2*n)/2`
-/

namespace A160873.P10380680539923365086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278756 (2 * n + 1) * A278756 (2 * n) : ℚ) / 2

end

end A160873.P10380680539923365086

namespace A160873

/-- `A278756(2*n+1)*A278756(2*n)/2` -/
def P10380680539923365086.Spec : Prop :=
  ∀ n, P10380680539923365086.a n = (A160873 (n + 1) : ℚ)

end A160873

/-! ## A160873.P12577591655280250056

`(A000975(n+1)+A000975(n))*A006516(n)`
-/

namespace A160873.P12577591655280250056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000975 (n + 1) + A000975 n) * A006516 n

end

end A160873.P12577591655280250056

namespace A160873

/-- `(A000975(n+1)+A000975(n))*A006516(n)` -/
def P12577591655280250056.Spec : Prop :=
  ∀ n, P12577591655280250056.a n = A160873 (n + 1)

end A160873

/-! ## A160873.P15571993241251979975

`(A134057(n)+A000225(n))*A000225(n+1)`
-/

namespace A160873.P15571993241251979975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134057 n + A000225 n) * A000225 (n + 1)

end

end A160873.P15571993241251979975

namespace A160873

/-- `(A134057(n)+A000225(n))*A000225(n+1)` -/
def P15571993241251979975.Spec : Prop :=
  ∀ n, P15571993241251979975.a n = A160873 (n + 1)

end A160873

/-! ## A160873.P673571968419826596

`(A094374(n)-A000392(n+1))*A006516(n)`
-/

namespace A160873.P673571968419826596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094374 n - A000392 (n + 1)) * A006516 n

end

end A160873.P673571968419826596

namespace A160873

/-- `(A094374(n)-A000392(n+1))*A006516(n)` -/
def P673571968419826596.Spec : Prop :=
  ∀ n, P673571968419826596.a n = A160873 (n + 1)

end A160873

/-! ## A160873.P214670493671524545

`A000225(n+1)*A000225(n)*A011782(n)`
-/

namespace A160873.P214670493671524545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A000225 n * A011782 n

end

end A160873.P214670493671524545

namespace A160873

/-- `A000225(n+1)*A000225(n)*A011782(n)` -/
def P214670493671524545.Spec : Prop :=
  ∀ n, P214670493671524545.a n = A160873 (n + 1)

end A160873

/-!
# A160874: Regular coverings having dihedral voltage groups: see Kwak-Lee reference in A160870 for precise definition.

The programs for A160874, there is no canonical definition to state claims against.
-/

/-! ## A160874.P4001614679986861737

`∑{d}[floor(10^n/5), #]`
-/

namespace A160874.P4001614679986861737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A160874.P4001614679986861737

/-!
# A160875: Regular coverings having dihedral voltage groups: see Kwak-Lee reference in A160870 for precise definition.

The programs for A160875, there is no canonical definition to state claims against.
-/

/-! ## A160875.P423387742698285690

`C(∑[2^n], 2)*A003462(n)`
-/

namespace A160875.P423387742698285690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) * A003462 n

end

end A160875.P423387742698285690

/-!
# A160876: Regular coverings having dihedral voltage groups: see Kwak-Lee reference in A160870 for precise definition.

The programs for A160876, there is no canonical definition to state claims against.
-/

/-! ## A160876.P7679082424425852979

`∑{d}[14*a(n-1), #]` with `a(0)=0, a(1)=2`
-/

namespace A160876.P7679082424425852979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  14 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A160876.P7679082424425852979

/-!
# A160877: Regular coverings having dihedral voltage groups: see Kwak-Lee reference in A160870 for precise definition.

The programs for A160877, there is no canonical definition to state claims against.
-/

/-! ## A160877.P6257179406427423189

`4^(n-1)*C(∑[2^n], 2)`
-/

namespace A160877.P6257179406427423189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℚ)

end

end A160877.P6257179406427423189

/-!
# A160879: Regular coverings having dihedral voltage groups: see Kwak-Lee reference in A160870 for precise definition.

The programs for A160879, there is no canonical definition to state claims against.
-/

/-! ## A160879.P6764133310599706193

`(2^n-1)*A160874(n+1)`
-/

namespace A160879.P6764133310599706193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * A160874 (n + 1)

end

end A160879.P6764133310599706193

/-!
# A160880: Regular coverings having dihedral voltage groups: see Kwak-Lee reference in A160870 for precise definition.

The programs for A160880, there is no canonical definition to state claims against.
-/

/-! ## A160880.P16397396289985021668

`∑{d}[2*11*a(n-1), #]` with `a(0)=0, a(1)=2`
-/

namespace A160880.P16397396289985021668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * (11 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A160880.P16397396289985021668

/-!
# A160881: Regular coverings having dihedral voltage groups (see Kwak-Lee reference for precise definition).

The programs for A160881, there is no canonical definition to state claims against.
-/

/-! ## A160881.P13441918431045732463

`(2^n+1)*(2^n+2)/6+4^n+8^n`
-/

namespace A160881.P13441918431045732463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6) + (4 ^ n + 8 ^ n : ℚ)

end

end A160881.P13441918431045732463

/-!
# A160882: Regular coverings having dihedral voltage groups: see Kwak-Lee reference in A160870 for precise definition.

The programs for A160882, there is no canonical definition to state claims against.
-/

/-! ## A160882.P10730725883693606296

`5^n+(5^n+3)/2*2^n`
-/

namespace A160882.P10730725883693606296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) + (5 ^ n + 3 : ℚ) / 2 * (2 ^ n : ℚ)

end

end A160882.P10730725883693606296

/-!
# A160884: Regular coverings having dihedral voltage groups: see Kwak-Lee reference in A160870 for precise definition.

The programs for A160884, there is no canonical definition to state claims against.
-/

/-! ## A160884.P6996668785024402174

`floor(5*7^n/6)+∑[ceil(7^(n-1))]*A000051(n+1)`
-/

namespace A160884.P6996668785024402174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((7 ^ n : ℚ) / 6)⌋ + (∑ j ∈ Finset.range (n + 1), f1 j) * A000051 (n + 1)

end

end A160884.P6996668785024402174

/-!
# A160889: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 4.

The programs for A160889, the canonical program `A160889.P4866696132334601097` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160889 has offset 1).

The definition of A160889 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160889.P4866696132334601097

`A059376(n+1)/A000010(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A160889

/-- `A059376(n+1)/A000010(n+1)` -/
def P4866696132334601097.Spec : Prop :=
  ∀ n, P4866696132334601097.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P14152173757732486362

`A254981((n+1)²)`
-/

namespace A160889.P14152173757732486362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254981 ((n + 1) ^ 2)

end

end A160889.P14152173757732486362

namespace A160889

/-- `A254981((n+1)²)` -/
def P14152173757732486362.Spec : Prop :=
  ∀ n, P14152173757732486362.a n = A160889 (n + 1)

end A160889

/-! ## A160889.P17556940235389800406

`A059376(n+1)/Δ[A005728(n)]`
-/

namespace A160889.P17556940235389800406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059376 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A160889.P17556940235389800406

namespace A160889

/-- `A059376(n+1)/Δ[A005728(n)]` -/
def P17556940235389800406.Spec : Prop :=
  ∀ n, P17556940235389800406.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P17478556261081829224

`A115224(n+1)/A053191(n+1)`
-/

namespace A160889.P17478556261081829224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115224 (n + 1) : ℚ) / (A053191 (n + 1) : ℚ)

end

end A160889.P17478556261081829224

namespace A160889

/-- `A115224(n+1)/A053191(n+1)` -/
def P17478556261081829224.Spec : Prop :=
  ∀ n, P17478556261081829224.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P17391898809612407892

`A160895(n+1)/A065959(n+1)`
-/

namespace A160889.P17391898809612407892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160895 (n + 1) : ℚ) / (A065959 (n + 1) : ℚ)

end

end A160889.P17391898809612407892

namespace A160889

/-- `A160895(n+1)/A065959(n+1)` -/
def P17391898809612407892.Spec : Prop :=
  ∀ n, P17391898809612407892.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P6708776328078889973

`A160953(n+1)/A381713(n+1)`
-/

namespace A160889.P6708776328078889973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160953 (n + 1) : ℚ) / (A381713 (n + 1) : ℚ)

end

end A160889.P6708776328078889973

namespace A160889

/-- `A160953(n+1)/A381713(n+1)` -/
def P6708776328078889973.Spec : Prop :=
  ∀ n, P6708776328078889973.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P10047752040135110313

`A059376(n+1)/A349137(Δ[n²])`
-/

namespace A160889.P10047752040135110313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059376 (n + 1) : ℚ) / (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A160889.P10047752040135110313

namespace A160889

/-- `A059376(n+1)/A349137(Δ[n²])` -/
def P10047752040135110313.Spec : Prop :=
  ∀ n, P10047752040135110313.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P1452781592852529804

`A115226(n+1)/A002618(n+1)²`
-/

namespace A160889.P1452781592852529804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115226 (n + 1) : ℚ) / (A002618 (n + 1) ^ 2 : ℚ)

end

end A160889.P1452781592852529804

namespace A160889

/-- `A115226(n+1)/A002618(n+1)²` -/
def P1452781592852529804.Spec : Prop :=
  ∀ n, P1452781592852529804.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P2935696738745862746

`A059376(n+1)/(A039649(n+1)-1)`
-/

namespace A160889.P2935696738745862746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059376 (n + 1) : ℚ) / (A039649 (n + 1) - 1 : ℚ)

end

end A160889.P2935696738745862746

namespace A160889

/-- `A059376(n+1)/(A039649(n+1)-1)` -/
def P2935696738745862746.Spec : Prop :=
  ∀ n, P2935696738745862746.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P18307392890219784480

`∑{d}[n+1, A008683(#)*A064969((n+1)/#)]`
-/

namespace A160889.P18307392890219784480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A064969 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160889.P18307392890219784480

namespace A160889

/-- `∑{d}[n+1, A008683(#)*A064969((n+1)/#)]` -/
def P18307392890219784480.Spec : Prop :=
  ∀ n, P18307392890219784480.a n = A160889 (n + 1)

end A160889

/-! ## A160889.P6346239607908657794

`∑{d}[n+1, A007434(#)*A343442((n+1)/#)]`
-/

namespace A160889.P6346239607908657794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A343442 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160889.P6346239607908657794

namespace A160889

/-- `∑{d}[n+1, A007434(#)*A343442((n+1)/#)]` -/
def P6346239607908657794.Spec : Prop :=
  ∀ n, P6346239607908657794.a n = A160889 (n + 1)

end A160889

/-! ## A160889.P18337245269594945736

`A115226(n+1)/((n+1)*Δ[A100449(n)/4])²`
-/

namespace A160889.P18337245269594945736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115226 (n + 1) : ℚ) / ((n + 1 : ℚ) * (f1 (n + 1) - f1 n)) ^ 2

end

end A160889.P18337245269594945736

namespace A160889

/-- `A115226(n+1)/((n+1)*Δ[A100449(n)/4])²` -/
def P18337245269594945736.Spec : Prop :=
  ∀ n, P18337245269594945736.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P6167037138674970281

`A115226(n+1)/((A109606(n+1)+1)*(n+1))²`
-/

namespace A160889.P6167037138674970281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115226 (n + 1) : ℚ) / (((A109606 (n + 1) + 1) * (n + 1 : ℤ)) ^ 2 : ℚ)

end

end A160889.P6167037138674970281

namespace A160889

/-- `A115226(n+1)/((A109606(n+1)+1)*(n+1))²` -/
def P6167037138674970281.Spec : Prop :=
  ∀ n, P6167037138674970281.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P10905078795267489563

`A115226(n+1)/((n+1)*(A039649(n+1)-1))²`
-/

namespace A160889.P10905078795267489563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115226 (n + 1) : ℚ) / (((n + 1 : ℤ) * (A039649 (n + 1) - 1)) ^ 2 : ℚ)

end

end A160889.P10905078795267489563

namespace A160889

/-- `A115226(n+1)/((n+1)*(A039649(n+1)-1))²` -/
def P10905078795267489563.Spec : Prop :=
  ∀ n, P10905078795267489563.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P10218485303378205484

`A115226(n+1)/((1-A051953(n+1)+n)*(n+1))²`
-/

namespace A160889.P10218485303378205484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115226 (n + 1) : ℚ) / (((1 - A051953 (n + 1) + (n : ℤ)) * (n + 1 : ℤ)) ^ 2 : ℚ)

end

end A160889.P10218485303378205484

namespace A160889

/-- `A115226(n+1)/((1-A051953(n+1)+n)*(n+1))²` -/
def P10218485303378205484.Spec : Prop :=
  ∀ n, P10218485303378205484.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P7231607827896561840

`A059376(n+1)/(A002088(n+1)-A002088(n))`
-/

namespace A160889.P7231607827896561840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059376 (n + 1) : ℚ) / (A002088 (n + 1) - A002088 n : ℚ)

end

end A160889.P7231607827896561840

namespace A160889

/-- `A059376(n+1)/(A002088(n+1)-A002088(n))` -/
def P7231607827896561840.Spec : Prop :=
  ∀ n, P7231607827896561840.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P18281058846842627230

`A000056(n+1)/A000252(n+1)*A059376(n+1)`
-/

namespace A160889.P18281058846842627230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A000252 (n + 1) : ℚ) * (A059376 (n + 1) : ℚ)

end

end A160889.P18281058846842627230

namespace A160889

/-- `A000056(n+1)/A000252(n+1)*A059376(n+1)` -/
def P18281058846842627230.Spec : Prop :=
  ∀ n, P18281058846842627230.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P15788389554673177346

`A011785(n+1)/(A000056(n+1)*A053191(n+1))`
-/

namespace A160889.P15788389554673177346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011785 (n + 1) : ℚ) / (A000056 (n + 1) * A053191 (n + 1) : ℚ)

end

end A160889.P15788389554673177346

namespace A160889

/-- `A011785(n+1)/(A000056(n+1)*A053191(n+1))` -/
def P15788389554673177346.Spec : Prop :=
  ∀ n, P15788389554673177346.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P15976586059236762579

`A001615(n+1)/A007434(n+1)*A059376(n+1)`
-/

namespace A160889.P15976586059236762579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ) * (A059376 (n + 1) : ℚ)

end

end A160889.P15976586059236762579

namespace A160889

/-- `A001615(n+1)/A007434(n+1)*A059376(n+1)` -/
def P15976586059236762579.Spec : Prop :=
  ∀ n, P15976586059236762579.a n = (A160889 (n + 1) : ℚ)

end A160889

/-! ## A160889.P10900347407776755273

`A001615(n+1)/A065959(n+1)*A194532(n+1)`
-/

namespace A160889.P10900347407776755273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A065959 (n + 1) : ℚ) * (A194532 (n + 1) : ℚ)

end

end A160889.P10900347407776755273

namespace A160889

/-- `A001615(n+1)/A065959(n+1)*A194532(n+1)` -/
def P10900347407776755273.Spec : Prop :=
  ∀ n, P10900347407776755273.a n = (A160889 (n + 1) : ℚ)

end A160889

/-!
# A160890: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 3.

The programs for A160890, the canonical program `A160890.P9259257314874269544` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160890 has offset 1).

The definition of A160890 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160890.P9259257314874269544

`7*A001615(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160890

/-- `7*A001615(n+1)` -/
def P9259257314874269544.Spec : Prop :=
  ∀ n, P9259257314874269544.a n = A160890 (n + 1)

theorem P9259257314874269544.correct : P9259257314874269544.Spec := by
  intro n
  simp only [A160890, Nat.add_sub_cancel]

end A160890

/-! ## A160890.P8411476941831284579

`7*∑{d}[∏{p}[n+1, #], (n+1)/#]`
-/

namespace A160890.P8411476941831284579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))

end

end A160890.P8411476941831284579

namespace A160890

/-- `7*∑{d}[∏{p}[n+1, #], (n+1)/#]` -/
def P8411476941831284579.Spec : Prop :=
  ∀ n, P8411476941831284579.a n = (A160890 (n + 1) : ℚ)

end A160890

/-! ## A160890.P5448931341358637839

`7*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]`
-/

namespace A160890.P5448931341358637839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℚ))

end

end A160890.P5448931341358637839

namespace A160890

/-- `7*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]` -/
def P5448931341358637839.Spec : Prop :=
  ∀ n, P5448931341358637839.a n = (A160890 (n + 1) : ℚ)

end A160890

/-! ## A160890.P18138561945000594454

`abs(7*A158523(n+1))`
-/

namespace A160890.P18138561945000594454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 * A158523 (n + 1)|

end

end A160890.P18138561945000594454

namespace A160890

/-- `abs(7*A158523(n+1))` -/
def P18138561945000594454.Spec : Prop :=
  ∀ n, P18138561945000594454.a n = A160890 (n + 1)

end A160890

/-! ## A160890.P7319762652387945724

`7*(A306927(n+1)+1+n)`
-/

namespace A160890.P7319762652387945724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A306927 (n + 1) + 1 + (n : ℤ))

end

end A160890.P7319762652387945724

namespace A160890

/-- `7*(A306927(n+1)+1+n)` -/
def P7319762652387945724.Spec : Prop :=
  ∀ n, P7319762652387945724.a n = A160890 (n + 1)

end A160890

/-! ## A160890.P5089032371682796201

`7*A000082(n+1)/(n+1)`
-/

namespace A160890.P5089032371682796201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A000082 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A160890.P5089032371682796201

namespace A160890

/-- `7*A000082(n+1)/(n+1)` -/
def P5089032371682796201.Spec : Prop :=
  ∀ n, P5089032371682796201.a n = (A160890 (n + 1) : ℚ)

end A160890

/-! ## A160890.P7410875322372629040

`7*(A323364(n+1)-A323363(n+1))`
-/

namespace A160890.P7410875322372629040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A323364 (n + 1) - A323363 (n + 1))

end

end A160890.P7410875322372629040

namespace A160890

/-- `7*(A323364(n+1)-A323363(n+1))` -/
def P7410875322372629040.Spec : Prop :=
  ∀ n, P7410875322372629040.a n = A160890 (n + 1)

end A160890

/-! ## A160890.P10405782469811952753

`7*A003557(n+1)*A048250(n+1)`
-/

namespace A160890.P10405782469811952753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A003557 (n + 1) * A048250 (n + 1))

end

end A160890.P10405782469811952753

namespace A160890

/-- `7*A003557(n+1)*A048250(n+1)` -/
def P10405782469811952753.Spec : Prop :=
  ∀ n, P10405782469811952753.a n = A160890 (n + 1)

end A160890

/-! ## A160890.P18007505333867367709

`7/A000010(n+1)*A007434(n+1)`
-/

namespace A160890.P18007505333867367709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 / (A000010 (n + 1) : ℚ) * (A007434 (n + 1) : ℚ)

end

end A160890.P18007505333867367709

namespace A160890

/-- `7/A000010(n+1)*A007434(n+1)` -/
def P18007505333867367709.Spec : Prop :=
  ∀ n, P18007505333867367709.a n = (A160890 (n + 1) : ℚ)

end A160890

/-! ## A160890.P2749009114200758810

`∑{d}[n+1, A271102(#)*A319527((n+1)/#)]`
-/

namespace A160890.P2749009114200758810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A319527 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160890.P2749009114200758810

namespace A160890

/-- `∑{d}[n+1, A271102(#)*A319527((n+1)/#)]` -/
def P2749009114200758810.Spec : Prop :=
  ∀ n, P2749009114200758810.a n = A160890 (n + 1)

end A160890

/-! ## A160890.P8123149959501627883

`7*abs(∑{d}[n+1, A000010(#)*A298473((n+1)/#)])`
-/

namespace A160890.P8123149959501627883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * |∑ d ∈ Nat.divisors (f1 n), A000010 d * A298473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat|

end

end A160890.P8123149959501627883

namespace A160890

/-- `7*abs(∑{d}[n+1, A000010(#)*A298473((n+1)/#)])` -/
def P8123149959501627883.Spec : Prop :=
  ∀ n, P8123149959501627883.a n = A160890 (n + 1)

end A160890

/-! ## A160890.P15468834661690101914

`A008589(A001615(n+1))`
-/

namespace A160890.P15468834661690101914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A001615 (n + 1)).toNat

end

end A160890.P15468834661690101914

namespace A160890

/-- `A008589(A001615(n+1))` -/
def P15468834661690101914.Spec : Prop :=
  ∀ n, P15468834661690101914.a n = A160890 (n + 1)

end A160890

/-! ## A160890.P10800802570803236696

`A008486(A001615(n+1)+A001615(n+1))+A001615(n+1)`
-/

namespace A160890.P10800802570803236696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A001615 (n + 1) + A001615 (n + 1)).toNat + A001615 (n + 1)

end

end A160890.P10800802570803236696

namespace A160890

/-- `A008486(A001615(n+1)+A001615(n+1))+A001615(n+1)` -/
def P10800802570803236696.Spec : Prop :=
  ∀ n, P10800802570803236696.a n = A160890 (n + 1)

end A160890

/-!
# A160891: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 5.

The programs for A160891, the canonical program `A160891.P12024979058820824222` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160891 has offset 1).

The definition of A160891 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160891.P12024979058820824222

`A059377(n+1)/A000010(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A160891

/-- `A059377(n+1)/A000010(n+1)` -/
def P12024979058820824222.Spec : Prop :=
  ∀ n, P12024979058820824222.a n = (A160891 (n + 1) : ℚ)

end A160891

/-! ## A160891.P7684834254360775069

`A001615(n+1)*A065958(n+1)`
-/

namespace A160891.P7684834254360775069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A065958 (n + 1)

end

end A160891.P7684834254360775069

namespace A160891

/-- `A001615(n+1)*A065958(n+1)` -/
def P7684834254360775069.Spec : Prop :=
  ∀ n, P7684834254360775069.a n = A160891 (n + 1)

end A160891

/-! ## A160891.P2315585375341366413

`A160908(n+1)/A065960(n+1)`
-/

namespace A160891.P2315585375341366413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160908 (n + 1) : ℚ) / (A065960 (n + 1) : ℚ)

end

end A160891.P2315585375341366413

namespace A160891

/-- `A160908(n+1)/A065960(n+1)` -/
def P2315585375341366413.Spec : Prop :=
  ∀ n, P2315585375341366413.a n = (A160891 (n + 1) : ℚ)

end A160891

/-! ## A160891.P639883219171028515

`∑{d}[n+1, A008683(#)*A280184((n+1)/#)]`
-/

namespace A160891.P639883219171028515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A280184 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160891.P639883219171028515

namespace A160891

/-- `∑{d}[n+1, A008683(#)*A280184((n+1)/#)]` -/
def P639883219171028515.Spec : Prop :=
  ∀ n, P639883219171028515.a n = A160891 (n + 1)

end A160891

/-! ## A160891.P1791255166109677482

`lcm(A065958(n+1)*A158523(n+1), A006466(n))`
-/

namespace A160891.P1791255166109677482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065958 (n + 1) * A158523 (n + 1)) (A006466 n)

end

end A160891.P1791255166109677482

namespace A160891

/-- `lcm(A065958(n+1)*A158523(n+1), A006466(n))` -/
def P1791255166109677482.Spec : Prop :=
  ∀ n, (P1791255166109677482.a n : ℤ) = A160891 (n + 1)

end A160891

/-! ## A160891.P17395854701640958402

`A001615(n+1)/A007434(n+1)*A059377(n+1)`
-/

namespace A160891.P17395854701640958402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ) * (A059377 (n + 1) : ℚ)

end

end A160891.P17395854701640958402

namespace A160891

/-- `A001615(n+1)/A007434(n+1)*A059377(n+1)` -/
def P17395854701640958402.Spec : Prop :=
  ∀ n, P17395854701640958402.a n = (A160891 (n + 1) : ℚ)

end A160891

/-! ## A160891.P4692991581818749037

`A007434(n+1)/A000010(n+1)*A065958(n+1)`
-/

namespace A160891.P4692991581818749037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A065958 (n + 1) : ℚ)

end

end A160891.P4692991581818749037

namespace A160891

/-- `A007434(n+1)/A000010(n+1)*A065958(n+1)` -/
def P4692991581818749037.Spec : Prop :=
  ∀ n, P4692991581818749037.a n = (A160891 (n + 1) : ℚ)

end A160891

/-! ## A160891.P2981083938660307670

`A001615(n+1)/A065960(n+1)*A194533(n+1)`
-/

namespace A160891.P2981083938660307670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A065960 (n + 1) : ℚ) * (A194533 (n + 1) : ℚ)

end

end A160891.P2981083938660307670

namespace A160891

/-- `A001615(n+1)/A065960(n+1)*A194533(n+1)` -/
def P2981083938660307670.Spec : Prop :=
  ∀ n, P2981083938660307670.a n = (A160891 (n + 1) : ℚ)

end A160891

/-! ## A160891.P14625312736983011981

`A059377(n+1)/A059378(n+1)*A160893(n+1)`
-/

namespace A160891.P14625312736983011981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A059378 (n + 1) : ℚ) * (A160893 (n + 1) : ℚ)

end

end A160891.P14625312736983011981

namespace A160891

/-- `A059377(n+1)/A059378(n+1)*A160893(n+1)` -/
def P14625312736983011981.Spec : Prop :=
  ∀ n, P14625312736983011981.a n = (A160891 (n + 1) : ℚ)

end A160891

/-! ## A160891.P13333131223253454270

`A059377(n+1)/A069091(n+1)*A160895(n+1)`
-/

namespace A160891.P13333131223253454270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A069091 (n + 1) : ℚ) * (A160895 (n + 1) : ℚ)

end

end A160891.P13333131223253454270

namespace A160891

/-- `A059377(n+1)/A069091(n+1)*A160895(n+1)` -/
def P13333131223253454270.Spec : Prop :=
  ∀ n, P13333131223253454270.a n = (A160891 (n + 1) : ℚ)

end A160891

/-! ## A160891.P2014483881582692647

`A059377(n+1)/A069092(n+1)*A160897(n+1)`
-/

namespace A160891.P2014483881582692647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A069092 (n + 1) : ℚ) * (A160897 (n + 1) : ℚ)

end

end A160891.P2014483881582692647

namespace A160891

/-- `A059377(n+1)/A069092(n+1)*A160897(n+1)` -/
def P2014483881582692647.Spec : Prop :=
  ∀ n, P2014483881582692647.a n = (A160891 (n + 1) : ℚ)

end A160891

/-! ## A160891.P5194140036203294726

`A059377(n+1)/A069093(n+1)*A160908(n+1)`
-/

namespace A160891.P5194140036203294726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A069093 (n + 1) : ℚ) * (A160908 (n + 1) : ℚ)

end

end A160891.P5194140036203294726

namespace A160891

/-- `A059377(n+1)/A069093(n+1)*A160908(n+1)` -/
def P5194140036203294726.Spec : Prop :=
  ∀ n, P5194140036203294726.a n = (A160891 (n + 1) : ℚ)

end A160891

/-! ## A160891.P11397058001037573569

`A059377(n+1)/A069094(n+1)*A160953(n+1)`
-/

namespace A160891.P11397058001037573569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A069094 (n + 1) : ℚ) * (A160953 (n + 1) : ℚ)

end

end A160891.P11397058001037573569

namespace A160891

/-- `A059377(n+1)/A069094(n+1)*A160953(n+1)` -/
def P11397058001037573569.Spec : Prop :=
  ∀ n, P11397058001037573569.a n = (A160891 (n + 1) : ℚ)

end A160891

/-! ## A160891.P13600148981499478304

`A059377(n+1)/A069095(n+1)*A160957(n+1)`
-/

namespace A160891.P13600148981499478304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A069095 (n + 1) : ℚ) * (A160957 (n + 1) : ℚ)

end

end A160891.P13600148981499478304

namespace A160891

/-- `A059377(n+1)/A069095(n+1)*A160957(n+1)` -/
def P13600148981499478304.Spec : Prop :=
  ∀ n, P13600148981499478304.a n = (A160891 (n + 1) : ℚ)

end A160891

/-! ## A160891.P4436081800115493244

`(A321973(n+1)-A321973(n))*A001615(n+1)`
-/

namespace A160891.P4436081800115493244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321973 (n + 1) - A321973 n) * A001615 (n + 1)

end

end A160891.P4436081800115493244

namespace A160891

/-- `(A321973(n+1)-A321973(n))*A001615(n+1)` -/
def P4436081800115493244.Spec : Prop :=
  ∀ n, P4436081800115493244.a n = A160891 (n + 1)

end A160891

/-!
# A160892: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 4.

The programs for A160892, the canonical program `A160892.P12129593318586188066` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160892 has offset 1).

The definition of A160892 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160889, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160892.P12129593318586188066

`15*A160889(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A160892

/-- `15*A160889(n+1)` -/
def P12129593318586188066.Spec : Prop :=
  ∀ n, P12129593318586188066.a n = A160892 (n + 1)

theorem P12129593318586188066.correct : P12129593318586188066.Spec := by
  intro n
  simp only [A160892, Nat.add_sub_cancel]

end A160892

/-! ## A160892.P10904867729820156731

`15*A059376(n+1)/A059378(n+1)*A160893(n+1)`
-/

namespace A160892.P10904867729820156731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  15 * ((A059376 (n + 1) : ℚ) / (A059378 (n + 1) : ℚ) * (A160893 (n + 1) : ℚ))

end

end A160892.P10904867729820156731

namespace A160892

/-- `15*A059376(n+1)/A059378(n+1)*A160893(n+1)` -/
def P10904867729820156731.Spec : Prop :=
  ∀ n, P10904867729820156731.a n = (A160892 (n + 1) : ℚ)

end A160892

/-! ## A160892.P5535444370147611916

`15*A059376(n+1)/A069093(n+1)*A160908(n+1)`
-/

namespace A160892.P5535444370147611916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  15 * ((A059376 (n + 1) : ℚ) / (A069093 (n + 1) : ℚ) * (A160908 (n + 1) : ℚ))

end

end A160892.P5535444370147611916

namespace A160892

/-- `15*A059376(n+1)/A069093(n+1)*A160908(n+1)` -/
def P5535444370147611916.Spec : Prop :=
  ∀ n, P5535444370147611916.a n = (A160892 (n + 1) : ℚ)

end A160892

/-! ## A160892.P7408566896150687225

`15*A059376(n+1)*A115224(n+1)/A115226(n+1)`
-/

namespace A160892.P7408566896150687225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  15 * ((A059376 (n + 1) * A115224 (n + 1) : ℚ) / (A115226 (n + 1) : ℚ))

end

end A160892.P7408566896150687225

namespace A160892

/-- `15*A059376(n+1)*A115224(n+1)/A115226(n+1)` -/
def P7408566896150687225.Spec : Prop :=
  ∀ n, P7408566896150687225.a n = (A160892 (n + 1) : ℚ)

end A160892

/-! ## A160892.P8450351143365900162

`15*A003557(n+1)²*A000203(A007947(n+1)²)`
-/

namespace A160892.P8450351143365900162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * (A003557 (n + 1) ^ 2 * A000203 (A007947 (n + 1) ^ 2).toNat)

end

end A160892.P8450351143365900162

namespace A160892

/-- `15*A003557(n+1)²*A000203(A007947(n+1)²)` -/
def P8450351143365900162.Spec : Prop :=
  ∀ n, P8450351143365900162.a n = A160892 (n + 1)

end A160892

/-! ## A160892.P12657780767251350917

`3*5*A254981((n+1)²)`
-/

namespace A160892.P12657780767251350917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (5 * A254981 ((n + 1) ^ 2))

end

end A160892.P12657780767251350917

namespace A160892

/-- `3*5*A254981((n+1)²)` -/
def P12657780767251350917.Spec : Prop :=
  ∀ n, P12657780767251350917.a n = A160892 (n + 1)

end A160892

/-! ## A160892.P17795611422827933747

`15*A254981(∑[A005408(n)])`
-/

namespace A160892.P17795611422827933747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A254981 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160892.P17795611422827933747

namespace A160892

/-- `15*A254981(∑[A005408(n)])` -/
def P17795611422827933747.Spec : Prop :=
  ∀ n, P17795611422827933747.a n = A160892 (n + 1)

end A160892

/-! ## A160892.P4332187552735871880

`A008597(A160889(n+1))`
-/

namespace A160892.P4332187552735871880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (A160889 (n + 1)).toNat

end

end A160892.P4332187552735871880

namespace A160892

/-- `A008597(A160889(n+1))` -/
def P4332187552735871880.Spec : Prop :=
  ∀ n, P4332187552735871880.a n = A160892 (n + 1)

end A160892

/-!
# A160893: a(n) = Sum_{d|n} Möbius(n/d)*d^5/phi(n).

The programs for A160893, the canonical program `A160893.P16935836706349167096` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160893 has offset 1).

The definition of A160893 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A059378, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160893.P16935836706349167096

`A059378(n+1)/A000010(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A160893

/-- `A059378(n+1)/A000010(n+1)` -/
def P16935836706349167096.Spec : Prop :=
  ∀ n, P16935836706349167096.a n = (A160893 (n + 1) : ℚ)

end A160893

/-! ## A160893.P13966912235820960544

`A160957(n+1)/A351300(n+1)`
-/

namespace A160893.P13966912235820960544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160957 (n + 1) : ℚ) / (A351300 (n + 1) : ℚ)

end

end A160893.P13966912235820960544

namespace A160893

/-- `A160957(n+1)/A351300(n+1)` -/
def P13966912235820960544.Spec : Prop :=
  ∀ n, P13966912235820960544.a n = (A160893 (n + 1) : ℚ)

end A160893

/-! ## A160893.P8564423772893590379

`A059378(n+1)/(n+1-A051953(n+1))`
-/

namespace A160893.P8564423772893590379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059378 (n + 1) : ℚ) / ((n + 1 : ℤ) - A051953 (n + 1) : ℚ)

end

end A160893.P8564423772893590379

namespace A160893

/-- `A059378(n+1)/(n+1-A051953(n+1))` -/
def P8564423772893590379.Spec : Prop :=
  ∀ n, P8564423772893590379.a n = (A160893 (n + 1) : ℚ)

end A160893

/-! ## A160893.P4903228635149112109

`∑{d}[n+1, A008683(#)*A344219((n+1)/#)]`
-/

namespace A160893.P4903228635149112109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A344219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160893.P4903228635149112109

namespace A160893

/-- `∑{d}[n+1, A008683(#)*A344219((n+1)/#)]` -/
def P4903228635149112109.Spec : Prop :=
  ∀ n, P4903228635149112109.a n = A160893 (n + 1)

end A160893

/-! ## A160893.P11579246745916034264

`A059378(n+1)/(A002088(n+1)-A002088(n))`
-/

namespace A160893.P11579246745916034264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059378 (n + 1) : ℚ) / (A002088 (n + 1) - A002088 n : ℚ)

end

end A160893.P11579246745916034264

namespace A160893

/-- `A059378(n+1)/(A002088(n+1)-A002088(n))` -/
def P11579246745916034264.Spec : Prop :=
  ∀ n, P11579246745916034264.a n = (A160893 (n + 1) : ℚ)

end A160893

/-! ## A160893.P1934028867439725340

`A001615(n+1)/A007434(n+1)*A059378(n+1)`
-/

namespace A160893.P1934028867439725340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ) * (A059378 (n + 1) : ℚ)

end

end A160893.P1934028867439725340

namespace A160893

/-- `A001615(n+1)/A007434(n+1)*A059378(n+1)` -/
def P1934028867439725340.Spec : Prop :=
  ∀ n, P1934028867439725340.a n = (A160893 (n + 1) : ℚ)

end A160893

/-! ## A160893.P7179397993225258373

`A059378(n+1)/A059377(n+1)*A160891(n+1)`
-/

namespace A160893.P7179397993225258373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059378 (n + 1) : ℚ) / (A059377 (n + 1) : ℚ) * (A160891 (n + 1) : ℚ)

end

end A160893.P7179397993225258373

namespace A160893

/-- `A059378(n+1)/A059377(n+1)*A160891(n+1)` -/
def P7179397993225258373.Spec : Prop :=
  ∀ n, P7179397993225258373.a n = (A160893 (n + 1) : ℚ)

end A160893

/-! ## A160893.P13525690399738689127

`A059378(n+1)/A069092(n+1)*A160897(n+1)`
-/

namespace A160893.P13525690399738689127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059378 (n + 1) : ℚ) / (A069092 (n + 1) : ℚ) * (A160897 (n + 1) : ℚ)

end

end A160893.P13525690399738689127

namespace A160893

/-- `A059378(n+1)/A069092(n+1)*A160897(n+1)` -/
def P13525690399738689127.Spec : Prop :=
  ∀ n, P13525690399738689127.a n = (A160893 (n + 1) : ℚ)

end A160893

/-! ## A160893.P6251641524029122979

`A059378(n+1)/A069093(n+1)*A160908(n+1)`
-/

namespace A160893.P6251641524029122979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059378 (n + 1) : ℚ) / (A069093 (n + 1) : ℚ) * (A160908 (n + 1) : ℚ)

end

end A160893.P6251641524029122979

namespace A160893

/-- `A059378(n+1)/A069093(n+1)*A160908(n+1)` -/
def P6251641524029122979.Spec : Prop :=
  ∀ n, P6251641524029122979.a n = (A160893 (n + 1) : ℚ)

end A160893

/-! ## A160893.P9019525705482744830

`A059378(n+1)/A069094(n+1)*A160953(n+1)`
-/

namespace A160893.P9019525705482744830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059378 (n + 1) : ℚ) / (A069094 (n + 1) : ℚ) * (A160953 (n + 1) : ℚ)

end

end A160893.P9019525705482744830

namespace A160893

/-- `A059378(n+1)/A069094(n+1)*A160953(n+1)` -/
def P9019525705482744830.Spec : Prop :=
  ∀ n, P9019525705482744830.a n = (A160893 (n + 1) : ℚ)

end A160893

/-! ## A160893.P3601351967767291324

`A059378(n+1)/A069095(n+1)*A160957(n+1)`
-/

namespace A160893.P3601351967767291324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059378 (n + 1) : ℚ) / (A069095 (n + 1) : ℚ) * (A160957 (n + 1) : ℚ)

end

end A160893.P3601351967767291324

namespace A160893

/-- `A059378(n+1)/A069095(n+1)*A160957(n+1)` -/
def P3601351967767291324.Spec : Prop :=
  ∀ n, P3601351967767291324.a n = (A160893 (n + 1) : ℚ)

end A160893

/-! ## A160893.P293178386232076243

`A059378(n+1)*A115224(n+1)/A115226(n+1)`
-/

namespace A160893.P293178386232076243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059378 (n + 1) * A115224 (n + 1) : ℚ) / (A115226 (n + 1) : ℚ)

end

end A160893.P293178386232076243

namespace A160893

/-- `A059378(n+1)*A115224(n+1)/A115226(n+1)` -/
def P293178386232076243.Spec : Prop :=
  ∀ n, P293178386232076243.a n = (A160893 (n + 1) : ℚ)

end A160893

/-!
# A160894: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 5.

The programs for A160894, the canonical program `A160894.P7293678197695022492` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160894 has offset 1).

The definition of A160894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160891, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160894.P7293678197695022492

`31*A160891(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A160894

/-- `31*A160891(n+1)` -/
def P7293678197695022492.Spec : Prop :=
  ∀ n, P7293678197695022492.a n = A160894 (n + 1)

theorem P7293678197695022492.correct : P7293678197695022492.Spec := by
  intro n
  simp only [A160894, Nat.add_sub_cancel]

end A160894

/-! ## A160894.P14647779705813930195

`31*∑{d}[∏{p}[n+1, #], ((n+1)/#)²]*∑{d}[∏{p}[n+1, #], (n+1)/#]`
-/

namespace A160894.P14647779705813930195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  31 * ((∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ 2) * (∑ d ∈ Nat.divisors (f3 n), (n + 1 : ℚ) / (d : ℚ)))

end

end A160894.P14647779705813930195

namespace A160894

/-- `31*∑{d}[∏{p}[n+1, #], ((n+1)/#)²]*∑{d}[∏{p}[n+1, #], (n+1)/#]` -/
def P14647779705813930195.Spec : Prop :=
  ∀ n, P14647779705813930195.a n = (A160894 (n + 1) : ℚ)

end A160894

/-! ## A160894.P14797342724857248053

`31*A059377(n+1)/A000010(n+1)`
-/

namespace A160894.P14797342724857248053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  31 * ((A059377 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ))

end

end A160894.P14797342724857248053

namespace A160894

/-- `31*A059377(n+1)/A000010(n+1)` -/
def P14797342724857248053.Spec : Prop :=
  ∀ n, P14797342724857248053.a n = (A160894 (n + 1) : ℚ)

end A160894

/-! ## A160894.P5521754960300772713

`31*A160908(n+1)/A065960(n+1)`
-/

namespace A160894.P5521754960300772713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  31 * ((A160908 (n + 1) : ℚ) / (A065960 (n + 1) : ℚ))

end

end A160894.P5521754960300772713

namespace A160894

/-- `31*A160908(n+1)/A065960(n+1)` -/
def P5521754960300772713.Spec : Prop :=
  ∀ n, P5521754960300772713.a n = (A160894 (n + 1) : ℚ)

end A160894

/-! ## A160894.P3920372432694670975

`31*∑{d}[n+1, A008683(#)*A280184((n+1)/#)]`
-/

namespace A160894.P3920372432694670975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * (∑ d ∈ Nat.divisors (f1 n), A008683 d * A280184 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A160894.P3920372432694670975

namespace A160894

/-- `31*∑{d}[n+1, A008683(#)*A280184((n+1)/#)]` -/
def P3920372432694670975.Spec : Prop :=
  ∀ n, P3920372432694670975.a n = A160894 (n + 1)

end A160894

/-! ## A160894.P8891181240976335646

`31*A007434(n+1)/A000010(n+1)*A065958(n+1)`
-/

namespace A160894.P8891181240976335646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  31 * ((A007434 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A065958 (n + 1) : ℚ))

end

end A160894.P8891181240976335646

namespace A160894

/-- `31*A007434(n+1)/A000010(n+1)*A065958(n+1)` -/
def P8891181240976335646.Spec : Prop :=
  ∀ n, P8891181240976335646.a n = (A160894 (n + 1) : ℚ)

end A160894

/-! ## A160894.P1730425159389301205

`31*A001615(n+1)/A065960(n+1)*A194533(n+1)`
-/

namespace A160894.P1730425159389301205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  31 * ((A001615 (n + 1) : ℚ) / (A065960 (n + 1) : ℚ) * (A194533 (n + 1) : ℚ))

end

end A160894.P1730425159389301205

namespace A160894

/-- `31*A001615(n+1)/A065960(n+1)*A194533(n+1)` -/
def P1730425159389301205.Spec : Prop :=
  ∀ n, P1730425159389301205.a n = (A160894 (n + 1) : ℚ)

end A160894

/-! ## A160894.P7977585184643248626

`31*A059377(n+1)/A069091(n+1)*A160895(n+1)`
-/

namespace A160894.P7977585184643248626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  31 * ((A059377 (n + 1) : ℚ) / (A069091 (n + 1) : ℚ) * (A160895 (n + 1) : ℚ))

end

end A160894.P7977585184643248626

namespace A160894

/-- `31*A059377(n+1)/A069091(n+1)*A160895(n+1)` -/
def P7977585184643248626.Spec : Prop :=
  ∀ n, P7977585184643248626.a n = (A160894 (n + 1) : ℚ)

end A160894

/-! ## A160894.P2151539197451771478

`31*(A321973(n+1)-A321973(n))*A001615(n+1)`
-/

namespace A160894.P2151539197451771478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * ((A321973 (n + 1) - A321973 n) * A001615 (n + 1))

end

end A160894.P2151539197451771478

namespace A160894

/-- `31*(A321973(n+1)-A321973(n))*A001615(n+1)` -/
def P2151539197451771478.Spec : Prop :=
  ∀ n, P2151539197451771478.a n = A160894 (n + 1)

end A160894

/-! ## A160894.P6754574825755411006

`A065958(n+1)*A135631(A001615(n+1))`
-/

namespace A160894.P6754574825755411006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065958 (n + 1) * A135631 (A001615 (n + 1)).toNat

end

end A160894.P6754574825755411006

namespace A160894

/-- `A065958(n+1)*A135631(A001615(n+1))` -/
def P6754574825755411006.Spec : Prop :=
  ∀ n, P6754574825755411006.a n = A160894 (n + 1)

end A160894

/-!
# A160895: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 7.

The programs for A160895, the canonical program `A160895.P2150078273942846583` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160895 has offset 1).

The definition of A160895 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160895.P2150078273942846583

`A069091(n+1)/A000010(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A160895

/-- `A069091(n+1)/A000010(n+1)` -/
def P2150078273942846583.Spec : Prop :=
  ∀ n, P2150078273942846583.a n = (A160895 (n + 1) : ℚ)

end A160895

/-! ## A160895.P3575391810980855216

`A001615(n+1)*A194532(n+1)`
-/

namespace A160895.P3575391810980855216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A194532 (n + 1)

end

end A160895.P3575391810980855216

namespace A160895

/-- `A001615(n+1)*A194532(n+1)` -/
def P3575391810980855216.Spec : Prop :=
  ∀ n, P3575391810980855216.a n = A160895 (n + 1)

end A160895

/-! ## A160895.P8105033013273316149

`A065959(n+1)*A160889(n+1)`
-/

namespace A160895.P8105033013273316149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065959 (n + 1) * A160889 (n + 1)

end

end A160895.P8105033013273316149

namespace A160895

/-- `A065959(n+1)*A160889(n+1)` -/
def P8105033013273316149.Spec : Prop :=
  ∀ n, P8105033013273316149.a n = A160895 (n + 1)

end A160895

/-! ## A160895.P1873752392903240482

`A160972(n+1)/A351301(n+1)`
-/

namespace A160895.P1873752392903240482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160972 (n + 1) : ℚ) / (A351301 (n + 1) : ℚ)

end

end A160895.P1873752392903240482

namespace A160895

/-- `A160972(n+1)/A351301(n+1)` -/
def P1873752392903240482.Spec : Prop :=
  ∀ n, P1873752392903240482.a n = (A160895 (n + 1) : ℚ)

end A160895

/-! ## A160895.P16401844159510796936

`gcd(A160898(n+1), A160972(n+1))`
-/

namespace A160895.P16401844159510796936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160898 (n + 1)) (A160972 (n + 1))

end

end A160895.P16401844159510796936

namespace A160895

/-- `gcd(A160898(n+1), A160972(n+1))` -/
def P16401844159510796936.Spec : Prop :=
  ∀ n, (P16401844159510796936.a n : ℤ) = A160895 (n + 1)

end A160895

/-! ## A160895.P6238934372782785087

`∑{d}[n+1, A008683(#)*A344302((n+1)/#)]`
-/

namespace A160895.P6238934372782785087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A344302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160895.P6238934372782785087

namespace A160895

/-- `∑{d}[n+1, A008683(#)*A344302((n+1)/#)]` -/
def P6238934372782785087.Spec : Prop :=
  ∀ n, P6238934372782785087.a n = A160895 (n + 1)

end A160895

/-! ## A160895.P10847942558740111406

`A069091(n+1)/(A002088(n+1)-A002088(n))`
-/

namespace A160895.P10847942558740111406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A002088 (n + 1) - A002088 n : ℚ)

end

end A160895.P10847942558740111406

namespace A160895

/-- `A069091(n+1)/(A002088(n+1)-A002088(n))` -/
def P10847942558740111406.Spec : Prop :=
  ∀ n, P10847942558740111406.a n = (A160895 (n + 1) : ℚ)

end A160895

/-! ## A160895.P12642257910108567644

`A001615(n+1)/A007434(n+1)*A069091(n+1)`
-/

namespace A160895.P12642257910108567644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ) * (A069091 (n + 1) : ℚ)

end

end A160895.P12642257910108567644

namespace A160895

/-- `A001615(n+1)/A007434(n+1)*A069091(n+1)` -/
def P12642257910108567644.Spec : Prop :=
  ∀ n, P12642257910108567644.a n = (A160895 (n + 1) : ℚ)

end A160895

/-! ## A160895.P10861730097554005398

`A059376(n+1)/A000010(n+1)*A065959(n+1)`
-/

namespace A160895.P10861730097554005398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059376 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A065959 (n + 1) : ℚ)

end

end A160895.P10861730097554005398

namespace A160895

/-- `A059376(n+1)/A000010(n+1)*A065959(n+1)` -/
def P10861730097554005398.Spec : Prop :=
  ∀ n, P10861730097554005398.a n = (A160895 (n + 1) : ℚ)

end A160895

/-! ## A160895.P1842852287273194367

`A007434(n+1)/A000010(n+1)*A194532(n+1)`
-/

namespace A160895.P1842852287273194367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A194532 (n + 1) : ℚ)

end

end A160895.P1842852287273194367

namespace A160895

/-- `A007434(n+1)/A000010(n+1)*A194532(n+1)` -/
def P1842852287273194367.Spec : Prop :=
  ∀ n, P1842852287273194367.a n = (A160895 (n + 1) : ℚ)

end A160895

/-! ## A160895.P391448601105851863

`A069091(n+1)/A059378(n+1)*A160893(n+1)`
-/

namespace A160895.P391448601105851863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A059378 (n + 1) : ℚ) * (A160893 (n + 1) : ℚ)

end

end A160895.P391448601105851863

namespace A160895

/-- `A069091(n+1)/A059378(n+1)*A160893(n+1)` -/
def P391448601105851863.Spec : Prop :=
  ∀ n, P391448601105851863.a n = (A160895 (n + 1) : ℚ)

end A160895

/-! ## A160895.P10859688220133480048

`A069091(n+1)/A069092(n+1)*A160897(n+1)`
-/

namespace A160895.P10859688220133480048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A069092 (n + 1) : ℚ) * (A160897 (n + 1) : ℚ)

end

end A160895.P10859688220133480048

namespace A160895

/-- `A069091(n+1)/A069092(n+1)*A160897(n+1)` -/
def P10859688220133480048.Spec : Prop :=
  ∀ n, P10859688220133480048.a n = (A160895 (n + 1) : ℚ)

end A160895

/-! ## A160895.P17071833226215913102

`A069091(n+1)/A069094(n+1)*A160953(n+1)`
-/

namespace A160895.P17071833226215913102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A069094 (n + 1) : ℚ) * (A160953 (n + 1) : ℚ)

end

end A160895.P17071833226215913102

namespace A160895

/-- `A069091(n+1)/A069094(n+1)*A160953(n+1)` -/
def P17071833226215913102.Spec : Prop :=
  ∀ n, P17071833226215913102.a n = (A160895 (n + 1) : ℚ)

end A160895

/-!
# A160896: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 6.

The programs for A160896, the canonical program `A160896.P15933310030781691343` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160896 has offset 1).

The definition of A160896 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160893, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160896.P15933310030781691343

`63*A160893(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A160896

/-- `63*A160893(n+1)` -/
def P15933310030781691343.Spec : Prop :=
  ∀ n, P15933310030781691343.a n = A160896 (n + 1)

theorem P15933310030781691343.correct : P15933310030781691343.Spec := by
  intro n
  simp only [A160896, Nat.add_sub_cancel]

end A160896

/-! ## A160896.P10744073974508543337

`63*A059378(n+1)/A000010(n+1)`
-/

namespace A160896.P10744073974508543337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  63 * ((A059378 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ))

end

end A160896.P10744073974508543337

namespace A160896

/-- `63*A059378(n+1)/A000010(n+1)` -/
def P10744073974508543337.Spec : Prop :=
  ∀ n, P10744073974508543337.a n = (A160896 (n + 1) : ℚ)

end A160896

/-! ## A160896.P1849776989557467323

`63*A160957(n+1)/A351300(n+1)`
-/

namespace A160896.P1849776989557467323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  63 * ((A160957 (n + 1) : ℚ) / (A351300 (n + 1) : ℚ))

end

end A160896.P1849776989557467323

namespace A160896

/-- `63*A160957(n+1)/A351300(n+1)` -/
def P1849776989557467323.Spec : Prop :=
  ∀ n, P1849776989557467323.a n = (A160896 (n + 1) : ℚ)

end A160896

/-! ## A160896.P14768656734147372726

`63*A059378(n+1)/(n+1-A051953(n+1))`
-/

namespace A160896.P14768656734147372726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  63 * ((A059378 (n + 1) : ℚ) / ((n + 1 : ℤ) - A051953 (n + 1) : ℚ))

end

end A160896.P14768656734147372726

namespace A160896

/-- `63*A059378(n+1)/(n+1-A051953(n+1))` -/
def P14768656734147372726.Spec : Prop :=
  ∀ n, P14768656734147372726.a n = (A160896 (n + 1) : ℚ)

end A160896

/-! ## A160896.P5379700428951734338

`63*∑{d}[n+1, A008683(#)*A344219((n+1)/#)]`
-/

namespace A160896.P5379700428951734338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  63 * (∑ d ∈ Nat.divisors (f1 n), A008683 d * A344219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A160896.P5379700428951734338

namespace A160896

/-- `63*∑{d}[n+1, A008683(#)*A344219((n+1)/#)]` -/
def P5379700428951734338.Spec : Prop :=
  ∀ n, P5379700428951734338.a n = A160896 (n + 1)

end A160896

/-! ## A160896.P15984457294384626340

`63*A059378(n+1)/A069094(n+1)*A160953(n+1)`
-/

namespace A160896.P15984457294384626340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  63 * ((A059378 (n + 1) : ℚ) / (A069094 (n + 1) : ℚ) * (A160953 (n + 1) : ℚ))

end

end A160896.P15984457294384626340

namespace A160896

/-- `63*A059378(n+1)/A069094(n+1)*A160953(n+1)` -/
def P15984457294384626340.Spec : Prop :=
  ∀ n, P15984457294384626340.a n = (A160896 (n + 1) : ℚ)

end A160896

/-! ## A160896.P6570559664783889013

`63*A059378(n+1)/A069095(n+1)*A160957(n+1)`
-/

namespace A160896.P6570559664783889013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  63 * ((A059378 (n + 1) : ℚ) / (A069095 (n + 1) : ℚ) * (A160957 (n + 1) : ℚ))

end

end A160896.P6570559664783889013

namespace A160896

/-- `63*A059378(n+1)/A069095(n+1)*A160957(n+1)` -/
def P6570559664783889013.Spec : Prop :=
  ∀ n, P6570559664783889013.a n = (A160896 (n + 1) : ℚ)

end A160896

/-!
# A160897: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 8.

The programs for A160897, the canonical program `A160897.P16752404958731061009` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160897 has offset 1).

The definition of A160897 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160897.P16752404958731061009

`A069092(n+1)/A000010(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A160897

/-- `A069092(n+1)/A000010(n+1)` -/
def P16752404958731061009.Spec : Prop :=
  ∀ n, P16752404958731061009.a n = (A160897 (n + 1) : ℚ)

end A160897

/-! ## A160897.P261856950175875634

`A069092(n+1)/Δ[A002088(n)]`
-/

namespace A160897.P261856950175875634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A160897.P261856950175875634

namespace A160897

/-- `A069092(n+1)/Δ[A002088(n)]` -/
def P261856950175875634.Spec : Prop :=
  ∀ n, P261856950175875634.a n = (A160897 (n + 1) : ℚ)

end A160897

/-! ## A160897.P9344978444586854496

`(n+1)/A002618(n+1)*A069092(n+1)`
-/

namespace A160897.P9344978444586854496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002618 (n + 1) : ℚ) * (A069092 (n + 1) : ℚ)

end

end A160897.P9344978444586854496

namespace A160897

/-- `(n+1)/A002618(n+1)*A069092(n+1)` -/
def P9344978444586854496.Spec : Prop :=
  ∀ n, P9344978444586854496.a n = (A160897 (n + 1) : ℚ)

end A160897

/-! ## A160897.P2820602960739887241

`∑{d}[n+1, A008683(#)*A344303((n+1)/#)]`
-/

namespace A160897.P2820602960739887241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A344303 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160897.P2820602960739887241

namespace A160897

/-- `∑{d}[n+1, A008683(#)*A344303((n+1)/#)]` -/
def P2820602960739887241.Spec : Prop :=
  ∀ n, P2820602960739887241.a n = A160897 (n + 1)

end A160897

/-! ## A160897.P13119005810535263936

`A069092(n+1)/(A002088(n+1)-A002088(n))`
-/

namespace A160897.P13119005810535263936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (A002088 (n + 1) - A002088 n : ℚ)

end

end A160897.P13119005810535263936

namespace A160897

/-- `A069092(n+1)/(A002088(n+1)-A002088(n))` -/
def P13119005810535263936.Spec : Prop :=
  ∀ n, P13119005810535263936.a n = (A160897 (n + 1) : ℚ)

end A160897

/-! ## A160897.P2606302227694190566

`A069092(n+1)/(A000203(n+1)-A051612(n+1))`
-/

namespace A160897.P2606302227694190566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (A000203 (n + 1) - A051612 (n + 1) : ℚ)

end

end A160897.P2606302227694190566

namespace A160897

/-- `A069092(n+1)/(A000203(n+1)-A051612(n+1))` -/
def P2606302227694190566.Spec : Prop :=
  ∀ n, P2606302227694190566.a n = (A160897 (n + 1) : ℚ)

end A160897

/-! ## A160897.P310935260360092878

`A069092(n+1)/A059377(n+1)*A160891(n+1)`
-/

namespace A160897.P310935260360092878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (A059377 (n + 1) : ℚ) * (A160891 (n + 1) : ℚ)

end

end A160897.P310935260360092878

namespace A160897

/-- `A069092(n+1)/A059377(n+1)*A160891(n+1)` -/
def P310935260360092878.Spec : Prop :=
  ∀ n, P310935260360092878.a n = (A160897 (n + 1) : ℚ)

end A160897

/-! ## A160897.P8889607687391799128

`A069092(n+1)/A069091(n+1)*A160895(n+1)`
-/

namespace A160897.P8889607687391799128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (A069091 (n + 1) : ℚ) * (A160895 (n + 1) : ℚ)

end

end A160897.P8889607687391799128

namespace A160897

/-- `A069092(n+1)/A069091(n+1)*A160895(n+1)` -/
def P8889607687391799128.Spec : Prop :=
  ∀ n, P8889607687391799128.a n = (A160897 (n + 1) : ℚ)

end A160897

/-! ## A160897.P5197280596234967238

`A069092(n+1)/A069093(n+1)*A160908(n+1)`
-/

namespace A160897.P5197280596234967238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (A069093 (n + 1) : ℚ) * (A160908 (n + 1) : ℚ)

end

end A160897.P5197280596234967238

namespace A160897

/-- `A069092(n+1)/A069093(n+1)*A160908(n+1)` -/
def P5197280596234967238.Spec : Prop :=
  ∀ n, P5197280596234967238.a n = (A160897 (n + 1) : ℚ)

end A160897

/-! ## A160897.P11621525128382858200

`A069092(n+1)/A069094(n+1)*A160953(n+1)`
-/

namespace A160897.P11621525128382858200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (A069094 (n + 1) : ℚ) * (A160953 (n + 1) : ℚ)

end

end A160897.P11621525128382858200

namespace A160897

/-- `A069092(n+1)/A069094(n+1)*A160953(n+1)` -/
def P11621525128382858200.Spec : Prop :=
  ∀ n, P11621525128382858200.a n = (A160897 (n + 1) : ℚ)

end A160897

/-! ## A160897.P14115417829719427174

`A069092(n+1)*A115224(n+1)/A115226(n+1)`
-/

namespace A160897.P14115417829719427174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) * A115224 (n + 1) : ℚ) / (A115226 (n + 1) : ℚ)

end

end A160897.P14115417829719427174

namespace A160897

/-- `A069092(n+1)*A115224(n+1)/A115226(n+1)` -/
def P14115417829719427174.Spec : Prop :=
  ∀ n, P14115417829719427174.a n = (A160897 (n + 1) : ℚ)

end A160897

/-!
# A160898: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 7.

The programs for A160898, the canonical program `A160898.P5753092248200493020` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160898 has offset 1).

The definition of A160898 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160895, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160898.P5753092248200493020

`127*A160895(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A160898

/-- `127*A160895(n+1)` -/
def P5753092248200493020.Spec : Prop :=
  ∀ n, P5753092248200493020.a n = A160898 (n + 1)

theorem P5753092248200493020.correct : P5753092248200493020.Spec := by
  intro n
  simp only [A160898, Nat.add_sub_cancel]

end A160898

/-! ## A160898.P9857992342382385139

`A138127(A001615(n+1))*A194532(n+1)`
-/

namespace A160898.P9857992342382385139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138127 (A001615 (n + 1)).toNat * A194532 (n + 1)

end

end A160898.P9857992342382385139

namespace A160898

/-- `A138127(A001615(n+1))*A194532(n+1)` -/
def P9857992342382385139.Spec : Prop :=
  ∀ n, P9857992342382385139.a n = A160898 (n + 1)

end A160898

/-! ## A160898.P12646756925311404874

`∑{d}[∏{p}[n+1, #²], ((n+1)²/#)²]*∑{d}[∏{p}[n+1, #], (n+1)/#]*127`
-/

namespace A160898.P12646756925311404874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (((n + 1) ^ 2 : ℚ) / (d : ℚ)) ^ 2) * (∑ d ∈ Nat.divisors (f3 n), (n + 1 : ℚ) / (d : ℚ)) * 127

end

end A160898.P12646756925311404874

namespace A160898

/-- `∑{d}[∏{p}[n+1, #²], ((n+1)²/#)²]*∑{d}[∏{p}[n+1, #], (n+1)/#]*127` -/
def P12646756925311404874.Spec : Prop :=
  ∀ n, P12646756925311404874.a n = (A160898 (n + 1) : ℚ)

end A160898

/-! ## A160898.P7448482759483982247

`A065959(n+1)*A138127(A160889(n+1))`
-/

namespace A160898.P7448482759483982247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065959 (n + 1) * A138127 (A160889 (n + 1)).toNat

end

end A160898.P7448482759483982247

namespace A160898

/-- `A065959(n+1)*A138127(A160889(n+1))` -/
def P7448482759483982247.Spec : Prop :=
  ∀ n, P7448482759483982247.a n = A160898 (n + 1)

end A160898

/-! ## A160898.P7573844958545713118

`lcm(A138127(A160889(n+1)), A160895(n+1))`
-/

namespace A160898.P7573844958545713118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138127 (A160889 (n + 1)).toNat) (A160895 (n + 1))

end

end A160898.P7573844958545713118

namespace A160898

/-- `lcm(A138127(A160889(n+1)), A160895(n+1))` -/
def P7573844958545713118.Spec : Prop :=
  ∀ n, (P7573844958545713118.a n : ℤ) = A160898 (n + 1)

end A160898

/-!
# A160899: a(n) = the smallest positive multiple of n that has exactly a prime number of 1's in its binary representation.

The programs for A160899, there is no canonical definition to state claims against.
-/

/-! ## A160899.P2455937088150826882

`(n+1)*A387305(n+1)`
-/

namespace A160899.P2455937088150826882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A387305 (n + 1)

end

end A160899.P2455937088150826882

