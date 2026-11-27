import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A231701: Numbers > 100 with decimal digits in arithmetic progression mod 10.

The programs for A231701, there is no canonical definition to state claims against.
-/

/-! ## A231701.P11087191230221355643

`eq[10, A076313(A098488(n))]`
-/

namespace A231701.P11087191230221355643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (A098488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231701.P11087191230221355643

/-!
# A231702: Number of (n+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231702, there is no canonical definition to state claims against.
-/

/-! ## A231702.P12382024453480697289

`A231710(∑[4*n]+1)`
-/

namespace A231702.P12382024453480697289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231702.P12382024453480697289

/-! ## A231702.P3661959973119113454

`record[A003982(n)*A231710(n+1)]`
-/

namespace A231702.P3661959973119113454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231702.P3661959973119113454

/-! ## A231702.P4676069813373747854

`record[gcd(A231710(n+1), A231713(n))]`
-/

namespace A231702.P4676069813373747854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231710 (n + 1)) (A231713 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231702.P4676069813373747854

/-!
# A231703: Number of (n+1) X (1+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231703, the canonical program `A231703.P2170966505656659703` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231703 has offset 1).

The definition of A231703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231703.P2170966505656659703

`ogf((5+2x-4x^2-8x^3+2x^4-x^5+x^6-x^7+x^8)/(1-3x+x^2-4x^3+8x^4-3x^5+3x^6-3x^7+2x^8-x^9))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A231703

/-- `ogf((5+2x-4x^2-8x^3+2x^4-x^5+x^6-x^7+x^8)/(1-3x+x^2-4x^3+8x^4-3x^5+3x^6-3x^7+2x^8-x^9))` -/
def P2170966505656659703.Spec : Prop :=
  ∀ n, P2170966505656659703.a n = A231703 (n + 1)

theorem P2170966505656659703.correct : P2170966505656659703.Spec := by
  intro n
  simp only [A231703, Nat.add_sub_cancel]

end A231703

/-! ## A231703.P8004691905829557252

`A231710(∑[n]+1)`
-/

namespace A231703.P8004691905829557252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231703.P8004691905829557252

namespace A231703

/-- `A231710(∑[n]+1)` -/
def P8004691905829557252.Spec : Prop :=
  ∀ n, P8004691905829557252.a n = A231703 (n + 1)

end A231703

/-! ## A231703.P12599873186364670735

`record[A010054(n)*A231710(n+1)]`
-/

namespace A231703.P12599873186364670735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A231710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231703.P12599873186364670735

namespace A231703

/-- `record[A010054(n)*A231710(n+1)]` -/
def P12599873186364670735.Spec : Prop :=
  ∀ n, P12599873186364670735.a n = A231703 (n + 1)

end A231703

/-! ## A231703.P10737955511208684345

`record[A231710(n+1)/A022166(n)]`
-/

namespace A231703.P10737955511208684345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231710 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231703.P10737955511208684345

namespace A231703

/-- `record[A231710(n+1)/A022166(n)]` -/
def P10737955511208684345.Spec : Prop :=
  ∀ n, P10737955511208684345.a n = (A231703 (n + 1) : ℚ)

end A231703

/-! ## A231703.P9197521280138858706

`record[root(A231710(n+1), A001498(n))]`
-/

namespace A231703.P9197521280138858706
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231710 (n + 1) : ℝ) ^ (1 / (A001498 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231703.P9197521280138858706

namespace A231703

/-- `record[root(A231710(n+1), A001498(n))]` -/
def P9197521280138858706.Spec : Prop :=
  ∀ n, P9197521280138858706.a n = (A231703 (n + 1) : ℝ)

end A231703

/-!
# A231704: Number of (n+1)X(2+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231704, there is no canonical definition to state claims against.
-/

/-! ## A231704.P14669337100444477464

`A231710(∑[n+1]+2)`
-/

namespace A231704.P14669337100444477464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231704.P14669337100444477464

/-! ## A231704.P10338358396375306175

`record[A010054(n)*A231710(n+2)]`
-/

namespace A231704.P10338358396375306175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A231710 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231704.P10338358396375306175

/-! ## A231704.P8318104786397704147

`record[gcd(A002262(n), A231710(n+2))]`
-/

namespace A231704.P8318104786397704147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231710 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231704.P8318104786397704147

/-! ## A231704.P15152404602116163639

`record[root(A231710(n+2), A200370(n+1))]`
-/

namespace A231704.P15152404602116163639
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231710 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231704.P15152404602116163639

/-! ## A231704.P14105695568823689411

`record[root(A231710(n+2), A004739(2*n+1))]`
-/

namespace A231704.P14105695568823689411
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231710 (n + 2) : ℝ) ^ (1 / (A004739 (2 * n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231704.P14105695568823689411

/-!
# A231705: Number of (n+1)X(3+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231705, there is no canonical definition to state claims against.
-/

/-! ## A231705.P3071063789689996994

`A231710(∑[n+2]+4)`
-/

namespace A231705.P3071063789689996994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231705.P3071063789689996994

/-!
# A231706: Number of (n+1)X(4+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231706, there is no canonical definition to state claims against.
-/

/-! ## A231706.P17101641485428662280

`A231710(A374004(n+1))`
-/

namespace A231706.P17101641485428662280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A374004 (n + 1)).toNat

end

end A231706.P17101641485428662280

/-! ## A231706.P10716751941592046831

`A231710(A141214(n+1))`
-/

namespace A231706.P10716751941592046831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A141214 (n + 1)).toNat

end

end A231706.P10716751941592046831

/-!
# A231707: Number of (n+1)X(5+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231707, there is no canonical definition to state claims against.
-/

/-! ## A231707.P10217113371683910222

`A231710(eq[5, col(n)+1]+1)`
-/

namespace A231707.P10217113371683910222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A231707.P10217113371683910222

/-!
# A231708: Number of (n+1)X(6+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231708, there is no canonical definition to state claims against.
-/

/-! ## A231708.P8676051532386235672

`A231710(A374007(n+1))`
-/

namespace A231708.P8676051532386235672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A374007 (n + 1)).toNat

end

end A231708.P8676051532386235672

/-!
# A231709: Number of (n+1) X (7+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical and antidiagonal neighbors equal to one.

The programs for A231709, there is no canonical definition to state claims against.
-/

/-! ## A231709.P16778673703000767241

`A231710(A374008(n+1))`
-/

namespace A231709.P16778673703000767241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231710 (A374008 (n + 1)).toNat

end

end A231709.P16778673703000767241

/-!
# A231711: Numbers n such that n > sigma(n) - sigma(n-1).

The programs for A231711, the canonical program `A231711.P16047213515376347188` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231711 has offset 1).

The definition of A231711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231711.P16047213515376347188

`lt[Δ[∑{d}[n, #]], n+1]+1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A231711

/-- `lt[Δ[∑{d}[n, #]], n+1]+1` -/
def P16047213515376347188.Spec : Prop :=
  ∀ n, (P16047213515376347188.a n : ℤ) = A231711 (n + 1)

theorem P16047213515376347188.correct : P16047213515376347188.Spec := by
  intro n
  simp only [A231711, Nat.add_sub_cancel]

end A231711

/-! ## A231711.P1855857748097574127

`lt[∑{d}[n+1, #]-∑{d}[n, #], n+1]+1`
-/

namespace A231711.P1855857748097574127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A231711.P1855857748097574127

namespace A231711

/-- `lt[∑{d}[n+1, #]-∑{d}[n, #], n+1]+1` -/
def P1855857748097574127.Spec : Prop :=
  ∀ n, (P1855857748097574127.a n : ℤ) = A231711 (n + 1)

theorem P1855857748097574127.correct : P1855857748097574127.Spec := by
  intro n
  simp only [A231711, Nat.add_sub_cancel, A231711.P1855857748097574127.f2, A231711.P1855857748097574127.f3, A231711.P1855857748097574127.f1, A231711.P1855857748097574127.f4, A231711.P1855857748097574127.a, A231711.P16047213515376347188.f3, A231711.P16047213515376347188.f2, A231711.P16047213515376347188.f1, A231711.P16047213515376347188.f4, A231711.P16047213515376347188.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A231711

/-! ## A231711.P14837954851081936027

`lt[0, A163553(n+1)]+2`
-/

namespace A231711.P14837954851081936027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A231711.P14837954851081936027

namespace A231711

/-- `lt[0, A163553(n+1)]+2` -/
def P14837954851081936027.Spec : Prop :=
  ∀ n, (P14837954851081936027.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P11129766175525854831

`lt[A340793(abs(1-n)+1), n]`
-/

namespace A231711.P11129766175525854831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A231711.P11129766175525854831

namespace A231711

/-- `lt[A340793(abs(1-n)+1), n]` -/
def P11129766175525854831.Spec : Prop :=
  ∀ n, (P11129766175525854831.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P1320904415053172105

`lt[Δ[A237588(n+1)], n]+2`
-/

namespace A231711.P1320904415053172105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A231711.P1320904415053172105

namespace A231711

/-- `lt[Δ[A237588(n+1)], n]+2` -/
def P1320904415053172105.Spec : Prop :=
  ∀ n, (P1320904415053172105.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P13623980699611334526

`lt[A340793(n+1), n+1]+1`
-/

namespace A231711.P13623980699611334526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A231711.P13623980699611334526

namespace A231711

/-- `lt[A340793(n+1), n+1]+1` -/
def P13623980699611334526.Spec : Prop :=
  ∀ n, (P13623980699611334526.a n : ℤ) = A231711 (n + 1)

theorem P13623980699611334526.correct : P13623980699611334526.Spec := by
  intro n
  simp only [A231711, Nat.add_sub_cancel, A231711.P13623980699611334526.f1, A231711.P13623980699611334526.f2, A231711.P13623980699611334526.a, A231711.P16047213515376347188.f3, A231711.P16047213515376347188.f2, A231711.P16047213515376347188.f1, A231711.P16047213515376347188.f4, A231711.P16047213515376347188.a, A340793, A340793.P11261700506435021643.f2, A340793.P11261700506435021643.f1, A340793.P11261700506435021643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231711

/-! ## A231711.P2026699308667737384

`lt[A001065(n+1), ∑{d}[n, #]]+1`
-/

namespace A231711.P2026699308667737384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A231711.P2026699308667737384

namespace A231711

/-- `lt[A001065(n+1), ∑{d}[n, #]]+1` -/
def P2026699308667737384.Spec : Prop :=
  ∀ n, (P2026699308667737384.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P8777966367988791225

`lt[Δ[A000203(n+1)], n+2]+2`
-/

namespace A231711.P8777966367988791225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A231711.P8777966367988791225

namespace A231711

/-- `lt[Δ[A000203(n+1)], n+2]+2` -/
def P8777966367988791225.Spec : Prop :=
  ∀ n, (P8777966367988791225.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P14824160196393280366

`lt[A048050(n+1), A039653(n)]+1`
-/

namespace A231711.P14824160196393280366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A231711.P14824160196393280366

namespace A231711

/-- `lt[A048050(n+1), A039653(n)]+1` -/
def P14824160196393280366.Spec : Prop :=
  ∀ n, (P14824160196393280366.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P1439086011950543565

`A020725(lt[A340793(n+1), n+1])`
-/

namespace A231711.P1439086011950543565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A231711.P1439086011950543565

namespace A231711

/-- `A020725(lt[A340793(n+1), n+1])` -/
def P1439086011950543565.Spec : Prop :=
  ∀ n, P1439086011950543565.a n = A231711 (n + 1)

end A231711

/-! ## A231711.P1318611789831287626

`lt[A053246(n+1), A153152(n)]+2`
-/

namespace A231711.P1318611789831287626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A231711.P1318611789831287626

namespace A231711

/-- `lt[A053246(n+1), A153152(n)]+2` -/
def P1318611789831287626.Spec : Prop :=
  ∀ n, (P1318611789831287626.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P12382764587826878227

`lt[A001065(n+2), A000203(n+1)]+2`
-/

namespace A231711.P12382764587826878227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A231711.P12382764587826878227

namespace A231711

/-- `lt[A001065(n+2), A000203(n+1)]+2` -/
def P12382764587826878227.Spec : Prop :=
  ∀ n, (P12382764587826878227.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P140521719787669254

`lt[A024816(n+1), A024816(n+2)]+2`
-/

namespace A231711.P140521719787669254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A231711.P140521719787669254

namespace A231711

/-- `lt[A024816(n+1), A024816(n+2)]+2` -/
def P140521719787669254.Spec : Prop :=
  ∀ n, (P140521719787669254.a n : ℤ) = A231711 (n + 1)

end A231711

/-! ## A231711.P13725039303080964991

`lt[A237588(n+2), A294888(n+1)]+2`
-/

namespace A231711.P13725039303080964991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A231711.P13725039303080964991

namespace A231711

/-- `lt[A237588(n+2), A294888(n+1)]+2` -/
def P13725039303080964991.Spec : Prop :=
  ∀ n, (P13725039303080964991.a n : ℤ) = A231711 (n + 1)

end A231711

/-!
# A231712: a(n) = n^n + n - 1.

The programs for A231712, the canonical program `A231712.P13940399897364563779` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231712 has offset 0).

The definition of A231712 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n+n-1` (program `A231712.P13940399897364563779`, by `A231712.P13940399897364563779.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A231712.P13940399897364563779

`n^n+n-1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A231712

/-- `n^n+n-1` -/
def P13940399897364563779.Spec : Prop :=
  ∀ n, P13940399897364563779.a n = A231712 n

theorem P13940399897364563779.correct : P13940399897364563779.Spec := by
  intro n
  simp only [A231712]

end A231712

/-! ## A231712.P17941199555010368302

`xor(-(n+n^n), -1)`
-/

namespace A231712.P17941199555010368302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(n + n ^ n : ℤ)) (-1)

end

end A231712.P17941199555010368302

namespace A231712

/-- `xor(-(n+n^n), -1)` -/
def P17941199555010368302.Spec : Prop :=
  ∀ n, P17941199555010368302.a n = A231712 n

end A231712

/-! ## A231712.P6928737452560460241

`∑{#}[1, (n-#)^gcd(n, #)]`
-/

namespace A231712.P6928737452560460241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n : ℤ) - (k : ℤ)) ^ Nat.gcd n k

end

end A231712.P6928737452560460241

namespace A231712

/-- `∑{#}[1, (n-#)^gcd(n, #)]` -/
def P6928737452560460241.Spec : Prop :=
  ∀ n, P6928737452560460241.a n = A231712 n

end A231712

/-! ## A231712.P12921303411061918999

`or(n-(1-n^n), char[1])`
-/

namespace A231712.P12921303411061918999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - (1 - (n ^ n : ℤ))) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231712.P12921303411061918999

namespace A231712

/-- `or(n-(1-n^n), char[1])` -/
def P12921303411061918999.Spec : Prop :=
  ∀ n, P12921303411061918999.a n = A231712 n

end A231712

/-! ## A231712.P7584612945172286321

`abs(C(n, n)-n^n-n)`
-/

namespace A231712.P7584612945172286321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n n : ℤ) - (n ^ n : ℤ) - (n : ℤ)|

end

end A231712.P7584612945172286321

namespace A231712

/-- `abs(C(n, n)-n^n-n)` -/
def P7584612945172286321.Spec : Prop :=
  ∀ n, P7584612945172286321.a n = A231712 n

end A231712

/-! ## A231712.P8463941209548576158

`abs(2+xor(n^n+n, -1))`
-/

namespace A231712.P8463941209548576158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 + Int.xor (n ^ n + n : ℤ) (-1)|

end

end A231712.P8463941209548576158

namespace A231712

/-- `abs(2+xor(n^n+n, -1))` -/
def P8463941209548576158.Spec : Prop :=
  ∀ n, P8463941209548576158.a n = A231712 n

end A231712

/-! ## A231712.P4258404759621500464

`∑{#}[n, (n^n-1)^C(#, n)]`
-/

namespace A231712.P4258404759621500464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n ^ n : ℤ) - 1) ^ Nat.choose k n

end

end A231712.P4258404759621500464

namespace A231712

/-- `∑{#}[n, (n^n-1)^C(#, n)]` -/
def P4258404759621500464.Spec : Prop :=
  ∀ n, P4258404759621500464.a n = A231712 n

end A231712

/-! ## A231712.P3001866353964432977

`abs(1-(n+A000312(n)))`
-/

namespace A231712.P3001866353964432977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((n : ℤ) + A000312 n)|

end

end A231712.P3001866353964432977

namespace A231712

/-- `abs(1-(n+A000312(n)))` -/
def P3001866353964432977.Spec : Prop :=
  ∀ n, P3001866353964432977.a n = A231712 n

end A231712

/-! ## A231712.P3381041641733376207

`abs(2-(A014566(n)+n))`
-/

namespace A231712.P3381041641733376207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A014566 n + (n : ℤ))|

end

end A231712.P3381041641733376207

namespace A231712

/-- `abs(2-(A014566(n)+n))` -/
def P3381041641733376207.Spec : Prop :=
  ∀ n, P3381041641733376207.a n = A231712 n

end A231712

/-!
# A231713: Square array A(i,j) = the sum of absolute values of digit differences in the matching positions of the factorial base representations of i and j, for i >= 0, j >= 0, read by antidiagonals.

The programs for A231713, there is no canonical definition to state claims against.
-/

/-! ## A231713.P15297865134987796256

`A276150(A003987(n)%A330097(n+1))`
-/

namespace A231713.P15297865134987796256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (Int.tmod (A003987 n) (A330097 (n + 1))).toNat

end

end A231713.P15297865134987796256

/-!
# A231714: Lower triangular region of A231713; A triangular table read by rows: T(n,k) = sum of absolute values of digit differences in the factorial base representations (A007623) of n and k, where (n, k) = (0,0), (1,0), (1,1), (2,0), (2,1), (2,2), ..., n >= 0 and (0 <= k <= n).

The programs for A231714, there is no canonical definition to state claims against.
-/

/-! ## A231714.P13789737760402698247

`A231713(C(A003056(n)+A002262(n)+1, 2)+A002262(n))`
-/

namespace A231714.P13789737760402698247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231713 ((Nat.choose (A003056 n + A002262 n + 1).toNat 2 : ℤ) + A002262 n).toNat

end

end A231714.P13789737760402698247

/-! ## A231714.P16802182449287820141

`A231713(A245300(n))`
-/

namespace A231714.P16802182449287820141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231713 (A245300 n).toNat

end

end A231714.P16802182449287820141

/-! ## A231714.P12671991248307262256

`A370884(A049055(n+2))`
-/

namespace A231714.P12671991248307262256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370884 (A049055 (n + 2)).toNat

end

end A231714.P12671991248307262256

/-! ## A231714.P14436474073407851629

`A331596(A136237(n))`
-/

namespace A231714.P14436474073407851629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331596 (A136237 n).toNat

end

end A231714.P14436474073407851629

/-! ## A231714.P11546256077463869898

`A039737(A356653(n+1))`
-/

namespace A231714.P11546256077463869898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039737 (A356653 (n + 1)).toNat

end

end A231714.P11546256077463869898

/-!
# A231715: For n with a unique factorial base representation n = du*u! + ... + d2*2! + d1*1! (each di in range 0..i, cf. A007623), a(n) = Product_{i=1..u} (gcd(d_i,i+1) mod i+1), where u is given by A084558(n).

The programs for A231715, there is no canonical definition to state claims against.
-/

/-! ## A231715.P6354087576506575896

`A099563(∏{digits}[A007623(n+1), #*A265891(n+1)])`
-/

namespace A231715.P6354087576506575896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) * A265891 (n + 1)).prod.toNat

end

end A231715.P6354087576506575896

/-! ## A231715.P13958204354305098404

`A001954(A188851(n+4))%A176040(n)`
-/

namespace A231715.P13958204354305098404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001954 (A188851 (n + 4)).toNat) (A176040 n)

end

end A231715.P13958204354305098404

/-! ## A231715.P3837475699714805173

`val(A154376(7*n+16), A154411(A249744(5*n+3)))`
-/

namespace A231715.P3837475699714805173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A154376 (7 * n + 16)).toNat (A154411 (A249744 (5 * n + 3)).toNat).toNat

end

end A231715.P3837475699714805173

/-! ## A231715.P17454185932867056040

`A000161(A273410(3*n+2)-A001105(n))`
-/

namespace A231715.P17454185932867056040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A273410 (3 * n + 2) - A001105 n).toNat

end

end A231715.P17454185932867056040

/-! ## A231715.P4847900155030642682

`C(A321649(n+1), A034444(A080211(n+3)))`
-/

namespace A231715.P4847900155030642682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A321649 (n + 1)).toNat (A034444 (A080211 (n + 3)).toNat).toNat

end

end A231715.P4847900155030642682

/-!
# A231716: Numbers with restricted residue set factorial base representation: numbers n which can be formed as a sum n = du*u! + ... + d2*2! + d1*1!, where each di is in range 1..i and gcd(di,i+1)=1.

The programs for A231716, there is no canonical definition to state claims against.
-/

/-! ## A231716.P2190916241133995800

`eq[1, A231715(n+1)]+1`
-/

namespace A231716.P2190916241133995800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231715 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231716.P2190916241133995800

/-! ## A231716.P9988900996507482712

`filter[2*n+1, A231715(#)]`
-/

namespace A231716.P9988900996507482712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231715 (f1 j) = 1) n)

end

end A231716.P9988900996507482712

/-! ## A231716.P15379305894499340999

`A004442(eq[1, A231715(n+1)])`
-/

namespace A231716.P15379305894499340999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231716.P15379305894499340999

/-! ## A231716.P16965160983498996423

`A079097(eq[1, A231715(n+1)])`
-/

namespace A231716.P16965160983498996423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231716.P16965160983498996423

/-! ## A231716.P570814509020999943

`eq[A000035(n), A231715(A093178(n))]`
-/

namespace A231716.P570814509020999943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231715 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231716.P570814509020999943

/-! ## A231716.P4932913680814932608

`eq[n-A231715(A093178(n)), A276093(n)]`
-/

namespace A231716.P4932913680814932608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A231715 (A093178 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231716.P4932913680814932608

/-!
# A231718: Positions of ones in A231717.

The programs for A231718, there is no canonical definition to state claims against.
-/

/-! ## A231718.P10026190016873045537

`A258008(n)+a(n-1)` with `a(0)=1`
-/

namespace A231718.P10026190016873045537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A258008 n + a (n - 1)

end

end A231718.P10026190016873045537

/-! ## A231718.P8385867439852285845

`∑[A258008(round(sqrt(n²+1)))]-6`
-/

namespace A231718.P8385867439852285845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258008 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 6

end

end A231718.P8385867439852285845

/-! ## A231718.P8894526962062082562

`A020725(∑[A258008(n+1)])-A258008(n+1)`
-/

namespace A231718.P8894526962062082562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A258008 (n + 1)

end

end A231718.P8894526962062082562

/-! ## A231718.P6039626993759312231

`eq[1, A231717(n)]`
-/

namespace A231718.P6039626993759312231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231718.P6039626993759312231

/-! ## A231718.P15124188487541239066

`record[A230422(n+1)/A231717(A230422(n+1))]`
-/

namespace A231718.P15124188487541239066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230422 (n + 1) : ℚ) / (A231717 (A230422 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231718.P15124188487541239066

/-!
# A231719: After zero, a(n) = largest m such that m! divides the difference between successive nodes A219666(n-1) and A219666(n) in the infinite trunk of the factorial beanstalk.

The programs for A231719, there is no canonical definition to state claims against.
-/

/-! ## A231719.P16369555669636589777

`∑{d}[A230406(n), A012245(#)]`
-/

namespace A231719.P16369555669636589777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A012245 d

end

end A231719.P16369555669636589777

/-! ## A231719.P11090032500771493359

`∑{d}[A230406(n), A316341(#)]`
-/

namespace A231719.P11090032500771493359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A316341 d

end

end A231719.P11090032500771493359

/-! ## A231719.P4138930522681380152

`A230415(2*A230406(n)²)`
-/

namespace A231719.P4138930522681380152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230415 (2 * A230406 n ^ 2).toNat

end

end A231719.P4138930522681380152

/-! ## A231719.P8193730327920995542

`A332202(∑{e}[A278534(n), #])`
-/

namespace A231719.P8193730327920995542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332202 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A231719.P8193730327920995542

/-!
# A231720: a(0)=1, after which, for any n uniquely written as du*u! + ... + d2*2! + d1*1! (each di in range 0..i), a(n) = (du+1)*(u+1)! + ... + (d2+1)*3! + (d1+1)*2! + 1; the natural numbers with their factorial base representation (A007623) shifted left one step and each digit incremented by one, converted back to decimal.

The programs for A231720, the canonical program `A231720.P17111948023975065534` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231720 has offset 0).

The definition of A231720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231720.P17111948023975065534

`A153880(n)+A073575(A048765(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A231720

/-- `A153880(n)+A073575(A048765(n+1))` -/
def P17111948023975065534.Spec : Prop :=
  ∀ n, P17111948023975065534.a n = A231720 n

theorem P17111948023975065534.correct : P17111948023975065534.Spec := by
  intro n
  simp only [A231720]

end A231720

/-! ## A231720.P13160536996010956723

`A073575(A048765(n+1))+record[n-A276008(n)]`
-/

namespace A231720.P13160536996010956723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (A048765 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231720.P13160536996010956723

namespace A231720

/-- `A073575(A048765(n+1))+record[n-A276008(n)]` -/
def P13160536996010956723.Spec : Prop :=
  ∀ n, P13160536996010956723.a n = A231720 n

end A231720

/-! ## A231720.P13737026606021240715

`A073575(A048765(n+1))+A255411(n)-(A225901(n)+n)`
-/

namespace A231720.P13737026606021240715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (A048765 (n + 1)).toNat + (A255411 n - (A225901 n + (n : ℤ)))

end

end A231720.P13737026606021240715

namespace A231720

/-- `A073575(A048765(n+1))+A255411(n)-(A225901(n)+n)` -/
def P13737026606021240715.Spec : Prop :=
  ∀ n, P13737026606021240715.a n = A231720 n

theorem P13737026606021240715.correct : P13737026606021240715.Spec := by
  intro n
  simp only [A231720, Nat.add_sub_cancel, A231720.P13737026606021240715.a, A231720.P17111948023975065534.a, A048765, A048765.P11533445910234315117.f1, A048765.P11533445910234315117.a, A073575, A073575.P7103665367580094078.a, A153880, A153880.P3482003210963129646.f1, A153880.P3482003210963129646.a, A225901, A225901.P12643003353699511436.a, A255411, A255411.P7358390059741772426.f1, A255411.P7358390059741772426.f2, A255411.P7358390059741772426.a, A007489, A007489.P15792115020538832421.a, A055881, A055881.P4336097059944731344.f1, A055881.P4336097059944731344.a, A275736, A275736.P7348986673966991856.a, A012245, A012245.P17842935697722237236.f2, A012245.P17842935697722237236.f1, A012245.P17842935697722237236.a, A048675, A048675.P14660327672949980217.a, A275732, A275732.P9609406429267290883.a, A032742, A032742.P14489579072839730134.a, A055396, A055396.P17826085050628259744.a, A276076, A276076.P9396357468648609114.a, A351950, A351950.P14265277843346123773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A231720

/-! ## A231720.P277179784580036559

`A220655(A153880(n)+1)-1`
-/

namespace A231720.P277179784580036559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220655 (A153880 n + 1).toNat - 1

end

end A231720.P277179784580036559

namespace A231720

/-- `A220655(A153880(n)+1)-1` -/
def P277179784580036559.Spec : Prop :=
  ∀ n, P277179784580036559.a n = A231720 n

end A231720

/-! ## A231720.P12823802645513279034

`A220656(A153880(n)+1)-2`
-/

namespace A231720.P12823802645513279034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220656 (A153880 n + 1).toNat - 2

end

end A231720.P12823802645513279034

namespace A231720

/-- `A220656(A153880(n)+1)-2` -/
def P12823802645513279034.Spec : Prop :=
  ∀ n, P12823802645513279034.a n = A231720 n

end A231720

/-! ## A231720.P5973565237205772789

`A085219(∑[n+1]+1)`
-/

namespace A231720.P5973565237205772789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231720.P5973565237205772789

namespace A231720

/-- `A085219(∑[n+1]+1)` -/
def P5973565237205772789.Spec : Prop :=
  ∀ n, P5973565237205772789.a n = A231720 n

end A231720

/-! ## A231720.P156915731918033768

`A085220(∑[n+1]+n)`
-/

namespace A231720.P156915731918033768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085220 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A231720.P156915731918033768

namespace A231720

/-- `A085220(∑[n+1]+n)` -/
def P156915731918033768.Spec : Prop :=
  ∀ n, P156915731918033768.a n = A231720 n

end A231720

/-!
# A231721: Partial sums of phitorials: a(n) = A001088(1)+A001088(2)+...+A001088(n).

The programs for A231721, there is no canonical definition to state claims against.
-/

/-! ## A231721.P11844634151567994827

`A231722(n+1)+1`
-/

namespace A231721.P11844634151567994827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231722 (n + 1) + 1

end

end A231721.P11844634151567994827

/-! ## A231721.P9309349516734492890

`A001088(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A231721.P9309349516734492890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001088 (n + 1) + a (n - 1)

end

end A231721.P9309349516734492890

/-! ## A231721.P12017758555251422960

`∑[∏[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]]`
-/

namespace A231721.P12017758555251422960
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P12017758555251422960

/-! ## A231721.P2391750193331827473

`∑[A001088(1+n)]`
-/

namespace A231721.P2391750193331827473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001088 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P2391750193331827473

/-! ## A231721.P14206474794551767153

`∑[∏[Δ[A002088(n)]]]`
-/

namespace A231721.P14206474794551767153
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P14206474794551767153

/-! ## A231721.P12690680051516696403

`∑[∏[Δ[A005728(n)]]]`
-/

namespace A231721.P12690680051516696403
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P12690680051516696403

/-! ## A231721.P144012563498342007

`∑[∏[A000010(n+1)]]`
-/

namespace A231721.P144012563498342007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P144012563498342007

/-! ## A231721.P8521565190268208374

`∑[∏[A282634(∑[n]+1)]]`
-/

namespace A231721.P8521565190268208374
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282634 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P8521565190268208374

/-! ## A231721.P9530816811517787222

`∑[∏[A109606(n+1)+1]]`
-/

namespace A231721.P9530816811517787222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P9530816811517787222

/-! ## A231721.P17694986486591135180

`∑[∏[A067541(2*n+1)]]`
-/

namespace A231721.P17694986486591135180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231721.P17694986486591135180

/-!
# A231722: Partial sums of A001088 starting from its second term; a(1)=0, a(n) = A001088(2)+...+A001088(n).

The programs for A231722, there is no canonical definition to state claims against.
-/

/-! ## A231722.P4758167632056826235

`A231721(n+1)-1`
-/

namespace A231722.P4758167632056826235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231721 (n + 1) - 1

end

end A231722.P4758167632056826235

/-! ## A231722.P4360997251501280519

`∑[A001088(1+n)]-1`
-/

namespace A231722.P4360997251501280519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001088 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P4360997251501280519

/-! ## A231722.P16306193501288756331

`∑[∏[Δ[A002088(n)]]]-1`
-/

namespace A231722.P16306193501288756331
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P16306193501288756331

/-! ## A231722.P543425680043352624

`∑[∏[Δ[A005728(n)]]]-1`
-/

namespace A231722.P543425680043352624
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P543425680043352624

/-! ## A231722.P15133429544279014553

`∑[∏[A000010(n+1)]]-1`
-/

namespace A231722.P15133429544279014553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P15133429544279014553

/-! ## A231722.P16171113049323097471

`∑[∏[A282634(∑[n]+1)]]-1`
-/

namespace A231722.P16171113049323097471
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282634 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P16171113049323097471

/-! ## A231722.P7086921780796700707

`∑[a(n-1)*A000010(lcm(2, n+1))]` with `a(0)=0, a(1)=1`
-/

namespace A231722.P7086921780796700707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) * A000010 (Nat.lcm 2 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231722.P7086921780796700707

/-! ## A231722.P15130097435984728871

`∑[a(n-2)*A000010(n²+n)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A231722.P15130097435984728871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 2) * A000010 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231722.P15130097435984728871

/-! ## A231722.P12440024019441253176

`∑[∏[∑{d}[n+1, (n+1)/#*A008683(#)]]]-1`
-/

namespace A231722.P12440024019441253176
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P12440024019441253176

/-! ## A231722.P12540984719265608960

`∑[a(n-1)*A000010(2*n-(n-1))]-1` with `a(0)=1`
-/

namespace A231722.P12540984719265608960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231722.P12540984719265608960

/-!
# A231723: a(n) = the difference between the n-th node of the infinite trunk of the factorial beanstalk (A219666(n)) and the smallest integer (A219653(n)) which is as many A219651-iteration steps distanced from the root (zero); a(n) = A219666(n) - A219653(n).

The programs for A231723, there is no canonical definition to state claims against.
-/

/-! ## A231723.P11055579130008081032

`A219666(n)-A219653(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A231723.P11055579130008081032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219666 n - A219653 n

end

end A231723.P11055579130008081032

/-! ## A231723.P1875687751721032477

`∑[A230406(n)]-A219653(n)`
-/

namespace A231723.P1875687751721032477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A219653 n

end

end A231723.P1875687751721032477

/-! ## A231723.P7768308445517384064

`A219654(n)-(A231724(n)+1)`
-/

namespace A231723.P7768308445517384064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219654 n - (A231724 n + 1)

end

end A231723.P7768308445517384064

/-! ## A231723.P13386478515322502782

`A230416(A230432(n))-A219653(n)`
-/

namespace A231723.P13386478515322502782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230416 (A230432 n).toNat - A219653 n

end

end A231723.P13386478515322502782

/-! ## A231723.P9670275015891821823

`A219655(n)-(A231724(n)+A219653(n))`
-/

namespace A231723.P9670275015891821823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219655 n - (A231724 n + A219653 n)

end

end A231723.P9670275015891821823

/-! ## A231723.P2369426464488872830

`A219651(A230430(n))-A219653(n)`
-/

namespace A231723.P2369426464488872830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 (A230430 n).toNat - A219653 n

end

end A231723.P2369426464488872830

/-!
# A231724: a(n) = the difference between the n-th node of the infinite trunk of the factorial beanstalk (A219666(n)) and the greatest integer (A219655(n)) which is as many A219651-iteration steps distanced from the root (zero); a(n) = A219655(n) - A219666(n).

The programs for A231724, there is no canonical definition to state claims against.
-/

/-! ## A231724.P13822515611785266447

`A219655(n)-A219666(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A231724.P13822515611785266447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219655 n - A219666 n

end

end A231724.P13822515611785266447

/-! ## A231724.P13342247755008614344

`A219654(n)-(A231723(n)+1)`
-/

namespace A231724.P13342247755008614344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219654 n - (A231723 n + 1)

end

end A231724.P13342247755008614344

/-! ## A231724.P3939949130360597617

`A219653(n+1)-(A219666(n)+1)`
-/

namespace A231724.P3939949130360597617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219653 (n + 1) - (A219666 n + 1)

end

end A231724.P3939949130360597617

/-! ## A231724.P13520898388681994230

`A219655(n)-(A231723(n)+A219653(n))`
-/

namespace A231724.P13520898388681994230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219655 n - (A231723 n + A219653 n)

end

end A231724.P13520898388681994230

/-! ## A231724.P11760812340261551471

`Δ[A219666(n)-∑[A231723(n)+1]]`
-/

namespace A231724.P11760812340261551471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231723 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219666 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231724.P11760812340261551471

/-! ## A231724.P711336836667303912

`A034968(A219666(n+1))-1-A231723(n+1)`
-/

namespace A231724.P711336836667303912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A219666 (n + 1)).toNat - 1 - A231723 (n + 1)

end

end A231724.P711336836667303912

/-!
# A231726: Count of the first 10^n primes containing at least one 0's digit.

The programs for A231726, there is no canonical definition to state claims against.
-/

/-! ## A231726.P5939707166885477139

`A011557(n+1)-A231412(n+1)`
-/

namespace A231726.P5939707166885477139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A231412 (n + 1)

end

end A231726.P5939707166885477139

/-! ## A231726.P16538904771041731639

`Δ[A000042(n+1)-∑[A231412(n)]]`
-/

namespace A231726.P16538904771041731639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231726.P16538904771041731639

/-! ## A231726.P9708856971154501741

`Δ[A000042(n+1)]-A231412(n+1)`
-/

namespace A231726.P9708856971154501741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A231412 (n + 1)

end

end A231726.P9708856971154501741

/-! ## A231726.P9118891293887171937

`A007088(A000079(n+1))-A231412(n+1)`
-/

namespace A231726.P9118891293887171937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000079 (n + 1)).toNat - A231412 (n + 1)

end

end A231726.P9118891293887171937

/-! ## A231726.P4234937966652963489

`A007924(A000040(n+1))-A231412(n+1)`
-/

namespace A231726.P4234937966652963489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007924 (A000040 (n + 1)).toNat - A231412 (n + 1)

end

end A231726.P4234937966652963489

/-!
# A231731: Triangular array read by rows: row n shows the coefficients of the polynomial u(n) = c(0) + c(1)*x + ... + c(n)*x^(n) which is the numerator of the n-th convergent of the continued fraction [k, k, k, ... ], where k = 2*x + 1.

The programs for A231731, there is no canonical definition to state claims against.
-/

/-! ## A231731.P11114286415028065403

`A037027(n+1)*A059268(n+1)`
-/

namespace A231731.P11114286415028065403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (n + 1) * A059268 (n + 1)

end

end A231731.P11114286415028065403

/-! ## A231731.P5691689424407885827

`A000079(A002262(n+1))*A037027(n+1)`
-/

namespace A231731.P5691689424407885827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 (n + 1)).toNat * A037027 (n + 1)

end

end A231731.P5691689424407885827

/-! ## A231731.P6239412891389493228

`A038137(A061579(n+1))*A059268(n+1)`
-/

namespace A231731.P6239412891389493228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A061579 (n + 1)).toNat * A059268 (n + 1)

end

end A231731.P6239412891389493228

/-! ## A231731.P1925525444014753024

`A037027(n+1)*A130321(A061579(n+1))`
-/

namespace A231731.P1925525444014753024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (n + 1) * A130321 (A061579 (n + 1)).toNat

end

end A231731.P1925525444014753024

/-!
# A231734: Least k such that n*k^2 - 1 is a prime, or 0 if no such k exists.

The programs for A231734, there is no canonical definition to state claims against.
-/

/-! ## A231734.P6633165638317234002

`A231735(n+1)%A035359(A268674(n+1))`
-/

namespace A231734.P6633165638317234002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231735 (n + 1)) (A035359 (A268674 (n + 1)).toNat)

end

end A231734.P6633165638317234002

/-! ## A231734.P2427808988567333490

`A231735(A187829(n+1))%11`
-/

namespace A231734.P2427808988567333490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231735 (A187829 (n + 1)).toNat) 11

end

end A231734.P2427808988567333490

/-! ## A231734.P9856504158197521330

`A231735(n+1)%A002808(A288648(n))`
-/

namespace A231734.P9856504158197521330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231735 (n + 1)) (A002808 (A288648 n).toNat)

end

end A231734.P9856504158197521330

/-! ## A231734.P4606659415268619819

`gcd(A173680(A075200(n+1)), A231735(n+1))`
-/

namespace A231734.P4606659415268619819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173680 (A075200 (n + 1)).toNat) (A231735 (n + 1))

end

end A231734.P4606659415268619819

/-! ## A231734.P5779659581467315783

`A231735(n+1)%A020883(A018004(n))`
-/

namespace A231734.P5779659581467315783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231735 (n + 1)) (A020883 (A018004 n).toNat)

end

end A231734.P5779659581467315783

/-!
# A231735: Least positive k such that n*k^k - 1 is a prime, or 0 if no such k exists.

The programs for A231735, there is no canonical definition to state claims against.
-/

/-! ## A231735.P7514017743696962005

`A195040(A356292(n))+1`
-/

namespace A231735.P7514017743696962005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195040 (A356292 n).toNat + 1

end

end A231735.P7514017743696962005

/-! ## A231735.P1971400393521609762

`A277103(A266168(n+1))+A064391(n)`
-/

namespace A231735.P1971400393521609762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277103 (A266168 (n + 1)).toNat + A064391 n

end

end A231735.P1971400393521609762

/-! ## A231735.P8843581412042511049

`gcd(A073090(n+4), A275949(A380989(n)))`
-/

namespace A231735.P8843581412042511049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073090 (n + 4)) (A275949 (A380989 n).toNat)

end

end A231735.P8843581412042511049

/-!
# A231741: Number of nX2 0..3 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231741, there is no canonical definition to state claims against.
-/

/-! ## A231741.P2932789091399076194

`A231746(∑[n+1]+2)`
-/

namespace A231741.P2932789091399076194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231741.P2932789091399076194

/-! ## A231741.P272187336846056316

`record[root(A231746(n+1), A130270(n+1))]`
-/

namespace A231741.P272187336846056316
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231746 (n + 1) : ℝ) ^ (1 / (A130270 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231741.P272187336846056316

/-! ## A231741.P1164493731726641855

`record[A231746(∑[A152271(n)])]`
-/

namespace A231741.P1164493731726641855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231741.P1164493731726641855

/-! ## A231741.P16496973446692668868

`record[root(A231746(n+1), A066633(n+1))]`
-/

namespace A231741.P16496973446692668868
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231746 (n + 1) : ℝ) ^ (1 / (A066633 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231741.P16496973446692668868

/-! ## A231741.P6655692199317901180

`A231940(∑[n+2])`
-/

namespace A231741.P6655692199317901180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231741.P6655692199317901180

/-!
# A231742: Number of nX3 0..3 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231742, there is no canonical definition to state claims against.
-/

/-! ## A231742.P2774579148096849515

`A231746(∑[n+2]+4)`
-/

namespace A231742.P2774579148096849515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231742.P2774579148096849515

/-!
# A231743: Number of nX4 0..3 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231743, there is no canonical definition to state claims against.
-/

/-! ## A231743.P243400109071876732

`A231746(A374004(n+1))`
-/

namespace A231743.P243400109071876732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (A374004 (n + 1)).toNat

end

end A231743.P243400109071876732

/-! ## A231743.P17286438225529915369

`A231746(A141214(n+1))`
-/

namespace A231743.P17286438225529915369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (A141214 (n + 1)).toNat

end

end A231743.P17286438225529915369

/-!
# A231744: Number of n X 5 0..3 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231744, there is no canonical definition to state claims against.
-/

/-! ## A231744.P18295058599314324494

`A231746(eq[5-col(n), 1]+1)`
-/

namespace A231744.P18295058599314324494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (SequenceMachineLib.triCol n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1)

end

end A231744.P18295058599314324494

/-!
# A231745: Number of nX6 0..3 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231745, there is no canonical definition to state claims against.
-/

/-! ## A231745.P922297916728590882

`A231746(A374007(n+1))`
-/

namespace A231745.P922297916728590882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231746 (A374007 (n + 1)).toNat

end

end A231745.P922297916728590882

/-!
# A231747: Number of n X 2 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231747, the canonical program `A231747.P10901044006203855188` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231747 has offset 1).

The definition of A231747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231747.P10901044006203855188

`ogf((3+6x-3x^2-54x^3-117x^4-128x^5-16x^6+386x^7+348x^8+224x^9+64x^10)/(1-3x-3x^2-14x^3+39x^4+45x^5+124x^6-18x^7-132x^8-248x^9-112x^10-64x^11))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A231747

/-- `ogf((3+6x-3x^2-54x^3-117x^4-128x^5-16x^6+386x^7+348x^8+224x^9+64x^10)/(1-3x-3x^2-14x^3+39x^4+45x^5+124x^6-18x^7-132x^8-248x^9-112x^10-64x^11))` -/
def P10901044006203855188.Spec : Prop :=
  ∀ n, P10901044006203855188.a n = A231747 (n + 1)

theorem P10901044006203855188.correct : P10901044006203855188.Spec := by
  intro n
  simp only [A231747, Nat.add_sub_cancel]

end A231747

/-! ## A231747.P2685424785089936916

`A231753(∑[n+1]+2)`
-/

namespace A231747.P2685424785089936916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231747.P2685424785089936916

namespace A231747

/-- `A231753(∑[n+1]+2)` -/
def P2685424785089936916.Spec : Prop :=
  ∀ n, P2685424785089936916.a n = A231747 (n + 1)

end A231747

/-! ## A231747.P5752320140275915952

`record[gcd(A002262(n), A231753(n+2))]`
-/

namespace A231747.P5752320140275915952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231753 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231747.P5752320140275915952

namespace A231747

/-- `record[gcd(A002262(n), A231753(n+2))]` -/
def P5752320140275915952.Spec : Prop :=
  ∀ n, (P5752320140275915952.a n : ℤ) = A231747 (n + 1)

end A231747

/-! ## A231747.P5519765003781461956

`record[gcd(A092921(n), A231753(n+3))]`
-/

namespace A231747.P5519765003781461956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A231753 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231747.P5519765003781461956

namespace A231747

/-- `record[gcd(A092921(n), A231753(n+3))]` -/
def P5519765003781461956.Spec : Prop :=
  ∀ n, (P5519765003781461956.a n : ℤ) = A231747 (n + 1)

end A231747

/-! ## A231747.P9429396932253022267

`record[A231753(∑[A152271(n)])]`
-/

namespace A231747.P9429396932253022267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231747.P9429396932253022267

namespace A231747

/-- `record[A231753(∑[A152271(n)])]` -/
def P9429396932253022267.Spec : Prop :=
  ∀ n, P9429396932253022267.a n = A231747 (n + 1)

end A231747

/-!
# A231748: Number of nX3 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231748, there is no canonical definition to state claims against.
-/

/-! ## A231748.P10806187073925062411

`A231753(∑[n+2]+4)`
-/

namespace A231748.P10806187073925062411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231748.P10806187073925062411

/-!
# A231749: Number of nX4 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231749, there is no canonical definition to state claims against.
-/

/-! ## A231749.P11748754512552270578

`A231753(A374004(n+1))`
-/

namespace A231749.P11748754512552270578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A374004 (n + 1)).toNat

end

end A231749.P11748754512552270578

/-! ## A231749.P7025418210310084583

`A231753(A141214(n+1))`
-/

namespace A231749.P7025418210310084583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A141214 (n + 1)).toNat

end

end A231749.P7025418210310084583

/-!
# A231750: Number of nX5 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231750, there is no canonical definition to state claims against.
-/

/-! ## A231750.P7644899955566612354

`A231753(A374005(n+1))`
-/

namespace A231750.P7644899955566612354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A374005 (n + 1)).toNat

end

end A231750.P7644899955566612354

/-! ## A231750.P10698854334649713816

`A231753(Δ[A264443(n)])`
-/

namespace A231750.P10698854334649713816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (f1 (n + 1) - f1 n).toNat

end

end A231750.P10698854334649713816

/-!
# A231751: Number of nX6 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231751, there is no canonical definition to state claims against.
-/

/-! ## A231751.P10568201737235921232

`A231753(A374007(n+1))`
-/

namespace A231751.P10568201737235921232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A374007 (n + 1)).toNat

end

end A231751.P10568201737235921232

/-!
# A231752: Number of nX7 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231752, there is no canonical definition to state claims against.
-/

/-! ## A231752.P12209438912737968766

`A231753(A374008(n+1))`
-/

namespace A231752.P12209438912737968766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231753 (A374008 (n + 1)).toNat

end

end A231752.P12209438912737968766

/-!
# A231753: T(n,k)=Number of nXk 0..2 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231753, there is no canonical definition to state claims against.
-/

/-! ## A231753.P15177288521088717033

`A231663(or(∑{e}[n+1, #], A032559(n+1)))`
-/

namespace A231753.P15177288521088717033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231663 (Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A032559 (n + 1))).toNat

end

end A231753.P15177288521088717033

/-!
# A231754: Products of distinct primes congruent to 1 modulo 4 (A002144).

The programs for A231754, the canonical program `A231754.P1945507588168497190` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231754 has offset 1).

The definition of A231754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7751 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231754.P12648091421811814315

`record[A007947(A004613(1+n))]`
-/

namespace A231754.P12648091421811814315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A004613 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231754.P12648091421811814315

namespace A231754

/-- `record[A007947(A004613(1+n))]` -/
def P12648091421811814315.Spec : Prop :=
  ∀ n, P12648091421811814315.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P12996956552010605908

`filter[A004613(1+n), A008966(#)]`
-/

namespace A231754.P12996956552010605908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A231754.P12996956552010605908

namespace A231754

/-- `filter[A004613(1+n), A008966(#)]` -/
def P12996956552010605908.Spec : Prop :=
  ∀ n, P12996956552010605908.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P5143854081901754722

`filter[A004613(n+1), A359377(#)]`
-/

namespace A231754.P5143854081901754722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A231754.P5143854081901754722

namespace A231754

/-- `filter[A004613(n+1), A359377(#)]` -/
def P5143854081901754722.Spec : Prop :=
  ∀ n, P5143854081901754722.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P14366107102571976736

`filter[A004613(n+1), A359590(#)]`
-/

namespace A231754.P14366107102571976736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A231754.P14366107102571976736

namespace A231754

/-- `filter[A004613(n+1), A359590(#)]` -/
def P14366107102571976736.Spec : Prop :=
  ∀ n, P14366107102571976736.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P1303294722107192386

`filter[A004613(n+1), A359592(#)]`
-/

namespace A231754.P1303294722107192386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A231754.P1303294722107192386

namespace A231754

/-- `filter[A004613(n+1), A359592(#)]` -/
def P1303294722107192386.Spec : Prop :=
  ∀ n, P1303294722107192386.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P10209716291933801470

`filter[A004613(n+1), A359834(#)]`
-/

namespace A231754.P10209716291933801470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A231754.P10209716291933801470

namespace A231754

/-- `filter[A004613(n+1), A359834(#)]` -/
def P10209716291933801470.Spec : Prop :=
  ∀ n, P10209716291933801470.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P17812227964099881283

`filter[A004613(n+1), A373154(#)]`
-/

namespace A231754.P17812227964099881283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A231754.P17812227964099881283

namespace A231754

/-- `filter[A004613(n+1), A373154(#)]` -/
def P17812227964099881283.Spec : Prop :=
  ∀ n, P17812227964099881283.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P17753279193654338241

`record[A007913(A057653(n+1))]`
-/

namespace A231754.P17753279193654338241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A057653 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231754.P17753279193654338241

namespace A231754

/-- `record[A007913(A057653(n+1))]` -/
def P17753279193654338241.Spec : Prop :=
  ∀ n, P17753279193654338241.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P10842869906083563652

`filter[A057653(n+1), A008966(#)]`
-/

namespace A231754.P10842869906083563652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A231754.P10842869906083563652

namespace A231754

/-- `filter[A057653(n+1), A008966(#)]` -/
def P10842869906083563652.Spec : Prop :=
  ∀ n, P10842869906083563652.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P1945507588168497190

`filter[A057653(n+1), A359377(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A231754

/-- `filter[A057653(n+1), A359377(#)]` -/
def P1945507588168497190.Spec : Prop :=
  ∀ n, P1945507588168497190.a n = A231754 (n + 1)

theorem P1945507588168497190.correct : P1945507588168497190.Spec := by
  intro n
  simp only [A231754, Nat.add_sub_cancel]

end A231754

/-! ## A231754.P757112027506627143

`filter[A057653(n+1), A359590(#)]`
-/

namespace A231754.P757112027506627143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A231754.P757112027506627143

namespace A231754

/-- `filter[A057653(n+1), A359590(#)]` -/
def P757112027506627143.Spec : Prop :=
  ∀ n, P757112027506627143.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P17983310610972988889

`filter[A057653(n+1), A359592(#)]`
-/

namespace A231754.P17983310610972988889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A231754.P17983310610972988889

namespace A231754

/-- `filter[A057653(n+1), A359592(#)]` -/
def P17983310610972988889.Spec : Prop :=
  ∀ n, P17983310610972988889.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P4452074719873576012

`filter[A057653(n+1), A359834(#)]`
-/

namespace A231754.P4452074719873576012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A231754.P4452074719873576012

namespace A231754

/-- `filter[A057653(n+1), A359834(#)]` -/
def P4452074719873576012.Spec : Prop :=
  ∀ n, P4452074719873576012.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P10435291497839677812

`filter[A057653(n+1), A373154(#)]`
-/

namespace A231754.P10435291497839677812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A231754.P10435291497839677812

namespace A231754

/-- `filter[A057653(n+1), A373154(#)]` -/
def P10435291497839677812.Spec : Prop :=
  ∀ n, P10435291497839677812.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P14798007367013271970

`∩[A004613(n+1), A005117(n+1)]`
-/

namespace A231754.P14798007367013271970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231754.P14798007367013271970

namespace A231754

/-- `∩[A004613(n+1), A005117(n+1)]` -/
def P14798007367013271970.Spec : Prop :=
  ∀ n, (P14798007367013271970.a n : ℤ) = A231754 (n + 1)

end A231754

/-! ## A231754.P8322786583013609211

`filter[A020893(n+1), #%2]`
-/

namespace A231754.P8322786583013609211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A231754.P8322786583013609211

namespace A231754

/-- `filter[A020893(n+1), #%2]` -/
def P8322786583013609211.Spec : Prop :=
  ∀ n, P8322786583013609211.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P17788002019830957197

`∩[2*n+1, A020893(1+n)]`
-/

namespace A231754.P17788002019830957197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231754.P17788002019830957197

namespace A231754

/-- `∩[2*n+1, A020893(1+n)]` -/
def P17788002019830957197.Spec : Prop :=
  ∀ n, (P17788002019830957197.a n : ℤ) = A231754 (n + 1)

end A231754

/-! ## A231754.P7939151566473920213

`filter[A020893(n+1), A187074(#)]`
-/

namespace A231754.P7939151566473920213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A231754.P7939151566473920213

namespace A231754

/-- `filter[A020893(n+1), A187074(#)]` -/
def P7939151566473920213.Spec : Prop :=
  ∀ n, P7939151566473920213.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P4383659154830476894

`filter[A020893(n+1), A322980(#)]`
-/

namespace A231754.P4383659154830476894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A231754.P4383659154830476894

namespace A231754

/-- `filter[A020893(n+1), A322980(#)]` -/
def P4383659154830476894.Spec : Prop :=
  ∀ n, P4383659154830476894.a n = A231754 (n + 1)

end A231754

/-! ## A231754.P15682844871497545481

`filter[A008784(n+1), A359590(#)]`
-/

namespace A231754.P15682844871497545481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A231754.P15682844871497545481

namespace A231754

/-- `filter[A008784(n+1), A359590(#)]` -/
def P15682844871497545481.Spec : Prop :=
  ∀ n, P15682844871497545481.a n = A231754 (n + 1)

end A231754

/-!
# A231756: Numbers n such that reversal (n^2) plus 1 is prime.

The programs for A231756, there is no canonical definition to state claims against.
-/

/-! ## A231756.P7328679515145416290

`eq[1, A001222(A061226(n)-n²+1)]`
-/

namespace A231756.P7328679515145416290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061226 n - (n ^ 2 : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231756.P7328679515145416290

/-! ## A231756.P3012898478675112108

`eq[2, A000005(A061226(n)-n²+1)]`
-/

namespace A231756.P3012898478675112108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061226 n - (n ^ 2 : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231756.P3012898478675112108

/-! ## A231756.P6632972844692944349

`eq[1, A001222(A002942(n+1)+1)]+1`
-/

namespace A231756.P6632972844692944349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002942 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231756.P6632972844692944349

/-! ## A231756.P4403986986215614584

`eq[1, A001222(A004086(n²)+1)]`
-/

namespace A231756.P4403986986215614584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004086 (n ^ 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231756.P4403986986215614584

/-! ## A231756.P10125029202160682267

`eq[2, A000005(A004086(n²)+1)]`
-/

namespace A231756.P10125029202160682267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004086 (n ^ 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231756.P10125029202160682267

/-!
# A231757: Number of (n+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231757, there is no canonical definition to state claims against.
-/

/-! ## A231757.P6396026146076722867

`A231764(∑[4*n]+1)`
-/

namespace A231757.P6396026146076722867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231757.P6396026146076722867

/-! ## A231757.P11875785511483370302

`record[A003982(n)*A231764(n+1)]`
-/

namespace A231757.P11875785511483370302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231757.P11875785511483370302

/-! ## A231757.P4489069219876490554

`record[gcd(A003987(n), A231764(n+1))]`
-/

namespace A231757.P4489069219876490554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A231764 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231757.P4489069219876490554

/-!
# A231758: Number of (n+1)X(2+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231758, there is no canonical definition to state claims against.
-/

/-! ## A231758.P9389206447133222089

`A231764(∑[n+2])`
-/

namespace A231758.P9389206447133222089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231758.P9389206447133222089

/-! ## A231758.P2205456056963685791

`record[A231764(abs(A201163(n)))]`
-/

namespace A231758.P2205456056963685791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231758.P2205456056963685791

/-! ## A231758.P3853409444084114740

`record[A231764(Δ[A003453(n+5)])]`
-/

namespace A231758.P3853409444084114740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231758.P3853409444084114740

/-! ## A231758.P15534428756046086319

`record[gcd(A008290(n+1), A231764(n+2))]`
-/

namespace A231758.P15534428756046086319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 (n + 1)) (A231764 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231758.P15534428756046086319

/-!
# A231759: Number of (n+1)X(3+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231759, there is no canonical definition to state claims against.
-/

/-! ## A231759.P5953723981952123328

`A231764(∑[n+3]+1)`
-/

namespace A231759.P5953723981952123328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231759.P5953723981952123328

/-! ## A231759.P17943863077528200064

`record[A231764(A198464(n+1))]`
-/

namespace A231759.P17943863077528200064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231759.P17943863077528200064

/-! ## A231759.P1590348345543459931

`record[A231764(A286159(n+5))]`
-/

namespace A231759.P1590348345543459931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A286159 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231759.P1590348345543459931

/-!
# A231760: Number of (n+1)X(4+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231760, there is no canonical definition to state claims against.
-/

/-! ## A231760.P6146510268193080059

`A231764(A141214(n+1))`
-/

namespace A231760.P6146510268193080059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A141214 (n + 1)).toNat

end

end A231760.P6146510268193080059

/-!
# A231761: Number of (n+1)X(5+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231761, there is no canonical definition to state claims against.
-/

/-! ## A231761.P17426360514059522533

`A231764(A046691(n+3))`
-/

namespace A231761.P17426360514059522533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A046691 (n + 3)).toNat

end

end A231761.P17426360514059522533

/-!
# A231762: Number of (n+1)X(6+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231762, there is no canonical definition to state claims against.
-/

/-! ## A231762.P14257192145396907515

`A231764(A052905(n+3))`
-/

namespace A231762.P14257192145396907515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A052905 (n + 3)).toNat

end

end A231762.P14257192145396907515

/-!
# A231763: Number of (n+1)X(7+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231763, there is no canonical definition to state claims against.
-/

/-! ## A231763.P9570896665568519823

`A231764(eq[4, A219347(n)])`
-/

namespace A231763.P9570896665568519823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231763.P9570896665568519823

/-!
# A231764: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231764, there is no canonical definition to state claims against.
-/

/-! ## A231764.P8761897391021153626

`A221446(3*n+5)-A157082(A001181(n))`
-/

namespace A231764.P8761897391021153626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (3 * n + 5) - A157082 (A001181 n).toNat

end

end A231764.P8761897391021153626

/-!
# A231765: Number of (1+1) X (n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231765, the canonical program `A231765.P18000532827413463517` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231765 has offset 1).

The definition of A231765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231765.P18000532827413463517

`ogf((9+6x+x^2+6x^3-80x^4-10x^5-8x^7+32x^8)/(1-3x-x^3-7x^4+20x^5+2x^6+4x^8-8x^9))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A231765

/-- `ogf((9+6x+x^2+6x^3-80x^4-10x^5-8x^7+32x^8)/(1-3x-x^3-7x^4+20x^5+2x^6+4x^8-8x^9))` -/
def P18000532827413463517.Spec : Prop :=
  ∀ n, P18000532827413463517.a n = A231765 (n + 1)

theorem P18000532827413463517.correct : P18000532827413463517.Spec := by
  intro n
  simp only [A231765, Nat.add_sub_cancel]

end A231765

/-! ## A231765.P1338651707331123759

`A231764(∑[n]+1)`
-/

namespace A231765.P1338651707331123759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231765.P1338651707331123759

namespace A231765

/-- `A231764(∑[n]+1)` -/
def P1338651707331123759.Spec : Prop :=
  ∀ n, P1338651707331123759.a n = A231765 (n + 1)

end A231765

/-! ## A231765.P10707039045925330157

`record[A231764(n+1)/A022166(n)]`
-/

namespace A231765.P10707039045925330157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231764 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231765.P10707039045925330157

namespace A231765

/-- `record[A231764(n+1)/A022166(n)]` -/
def P10707039045925330157.Spec : Prop :=
  ∀ n, P10707039045925330157.a n = (A231765 (n + 1) : ℚ)

end A231765

/-! ## A231765.P10314496892323556845

`record[A231764(n+1)/A078122(n)]`
-/

namespace A231765.P10314496892323556845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231764 (n + 1) : ℚ) / (A078122 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231765.P10314496892323556845

namespace A231765

/-- `record[A231764(n+1)/A078122(n)]` -/
def P10314496892323556845.Spec : Prop :=
  ∀ n, P10314496892323556845.a n = (A231765 (n + 1) : ℚ)

end A231765

/-! ## A231765.P12084843596234633057

`record[root(A231764(n+1), A059268(n))]`
-/

namespace A231765.P12084843596234633057
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231764 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231765.P12084843596234633057

namespace A231765

/-- `record[root(A231764(n+1), A059268(n))]` -/
def P12084843596234633057.Spec : Prop :=
  ∀ n, P12084843596234633057.a n = (A231765 (n + 1) : ℝ)

end A231765

/-!
# A231766: Number of (2+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231766, there is no canonical definition to state claims against.
-/

/-! ## A231766.P3497278468245280454

`A231764(∑[n+1]+2)`
-/

namespace A231766.P3497278468245280454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231766.P3497278468245280454

/-! ## A231766.P3651385398096302735

`record[A231764(A286159(n+1)+2)]`
-/

namespace A231766.P3651385398096302735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A286159 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231766.P3651385398096302735

/-! ## A231766.P18410911636500157397

`record[A055137(n)*A231764(n+3)]`
-/

namespace A231766.P18410911636500157397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055137 n * A231764 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231766.P18410911636500157397

/-! ## A231766.P12856735124280253134

`record[gcd(A231714(n), A231764(n+3))]`
-/

namespace A231766.P12856735124280253134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231714 n) (A231764 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231766.P12856735124280253134

/-!
# A231767: Number of (3+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231767, there is no canonical definition to state claims against.
-/

/-! ## A231767.P11382839239522727135

`A231764(∑[n+2]+4)`
-/

namespace A231767.P11382839239522727135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231767.P11382839239522727135

/-! ## A231767.P7494370234723508824

`record[A231764(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A231767.P7494370234723508824
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231767.P7494370234723508824

/-!
# A231768: Number of (4+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231768, there is no canonical definition to state claims against.
-/

/-! ## A231768.P3853463861747569150

`A231764(A052905(n)+9)`
-/

namespace A231768.P3853463861747569150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A052905 n + 9).toNat

end

end A231768.P3853463861747569150

/-!
# A231769: Number of (5+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231769, there is no canonical definition to state claims against.
-/

/-! ## A231769.P4878275226649945224

`A231764(A167499(3+n))`
-/

namespace A231769.P4878275226649945224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A167499 (3 + n)).toNat

end

end A231769.P4878275226649945224

/-!
# A231770: Number of (6+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231770, there is no canonical definition to state claims against.
-/

/-! ## A231770.P2590180410069621624

`A231764(A055998(n+3)+9)`
-/

namespace A231770.P2590180410069621624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A055998 (n + 3) + 9).toNat

end

end A231770.P2590180410069621624

/-!
# A231771: Number of (7+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to one.

The programs for A231771, there is no canonical definition to state claims against.
-/

/-! ## A231771.P992854800537687994

`A231764(A056119(n)+28)`
-/

namespace A231771.P992854800537687994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231764 (A056119 n + 28).toNat

end

end A231771.P992854800537687994

/-!
# A231773: Numbers k such that there are no numbers with k primitive roots.

The programs for A231773, the canonical program `A231773.P1685222016929089142` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231773 has offset 1).

The definition of A231773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231773.P1685222016929089142

`comp[A072209(1+n)-1]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A231773

/-- `comp[A072209(1+n)-1]+1` -/
def P1685222016929089142.Spec : Prop :=
  ∀ n, (P1685222016929089142.a n : ℤ) = A231773 (n + 1)

theorem P1685222016929089142.correct : P1685222016929089142.Spec := by
  intro n
  simp only [A231773, Nat.add_sub_cancel]

end A231773

/-! ## A231773.P8020094457226730771

`comp[A072209(n+1)%A072202(n+1)]`
-/

namespace A231773.P8020094457226730771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072209 (n + 1)) (A072202 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231773.P8020094457226730771

namespace A231773

/-- `comp[A072209(n+1)%A072202(n+1)]` -/
def P8020094457226730771.Spec : Prop :=
  ∀ n, (P8020094457226730771.a n : ℤ) = A231773 (n + 1)

end A231773

/-! ## A231773.P6299006545091801334

`eq[A231772(A014092(n+1)), A231772(n)]`
-/

namespace A231773.P6299006545091801334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (A014092 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231773.P6299006545091801334

namespace A231773

/-- `eq[A231772(A014092(n+1)), A231772(n)]` -/
def P6299006545091801334.Spec : Prop :=
  ∀ n, (P6299006545091801334.a n : ℤ) = A231773 (n + 1)

end A231773

/-! ## A231773.P10287105291848624533

`eq[1, A002126(A231772(n))]`
-/

namespace A231773.P10287105291848624533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A231772 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231773.P10287105291848624533

namespace A231773

/-- `eq[1, A002126(A231772(n))]` -/
def P10287105291848624533.Spec : Prop :=
  ∀ n, (P10287105291848624533.a n : ℤ) = A231773 (n + 1)

end A231773

/-! ## A231773.P245805859458697537

`eq[1, A231772(A231772(n)+1)]`
-/

namespace A231773.P245805859458697537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (A231772 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231773.P245805859458697537

namespace A231773

/-- `eq[1, A231772(A231772(n)+1)]` -/
def P245805859458697537.Spec : Prop :=
  ∀ n, (P245805859458697537.a n : ℤ) = A231773 (n + 1)

end A231773

/-! ## A231773.P15163602656873320835

`comp[A046144(1+n)]`
-/

namespace A231773.P15163602656873320835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231773.P15163602656873320835

namespace A231773

/-- `comp[A046144(1+n)]` -/
def P15163602656873320835.Spec : Prop :=
  ∀ n, (P15163602656873320835.a n : ℤ) = A231773 (n + 1)

end A231773

/-!
# A231776: Least positive integer k <= n with (2^k + k) * n - 1 prime, or 0 if such a number k does not exist.

The programs for A231776, there is no canonical definition to state claims against.
-/

/-! ## A231776.P33338400224303922

`A318360(A053989(3*(n+1))*A072669(n+1))`
-/

namespace A231776.P33338400224303922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (A053989 (3 * (n + 1)) * A072669 (n + 1)).toNat

end

end A231776.P33338400224303922

/-! ## A231776.P5248180978606592278

`A004275(A053989(3*(n+1))%A274709(3*n+4))`
-/

namespace A231776.P5248180978606592278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.tmod (A053989 (3 * (n + 1))) (A274709 (3 * n + 4))).toNat

end

end A231776.P5248180978606592278

/-! ## A231776.P12401602825566910018

`A377282(A324984(2*n+1)-A247805(n+1))`
-/

namespace A231776.P12401602825566910018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377282 (A324984 (2 * n + 1) - A247805 (n + 1)).toNat

end

end A231776.P12401602825566910018

/-! ## A231776.P7442315589673085022

`A351202(∑{#}[n, lcm(n+1, #+1)/(n+1)]+n)`
-/

namespace A231776.P7442315589673085022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351202 (SequenceMachineLib.roundAway (∑ k ∈ Finset.range (f1 n + 1), (Nat.lcm (n + 1) (k + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ))).toNat

end

end A231776.P7442315589673085022

/-!
# A231778: Number of n X n 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231778, there is no canonical definition to state claims against.
-/

/-! ## A231778.P14061702448446700783

`A231785((n+1)²+n²)`
-/

namespace A231778.P14061702448446700783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 ((n + 1) ^ 2 + n ^ 2)

end

end A231778.P14061702448446700783

/-!
# A231779: Number of n X 2 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231779, the canonical program `A231779.P15280679261001934215` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231779 has offset 1).

The definition of A231779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231779.P15280679261001934215

`ogf((1+11x-20x^2+5x^3+8x^4-2x^5)/(1-6x+8x^2-2x^3-3x^4+x^5))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A231779

/-- `ogf((1+11x-20x^2+5x^3+8x^4-2x^5)/(1-6x+8x^2-2x^3-3x^4+x^5))` -/
def P15280679261001934215.Spec : Prop :=
  ∀ n, P15280679261001934215.a n = A231779 (n + 1)

theorem P15280679261001934215.correct : P15280679261001934215.Spec := by
  intro n
  simp only [A231779, Nat.add_sub_cancel]

end A231779

/-! ## A231779.P11312351285670974897

`A231785(∑[n+1]+2)`
-/

namespace A231779.P11312351285670974897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231779.P11312351285670974897

namespace A231779

/-- `A231785(∑[n+1]+2)` -/
def P11312351285670974897.Spec : Prop :=
  ∀ n, P11312351285670974897.a n = A231779 (n + 1)

end A231779

/-! ## A231779.P3927918149931752806

`record[gcd(A098825(n), A231785(n+1))]`
-/

namespace A231779.P3927918149931752806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A231785 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231779.P3927918149931752806

namespace A231779

/-- `record[gcd(A098825(n), A231785(n+1))]` -/
def P3927918149931752806.Spec : Prop :=
  ∀ n, (P3927918149931752806.a n : ℤ) = A231779 (n + 1)

end A231779

/-! ## A231779.P9301377672349283000

`record[gcd(A121314(n), A231785(n+2))]`
-/

namespace A231779.P9301377672349283000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121314 n) (A231785 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231779.P9301377672349283000

namespace A231779

/-- `record[gcd(A121314(n), A231785(n+2))]` -/
def P9301377672349283000.Spec : Prop :=
  ∀ n, (P9301377672349283000.a n : ℤ) = A231779 (n + 1)

end A231779

/-! ## A231779.P8860359871916734239

`record[A231785(∑[A152271(n)])]`
-/

namespace A231779.P8860359871916734239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231779.P8860359871916734239

namespace A231779

/-- `record[A231785(∑[A152271(n)])]` -/
def P8860359871916734239.Spec : Prop :=
  ∀ n, P8860359871916734239.a n = A231779 (n + 1)

end A231779

/-!
# A231780: Number of nX3 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231780, there is no canonical definition to state claims against.
-/

/-! ## A231780.P4736511242033612304

`A231785(∑[n+2]+4)`
-/

namespace A231780.P4736511242033612304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231780.P4736511242033612304

/-! ## A231780.P4136452303648891610

`record[gcd(A121314(n+1), A231785(n+4))]`
-/

namespace A231780.P4136452303648891610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121314 (n + 1)) (A231785 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231780.P4136452303648891610

/-!
# A231781: Number of nX4 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231781, there is no canonical definition to state claims against.
-/

/-! ## A231781.P910965416648690141

`A231785(A052905(n)+9)`
-/

namespace A231781.P910965416648690141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A052905 n + 9).toNat

end

end A231781.P910965416648690141

/-! ## A231781.P3872475548767034703

`A231785(A141214(n+1))`
-/

namespace A231781.P3872475548767034703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A141214 (n + 1)).toNat

end

end A231781.P3872475548767034703

/-!
# A231782: Number of nX5 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231782, there is no canonical definition to state claims against.
-/

/-! ## A231782.P195188731230871000

`A231785(A167499(n+3))`
-/

namespace A231782.P195188731230871000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A167499 (n + 3)).toNat

end

end A231782.P195188731230871000

/-! ## A231782.P18300055687287343492

`A231785(A374005(n+1))`
-/

namespace A231782.P18300055687287343492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A374005 (n + 1)).toNat

end

end A231782.P18300055687287343492

/-!
# A231783: Number of nX6 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231783, there is no canonical definition to state claims against.
-/

/-! ## A231783.P6592376856126547739

`A231785(A000217(n+5)+6)`
-/

namespace A231783.P6592376856126547739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A000217 (n + 5) + 6).toNat

end

end A231783.P6592376856126547739

/-! ## A231783.P12540271096251200012

`A231785(A374007(n+1))`
-/

namespace A231783.P12540271096251200012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A374007 (n + 1)).toNat

end

end A231783.P12540271096251200012

/-!
# A231784: Number of nX7 0..2 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231784, there is no canonical definition to state claims against.
-/

/-! ## A231784.P4911741986747219783

`A231785(A000096(n+5)+8)`
-/

namespace A231784.P4911741986747219783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A000096 (n + 5) + 8).toNat

end

end A231784.P4911741986747219783

/-! ## A231784.P7860493225677001142

`A231785(A374008(n+1))`
-/

namespace A231784.P7860493225677001142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231785 (A374008 (n + 1)).toNat

end

end A231784.P7860493225677001142

/-!
# A231787: Count of the first 10^n primes containing at least one 1's digit.

The programs for A231787, there is no canonical definition to state claims against.
-/

/-! ## A231787.P14537879958901652084

`A011557(n+1)-A228413(n+1)`
-/

namespace A231787.P14537879958901652084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A228413 (n + 1)

end

end A231787.P14537879958901652084

/-! ## A231787.P12623755573727255727

`Δ[A000042(n+1)-∑[A228413(n)]]`
-/

namespace A231787.P12623755573727255727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231787.P12623755573727255727

/-! ## A231787.P15400199168180046519

`Δ[A000042(n+1)]-A228413(n+1)`
-/

namespace A231787.P15400199168180046519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228413 (n + 1)

end

end A231787.P15400199168180046519

/-!
# A231789: Count of the first 10^n primes containing at least one 3's digit.

The programs for A231789, there is no canonical definition to state claims against.
-/

/-! ## A231789.P5966142255360373275

`A011557(n+1)-A228415(n+1)`
-/

namespace A231789.P5966142255360373275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A228415 (n + 1)

end

end A231789.P5966142255360373275

/-! ## A231789.P16121660469358930425

`A231795(n+1)+A228420(n+2)-A228415(n+1)`
-/

namespace A231789.P16121660469358930425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231795 (n + 1) + A228420 (n + 2) - A228415 (n + 1)

end

end A231789.P16121660469358930425

/-!
# A231790: Count of the first 10^n primes containing at least one 4's digit.

The programs for A231790, there is no canonical definition to state claims against.
-/

/-! ## A231790.P15921760040955808245

`A011557(n+1)-A228416(n+1)`
-/

namespace A231790.P15921760040955808245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A228416 (n + 1)

end

end A231790.P15921760040955808245

/-! ## A231790.P7347079729660783819

`Δ[A000042(n+1)-∑[A228416(n)]]`
-/

namespace A231790.P7347079729660783819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231790.P7347079729660783819

/-! ## A231790.P18007589936771966354

`Δ[A000042(n+1)]-A228416(n+1)`
-/

namespace A231790.P18007589936771966354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228416 (n + 1)

end

end A231790.P18007589936771966354

/-! ## A231790.P16363778497716419390

`A000533(n+1)-(A228416(n+1)+1)`
-/

namespace A231790.P16363778497716419390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (n + 1) - (A228416 (n + 1) + 1)

end

end A231790.P16363778497716419390

/-!
# A231791: Integers k such that A231589(k) = floor(k*(k-1)/4) - k.

The programs for A231791, there is no canonical definition to state claims against.
-/

/-! ## A231791.P9965313161898305240

`eq[2, A025581(2*A231589(n+1))]+1`
-/

namespace A231791.P9965313161898305240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A231589 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231791.P9965313161898305240

/-!
# A231792: Count of the first 10^n primes containing at least one 5's digit.

The programs for A231792, there is no canonical definition to state claims against.
-/

/-! ## A231792.P9169570399201991912

`A011557(A046100(n+1))-A228417(n+1)`
-/

namespace A231792.P9169570399201991912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A046100 (n + 1)).toNat - A228417 (n + 1)

end

end A231792.P9169570399201991912

/-!
# A231793: Count of the first 10^n primes containing at least one 6's digit.

The programs for A231793, there is no canonical definition to state claims against.
-/

/-! ## A231793.P2296992211818084376

`A011557(n+1)-A228418(n+1)`
-/

namespace A231793.P2296992211818084376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A228418 (n + 1)

end

end A231793.P2296992211818084376

/-! ## A231793.P10183138687438550913

`record[A348783(n)-A228418(n)]`
-/

namespace A231793.P10183138687438550913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 n - A228418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231793.P10183138687438550913

/-!
# A231794: Count of the first 10^n primes containing at least one 7's digit.

The programs for A231794, there is no canonical definition to state claims against.
-/

/-! ## A231794.P14308015146272676491

`A011557(n+1)-A228419(n+1)`
-/

namespace A231794.P14308015146272676491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A228419 (n + 1)

end

end A231794.P14308015146272676491

/-! ## A231794.P16756040072965721350

`A231726(n+1)+A231412(n+1)-A228419(n+1)`
-/

namespace A231794.P16756040072965721350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231726 (n + 1) + A231412 (n + 1) - A228419 (n + 1)

end

end A231794.P16756040072965721350

/-!
# A231795: Count of the first 10^n primes containing at least one 8's digit.

The programs for A231795, there is no canonical definition to state claims against.
-/

/-! ## A231795.P5759756198344990503

`A231789(n+1)+A228415(n+1)-A228420(n+2)`
-/

namespace A231795.P5759756198344990503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231789 (n + 1) + A228415 (n + 1) - A228420 (n + 2)

end

end A231795.P5759756198344990503

/-! ## A231795.P4400767373217360177

`record[A348783(n)-A228420(n+1)]`
-/

namespace A231795.P4400767373217360177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 n - A228420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231795.P4400767373217360177

/-! ## A231795.P838955017655154118

`record[A011557(n)-A228420(A376772(n+1))]`
-/

namespace A231795.P838955017655154118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - A228420 (A376772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231795.P838955017655154118

/-!
# A231796: Count of the first 10^n primes containing at least one 9's digit.

The programs for A231796, there is no canonical definition to state claims against.
-/

/-! ## A231796.P5211003091275163720

`A011557(n+1)-A228421(n+1)`
-/

namespace A231796.P5211003091275163720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A228421 (n + 1)

end

end A231796.P5211003091275163720

/-! ## A231796.P13963976584839776602

`Δ[A000042(n+1)-∑[A228421(n)]]`
-/

namespace A231796.P13963976584839776602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228421 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231796.P13963976584839776602

/-! ## A231796.P10268301276399211446

`Δ[A000042(n+1)]-A228421(n+1)`
-/

namespace A231796.P10268301276399211446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228421 (n + 1)

end

end A231796.P10268301276399211446

/-!
# A231797: Number of endofunctions on [n] such that no element has a preimage of cardinality one.

The programs for A231797, the canonical program `A231797.P4481794519034510118` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231797 has offset 0).

The definition of A231797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231797.P4481794519034510118

`∑{#}[n, (-1)^(n-#)*(n-#)!*#^#*C(n, #)²]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A231797

/-- `∑{#}[n, (-1)^(n-#)*(n-#)!*#^#*C(n, #)²]` -/
def P4481794519034510118.Spec : Prop :=
  ∀ n, P4481794519034510118.a n = (A231797 n : ℚ)

end A231797

/-! ## A231797.P8920978755568447860

`A245405(∑[2+n]-1)`
-/

namespace A231797.P8920978755568447860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A231797.P8920978755568447860

namespace A231797

/-- `A245405(∑[2+n]-1)` -/
def P8920978755568447860.Spec : Prop :=
  ∀ n, P8920978755568447860.a n = A231797 n

end A231797

/-! ## A231797.P15184307082211024391

`A206823(∑[n])`
-/

namespace A231797.P15184307082211024391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206823 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231797.P15184307082211024391

namespace A231797

/-- `A206823(∑[n])` -/
def P15184307082211024391.Spec : Prop :=
  ∀ n, P15184307082211024391.a n = A231797 n

end A231797

/-! ## A231797.P2916120913322518004

`A241580(∑[n]+1)`
-/

namespace A231797.P2916120913322518004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241580 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231797.P2916120913322518004

namespace A231797

/-- `A241580(∑[n]+1)` -/
def P2916120913322518004.Spec : Prop :=
  ∀ n, P2916120913322518004.a n = A231797 n

end A231797

/-!
# A231798: Number of (n+1) X (n+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to one.

The programs for A231798, there is no canonical definition to state claims against.
-/

/-! ## A231798.P801647609390410386

`A231806(∑[4*n]+1)`
-/

namespace A231798.P801647609390410386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231798.P801647609390410386

/-! ## A231798.P13590880612418396459

`record[gcd(A114327(n), A231806(n+1))]`
-/

namespace A231798.P13590880612418396459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A231806 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231798.P13590880612418396459

/-!
# A231799: Number of (n+1) X (1+1) 0..1 arrays with no element having a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors equal to one.

The programs for A231799, the canonical program `A231799.P3211724560709468117` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231799 has offset 1).

The definition of A231799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231799.P7336204121017404427

`ogf((5+8x+9x^2-4x^3-8x^4-8x^5)/(1-x-2x^2-5x^3+2x^5+4x^6))`
-/

namespace A231799.P7336204121017404427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 8, 9, -4, -8, -8] [1, -1, -2, -5, 0, 2, 4] n

end

end A231799.P7336204121017404427

namespace A231799

/-- `ogf((5+8x+9x^2-4x^3-8x^4-8x^5)/(1-x-2x^2-5x^3+2x^5+4x^6))` -/
def P7336204121017404427.Spec : Prop :=
  ∀ n, P7336204121017404427.a n = A231799 (n + 1)

end A231799

/-! ## A231799.P3211724560709468117

`a(n-1)+2*a(n-2)+5*a(n-3)-2*a(n-5)-4*a(n-6)` with `a(0)=5, a(1)=13, a(2)=32, a(3)=79, a(4)=200, a(5)=500`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A231799

/-- `a(n-1)+2*a(n-2)+5*a(n-3)-2*a(n-5)-4*a(n-6)` -/
def P3211724560709468117.Spec : Prop :=
  ∀ n, P3211724560709468117.a n = A231799 (n + 1)

theorem P3211724560709468117.correct : P3211724560709468117.Spec := by
  intro n
  simp only [A231799, Nat.add_sub_cancel]

end A231799

/-! ## A231799.P5381383147762202042

`A231806(∑[n]+1)`
-/

namespace A231799.P5381383147762202042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231806 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231799.P5381383147762202042

namespace A231799

/-- `A231806(∑[n]+1)` -/
def P5381383147762202042.Spec : Prop :=
  ∀ n, P5381383147762202042.a n = A231799 (n + 1)

end A231799

/-! ## A231799.P14382923144347155097

`record[A010054(n)*A231806(n+1)]`
-/

namespace A231799.P14382923144347155097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A231806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231799.P14382923144347155097

namespace A231799

/-- `record[A010054(n)*A231806(n+1)]` -/
def P14382923144347155097.Spec : Prop :=
  ∀ n, P14382923144347155097.a n = A231799 (n + 1)

end A231799

/-! ## A231799.P10288169222474477495

`record[gcd(A002262(n), A231806(n+1))]`
-/

namespace A231799.P10288169222474477495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231806 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231799.P10288169222474477495

namespace A231799

/-- `record[gcd(A002262(n), A231806(n+1))]` -/
def P10288169222474477495.Spec : Prop :=
  ∀ n, (P10288169222474477495.a n : ℤ) = A231799 (n + 1)

end A231799

