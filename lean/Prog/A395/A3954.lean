import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C002
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
# A395401: 1/a(n) is the gcd of all distinct resistance values in an n X n unit resistor grid.

The programs for A395401, there is no canonical definition to state claims against.
-/

/-! ## A395401.P5169845944225959372

`A182764(A192431(n+1))`
-/

namespace A395401.P5169845944225959372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182764 (A192431 (n + 1)).toNat

end

end A395401.P5169845944225959372

/-!
# A395405: a(n) is the maximum size of a set family F on {1, 2, ..., n} such that for any pair of not necessarily distinct sets S, T in F, there exists s in S and t in T such that |s - t| = 1.

The programs for A395405, there is no canonical definition to state claims against.
-/

/-! ## A395405.P3878318253802833512

`floor(∑[∑[(2^(n+1)-n)/5]])`
-/

namespace A395405.P3878318253802833512
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - (n : ℤ) : ℚ) / 5

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A395405.P3878318253802833512

/-! ## A395405.P1985776589872378325

`ogf((x+x^2+2x^3+2x^4+5x^5+5x^6+10x^7)/(1-2x))`
-/

namespace A395405.P1985776589872378325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2, 2, 5, 5, 10] [1, -2] n

end

end A395405.P1985776589872378325

/-! ## A395405.P11388630636189547781

`A026322(2^n)-(n+1)`
-/

namespace A395405.P11388630636189547781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026322 (2 ^ n) - (n + 1 : ℤ)

end

end A395405.P11388630636189547781

/-! ## A395405.P1453466240120650211

`A267097(A026657(n))`
-/

namespace A395405.P1453466240120650211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267097 (A026657 n).toNat

end

end A395405.P1453466240120650211

/-!
# A395406: Triangle read by rows: T(n, k) is the number of unordered factorizations of A025487(n) into exactly k factors >= 2, where 0 <= k <= A036041(n).

The programs for A395406, there is no canonical definition to state claims against.
-/

/-! ## A395406.P5802529516551971139

`A065710(A173279(n+1))%4`
-/

namespace A395406.P5802529516551971139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065710 (A173279 (n + 1)).toNat) 4

end

end A395406.P5802529516551971139

/-! ## A395406.P227568223149091682

`A244250(A247916(n+1))`
-/

namespace A395406.P227568223149091682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244250 (A247916 (n + 1)).toNat

end

end A395406.P227568223149091682

/-! ## A395406.P16178568957324104413

`A257696(A123260(n+2))`
-/

namespace A395406.P16178568957324104413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257696 (A123260 (n + 2)).toNat

end

end A395406.P16178568957324104413

/-! ## A395406.P17373162350864373538

`A366851(A307882(n+2))`
-/

namespace A395406.P17373162350864373538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366851 (A307882 (n + 2)).toNat

end

end A395406.P17373162350864373538

/-! ## A395406.P7155297772898325244

`A382817(A101491(A034869(n+2)))`
-/

namespace A395406.P7155297772898325244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382817 (A101491 (A034869 (n + 2)).toNat).toNat

end

end A395406.P7155297772898325244

/-!
# A395409: a(n) = A033677(n) - A135034(n); excess of the smallest divisor of n >= sqrt(n) over ceiling(sqrt(n)).

The programs for A395409, there is no canonical definition to state claims against.
-/

/-! ## A395409.P17220921105988170394

`A033677(n+1)-A135034(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395409.P17220921105988170394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) - A135034 (n + 1)

end

end A395409.P17220921105988170394

/-! ## A395409.P14935050988127869243

`A028391(n)%A033677(n+1)`
-/

namespace A395409.P14935050988127869243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028391 n) (A033677 (n + 1))

end

end A395409.P14935050988127869243

/-! ## A395409.P9548908526313081806

`A397371(n)%A033677(n+1)`
-/

namespace A395409.P9548908526313081806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397371 n) (A033677 (n + 1))

end

end A395409.P9548908526313081806

/-! ## A395409.P2675362437957001165

`A033677(n+1)-A003059(n+1)`
-/

namespace A395409.P2675362437957001165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) - A003059 (n + 1)

end

end A395409.P2675362437957001165

/-! ## A395409.P9917627931222588243

`A248835(n+1)-A135668(n+1)`
-/

namespace A395409.P9917627931222588243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248835 (n + 1) - A135668 (n + 1)

end

end A395409.P9917627931222588243

/-!
# A395410: Number of unlabeled maximal 4-degenerate graphs on n vertices.

The programs for A395410, there is no canonical definition to state claims against.
-/

/-! ## A395410.P1108813587012676722

`A383508(A135254(n))`
-/

namespace A395410.P1108813587012676722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383508 (A135254 n).toNat

end

end A395410.P1108813587012676722

/-! ## A395410.P8959610820434140890

`A122651(A006126(n)-n)`
-/

namespace A395410.P8959610820434140890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A006126 n - (n : ℤ)).toNat

end

end A395410.P8959610820434140890

/-!
# A395415: a(n) is the smallest n-simplex number that has exactly n prime factors, counted with multiplicity.

The programs for A395415, there is no canonical definition to state claims against.
-/

/-! ## A395415.P8976620446633707153

`C(n+1+A396215(n+1)-1, n+1)`
-/

namespace A395415.P8976620446633707153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) + A396215 (n + 1) - 1).toNat (n + 1)

end

end A395415.P8976620446633707153

/-!
# A395416: T(n,k) is the number of partitions of [n] into k blocks with distinct element sums; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A395416, there is no canonical definition to state claims against.
-/

/-! ## A395416.P9344221134466197367

`A089839(A269945(n))`
-/

namespace A395416.P9344221134466197367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089839 (A269945 n).toNat

end

end A395416.P9344221134466197367

/-! ## A395416.P16988061203553665936

`A147981(A230049(n))`
-/

namespace A395416.P16988061203553665936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (A230049 n).toNat

end

end A395416.P16988061203553665936

/-! ## A395416.P15004562320796615619

`A257022(A187557(n))`
-/

namespace A395416.P15004562320796615619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 (A187557 n).toNat

end

end A395416.P15004562320796615619

/-! ## A395416.P3756776314862883899

`A319081(A269948(n))`
-/

namespace A395416.P3756776314862883899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319081 (A269948 n).toNat

end

end A395416.P3756776314862883899

/-! ## A395416.P12960118452066573344

`A115726(A266886(n+2))`
-/

namespace A395416.P12960118452066573344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115726 (A266886 (n + 2)).toNat

end

end A395416.P12960118452066573344

/-!
# A395421: a(n) = (2*n-3-(-1)^n)*(10*n-1+(-1)^n)/8.

The programs for A395421, the canonical program `A395421.P240790419776921196` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395421 has offset 0).

The definition of A395421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-3-(-1)^n)*(10*n-1+(-1)^n)/8` (program `A395421.P11877085220403644313`, by `A395421.P11877085220403644313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395421.P18020865421521842957

`2*floor((n-1)/2)*(3*n-1-floor((n-1)/2))`
-/

namespace A395421.P18020865421521842957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((n : ℤ) - 1 : ℚ) / 2⌋ * ((3 * n : ℤ) - 1 - ⌊((n : ℤ) - 1 : ℚ) / 2⌋)

end

end A395421.P18020865421521842957

namespace A395421

/-- `2*floor((n-1)/2)*(3*n-1-floor((n-1)/2))` -/
def P18020865421521842957.Spec : Prop :=
  ∀ n, P18020865421521842957.a n = A395421 n

end A395421

/-! ## A395421.P11877085220403644313

`(2*n-3-(-1)^n)*(10*n-1+(-1)^n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395421.P11877085220403644313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n : ℤ) - 3 - (-1) ^ n) * ((10 * n : ℤ) - 1 + (-1) ^ n) : ℚ) / 8

end

end A395421.P11877085220403644313

namespace A395421

/-- `(2*n-3-(-1)^n)*(10*n-1+(-1)^n)/8` -/
def P11877085220403644313.Spec : Prop :=
  ∀ n, P11877085220403644313.a n = (A395421 n : ℚ)

theorem P11877085220403644313.correct : P11877085220403644313.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A395421, Nat.add_sub_cancel, A395421.P11877085220403644313.a, A395421.P240790419776921196.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A395421, Nat.add_sub_cancel, A395421.P11877085220403644313.a, A395421.P240790419776921196.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A395421

/-! ## A395421.P240790419776921196

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=14, a(4)=20`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A395421

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P240790419776921196.Spec : Prop :=
  ∀ n, P240790419776921196.a n = A395421 n

theorem P240790419776921196.correct : P240790419776921196.Spec := by
  intro n
  simp only [A395421]

end A395421

/-! ## A395421.P4888644796711075968

`A396652(n)+A137932(n)`
-/

namespace A395421.P4888644796711075968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396652 n + A137932 n

end

end A395421.P4888644796711075968

namespace A395421

/-- `A396652(n)+A137932(n)` -/
def P4888644796711075968.Spec : Prop :=
  ∀ n, P4888644796711075968.a n = A395421 n

end A395421

/-! ## A395421.P15526225259023968693

`A051682(n)-A245300(A210981(n))`
-/

namespace A395421.P15526225259023968693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n - A245300 (A210981 n).toNat

end

end A395421.P15526225259023968693

namespace A395421

/-- `A051682(n)-A245300(A210981(n))` -/
def P15526225259023968693.Spec : Prop :=
  ∀ n, P15526225259023968693.a n = A395421 n

end A395421

/-!
# A395422: Minimum number of triangular cells in a connected polyiamond container that contains every fixed n-iamond as a translated subset.

The programs for A395422, there is no canonical definition to state claims against.
-/

/-! ## A395422.P15086412190405262742

`A175092(n+1)+A066050(n+1)`
-/

namespace A395422.P15086412190405262742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175092 (n + 1) + A066050 (n + 1)

end

end A395422.P15086412190405262742

/-! ## A395422.P12796548765919770830

`A175092(n+1)+A122090(n+1)`
-/

namespace A395422.P12796548765919770830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175092 (n + 1) + A122090 (n + 1)

end

end A395422.P12796548765919770830

/-! ## A395422.P1001284672363240923

`A153817(n+1)+A063932(n+2)`
-/

namespace A395422.P1001284672363240923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153817 (n + 1) + A063932 (n + 2)

end

end A395422.P1001284672363240923

/-! ## A395422.P9557734899204175843

`A095114(n+1)+A077377(A156253(n+1))`
-/

namespace A395422.P9557734899204175843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 1) + A077377 (A156253 (n + 1)).toNat

end

end A395422.P9557734899204175843

/-! ## A395422.P12938263519794793199

`A390813(A280341(n+1))`
-/

namespace A395422.P12938263519794793199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390813 (A280341 (n + 1)).toNat

end

end A395422.P12938263519794793199

/-!
# A395427: Coefficient of x^(3n)/(3n)! in the Maclaurin expansion of a function g(x,0) associated with the Dixon elliptic functions.

The programs for A395427, there is no canonical definition to state claims against.
-/

/-! ## A395427.P3384753466072094275

`A113288(A128740(n))`
-/

namespace A395427.P3384753466072094275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113288 (A128740 n).toNat

end

end A395427.P3384753466072094275

/-!
# A395431: Self-convolution of A001076.

The programs for A395431, the canonical program `A395431.P2289722612649236450` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395431 has offset 0).

The definition of A395431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395431.P2289722612649236450

`8*a(n-1)-14*a(n-2)-8*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A395431

/-- `8*a(n-1)-14*a(n-2)-8*a(n-3)-a(n-4)` -/
def P2289722612649236450.Spec : Prop :=
  ∀ n, P2289722612649236450.a n = A395431 n

theorem P2289722612649236450.correct : P2289722612649236450.Spec := by
  intro n
  simp only [A395431]

end A395431

/-! ## A395431.P6338386329375283841

`(4*(n-1)*a(n-1)+n*a(n-2))/(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A395431.P6338386329375283841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ((4 * ((n : ℤ) - 1) : ℚ) * a (n - 1) + (n : ℚ) * a (n - 2)) / ((n : ℤ) - 2 : ℚ)

end

end A395431.P6338386329375283841

namespace A395431

/-- `(4*(n-1)*a(n-1)+n*a(n-2))/(n-2)` -/
def P6338386329375283841.Spec : Prop :=
  ∀ n, P6338386329375283841.a n = (A395431 n : ℚ)

end A395431

/-!
# A395435: a(n) = sigma(n) - usigma(n) + tau(rad(n)).

The programs for A395435, the canonical program `A395435.P9852731748166270111` is in `Seq.B007.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395435 has offset 1).

The definition of A395435 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395435.P9852731748166270111

`A000203(n+1)-A034448(n+1)+A034444(n+1)`

The canonical program, it is in `Seq.B007.C002`.
-/

namespace A395435

/-- `A000203(n+1)-A034448(n+1)+A034444(n+1)` -/
def P9852731748166270111.Spec : Prop :=
  ∀ n, P9852731748166270111.a n = A395435 (n + 1)

theorem P9852731748166270111.correct : P9852731748166270111.Spec := by
  intro n
  simp only [A395435, Nat.add_sub_cancel]

end A395435

/-! ## A395435.P11557144347320022350

`A048146(n+1)+A034444(n+1)`
-/

namespace A395435.P11557144347320022350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) + A034444 (n + 1)

end

end A395435.P11557144347320022350

namespace A395435

/-- `A048146(n+1)+A034444(n+1)` -/
def P11557144347320022350.Spec : Prop :=
  ∀ n, P11557144347320022350.a n = A395435 (n + 1)

end A395435

/-! ## A395435.P1222653438368675380

`A007503(n+1)-A394481(n+1)`
-/

namespace A395435.P1222653438368675380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A394481 (n + 1)

end

end A395435.P1222653438368675380

namespace A395435

/-- `A007503(n+1)-A394481(n+1)` -/
def P1222653438368675380.Spec : Prop :=
  ∀ n, P1222653438368675380.a n = A395435 (n + 1)

end A395435

/-! ## A395435.P2494543695290402099

`A389784(A294876(n+1))`
-/

namespace A395435.P2494543695290402099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389784 (A294876 (n + 1)).toNat

end

end A395435.P2494543695290402099

namespace A395435

/-- `A389784(A294876(n+1))` -/
def P2494543695290402099.Spec : Prop :=
  ∀ n, P2494543695290402099.a n = A395435 (n + 1)

end A395435

/-!
# A395436: Number of aperiodic linear palindromes of length 2*n+1, summed over all integer partitions of 2*n+1, in the strongly normal fixed-content convention.

The programs for A395436, there is no canonical definition to state claims against.
-/

/-! ## A395436.P13055608507974254784

`∑[A368095(2*n+1)]`
-/

namespace A395436.P13055608507974254784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368095 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395436.P13055608507974254784

/-!
# A395438: Largest divisor of n not exceeding 1 + sqrt(1 + 8*n)/2.

The programs for A395438, there is no canonical definition to state claims against.
-/

/-! ## A395438.P15372872959505705767

`A102096(A086957(n+1))`
-/

namespace A395438.P15372872959505705767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102096 (A086957 (n + 1)).toNat

end

end A395438.P15372872959505705767

/-! ## A395438.P17361153980009081639

`gcd(A033677(n+1), A333941(A025129(n+1)))`
-/

namespace A395438.P17361153980009081639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033677 (n + 1)) (A333941 (A025129 (n + 1)).toNat)

end

end A395438.P17361153980009081639

/-!
# A395446: Number of Hamiltonian paths on an n X n grid, starting from a fixed corner cell and ending anywhere, where the allowed moves are (+-3,0), (0,+-3), or (+-2,+-2).

The programs for A395446, there is no canonical definition to state claims against.
-/

/-! ## A395446.P2174057291679228523

`A382343(n*A000225(n))`
-/

namespace A395446.P2174057291679228523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382343 ((n : ℤ) * A000225 n).toNat

end

end A395446.P2174057291679228523

/-!
# A395447: Numerators of the coefficient of Pi^(4n+1) in Plouffe's formula for zeta(4n+1).

The programs for A395447, there is no canonical definition to state claims against.
-/

/-! ## A395447.P1987076995654124927

`A394976(2*(n+1))`
-/

namespace A395447.P1987076995654124927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394976 (2 * (n + 1))

end

end A395447.P1987076995654124927

/-!
# A395449: Smallest sum of synchronizing word lengths of an n-state binary deterministic finite automaton that has a synchronizing word for every state.

The programs for A395449, there is no canonical definition to state claims against.
-/

/-! ## A395449.P3194812506132209504

`ceil(sqrt(Δ[∑[n+3]²]))`
-/

namespace A395449.P3194812506132209504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉

end

end A395449.P3194812506132209504

/-! ## A395449.P5399293595259174353

`ceil((2*n+1)^atan(3))+6`
-/

namespace A395449.P5399293595259174353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) ^ (Real.arctan (3 : ℝ))⌉ + 6

end

end A395449.P5399293595259174353

/-! ## A395449.P6039863145389433802

`∑[a(n-4)+1]` with `a(0)=7, a(1)=3, a(2)=4, a(3)=4, a(4)=4`
-/

namespace A395449.P6039863145389433802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 3, 4, 4, 4] fun n f1 =>
  f1 (n - 4) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395449.P6039863145389433802

/-! ## A395449.P9627685656993717372

`floor(a(n-1)^2^(2/a(n-1)))` with `a(0)=7`
-/

namespace A395449.P9627685656993717372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ⌊(a (n - 1) : ℝ) ^ ((2 : ℝ) ^ (2 / (a (n - 1) : ℚ) : ℝ))⌋

end

end A395449.P9627685656993717372

/-! ## A395449.P6606138710434413194

`A311209(n)+6`
-/

namespace A395449.P6606138710434413194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311209 n + 6

end

end A395449.P6606138710434413194

/-!
# A395455: Numbers k such that the k-th Stieltjes constant is negative.

The programs for A395455, there is no canonical definition to state claims against.
-/

/-! ## A395455.P3824327474881882880

`comp[A394583(n+1)]`
-/

namespace A395455.P3824327474881882880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395455.P3824327474881882880

/-! ## A395455.P14983935149590370762

`eq[A057428(n), A114523(n)]`
-/

namespace A395455.P14983935149590370762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395455.P14983935149590370762

/-!
# A395461: Expansion of e.g.f. x^3*(1 + x + x^2/2 + x^3/6)*exp(x).

The programs for A395461, the canonical program `A395461.P11626616581990755088` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395461 has offset 0).

The definition of A395461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395461.P11626616581990755088

`n*(n-1)*(n-2)²*(n²-7*n+18)/6`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A395461

/-- `n*(n-1)*(n-2)²*(n²-7*n+18)/6` -/
def P11626616581990755088.Spec : Prop :=
  ∀ n, P11626616581990755088.a n = (A395461 n : ℚ)

end A395461

/-! ## A395461.P1202917450401472552

`6*A394656(n)`
-/

namespace A395461.P1202917450401472552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A394656 n

end

end A395461.P1202917450401472552

namespace A395461

/-- `6*A394656(n)` -/
def P1202917450401472552.Spec : Prop :=
  ∀ n, P1202917450401472552.a n = A395461 n

end A395461

/-! ## A395461.P4180335379535336676

`A008588(A394656(n))`
-/

namespace A395461.P4180335379535336676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A394656 n).toNat

end

end A395461.P4180335379535336676

namespace A395461

/-- `A008588(A394656(n))` -/
def P4180335379535336676.Spec : Prop :=
  ∀ n, P4180335379535336676.a n = A395461 n

end A395461

/-!
# A395463: a(n) = n*(7^n - 1) + 1.

The programs for A395463, the canonical program `A395463.P16345157341292419435` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395463 has offset 0).

The definition of A395463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7^n-1)+1` (program `A395463.P16345157341292419435`, by `A395463.P16345157341292419435.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395463.P16345157341292419435

`n*(7^n-1)+1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A395463

/-- `n*(7^n-1)+1` -/
def P16345157341292419435.Spec : Prop :=
  ∀ n, P16345157341292419435.a n = A395463 n

theorem P16345157341292419435.correct : P16345157341292419435.Spec := by
  intro n
  simp only [A395463]

end A395463

/-! ## A395463.P4389256786946011518

`or(1, n*A024075(n))`
-/

namespace A395463.P4389256786946011518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * A024075 n)

end

end A395463.P4389256786946011518

namespace A395463

/-- `or(1, n*A024075(n))` -/
def P4389256786946011518.Spec : Prop :=
  ∀ n, P4389256786946011518.a n = A395463 n

end A395463

/-! ## A395463.P6393091801761025954

`∏{p}[abs(1-n)-A036293(n), #]`
-/

namespace A395463.P6393091801761025954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| - A036293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A395463.P6393091801761025954

namespace A395463

/-- `∏{p}[abs(1-n)-A036293(n), #]` -/
def P6393091801761025954.Spec : Prop :=
  ∀ n, (P6393091801761025954.a n : ℤ) = A395463 n

end A395463

/-!
# A395473: Number of Q(chi) for chi running through the Dirichlet characters modulo n, where Q(chi) is the field generated by the values of chi.

The programs for A395473, there is no canonical definition to state claims against.
-/

/-! ## A395473.P10691886153405287911

`A320111(A002322(n+1))`
-/

namespace A395473.P10691886153405287911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A002322 (n + 1)).toNat

end

end A395473.P10691886153405287911

/-! ## A395473.P8381333887593552545

`A277692(A263027(n+1))`
-/

namespace A395473.P8381333887593552545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A263027 (n + 1)).toNat

end

end A395473.P8381333887593552545

/-! ## A395473.P8038668888025469683

`A191613(n+1)+A019590(n+1)`
-/

namespace A395473.P8038668888025469683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (n + 1) + A019590 (n + 1)

end

end A395473.P8038668888025469683

/-! ## A395473.P13314894437918155473

`A191613(A066560(n+1))`
-/

namespace A395473.P13314894437918155473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A066560 (n + 1)).toNat

end

end A395473.P13314894437918155473

/-! ## A395473.P9854462679502838479

`A191613(lcm(3, n+1))`
-/

namespace A395473.P9854462679502838479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (Nat.lcm 3 (n + 1))

end

end A395473.P9854462679502838479

/-! ## A395473.P6686445744918806515

`A191613(A109044(n+1))`
-/

namespace A395473.P6686445744918806515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A109044 (n + 1)).toNat

end

end A395473.P6686445744918806515

/-! ## A395473.P14661313383077602618

`A191613(A204998(n+1))`
-/

namespace A395473.P14661313383077602618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A204998 (n + 1)).toNat

end

end A395473.P14661313383077602618

/-! ## A395473.P13420574652348008356

`A191613(A109045(n+1))`
-/

namespace A395473.P13420574652348008356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A109045 (n + 1)).toNat

end

end A395473.P13420574652348008356

/-! ## A395473.P14498381792210751586

`A191613(A109047(n+1))`
-/

namespace A395473.P14498381792210751586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A109047 (n + 1)).toNat

end

end A395473.P14498381792210751586

/-! ## A395473.P13062650152977960032

`A191613(A109049(n+1))`
-/

namespace A395473.P13062650152977960032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A109049 (n + 1)).toNat

end

end A395473.P13062650152977960032

/-! ## A395473.P14153969546526216210

`A191613(A205382(n+1))`
-/

namespace A395473.P14153969546526216210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A205382 (n + 1)).toNat

end

end A395473.P14153969546526216210

/-! ## A395473.P15313335813627616815

`A191613(A109053(n+1))`
-/

namespace A395473.P15313335813627616815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A109053 (n + 1)).toNat

end

end A395473.P15313335813627616815

/-! ## A395473.P9237489815896133282

`gcd(A191613(n+1), A356547(n))`
-/

namespace A395473.P9237489815896133282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191613 (n + 1)) (A356547 n)

end

end A395473.P9237489815896133282

/-! ## A395473.P3707790429145619133

`A216325(A219792(n+1))`
-/

namespace A395473.P3707790429145619133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216325 (A219792 (n + 1)).toNat

end

end A395473.P3707790429145619133

/-!
# A395475: Number of 3 X n binary matrices that are "primitive"; that is, they cannot be expressed as a "tiling" by a smaller matrix.

The programs for A395475, there is no canonical definition to state claims against.
-/

/-! ## A395475.P7388006099405034038

`A323862(A167614(n+1))`
-/

namespace A395475.P7388006099405034038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A167614 (n + 1)).toNat

end

end A395475.P7388006099405034038

/-! ## A395475.P1661391881105962236

`A323862(A373663(n+1))`
-/

namespace A395475.P1661391881105962236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A373663 (n + 1)).toNat

end

end A395475.P1661391881105962236

/-! ## A395475.P17761647092299773335

`A323862(A034856(n+2))`
-/

namespace A395475.P17761647092299773335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A034856 (n + 2)).toNat

end

end A395475.P17761647092299773335

/-! ## A395475.P17334664264617845014

`record[gcd(A323862(n+4), A338896(n+1))]`
-/

namespace A395475.P17334664264617845014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323862 (n + 4)) (A338896 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A395475.P17334664264617845014

/-!
# A395476: Expansion of e.g.f. x^3*(1 + x + x^2/2)*exp(x).

The programs for A395476, the canonical program `A395476.P7947992125469464142` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395476 has offset 0).

The definition of A395476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395476.P7947992125469464142

`n*(n-1)*(n-2)*(n²-5*n+8)/2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A395476

/-- `n*(n-1)*(n-2)*(n²-5*n+8)/2` -/
def P7947992125469464142.Spec : Prop :=
  ∀ n, P7947992125469464142.a n = (A395476 n : ℚ)

end A395476

/-!
# A395480: Number of n-color compositions of n with parts in standard order.

The programs for A395480, there is no canonical definition to state claims against.
-/

/-! ## A395480.P15872211589484961865

`A244579(A032160(n+1))`
-/

namespace A395480.P15872211589484961865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (A032160 (n + 1)).toNat

end

end A395480.P15872211589484961865

/-! ## A395480.P3793754478164243596

`A338316(A032143(n+1))`
-/

namespace A395480.P3793754478164243596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338316 (A032143 (n + 1)).toNat

end

end A395480.P3793754478164243596

/-! ## A395480.P16935314150984010263

`A244579(or(A032143(n+1), A266243(n)))`
-/

namespace A395480.P16935314150984010263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (Int.lor (A032143 (n + 1)) (A266243 n)).toNat

end

end A395480.P16935314150984010263

/-!
# A395481: Number of derangements of [n] with 2 descents.

The programs for A395481, the canonical program `A395481.P9155933806148453481` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395481 has offset 0).

The definition of A395481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395481.P9155933806148453481

`7*a(n-1)-16*a(n-2)+12*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=4, a(5)=24`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A395481

/-- `7*a(n-1)-16*a(n-2)+12*a(n-3)` -/
def P9155933806148453481.Spec : Prop :=
  ∀ n, P9155933806148453481.a n = A395481 n

theorem P9155933806148453481.correct : P9155933806148453481.Spec := by
  intro n
  simp only [A395481]

end A395481

/-! ## A395481.P5013339056311234679

`A083580(n)-A062107(n+1)`
-/

namespace A395481.P5013339056311234679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083580 n - A062107 (n + 1)

end

end A395481.P5013339056311234679

namespace A395481

/-- `A083580(n)-A062107(n+1)` -/
def P5013339056311234679.Spec : Prop :=
  ∀ n, P5013339056311234679.a n = A395481 n

end A395481

/-! ## A395481.P14728104860969959926

`A219836(∑[n]+2)`
-/

namespace A395481.P14728104860969959926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A395481.P14728104860969959926

namespace A395481

/-- `A219836(∑[n]+2)` -/
def P14728104860969959926.Spec : Prop :=
  ∀ n, P14728104860969959926.a n = A395481 n

end A395481

/-! ## A395481.P14565743907082857976

`A395497(A060577(n))`
-/

namespace A395481.P14565743907082857976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395497 (A060577 n).toNat

end

end A395481.P14565743907082857976

namespace A395481

/-- `A395497(A060577(n))` -/
def P14565743907082857976.Spec : Prop :=
  ∀ n, P14565743907082857976.a n = A395481 n

end A395481

/-!
# A395482: Number of derangements of [n] with 3 descents.

The programs for A395482, there is no canonical definition to state claims against.
-/

/-! ## A395482.P3553086885999544342

`A219836(A350660(n+2))`
-/

namespace A395482.P3553086885999544342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (A350660 (n + 2)).toNat

end

end A395482.P3553086885999544342

/-! ## A395482.P6002650347152280349

`A219836(∑[∑[A010060(3*n+1)]])`
-/

namespace A395482.P6002650347152280349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395482.P6002650347152280349

/-! ## A395482.P53476601698930721

`A061196(C(n+3, 7))`
-/

namespace A395482.P53476601698930721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061196 (Nat.choose (n + 3) 7)

end

end A395482.P53476601698930721

/-!
# A395483: Number of derangements of [n] with 4 descents.

The programs for A395483, there is no canonical definition to state claims against.
-/

/-! ## A395483.P4072837502718917886

`A219836(A076027(n+2))`
-/

namespace A395483.P4072837502718917886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (A076027 (n + 2)).toNat

end

end A395483.P4072837502718917886

/-! ## A395483.P13663182836644866334

`A367145(A336142(n))`
-/

namespace A395483.P13663182836644866334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367145 (A336142 n).toNat

end

end A395483.P13663182836644866334

/-! ## A395483.P16058696670419519999

`A159788(A034360(n+1))`
-/

namespace A395483.P16058696670419519999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159788 (A034360 (n + 1)).toNat

end

end A395483.P16058696670419519999

/-! ## A395483.P14974589306328501631

`A089991(A184312(n+1))`
-/

namespace A395483.P14974589306328501631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089991 (A184312 (n + 1)).toNat

end

end A395483.P14974589306328501631

/-!
# A395485: Number of nonisomorphic metrizable convexities on a set of n elements.

The programs for A395485, there is no canonical definition to state claims against.
-/

/-! ## A395485.P12404200297352731757

`A205810(round(exp(n)))`
-/

namespace A395485.P12404200297352731757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205810 (SequenceMachineLib.roundAway (Real.exp (n : ℝ))).toNat

end

end A395485.P12404200297352731757

/-!
# A395486: Consider the square spiral with its cells numbered starting at 0. Two players, Black and Red, take turns. When it is Black's turn, he places a knight at the smallest unoccupied cell not attacked by an existing Red knight, and when it is Red's turn, she places a knight at the smallest unoccupied cell not attacked by an existing Black knight. a(n) = +k if the n-th cell is occupied by the k-th Black knight, a(n) = -k if the n-th cell is occupied by the k-th Red knight, a(n) = 0 otherwise.

The programs for A395486, there is no canonical definition to state claims against.
-/

/-! ## A395486.P11608893038721196881

`A001057(A395364(n))`
-/

namespace A395486.P11608893038721196881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A395364 n).toNat

end

end A395486.P11608893038721196881

/-!
# A395487: a(1) = 1; thereafter a(n+1) is the unused number with the greatest abundancy selected from candidates of the form a(n)/p if possible, otherwise of the form a(n)*p, where p is prime.

The programs for A395487, there is no canonical definition to state claims against.
-/

/-! ## A395487.P17080797795853602567

`A109649(A358505(n+1)+A109649(3*n+1))`
-/

namespace A395487.P17080797795853602567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109649 (A358505 (n + 1) + A109649 (3 * n + 1)).toNat

end

end A395487.P17080797795853602567

/-!
# A395488: Number of derangements of [2*n] with n descents.

The programs for A395488, there is no canonical definition to state claims against.
-/

/-! ## A395488.P1835279655260759449

`A219836(∑[4*n])`
-/

namespace A395488.P1835279655260759449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395488.P1835279655260759449

/-!
# A395489: Number of gcd-closed subsets of {1,2,...,n}.

The programs for A395489, there is no canonical definition to state claims against.
-/

/-! ## A395489.P13923476246842857894

`A003056(2*A363812(n))+A003056(n²)`
-/

namespace A395489.P13923476246842857894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A363812 n).toNat + A003056 (n ^ 2)

end

end A395489.P13923476246842857894

/-!
# A395491: a(n) = tau(n) + (n-1) * Sum_{p|n, p prime} [gcd(p,n/p) = 1], where [ ] is the Iverson bracket.

The programs for A395491, the canonical program `A395491.P9780452655082946417` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395491 has offset 1).

The definition of A395491 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056169, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395491.P9780452655082946417

`A000005(n+1)+n*A056169(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A395491

/-- `A000005(n+1)+n*A056169(n+1)` -/
def P9780452655082946417.Spec : Prop :=
  ∀ n, P9780452655082946417.a n = A395491 (n + 1)

theorem P9780452655082946417.correct : P9780452655082946417.Spec := by
  intro n
  simp only [A395491, Nat.add_sub_cancel]

end A395491

/-! ## A395491.P16918945187190493855

`A000005(n+1)+A038040(n+1)-A394470(n+1)`
-/

namespace A395491.P16918945187190493855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A038040 (n + 1) - A394470 (n + 1))

end

end A395491.P16918945187190493855

namespace A395491

/-- `A000005(n+1)+A038040(n+1)-A394470(n+1)` -/
def P16918945187190493855.Spec : Prop :=
  ∀ n, P16918945187190493855.a n = A395491 (n + 1)

end A395491

/-!
# A395495: Minimum number of cells in a connected polyomino on the square grid that contains every fixed n-omino as a translated subregion.

The programs for A395495, there is no canonical definition to state claims against.
-/

/-! ## A395495.P18031839332550302915

`∑[char[C(3, n)]+n]`
-/

namespace A395495.P18031839332550302915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395495.P18031839332550302915

/-! ## A395495.P413437918813846705

`∑[ceil(cos(∑[n])+n)]`
-/

namespace A395495.P413437918813846705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395495.P413437918813846705

/-! ## A395495.P11332110353374119685

`∑[C(3, lcm(3, n))+n]`
-/

namespace A395495.P11332110353374119685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.lcm 3 n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395495.P11332110353374119685

/-! ## A395495.P9530175708224532150

`ceil(∑[log2(2^n+1)])`
-/

namespace A395495.P9530175708224532150
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (2 ^ n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A395495.P9530175708224532150

/-!
# A395496: a(n) = Sum_{d|n} gcd(d,n/d)*mu(d).

The programs for A395496, the canonical program `A395496.P3662284544009875402` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395496 has offset 1).

The definition of A395496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395496.P3662284544009875402

`A023900(n+1)*A112526(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A395496

/-- `A023900(n+1)*A112526(n+1)` -/
def P3662284544009875402.Spec : Prop :=
  ∀ n, P3662284544009875402.a n = A395496 (n + 1)

theorem P3662284544009875402.correct : P3662284544009875402.Spec := by
  intro n
  simp only [A395496, Nat.add_sub_cancel]

end A395496

/-! ## A395496.P5068770332858437985

`A173557(n+1)*A355683(n+1)`
-/

namespace A395496.P5068770332858437985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A355683 (n + 1)

end

end A395496.P5068770332858437985

namespace A395496

/-- `A173557(n+1)*A355683(n+1)` -/
def P5068770332858437985.Spec : Prop :=
  ∀ n, P5068770332858437985.a n = A395496 (n + 1)

end A395496

/-! ## A395496.P16831285392776710625

`A322351(n+1)*A355683(n+1)`
-/

namespace A395496.P16831285392776710625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322351 (n + 1) * A355683 (n + 1)

end

end A395496.P16831285392776710625

namespace A395496

/-- `A322351(n+1)*A355683(n+1)` -/
def P16831285392776710625.Spec : Prop :=
  ∀ n, P16831285392776710625.a n = A395496 (n + 1)

end A395496

/-! ## A395496.P1712934097236970748

`∑{d}[n+1, A055615(#)*A055653((n+1)/#)]`
-/

namespace A395496.P1712934097236970748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A055653 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395496.P1712934097236970748

namespace A395496

/-- `∑{d}[n+1, A055615(#)*A055653((n+1)/#)]` -/
def P1712934097236970748.Spec : Prop :=
  ∀ n, P1712934097236970748.a n = A395496 (n + 1)

end A395496

/-! ## A395496.P16350726418609281863

`∑{d}[n+1, A023900(#)*A114810((n+1)/#)]`
-/

namespace A395496.P16350726418609281863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A114810 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395496.P16350726418609281863

namespace A395496

/-- `∑{d}[n+1, A023900(#)*A114810((n+1)/#)]` -/
def P16350726418609281863.Spec : Prop :=
  ∀ n, P16350726418609281863.a n = A395496 (n + 1)

end A395496

/-! ## A395496.P12059649484914620628

`∑{d}[n+1, A046692(#)*A360522((n+1)/#)]`
-/

namespace A395496.P12059649484914620628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A360522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395496.P12059649484914620628

namespace A395496

/-- `∑{d}[n+1, A046692(#)*A360522((n+1)/#)]` -/
def P12059649484914620628.Spec : Prop :=
  ∀ n, P12059649484914620628.a n = A395496 (n + 1)

end A395496

/-!
# A395498: Number of derangements of [n] with 2 ascents.

The programs for A395498, there is no canonical definition to state claims against.
-/

/-! ## A395498.P16200493930398233700

`A172412(A069728(n))`
-/

namespace A395498.P16200493930398233700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172412 (A069728 n).toNat

end

end A395498.P16200493930398233700

/-! ## A395498.P10987097101561501947

`A339089(A008116(n))`
-/

namespace A395498.P10987097101561501947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (A008116 n).toNat

end

end A395498.P10987097101561501947

/-! ## A395498.P14687069465687496473

`A339089(A009849(n))`
-/

namespace A395498.P14687069465687496473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (A009849 n).toNat

end

end A395498.P14687069465687496473

/-!
# A395499: Number of derangements of [n] with 3 ascents.

The programs for A395499, there is no canonical definition to state claims against.
-/

/-! ## A395499.P14521463485056350268

`A218882(2*n+5)`
-/

namespace A395499.P14521463485056350268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218882 (2 * n + 5)

end

end A395499.P14521463485056350268

/-! ## A395499.P1792194237524945200

`A393715(C(2*n+1, 9))`
-/

namespace A395499.P1792194237524945200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393715 (Nat.choose (2 * n + 1) 9)

end

end A395499.P1792194237524945200

/-! ## A395499.P17988076957648769895

`A036876(A041743(n))`
-/

namespace A395499.P17988076957648769895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036876 (A041743 n).toNat

end

end A395499.P17988076957648769895

