import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.B009.C001
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

/-!
# A336100: E.g.f.: Product_{k>=1} (1 - (exp(x) - 1)^k).

The programs for A336100, there is no canonical definition to state claims against.
-/

/-! ## A336100.P5905653770331513705

`A256999(A001118(n))-(2^n-1)`
-/

namespace A336100.P5905653770331513705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (A001118 n).toNat - ((2 ^ n : ℤ) - 1)

end

end A336100.P5905653770331513705

/-! ## A336100.P15083593645840714324

`A023443(A001118(n))-A000918(n)`
-/

namespace A336100.P15083593645840714324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001118 n).toNat - A000918 n

end

end A336100.P15083593645840714324

/-! ## A336100.P17589356865234134844

`A001118(n)-A058305(A000302(n))`
-/

namespace A336100.P17589356865234134844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001118 n - A058305 (A000302 n).toNat

end

end A336100.P17589356865234134844

/-!
# A336101: Numbers divisible by exactly one odd prime.

The programs for A336101, the canonical program `A336101.P16851114515148450517` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336101 has offset 1).

The definition of A336101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336101.P2584014419276990852

`A100367(n+1)/2`
-/

namespace A336101.P2584014419276990852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100367 (n + 1) : ℚ) / 2

end

end A336101.P2584014419276990852

namespace A336101

/-- `A100367(n+1)/2` -/
def P2584014419276990852.Spec : Prop :=
  ∀ n, P2584014419276990852.a n = (A336101 (n + 1) : ℚ)

end A336101

/-! ## A336101.P16851114515148450517

`eq[1, A340373(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A336101

/-- `eq[1, A340373(n+1)]+1` -/
def P16851114515148450517.Spec : Prop :=
  ∀ n, (P16851114515148450517.a n : ℤ) = A336101 (n + 1)

theorem P16851114515148450517.correct : P16851114515148450517.Spec := by
  intro n
  simp only [A336101, Nat.add_sub_cancel]

end A336101

/-! ## A336101.P7567201713256027254

`eq[2, A001221(2*(n+1))]+1`
-/

namespace A336101.P7567201713256027254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336101.P7567201713256027254

namespace A336101

/-- `eq[2, A001221(2*(n+1))]+1` -/
def P7567201713256027254.Spec : Prop :=
  ∀ n, (P7567201713256027254.a n : ℤ) = A336101 (n + 1)

end A336101

/-! ## A336101.P2969134970485130599

`eq[2, A001221(gcd(n, C(2, n))+n)]`
-/

namespace A336101.P2969134970485130599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.gcd n (Nat.choose 2 n) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336101.P2969134970485130599

namespace A336101

/-- `eq[2, A001221(gcd(n, C(2, n))+n)]` -/
def P2969134970485130599.Spec : Prop :=
  ∀ n, (P2969134970485130599.a n : ℤ) = A336101 (n + 1)

end A336101

/-! ## A336101.P3765787378972689463

`lt[A318886(floor(n/2^val(n+1, 2))+1), 1]+1`
-/

namespace A336101.P3765787378972689463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336101.P3765787378972689463

namespace A336101

/-- `lt[A318886(floor(n/2^val(n+1, 2))+1), 1]+1` -/
def P3765787378972689463.Spec : Prop :=
  ∀ n, (P3765787378972689463.a n : ℤ) = A336101 (n + 1)

end A336101

/-! ## A336101.P6332097342588904613

`A014682(A100367(n+1))`
-/

namespace A336101.P6332097342588904613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A100367 (n + 1)).toNat

end

end A336101.P6332097342588904613

namespace A336101

/-- `A014682(A100367(n+1))` -/
def P6332097342588904613.Spec : Prop :=
  ∀ n, P6332097342588904613.a n = A336101 (n + 1)

end A336101

/-! ## A336101.P10898597416894942921

`lt[1, A347633(A336158(n+1))]+1`
-/

namespace A336101.P10898597416894942921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (A336158 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336101.P10898597416894942921

namespace A336101

/-- `lt[1, A347633(A336158(n+1))]+1` -/
def P10898597416894942921.Spec : Prop :=
  ∀ n, (P10898597416894942921.a n : ℤ) = A336101 (n + 1)

end A336101

/-! ## A336101.P3655983087497622570

`∪[A038550(n+1), A076364(n+1)]`
-/

namespace A336101.P3655983087497622570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336101.P3655983087497622570

namespace A336101

/-- `∪[A038550(n+1), A076364(n+1)]` -/
def P3655983087497622570.Spec : Prop :=
  ∀ n, (P3655983087497622570.a n : ℤ) = A336101 (n + 1)

end A336101

/-! ## A336101.P2051047356264503610

`∪[A038550(n+1), A325359(n+1)]`
-/

namespace A336101.P2051047356264503610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336101.P2051047356264503610

namespace A336101

/-- `∪[A038550(n+1), A325359(n+1)]` -/
def P2051047356264503610.Spec : Prop :=
  ∀ n, (P2051047356264503610.a n : ℤ) = A336101 (n + 1)

end A336101

/-! ## A336101.P6979101734336108881

`∪[A267895(n+1), A325359(n+1)]`
-/

namespace A336101.P6979101734336108881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336101.P6979101734336108881

namespace A336101

/-- `∪[A267895(n+1), A325359(n+1)]` -/
def P6979101734336108881.Spec : Prop :=
  ∀ n, (P6979101734336108881.a n : ℤ) = A336101 (n + 1)

end A336101

/-! ## A336101.P7293709358694557457

`sqrt(A372724(n+2))`
-/

namespace A336101.P7293709358694557457
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A372724 (n + 2) : ℝ)

end

end A336101.P7293709358694557457

namespace A336101

/-- `sqrt(A372724(n+2))` -/
def P7293709358694557457.Spec : Prop :=
  ∀ n, P7293709358694557457.a n = (A336101 (n + 1) : ℝ)

end A336101

/-! ## A336101.P17608199381161759854

`filter[A070776(n+1), A340373(#)]`
-/

namespace A336101.P17608199381161759854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A336101.P17608199381161759854

namespace A336101

/-- `filter[A070776(n+1), A340373(#)]` -/
def P17608199381161759854.Spec : Prop :=
  ∀ n, P17608199381161759854.a n = A336101 (n + 1)

end A336101

/-! ## A336101.P9910037513734181071

`filter[A070776(n+1), A347523(#)]`
-/

namespace A336101.P9910037513734181071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A336101.P9910037513734181071

namespace A336101

/-- `filter[A070776(n+1), A347523(#)]` -/
def P9910037513734181071.Spec : Prop :=
  ∀ n, P9910037513734181071.a n = A336101 (n + 1)

end A336101

/-! ## A336101.P14188948176258396866

`filter[A324109(n+3), A340373(#)]`
-/

namespace A336101.P14188948176258396866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A336101.P14188948176258396866

namespace A336101

/-- `filter[A324109(n+3), A340373(#)]` -/
def P14188948176258396866.Spec : Prop :=
  ∀ n, P14188948176258396866.a n = A336101 (n + 1)

end A336101

/-! ## A336101.P14970136215539254205

`eq[2, A316555(2*(n+1))]+1`
-/

namespace A336101.P14970136215539254205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316555 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336101.P14970136215539254205

namespace A336101

/-- `eq[2, A316555(2*(n+1))]+1` -/
def P14970136215539254205.Spec : Prop :=
  ∀ n, (P14970136215539254205.a n : ℤ) = A336101 (n + 1)

end A336101

/-! ## A336101.P4429765127269035765

`filter[A285801(n+1), A340373(#)]`
-/

namespace A336101.P4429765127269035765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A336101.P4429765127269035765

namespace A336101

/-- `filter[A285801(n+1), A340373(#)]` -/
def P4429765127269035765.Spec : Prop :=
  ∀ n, P4429765127269035765.a n = A336101 (n + 1)

end A336101

/-! ## A336101.P406489717694874295

`filter[A318991(n+1), A340373(#)]`
-/

namespace A336101.P406489717694874295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A336101.P406489717694874295

namespace A336101

/-- `filter[A318991(n+1), A340373(#)]` -/
def P406489717694874295.Spec : Prop :=
  ∀ n, P406489717694874295.a n = A336101 (n + 1)

end A336101

/-! ## A336101.P14152793229001768934

`filter[A075592(n+1), A340373(#)]`
-/

namespace A336101.P14152793229001768934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A336101.P14152793229001768934

namespace A336101

/-- `filter[A075592(n+1), A340373(#)]` -/
def P14152793229001768934.Spec : Prop :=
  ∀ n, P14152793229001768934.a n = A336101 (n + 1)

end A336101

/-! ## A336101.P8861176549028854758

`filter[A070915(n+1), A340373(#)]`
-/

namespace A336101.P8861176549028854758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A336101.P8861176549028854758

namespace A336101

/-- `filter[A070915(n+1), A340373(#)]` -/
def P8861176549028854758.Spec : Prop :=
  ∀ n, P8861176549028854758.a n = A336101 (n + 1)

end A336101

/-! ## A336101.P17234384267824305560

`filter[A048167(n+1), A340373(#)]`
-/

namespace A336101.P17234384267824305560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A336101.P17234384267824305560

namespace A336101

/-- `filter[A048167(n+1), A340373(#)]` -/
def P17234384267824305560.Spec : Prop :=
  ∀ n, P17234384267824305560.a n = A336101 (n + 1)

end A336101

/-!
# A336102: Number of inseparable multisets of size n covering an initial interval of positive integers.

The programs for A336102, the canonical program `A336102.P21603712807904741` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336102 has offset 0).

The definition of A336102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336102.P21603712807904741

`4*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=3, a(5)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A336102

/-- `4*a(n-2)-4*a(n-4)` -/
def P21603712807904741.Spec : Prop :=
  ∀ n, P21603712807904741.a n = A336102 n

theorem P21603712807904741.correct : P21603712807904741.Spec := by
  intro n
  simp only [A336102]

end A336102

/-! ## A336102.P16680152282499000766

`A049610(∑[char[2*n]])`
-/

namespace A336102.P16680152282499000766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336102.P16680152282499000766

namespace A336102

/-- `A049610(∑[char[2*n]])` -/
def P16680152282499000766.Spec : Prop :=
  ∀ n, P16680152282499000766.a n = A336102 n

end A336102

/-! ## A336102.P8710637144399862946

`A349050(A052928(n))`
-/

namespace A336102.P8710637144399862946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349050 (A052928 n).toNat

end

end A336102.P8710637144399862946

namespace A336102

/-- `A349050(A052928(n))` -/
def P8710637144399862946.Spec : Prop :=
  ∀ n, P8710637144399862946.a n = A336102 n

end A336102

/-! ## A336102.P2829174112329819841

`A349050(A131055(n+2)-2)`
-/

namespace A336102.P2829174112329819841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349050 (A131055 (n + 2) - 2).toNat

end

end A336102.P2829174112329819841

namespace A336102

/-- `A349050(A131055(n+2)-2)` -/
def P2829174112329819841.Spec : Prop :=
  ∀ n, P2829174112329819841.a n = A336102 n

end A336102

/-! ## A336102.P1416866754917209117

`abs(Δ[A049610(A000217(n)%(n+1))])`
-/

namespace A336102.P1416866754917209117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (Int.tmod (A000217 n) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A336102.P1416866754917209117

namespace A336102

/-- `abs(Δ[A049610(A000217(n)%(n+1))])` -/
def P1416866754917209117.Spec : Prop :=
  ∀ n, P1416866754917209117.a n = A336102 n

end A336102

/-! ## A336102.P18199343862916238654

`A049610(A008619(n))*A057427(n)`
-/

namespace A336102.P18199343862916238654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (A008619 n).toNat * A057427 n

end

end A336102.P18199343862916238654

namespace A336102

/-- `A049610(A008619(n))*A057427(n)` -/
def P18199343862916238654.Spec : Prop :=
  ∀ n, P18199343862916238654.a n = A336102 n

end A336102

/-! ## A336102.P15227267185941878232

`A049610(A008619(n))+A000007(A313204(n))`
-/

namespace A336102.P15227267185941878232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (A008619 n).toNat + A000007 (A313204 n).toNat

end

end A336102.P15227267185941878232

namespace A336102

/-- `A049610(A008619(n))+A000007(A313204(n))` -/
def P15227267185941878232.Spec : Prop :=
  ∀ n, P15227267185941878232.a n = A336102 n

end A336102

/-! ## A336102.P18084161931385718277

`(A004958(n)-A004976(n))*A049610(A008619(n))`
-/

namespace A336102.P18084161931385718277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004958 n - A004976 n) * A049610 (A008619 n).toNat

end

end A336102.P18084161931385718277

namespace A336102

/-- `(A004958(n)-A004976(n))*A049610(A008619(n))` -/
def P18084161931385718277.Spec : Prop :=
  ∀ n, P18084161931385718277.a n = A336102 n

end A336102

/-! ## A336102.P14563924810549699127

`A001787(A004526(n))-A139756(A004526(n))`
-/

namespace A336102.P14563924810549699127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A004526 n).toNat - A139756 (A004526 n).toNat

end

end A336102.P14563924810549699127

namespace A336102

/-- `A001787(A004526(n))-A139756(A004526(n))` -/
def P14563924810549699127.Spec : Prop :=
  ∀ n, P14563924810549699127.a n = A336102 n

end A336102

/-! ## A336102.P15805429681030902710

`A011782(n)-A336103(n)`
-/

namespace A336102.P15805429681030902710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A336103 n

end

end A336102.P15805429681030902710

namespace A336102

/-- `A011782(n)-A336103(n)` -/
def P15805429681030902710.Spec : Prop :=
  ∀ n, P15805429681030902710.a n = A336102 n

end A336102

/-! ## A336102.P4284230450658583936

`A049610(A008619(n))%A000079(n)`
-/

namespace A336102.P4284230450658583936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049610 (A008619 n).toNat) (A000079 n)

end

end A336102.P4284230450658583936

namespace A336102

/-- `A049610(A008619(n))%A000079(n)` -/
def P4284230450658583936.Spec : Prop :=
  ∀ n, P4284230450658583936.a n = A336102 n

end A336102

/-!
# A336103: Number of separable multisets of size n covering an initial interval of positive integers.

The programs for A336103, the canonical program `A336103.P3575335748039605049` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336103 has offset 0).

The definition of A336103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336103.P3575335748039605049

`A011782(n)-A336102(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336103

/-- `A011782(n)-A336102(n)` -/
def P3575335748039605049.Spec : Prop :=
  ∀ n, P3575335748039605049.a n = A336103 n

theorem P3575335748039605049.correct : P3575335748039605049.Spec := by
  intro n
  simp only [A336103]

end A336103

/-! ## A336103.P16741501507784472210

`∑[A034008(n)]-A336102(n)`
-/

namespace A336103.P16741501507784472210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A336102 n

end

end A336103.P16741501507784472210

namespace A336103

/-- `∑[A034008(n)]-A336102(n)` -/
def P16741501507784472210.Spec : Prop :=
  ∀ n, P16741501507784472210.a n = A336103 n

end A336103

/-! ## A336103.P8870054156402568673

`A011782(n)-A049610(A008619(n))`
-/

namespace A336103.P8870054156402568673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A049610 (A008619 n).toNat

end

end A336103.P8870054156402568673

namespace A336103

/-- `A011782(n)-A049610(A008619(n))` -/
def P8870054156402568673.Spec : Prop :=
  ∀ n, P8870054156402568673.a n = A336103 n

end A336103

/-! ## A336103.P2203405468313430265

`Δ[A094373(n)]-A336102(n)`
-/

namespace A336103.P2203405468313430265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A336102 n

end

end A336103.P2203405468313430265

namespace A336103

/-- `Δ[A094373(n)]-A336102(n)` -/
def P2203405468313430265.Spec : Prop :=
  ∀ n, P2203405468313430265.a n = A336103 n

end A336103

/-! ## A336103.P13122122630300425947

`Δ[A131577(n)]-A336102(n)`
-/

namespace A336103.P13122122630300425947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A336102 n

end

end A336103.P13122122630300425947

namespace A336103

/-- `Δ[A131577(n)]-A336102(n)` -/
def P13122122630300425947.Spec : Prop :=
  ∀ n, P13122122630300425947.a n = A336103 n

end A336103

/-!
# A336104: Number of permutations of the prime indices of A000225(n) = 2^n - 1 with at least one non-singleton run.

The programs for A336104, there is no canonical definition to state claims against.
-/

/-! ## A336104.P14717224056912104146

`A336105(n+1)-A335432(n+1)`
-/

namespace A336104.P14717224056912104146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336105 (n + 1) - A335432 (n + 1)

end

end A336104.P14717224056912104146

/-! ## A336104.P10326171988378386926

`A008480(A278240(n+1))-A335432(n+1)`
-/

namespace A336104.P10326171988378386926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A278240 (n + 1)).toNat - A335432 (n + 1)

end

end A336104.P10326171988378386926

/-! ## A336104.P17613415069541706525

`A208575(A292616(n)+A008586(n))`
-/

namespace A336104.P17613415069541706525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208575 (A292616 n + A008586 n).toNat

end

end A336104.P17613415069541706525

/-! ## A336104.P16715635684642215243

`and(A008683(n+12), A004012(A334269(n+1)))`
-/

namespace A336104.P16715635684642215243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (n + 12)) (A004012 (A334269 (n + 1)).toNat)

end

end A336104.P16715635684642215243

/-! ## A336104.P3710426062957704501

`A000005(A260323(2*n+1))*A093958(n+1)`
-/

namespace A336104.P3710426062957704501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A260323 (2 * n + 1)).toNat * A093958 (n + 1)

end

end A336104.P3710426062957704501

/-!
# A336105: Number of permutations of the prime indices of 2^n - 1.

The programs for A336105, the canonical program `A336105.P2235091896274651277` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336105 has offset 1).

The definition of A336105 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336105.P8438322540842928779

`A336104(n+1)+A335432(n+1)`
-/

namespace A336105.P8438322540842928779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336104 (n + 1) + A335432 (n + 1)

end

end A336105.P8438322540842928779

namespace A336105

/-- `A336104(n+1)+A335432(n+1)` -/
def P8438322540842928779.Spec : Prop :=
  ∀ n, P8438322540842928779.a n = A336105 (n + 1)

end A336105

/-! ## A336105.P2235091896274651277

`A008480(2^(n+1)-1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336105

/-- `A008480(2^(n+1)-1)` -/
def P2235091896274651277.Spec : Prop :=
  ∀ n, P2235091896274651277.a n = A336105 (n + 1)

theorem P2235091896274651277.correct : P2235091896274651277.Spec := by
  intro n
  simp only [A336105, Nat.add_sub_cancel]

end A336105

/-! ## A336105.P13409784820261481978

`A318808(2*A046801(n+1))`
-/

namespace A336105.P13409784820261481978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (2 * A046801 (n + 1)).toNat

end

end A336105.P13409784820261481978

namespace A336105

/-- `A318808(2*A046801(n+1))` -/
def P13409784820261481978.Spec : Prop :=
  ∀ n, P13409784820261481978.a n = A336105 (n + 1)

end A336105

/-! ## A336105.P4640481813395285199

`A318810(2*A046801(n+1))`
-/

namespace A336105.P4640481813395285199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (2 * A046801 (n + 1)).toNat

end

end A336105.P4640481813395285199

namespace A336105

/-- `A318810(2*A046801(n+1))` -/
def P4640481813395285199.Spec : Prop :=
  ∀ n, P4640481813395285199.a n = A336105 (n + 1)

end A336105

/-! ## A336105.P5292453415086714482

`A318808(A046801(n+1)+A046801(n+1))`
-/

namespace A336105.P5292453415086714482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (A046801 (n + 1) + A046801 (n + 1)).toNat

end

end A336105.P5292453415086714482

namespace A336105

/-- `A318808(A046801(n+1)+A046801(n+1))` -/
def P5292453415086714482.Spec : Prop :=
  ∀ n, P5292453415086714482.a n = A336105 (n + 1)

end A336105

/-!
# A336106: Number of integer partitions of n whose greatest part is at most one more than the sum of the other parts.

The programs for A336106, there is no canonical definition to state claims against.
-/

/-! ## A336106.P14152408262589989674

`A058400(∑[and(n, -2)]+1)`
-/

namespace A336106.P14152408262589989674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058400 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A336106.P14152408262589989674

/-! ## A336106.P15029334496065457731

`A026820(floor(cosh(log((n+1)²)))-n)`
-/

namespace A336106.P15029334496065457731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (⌊Real.cosh (Real.log ((n + 1) ^ 2 : ℝ))⌋ - (n : ℤ)).toNat

end

end A336106.P15029334496065457731

/-! ## A336106.P16812356499527931449

`A026820(ceil(n²/2)+floor(acot(n)))`
-/

namespace A336106.P16812356499527931449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (⌈(n ^ 2 : ℚ) / 2⌉ + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A336106.P16812356499527931449

/-! ## A336106.P8724483049768832940

`A026820(ceil(n²/2)^ceil(sin(n)²))`
-/

namespace A336106.P8724483049768832940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (SequenceMachineLib.roundAway ((⌈(n ^ 2 : ℚ) / 2⌉ : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A336106.P8724483049768832940

/-! ## A336106.P13563685243941878396

`A026820(or(ceil(n²/2), char[n!-1]))`
-/

namespace A336106.P13563685243941878396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (Int.lor ⌈(n ^ 2 : ℚ) / 2⌉ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A336106.P13563685243941878396

/-!
# A336107: Number of permutations of the prime indices of n with at least one non-singleton run, or non-separations.

The programs for A336107, there is no canonical definition to state claims against.
-/

/-! ## A336107.P989696702736911984

`A008480(n+1)-A335452(n+1)`
-/

namespace A336107.P989696702736911984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A335452 (n + 1)

end

end A336107.P989696702736911984

/-! ## A336107.P406961827962036733

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-abs(A355817(n+1))`
-/

namespace A336107.P406961827962036733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (|A355817 (n + 1)| : ℚ)

end

end A336107.P406961827962036733

/-! ## A336107.P7283960038312616531

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-ceil(A345164(n+1)²/3)`
-/

namespace A336107.P7283960038312616531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (⌈(A345164 (n + 1) ^ 2 : ℚ) / 3⌉ : ℚ)

end

end A336107.P7283960038312616531

/-! ## A336107.P12438736773859554939

`A008480(n+1)-abs(A355817(n+1))`
-/

namespace A336107.P12438736773859554939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - |A355817 (n + 1)|

end

end A336107.P12438736773859554939

/-! ## A336107.P3805945359267289668

`abs(A355939(n+1))-A335452(n+1)`
-/

namespace A336107.P3805945359267289668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355939 (n + 1)| - A335452 (n + 1)

end

end A336107.P3805945359267289668

/-! ## A336107.P2776313572540475024

`abs(A355817(n+1)-A355939(n+1))`
-/

namespace A336107.P2776313572540475024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355817 (n + 1) - A355939 (n + 1)|

end

end A336107.P2776313572540475024

/-! ## A336107.P16129384226365054750

`A335447(n+1)+1-A335452(n+1)`
-/

namespace A336107.P16129384226365054750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (n + 1) + (1 - A335452 (n + 1))

end

end A336107.P16129384226365054750

/-! ## A336107.P8135498786213194941

`A350251(n+1)-2%A333175(n+1)`
-/

namespace A336107.P8135498786213194941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350251 (n + 1) - Int.tmod 2 (A333175 (n + 1))

end

end A336107.P8135498786213194941

/-! ## A336107.P14223445667943212492

`∑{d}[n+1, A359474(#)*A377071((n+1)/#)]`
-/

namespace A336107.P14223445667943212492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359474 d * A377071 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336107.P14223445667943212492

/-!
# A336108: Number of compositions of 2*n with n maximal runs.

The programs for A336108, there is no canonical definition to state claims against.
-/

/-! ## A336108.P2979110717543562661

`A238279(A397983(n))`
-/

namespace A336108.P2979110717543562661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238279 (A397983 n).toNat

end

end A336108.P2979110717543562661

/-! ## A336108.P15493008748447709296

`A238279(A374702(2*n+1))`
-/

namespace A336108.P15493008748447709296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238279 (A374702 (2 * n + 1)).toNat

end

end A336108.P15493008748447709296

/-! ## A336108.P16934594885247809463

`A238130(A132209(n))`
-/

namespace A336108.P16934594885247809463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A132209 n).toNat

end

end A336108.P16934594885247809463

/-! ## A336108.P17296063691783942307

`record[A238130(record[A278818(n)])]`
-/

namespace A336108.P17296063691783942307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336108.P17296063691783942307

/-! ## A336108.P5863548680835019153

`A238130(A053438(∑[2*n]))`
-/

namespace A336108.P5863548680835019153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A053438 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A336108.P5863548680835019153

/-! ## A336108.P9941523049028918569

`record[A238130(A047838(n+2))]`
-/

namespace A336108.P9941523049028918569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A047838 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336108.P9941523049028918569

/-! ## A336108.P3993037659188724825

`A238130(A004273(n²+n))`
-/

namespace A336108.P3993037659188724825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A004273 (n ^ 2 + n)).toNat

end

end A336108.P3993037659188724825

/-! ## A336108.P9682707329079829342

`A238130(A245300(A027379(n)))`
-/

namespace A336108.P9682707329079829342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A245300 (A027379 n).toNat).toNat

end

end A336108.P9682707329079829342

/-! ## A336108.P4543546808567789047

`A238130(A004273(n)+A001105(n))`
-/

namespace A336108.P4543546808567789047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A004273 n + A001105 n).toNat

end

end A336108.P4543546808567789047

/-!
# A336109: First column of dispersion array A120861.

The programs for A336109, the canonical program `A336109.P9820616084684215784` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336109 has offset 1).

The definition of A336109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336109.P9820616084684215784

`floor(∑[sqrt(2-and(1, n)^n)])`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A336109

/-- `floor(∑[sqrt(2-and(1, n)^n)])` -/
def P9820616084684215784.Spec : Prop :=
  ∀ n, P9820616084684215784.a n = A336109 (n + 1)

theorem P9820616084684215784.correct : P9820616084684215784.Spec := by
  intro n
  simp only [A336109, Nat.add_sub_cancel]

end A336109

/-! ## A336109.P14904625721482101174

`comp[2*ceil(n/sqrt(2))+n]-floor(n/2)`
-/

namespace A336109.P14904625721482101174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℝ) / Real.sqrt (2 : ℝ)⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - ⌊(n : ℚ) / 2⌋

end

end A336109.P14904625721482101174

namespace A336109

/-- `comp[2*ceil(n/sqrt(2))+n]-floor(n/2)` -/
def P14904625721482101174.Spec : Prop :=
  ∀ n, P14904625721482101174.a n = A336109 (n + 1)

end A336109

/-! ## A336109.P9774325671261495009

`floor(∑[sqrt(A040001(n))])`
-/

namespace A336109.P9774325671261495009
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A040001 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A336109.P9774325671261495009

namespace A336109

/-- `floor(∑[sqrt(A040001(n))])` -/
def P9774325671261495009.Spec : Prop :=
  ∀ n, P9774325671261495009.a n = A336109 (n + 1)

end A336109

/-! ## A336109.P14945685395339924235

`floor(∑[sqrt(A134451(n)!)])`
-/

namespace A336109.P14945685395339924235
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.factorial (A134451 n).toNat : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A336109.P14945685395339924235

namespace A336109

/-- `floor(∑[sqrt(A134451(n)!)])` -/
def P14945685395339924235.Spec : Prop :=
  ∀ n, P14945685395339924235.a n = A336109 (n + 1)

end A336109

/-! ## A336109.P8343341936413607541

`ceil(A188298(n+1)/sqrt(2))`
-/

namespace A336109.P8343341936413607541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A188298 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A336109.P8343341936413607541

namespace A336109

/-- `ceil(A188298(n+1)/sqrt(2))` -/
def P8343341936413607541.Spec : Prop :=
  ∀ n, P8343341936413607541.a n = A336109 (n + 1)

end A336109

/-! ## A336109.P16156221978450709006

`floor(∑[sqrt(A000032((n%2)^n))])`
-/

namespace A336109.P16156221978450709006
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000032 ((n % 2) ^ n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A336109.P16156221978450709006

namespace A336109

/-- `floor(∑[sqrt(A000032((n%2)^n))])` -/
def P16156221978450709006.Spec : Prop :=
  ∀ n, P16156221978450709006.a n = A336109 (n + 1)

end A336109

/-! ## A336109.P8879414087276812365

`comp[A285074(A285074(2*n+1))-1]`
-/

namespace A336109.P8879414087276812365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (A285074 (2 * n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A336109.P8879414087276812365

namespace A336109

/-- `comp[A285074(A285074(2*n+1))-1]` -/
def P8879414087276812365.Spec : Prop :=
  ∀ n, (P8879414087276812365.a n : ℤ) = A336109 (n + 1)

end A336109

/-! ## A336109.P2829254969179721639

`eq[char[A285074(n+2)], A285076(n+1)]`
-/

namespace A336109.P2829254969179721639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A336109.P2829254969179721639

namespace A336109

/-- `eq[char[A285074(n+2)], A285076(n+1)]` -/
def P2829254969179721639.Spec : Prop :=
  ∀ n, (P2829254969179721639.a n : ℤ) = A336109 (n + 1)

end A336109

/-! ## A336109.P14407813446618641856

`A026249(A188298(n+1))`
-/

namespace A336109.P14407813446618641856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A188298 (n + 1)).toNat

end

end A336109.P14407813446618641856

namespace A336109

/-- `A026249(A188298(n+1))` -/
def P14407813446618641856.Spec : Prop :=
  ∀ n, P14407813446618641856.a n = A336109 (n + 1)

end A336109

/-! ## A336109.P4370509169348558890

`record[A049474(A049474(n)+A040001(n))]`
-/

namespace A336109.P4370509169348558890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A049474 n + A040001 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336109.P4370509169348558890

namespace A336109

/-- `record[A049474(A049474(n)+A040001(n))]` -/
def P4370509169348558890.Spec : Prop :=
  ∀ n, P4370509169348558890.a n = A336109 (n + 1)

end A336109

/-! ## A336109.P15514294824910498467

`A065033(A188045(n+1)-A065033(n))`
-/

namespace A336109.P15514294824910498467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A188045 (n + 1) - A065033 n).toNat

end

end A336109.P15514294824910498467

namespace A336109

/-- `A065033(A188045(n+1)-A065033(n))` -/
def P15514294824910498467.Spec : Prop :=
  ∀ n, P15514294824910498467.a n = A336109 (n + 1)

end A336109

/-! ## A336109.P17529082072038288191

`A054071(A188045(n+1))`
-/

namespace A336109.P17529082072038288191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (A188045 (n + 1)).toNat

end

end A336109.P17529082072038288191

namespace A336109

/-- `A054071(A188045(n+1))` -/
def P17529082072038288191.Spec : Prop :=
  ∀ n, P17529082072038288191.a n = A336109 (n + 1)

end A336109

/-!
# A336111: A non-symmetrical rectangular array read by antidiagonals: A(n,m) is the tower of powers of n modulo m.

The programs for A336111, there is no canonical definition to state claims against.
-/

/-! ## A336111.P13692367071259698770

`A062172(n+1)*A071974(A246257(n))`
-/

namespace A336111.P13692367071259698770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (n + 1) * A071974 (A246257 n).toNat

end

end A336111.P13692367071259698770

/-! ## A336111.P17006203767948170482

`A353829(A212801(n+1))%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A336111.P17006203767948170482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353829 (A212801 (n + 1)).toNat) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A336111.P17006203767948170482

/-! ## A336111.P13297780707355993698

`A043280(A066094(n))*A062172(n+1)`
-/

namespace A336111.P13297780707355993698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A066094 n).toNat * A062172 (n + 1)

end

end A336111.P13297780707355993698

/-! ## A336111.P15302913392000216352

`A062172(n+1)*A143544(A088214(n+1))`
-/

namespace A336111.P15302913392000216352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (n + 1) * A143544 (A088214 (n + 1)).toNat

end

end A336111.P15302913392000216352

/-! ## A336111.P190845916197438991

`A062172(n+1)^A071628(n+1)!`
-/

namespace A336111.P190845916197438991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (n + 1) ^ Nat.factorial (A071628 (n + 1)).toNat

end

end A336111.P190845916197438991

/-!
# A336112: a(n) is the least number k such that the Sum_{i=0..k} sqrt(k) equals or exceeds n.

The programs for A336112, there is no canonical definition to state claims against.
-/

/-! ## A336112.P7629916696955316498

`comp[floor(∑[sqrt(n)+1])]-n`
-/

namespace A336112.P7629916696955316498
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A336112.P7629916696955316498

/-! ## A336112.P9509817129497627992

`∑[char[floor(∑[n^(1/2)])%(n+1)²+1]]`
-/

namespace A336112.P9509817129497627992
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊∑ j ∈ Finset.range (n + 1), f3 j⌋ ((n + 1) ^ 2 : ℤ) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336112.P9509817129497627992

/-! ## A336112.P17824967758495444106

`∑[char[A025224(n)+1]]`
-/

namespace A336112.P17824967758495444106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025224 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336112.P17824967758495444106

/-! ## A336112.P6530695029442473491

`floor(A001318(3*n)^acot(3))`
-/

namespace A336112.P6530695029442473491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001318 (3 * n) : ℝ) ^ (SequenceMachineLib.acot (3 : ℝ))⌋

end

end A336112.P6530695029442473491

/-! ## A336112.P11531483706771663692

`floor(A282513(3*n)^acot(3))`
-/

namespace A336112.P11531483706771663692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282513 (3 * n) : ℝ) ^ (SequenceMachineLib.acot (3 : ℝ))⌋

end

end A336112.P11531483706771663692

/-! ## A336112.P7076387552493213023

`floor(sqrt(n*(sqrt(A008706(n))+11))/2)`
-/

namespace A336112.P7076387552493213023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n : ℝ) * (Real.sqrt (A008706 n : ℝ) + 11)) / 2⌋

end

end A336112.P7076387552493213023

/-! ## A336112.P14032520596466505970

`A227177(∑[∑[A169611(n+1)]])`
-/

namespace A336112.P14032520596466505970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336112.P14032520596466505970

/-! ## A336112.P6226710990844138054

`A227177(∑[∑[A332447(n+1)]])`
-/

namespace A336112.P6226710990844138054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332447 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336112.P6226710990844138054

/-! ## A336112.P13951361823254156950

`A227177(∑[eq[1, A003989(n+1)]])`
-/

namespace A336112.P13951361823254156950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336112.P13951361823254156950

/-! ## A336112.P10389956991874467416

`A227177(A308699(n)-A004524(n))`
-/

namespace A336112.P10389956991874467416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A308699 n - A004524 n).toNat

end

end A336112.P10389956991874467416

/-!
# A336113: a(n) is the numerator of Sum_{odd d|n} 1/d.

The programs for A336113, the canonical program `A336113.P9746994483615630298` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336113 has offset 1).

The definition of A336113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336113.P11577258305104985042

`(-1)^(n+2)*A098986(n+1)`
-/

namespace A336113.P11577258305104985042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * A098986 (n + 1)

end

end A336113.P11577258305104985042

namespace A336113

/-- `(-1)^(n+2)*A098986(n+1)` -/
def P11577258305104985042.Spec : Prop :=
  ∀ n, P11577258305104985042.a n = A336113 (n + 1)

end A336113

/-! ## A336113.P10866432480497054218

`lcm(n+1, ∑{d}[n+1, lcm(2, #)/2])/(n+1)`
-/

namespace A336113.P10866432480497054218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℚ) / 2)) : ℚ) / (n + 1 : ℚ)

end

end A336113.P10866432480497054218

namespace A336113

/-- `lcm(n+1, ∑{d}[n+1, lcm(2, #)/2])/(n+1)` -/
def P10866432480497054218.Spec : Prop :=
  ∀ n, P10866432480497054218.a n = (A336113 (n + 1) : ℚ)

end A336113

/-! ## A336113.P2475637396234702791

`A017665((n+1)/2^val(n+1, 2))`
-/

namespace A336113.P2475637396234702791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A336113.P2475637396234702791

namespace A336113

/-- `A017665((n+1)/2^val(n+1, 2))` -/
def P2475637396234702791.Spec : Prop :=
  ∀ n, P2475637396234702791.a n = A336113 (n + 1)

end A336113

/-! ## A336113.P1053100538820637171

`lcm(n+1, A002131(n+1))/(n+1)`
-/

namespace A336113.P1053100538820637171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A002131 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A336113.P1053100538820637171

namespace A336113

/-- `lcm(n+1, A002131(n+1))/(n+1)` -/
def P1053100538820637171.Spec : Prop :=
  ∀ n, P1053100538820637171.a n = (A336113 (n + 1) : ℚ)

end A336113

/-! ## A336113.P9746994483615630298

`A017665(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A336113

/-- `A017665(A000265(n+1))` -/
def P9746994483615630298.Spec : Prop :=
  ∀ n, P9746994483615630298.a n = A336113 (n + 1)

theorem P9746994483615630298.correct : P9746994483615630298.Spec := by
  intro n
  simp only [A336113, Nat.add_sub_cancel]

end A336113

/-! ## A336113.P5781352958452055337

`A341525(A064989(n+1))`
-/

namespace A336113.P5781352958452055337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341525 (A064989 (n + 1)).toNat

end

end A336113.P5781352958452055337

namespace A336113

/-- `A341525(A064989(n+1))` -/
def P5781352958452055337.Spec : Prop :=
  ∀ n, P5781352958452055337.a n = A336113 (n + 1)

end A336113

/-! ## A336113.P17917269734959665647

`abs(A098986(n+1))`
-/

namespace A336113.P17917269734959665647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098986 (n + 1)|

end

end A336113.P17917269734959665647

namespace A336113

/-- `abs(A098986(n+1))` -/
def P17917269734959665647.Spec : Prop :=
  ∀ n, P17917269734959665647.a n = A336113 (n + 1)

end A336113

/-! ## A336113.P7627961570275654364

`abs(∑[-Δ[A098986(n)]])`
-/

namespace A336113.P7627961570275654364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098986 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A336113.P7627961570275654364

namespace A336113

/-- `abs(∑[-Δ[A098986(n)]])` -/
def P7627961570275654364.Spec : Prop :=
  ∀ n, P7627961570275654364.a n = A336113 (n + 1)

end A336113

/-! ## A336113.P13457907763545923337

`abs(A098984(n+1)/2)`
-/

namespace A336113.P13457907763545923337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A098984 (n + 1) : ℚ) / 2|

end

end A336113.P13457907763545923337

namespace A336113

/-- `abs(A098984(n+1)/2)` -/
def P13457907763545923337.Spec : Prop :=
  ∀ n, P13457907763545923337.a n = (A336113 (n + 1) : ℚ)

end A336113

/-!
# A336114: The hafnian of a symmetric Toeplitz matrix of order 2*n, n>=2 with the first row (0,1,2,...,2,1); a(0)=a(1)=1.

The programs for A336114, there is no canonical definition to state claims against.
-/

/-! ## A336114.P8722681284651404982

`A004277(lcm(A004396(n), A278069(n)))`
-/

namespace A336114.P8722681284651404982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lcm (A004396 n) (A278069 n))

end

end A336114.P8722681284651404982

/-!
# A336115: Semiprimes that are product of a Fermat prime and a Mersenne prime.

The programs for A336115, there is no canonical definition to state claims against.
-/

/-! ## A336115.P11961148718950378658

`∩[eq[2, A335885(n+1)]+1, A172181(n+1)]`
-/

namespace A336115.P11961148718950378658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A336115.P11961148718950378658

/-! ## A336115.P2675407093829707998

`∩[A172181(n+1), A335912(n+1)]`
-/

namespace A336115.P2675407093829707998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336115.P2675407093829707998

/-! ## A336115.P3219715910031770840

`∩[A335912(n+1), A394177(n+1)]`
-/

namespace A336115.P3219715910031770840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336115.P3219715910031770840

/-! ## A336115.P9317135159512504248

`∩[A335912(n+1), A394182(n+1)]`
-/

namespace A336115.P9317135159512504248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336115.P9317135159512504248

/-!
# A336116: Primes of the form q*2^h - 1, where q is a Fermat prime.

The programs for A336116, there is no canonical definition to state claims against.
-/

/-! ## A336116.P6413581577673991539

`p?[A000120(A025581(n))*A099627(n)]`
-/

namespace A336116.P6413581577673991539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A025581 n).toNat * A099627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336116.P6413581577673991539

/-! ## A336116.P10973125288238807069

`p?[A334101(n+1)-1]`
-/

namespace A336116.P10973125288238807069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334101 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336116.P10973125288238807069

/-! ## A336116.P5892488513992563964

`record[∑{p}[A334101(n+2)-1, #]]`
-/

namespace A336116.P5892488513992563964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334101 (n + 2) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336116.P5892488513992563964

/-! ## A336116.P7258833268567495365

`record[A006530(A334101(n+1)-1)]`
-/

namespace A336116.P7258833268567495365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A334101 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336116.P7258833268567495365

/-! ## A336116.P11011379725030967159

`record[A020639(A334101(n+1)-1)]`
-/

namespace A336116.P11011379725030967159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A334101 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336116.P11011379725030967159

/-!
# A336117: Primes of the form q*2^h + 1, where q is a Mersenne prime.

The programs for A336117, there is no canonical definition to state claims against.
-/

/-! ## A336117.P10280895012996493234

`p?[A335431(n+1)+1]`
-/

namespace A336117.P10280895012996493234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335431 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336117.P10280895012996493234

/-! ## A336117.P516769565725357333

`∩[A058500(n+1), A171987(n+1)]`
-/

namespace A336117.P516769565725357333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336117.P516769565725357333

/-! ## A336117.P2676954986497490713

`∩[A067466(n+1), A171987(n+1)]`
-/

namespace A336117.P2676954986497490713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336117.P2676954986497490713

/-! ## A336117.P1942971611400991599

`∩[A058500(n+1), A224195(n+1)]`
-/

namespace A336117.P1942971611400991599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336117.P1942971611400991599

/-! ## A336117.P858492111428690765

`∩[A067466(n+1), A224195(n+1)]`
-/

namespace A336117.P858492111428690765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336117.P858492111428690765

/-!
# A336118: a(n) = A335904(n) - A087436(n).

The programs for A336118, there is no canonical definition to state claims against.
-/

/-! ## A336118.P2773067271358513869

`A335904(n+1)-A087436(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336118.P2773067271358513869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335904 (n + 1) - A087436 (n + 1)

end

end A336118.P2773067271358513869

/-! ## A336118.P8973138499044356683

`A335904(A335915(n+1))`
-/

namespace A336118.P8973138499044356683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335904 (A335915 (n + 1)).toNat

end

end A336118.P8973138499044356683

/-! ## A336118.P1230436239256018704

`A335904(n+1)-A001222(A000265(n+1))`
-/

namespace A336118.P1230436239256018704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335904 (n + 1) - A001222 (A000265 (n + 1)).toNat

end

end A336118.P1230436239256018704

/-! ## A336118.P10659708591450868793

`A007814(n+1)+A335904(n+1)-A001222(n+1)`
-/

namespace A336118.P10659708591450868793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A335904 (n + 1) - A001222 (n + 1))

end

end A336118.P10659708591450868793

/-! ## A336118.P8756266196835293263

`A335904(n+1)+A336396(n+1)-A329697(n+1)`
-/

namespace A336118.P8756266196835293263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335904 (n + 1) + (A336396 (n + 1) - A329697 (n + 1))

end

end A336118.P8756266196835293263

/-! ## A336118.P1943759764543524878

`A335904(A167344(A000265(n+1)))`
-/

namespace A336118.P1943759764543524878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335904 (A167344 (A000265 (n + 1)).toNat).toNat

end

end A336118.P1943759764543524878

/-!
# A336119: Numbers k such that A122111(k) [the conjugated prime factorization of k] is a square or twice a square.

The programs for A336119, the canonical program `A336119.P5735552262606265768` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336119 has offset 1).

The definition of A336119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336119.P5735552262606265768

`filter[n+1, A335909(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A336119

/-- `filter[n+1, A335909(#)]` -/
def P5735552262606265768.Spec : Prop :=
  ∀ n, (P5735552262606265768.a n : ℤ) = A336119 (n + 1)

theorem P5735552262606265768.correct : P5735552262606265768.Spec := by
  intro n
  simp only [A336119, Nat.add_sub_cancel]

end A336119

/-! ## A336119.P930264329764942242

`eq[4, a(A336121(n))²]` with `a(0)=2`
-/

namespace A336119.P930264329764942242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A336121 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336119.P930264329764942242

namespace A336119

/-- `eq[4, a(A336121(n))²]` -/
def P930264329764942242.Spec : Prop :=
  ∀ n, (P930264329764942242.a n : ℤ) = A336119 (n + 1)

end A336119

/-! ## A336119.P18095708247984677942

`eq[0, A336120(n+1)]+1`
-/

namespace A336119.P18095708247984677942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336119.P18095708247984677942

namespace A336119

/-- `eq[0, A336120(n+1)]+1` -/
def P18095708247984677942.Spec : Prop :=
  ∀ n, (P18095708247984677942.a n : ℤ) = A336119 (n + 1)

end A336119

/-! ## A336119.P12963496421090959796

`eq[0, A336121(n+1)]+1`
-/

namespace A336119.P12963496421090959796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336119.P12963496421090959796

namespace A336119

/-- `eq[0, A336121(n+1)]+1` -/
def P12963496421090959796.Spec : Prop :=
  ∀ n, (P12963496421090959796.a n : ℤ) = A336119 (n + 1)

end A336119

/-! ## A336119.P9236070841189039861

`lt[0, A335909(n+1)]+1`
-/

namespace A336119.P9236070841189039861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336119.P9236070841189039861

namespace A336119

/-- `lt[0, A335909(n+1)]+1` -/
def P9236070841189039861.Spec : Prop :=
  ∀ n, (P9236070841189039861.a n : ℤ) = A336119 (n + 1)

end A336119

/-! ## A336119.P11233879837812360582

`eq[1, A336312(n+1)]+1`
-/

namespace A336119.P11233879837812360582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336119.P11233879837812360582

namespace A336119

/-- `eq[1, A336312(n+1)]+1` -/
def P11233879837812360582.Spec : Prop :=
  ∀ n, (P11233879837812360582.a n : ℤ) = A336119 (n + 1)

end A336119

/-! ## A336119.P6630377949151195495

`eq[2, A000032(a(A336121(n)))]` with `a(0)=0`
-/

namespace A336119.P6630377949151195495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A336121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336119.P6630377949151195495

namespace A336119

/-- `eq[2, A000032(a(A336121(n)))]` -/
def P6630377949151195495.Spec : Prop :=
  ∀ n, (P6630377949151195495.a n : ℤ) = A336119 (n + 1)

end A336119

/-! ## A336119.P15872223247301713960

`eq[2, A000040(a(A336121(n)))]` with `a(0)=1`
-/

namespace A336119.P15872223247301713960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A336121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336119.P15872223247301713960

namespace A336119

/-- `eq[2, A000040(a(A336121(n)))]` -/
def P15872223247301713960.Spec : Prop :=
  ∀ n, (P15872223247301713960.a n : ℤ) = A336119 (n + 1)

end A336119

/-! ## A336119.P13814076413713931012

`eq[2, A000010(a(A336121(n)))]` with `a(0)=3`
-/

namespace A336119.P13814076413713931012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A336121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336119.P13814076413713931012

namespace A336119

/-- `eq[2, A000010(a(A336121(n)))]` -/
def P13814076413713931012.Spec : Prop :=
  ∀ n, (P13814076413713931012.a n : ℤ) = A336119 (n + 1)

end A336119

/-! ## A336119.P15364758792254730746

`eq[2, A000045(a(A336121(n)))]` with `a(0)=3`
-/

namespace A336119.P15364758792254730746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A336121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336119.P15364758792254730746

namespace A336119

/-- `eq[2, A000045(a(A336121(n)))]` -/
def P15364758792254730746.Spec : Prop :=
  ∀ n, (P15364758792254730746.a n : ℤ) = A336119 (n + 1)

end A336119

/-! ## A336119.P3581527325498644449

`eq[2, A001222(a(A336121(n)))]` with `a(0)=4`
-/

namespace A336119.P3581527325498644449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A001222 (f2 (A336121 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336119.P3581527325498644449

namespace A336119

/-- `eq[2, A001222(a(A336121(n)))]` -/
def P3581527325498644449.Spec : Prop :=
  ∀ n, (P3581527325498644449.a n : ℤ) = A336119 (n + 1)

end A336119

/-!
# A336120: a(n) = A292383(A122111(n)).

The programs for A336120, there is no canonical definition to state claims against.
-/

/-! ## A336120.P3470639449331263788

`A253566(n+1)-A336125(n+1)`
-/

namespace A336120.P3470639449331263788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253566 (n + 1) - A336125 (n + 1)

end

end A336120.P3470639449331263788

/-! ## A336120.P13673094566660144641

`A292383(A122111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336120.P13673094566660144641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (A122111 (n + 1)).toNat

end

end A336120.P13673094566660144641

/-! ## A336120.P4208476417610909390

`A156552(n+1)+A243071(n+1)-A253564(n+1)-A336125(n+1)`
-/

namespace A336120.P4208476417610909390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + (A243071 (n + 1) - A253564 (n + 1)) - A336125 (n + 1)

end

end A336120.P4208476417610909390

/-! ## A336120.P9758027989545374678

`A055010(A252464(n+1))-A253564(n+1)-A336125(n+1)`
-/

namespace A336120.P9758027989545374678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (A252464 (n + 1)).toNat - A253564 (n + 1) - A336125 (n + 1)

end

end A336120.P9758027989545374678

/-! ## A336120.P18426765846677309609

`xor(A253566(A000027(n+1)), A336125(n+1))`
-/

namespace A336120.P18426765846677309609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A253566 (A000027 (n + 1)).toNat) (A336125 (n + 1))

end

end A336120.P18426765846677309609

/-! ## A336120.P1681539690972943278

`A246200(xor(A253566(n+1), A336125(n+1)))`
-/

namespace A336120.P1681539690972943278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (Int.xor (A253566 (n + 1)) (A336125 (n + 1))).toNat

end

end A336120.P1681539690972943278

/-! ## A336120.P10739648124846090258

`A292593(xor(A253566(n+1), A336125(n+1)))`
-/

namespace A336120.P10739648124846090258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292593 (Int.xor (A253566 (n + 1)) (A336125 (n + 1))).toNat

end

end A336120.P10739648124846090258

/-!
# A336121: a(1) = 0, and for n > 1, a(n) = [A122111(n) == 3 (mod 4)] + a(A253553(n)).

The programs for A336121, there is no canonical definition to state claims against.
-/

/-! ## A336121.P8802499426949528401

`A001222(n+1)-A336123(n+1)`
-/

namespace A336121.P8802499426949528401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A336123 (n + 1)

end

end A336121.P8802499426949528401

/-! ## A336121.P4465905573438206128

`A000120(A336120(n+1))`
-/

namespace A336121.P4465905573438206128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A336120 (n + 1)).toNat

end

end A336121.P4465905573438206128

/-! ## A336121.P10210548207679135804

`A292377(A122111(n+1))`
-/

namespace A336121.P10210548207679135804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (A122111 (n + 1)).toNat

end

end A336121.P10210548207679135804

/-! ## A336121.P932130729798304331

`log2(A061142(n+1))-A336123(n+1)`
-/

namespace A336121.P932130729798304331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ) - (A336123 (n + 1) : ℝ)

end

end A336121.P932130729798304331

/-! ## A336121.P10796785098705041458

`A073093(n+1)-(A336123(n+1)+1)`
-/

namespace A336121.P10796785098705041458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - (A336123 (n + 1) + 1)

end

end A336121.P10796785098705041458

/-! ## A336121.P9333825435284436463

`A000720(A105560(n+1))-A336123(n+1)`
-/

namespace A336121.P9333825435284436463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A105560 (n + 1)).toNat - A336123 (n + 1)

end

end A336121.P9333825435284436463

/-! ## A336121.P15442576921841688694

`A022559(n+1)-(A336123(n+1)+A022559(n))`
-/

namespace A336121.P15442576921841688694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) - (A336123 (n + 1) + A022559 n)

end

end A336121.P15442576921841688694

/-! ## A336121.P2399240217118184926

`A292377(A322865(n+1))`
-/

namespace A336121.P2399240217118184926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (A322865 (n + 1)).toNat

end

end A336121.P2399240217118184926

/-! ## A336121.P2739460394585902289

`A336123(A061142(n+1)²)-A336123(n+1)`
-/

namespace A336121.P2739460394585902289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336123 (A061142 (n + 1) ^ 2).toNat - A336123 (n + 1)

end

end A336121.P2739460394585902289

/-! ## A336121.P14776710578457454964

`A100995(A165826(n+1))-A336123(n+1)`
-/

namespace A336121.P14776710578457454964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A165826 (n + 1)).toNat - A336123 (n + 1)

end

end A336121.P14776710578457454964

/-! ## A336121.P2235271881059826212

`A336312(n+1)-A336312(A256148(n+1))`
-/

namespace A336121.P2235271881059826212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336312 (n + 1) - A336312 (A256148 (n + 1)).toNat

end

end A336121.P2235271881059826212

/-! ## A336121.P4038374438934887483

`A336312(n+1)+A167030(A178952(3*n+1))`
-/

namespace A336121.P4038374438934887483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336312 (n + 1) + A167030 (A178952 (3 * n + 1)).toNat

end

end A336121.P4038374438934887483

/-! ## A336121.P13852587276315757508

`A336312(n+1)-A007318(A336312(A278222(n)²+1))`
-/

namespace A336121.P13852587276315757508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336312 (n + 1) - A007318 (A336312 (A278222 n ^ 2 + 1).toNat).toNat

end

end A336121.P13852587276315757508

/-! ## A336121.P5696660032989059546

`A129868(n)%A336312(n+1)`
-/

namespace A336121.P5696660032989059546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129868 n) (A336312 (n + 1))

end

end A336121.P5696660032989059546

/-! ## A336121.P9935980179863275214

`A030494(n+1)%A336312(n+1)`
-/

namespace A336121.P9935980179863275214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A336312 (n + 1))

end

end A336121.P9935980179863275214

/-! ## A336121.P5372745340798353882

`A336312(n+1)-A336312(A002146(n))`
-/

namespace A336121.P5372745340798353882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336312 (n + 1) - A336312 (A002146 n).toNat

end

end A336121.P5372745340798353882

/-! ## A336121.P3523793975832321342

`A072828(n+1)%A336312(n+1)`
-/

namespace A336121.P3523793975832321342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A336312 (n + 1))

end

end A336121.P3523793975832321342

/-! ## A336121.P4868668551002015068

`A086827(n+1)%A336312(n+1)`
-/

namespace A336121.P4868668551002015068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086827 (n + 1)) (A336312 (n + 1))

end

end A336121.P4868668551002015068

/-!
# A336122: Numbers k for which A335884(k) = 2.

The programs for A336122, there is no canonical definition to state claims against.
-/

/-! ## A336122.P9758481986175882808

`2*a(n-3)` with `a(0)=5, a(1)=7, a(2)=9`
-/

namespace A336122.P9758481986175882808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 7, 9] fun n a =>
  2 * a (n - 3)

end

end A336122.P9758481986175882808

/-! ## A336122.P1041983093397389494

`ogf((5+7x+9x^2)/(1-2x^3))`
-/

namespace A336122.P1041983093397389494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 7, 9] [1, 0, 0, -2] n

end

end A336122.P1041983093397389494

/-! ## A336122.P4734036081863205245

`a(n-3)/sqrt(1/4)` with `a(0)=5, a(1)=7, a(2)=9`
-/

namespace A336122.P4734036081863205245
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5, 7, 9] fun n a =>
  a (n - 3) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A336122.P4734036081863205245

/-! ## A336122.P15930708778244741084

`a(n-3)+a(n-3)` with `a(0)=5, a(1)=7, a(2)=9`
-/

namespace A336122.P15930708778244741084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 7, 9] fun n a =>
  a (n - 3) + a (n - 3)

end

end A336122.P15930708778244741084

/-! ## A336122.P17026728966192565734

`∪[A005010(n), A070875(n)]`
-/

namespace A336122.P17026728966192565734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336122.P17026728966192565734

/-! ## A336122.P9134109107289491747

`∪[A116453(n+1), A070875(n)]`
-/

namespace A336122.P9134109107289491747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336122.P9134109107289491747

/-! ## A336122.P5023039234143241667

`∪[A070876(2*n), A070875(n)]`
-/

namespace A336122.P5023039234143241667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070876 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336122.P5023039234143241667

/-! ## A336122.P12156348188006713814

`∩[A002473(n+1), A212191(n+1)]`
-/

namespace A336122.P12156348188006713814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336122.P12156348188006713814

/-! ## A336122.P12575130897362051810

`∩[A103969(n+1), A212191(n+1)]`
-/

namespace A336122.P12575130897362051810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336122.P12575130897362051810

/-! ## A336122.P4056795714371875316

`∩[A212191(n+1), A246074(n+1)]`
-/

namespace A336122.P4056795714371875316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336122.P4056795714371875316

/-!
# A336123: a(1) = 0, a(2) = 1, and for n > 2, a(n) = [A122111(n) == 1 (mod 4)] + a(A253553(n)).

The programs for A336123, there is no canonical definition to state claims against.
-/

/-! ## A336123.P8408293980022195735

`A001222(n+1)-A336121(n+1)`
-/

namespace A336123.P8408293980022195735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A336121 (n + 1)

end

end A336123.P8408293980022195735

/-! ## A336123.P10198057630187845092

`A000120(A336125(n+1))`
-/

namespace A336123.P10198057630187845092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A336125 (n + 1)).toNat

end

end A336123.P10198057630187845092

/-! ## A336123.P15410773620891002371

`Δ[A022559(n)]-A336121(n+1)`
-/

namespace A336123.P15410773620891002371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A336121 (n + 1)

end

end A336123.P15410773620891002371

/-! ## A336123.P9078784460834330801

`val(A165847(n+1), 2)-A336121(n+1)`
-/

namespace A336123.P9078784460834330801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A165847 (n + 1)).toNat 2 : ℤ) - A336121 (n + 1)

end

end A336123.P9078784460834330801

/-! ## A336123.P314748946494098963

`A056239(A105560(n+1))-A336121(n+1)`
-/

namespace A336123.P314748946494098963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A105560 (n + 1)).toNat - A336121 (n + 1)

end

end A336123.P314748946494098963

/-! ## A336123.P3970873837388136249

`A077267(A165824(n+1))-A336121(n+1)`
-/

namespace A336123.P3970873837388136249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A165824 (n + 1)).toNat - A336121 (n + 1)

end

end A336123.P3970873837388136249

/-! ## A336123.P3099392598314805855

`A336121(A165825(n+1))-A336121(n+1)`
-/

namespace A336123.P3099392598314805855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (A165825 (n + 1)).toNat - A336121 (n + 1)

end

end A336123.P3099392598314805855

/-! ## A336123.P14737238908242661815

`A336121(A061142(n+1)²)-A336121(n+1)`
-/

namespace A336123.P14737238908242661815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (A061142 (n + 1) ^ 2).toNat - A336121 (n + 1)

end

end A336123.P14737238908242661815

/-! ## A336123.P12820609115258799186

`A052409(A165827(n+1))-A336121(n+1)`
-/

namespace A336123.P12820609115258799186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A165827 (n + 1)).toNat - A336121 (n + 1)

end

end A336123.P12820609115258799186

/-! ## A336123.P3889543209744195184

`A001222(n+1)-A001222(A278222(A336120(n+1)))`
-/

namespace A336123.P3889543209744195184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A278222 (A336120 (n + 1)).toNat).toNat

end

end A336123.P3889543209744195184

/-! ## A336123.P2263332208274786221

`A013928(A336313(n+1))%A184427(n+1)`
-/

namespace A336123.P2263332208274786221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013928 (A336313 (n + 1)).toNat) (A184427 (n + 1))

end

end A336123.P2263332208274786221

/-!
# A336124: a(n) = A122111(n) mod 4.

The programs for A336124, the canonical program `A336124.P6915487108402061146` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336124 has offset 1).

The definition of A336124 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336124.P6915487108402061146

`A122111(n+1)%4`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A336124

/-- `A122111(n+1)%4` -/
def P6915487108402061146.Spec : Prop :=
  ∀ n, P6915487108402061146.a n = A336124 (n + 1)

theorem P6915487108402061146.correct : P6915487108402061146.Spec := by
  intro n
  simp only [A336124, Nat.add_sub_cancel]

end A336124

/-! ## A336124.P17811828084557891626

`A010873(A122111(n+1))`
-/

namespace A336124.P17811828084557891626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A122111 (n + 1)).toNat

end

end A336124.P17811828084557891626

namespace A336124

/-- `A010873(A122111(n+1))` -/
def P17811828084557891626.Spec : Prop :=
  ∀ n, P17811828084557891626.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P11239805232341056896

`∑{d}[n+1, A329034(#)]%4`
-/

namespace A336124.P11239805232341056896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A329034 d) 4

end

end A336124.P11239805232341056896

namespace A336124

/-- `∑{d}[n+1, A329034(#)]%4` -/
def P11239805232341056896.Spec : Prop :=
  ∀ n, P11239805232341056896.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P17556827677507989507

`and(3, A122111(A000027(n+1)))`
-/

namespace A336124.P17556827677507989507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A122111 (A000027 (n + 1)).toNat)

end

end A336124.P17556827677507989507

namespace A336124

/-- `and(3, A122111(A000027(n+1)))` -/
def P17556827677507989507.Spec : Prop :=
  ∀ n, P17556827677507989507.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P6466283428115131597

`and(A122111(n+1), A122553(n))`
-/

namespace A336124.P6466283428115131597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122111 (n + 1)) (A122553 n)

end

end A336124.P6466283428115131597

namespace A336124

/-- `and(A122111(n+1), A122553(n))` -/
def P6466283428115131597.Spec : Prop :=
  ∀ n, P6466283428115131597.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P13590264063817152754

`and(A122111(n+1), A158799(n))`
-/

namespace A336124.P13590264063817152754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122111 (n + 1)) (A158799 n)

end

end A336124.P13590264063817152754

namespace A336124

/-- `and(A122111(n+1), A158799(n))` -/
def P13590264063817152754.Spec : Prop :=
  ∀ n, P13590264063817152754.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P18272653284073620932

`and(3, A122111(A060681(2*(n+1))))`
-/

namespace A336124.P18272653284073620932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A122111 (A060681 (2 * (n + 1))).toNat)

end

end A336124.P18272653284073620932

namespace A336124

/-- `and(3, A122111(A060681(2*(n+1))))` -/
def P18272653284073620932.Spec : Prop :=
  ∀ n, P18272653284073620932.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P8540683432554495666

`(A331595(n+1)*A331598(n+1))%4`
-/

namespace A336124.P8540683432554495666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331595 (n + 1) * A331598 (n + 1)) 4

end

end A336124.P8540683432554495666

namespace A336124

/-- `(A331595(n+1)*A331598(n+1))%4` -/
def P8540683432554495666.Spec : Prop :=
  ∀ n, P8540683432554495666.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P14610151854085432525

`and(A020639(6*n+3), A122111(n+1))`
-/

namespace A336124.P14610151854085432525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (6 * n + 3)) (A122111 (n + 1))

end

end A336124.P14610151854085432525

namespace A336124

/-- `and(A020639(6*n+3), A122111(n+1))` -/
def P14610151854085432525.Spec : Prop :=
  ∀ n, P14610151854085432525.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P306015253870075633

`and(and(2, A004767(n))+1, A122111(n+1))`
-/

namespace A336124.P306015253870075633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.land 2 (A004767 n) + 1) (A122111 (n + 1))

end

end A336124.P306015253870075633

namespace A336124

/-- `and(and(2, A004767(n))+1, A122111(n+1))` -/
def P306015253870075633.Spec : Prop :=
  ∀ n, P306015253870075633.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P12037787835944600186

`and(A010000(gcd(n, n+1)), A122111(n+1))`
-/

namespace A336124.P12037787835944600186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010000 (Nat.gcd n (n + 1))) (A122111 (n + 1))

end

end A336124.P12037787835944600186

namespace A336124

/-- `and(A010000(gcd(n, n+1)), A122111(n+1))` -/
def P12037787835944600186.Spec : Prop :=
  ∀ n, P12037787835944600186.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P7335188142915398705

`and(A053444(A053444(n+1)), A122111(n+1))`
-/

namespace A336124.P7335188142915398705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053444 (A053444 (n + 1)).toNat) (A122111 (n + 1))

end

end A336124.P7335188142915398705

namespace A336124

/-- `and(A053444(A053444(n+1)), A122111(n+1))` -/
def P7335188142915398705.Spec : Prop :=
  ∀ n, P7335188142915398705.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P16315054808483446100

`and(A122111(n+1), A200811(A200811(n+1)))`
-/

namespace A336124.P16315054808483446100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122111 (n + 1)) (A200811 (A200811 (n + 1)).toNat)

end

end A336124.P16315054808483446100

namespace A336124

/-- `and(A122111(n+1), A200811(A200811(n+1)))` -/
def P16315054808483446100.Spec : Prop :=
  ∀ n, P16315054808483446100.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P5162018022533865378

`(A181821(n+1)/A181821((n+1)/A006530(n+1)))%4`
-/

namespace A336124.P5162018022533865378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A181821 (n + 1) : ℚ) / (A181821 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat : ℚ))) 4

end

end A336124.P5162018022533865378

namespace A336124

/-- `(A181821(n+1)/A181821((n+1)/A006530(n+1)))%4` -/
def P5162018022533865378.Spec : Prop :=
  ∀ n, P5162018022533865378.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P2571064679663136392

`and(A122111(n+1), A220129(6*n+3))`
-/

namespace A336124.P2571064679663136392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122111 (n + 1)) (A220129 (6 * n + 3))

end

end A336124.P2571064679663136392

namespace A336124

/-- `and(A122111(n+1), A220129(6*n+3))` -/
def P2571064679663136392.Spec : Prop :=
  ∀ n, P2571064679663136392.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P17821838154428823415

`and(A122104(A122118(2*n+3)), A122111(n+1))`
-/

namespace A336124.P17821838154428823415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122104 (A122118 (2 * n + 3)).toNat) (A122111 (n + 1))

end

end A336124.P17821838154428823415

namespace A336124

/-- `and(A122104(A122118(2*n+3)), A122111(n+1))` -/
def P17821838154428823415.Spec : Prop :=
  ∀ n, P17821838154428823415.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P8777483213734577739

`and(2-A126646(n), A122111(n+1))`
-/

namespace A336124.P8777483213734577739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A126646 n) (A122111 (n + 1))

end

end A336124.P8777483213734577739

namespace A336124

/-- `and(2-A126646(n), A122111(n+1))` -/
def P8777483213734577739.Spec : Prop :=
  ∀ n, P8777483213734577739.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P16537861352417753953

`and(A196657(n)+2, A122111(n+1))`
-/

namespace A336124.P16537861352417753953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n + 2) (A122111 (n + 1))

end

end A336124.P16537861352417753953

namespace A336124

/-- `and(A196657(n)+2, A122111(n+1))` -/
def P16537861352417753953.Spec : Prop :=
  ∀ n, P16537861352417753953.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P11326046515233722923

`and(A088578(n), A122111(n+1))`
-/

namespace A336124.P11326046515233722923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088578 n) (A122111 (n + 1))

end

end A336124.P11326046515233722923

namespace A336124

/-- `and(A088578(n), A122111(n+1))` -/
def P11326046515233722923.Spec : Prop :=
  ∀ n, P11326046515233722923.a n = A336124 (n + 1)

end A336124

/-! ## A336124.P16225451198853640819

`and(A122111(n+1), A339771(n))`
-/

namespace A336124.P16225451198853640819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122111 (n + 1)) (A339771 n)

end

end A336124.P16225451198853640819

namespace A336124

/-- `and(A122111(n+1), A339771(n))` -/
def P16225451198853640819.Spec : Prop :=
  ∀ n, P16225451198853640819.a n = A336124 (n + 1)

end A336124

/-!
# A336125: a(n) = A292385(A122111(n)).

The programs for A336125, there is no canonical definition to state claims against.
-/

/-! ## A336125.P15731136687080868516

`A253566(n+1)-A336120(n+1)`
-/

namespace A336125.P15731136687080868516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253566 (n + 1) - A336120 (n + 1)

end

end A336125.P15731136687080868516

/-! ## A336125.P10507452787847083027

`A292385(A122111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336125.P10507452787847083027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292385 (A122111 (n + 1)).toNat

end

end A336125.P10507452787847083027

/-! ## A336125.P11055923405991698022

`A156552(n+1)+A243071(n+1)-A253564(n+1)-A336120(n+1)`
-/

namespace A336125.P11055923405991698022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + (A243071 (n + 1) - A253564 (n + 1)) - A336120 (n + 1)

end

end A336125.P11055923405991698022

/-! ## A336125.P4786182125429559771

`A055010(A252464(n+1))-(A336120(n+1)+A253564(n+1))`
-/

namespace A336125.P4786182125429559771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (A252464 (n + 1)).toNat - (A336120 (n + 1) + A253564 (n + 1))

end

end A336125.P4786182125429559771

/-! ## A336125.P3480691803804442377

`xor(A253566(A000027(n+1)), A336120(n+1))`
-/

namespace A336125.P3480691803804442377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A253566 (A000027 (n + 1)).toNat) (A336120 (n + 1))

end

end A336125.P3480691803804442377

/-! ## A336125.P3945405425848117692

`A156552(A241916(n+1))-A336120(n+1)`
-/

namespace A336125.P3945405425848117692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A241916 (n + 1)).toNat - A336120 (n + 1)

end

end A336125.P3945405425848117692

/-!
# A336126: Lexicographically earliest infinite sequence such that a(i) = a(j) => A000035(i) = A000035(j) and A007814(1+A000265(i)) = A007814(1+A000265(j)), for all i, j >= 1.

The programs for A336126, the canonical program `A336126.P1639370391942920803` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336126 has offset 1).

The definition of A336126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336126.P16202206510304166218

`A004273(A089309(n+1))+and(1, n)`
-/

namespace A336126.P16202206510304166218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A089309 (n + 1)).toNat + (Nat.land 1 n : ℤ)

end

end A336126.P16202206510304166218

namespace A336126

/-- `A004273(A089309(n+1))+and(1, n)` -/
def P16202206510304166218.Spec : Prop :=
  ∀ n, P16202206510304166218.a n = A336126 (n + 1)

end A336126

/-! ## A336126.P1639370391942920803

`2*A089309(n+1)-abs(A056594(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A336126

/-- `2*A089309(n+1)-abs(A056594(n))` -/
def P1639370391942920803.Spec : Prop :=
  ∀ n, P1639370391942920803.a n = A336126 (n + 1)

theorem P1639370391942920803.correct : P1639370391942920803.Spec := by
  intro n
  simp only [A336126, Nat.add_sub_cancel]

end A336126

/-! ## A336126.P12818791360131096962

`A037227(A003602(n+1))+A000035(n)`
-/

namespace A336126.P12818791360131096962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (A003602 (n + 1)).toNat + A000035 n

end

end A336126.P12818791360131096962

namespace A336126

/-- `A037227(A003602(n+1))+A000035(n)` -/
def P12818791360131096962.Spec : Prop :=
  ∀ n, P12818791360131096962.a n = A336126 (n + 1)

end A336126

/-! ## A336126.P7705244558187893757

`2*A089309(n+1)-A000035(n+1)`
-/

namespace A336126.P7705244558187893757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089309 (n + 1) - A000035 (n + 1)

end

end A336126.P7705244558187893757

namespace A336126

/-- `2*A089309(n+1)-A000035(n+1)` -/
def P7705244558187893757.Spec : Prop :=
  ∀ n, P7705244558187893757.a n = A336126 (n + 1)

end A336126

/-! ## A336126.P1841537272082036616

`2*A089309(n+1)-A014577(2*n)`
-/

namespace A336126.P1841537272082036616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089309 (n + 1) - A014577 (2 * n)

end

end A336126.P1841537272082036616

namespace A336126

/-- `2*A089309(n+1)-A014577(2*n)` -/
def P1841537272082036616.Spec : Prop :=
  ∀ n, P1841537272082036616.a n = A336126 (n + 1)

end A336126

/-! ## A336126.P17388938758480255298

`A220780(A000265(n+1))-A000035(n+1)`
-/

namespace A336126.P17388938758480255298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220780 (A000265 (n + 1)).toNat - A000035 (n + 1)

end

end A336126.P17388938758480255298

namespace A336126

/-- `A220780(A000265(n+1))-A000035(n+1)` -/
def P17388938758480255298.Spec : Prop :=
  ∀ n, P17388938758480255298.a n = A336126 (n + 1)

end A336126

/-! ## A336126.P8670996940975391896

`A001511(A003602(n+1)²)+A000035(n)`
-/

namespace A336126.P8670996940975391896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003602 (n + 1) ^ 2).toNat + A000035 n

end

end A336126.P8670996940975391896

namespace A336126

/-- `A001511(A003602(n+1)²)+A000035(n)` -/
def P8670996940975391896.Spec : Prop :=
  ∀ n, P8670996940975391896.a n = A336126 (n + 1)

end A336126

/-! ## A336126.P10475599990960782083

`A089309(A088698(n+1)-(n+1)%2)`
-/

namespace A336126.P10475599990960782083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A088698 (n + 1) - (((n + 1) % 2 : ℕ) : ℤ)).toNat

end

end A336126.P10475599990960782083

namespace A336126

/-- `A089309(A088698(n+1)-(n+1)%2)` -/
def P10475599990960782083.Spec : Prop :=
  ∀ n, P10475599990960782083.a n = A336126 (n + 1)

end A336126

/-!
# A336127: Number of ways to split a composition of n into contiguous subsequences with different sums.

The programs for A336127, there is no canonical definition to state claims against.
-/

/-! ## A336127.P205421448249840256

`A325762(A026757(n))`
-/

namespace A336127.P205421448249840256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (A026757 n).toNat

end

end A336127.P205421448249840256

/-! ## A336127.P6318254114032859864

`A138554(A000142(n))*A352745(n)`
-/

namespace A336127.P6318254114032859864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (A000142 n).toNat * A352745 n

end

end A336127.P6318254114032859864

/-! ## A336127.P6681112297065231476

`A065033(n)*A279170(A347007(n))`
-/

namespace A336127.P6681112297065231476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A279170 (A347007 n).toNat

end

end A336127.P6681112297065231476

/-!
# A336129: Number of strict compositions of divisors of n.

The programs for A336129, there is no canonical definition to state claims against.
-/

/-! ## A336129.P7015522431717502762

`∑{d}[n+1, A032020(#)]`
-/

namespace A336129.P7015522431717502762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032020 d

end

end A336129.P7015522431717502762

/-! ## A336129.P9012491945806222885

`∑{d}[n+1, A216695(#)+1]`
-/

namespace A336129.P9012491945806222885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A216695 d + 1)

end

end A336129.P9012491945806222885

/-! ## A336129.P16120952187406517864

`∑{d}[n+1, A242447(A000124(#))]`
-/

namespace A336129.P16120952187406517864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A242447 (A000124 d).toNat

end

end A336129.P16120952187406517864

/-! ## A336129.P4061486531861309569

`∑{d}[A082743(n), A338847(#)]`
-/

namespace A336129.P4061486531861309569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A338847 d

end

end A336129.P4061486531861309569

/-! ## A336129.P16640284888100975300

`∑{d}[A032555(n+1), A338847(#)]`
-/

namespace A336129.P16640284888100975300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A338847 d

end

end A336129.P16640284888100975300

/-!
# A336134: Number of ways to split an integer partition of n into contiguous subsequences with strictly increasing sums.

The programs for A336134, there is no canonical definition to state claims against.
-/

/-! ## A336134.P1220798668722427713

`A003056(A092484(n*A061901(n)))`
-/

namespace A336134.P1220798668722427713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A092484 ((n : ℤ) * A061901 n).toNat).toNat

end

end A336134.P1220798668722427713

/-! ## A336134.P4766688973740912746

`A003056(lcm(A061901(n), A092484(n)))`
-/

namespace A336134.P4766688973740912746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lcm (A061901 n) (A092484 n))

end

end A336134.P4766688973740912746

/-! ## A336134.P15039586540047143140

`A003056(C(A092484(n), A061901(n)))`
-/

namespace A336134.P15039586540047143140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A092484 n).toNat (A061901 n).toNat)

end

end A336134.P15039586540047143140

/-! ## A336134.P3931822464841842934

`A003056(A092484(n))%A294949(2*(n+2))`
-/

namespace A336134.P3931822464841842934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A092484 n).toNat) (A294949 (2 * (n + 2)))

end

end A336134.P3931822464841842934

/-! ## A336134.P12214114383451404629

`A003056(A092484(n)%A092497(3*n+2))`
-/

namespace A336134.P12214114383451404629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A092484 n) (A092497 (3 * n + 2))).toNat

end

end A336134.P12214114383451404629

/-!
# A336135: Number of ways to split an integer partition of n into contiguous subsequences with strictly decreasing sums.

The programs for A336135, there is no canonical definition to state claims against.
-/

/-! ## A336135.P7091095264577650623

`A003056(A110198(n)*A307779(n+1))`
-/

namespace A336135.P7091095264577650623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A110198 n * A307779 (n + 1)).toNat

end

end A336135.P7091095264577650623

/-! ## A336135.P5377443987155485995

`A056561(A004067(n+7))+A029579(n)`
-/

namespace A336135.P5377443987155485995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (A004067 (n + 7)).toNat + A029579 n

end

end A336135.P5377443987155485995

/-!
# A336137: Number of set partitions of the binary indices of n with equal block-sums.

The programs for A336137, there is no canonical definition to state claims against.
-/

/-! ## A336137.P14610400315383085670

`A321455(A019565(n))`
-/

namespace A336137.P14610400315383085670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A019565 n).toNat

end

end A336137.P14610400315383085670

/-! ## A336137.P17560065072068254595

`A321455(A339809(n)+1)`
-/

namespace A336137.P17560065072068254595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A339809 n + 1).toNat

end

end A336137.P17560065072068254595

/-! ## A336137.P14346963705060783205

`gcd(A371735(n)!, A185777(n+1))`
-/

namespace A336137.P14346963705060783205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A371735 n).toNat : ℤ) (A185777 (n + 1))

end

end A336137.P14346963705060783205

/-! ## A336137.P14906575898552020996

`A017979(A371735(n)+A186719(3*(n+1)))`
-/

namespace A336137.P14906575898552020996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (A371735 n + A186719 (3 * (n + 1))).toNat

end

end A336137.P14906575898552020996

/-! ## A336137.P11970750959170993015

`A371735(n*a(n-1))` with `a(0)=1`
-/

namespace A336137.P11970750959170993015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A371735 ((n : ℤ) * a (n - 1)).toNat

end

end A336137.P11970750959170993015

/-!
# A336138: Number of set partitions of the binary indices of n with distinct block-sums.

The programs for A336138, there is no canonical definition to state claims against.
-/

/-! ## A336138.P1045263835454458482

`A321469(A019565(n))`
-/

namespace A336138.P1045263835454458482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321469 (A019565 n).toNat

end

end A336138.P1045263835454458482

/-! ## A336138.P7834539490784636744

`A321469(A339809(n)+1)`
-/

namespace A336138.P7834539490784636744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321469 (A339809 n + 1).toNat

end

end A336138.P7834539490784636744

/-! ## A336138.P11822706973361943992

`A381633(A019565(A000007(n)+n))`
-/

namespace A336138.P11822706973361943992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381633 (A019565 (A000007 n + (n : ℤ)).toNat).toNat

end

end A336138.P11822706973361943992

/-! ## A336138.P6052089421896717458

`A381633(A358170(n))`
-/

namespace A336138.P6052089421896717458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381633 (A358170 n).toNat

end

end A336138.P6052089421896717458

/-! ## A336138.P6391462859453906181

`A335446(A011971(n))+A154844(A001316(n))`
-/

namespace A336138.P6391462859453906181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A011971 n).toNat + A154844 (A001316 n).toNat

end

end A336138.P6391462859453906181

/-!
# A336140: Number of ways to choose a set partition of the parts of a strict integer composition of n.

The programs for A336140, there is no canonical definition to state claims against.
-/

/-! ## A336140.P4449361193719750744

`A276882(A351638(n))`
-/

namespace A336140.P4449361193719750744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276882 (A351638 n).toNat

end

end A336140.P4449361193719750744

/-! ## A336140.P14640978637462840705

`A276882(A351639(n))`
-/

namespace A336140.P14640978637462840705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276882 (A351639 n).toNat

end

end A336140.P14640978637462840705

/-! ## A336140.P10001950336232927031

`A333149(A075313(n+1))+A133625(A054262(n))`
-/

namespace A336140.P10001950336232927031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333149 (A075313 (n + 1)).toNat + A133625 (A054262 n).toNat

end

end A336140.P10001950336232927031

/-!
# A336142: Number of ways to choose a strict composition of each part of a strict integer partition of n.

The programs for A336142, there is no canonical definition to state claims against.
-/

/-! ## A336142.P13406681812232521040

`A000072(n)-A113685(A000072(n))`
-/

namespace A336142.P13406681812232521040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000072 n - A113685 (A000072 n).toNat

end

end A336142.P13406681812232521040

/-! ## A336142.P1729339045238336134

`A298354(n)-A186336(A186359(n))`
-/

namespace A336142.P1729339045238336134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298354 n - A186336 (A186359 n).toNat

end

end A336142.P1729339045238336134

/-! ## A336142.P13186554231625483744

`A003116(n)-A082858(A015903(n+1))`
-/

namespace A336142.P13186554231625483744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003116 n - A082858 (A015903 (n + 1)).toNat

end

end A336142.P13186554231625483744

/-! ## A336142.P10275538197785720512

`A102450(A208354(n)-A308133(n+1))`
-/

namespace A336142.P10275538197785720512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102450 (A208354 n - A308133 (n + 1)).toNat

end

end A336142.P10275538197785720512

/-! ## A336142.P18437369629598665789

`A135663(A292211(n+3))+A010059(2*n+3)`
-/

namespace A336142.P18437369629598665789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (A292211 (n + 3)).toNat + A010059 (2 * n + 3)

end

end A336142.P18437369629598665789

/-!
# A336143: Integers that are Brazilian and not Colombian.

The programs for A336143, there is no canonical definition to state claims against.
-/

/-! ## A336143.P7664660801000545190

`lt[A059711(n), A096234(n)]`
-/

namespace A336143.P7664660801000545190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336143.P7664660801000545190

/-! ## A336143.P1322541049477495649

`∩[A176995(n+1), comp[A220570(n+1)]]`
-/

namespace A336143.P1322541049477495649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A336143.P1322541049477495649

/-! ## A336143.P15595091770467310325

`∩[comp[A220570(n+1)], A225793(n+1)]`
-/

namespace A336143.P15595091770467310325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A336143.P15595091770467310325

/-! ## A336143.P16912630344757898754

`∩[A176995(n+1), comp[A336307(n+1)]]`
-/

namespace A336143.P16912630344757898754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176995 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336307 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A336143.P16912630344757898754

/-! ## A336143.P11041140361290515585

`∩[A225793(n+1), comp[A336307(n+1)]]`
-/

namespace A336143.P11041140361290515585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225793 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336307 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A336143.P11041140361290515585

/-!
# A336144: Integers that are Colombian and not Brazilian.

The programs for A336144, there is no canonical definition to state claims against.
-/

/-! ## A336144.P7979908852505251059

`∩[A003052(n+1), A220570(n+1)]`
-/

namespace A336144.P7979908852505251059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336144.P7979908852505251059

/-! ## A336144.P16059761886994228294

`∩[record[A036233(n+1)], A220570(n+1)]`
-/

namespace A336144.P16059761886994228294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A336144.P16059761886994228294

/-! ## A336144.P4831359434269722923

`∩[eq[1, (n-A059711(n))²], A003052(n+1)]`
-/

namespace A336144.P4831359434269722923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A059711 n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A336144.P4831359434269722923

/-! ## A336144.P14951370923882148446

`∩[eq[0, A340795(n+1)]+1, A003052(n+1)]`
-/

namespace A336144.P14951370923882148446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340795 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A336144.P14951370923882148446

/-! ## A336144.P11793288269623693597

`∩[A163128(n+1)+1+n, A220570(n+1)]`
-/

namespace A336144.P11793288269623693597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336144.P11793288269623693597

/-!
# A336145: Squarefree integers m such that for both m and m+1, the equation x*(x+1)*(x+2) = m*y^2 has at least one solution (x,y) with x>0 and y>0.

The programs for A336145, there is no canonical definition to state claims against.
-/

/-! ## A336145.P7327812989499138916

`∩[A335785(n+1)-1, A335785(n+1)]`
-/

namespace A336145.P7327812989499138916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335785 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336145.P7327812989499138916

/-!
# A336146: Lexicographically earliest infinite sequence such that a(i) = a(j) => A000035(i) = A000035(j) and A000265(i) = A000265(j), for all i, j >= 1.

The programs for A336146, the canonical program `A336146.P6531384978018049425` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336146 has offset 1).

The definition of A336146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336146.P10700692290142117960

`A037915(A259445(n+1))`
-/

namespace A336146.P10700692290142117960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A259445 (n + 1)).toNat

end

end A336146.P10700692290142117960

namespace A336146

/-- `A037915(A259445(n+1))` -/
def P10700692290142117960.Spec : Prop :=
  ∀ n, P10700692290142117960.a n = A336146 (n + 1)

end A336146

/-! ## A336146.P6531384978018049425

`A103391(A047237(n+3))-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336146

/-- `A103391(A047237(n+3))-1` -/
def P6531384978018049425.Spec : Prop :=
  ∀ n, P6531384978018049425.a n = A336146 (n + 1)

theorem P6531384978018049425.correct : P6531384978018049425.Spec := by
  intro n
  simp only [A336146, Nat.add_sub_cancel]

end A336146

/-! ## A336146.P1857373805754754747

`A259445(n+1)-A002265(A259445(n+1)-1)`
-/

namespace A336146.P1857373805754754747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259445 (n + 1) - A002265 (A259445 (n + 1) - 1).toNat

end

end A336146.P1857373805754754747

namespace A336146

/-- `A259445(n+1)-A002265(A259445(n+1)-1)` -/
def P1857373805754754747.Spec : Prop :=
  ∀ n, P1857373805754754747.a n = A336146 (n + 1)

end A336146

/-! ## A336146.P11071234563120124100

`A003602(∑[∑[n]%2+1])`
-/

namespace A336146.P11071234563120124100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336146.P11071234563120124100

namespace A336146

/-- `A003602(∑[∑[n]%2+1])` -/
def P11071234563120124100.Spec : Prop :=
  ∀ n, P11071234563120124100.a n = A336146 (n + 1)

end A336146

/-! ## A336146.P13786087897208811503

`A003602(∑[and(1, ∑[n])+1])`
-/

namespace A336146.P13786087897208811503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336146.P13786087897208811503

namespace A336146

/-- `A003602(∑[and(1, ∑[n])+1])` -/
def P13786087897208811503.Spec : Prop :=
  ∀ n, P13786087897208811503.a n = A336146 (n + 1)

end A336146

/-! ## A336146.P17146051382722907331

`A003602(A301729(n+1))`
-/

namespace A336146.P17146051382722907331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A301729 (n + 1)).toNat

end

end A336146.P17146051382722907331

namespace A336146

/-- `A003602(A301729(n+1))` -/
def P17146051382722907331.Spec : Prop :=
  ∀ n, P17146051382722907331.a n = A336146 (n + 1)

end A336146

/-! ## A336146.P3122373630728357270

`A003602(A047273(n+2))`
-/

namespace A336146.P3122373630728357270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A047273 (n + 2)).toNat

end

end A336146.P3122373630728357270

namespace A336146

/-- `A003602(A047273(n+2))` -/
def P3122373630728357270.Spec : Prop :=
  ∀ n, P3122373630728357270.a n = A336146 (n + 1)

end A336146

/-! ## A336146.P1371901338843919452

`A003602(A047262(n+1)+1)`
-/

namespace A336146.P1371901338843919452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A047262 (n + 1) + 1).toNat

end

end A336146.P1371901338843919452

namespace A336146

/-- `A003602(A047262(n+1)+1)` -/
def P1371901338843919452.Spec : Prop :=
  ∀ n, P1371901338843919452.a n = A336146 (n + 1)

end A336146

/-! ## A336146.P488879916148305690

`A003602(∑[1-∑[A056594(n+1)]])`
-/

namespace A336146.P488879916148305690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336146.P488879916148305690

namespace A336146

/-- `A003602(∑[1-∑[A056594(n+1)]])` -/
def P488879916148305690.Spec : Prop :=
  ∀ n, P488879916148305690.a n = A336146 (n + 1)

end A336146

/-! ## A336146.P8822249379315098727

`A110654((A110654(n+1)+n+1)/A160467(n+1))`
-/

namespace A336146.P8822249379315098727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway ((A110654 (n + 1) + (n + 1 : ℤ) : ℚ) / (A160467 (n + 1) : ℚ))).toNat

end

end A336146.P8822249379315098727

namespace A336146

/-- `A110654((A110654(n+1)+n+1)/A160467(n+1))` -/
def P8822249379315098727.Spec : Prop :=
  ∀ n, P8822249379315098727.a n = A336146 (n + 1)

end A336146

/-! ## A336146.P13114079493382777594

`A003602(A004442(2*n)-A004524(n))`
-/

namespace A336146.P13114079493382777594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A004442 (2 * n) - A004524 n).toNat

end

end A336146.P13114079493382777594

namespace A336146

/-- `A003602(A004442(2*n)-A004524(n))` -/
def P13114079493382777594.Spec : Prop :=
  ∀ n, P13114079493382777594.a n = A336146 (n + 1)

end A336146

/-! ## A336146.P3519601132835044455

`A002265(A166466(n+1)*A176895(2*n))+1`
-/

namespace A336146.P3519601132835044455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A166466 (n + 1) * A176895 (2 * n)).toNat + 1

end

end A336146.P3519601132835044455

namespace A336146

/-- `A002265(A166466(n+1)*A176895(2*n))+1` -/
def P3519601132835044455.Spec : Prop :=
  ∀ n, P3519601132835044455.a n = A336146 (n + 1)

end A336146

/-! ## A336146.P5237846804702542487

`A002265(A259445(3*(n+1))+4)`
-/

namespace A336146.P5237846804702542487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A259445 (3 * (n + 1)) + 4).toNat

end

end A336146.P5237846804702542487

namespace A336146

/-- `A002265(A259445(3*(n+1))+4)` -/
def P5237846804702542487.Spec : Prop :=
  ∀ n, P5237846804702542487.a n = A336146 (n + 1)

end A336146

/-!
# A336151: Lexicographically earliest infinite sequence such that a(i) = a(j) => A001221(i) = A001221(j) and A006530(i) = A006530(j), for all i, j >= 1.

The programs for A336151, there is no canonical definition to state claims against.
-/

/-! ## A336151.P17747818194004014706

`A331297(A007947(n+1)%A218655(n))`
-/

namespace A336151.P17747818194004014706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331297 (Int.tmod (A007947 (n + 1)) (A218655 n)).toNat

end

end A336151.P17747818194004014706

/-! ## A336151.P12640069924159590724

`A331297(A007947(n+1))%A344862(n+1)`
-/

namespace A336151.P12640069924159590724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331297 (A007947 (n + 1)).toNat) (A344862 (n + 1))

end

end A336151.P12640069924159590724

/-!
# A336152: Lexicographically earliest infinite sequence such that a(i) = a(j) => A001221(i) = A001221(j) and A007814(1+i) = A007814(1+j), for all i, j >= 1.

The programs for A336152, there is no canonical definition to state claims against.
-/

/-! ## A336152.P14353335804968542590

`A336156(n+1)-A356500(A133675(n+1))`
-/

namespace A336152.P14353335804968542590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336156 (n + 1) - A356500 (A133675 (n + 1)).toNat

end

end A336152.P14353335804968542590

/-!
# A336154: Lexicographically earliest infinite sequence such that a(i) = a(j) => A007814(1+i) = A007814(1+j) and A278222(i) = A278222(j), for all i, j >= 1.

The programs for A336154, there is no canonical definition to state claims against.
-/

/-! ## A336154.P14125164157883946370

`A336147(A234741(n+1)²²)`
-/

namespace A336154.P14125164157883946370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336147 ((A234741 (n + 1) ^ 2) ^ 2).toNat

end

end A336154.P14125164157883946370

/-! ## A336154.P12411836465694308629

`A295883(or(1, 2^xor(1, n)))+A295876(n+1)`
-/

namespace A336154.P12411836465694308629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (Nat.lor 1 (2 ^ Nat.xor 1 n)) + A295876 (n + 1)

end

end A336154.P12411836465694308629

/-! ## A336154.P603850594736438273

`A295876(n+1)+A058348(A061393(n))`
-/

namespace A336154.P603850594736438273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295876 (n + 1) + A058348 (A061393 n).toNat

end

end A336154.P603850594736438273

/-! ## A336154.P14170855548608580965

`A322590(n+1)+A058348(A061393(n))`
-/

namespace A336154.P14170855548608580965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (n + 1) + A058348 (A061393 n).toNat

end

end A336154.P14170855548608580965

/-! ## A336154.P5733542884865562312

`A336147(n+1)+A058348(A061393(n))`
-/

namespace A336154.P5733542884865562312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336147 (n + 1) + A058348 (A061393 n).toNat

end

end A336154.P5733542884865562312

/-!
# A336157: Lexicographically earliest infinite sequence such that a(i) = a(j) => A318458(i) = A318458(j) and A336158(i) = A336158(j), for all i, j >= 1.

The programs for A336157, there is no canonical definition to state claims against.
-/

/-! ## A336157.P14176902800433703451

`∏{e}[A025192(A325811(n+1)), #]`
-/

namespace A336157.P14176902800433703451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (A325811 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A336157.P14176902800433703451

/-! ## A336157.P9721751377802950040

`A325811(n+1)+A057428(A000045(n))`
-/

namespace A336157.P9721751377802950040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325811 (n + 1) + A057428 (A000045 n).toNat

end

end A336157.P9721751377802950040

/-! ## A336157.P5211465859874040179

`A325811(n+1)-A000007(A151818(n))`
-/

namespace A336157.P5211465859874040179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325811 (n + 1) - A000007 (A151818 n).toNat

end

end A336157.P5211465859874040179

/-! ## A336157.P8932881210880473846

`A325811(n+1)-A015070(A151722(n))`
-/

namespace A336157.P8932881210880473846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325811 (n + 1) - A015070 (A151722 n).toNat

end

end A336157.P8932881210880473846

/-! ## A336157.P11209375147277264646

`A325811(n+1)-A060576(A036746(n+1))`
-/

namespace A336157.P11209375147277264646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325811 (n + 1) - A060576 (A036746 (n + 1)).toNat

end

end A336157.P11209375147277264646

/-!
# A336158: The least number with the prime signature of the odd part of n: a(n) = A046523(A000265(n)).

The programs for A336158, the canonical program `A336158.P5052491878283479858` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336158 has offset 1).

The definition of A336158 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336158.P5052491878283479858

`A046523(A000265(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A336158

/-- `A046523(A000265(n+1))` -/
def P5052491878283479858.Spec : Prop :=
  ∀ n, P5052491878283479858.a n = A336158 (n + 1)

theorem P5052491878283479858.correct : P5052491878283479858.Spec := by
  intro n
  simp only [A336158, Nat.add_sub_cancel]

end A336158

/-! ## A336158.P3153317129294433860

`A046523(A064989(n+1))`
-/

namespace A336158.P3153317129294433860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A064989 (n + 1)).toNat

end

end A336158.P3153317129294433860

namespace A336158

/-- `A046523(A064989(n+1))` -/
def P3153317129294433860.Spec : Prop :=
  ∀ n, P3153317129294433860.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P17918832266455046533

`A046523((n+1)/2^val(n+1, 2))`
-/

namespace A336158.P17918832266455046533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A336158.P17918832266455046533

namespace A336158

/-- `A046523((n+1)/2^val(n+1, 2))` -/
def P17918832266455046533.Spec : Prop :=
  ∀ n, P17918832266455046533.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P4070970340857537043

`A278223(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A336158.P4070970340857537043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A336158.P4070970340857537043

namespace A336158

/-- `A278223(floor(n/(xor(n, n+1)+1))+1)` -/
def P4070970340857537043.Spec : Prop :=
  ∀ n, P4070970340857537043.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P5348929881622633717

`sqrt(A278254((n+1)/ceil(xor(n, n+1)/2)))`
-/

namespace A336158.P5348929881622633717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat : ℝ)

end

end A336158.P5348929881622633717

namespace A336158

/-- `sqrt(A278254((n+1)/ceil(xor(n, n+1)/2)))` -/
def P5348929881622633717.Spec : Prop :=
  ∀ n, P5348929881622633717.a n = (A336158 (n + 1) : ℝ)

end A336158

/-! ## A336158.P8302472924694083378

`A046523(A153733(n)+1)`
-/

namespace A336158.P8302472924694083378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A153733 n + 1).toNat

end

end A336158.P8302472924694083378

namespace A336158

/-- `A046523(A153733(n)+1)` -/
def P8302472924694083378.Spec : Prop :=
  ∀ n, P8302472924694083378.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P4038725797222395824

`A278223(A003602(n+1))`
-/

namespace A336158.P4038725797222395824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A003602 (n + 1)).toNat

end

end A336158.P4038725797222395824

namespace A336158

/-- `A278223(A003602(n+1))` -/
def P4038725797222395824.Spec : Prop :=
  ∀ n, P4038725797222395824.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P5754323971041405073

`A278223(A025480(n)+1)`
-/

namespace A336158.P5754323971041405073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A025480 n + 1).toNat

end

end A336158.P5754323971041405073

namespace A336158

/-- `A278223(A025480(n)+1)` -/
def P5754323971041405073.Spec : Prop :=
  ∀ n, P5754323971041405073.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P698434828653716965

`A046523(A348747(n+1))`
-/

namespace A336158.P698434828653716965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A348747 (n + 1)).toNat

end

end A336158.P698434828653716965

namespace A336158

/-- `A046523(A348747(n+1))` -/
def P698434828653716965.Spec : Prop :=
  ∀ n, P698434828653716965.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P16956449779480669260

`A046523(A354092(n+1))`
-/

namespace A336158.P16956449779480669260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A354092 (n + 1)).toNat

end

end A336158.P16956449779480669260

namespace A336158

/-- `A046523(A354092(n+1))` -/
def P16956449779480669260.Spec : Prop :=
  ∀ n, P16956449779480669260.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P4427761563352538038

`A046523(A166466(n+1)/3)`
-/

namespace A336158.P4427761563352538038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)).toNat

end

end A336158.P4427761563352538038

namespace A336158

/-- `A046523(A166466(n+1)/3)` -/
def P4427761563352538038.Spec : Prop :=
  ∀ n, P4427761563352538038.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P13001502477466041342

`A046523(2*A003602(n+1)-1)`
-/

namespace A336158.P13001502477466041342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (2 * A003602 (n + 1) - 1).toNat

end

end A336158.P13001502477466041342

namespace A336158

/-- `A046523(2*A003602(n+1)-1)` -/
def P13001502477466041342.Spec : Prop :=
  ∀ n, P13001502477466041342.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P11207643917205124112

`A046523((n+1)/A006519(n+1))`
-/

namespace A336158.P11207643917205124112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A336158.P11207643917205124112

namespace A336158

/-- `A046523((n+1)/A006519(n+1))` -/
def P11207643917205124112.Spec : Prop :=
  ∀ n, P11207643917205124112.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P5669850730120017150

`A181821(A181819((n+1)/and(n+1, -(n+1))))`
-/

namespace A336158.P5669850730120017150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat).toNat

end

end A336158.P5669850730120017150

namespace A336158

/-- `A181821(A181819((n+1)/and(n+1, -(n+1))))` -/
def P5669850730120017150.Spec : Prop :=
  ∀ n, P5669850730120017150.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P314455164266030217

`A025487(A101296(2*(n+1)/(xor(n, n+1)+1)))`
-/

namespace A336158.P314455164266030217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat).toNat

end

end A336158.P314455164266030217

namespace A336158

/-- `A025487(A101296(2*(n+1)/(xor(n, n+1)+1)))` -/
def P314455164266030217.Spec : Prop :=
  ∀ n, P314455164266030217.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P9398587118902953755

`A046523(A025480(n)+A003602(n+1))`
-/

namespace A336158.P9398587118902953755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A025480 n + A003602 (n + 1)).toNat

end

end A336158.P9398587118902953755

namespace A336158

/-- `A046523(A025480(n)+A003602(n+1))` -/
def P9398587118902953755.Spec : Prop :=
  ∀ n, P9398587118902953755.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P1292735788065142495

`A046523((n+1)/A000079(A007814(n+1)))`
-/

namespace A336158.P1292735788065142495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000079 (A007814 (n + 1)).toNat : ℚ))).toNat

end

end A336158.P1292735788065142495

namespace A336158

/-- `A046523((n+1)/A000079(A007814(n+1)))` -/
def P1292735788065142495.Spec : Prop :=
  ∀ n, P1292735788065142495.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P18405648612981496701

`A025487(A101296((n+1)/A006519(n+1)))`
-/

namespace A336158.P18405648612981496701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat).toNat

end

end A336158.P18405648612981496701

namespace A336158

/-- `A025487(A101296((n+1)/A006519(n+1)))` -/
def P18405648612981496701.Spec : Prop :=
  ∀ n, P18405648612981496701.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P15499825875377226702

`A046523(A003602(n+1)+A003602(n+1)-1)`
-/

namespace A336158.P15499825875377226702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A003602 (n + 1) + (A003602 (n + 1) - 1)).toNat

end

end A336158.P15499825875377226702

namespace A336158

/-- `A046523(A003602(n+1)+A003602(n+1)-1)` -/
def P15499825875377226702.Spec : Prop :=
  ∀ n, P15499825875377226702.a n = A336158 (n + 1)

end A336158

/-! ## A336158.P12911026402205223057

`A283465(A268674(n+1))`
-/

namespace A336158.P12911026402205223057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283465 (A268674 (n + 1)).toNat

end

end A336158.P12911026402205223057

namespace A336158

/-- `A283465(A268674(n+1))` -/
def P12911026402205223057.Spec : Prop :=
  ∀ n, P12911026402205223057.a n = A336158 (n + 1)

end A336158

/-!
# A336159: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(i) = A278222(j) and A336158(i) = A336158(j), for all i, j >= 1.

The programs for A336159, there is no canonical definition to state claims against.
-/

/-! ## A336159.P4889047937570646714

`A336473(n+1)-A336469(A336479(n)!)`
-/

namespace A336159.P4889047937570646714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336473 (n + 1) - A336469 (Nat.factorial (A336479 n).toNat)

end

end A336159.P4889047937570646714

/-! ## A336159.P10653865212273893723

`A325351(A336473(n+1)+A185284(2*n+1))`
-/

namespace A336159.P10653865212273893723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A336473 (n + 1) + A185284 (2 * n + 1)).toNat

end

end A336159.P10653865212273893723

/-! ## A336159.P15294846134579909865

`A336473(A269396(n+1)%A129603(3*n+4))`
-/

namespace A336159.P15294846134579909865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336473 (Int.tmod (A269396 (n + 1)) (A129603 (3 * n + 4))).toNat

end

end A336159.P15294846134579909865

/-! ## A336159.P7705783776117762433

`A001222(5^A336473(n+1))`
-/

namespace A336159.P7705783776117762433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A336473 (n + 1) : ℤ))).toNat

end

end A336159.P7705783776117762433

/-! ## A336159.P8646654932659444634

`A336473(n+1)%A265793(n+1)`
-/

namespace A336159.P8646654932659444634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336473 (n + 1)) (A265793 (n + 1))

end

end A336159.P8646654932659444634

/-!
# A336160: Lexicographically earliest infinite sequence such that a(i) = a(j) => A335915(i) = A335915(j) and A336158(i) = A336158(j), for all i, j >= 1.

The programs for A336160, there is no canonical definition to state claims against.
-/

/-! ## A336160.P2532128744429278671

`A336161(n+1)%A141213(n)`
-/

namespace A336160.P2532128744429278671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336161 (n + 1)) (A141213 n)

end

end A336160.P2532128744429278671

/-! ## A336160.P5245708600871201206

`gcd(A036493(n), A336161(n+1))`
-/

namespace A336160.P5245708600871201206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036493 n) (A336161 (n + 1))

end

end A336160.P5245708600871201206

/-! ## A336160.P16644372317668907086

`A336161(lt[A336173(n+4), n])`
-/

namespace A336160.P16644372317668907086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336173 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336161 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A336160.P16644372317668907086

/-! ## A336160.P10450383982441313639

`A336161(and(1, A326392(n+1))+n)`
-/

namespace A336160.P10450383982441313639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336161 (Int.land 1 (A326392 (n + 1)) + (n : ℤ)).toNat

end

end A336160.P10450383982441313639

/-! ## A336160.P8391755358781549757

`and(A117060(n+2), A336161(n+1))`
-/

namespace A336160.P8391755358781549757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117060 (n + 2)) (A336161 (n + 1))

end

end A336160.P8391755358781549757

/-!
# A336162: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(i) = A278222(j) and A335915(i) = A335915(j), for all i, j >= 1.

The programs for A336162, there is no canonical definition to state claims against.
-/

/-! ## A336162.P17761121761796720930

`A003602(n+1)-A151755(A034461(n+1))`
-/

namespace A336162.P17761121761796720930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - A151755 (A034461 (n + 1)).toNat

end

end A336162.P17761121761796720930

/-! ## A336162.P1177479211476879240

`A003602(n+1)-A199588(A085398(n+1))`
-/

namespace A336162.P1177479211476879240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - A199588 (A085398 (n + 1)).toNat

end

end A336162.P1177479211476879240

/-! ## A336162.P15377760380188460681

`A008619(A000265(n+1))-A199588(A085398(n+1))`
-/

namespace A336162.P15377760380188460681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000265 (n + 1)).toNat - A199588 (A085398 (n + 1)).toNat

end

end A336162.P15377760380188460681

/-! ## A336162.P12126049358208693249

`A347374(n+1)-A008615(A058348(A000265(n+1)))`
-/

namespace A336162.P12126049358208693249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347374 (n + 1) - A008615 (A058348 (A000265 (n + 1)).toNat).toNat

end

end A336162.P12126049358208693249

/-! ## A336162.P2388145667446859889

`A003602(∑[A167704(A034558(n+1))])`
-/

namespace A336162.P2388145667446859889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167704 (A034558 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336162.P2388145667446859889

/-!
# A336163: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..n} k^j * binomial(n,j)^3.

The programs for A336163, there is no canonical definition to state claims against.
-/

/-! ## A336163.P5405800807085869886

`A004001(A083075(n)^A254609(n))+A339768(n)-1`
-/

namespace A336163.P5405800807085869886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (SequenceMachineLib.roundAway ((A083075 n : ℚ) ^ (A254609 n : ℤ))).toNat + (A339768 n - 1)

end

end A336163.P5405800807085869886

/-!
# A336165: G.f. A(x) satisfies: A(x) = 1 + x * ((1 - x) * A(x))^2.

The programs for A336165, there is no canonical definition to state claims against.
-/

/-! ## A336165.P13222845856188596201

`∑[A033999(n)*A364371(n)]`
-/

namespace A336165.P13222845856188596201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A364371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336165.P13222845856188596201

/-!
# A336167: Irregular triangular array read by rows. T(n,k) is the number of forests on n unlabeled nodes with exactly k distinct isomorphism classes of trees.

The programs for A336167, there is no canonical definition to state claims against.
-/

/-! ## A336167.P261480680715318508

`A362615(lt[A327351(n), 22])`
-/

namespace A336167.P261480680715318508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327351 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362615 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A336167.P261480680715318508

/-! ## A336167.P14068102320101088934

`A362615(lt[A204922(n+1), 10])`
-/

namespace A336167.P14068102320101088934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362615 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A336167.P14068102320101088934

/-! ## A336167.P1675216862075247804

`A099563(A291878(n)*A294839(n))`
-/

namespace A336167.P1675216862075247804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A291878 n * A294839 n).toNat

end

end A336167.P1675216862075247804

/-! ## A336167.P8902714004081541464

`A099563(A244523(n+1)*A294839(n))`
-/

namespace A336167.P8902714004081541464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A244523 (n + 1) * A294839 n).toNat

end

end A336167.P8902714004081541464

/-! ## A336167.P7946425516239100901

`A362615(lt[A326445(n), A331154(n+1)])`
-/

namespace A336167.P7946425516239100901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326445 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362615 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336167.P7946425516239100901

/-!
# A336169: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..n} (-1)^(n-j) * multinomial(n+(k-1)*j; n-j, {j}^k).

The programs for A336169, there is no canonical definition to state claims against.
-/

/-! ## A336169.P17667570788249478123

`A093662(xor(17, A259099(n+1)))`
-/

namespace A336169.P17667570788249478123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093662 (Int.xor 17 (A259099 (n + 1))).toNat

end

end A336169.P17667570788249478123

/-! ## A336169.P5296587059705747688

`A269129(n+2)^A269129(Δ[n²])`
-/

namespace A336169.P5296587059705747688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269129 (n + 2) : ℚ) ^ (A269129 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A336169.P5296587059705747688

/-! ## A336169.P11838382665649869722

`A151824(A265435(n)+A052344(n))`
-/

namespace A336169.P11838382665649869722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151824 (A265435 n + A052344 n).toNat

end

end A336169.P11838382665649869722

/-! ## A336169.P17007593104233849397

`A116402(A052964(n)*A255647(n))`
-/

namespace A336169.P17007593104233849397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116402 (A052964 n * A255647 n).toNat

end

end A336169.P17007593104233849397

/-! ## A336169.P18223929602781120991

`A116402(lcm(A052964(n), A255647(n)))`
-/

namespace A336169.P18223929602781120991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116402 (Int.lcm (A052964 n) (A255647 n))

end

end A336169.P18223929602781120991

/-!
# A336170: a(n) = Sum_{k=0..n} (-1)^(n-k) * (n+3*k)!/((n-k)! * k!^4).

The programs for A336170, there is no canonical definition to state claims against.
-/

/-! ## A336170.P4205480289109744943

`A336169(∑[round(1/acot(n))+5]+4)`
-/

namespace A336170.P4205480289109744943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A336170.P4205480289109744943

/-! ## A336170.P1399567390292648494

`A336169(A052905(n+2))`
-/

namespace A336170.P1399567390292648494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 (A052905 (n + 2)).toNat

end

end A336170.P1399567390292648494

/-! ## A336170.P11715201950938494563

`A336169(A056115(n)+10)`
-/

namespace A336170.P11715201950938494563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 (A056115 n + 10).toNat

end

end A336170.P11715201950938494563

/-!
# A336171: a(n) = Sum_{k=0..n} (-1)^(n-k) * (n+4*k)!/((n-k)! * k!^5).

The programs for A336171, there is no canonical definition to state claims against.
-/

/-! ## A336171.P9281624104300753799

`A336169(C(n+6, 2)+n)`
-/

namespace A336171.P9281624104300753799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 (Nat.choose (n + 6) 2 + n)

end

end A336171.P9281624104300753799

/-! ## A336171.P9186537872416135807

`record[A336169(A055999(n))]`
-/

namespace A336171.P9186537872416135807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336171.P9186537872416135807

/-!
# A336172: a(n) = Sum_{k=0..n} (-1)^(n-k) * multinomial(n+(n-1)*k; n-k, {k}^n).

The programs for A336172, there is no canonical definition to state claims against.
-/

/-! ## A336172.P5077906851632018217

`A336169(∑[4*n])`
-/

namespace A336172.P5077906851632018217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336172.P5077906851632018217

/-! ## A336172.P18348666558319019165

`A336169(A046092(n))+A055961(n)`
-/

namespace A336172.P18348666558319019165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 (A046092 n).toNat + A055961 n

end

end A336172.P18348666558319019165

/-!
# A336174: Number of non-symmetric binary n X n matrices M over the reals such that M^2 is the transpose of M.

The programs for A336174, there is no canonical definition to state claims against.
-/

/-! ## A336174.P11064756274142997635

`A336614(n)-A000079(n)`
-/

namespace A336174.P11064756274142997635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336614 n - A000079 n

end

end A336174.P11064756274142997635

/-! ## A336174.P6495078681657576655

`A336614(n)-∑[A011782(n)]`
-/

namespace A336174.P6495078681657576655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336614 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336174.P6495078681657576655

/-! ## A336174.P12478197945621077524

`A336614(n)-Δ[A000051(n)]`
-/

namespace A336174.P12478197945621077524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336614 n - (f1 (n + 1) - f1 n)

end

end A336174.P12478197945621077524

/-! ## A336174.P9374367309842117188

`A336614(n)-Δ[A000225(n)]`
-/

namespace A336174.P9374367309842117188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336614 n - (f1 (n + 1) - f1 n)

end

end A336174.P9374367309842117188

/-! ## A336174.P18369445539265104840

`A336614(n)-A011782(n+1)`
-/

namespace A336174.P18369445539265104840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336614 n - A011782 (n + 1)

end

end A336174.P18369445539265104840

/-!
# A336175: Numbers k such that there are no powerful numbers between k^2 and (k+1)^2.

The programs for A336175, there is no canonical definition to state claims against.
-/

/-! ## A336175.P9705718998291013029

`eq[0, A119241(n+1)]+1`
-/

namespace A336175.P9705718998291013029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336175.P9705718998291013029

/-! ## A336175.P14858413344615774488

`eq[0, A004892(Δ[A361936(n+1)])]+1`
-/

namespace A336175.P14858413344615774488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004892 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336175.P14858413344615774488

/-! ## A336175.P11558739384685111079

`record[A057979(Δ[A001694(n+1)])]`
-/

namespace A336175.P11558739384685111079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336175.P11558739384685111079

/-! ## A336175.P9561713942346502879

`lt[xor(A033762(3*n+2), A119241(n+1)), 1]+1`
-/

namespace A336175.P9561713942346502879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033762 (3 * n + 2)) (A119241 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A336175.P9561713942346502879

/-! ## A336175.P2977595776339706689

`lt[Δ[A348018(A102631(n+1))]-1, 1]+1`
-/

namespace A336175.P2977595776339706689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A102631 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A336175.P2977595776339706689

/-! ## A336175.P10609554836897568044

`lt[(A119241(A028310(n))+1)^n, n+1]`
-/

namespace A336175.P10609554836897568044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A119241 (A028310 n).toNat + 1) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A336175.P10609554836897568044

/-!
# A336176: Numbers k such that there is a single powerful number between k^2 and (k+1)^2.

The programs for A336176, there is no canonical definition to state claims against.
-/

/-! ## A336176.P5104296021218624251

`eq[1, A119241(n+1)]+1`
-/

namespace A336176.P5104296021218624251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336176.P5104296021218624251

/-! ## A336176.P1756647121786885909

`eq[1, A119241(A028310(n))]`
-/

namespace A336176.P1756647121786885909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336176.P1756647121786885909

/-! ## A336176.P11064748586639584588

`eq[1, A119241(A000007(n)+n)]`
-/

namespace A336176.P11064748586639584588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336176.P11064748586639584588

/-! ## A336176.P4158212889755343098

`eq[1, A119241(xor(n, A000007(n)))]`
-/

namespace A336176.P4158212889755343098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336176.P4158212889755343098

/-! ## A336176.P9660696531856225448

`eq[1, A119241(A123108(2*n))]`
-/

namespace A336176.P9660696531856225448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336176.P9660696531856225448

/-!
# A336177: Numbers k such that there are exactly two powerful numbers between k^2 and (k+1)^2.

The programs for A336177, there is no canonical definition to state claims against.
-/

/-! ## A336177.P9311219800887512959

`eq[2, A119241(n+1)]+1`
-/

namespace A336177.P9311219800887512959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336177.P9311219800887512959

/-! ## A336177.P4342142213566648410

`eq[2, A119241(A028310(n))]`
-/

namespace A336177.P4342142213566648410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336177.P4342142213566648410

/-! ## A336177.P10420630779845554544

`A153152(eq[2, A119241(n+1)])`
-/

namespace A336177.P10420630779845554544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336177.P10420630779845554544

/-! ## A336177.P11147537287567810979

`eq[2, A119241(A000007(n)+n)]`
-/

namespace A336177.P11147537287567810979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336177.P11147537287567810979

/-! ## A336177.P3087693792132051716

`eq[2, A119241(xor(n, A000007(n)))]`
-/

namespace A336177.P3087693792132051716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336177.P3087693792132051716

/-! ## A336177.P14920819884577532940

`eq[2, A119241(A123108(2*n))]`
-/

namespace A336177.P14920819884577532940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336177.P14920819884577532940

/-! ## A336177.P12046702999311966692

`eq[2, A119241(A233583(n+1))]`
-/

namespace A336177.P12046702999311966692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336177.P12046702999311966692

/-!
# A336178: Numbers k such that there are exactly three powerful numbers between k^2 and (k+1)^2.

The programs for A336178, there is no canonical definition to state claims against.
-/

/-! ## A336178.P5034115154518020774

`eq[3, A119241(n+1)]+1`
-/

namespace A336178.P5034115154518020774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336178.P5034115154518020774

/-! ## A336178.P11330588328316837277

`eq[3, A119241(A028310(n))]`
-/

namespace A336178.P11330588328316837277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336178.P11330588328316837277

/-! ## A336178.P10560405413421303469

`A153152(eq[3, A119241(n+1)])`
-/

namespace A336178.P10560405413421303469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336178.P10560405413421303469

/-! ## A336178.P10327537674323418725

`eq[3, A119241(A000007(n)+n)]`
-/

namespace A336178.P10327537674323418725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336178.P10327537674323418725

/-! ## A336178.P14651181965942627110

`eq[3, A119241(xor(n, A000007(n)))]`
-/

namespace A336178.P14651181965942627110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336178.P14651181965942627110

/-! ## A336178.P5563325787000860585

`eq[3, A119241(A123108(2*n))]`
-/

namespace A336178.P5563325787000860585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336178.P5563325787000860585

/-! ## A336178.P8349199454364330083

`eq[3, A119241(A233583(n+1))]`
-/

namespace A336178.P8349199454364330083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336178.P8349199454364330083

/-!
# A336179: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..n} (-k)^j * binomial(n,j)^3.

The programs for A336179, there is no canonical definition to state claims against.
-/

/-! ## A336179.P12209138681218203087

`2*A333989(n)-(A336201(n)-and(2, A002617(n)))`
-/

namespace A336179.P12209138681218203087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333989 n - (A336201 n - Int.land 2 (A002617 n))

end

end A336179.P12209138681218203087

/-! ## A336179.P11836830227559231002

`2*A333989(n)-A304242(A125800(n))%4`
-/

namespace A336179.P11836830227559231002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333989 n - Int.tmod (A304242 (A125800 n).toNat) 4

end

end A336179.P11836830227559231002

/-! ## A336179.P13348925328092383361

`A304242(A125800(n))%A001316(A248125(n+1))`
-/

namespace A336179.P13348925328092383361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304242 (A125800 n).toNat) (A001316 (A248125 (n + 1)).toNat)

end

end A336179.P13348925328092383361

/-!
# A336180: a(n) = Sum_{k=0..n} (-n)^k * binomial(n,k)^3.

The programs for A336180, there is no canonical definition to state claims against.
-/

/-! ## A336180.P9926625179701416186

`A336179(∑[4*n])`
-/

namespace A336180.P9926625179701416186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336179 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336180.P9926625179701416186

/-! ## A336180.P9355741929617945617

`or(A000007(n), A336179(A046092(n)))`
-/

namespace A336180.P9355741929617945617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A336179 (A046092 n).toNat)

end

end A336180.P9355741929617945617

/-! ## A336180.P11909505939606621376

`or(A059841(n), A336179(A046092(n)))`
-/

namespace A336180.P11909505939606621376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A336179 (A046092 n).toNat)

end

end A336180.P11909505939606621376

/-! ## A336180.P16707901714140344257

`A007318(C(n, 2))*A336179(A046092(n))`
-/

namespace A336180.P16707901714140344257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A336179 (A046092 n).toNat

end

end A336180.P16707901714140344257

/-! ## A336180.P13038861645429737963

`A007318(and(2, n-2))*A336179(A046092(n))`
-/

namespace A336180.P13038861645429737963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat * A336179 (A046092 n).toNat

end

end A336180.P13038861645429737963

/-!
# A336181: a(n) = Sum_{k=0..n} (-2)^k * binomial(n,k)^3.

The programs for A336181, there is no canonical definition to state claims against.
-/

/-! ## A336181.P10768876073144140167

`A336179(∑[n+3])`
-/

namespace A336181.P10768876073144140167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336179 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336181.P10768876073144140167

/-! ## A336181.P1712614422998999005

`or(1, A336179(A055998(n+1)))`
-/

namespace A336181.P1712614422998999005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A336179 (A055998 (n + 1)).toNat)

end

end A336181.P1712614422998999005

/-! ## A336181.P11334104019186928846

`A336179(A055998(n+1))+A008683(4*(n+1))`
-/

namespace A336181.P11334104019186928846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336179 (A055998 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A336181.P11334104019186928846

/-! ## A336181.P12602386273084084929

`A007318(A000217(n))*A336179(A055998(n+1))`
-/

namespace A336181.P12602386273084084929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A336179 (A055998 (n + 1)).toNat

end

end A336181.P12602386273084084929

/-! ## A336181.P6294112726008473884

`A014963(A000217(n+4))*A336179(A055998(n+1))`
-/

namespace A336181.P6294112726008473884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 4)).toNat * A336179 (A055998 (n + 1)).toNat

end

end A336181.P6294112726008473884

/-!
# A336182: a(n) = Sum_{k=0..n} (-3)^k * binomial(n,k)^3.

The programs for A336182, there is no canonical definition to state claims against.
-/

/-! ## A336182.P640351194621480980

`A336179(∑[n+3]+n+3)`
-/

namespace A336182.P640351194621480980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336179 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A336182.P640351194621480980

/-! ## A336182.P4992045416351335954

`A336201(∑[n+3]+n+3)`
-/

namespace A336182.P4992045416351335954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336201 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A336182.P4992045416351335954

/-! ## A336182.P13977318622061333534

`A336179(A046691(n+2))%A116429(n+4)`
-/

namespace A336182.P13977318622061333534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336179 (A046691 (n + 2)).toNat) (A116429 (n + 4))

end

end A336182.P13977318622061333534

/-!
# A336183: a(n) = n^2 + (1/n) * Sum_{k=1..n-1} binomial(n,k) * k * a(k) * (n-k)^2.

The programs for A336183, there is no canonical definition to state claims against.
-/

/-! ## A336183.P2351512097761057926

`A266350(Δ[(n+1)^n])`
-/

namespace A336183.P2351512097761057926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266350 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A336183.P2351512097761057926

/-!
# A336184: a(n) = n^3 + (1/n) * Sum_{k=1..n-1} binomial(n,k) * k * a(k) * (n-k)^3.

The programs for A336184, there is no canonical definition to state claims against.
-/

/-! ## A336184.P5621032662192432622

`A305126(n+1)+A180200(A108628(n))`
-/

namespace A336184.P5621032662192432622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305126 (n + 1) + A180200 (A108628 n).toNat

end

end A336184.P5621032662192432622

/-!
# A336185: a(n) = prime(n) + (1/n) * Sum_{k=1..n-1} binomial(n,k) * k * a(k) * prime(n-k).

The programs for A336185, there is no canonical definition to state claims against.
-/

/-! ## A336185.P14711073149410400788

`A320340(∑[A360556(n+1)^n+1])`
-/

namespace A336185.P14711073149410400788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360556 (n + 1) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336185.P14711073149410400788

/-!
# A336186: Side length of a square block of integers, with 1 at the top-left corner, on a diagonally numbered 2D board such that the sum of the integers in the square is a perfect square.

The programs for A336186, there is no canonical definition to state claims against.
-/

/-! ## A336186.P2645793774087168308

`A181443(2*n+1)-A181443(2*n)`
-/

namespace A336186.P2645793774087168308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181443 (2 * n + 1) - A181443 (2 * n)

end

end A336186.P2645793774087168308

/-!
# A336187: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..n} k^j * binomial(n,j)^k.

The programs for A336187, there is no canonical definition to state claims against.
-/

/-! ## A336187.P5815090977595575528

`A102452(A381426(n+1))`
-/

namespace A336187.P5815090977595575528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102452 (A381426 (n + 1)).toNat

end

end A336187.P5815090977595575528

/-! ## A336187.P3842177746039728955

`A377357(A336573(n+1))`
-/

namespace A336187.P3842177746039728955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377357 (A336573 (n + 1)).toNat

end

end A336187.P3842177746039728955

/-! ## A336187.P8216417310236351027

`A328208(A122175(n)%A339562(3*n+2))`
-/

namespace A336187.P8216417310236351027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328208 (Int.tmod (A122175 n) (A339562 (3 * n + 2))).toNat

end

end A336187.P8216417310236351027

/-! ## A336187.P13789983585473210588

`A342591(A124834(n))+A263414(A073165(n))`
-/

namespace A336187.P13789983585473210588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (A124834 n).toNat + A263414 (A073165 n).toNat

end

end A336187.P13789983585473210588

/-! ## A336187.P4161226402717819603

`A342591(A124834(n))+A263414(A137153(n))`
-/

namespace A336187.P4161226402717819603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (A124834 n).toNat + A263414 (A137153 n).toNat

end

end A336187.P4161226402717819603

/-!
# A336188: a(n) = Sum_{k=0..n} n^k * binomial(n,k)^n.

The programs for A336188, there is no canonical definition to state claims against.
-/

/-! ## A336188.P10654130465473636470

`A336187(∑[4*n])`
-/

namespace A336188.P10654130465473636470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336188.P10654130465473636470

/-! ## A336188.P6320762815125474304

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A336187(n))]`
-/

namespace A336188.P6320762815125474304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A336187 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336188.P6320762815125474304

/-! ## A336188.P9433902991042728114

`A336187(A046092(n))+A000007(n+4)`
-/

namespace A336188.P9433902991042728114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336187 (A046092 n).toNat + A000007 (n + 4)

end

end A336188.P9433902991042728114

/-! ## A336188.P7869515427857122509

`record[A336187(n)/A084950(2*n)]`
-/

namespace A336188.P7869515427857122509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336187 n : ℚ) / (A084950 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336188.P7869515427857122509

/-! ## A336188.P3313348663001733719

`record[A336187(n)/A122193(2*(n+1))]`
-/

namespace A336188.P3313348663001733719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336187 n : ℚ) / (A122193 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336188.P3313348663001733719

/-!
# A336190: a(n) is the least k such that A336033(k) = n.

The programs for A336190, there is no canonical definition to state claims against.
-/

/-! ## A336190.P13441875024096591710

`1+eq[0, A340488(n+1)]`
-/

namespace A336190.P13441875024096591710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340488 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336190.P13441875024096591710

/-! ## A336190.P5216395525076451288

`A141310(eq[0, A340488(n+1)])`
-/

namespace A336190.P5216395525076451288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336190.P5216395525076451288

/-! ## A336190.P3495029650508273595

`record[gcd(A000027(n+1), A340488(n+1))]`
-/

namespace A336190.P3495029650508273595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A340488 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336190.P3495029650508273595

/-! ## A336190.P18348973539722978322

`record[(1-A340488(n+1))*A259445(n+1)]`
-/

namespace A336190.P18348973539722978322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A340488 (n + 1)) * A259445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336190.P18348973539722978322

/-! ## A336190.P14548937095743689355

`eq[A000007(n), A340488(A028310(n))]`
-/

namespace A336190.P14548937095743689355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340488 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336190.P14548937095743689355

/-! ## A336190.P2063617105551603741

`eq[A000038(n), A340488(A028310(n))]`
-/

namespace A336190.P2063617105551603741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340488 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336190.P2063617105551603741

/-! ## A336190.P15107299577012431526

`record[A259445(n+1)/A017401(A340488(n+1))]`
-/

namespace A336190.P15107299577012431526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259445 (n + 1) : ℚ) / (A017401 (A340488 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336190.P15107299577012431526

/-!
# A336194: Table read by antidiagonals upwards: T(n,k) = (n - 1)*k^3 - 1, with n > 1 and k > 0.

The programs for A336194, the canonical program `A336194.P7969052725366895353` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336194 has offset 2).

The definition of A336194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336194.P7969052725366895353

`A003991(n+1)*A133819(n+1)-1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A336194

/-- `A003991(n+1)*A133819(n+1)-1` -/
def P7969052725366895353.Spec : Prop :=
  ∀ n, P7969052725366895353.a n = A336194 (n + 2)

theorem P7969052725366895353.correct : P7969052725366895353.Spec := by
  intro n
  simp only [A336194, Nat.add_sub_cancel]

end A336194

/-! ## A336194.P11954175090078041682

`A004736(n+1)*A133820(n+1)-1`
-/

namespace A336194.P11954175090078041682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A133820 (n + 1) - 1

end

end A336194.P11954175090078041682

namespace A336194

/-- `A004736(n+1)*A133820(n+1)-1` -/
def P11954175090078041682.Spec : Prop :=
  ∀ n, P11954175090078041682.a n = A336194 (n + 2)

end A336194

/-! ## A336194.P7846051098333892972

`A098360(n+1)/A055461(n+1)-1`
-/

namespace A336194.P7846051098333892972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098360 (n + 1) : ℚ) / (A055461 (n + 1) : ℚ) - 1

end

end A336194.P7846051098333892972

namespace A336194

/-- `A098360(n+1)/A055461(n+1)-1` -/
def P7846051098333892972.Spec : Prop :=
  ∀ n, P7846051098333892972.a n = (A336194 (n + 2) : ℚ)

end A336194

/-! ## A336194.P2703501683676935570

`A002260(n+1)²*A003991(n+1)-1`
-/

namespace A336194.P2703501683676935570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 * A003991 (n + 1) - 1

end

end A336194.P2703501683676935570

namespace A336194

/-- `A002260(n+1)²*A003991(n+1)-1` -/
def P2703501683676935570.Spec : Prop :=
  ∀ n, P2703501683676935570.a n = A336194 (n + 2)

end A336194

/-! ## A336194.P11833335852508012134

`A002260(n+1)²*A002265(A098352(n+1))-1`
-/

namespace A336194.P11833335852508012134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 * A002265 (A098352 (n + 1)).toNat - 1

end

end A336194.P11833335852508012134

namespace A336194

/-- `A002260(n+1)²*A002265(A098352(n+1))-1` -/
def P11833335852508012134.Spec : Prop :=
  ∀ n, P11833335852508012134.a n = A336194 (n + 2)

end A336194

/-!
# A336195: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n,k)^3 * a(k).

The programs for A336195, there is no canonical definition to state claims against.
-/

/-! ## A336195.P10846586372331333954

`A326322(∑[n+3]+n+3)`
-/

namespace A336195.P10846586372331333954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A336195.P10846586372331333954

/-! ## A336195.P10924200827233968943

`or(1, A326322(A046691(n+2)))`
-/

namespace A336195.P10924200827233968943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A326322 (A046691 (n + 2)).toNat)

end

end A336195.P10924200827233968943

/-! ## A336195.P5269648703689112019

`A326322(A046691(n+2))-A025466(n)`
-/

namespace A336195.P5269648703689112019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (A046691 (n + 2)).toNat - A025466 n

end

end A336195.P5269648703689112019

/-! ## A336195.P7279281252375512185

`A326322(A046691(n+2))-A185284(n)`
-/

namespace A336195.P7279281252375512185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (A046691 (n + 2)).toNat - A185284 n

end

end A336195.P7279281252375512185

/-!
# A336196: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n,k)^4 * a(k).

The programs for A336196, there is no canonical definition to state claims against.
-/

/-! ## A336196.P14097998568804711160

`A326322(eq[4, A025581(n)])`
-/

namespace A336196.P14097998568804711160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336196.P14097998568804711160

/-! ## A336196.P9209507396302201317

`A326322(eq[5, A193739(n)])`
-/

namespace A336196.P9209507396302201317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336196.P9209507396302201317

/-! ## A336196.P2858296435643215559

`A326322(eq[5, A195663(n)])`
-/

namespace A336196.P2858296435643215559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336196.P2858296435643215559

/-! ## A336196.P15789567613105366870

`A326322(eq[16, A130321(n)])`
-/

namespace A336196.P15789567613105366870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336196.P15789567613105366870

/-! ## A336196.P15008357556447374671

`A326322(eq[5, A004736(n+1)])`
-/

namespace A336196.P15008357556447374671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336196.P15008357556447374671

/-!
# A336197: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n,k)^5 * a(k).

The programs for A336197, there is no canonical definition to state claims against.
-/

/-! ## A336197.P13650194432154668887

`A326322(eq[5, A025581(n)])`
-/

namespace A336197.P13650194432154668887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336197.P13650194432154668887

/-! ## A336197.P9999578045949205927

`A326322(eq[6, A193739(n)])`
-/

namespace A336197.P9999578045949205927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336197.P9999578045949205927

/-! ## A336197.P8841224036763197011

`A326322(eq[6, A195663(n)])`
-/

namespace A336197.P8841224036763197011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336197.P8841224036763197011

/-! ## A336197.P16746982141966355656

`A326322(eq[11, A099375(n)])`
-/

namespace A336197.P16746982141966355656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336197.P16746982141966355656

/-! ## A336197.P12105669458650267348

`A326322(Δ[A023551(n+1)])`
-/

namespace A336197.P12105669458650267348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (f1 (n + 1) - f1 n).toNat

end

end A336197.P12105669458650267348

