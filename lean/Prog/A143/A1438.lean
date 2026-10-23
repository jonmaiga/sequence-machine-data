import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A143800: In acoustics, using 12-tone equal temperament, the rounded number of semitones in the interval perceived when a vibrating string is divided into n congruent segments.

The programs for A143800, the canonical program `A143800.P7352923036129174733` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143800 has offset 1).

The definition of A143800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143800.P7352923036129174733

`round(log2(n+1)*12)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143800

/-- `round(log2(n+1)*12)` -/
def P7352923036129174733.Spec : Prop :=
  ∀ n, P7352923036129174733.a n = A143800 (n + 1)

theorem P7352923036129174733.correct : P7352923036129174733.Spec := by
  intro n
  simp only [A143800, Nat.add_sub_cancel]

end A143800

/-! ## A143800.P17129156923713617922

`round(log2(A321836(n+1)))%A017129(n)`
-/

namespace A143800.P17129156923713617922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A321836 (n + 1) : ℝ))) (A017129 n)

end

end A143800.P17129156923713617922

namespace A143800

/-- `round(log2(A321836(n+1)))%A017129(n)` -/
def P17129156923713617922.Spec : Prop :=
  ∀ n, P17129156923713617922.a n = A143800 (n + 1)

end A143800

/-! ## A143800.P10451337513901208817

`round(log2(A321836(n+1)))+A001489(n)+n`
-/

namespace A143800.P10451337513901208817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A321836 (n + 1) : ℝ)) + (A001489 n + (n : ℤ))

end

end A143800.P10451337513901208817

namespace A143800

/-- `round(log2(A321836(n+1)))+A001489(n)+n` -/
def P10451337513901208817.Spec : Prop :=
  ∀ n, P10451337513901208817.a n = A143800 (n + 1)

end A143800

/-! ## A143800.P4113263274615984717

`A000007(n+1)+round(log2(A321836(n+1)))`
-/

namespace A143800.P4113263274615984717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway (Real.logb 2 (A321836 (n + 1) : ℝ))

end

end A143800.P4113263274615984717

namespace A143800

/-- `A000007(n+1)+round(log2(A321836(n+1)))` -/
def P4113263274615984717.Spec : Prop :=
  ∀ n, P4113263274615984717.a n = A143800 (n + 1)

end A143800

/-! ## A143800.P2319214650310373417

`A344444(n+1)-A089801(A344444(3*n+5))`
-/

namespace A143800.P2319214650310373417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344444 (n + 1) - A089801 (A344444 (3 * n + 5)).toNat

end

end A143800.P2319214650310373417

namespace A143800

/-- `A344444(n+1)-A089801(A344444(3*n+5))` -/
def P2319214650310373417.Spec : Prop :=
  ∀ n, P2319214650310373417.a n = A143800 (n + 1)

end A143800

/-!
# A143802: Triangle read by rows, "n" followed by (n-1) terms of (1, 3, 7, 15, ...).

The programs for A143802, the canonical program `A143802.P10767624828631533889` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143802 has offset 1).

The definition of A143802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143802.P10767624828631533889

`2^(n-C(∑[char[∑[n]]], 2))-(1-round(sqrt(2*(n+1)))*char[∑[n]])`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143802

/-- `2^(n-C(∑[char[∑[n]]], 2))-(1-round(sqrt(2*(n+1)))*char[∑[n]])` -/
def P10767624828631533889.Spec : Prop :=
  ∀ n, P10767624828631533889.a n = (A143802 (n + 1) : ℚ)

end A143802

/-! ## A143802.P14232931813707064076

`floor(2^(n-C(∑[char[∑[n]]], 2))-A167407(n))`
-/

namespace A143802.P14232931813707064076
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) - (A167407 n : ℚ)⌋

end

end A143802.P14232931813707064076

namespace A143802

/-- `floor(2^(n-C(∑[char[∑[n]]], 2))-A167407(n))` -/
def P14232931813707064076.Spec : Prop :=
  ∀ n, P14232931813707064076.a n = A143802 (n + 1)

end A143802

/-! ## A143802.P10777470253855586645

`A059268(n)-(1-round(sqrt(2*(n+1)))*char[∑[n]])`
-/

namespace A143802.P10777470253855586645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - (1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A143802.P10777470253855586645

namespace A143802

/-- `A059268(n)-(1-round(sqrt(2*(n+1)))*char[∑[n]])` -/
def P10777470253855586645.Spec : Prop :=
  ∀ n, P10777470253855586645.a n = A143802 (n + 1)

end A143802

/-! ## A143802.P12019282757198353345

`or(round(sqrt(2*n))*char[∑[n]]+1, A000225(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A143802.P12019282757198353345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1) (A000225 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2))

end

end A143802.P12019282757198353345

namespace A143802

/-- `or(round(sqrt(2*n))*char[∑[n]]+1, A000225(n-C(∑[char[∑[n]]], 2)))` -/
def P12019282757198353345.Spec : Prop :=
  ∀ n, P12019282757198353345.a n = A143802 (n + 1)

end A143802

/-! ## A143802.P14108635839456826565

`A000079(n-C(∑[char[∑[n]]], 2))-(1-round(sqrt(2*(n+1)))*char[∑[n]])`
-/

namespace A143802.P14108635839456826565
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) - (1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ))

end

end A143802.P14108635839456826565

namespace A143802

/-- `A000079(n-C(∑[char[∑[n]]], 2))-(1-round(sqrt(2*(n+1)))*char[∑[n]])` -/
def P14108635839456826565.Spec : Prop :=
  ∀ n, P14108635839456826565.a n = A143802 (n + 1)

end A143802

/-! ## A143802.P12905720156765523896

`2^A002262(n)-A167407(n)`
-/

namespace A143802.P12905720156765523896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) - (A167407 n : ℚ)

end

end A143802.P12905720156765523896

namespace A143802

/-- `2^A002262(n)-A167407(n)` -/
def P12905720156765523896.Spec : Prop :=
  ∀ n, P12905720156765523896.a n = (A143802 (n + 1) : ℚ)

end A143802

/-! ## A143802.P10485994594940797033

`A130321(∑[2*n]%comp[∑[n]])-(1-round(sqrt(2*(n+1)))*char[∑[n]])`
-/

namespace A143802.P10485994594940797033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) - (1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ))

end

end A143802.P10485994594940797033

namespace A143802

/-- `A130321(∑[2*n]%comp[∑[n]])-(1-round(sqrt(2*(n+1)))*char[∑[n]])` -/
def P10485994594940797033.Spec : Prop :=
  ∀ n, P10485994594940797033.a n = A143802 (n + 1)

end A143802

/-! ## A143802.P10270369393293599261

`or(round(sqrt(2*n))*char[∑[n]]+1, A023443(2^(n-C(∑[char[∑[n]]], 2))))`
-/

namespace A143802.P10270369393293599261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1) (A023443 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ))).toNat)

end

end A143802.P10270369393293599261

namespace A143802

/-- `or(round(sqrt(2*n))*char[∑[n]]+1, A023443(2^(n-C(∑[char[∑[n]]], 2))))` -/
def P10270369393293599261.Spec : Prop :=
  ∀ n, P10270369393293599261.a n = A143802 (n + 1)

end A143802

/-! ## A143802.P6912535202177772165

`or(round(sqrt(2*n))*char[∑[n]]+1, A048967(2^(n-C(∑[char[∑[n]]], 2))))`
-/

namespace A143802.P6912535202177772165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1) (A048967 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ))).toNat)

end

end A143802.P6912535202177772165

namespace A143802

/-- `or(round(sqrt(2*n))*char[∑[n]]+1, A048967(2^(n-C(∑[char[∑[n]]], 2))))` -/
def P6912535202177772165.Spec : Prop :=
  ∀ n, P6912535202177772165.a n = A143802 (n + 1)

end A143802

/-! ## A143802.P8509940723529358910

`Δ[A011371(A209492(n))]`
-/

namespace A143802.P8509940723529358910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A209492 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143802.P8509940723529358910

namespace A143802

/-- `Δ[A011371(A209492(n))]` -/
def P8509940723529358910.Spec : Prop :=
  ∀ n, P8509940723529358910.a n = A143802 (n + 1)

end A143802

/-!
# A143803: a(n) = 2*A001614(n) - 1 where A001614 lists the Connell numbers.

The programs for A143803, the canonical program `A143803.P15197784940766103459` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143803 has offset 1).

The definition of A143803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143803.P15197784940766103459

`2*A001614(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143803

/-- `2*A001614(n+1)-1` -/
def P15197784940766103459.Spec : Prop :=
  ∀ n, P15197784940766103459.a n = A143803 (n + 1)

theorem P15197784940766103459.correct : P15197784940766103459.Spec := by
  intro n
  simp only [A143803, Nat.add_sub_cancel]

end A143803

/-! ## A143803.P17013505266855376245

`∑[2*(2-char[∑[n]])]-1`
-/

namespace A143803.P17013505266855376245
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A143803.P17013505266855376245

namespace A143803

/-- `∑[2*(2-char[∑[n]])]-1` -/
def P17013505266855376245.Spec : Prop :=
  ∀ n, P17013505266855376245.a n = A143803 (n + 1)

end A143803

/-! ## A143803.P15011358055971266027

`∑[2^a(1-char[∑[n]])]` with `a(0)=1`
-/

namespace A143803.P15011358055971266027
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 ^ f1 (1 - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143803.P15011358055971266027

namespace A143803

/-- `∑[2^a(1-char[∑[n]])]` -/
def P15011358055971266027.Spec : Prop :=
  ∀ n, (P15011358055971266027.a n : ℤ) = A143803 (n + 1)

end A143803

/-! ## A143803.P9789938803825208529

`or(1, 2*comp[comp[∑[n]]+n])`
-/

namespace A143803.P9789938803825208529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A143803.P9789938803825208529

namespace A143803

/-- `or(1, 2*comp[comp[∑[n]]+n])` -/
def P9789938803825208529.Spec : Prop :=
  ∀ n, (P9789938803825208529.a n : ℤ) = A143803 (n + 1)

end A143803

/-! ## A143803.P12958909371966892374

`xor(1, 2*comp[comp[∑[n]]+n])`
-/

namespace A143803.P12958909371966892374
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A143803.P12958909371966892374

namespace A143803

/-- `xor(1, 2*comp[comp[∑[n]]+n])` -/
def P12958909371966892374.Spec : Prop :=
  ∀ n, (P12958909371966892374.a n : ℤ) = A143803 (n + 1)

end A143803

/-! ## A143803.P17839479490678910373

`∑[6-a(char[∑[n]]+1)]` with `a(0)=1, a(1)=2`
-/

namespace A143803.P17839479490678910373
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  6 - f1 ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143803.P17839479490678910373

namespace A143803

/-- `∑[6-a(char[∑[n]]+1)]` -/
def P17839479490678910373.Spec : Prop :=
  ∀ n, P17839479490678910373.a n = A143803 (n + 1)

end A143803

/-! ## A143803.P14986042610657840768

`∑[2*a((char[∑[n]]+1)%2)]` with `a(0)=1`
-/

namespace A143803.P14986042610657840768
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (((if ∃ j, f2 j = n then 1 else 0) + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143803.P14986042610657840768

namespace A143803

/-- `∑[2*a((char[∑[n]]+1)%2)]` -/
def P14986042610657840768.Spec : Prop :=
  ∀ n, (P14986042610657840768.a n : ℤ) = A143803 (n + 1)

end A143803

/-! ## A143803.P2300483253795788419

`∑[2^(2-A073423(n))]`
-/

namespace A143803.P2300483253795788419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (2 - A073423 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143803.P2300483253795788419

namespace A143803

/-- `∑[2^(2-A073423(n))]` -/
def P2300483253795788419.Spec : Prop :=
  ∀ n, P2300483253795788419.a n = (A143803 (n + 1) : ℚ)

end A143803

/-! ## A143803.P13198990849053507281

`A017137(n)%A182664(n+1)`
-/

namespace A143803.P13198990849053507281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017137 n) (A182664 (n + 1))

end

end A143803.P13198990849053507281

namespace A143803

/-- `A017137(n)%A182664(n+1)` -/
def P13198990849053507281.Spec : Prop :=
  ∀ n, P13198990849053507281.a n = A143803 (n + 1)

end A143803

/-! ## A143803.P4024733562026921389

`A004273(∑[2-char[C(n, 2)]])`
-/

namespace A143803.P4024733562026921389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143803.P4024733562026921389

namespace A143803

/-- `A004273(∑[2-char[C(n, 2)]])` -/
def P4024733562026921389.Spec : Prop :=
  ∀ n, P4024733562026921389.a n = A143803 (n + 1)

end A143803

/-! ## A143803.P7166505339612100741

`A004273(A001614(n+1))`
-/

namespace A143803.P7166505339612100741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A001614 (n + 1)).toNat

end

end A143803.P7166505339612100741

namespace A143803

/-- `A004273(A001614(n+1))` -/
def P7166505339612100741.Spec : Prop :=
  ∀ n, P7166505339612100741.a n = A143803 (n + 1)

end A143803

/-! ## A143803.P4410130460845037188

`A004273(2*n+1-A003056(n))`
-/

namespace A143803.P4410130460845037188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ((2 * n + 1 : ℤ) - A003056 n).toNat

end

end A143803.P4410130460845037188

namespace A143803

/-- `A004273(2*n+1-A003056(n))` -/
def P4410130460845037188.Spec : Prop :=
  ∀ n, P4410130460845037188.a n = A143803 (n + 1)

end A143803

/-! ## A143803.P306731245806572887

`A074147(A185868(n+1))`
-/

namespace A143803.P306731245806572887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 (A185868 (n + 1)).toNat

end

end A143803.P306731245806572887

namespace A143803

/-- `A074147(A185868(n+1))` -/
def P306731245806572887.Spec : Prop :=
  ∀ n, P306731245806572887.a n = A143803 (n + 1)

end A143803

/-! ## A143803.P6808887751893034881

`A109613(A123663(2*n+1)+1)`
-/

namespace A143803.P6808887751893034881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A123663 (2 * n + 1) + 1).toNat

end

end A143803.P6808887751893034881

namespace A143803

/-- `A109613(A123663(2*n+1)+1)` -/
def P6808887751893034881.Spec : Prop :=
  ∀ n, P6808887751893034881.a n = A143803 (n + 1)

end A143803

/-! ## A143803.P4327978169810862371

`A127366(A195437(A133280(n)))`
-/

namespace A143803.P4327978169810862371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127366 (A195437 (A133280 n).toNat).toNat

end

end A143803.P4327978169810862371

namespace A143803

/-- `A127366(A195437(A133280(n)))` -/
def P4327978169810862371.Spec : Prop :=
  ∀ n, P4327978169810862371.a n = A143803 (n + 1)

end A143803

/-! ## A143803.P2089217411058078123

`A127366(A195437(A127367(2*n)))`
-/

namespace A143803.P2089217411058078123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127366 (A195437 (A127367 (2 * n)).toNat).toNat

end

end A143803.P2089217411058078123

namespace A143803

/-- `A127366(A195437(A127367(2*n)))` -/
def P2089217411058078123.Spec : Prop :=
  ∀ n, P2089217411058078123.a n = A143803 (n + 1)

end A143803

/-! ## A143803.P11784111015558583399

`A004396(A143804(n+1))`
-/

namespace A143803.P11784111015558583399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A143804 (n + 1)).toNat

end

end A143803.P11784111015558583399

namespace A143803

/-- `A004396(A143804(n+1))` -/
def P11784111015558583399.Spec : Prop :=
  ∀ n, P11784111015558583399.a n = A143803 (n + 1)

end A143803

/-! ## A143803.P1680844793047569491

`∑[A267584(A089633(n))]`
-/

namespace A143803.P1680844793047569491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (A089633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143803.P1680844793047569491

namespace A143803

/-- `∑[A267584(A089633(n))]` -/
def P1680844793047569491.Spec : Prop :=
  ∀ n, P1680844793047569491.a n = A143803 (n + 1)

end A143803

/-!
# A143804: Triangle read by rows, thrice the Connell numbers (A001614) - 2.

The programs for A143804, the canonical program `A143804.P3155521920074128437` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143804 has offset 1).

The definition of A143804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143804.P3155521920074128437

`3*A001614(n+1)-2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143804

/-- `3*A001614(n+1)-2` -/
def P3155521920074128437.Spec : Prop :=
  ∀ n, P3155521920074128437.a n = A143804 (n + 1)

theorem P3155521920074128437.correct : P3155521920074128437.Spec := by
  intro n
  simp only [A143804, Nat.add_sub_cancel]

end A143804

/-! ## A143804.P4721991844655353937

`∑[3*(2-char[∑[n]])]-2`
-/

namespace A143804.P4721991844655353937
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A143804.P4721991844655353937

namespace A143804

/-- `∑[3*(2-char[∑[n]])]-2` -/
def P4721991844655353937.Spec : Prop :=
  ∀ n, P4721991844655353937.a n = A143804 (n + 1)

end A143804

/-! ## A143804.P2010413607932822049

`abs(3*∑[2-A073423(n)]+1)`
-/

namespace A143804.P2010413607932822049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1|

end

end A143804.P2010413607932822049

namespace A143804

/-- `abs(3*∑[2-A073423(n)]+1)` -/
def P2010413607932822049.Spec : Prop :=
  ∀ n, P2010413607932822049.a n = A143804 (n + 1)

end A143804

/-! ## A143804.P13354206115842628573

`abs(3*(2*n-A003056(n))+1)`
-/

namespace A143804.P13354206115842628573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * ((2 * n : ℤ) - A003056 n) + 1|

end

end A143804.P13354206115842628573

namespace A143804

/-- `abs(3*(2*n-A003056(n))+1)` -/
def P13354206115842628573.Spec : Prop :=
  ∀ n, P13354206115842628573.a n = A143804 (n + 1)

end A143804

/-! ## A143804.P2812495547844504014

`∑[gcd(6, A100852(n))]`
-/

namespace A143804.P2812495547844504014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A100852 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143804.P2812495547844504014

namespace A143804

/-- `∑[gcd(6, A100852(n))]` -/
def P2812495547844504014.Spec : Prop :=
  ∀ n, (P2812495547844504014.a n : ℤ) = A143804 (n + 1)

end A143804

/-! ## A143804.P13710983454610373570

`A016777(comp[comp[∑[n]]+n])`
-/

namespace A143804.P13710983454610373570
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A143804.P13710983454610373570

namespace A143804

/-- `A016777(comp[comp[∑[n]]+n])` -/
def P13710983454610373570.Spec : Prop :=
  ∀ n, P13710983454610373570.a n = A143804 (n + 1)

end A143804

/-! ## A143804.P17502629071664257437

`A001651(A143803(n+1))`
-/

namespace A143804.P17502629071664257437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A143803 (n + 1)).toNat

end

end A143804.P17502629071664257437

namespace A143804

/-- `A001651(A143803(n+1))` -/
def P17502629071664257437.Spec : Prop :=
  ∀ n, P17502629071664257437.a n = A143804 (n + 1)

end A143804

/-! ## A143804.P6974594566075451688

`A008611(9*comp[comp[∑[n]]+n])`
-/

namespace A143804.P6974594566075451688
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (9 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A143804.P6974594566075451688

namespace A143804

/-- `A008611(9*comp[comp[∑[n]]+n])` -/
def P6974594566075451688.Spec : Prop :=
  ∀ n, P6974594566075451688.a n = A143804 (n + 1)

end A143804

/-! ## A143804.P11463954669928220716

`A294317(2*A001614(n+1)²)`
-/

namespace A143804.P11463954669928220716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (2 * A001614 (n + 1) ^ 2).toNat

end

end A143804.P11463954669928220716

namespace A143804

/-- `A294317(2*A001614(n+1)²)` -/
def P11463954669928220716.Spec : Prop :=
  ∀ n, P11463954669928220716.a n = A143804 (n + 1)

end A143804

/-! ## A143804.P405580845231694094

`A294317(A005843(A001614(n+1)²))`
-/

namespace A143804.P405580845231694094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A005843 (A001614 (n + 1) ^ 2).toNat).toNat

end

end A143804.P405580845231694094

namespace A143804

/-- `A294317(A005843(A001614(n+1)²))` -/
def P405580845231694094.Spec : Prop :=
  ∀ n, P405580845231694094.a n = A143804 (n + 1)

end A143804

/-!
# A143805: Eigensequence of triangle A130534.

The programs for A143805, there is no canonical definition to state claims against.
-/

/-! ## A143805.P9315710332102096148

`A143806(∑[n]+n)`
-/

namespace A143805.P9315710332102096148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143806 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A143805.P9315710332102096148

/-! ## A143805.P4019307861819844287

`A326686(n)+A143806(A000096(n))`
-/

namespace A143805.P4019307861819844287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326686 n + A143806 (A000096 n).toNat

end

end A143805.P4019307861819844287

/-! ## A143805.P4827124354062309677

`A326687(n)+A143806(A000096(n))`
-/

namespace A143805.P4827124354062309677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326687 n + A143806 (A000096 n).toNat

end

end A143805.P4827124354062309677

/-!
# A143806: Eigentriangle of A130534.

The programs for A143806, there is no canonical definition to state claims against.
-/

/-! ## A143806.P9327340641535136509

`A355266(n)+A000122(A355266(2*(n+2)))`
-/

namespace A143806.P9327340641535136509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355266 n + A000122 (A355266 (2 * (n + 2))).toNat

end

end A143806.P9327340641535136509

/-! ## A143806.P1506441785529160054

`A085405(A286795(n+4))+A048594(n+1)/A140756(n+1)`
-/

namespace A143806.P1506441785529160054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085405 (A286795 (n + 4)).toNat : ℚ) + (A048594 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)

end

end A143806.P1506441785529160054

/-! ## A143806.P12087922448732498591

`A297234(A123065(n+1))+A188881(n+1)`
-/

namespace A143806.P12087922448732498591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297234 (A123065 (n + 1)).toNat + A188881 (n + 1)

end

end A143806.P12087922448732498591

/-! ## A143806.P9376663286907906591

`or(A104105(A000040(2*(n+2))), A188881(n+1))`
-/

namespace A143806.P9376663286907906591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104105 (A000040 (2 * (n + 2))).toNat) (A188881 (n + 1))

end

end A143806.P9376663286907906591

/-! ## A143806.P10969695379997822936

`A049800(n+1)+A188881(n+1)-A352124(A288972(n))`
-/

namespace A143806.P10969695379997822936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049800 (n + 1) + (A188881 (n + 1) - A352124 (A288972 n).toNat)

end

end A143806.P10969695379997822936

/-!
# A143808: Triangle read by rows, first n terms of the sequence (1, 2, 4, 10, ...) followed by P(n), where (2, 4, 10, 12, ...) = twice Pell numbers.

The programs for A143808, there is no canonical definition to state claims against.
-/

/-! ## A143808.P12305330496482095536

`A154325(n)*A215928(A002262(n))`
-/

namespace A143808.P12305330496482095536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n * A215928 (A002262 n).toNat

end

end A143808.P12305330496482095536

/-! ## A143808.P809085750581230710

`A157810(A168517(n)+1)*A215928(A002262(n))`
-/

namespace A143808.P809085750581230710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157810 (A168517 n + 1).toNat * A215928 (A002262 n).toNat

end

end A143808.P809085750581230710

/-! ## A143808.P8298137953435104254

`A000244(n+1)%A156098(n+7)+1`
-/

namespace A143808.P8298137953435104254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 (n + 1)) (A156098 (n + 7)) + 1

end

end A143808.P8298137953435104254

/-!
# A143809: Eigentriangle of the Mobius transform, (A054525).

The programs for A143809, there is no canonical definition to state claims against.
-/

/-! ## A143809.P14964647429528977711

`A007554(A002260(n+1))*A054525(n+1)`
-/

namespace A143809.P14964647429528977711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007554 (A002260 (n + 1)).toNat * A054525 (n + 1)

end

end A143809.P14964647429528977711

/-! ## A143809.P7415731500833985312

`A007554(A050873(n+1))*A054525(n+1)`
-/

namespace A143809.P7415731500833985312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007554 (A050873 (n + 1)).toNat * A054525 (n + 1)

end

end A143809.P7415731500833985312

/-! ## A143809.P17482329336749585658

`A007554(A112544(n+1))*A054525(n+1)`
-/

namespace A143809.P17482329336749585658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007554 (A112544 (n + 1)).toNat * A054525 (n + 1)

end

end A143809.P17482329336749585658

/-! ## A143809.P1125291818934421747

`A007554(A123275(n+1))*A054525(n+1)`
-/

namespace A143809.P1125291818934421747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007554 (A123275 (n + 1)).toNat * A054525 (n + 1)

end

end A143809.P1125291818934421747

/-! ## A143809.P11719998394711259891

`A007554(A307662(n+1))*A054525(n+1)`
-/

namespace A143809.P11719998394711259891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007554 (A307662 (n + 1)).toNat * A054525 (n + 1)

end

end A143809.P11719998394711259891

/-!
# A143810: Eigentriangle of A051731, the inverse Mobius transform.

The programs for A143810, there is no canonical definition to state claims against.
-/

/-! ## A143810.P18282565557007234398

`A003238(A002260(n+1))*A051731(n+1)`
-/

namespace A143810.P18282565557007234398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A143810.P18282565557007234398

/-! ## A143810.P3136489154386585336

`A003238(A002262(n)+1)*A051731(n+1)`
-/

namespace A143810.P3136489154386585336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A002262 n + 1).toNat * A051731 (n + 1)

end

end A143810.P3136489154386585336

/-! ## A143810.P10431254628671610389

`A003238(A050873(n+1))*A051731(n+1)`
-/

namespace A143810.P10431254628671610389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A050873 (n + 1)).toNat * A051731 (n + 1)

end

end A143810.P10431254628671610389

/-! ## A143810.P12977941927815511525

`A003238(A123275(n+1))*A051731(n+1)`
-/

namespace A143810.P12977941927815511525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A123275 (n + 1)).toNat * A051731 (n + 1)

end

end A143810.P12977941927815511525

/-! ## A143810.P5134978099965205545

`A003238(A134226(n+1))*A051731(n+1)`
-/

namespace A143810.P5134978099965205545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A134226 (n + 1)).toNat * A051731 (n + 1)

end

end A143810.P5134978099965205545

/-! ## A143810.P3327842939940380845

`A003238(sqrt(A133819(n+1)))*A051731(n+1)`
-/

namespace A143810.P3327842939940380845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat * A051731 (n + 1)

end

end A143810.P3327842939940380845

/-! ## A143810.P10797876074218240363

`A003238(A002260(n+1))*A057427(A054522(n+1))`
-/

namespace A143810.P10797876074218240363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A002260 (n + 1)).toNat * A057427 (A054522 (n + 1)).toNat

end

end A143810.P10797876074218240363

/-! ## A143810.P7968454921058643511

`A003238(A307662(n+1))*A051731(n+1)`
-/

namespace A143810.P7968454921058643511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A307662 (n + 1)).toNat * A051731 (n + 1)

end

end A143810.P7968454921058643511

/-! ## A143810.P14192678083147722455

`A003238(A112544(n+1))*A051731(n+1)`
-/

namespace A143810.P14192678083147722455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A112544 (n + 1)).toNat * A051731 (n + 1)

end

end A143810.P14192678083147722455

/-! ## A143810.P17902959440269617227

`A152434(A133137(n+1))`
-/

namespace A143810.P17902959440269617227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152434 (A133137 (n + 1)).toNat

end

end A143810.P17902959440269617227

/-!
# A143811: Number of numbers k

The programs for A143811, there is no canonical definition to state claims against.
-/

/-! ## A143811.P18382130092481279833

`A242830(n+1)+1`
-/

namespace A143811.P18382130092481279833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1) + 1

end

end A143811.P18382130092481279833

/-! ## A143811.P7981098799274113961

`A199343(A242830(n+1))`
-/

namespace A143811.P7981098799274113961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A242830 (n + 1)).toNat

end

end A143811.P7981098799274113961

/-! ## A143811.P16469814426990788438

`A348553(A242830(sqrt(record[(1-n)²])))`
-/

namespace A143811.P16469814426990788438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A242830 (SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))).toNat).toNat

end

end A143811.P16469814426990788438

/-! ## A143811.P10145265182424646246

`gcd(A006881(A257221(n+1)), A121015(n+1))`
-/

namespace A143811.P10145265182424646246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006881 (A257221 (n + 1)).toNat) (A121015 (n + 1))

end

end A143811.P10145265182424646246

/-! ## A143811.P9952205799110281643

`gcd(A087605(n+1), A357486(A038497(2*n+5)))`
-/

namespace A143811.P9952205799110281643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087605 (n + 1)) (A357486 (A038497 (2 * n + 5)).toNat)

end

end A143811.P9952205799110281643

/-!
# A143813: Sum of two powerful numbers greater than 1.

The programs for A143813, there is no canonical definition to state claims against.
-/

/-! ## A143813.P17667125055795189128

`A290135(n+1)%A140261(2*n+1)²`
-/

namespace A143813.P17667125055795189128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290135 (n + 1)) (A140261 (2 * n + 1) ^ 2)

end

end A143813.P17667125055795189128

/-! ## A143813.P6758771914183590301

`A290135(n+1)+A000007(A000048(n))`
-/

namespace A143813.P6758771914183590301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290135 (n + 1) + A000007 (A000048 n).toNat

end

end A143813.P6758771914183590301

/-! ## A143813.P11425656850006210605

`A290135(n+1)%A096455(A290133(n))`
-/

namespace A143813.P11425656850006210605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290135 (n + 1)) (A096455 (A290133 n).toNat)

end

end A143813.P11425656850006210605

/-! ## A143813.P1065408583182234422

`A290135(n+1)+A000007(A233862(n+1))`
-/

namespace A143813.P1065408583182234422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290135 (n + 1) + A000007 (A233862 (n + 1)).toNat

end

end A143813.P1065408583182234422

/-! ## A143813.P14834477079840479738

`A290135(n+1)+A185274(A074761(n+1))`
-/

namespace A143813.P14834477079840479738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290135 (n + 1) + A185274 (A074761 (n + 1)).toNat

end

end A143813.P14834477079840479738

/-!
# A143814: Triangle T(n,m) read along rows: T(n,m) = n^2 - (m+1)^2 for 1<=m

The programs for A143814, the canonical program `A143814.P4129932359816056538` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143814 has offset 2).

The definition of A143814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143814.P12945052979870016562

`(n-comp[∑[n]])²-A002260(n+2)²`
-/

namespace A143814.P12945052979870016562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - A002260 (n + 2) ^ 2

end

end A143814.P12945052979870016562

namespace A143814

/-- `(n-comp[∑[n]])²-A002260(n+2)²` -/
def P12945052979870016562.Spec : Prop :=
  ∀ n, P12945052979870016562.a n = A143814 (n + 2)

end A143814

/-! ## A143814.P4129932359816056538

`A120070(3-A127648(n)+n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A143814

/-- `A120070(3-A127648(n)+n)` -/
def P4129932359816056538.Spec : Prop :=
  ∀ n, P4129932359816056538.a n = A143814 (n + 2)

theorem P4129932359816056538.correct : P4129932359816056538.Spec := by
  intro n
  simp only [A143814, Nat.add_sub_cancel]

end A143814

/-! ## A143814.P982683486978798117

`A120070(n+2)-Δ[A002260(n+1)²]`
-/

namespace A143814.P982683486978798117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) - (f1 (n + 1) - f1 n)

end

end A143814.P982683486978798117

namespace A143814

/-- `A120070(n+2)-Δ[A002260(n+1)²]` -/
def P982683486978798117.Spec : Prop :=
  ∀ n, P982683486978798117.a n = A143814 (n + 2)

end A143814

/-! ## A143814.P17752470932182037419

`A140978(n+1)-A002260(n+2)*A002260(n+2)`
-/

namespace A143814.P17752470932182037419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 (n + 1) - A002260 (n + 2) * A002260 (n + 2)

end

end A143814.P17752470932182037419

namespace A143814

/-- `A140978(n+1)-A002260(n+2)*A002260(n+2)` -/
def P17752470932182037419.Spec : Prop :=
  ∀ n, P17752470932182037419.a n = A143814 (n + 2)

end A143814

/-! ## A143814.P7595144251391968394

`(n-comp[∑[n]])²-A133819(n+2)`
-/

namespace A143814.P7595144251391968394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - A133819 (n + 2)

end

end A143814.P7595144251391968394

namespace A143814

/-- `(n-comp[∑[n]])²-A133819(n+2)` -/
def P7595144251391968394.Spec : Prop :=
  ∀ n, P7595144251391968394.a n = A143814 (n + 2)

end A143814

/-! ## A143814.P68188854836336369

`A120070(Δ[A002262(n)]+n+2)`
-/

namespace A143814.P68188854836336369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (f1 (n + 1) - f1 n + (n + 2 : ℤ)).toNat

end

end A143814.P68188854836336369

namespace A143814

/-- `A120070(Δ[A002262(n)]+n+2)` -/
def P68188854836336369.Spec : Prop :=
  ∀ n, P68188854836336369.a n = A143814 (n + 2)

end A143814

/-! ## A143814.P634182481944212161

`A120070(n+2)-Δ[A133819(n+1)]`
-/

namespace A143814.P634182481944212161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) - (f1 (n + 1) - f1 n)

end

end A143814.P634182481944212161

namespace A143814

/-- `A120070(n+2)-Δ[A133819(n+1)]` -/
def P634182481944212161.Spec : Prop :=
  ∀ n, P634182481944212161.a n = A143814 (n + 2)

end A143814

/-! ## A143814.P15417287320897720927

`A055096(n+2)-(A133819(n+1)+A133819(n+2))`
-/

namespace A143814.P15417287320897720927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) - (A133819 (n + 1) + A133819 (n + 2))

end

end A143814.P15417287320897720927

namespace A143814

/-- `A055096(n+2)-(A133819(n+1)+A133819(n+2))` -/
def P15417287320897720927.Spec : Prop :=
  ∀ n, P15417287320897720927.a n = A143814 (n + 2)

end A143814

/-! ## A143814.P7099110304013118794

`A133819(n+1)+A120070(n+2)-A133819(n+2)`
-/

namespace A143814.P7099110304013118794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) + (A120070 (n + 2) - A133819 (n + 2))

end

end A143814.P7099110304013118794

namespace A143814

/-- `A133819(n+1)+A120070(n+2)-A133819(n+2)` -/
def P7099110304013118794.Spec : Prop :=
  ∀ n, P7099110304013118794.a n = A143814 (n + 2)

end A143814

/-! ## A143814.P329882992214891032

`A140978(n+1)+A140978(n+2)-A055096(n+3)`
-/

namespace A143814.P329882992214891032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 (n + 1) + (A140978 (n + 2) - A055096 (n + 3))

end

end A143814.P329882992214891032

namespace A143814

/-- `A140978(n+1)+A140978(n+2)-A055096(n+3)` -/
def P329882992214891032.Spec : Prop :=
  ∀ n, P329882992214891032.a n = A143814 (n + 2)

end A143814

/-! ## A143814.P3060046988098213066

`A140978(n+1)+A120070(n+3)-A140978(n+2)`
-/

namespace A143814.P3060046988098213066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 (n + 1) + (A120070 (n + 3) - A140978 (n + 2))

end

end A143814.P3060046988098213066

namespace A143814

/-- `A140978(n+1)+A120070(n+3)-A140978(n+2)` -/
def P3060046988098213066.Spec : Prop :=
  ∀ n, P3060046988098213066.a n = A143814 (n + 2)

end A143814

/-! ## A143814.P13716357030146666604

`A140978(n+1)-A133820(n+2)/A002260(n+2)`
-/

namespace A143814.P13716357030146666604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140978 (n + 1) : ℚ) - (A133820 (n + 2) : ℚ) / (A002260 (n + 2) : ℚ)

end

end A143814.P13716357030146666604

namespace A143814

/-- `A140978(n+1)-A133820(n+2)/A002260(n+2)` -/
def P13716357030146666604.Spec : Prop :=
  ∀ n, P13716357030146666604.a n = (A143814 (n + 2) : ℚ)

end A143814

/-!
# A143815: Let A(0)=1, B(0)=0 and C(0)=0. Let B(n+1) = Sum_{k = 0..n} binomial(n,k)*A(k), C(n+1) = Sum_{k = 0..n} binomial(n,k)*B(k) and A(n+1) = Sum_{k = 0..n} binomial(n,k)*C(k). This entry gives the sequence A(n).

The programs for A143815, there is no canonical definition to state claims against.
-/

/-! ## A143815.P9068676784184402002

`A000110(n)-(A143817(n)+A143816(n))`
-/

namespace A143815.P9068676784184402002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - (A143817 n + A143816 n)

end

end A143815.P9068676784184402002

/-! ## A143815.P1297837943388436223

`A357293(A046691(n+2))`
-/

namespace A143815.P1297837943388436223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357293 (A046691 (n + 2)).toNat

end

end A143815.P1297837943388436223

/-! ## A143815.P14190862447942257761

`A357293(A155212(n)+4)`
-/

namespace A143815.P14190862447942257761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357293 (A155212 n + 4).toNat

end

end A143815.P14190862447942257761

/-! ## A143815.P73448062964860632

`A357293(A052905(n+1)+1)`
-/

namespace A143815.P73448062964860632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357293 (A052905 (n + 1) + 1).toNat

end

end A143815.P73448062964860632

/-! ## A143815.P2331322655598400687

`A357293(A000217(n+4)-4)`
-/

namespace A143815.P2331322655598400687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357293 (A000217 (n + 4) - 4).toNat

end

end A143815.P2331322655598400687

/-!
# A143816: Let A(0) = 1, B(0) = 0 and C(0) = 0. Let B(n+1) = Sum_{k = 0..n} binomial(n,k)* A(k), C(n+1) = Sum_{k = 0..n} binomial(n,k)*B(k) and A(n+1) = Sum_{k = 0..n} binomial(n,k)*C(k). This entry gives the sequence B(n).

The programs for A143816, there is no canonical definition to state claims against.
-/

/-! ## A143816.P2895579366490432182

`A143818(n+1)+A143817(n)`
-/

namespace A143816.P2895579366490432182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143818 (n + 1) + A143817 n

end

end A143816.P2895579366490432182

/-! ## A143816.P3963203128306967732

`A000110(n)-(A143817(n)+A143815(n))`
-/

namespace A143816.P3963203128306967732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - (A143817 n + A143815 n)

end

end A143816.P3963203128306967732

/-! ## A143816.P13492245074086253371

`A043281(A149715(n))-A354393(n)`
-/

namespace A143816.P13492245074086253371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A149715 n).toNat - A354393 n

end

end A143816.P13492245074086253371

/-!
# A143817: Let A(0) = 1, B(0) = 0 and C(0) = 0. Let B(n+1) = Sum_{k = 0..n} binomial(n,k)* A(k), C(n+1) = Sum_{k = 0..n} binomial(n,k)*B(k) and A(n+1) = Sum_{k = 0..n} binomial(n,k)*C(k). This entry gives the sequence C(n).

The programs for A143817, there is no canonical definition to state claims against.
-/

/-! ## A143817.P2067816764144977341

`A143816(n)-A143818(n+1)`
-/

namespace A143817.P2067816764144977341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143816 n - A143818 (n + 1)

end

end A143817.P2067816764144977341

/-! ## A143817.P2142383961730296897

`A000110(n)-(A143816(n)+A143815(n))`
-/

namespace A143817.P2142383961730296897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - (A143816 n + A143815 n)

end

end A143817.P2142383961730296897

/-! ## A143817.P14322894361980091319

`abs(A292935(n))-(A143816(n)+A143815(n))`
-/

namespace A143817.P14322894361980091319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - (A143816 n + A143815 n)

end

end A143817.P14322894361980091319

/-! ## A143817.P11360157330048708538

`A011971(∑[n])-(A143816(n)+A143815(n))`
-/

namespace A143817.P11360157330048708538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - (A143816 n + A143815 n)

end

end A143817.P11360157330048708538

/-! ## A143817.P2263911422115281370

`Δ[A005001(n)]-(A143816(n)+A143815(n))`
-/

namespace A143817.P2263911422115281370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A143816 n + A143815 n)

end

end A143817.P2263911422115281370

/-!
# A143818: Let R(n) = sum {k = 0..inf} (3k)^n/(3k)! for n = 0,1,2,... . Then the real number R(n) is an integral linear combination of R(0), R(1) and R(2). This sequence gives the coefficients of R(1).

The programs for A143818, there is no canonical definition to state claims against.
-/

/-! ## A143818.P3755279257388347667

`A143816(n)-A143817(n)`
-/

namespace A143818.P3755279257388347667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143816 n - A143817 n

end

end A143818.P3755279257388347667

/-! ## A143818.P6867563583503064243

`A143816(n)+A143817(n)*A339792(A283711(n+1))`
-/

namespace A143818.P6867563583503064243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143816 n + A143817 n * A339792 (A283711 (n + 1)).toNat

end

end A143818.P6867563583503064243

/-! ## A143818.P14179711177457062624

`A000110(n)-(A143817(n)+A143815(n))-A143817(n)`
-/

namespace A143818.P14179711177457062624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - (A143817 n + A143815 n) - A143817 n

end

end A143818.P14179711177457062624

/-! ## A143818.P550731607167494329

`A143816(n)-(A000110(n)-(A143816(n)+A143815(n)))`
-/

namespace A143818.P550731607167494329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143816 n - (A000110 n - (A143816 n + A143815 n))

end

end A143818.P550731607167494329

/-!
# A143822: Primes p such that sigma_0((p*p + 1)/2) = 4.

The programs for A143822, the canonical program `A143822.P15171175394952669616` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143822 has offset 1).

The definition of A143822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143822.P17166437040529136361

`∩[A080401(n+1), A181570(n+1)]`
-/

namespace A143822.P17166437040529136361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143822.P17166437040529136361

namespace A143822

/-- `∩[A080401(n+1), A181570(n+1)]` -/
def P17166437040529136361.Spec : Prop :=
  ∀ n, (P17166437040529136361.a n : ℤ) = A143822 (n + 1)

end A143822

/-! ## A143822.P15171175394952669616

`∩[A181570(n+1), A225856(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A143822

/-- `∩[A181570(n+1), A225856(n+1)]` -/
def P15171175394952669616.Spec : Prop :=
  ∀ n, (P15171175394952669616.a n : ℤ) = A143822 (n + 1)

theorem P15171175394952669616.correct : P15171175394952669616.Spec := by
  intro n
  simp only [A143822, Nat.add_sub_cancel]

end A143822

/-! ## A143822.P4314555333957938714

`∩[A050798(n+1), A225856(n+1)]`
-/

namespace A143822.P4314555333957938714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143822.P4314555333957938714

namespace A143822

/-- `∩[A050798(n+1), A225856(n+1)]` -/
def P4314555333957938714.Spec : Prop :=
  ∀ n, (P4314555333957938714.a n : ℤ) = A143822 (n + 1)

end A143822

/-! ## A143822.P5323837321778534209

`∩[A181570(n+1), A326310(n+1)]`
-/

namespace A143822.P5323837321778534209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143822.P5323837321778534209

namespace A143822

/-- `∩[A181570(n+1), A326310(n+1)]` -/
def P5323837321778534209.Spec : Prop :=
  ∀ n, (P5323837321778534209.a n : ℤ) = A143822 (n + 1)

end A143822

/-! ## A143822.P2508703447705032376

`∩[A134427(n+1), A181570(n+1)]`
-/

namespace A143822.P2508703447705032376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143822.P2508703447705032376

namespace A143822

/-- `∩[A134427(n+1), A181570(n+1)]` -/
def P2508703447705032376.Spec : Prop :=
  ∀ n, (P2508703447705032376.a n : ℤ) = A143822 (n + 1)

end A143822

/-! ## A143822.P7712656211053628507

`∩[A049533(n+1), A181570(n+1)]`
-/

namespace A143822.P7712656211053628507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143822.P7712656211053628507

namespace A143822

/-- `∩[A049533(n+1), A181570(n+1)]` -/
def P7712656211053628507.Spec : Prop :=
  ∀ n, (P7712656211053628507.a n : ℤ) = A143822 (n + 1)

end A143822

/-! ## A143822.P12768507756236027346

`p?[(n+1)*A004198(A147810(n+1))]`
-/

namespace A143822.P12768507756236027346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004198 (A147810 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143822.P12768507756236027346

namespace A143822

/-- `p?[(n+1)*A004198(A147810(n+1))]` -/
def P12768507756236027346.Spec : Prop :=
  ∀ n, P12768507756236027346.a n = A143822 (n + 1)

end A143822

/-! ## A143822.P487638217591251241

`p?[(2*n+1)*A174239(A147809(2*n+1))]`
-/

namespace A143822.P487638217591251241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A174239 (A147809 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143822.P487638217591251241

namespace A143822

/-- `p?[(2*n+1)*A174239(A147809(2*n+1))]` -/
def P487638217591251241.Spec : Prop :=
  ∀ n, P487638217591251241.a n = A143822 (n + 1)

end A143822

/-! ## A143822.P8896989544637760083

`p?[(n+1)*(A147809(n+1)-A000005(n+1))]`
-/

namespace A143822.P8896989544637760083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A147809 (n + 1) - A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143822.P8896989544637760083

namespace A143822

/-- `p?[(n+1)*(A147809(n+1)-A000005(n+1))]` -/
def P8896989544637760083.Spec : Prop :=
  ∀ n, P8896989544637760083.a n = A143822 (n + 1)

end A143822

/-! ## A143822.P18324393589474756366

`eq[A003415(n), A008292(A333167(n))]`
-/

namespace A143822.P18324393589474756366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A333167 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143822.P18324393589474756366

namespace A143822

/-- `eq[A003415(n), A008292(A333167(n))]` -/
def P18324393589474756366.Spec : Prop :=
  ∀ n, (P18324393589474756366.a n : ℤ) = A143822 (n + 1)

end A143822

/-! ## A143822.P2804776369253794394

`eq[A061601(A193432(n)), A284289(n)]`
-/

namespace A143822.P2804776369253794394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A193432 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143822.P2804776369253794394

namespace A143822

/-- `eq[A061601(A193432(n)), A284289(n)]` -/
def P2804776369253794394.Spec : Prop :=
  ∀ n, (P2804776369253794394.a n : ℤ) = A143822 (n + 1)

end A143822

/-! ## A143822.P5422431146247124805

`A000040(eq[3, A147809(A008578(n+1))])`
-/

namespace A143822.P5422431146247124805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143822.P5422431146247124805

namespace A143822

/-- `A000040(eq[3, A147809(A008578(n+1))])` -/
def P5422431146247124805.Spec : Prop :=
  ∀ n, P5422431146247124805.a n = A143822 (n + 1)

end A143822

/-! ## A143822.P9243048444336328213

`p?[A174239(A147809(2*n+1))*A174239(2*n)]`
-/

namespace A143822.P9243048444336328213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174239 (A147809 (2 * n + 1)).toNat * A174239 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143822.P9243048444336328213

namespace A143822

/-- `p?[A174239(A147809(2*n+1))*A174239(2*n)]` -/
def P9243048444336328213.Spec : Prop :=
  ∀ n, P9243048444336328213.a n = A143822 (n + 1)

end A143822

/-! ## A143822.P6486445605090945081

`p?[A272078(n+1)]`
-/

namespace A143822.P6486445605090945081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143822.P6486445605090945081

namespace A143822

/-- `p?[A272078(n+1)]` -/
def P6486445605090945081.Spec : Prop :=
  ∀ n, P6486445605090945081.a n = A143822 (n + 1)

end A143822

/-! ## A143822.P3770636734268378789

`filter[A272078(n+1), A010051(#)]`
-/

namespace A143822.P3770636734268378789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A143822.P3770636734268378789

namespace A143822

/-- `filter[A272078(n+1), A010051(#)]` -/
def P3770636734268378789.Spec : Prop :=
  ∀ n, P3770636734268378789.a n = A143822 (n + 1)

end A143822

/-! ## A143822.P224943193933949044

`filter[A272078(n+1), A080339(#)]`
-/

namespace A143822.P224943193933949044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A143822.P224943193933949044

namespace A143822

/-- `filter[A272078(n+1), A080339(#)]` -/
def P224943193933949044.Spec : Prop :=
  ∀ n, P224943193933949044.a n = A143822 (n + 1)

end A143822

/-! ## A143822.P10358578464864775314

`filter[A272078(n+1), A080545(#)]`
-/

namespace A143822.P10358578464864775314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A143822.P10358578464864775314

namespace A143822

/-- `filter[A272078(n+1), A080545(#)]` -/
def P10358578464864775314.Spec : Prop :=
  ∀ n, P10358578464864775314.a n = A143822 (n + 1)

end A143822

/-! ## A143822.P1915145980582375697

`filter[A272078(n+1), A171387(#)]`
-/

namespace A143822.P1915145980582375697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A143822.P1915145980582375697

namespace A143822

/-- `filter[A272078(n+1), A171387(#)]` -/
def P1915145980582375697.Spec : Prop :=
  ∀ n, P1915145980582375697.a n = A143822 (n + 1)

end A143822

/-! ## A143822.P3480885833897095251

`filter[A272078(n+1), A323153(#)]`
-/

namespace A143822.P3480885833897095251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A143822.P3480885833897095251

namespace A143822

/-- `filter[A272078(n+1), A323153(#)]` -/
def P3480885833897095251.Spec : Prop :=
  ∀ n, P3480885833897095251.a n = A143822 (n + 1)

end A143822

/-! ## A143822.P17855113302653801108

`∩[A000040(n+1), A272078(n+1)]`
-/

namespace A143822.P17855113302653801108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143822.P17855113302653801108

namespace A143822

/-- `∩[A000040(n+1), A272078(n+1)]` -/
def P17855113302653801108.Spec : Prop :=
  ∀ n, (P17855113302653801108.a n : ℤ) = A143822 (n + 1)

end A143822

/-!
# A143823: Number of subsets {x(1),x(2),...,x(k)} of {1,2,...,n} such that all differences |x(i)-x(j)| are distinct.

The programs for A143823, there is no canonical definition to state claims against.
-/

/-! ## A143823.P3161657634794766761

`∑[A308251(abs(1-n))]-1`
-/

namespace A143823.P3161657634794766761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A143823.P3161657634794766761

/-! ## A143823.P10271650762509955550

`A308251(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A143823.P10271650762509955550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A308251 (n - 1) + a (n - 1)

end

end A143823.P10271650762509955550

/-! ## A143823.P15914491174257155705

`∑[A308251(round(sqrt(n²+1))-1)]`
-/

namespace A143823.P15914491174257155705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143823.P15914491174257155705

/-! ## A143823.P10746767012205739355

`A054578(n)+a(floor(n/(n+1)))` with `a(0)=1`
-/

namespace A143823.P10746767012205739355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054578 n + a ⌊(n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A143823.P10746767012205739355

/-! ## A143823.P9727357478593661250

`A308251(A028310(n)-1)-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A143823.P9727357478593661250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A308251 (A028310 n - 1).toNat - (-a (n - 1))

end

end A143823.P9727357478593661250

/-!
# A143824: Size of the largest subset {x(1),x(2),...,x(k)} of {1,2,...,n} with the property that all differences |x(i)-x(j)| are distinct.

The programs for A143824, there is no canonical definition to state claims against.
-/

/-! ## A143824.P4480232798644592251

`∑[char[A227590(n+1)]]`
-/

namespace A143824.P4480232798644592251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227590 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143824.P4480232798644592251

/-! ## A143824.P13916237723931290526

`A001489(n)+comp[A227590(n+1)+n]`
-/

namespace A143824.P13916237723931290526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227590 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A143824.P13916237723931290526

/-! ## A143824.P16622508680156137432

`(A100855(n)+comp[A227590(n+1)+n])%(n+1)`
-/

namespace A143824.P16622508680156137432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227590 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100855 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)) (n + 1 : ℤ)

end

end A143824.P16622508680156137432

/-! ## A143824.P9527421800519537806

`(comp[A227590(n+1)+n]+n+1)%(A005843(n)+1)`
-/

namespace A143824.P9527421800519537806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227590 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1) : ℤ) (A005843 n + 1)

end

end A143824.P9527421800519537806

/-! ## A143824.P18242365704737183997

`(A008619(2*n)+comp[A227590(n+1)+n])%-(n+1+n)`
-/

namespace A143824.P18242365704737183997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227590 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)) (-(n + 1 + n : ℤ))

end

end A143824.P18242365704737183997

/-! ## A143824.P16980458551888505694

`A325678(n-A057427(n))+A057427(n)`
-/

namespace A143824.P16980458551888505694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 ((n : ℤ) - A057427 n).toNat + A057427 n

end

end A143824.P16980458551888505694

/-! ## A143824.P1909715670882593065

`A325678(A057428(n)+n)-A057428(n)`
-/

namespace A143824.P1909715670882593065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A057428 n + (n : ℤ)).toNat - A057428 n

end

end A143824.P1909715670882593065

/-! ## A143824.P2102126704533763374

`A325678(A057428(n)+n)+char[A126759(n)]`
-/

namespace A143824.P2102126704533763374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A057428 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A143824.P2102126704533763374

/-! ## A143824.P10557219215316115435

`A325678(A057428(n)+n)+and(1, A000040(n+1))`
-/

namespace A143824.P10557219215316115435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A057428 n + (n : ℤ)).toNat + Int.land 1 (A000040 (n + 1))

end

end A143824.P10557219215316115435

/-!
# A143825: This sequence displays every positive integer exactly three times; there is one number between the first and second 1's and one number between the second and third 1's; two numbers between the first and second 2's and two numbers between the second and third 2's; ... n numbers between the first and second n's and n numbers between the second and third n's.

The programs for A143825, there is no canonical definition to state claims against.
-/

/-! ## A143825.P3483808859624768096

`A307664(n+4)-1`
-/

namespace A143825.P3483808859624768096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307664 (n + 4) - 1

end

end A143825.P3483808859624768096

/-! ## A143825.P8645483746869575127

`A023443(A307664(n+4))`
-/

namespace A143825.P8645483746869575127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A307664 (n + 4)).toNat

end

end A143825.P8645483746869575127

/-! ## A143825.P4125112113934706966

`A259361(A307664(n+4)²)`
-/

namespace A143825.P4125112113934706966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A307664 (n + 4) ^ 2).toNat

end

end A143825.P4125112113934706966

/-! ## A143825.P1766454090489291092

`A349315(A307664(n+4)+8)`
-/

namespace A143825.P1766454090489291092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349315 (A307664 (n + 4) + 8).toNat

end

end A143825.P1766454090489291092

/-! ## A143825.P2579780230012024785

`A307662(C(A307664(n+4), 2))`
-/

namespace A143825.P2579780230012024785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307662 (Nat.choose (A307664 (n + 4)).toNat 2)

end

end A143825.P2579780230012024785

/-! ## A143825.P7165065646511975578

`abs(A307664(n+4)+ratio[A033999(n)])`
-/

namespace A143825.P7165065646511975578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A307664 (n + 4) : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)|

end

end A143825.P7165065646511975578

/-! ## A143825.P6016978631493895804

`abs(A307664(n+4)+A057428(n+1))`
-/

namespace A143825.P6016978631493895804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307664 (n + 4) + A057428 (n + 1)|

end

end A143825.P6016978631493895804

/-! ## A143825.P12894314899641387224

`A000196(A335285(A307664(n+4)²))`
-/

namespace A143825.P12894314899641387224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A335285 (A307664 (n + 4) ^ 2).toNat).toNat

end

end A143825.P12894314899641387224

/-!
# A143826: Numbers k such that 6*k^2 - 1 is prime.

The programs for A143826, there is no canonical definition to state claims against.
-/

/-! ## A143826.P18129833781736964466

`ceil(sqrt(A090686(n+1)/6))`
-/

namespace A143826.P18129833781736964466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A090686 (n + 1) : ℚ) / 6 : ℝ)⌉

end

end A143826.P18129833781736964466

/-! ## A143826.P6072507678830859946

`round(sqrt(A090686(n+1)/6))%A155212(n)`
-/

namespace A143826.P6072507678830859946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A090686 (n + 1) : ℚ) / 6 : ℝ))) (A155212 n)

end

end A143826.P6072507678830859946

/-! ## A143826.P18334318344799961889

`floor(sqrt(A135506(n+1)+A090686(n+1)/6))`
-/

namespace A143826.P18334318344799961889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A135506 (n + 1) : ℚ) + (A090686 (n + 1) : ℚ) / 6 : ℝ)⌋

end

end A143826.P18334318344799961889

/-! ## A143826.P5148303882267209313

`floor(sqrt(A237270(n+1)+A090686(n+1)/6))`
-/

namespace A143826.P5148303882267209313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A237270 (n + 1) : ℚ) + (A090686 (n + 1) : ℚ) / 6 : ℝ)⌋

end

end A143826.P5148303882267209313

/-! ## A143826.P11558455841453827190

`round(sqrt(A090686(n+1)/6)*A000034(2*n))`
-/

namespace A143826.P11558455841453827190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A090686 (n + 1) : ℚ) / 6 : ℝ) * (A000034 (2 * n) : ℝ))

end

end A143826.P11558455841453827190

/-! ## A143826.P6790355614671941597

`floor(A014963(12*n+6)+sqrt(A090686(n+1)/6))`
-/

namespace A143826.P6790355614671941597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (12 * n + 6) : ℝ) + Real.sqrt ((A090686 (n + 1) : ℚ) / 6 : ℝ)⌋

end

end A143826.P6790355614671941597

/-! ## A143826.P10513661122029251395

`lt[A209494(n+1), 4]+1`
-/

namespace A143826.P10513661122029251395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209494 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A143826.P10513661122029251395

/-! ## A143826.P18138440647020201263

`record[A103517(n)/A000010(A209494(n+1))]`
-/

namespace A143826.P18138440647020201263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A000010 (A209494 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143826.P18138440647020201263

/-! ## A143826.P4915912063836726460

`record[A000027(n+1)/A004525(A209494(n+1))]`
-/

namespace A143826.P4915912063836726460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A004525 (A209494 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143826.P4915912063836726460

/-! ## A143826.P15852456117611267156

`record[A008619(2*n)/A004525(A209494(n+1))]`
-/

namespace A143826.P15852456117611267156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A004525 (A209494 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143826.P15852456117611267156

/-! ## A143826.P322782971432779978

`eq[1, A001222(∑{d}[3*n*2*n-1, #%2])]`
-/

namespace A143826.P322782971432779978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n * (2 * n) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f3 n).natAbs, d % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143826.P322782971432779978

/-!
# A143827: Numbers k such that 8*k^2 - 1 is prime.

The programs for A143827, the canonical program `A143827.P12553254748441384964` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143827 has offset 1).

The definition of A143827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143827.P12553254748441384964

`eq[2, A359438(2*n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143827

/-- `eq[2, A359438(2*n)]` -/
def P12553254748441384964.Spec : Prop :=
  ∀ n, (P12553254748441384964.a n : ℤ) = A143827 (n + 1)

theorem P12553254748441384964.correct : P12553254748441384964.Spec := by
  intro n
  simp only [A143827, Nat.add_sub_cancel]

end A143827

/-! ## A143827.P8783407949686255758

`eq[2, A230362(2*(n+1))]`
-/

namespace A143827.P8783407949686255758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230362 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143827.P8783407949686255758

namespace A143827

/-- `eq[2, A230362(2*(n+1))]` -/
def P8783407949686255758.Spec : Prop :=
  ∀ n, (P8783407949686255758.a n : ℤ) = A143827 (n + 1)

end A143827

/-! ## A143827.P7165282185097290760

`eq[A130824(n), A232176(n)]`
-/

namespace A143827.P7165282185097290760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143827.P7165282185097290760

namespace A143827

/-- `eq[A130824(n), A232176(n)]` -/
def P7165282185097290760.Spec : Prop :=
  ∀ n, (P7165282185097290760.a n : ℤ) = A143827 (n + 1)

end A143827

/-! ## A143827.P12793329280045760679

`record[A025480(A066049(n+1))]`
-/

namespace A143827.P12793329280045760679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A066049 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143827.P12793329280045760679

namespace A143827

/-- `record[A025480(A066049(n+1))]` -/
def P12793329280045760679.Spec : Prop :=
  ∀ n, P12793329280045760679.a n = A143827 (n + 1)

end A143827

/-! ## A143827.P15171746775720572784

`record[A032742(A066049(n+2))]`
-/

namespace A143827.P15171746775720572784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A066049 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143827.P15171746775720572784

namespace A143827

/-- `record[A032742(A066049(n+2))]` -/
def P15171746775720572784.Spec : Prop :=
  ∀ n, P15171746775720572784.a n = A143827 (n + 1)

end A143827

/-! ## A143827.P6487964885028839072

`eq[1, A230362(A103517(n))-1]`
-/

namespace A143827.P6487964885028839072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230362 (A103517 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143827.P6487964885028839072

namespace A143827

/-- `eq[1, A230362(A103517(n))-1]` -/
def P6487964885028839072.Spec : Prop :=
  ∀ n, (P6487964885028839072.a n : ℤ) = A143827 (n + 1)

end A143827

/-! ## A143827.P15009920080572839098

`record[A003602(A066049(n+1)-1)]`
-/

namespace A143827.P15009920080572839098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A066049 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143827.P15009920080572839098

namespace A143827

/-- `record[A003602(A066049(n+1)-1)]` -/
def P15009920080572839098.Spec : Prop :=
  ∀ n, P15009920080572839098.a n = A143827 (n + 1)

end A143827

/-! ## A143827.P18191568392973999786

`record[A131732(A066049(n+1)-2)]`
-/

namespace A143827.P18191568392973999786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A066049 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143827.P18191568392973999786

namespace A143827

/-- `record[A131732(A066049(n+1)-2)]` -/
def P18191568392973999786.Spec : Prop :=
  ∀ n, P18191568392973999786.a n = A143827 (n + 1)

end A143827

/-! ## A143827.P6341051647783316559

`A004526(eq[a(n-2)!, A230362(n+1)])` with `a(0)=0, a(1)=2`
-/

namespace A143827.P6341051647783316559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Nat.factorial (f1 (n - 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143827.P6341051647783316559

namespace A143827

/-- `A004526(eq[a(n-2)!, A230362(n+1)])` -/
def P6341051647783316559.Spec : Prop :=
  ∀ n, P6341051647783316559.a n = A143827 (n + 1)

end A143827

/-! ## A143827.P2535422689215781090

`record[A174571(2*A066049(n+1))]`
-/

namespace A143827.P2535422689215781090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A066049 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143827.P2535422689215781090

namespace A143827

/-- `record[A174571(2*A066049(n+1))]` -/
def P2535422689215781090.Spec : Prop :=
  ∀ n, P2535422689215781090.a n = A143827 (n + 1)

end A143827

/-! ## A143827.P921997527322445053

`record[A160697(n+1)/A020639(A160697(n+1))]`
-/

namespace A143827.P921997527322445053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160697 (n + 1) : ℚ) / (A020639 (A160697 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143827.P921997527322445053

namespace A143827

/-- `record[A160697(n+1)/A020639(A160697(n+1))]` -/
def P921997527322445053.Spec : Prop :=
  ∀ n, P921997527322445053.a n = (A143827 (n + 1) : ℚ)

end A143827

/-! ## A143827.P17636803010566922025

`record[A008611(A239970(2*n))-n]`
-/

namespace A143827.P17636803010566922025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A239970 (2 * n)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143827.P17636803010566922025

namespace A143827

/-- `record[A008611(A239970(2*n))-n]` -/
def P17636803010566922025.Spec : Prop :=
  ∀ n, P17636803010566922025.a n = A143827 (n + 1)

end A143827

/-! ## A143827.P5695027508797142434

`eq[1, A001222(∑{d}[4*n*2*n-1, #%2])]`
-/

namespace A143827.P5695027508797142434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n * (2 * n) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f3 n).natAbs, d % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143827.P5695027508797142434

namespace A143827

/-- `eq[1, A001222(∑{d}[4*n*2*n-1, #%2])]` -/
def P5695027508797142434.Spec : Prop :=
  ∀ n, (P5695027508797142434.a n : ℤ) = A143827 (n + 1)

end A143827

/-!
# A143828: Primes of the form 10*k^2 - 1.

The programs for A143828, there is no canonical definition to state claims against.
-/

/-! ## A143828.P289176492426829133

`A158447(A143829(n+1))`
-/

namespace A143828.P289176492426829133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158447 (A143829 (n + 1)).toNat

end

end A143828.P289176492426829133

/-! ## A143828.P14661183801868834678

`∩[A142335(n+1), A158447(n+1)]`
-/

namespace A143828.P14661183801868834678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143828.P14661183801868834678

/-! ## A143828.P17326677554436494135

`∩[A132236(n+1), A158447(n+1)]`
-/

namespace A143828.P17326677554436494135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143828.P17326677554436494135

/-! ## A143828.P16693449827461363806

`p?[10*n²-1]`
-/

namespace A143828.P16693449827461363806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143828.P16693449827461363806

/-! ## A143828.P10954264624605784927

`or(1, p?[n*10*n-1])`
-/

namespace A143828.P10954264624605784927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (10 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A143828.P10954264624605784927

/-!
# A143829: Numbers n such that 10n^2 - 1 is prime.

The programs for A143829, there is no canonical definition to state claims against.
-/

/-! ## A143829.P3898770068741859032

`ceil(sqrt(A143828(n+1)/10))`
-/

namespace A143829.P3898770068741859032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A143828 (n + 1) : ℚ) / 10 : ℝ)⌉

end

end A143829.P3898770068741859032

/-! ## A143829.P10964762209568339355

`round(sqrt(A000038(n)+A143828(n+1)/10))`
-/

namespace A143829.P10964762209568339355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A000038 n : ℚ) + (A143828 (n + 1) : ℚ) / 10 : ℝ))

end

end A143829.P10964762209568339355

/-! ## A143829.P3848433892728122805

`round(sqrt(A025469(n)+A143828(n+1)/10))`
-/

namespace A143829.P3848433892728122805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A025469 n : ℚ) + (A143828 (n + 1) : ℚ) / 10 : ℝ))

end

end A143829.P3848433892728122805

/-! ## A143829.P4348547223480369722

`floor(sqrt(A018252(n+1)+A143828(n+1)/10))`
-/

namespace A143829.P4348547223480369722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A018252 (n + 1) : ℚ) + (A143828 (n + 1) : ℚ) / 10 : ℝ)⌋

end

end A143829.P4348547223480369722

/-! ## A143829.P10879021566129389779

`floor(sqrt(A055050(n+1)+A143828(n+1)/10))`
-/

namespace A143829.P10879021566129389779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A055050 (n + 1) : ℚ) + (A143828 (n + 1) : ℚ) / 10 : ℝ)⌋

end

end A143829.P10879021566129389779

/-! ## A143829.P13102482117863784072

`round(sqrt(A000040(n+1)+A143828(n+1)/10))`
-/

namespace A143829.P13102482117863784072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A000040 (n + 1) : ℚ) + (A143828 (n + 1) : ℚ) / 10 : ℝ))

end

end A143829.P13102482117863784072

/-! ## A143829.P8470464514236327661

`round(sqrt(A143828(n+1)/10-A280504(n+1)))`
-/

namespace A143829.P8470464514236327661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A143828 (n + 1) : ℚ) / 10 - (A280504 (n + 1) : ℚ) : ℝ))

end

end A143829.P8470464514236327661

/-!
# A143830: Primes of the form 12*n^2-1.

The programs for A143830, there is no canonical definition to state claims against.
-/

/-! ## A143830.P16322540472806773934

`A089682(n+2)`
-/

namespace A143830.P16322540472806773934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089682 (n + 2)

end

end A143830.P16322540472806773934

/-! ## A143830.P17321327399284254342

`record[A089682(A291769(abs(1-n)))]`
-/

namespace A143830.P17321327399284254342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089682 (A291769 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143830.P17321327399284254342

/-! ## A143830.P5397277466477393624

`A158463(A143831(n+1))`
-/

namespace A143830.P5397277466477393624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158463 (A143831 (n + 1)).toNat

end

end A143830.P5397277466477393624

/-! ## A143830.P151961790100422106

`A158463(A089681(n+2)/2)`
-/

namespace A143830.P151961790100422106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158463 (SequenceMachineLib.roundAway ((A089681 (n + 2) : ℚ) / 2)).toNat

end

end A143830.P151961790100422106

/-! ## A143830.P6050859049461383144

`A080663(A089681(n+2))`
-/

namespace A143830.P6050859049461383144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080663 (A089681 (n + 2)).toNat

end

end A143830.P6050859049461383144

/-! ## A143830.P57348611488098095

`A188386(A089681(n+2)-1)`
-/

namespace A143830.P57348611488098095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188386 (A089681 (n + 2) - 1).toNat

end

end A143830.P57348611488098095

/-! ## A143830.P11232870489458238871

`A331952(2*A089681(n+2))`
-/

namespace A143830.P11232870489458238871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 (2 * A089681 (n + 2)).toNat

end

end A143830.P11232870489458238871

/-! ## A143830.P15703603919398598056

`A331952(A089681(n+2)+A089681(n+2))`
-/

namespace A143830.P15703603919398598056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 (A089681 (n + 2) + A089681 (n + 2)).toNat

end

end A143830.P15703603919398598056

/-! ## A143830.P14015034666926798903

`∩[A243009(n+1), A158463(n)]`
-/

namespace A143830.P14015034666926798903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143830.P14015034666926798903

/-! ## A143830.P17692629525708420908

`∩[A243009(n+1), A371154(n)]`
-/

namespace A143830.P17692629525708420908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371154 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143830.P17692629525708420908

/-! ## A143830.P5940975878844506134

`∩[A243009(n+2), A032765(n)]`
-/

namespace A143830.P5940975878844506134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143830.P5940975878844506134

/-! ## A143830.P11424547733429612218

`∩[A243009(n+2), A331952(n)]`
-/

namespace A143830.P11424547733429612218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143830.P11424547733429612218

/-! ## A143830.P5366327120670963934

`∩[A080663(n+1), A243009(n+2)]`
-/

namespace A143830.P5366327120670963934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143830.P5366327120670963934

/-! ## A143830.P5886504281440576581

`p?[12*n²-1]`
-/

namespace A143830.P5886504281440576581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143830.P5886504281440576581

/-!
# A143831: Numbers n such that 12n^2 - 1 is prime.

The programs for A143831, there is no canonical definition to state claims against.
-/

/-! ## A143831.P13240358686631396417

`A089681(n+2)/2`
-/

namespace A143831.P13240358686631396417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089681 (n + 2) : ℚ) / 2

end

end A143831.P13240358686631396417

/-! ## A143831.P12912104909767681458

`∑[A004525(Δ[A089681(n+1)])]`
-/

namespace A143831.P12912104909767681458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143831.P12912104909767681458

/-! ## A143831.P9696851975409366412

`∑[A026741(Δ[A089681(n+1)])]`
-/

namespace A143831.P9696851975409366412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143831.P9696851975409366412

/-! ## A143831.P17837743920481831981

`∑[A032742(Δ[A089681(n+1)])]`
-/

namespace A143831.P17837743920481831981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143831.P17837743920481831981

/-! ## A143831.P18357048527238346219

`∑[A065033(Δ[A089681(n+1)])]`
-/

namespace A143831.P18357048527238346219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143831.P18357048527238346219

/-! ## A143831.P5590841763046730202

`∑[A110654(Δ[A089681(n+1)])]`
-/

namespace A143831.P5590841763046730202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143831.P5590841763046730202

/-! ## A143831.P3464829944530471080

`∑[A008619(Δ[A089681(n+1)]-1)]`
-/

namespace A143831.P3464829944530471080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f2 (n + 1) - f2 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143831.P3464829944530471080

/-! ## A143831.P16002193075382052698

`A001281(A089681(n+2))`
-/

namespace A143831.P16002193075382052698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A089681 (n + 2)).toNat

end

end A143831.P16002193075382052698

/-! ## A143831.P13571985876902876921

`A008619(A089681(n+2)-1)`
-/

namespace A143831.P13571985876902876921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A089681 (n + 2) - 1).toNat

end

end A143831.P13571985876902876921

/-! ## A143831.P3486559287170310543

`A065033(A089681(n+2)-1)`
-/

namespace A143831.P3486559287170310543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A089681 (n + 2) - 1).toNat

end

end A143831.P3486559287170310543

/-! ## A143831.P2723362392995441379

`A110654(A089681(n+2)-1)`
-/

namespace A143831.P2723362392995441379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A089681 (n + 2) - 1).toNat

end

end A143831.P2723362392995441379

/-! ## A143831.P6261860168830186560

`record[A004525(A089681(A065648(n)))]`
-/

namespace A143831.P6261860168830186560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A089681 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143831.P6261860168830186560

/-! ## A143831.P16340474240169540423

`A060681(A089681(A020725(n+1)))`
-/

namespace A143831.P16340474240169540423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A089681 (A020725 (n + 1)).toNat).toNat

end

end A143831.P16340474240169540423

/-! ## A143831.P16084451947404716109

`A026741(A089681(n+1)+Δ[A089681(n+1)])`
-/

namespace A143831.P16084451947404716109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A089681 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A143831.P16084451947404716109

/-! ## A143831.P17517553727828297570

`A032742(A089681(n+1)+Δ[A089681(n+1)])`
-/

namespace A143831.P17517553727828297570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A089681 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A143831.P17517553727828297570

/-! ## A143831.P10303596373931909964

`eq[1, ∑{e}[2-A158480(n), #]]`
-/

namespace A143831.P10303596373931909964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A158480 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143831.P10303596373931909964

/-!
# A143832: Primes of the form 14 n^2-1.

The programs for A143832, there is no canonical definition to state claims against.
-/

/-! ## A143832.P6311625112761647504

`A158485(A143833(n+1))`
-/

namespace A143832.P6311625112761647504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158485 (A143833 (n + 1)).toNat

end

end A143832.P6311625112761647504

/-! ## A143832.P6848660945243748597

`p?[14*n²-1]`
-/

namespace A143832.P6848660945243748597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (14 * n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143832.P6848660945243748597

/-! ## A143832.P16629745738075012031

`∏{d}[p?[2*n*7*n-1], #]`
-/

namespace A143832.P16629745738075012031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * (7 * n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A143832.P16629745738075012031

/-! ## A143832.P16870826760083813136

`∑{p}[p?[2*n*7*n-1], #]`
-/

namespace A143832.P16870826760083813136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n * (7 * n)) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A143832.P16870826760083813136

/-! ## A143832.P12103740630621136993

`∏{p}[p?[abs(1-7*n*2*n)], #]`
-/

namespace A143832.P12103740630621136993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (7 * n * (2 * n) : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A143832.P12103740630621136993

/-! ## A143832.P7456027923052117671

`or(1, p?[A158485(n+1)])`
-/

namespace A143832.P7456027923052117671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A143832.P7456027923052117671

/-! ## A143832.P16531049498535979683

`or(1, p?[A195145(n)-1])`
-/

namespace A143832.P16531049498535979683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195145 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A143832.P16531049498535979683

/-! ## A143832.P10143997264569551251

`∑{d}[p?[A144555(n)-1], #]-1`
-/

namespace A143832.P10143997264569551251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A143832.P10143997264569551251

/-! ## A143832.P2879752276470876509

`and(1, A000045(n))!*p?[A158485(n+1)]`
-/

namespace A143832.P2879752276470876509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143832.P2879752276470876509

/-! ## A143832.P17627179750837018405

`p?[A195145(n)-1]+A008683(45*(n+1))`
-/

namespace A143832.P17627179750837018405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195145 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (45 * (n + 1))

end

end A143832.P17627179750837018405

/-!
# A143833: Numbers n such that 14n^2 - 1 is prime.

The programs for A143833, there is no canonical definition to state claims against.
-/

/-! ## A143833.P7754142836567583934

`record[A056926(A138622(n+1))]`
-/

namespace A143833.P7754142836567583934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A138622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143833.P7754142836567583934

/-! ## A143833.P10170105313511229870

`eq[1, A001222(14*(n+1)²-1)]+1`
-/

namespace A143833.P10170105313511229870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (14 * (n + 1) ^ 2 - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143833.P10170105313511229870

/-! ## A143833.P16730649005883492183

`record[(n+1)/A001222(A158485(n+1))]`
-/

namespace A143833.P16730649005883492183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (A158485 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143833.P16730649005883492183

/-! ## A143833.P3728517540794358573

`A326038(p?[14*n²-1])`
-/

namespace A143833.P3728517540794358573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (14 * n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143833.P3728517540794358573

/-! ## A143833.P13788245557963577723

`A326038(∏{d}[p?[2*n*7*n-1], #])`
-/

namespace A143833.P13788245557963577723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * (7 * n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A143833.P13788245557963577723

/-!
# A143834: Numbers k such that 2k^2 - 1 is not prime.

The programs for A143834, there is no canonical definition to state claims against.
-/

/-! ## A143834.P16629953198605059220

`comp[A066049(n+1)-1]+1`
-/

namespace A143834.P16629953198605059220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A143834.P16629953198605059220

/-! ## A143834.P16626103461119222507

`eq[A230362(n+2)²%8, A057427(n)]`
-/

namespace A143834.P16626103461119222507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230362 (n + 2) ^ 2) 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143834.P16626103461119222507

/-! ## A143834.P7266584835061191376

`eq[A000007(n), A035363(A230362(n+2))]`
-/

namespace A143834.P7266584835061191376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A230362 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143834.P7266584835061191376

/-! ## A143834.P2967302194306703461

`eq[A000038(n), A035363(A230362(n+2))]`
-/

namespace A143834.P2967302194306703461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A230362 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143834.P2967302194306703461

/-! ## A143834.P6727959319972921749

`eq[A000007(n), A244415(A230362(n+2)+8)]`
-/

namespace A143834.P6727959319972921749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A230362 (n + 2) + 8).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143834.P6727959319972921749

/-! ## A143834.P8884969505659039423

`comp[A230546(n+1)]`
-/

namespace A143834.P8884969505659039423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A143834.P8884969505659039423

/-! ## A143834.P15607008707782663024

`record[A171435(A074148(n+1))-A000096(n)]`
-/

namespace A143834.P15607008707782663024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A074148 (n + 1)).toNat - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143834.P15607008707782663024

/-! ## A143834.P6772226191365548826

`eq[A000007(n), A283361(n²)]`
-/

namespace A143834.P6772226191365548826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283361 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143834.P6772226191365548826

/-! ## A143834.P14468980990763595192

`eq[A000038(n), A283361(n²)]`
-/

namespace A143834.P14468980990763595192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283361 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143834.P14468980990763595192

/-!
# A143836: Triangle read by rows: T(r,c) = (prime(r+2) + prime(c+1))/2.

The programs for A143836, there is no canonical definition to state claims against.
-/

/-! ## A143836.P17936785186343309506

`A065305(comp[∑[n]]+1)`
-/

namespace A143836.P17936785186343309506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065305 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A143836.P17936785186343309506

/-! ## A143836.P1825529946550464091

`A116366(comp[∑[n]])/2`
-/

namespace A143836.P1825529946550464091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116366 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A143836.P1825529946550464091

/-! ## A143836.P15549840927762821199

`ceil(A116366(comp[C(n, 2)])/2)`
-/

namespace A143836.P15549840927762821199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A116366 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌉

end

end A143836.P15549840927762821199

/-! ## A143836.P16226709476632231367

`floor(A116366(comp[C(n+1, 2)])/2)`
-/

namespace A143836.P16226709476632231367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116366 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌋

end

end A143836.P16226709476632231367

/-! ## A143836.P15379358795229574660

`A323893(A339116(n+2))`
-/

namespace A143836.P15379358795229574660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323893 (A339116 (n + 2)).toNat

end

end A143836.P15379358795229574660

/-! ## A143836.P18356966657665108986

`A001281(A116366(comp[∑[n]]))`
-/

namespace A143836.P18356966657665108986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A116366 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A143836.P18356966657665108986

/-! ## A143836.P12327320459409309877

`floor(A116366(comp[A161680(n)])/2)`
-/

namespace A143836.P12327320459409309877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116366 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2⌋

end

end A143836.P12327320459409309877

/-! ## A143836.P13566475445053898353

`A110654(A116366(comp[∑[n]])-1)`
-/

namespace A143836.P13566475445053898353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A116366 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1).toNat

end

end A143836.P13566475445053898353

/-! ## A143836.P7580643247801737006

`A065342(eq[0, A103451(n)]+1)/2`
-/

namespace A143836.P7580643247801737006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A143836.P7580643247801737006

/-! ## A143836.P5711002960838287892

`A065091(comp[∑[n]]-n)-A205558(n+1)`
-/

namespace A143836.P5711002960838287892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - A205558 (n + 1)

end

end A143836.P5711002960838287892

/-!
# A143837: a(n) = A066839(A141037(n)).

The programs for A143837, there is no canonical definition to state claims against.
-/

/-! ## A143837.P9320744202884596482

`A066839(A141037(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143837.P9320744202884596482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (A141037 (n + 1)).toNat

end

end A143837.P9320744202884596482

/-! ## A143837.P6837211089690615599

`record[A066839(n+1)]`
-/

namespace A143837.P6837211089690615599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143837.P6837211089690615599

/-! ## A143837.P3689228119355905544

`record[A060866(n+1)-A070038(n+1)]`
-/

namespace A143837.P3689228119355905544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - A070038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143837.P3689228119355905544

/-! ## A143837.P13684180687748437339

`record[A070038(n+1)-A079667(n+1)]`
-/

namespace A143837.P13684180687748437339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - A079667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143837.P13684180687748437339

/-! ## A143837.P11889957740483730614

`record[A000203(n+1)-A238535(n+1)]`
-/

namespace A143837.P11889957740483730614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A238535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143837.P11889957740483730614

/-!
# A143838: Ulam's spiral (SSW spoke).

The programs for A143838, the canonical program `A143838.P1857659641796721438` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143838 has offset 1).

The definition of A143838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143838.P1857659641796721438

`((32*(n+1)-27)²+39)/64`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143838

/-- `((32*(n+1)-27)²+39)/64` -/
def P1857659641796721438.Spec : Prop :=
  ∀ n, P1857659641796721438.a n = (A143838 (n + 1) : ℚ)

end A143838

/-! ## A143838.P17069679334429134085

`∑[a(n-1)+32]` with `a(0)=1, a(1)=21`
-/

namespace A143838.P17069679334429134085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143838.P17069679334429134085

namespace A143838

/-- `∑[a(n-1)+32]` -/
def P17069679334429134085.Spec : Prop :=
  ∀ n, (P17069679334429134085.a n : ℤ) = A143838 (n + 1)

end A143838

/-! ## A143838.P7935777923002509424

`A082041(n)+n`
-/

namespace A143838.P7935777923002509424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082041 n + (n : ℤ)

end

end A143838.P7935777923002509424

namespace A143838

/-- `A082041(n)+n` -/
def P7935777923002509424.Spec : Prop :=
  ∀ n, P7935777923002509424.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P2249980031945128677

`A204675(n)+3*n`
-/

namespace A143838.P2249980031945128677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204675 n + (3 * n : ℤ)

end

end A143838.P2249980031945128677

namespace A143838

/-- `A204675(n)+3*n` -/
def P2249980031945128677.Spec : Prop :=
  ∀ n, P2249980031945128677.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P13833542774773523282

`A016814(n)-3*n`
-/

namespace A143838.P13833542774773523282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n - (3 * n : ℤ)

end

end A143838.P13833542774773523282

namespace A143838

/-- `A016814(n)-3*n` -/
def P13833542774773523282.Spec : Prop :=
  ∀ n, P13833542774773523282.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P10919833241819007246

`A028993(n)-5*n`
-/

namespace A143838.P10919833241819007246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028993 n - (5 * n : ℤ)

end

end A143838.P10919833241819007246

namespace A143838

/-- `A028993(n)-5*n` -/
def P10919833241819007246.Spec : Prop :=
  ∀ n, P10919833241819007246.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P9464752383538534795

`2*A033585(n)+n+1`
-/

namespace A143838.P9464752383538534795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033585 n + (n + 1 : ℤ)

end

end A143838.P9464752383538534795

namespace A143838

/-- `2*A033585(n)+n+1` -/
def P9464752383538534795.Spec : Prop :=
  ∀ n, P9464752383538534795.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P17500077136632303964

`A143854(n+1)+2*n`
-/

namespace A143838.P17500077136632303964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143854 (n + 1) + (2 * n : ℤ)

end

end A143838.P17500077136632303964

namespace A143838

/-- `A143854(n+1)+2*n` -/
def P17500077136632303964.Spec : Prop :=
  ∀ n, P17500077136632303964.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P8731816871404897539

`A143839(n+1)-2*n`
-/

namespace A143838.P8731816871404897539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143839 (n + 1) - (2 * n : ℤ)

end

end A143838.P8731816871404897539

namespace A143838

/-- `A143839(n+1)-2*n` -/
def P8731816871404897539.Spec : Prop :=
  ∀ n, P8731816871404897539.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P15539628250160833441

`2*A236267(n)-(n+1)`
-/

namespace A143838.P15539628250160833441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236267 n - (n + 1 : ℤ)

end

end A143838.P15539628250160833441

namespace A143838

/-- `2*A236267(n)-(n+1)` -/
def P15539628250160833441.Spec : Prop :=
  ∀ n, P15539628250160833441.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P12019021485378754475

`A143859(n+1)+4*n`
-/

namespace A143838.P12019021485378754475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143859 (n + 1) + (4 * n : ℤ)

end

end A143838.P12019021485378754475

namespace A143838

/-- `A143859(n+1)+4*n` -/
def P12019021485378754475.Spec : Prop :=
  ∀ n, P12019021485378754475.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P4914272478239570525

`abs(3*n-A016813(n)²)`
-/

namespace A143838.P4914272478239570525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) - A016813 n ^ 2|

end

end A143838.P4914272478239570525

namespace A143838

/-- `abs(3*n-A016813(n)²)` -/
def P4914272478239570525.Spec : Prop :=
  ∀ n, P4914272478239570525.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P10579245401216222929

`A068628(n+1)/3+n+1`
-/

namespace A143838.P10579245401216222929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068628 (n + 1) : ℚ) / 3 + (n + 1 : ℚ)

end

end A143838.P10579245401216222929

namespace A143838

/-- `A068628(n+1)/3+n+1` -/
def P10579245401216222929.Spec : Prop :=
  ∀ n, P10579245401216222929.a n = (A143838 (n + 1) : ℚ)

end A143838

/-! ## A143838.P11561437726088051337

`n*A063110(n+1)+n+1`
-/

namespace A143838.P11561437726088051337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063110 (n + 1) + (n + 1 : ℤ)

end

end A143838.P11561437726088051337

namespace A143838

/-- `n*A063110(n+1)+n+1` -/
def P11561437726088051337.Spec : Prop :=
  ∀ n, P11561437726088051337.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P9967402713809454072

`n*A119413(n+1)+n+1`
-/

namespace A143838.P9967402713809454072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119413 (n + 1) + (n + 1 : ℤ)

end

end A143838.P9967402713809454072

namespace A143838

/-- `n*A119413(n+1)+n+1` -/
def P9967402713809454072.Spec : Prop :=
  ∀ n, P9967402713809454072.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P11930604163331395175

`A014641(n)+A001107(n)`
-/

namespace A143838.P11930604163331395175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 n + A001107 n

end

end A143838.P11930604163331395175

namespace A143838

/-- `A014641(n)+A001107(n)` -/
def P11930604163331395175.Spec : Prop :=
  ∀ n, P11930604163331395175.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P4727224171527011941

`A016861(n)+A016802(n)`
-/

namespace A143838.P4727224171527011941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n + A016802 n

end

end A143838.P4727224171527011941

namespace A143838

/-- `A016861(n)+A016802(n)` -/
def P4727224171527011941.Spec : Prop :=
  ∀ n, P4727224171527011941.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P5740392056879725

`A033577(n)+A002939(n)`
-/

namespace A143838.P5740392056879725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033577 n + A002939 n

end

end A143838.P5740392056879725

namespace A143838

/-- `A033577(n)+A002939(n)` -/
def P5740392056879725.Spec : Prop :=
  ∀ n, P5740392056879725.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P12447873989155942528

`A028994(n)+A017401(n)`
-/

namespace A143838.P12447873989155942528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n + A017401 n

end

end A143838.P12447873989155942528

namespace A143838

/-- `A028994(n)+A017401(n)` -/
def P12447873989155942528.Spec : Prop :=
  ∀ n, P12447873989155942528.a n = A143838 (n + 1)

end A143838

/-! ## A143838.P11657306064366470645

`A033579(n)+A033571(n)`
-/

namespace A143838.P11657306064366470645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n + A033571 n

end

end A143838.P11657306064366470645

namespace A143838

/-- `A033579(n)+A033571(n)` -/
def P11657306064366470645.Spec : Prop :=
  ∀ n, P11657306064366470645.a n = A143838 (n + 1)

end A143838

/-!
# A143839: Ulam's spiral (SSE spoke).

The programs for A143839, the canonical program `A143839.P11760117222375717378` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143839 has offset 1).

The definition of A143839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143839.P11760117222375717378

`((32*(n+1)-25)²+15)/64`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143839

/-- `((32*(n+1)-25)²+15)/64` -/
def P11760117222375717378.Spec : Prop :=
  ∀ n, P11760117222375717378.a n = (A143839 (n + 1) : ℚ)

end A143839

/-! ## A143839.P12638038398756799395

`∑[a(n-1)+32]` with `a(0)=1, a(1)=23`
-/

namespace A143839.P12638038398756799395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 23] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143839.P12638038398756799395

namespace A143839

/-- `∑[a(n-1)+32]` -/
def P12638038398756799395.Spec : Prop :=
  ∀ n, (P12638038398756799395.a n : ℤ) = A143839 (n + 1)

end A143839

/-! ## A143839.P10724198771498493584

`abs(xor(1, 4*n)²-n)`
-/

namespace A143839.P10724198771498493584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 1 (4 * n) ^ 2 : ℤ) - (n : ℤ)|

end

end A143839.P10724198771498493584

namespace A143839

/-- `abs(xor(1, 4*n)²-n)` -/
def P10724198771498493584.Spec : Prop :=
  ∀ n, P10724198771498493584.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P3594054972441973897

`abs(Δ[C(2*n, 2)]²-n)`
-/

namespace A143839.P3594054972441973897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - (n : ℤ)|

end

end A143839.P3594054972441973897

namespace A143839

/-- `abs(Δ[C(2*n, 2)]²-n)` -/
def P3594054972441973897.Spec : Prop :=
  ∀ n, P3594054972441973897.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P5021142277532232096

`abs(lcm(2*n+1, 8*n)-(n-1))`
-/

namespace A143839.P5021142277532232096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (2 * n + 1) (8 * n) : ℤ) - ((n : ℤ) - 1)|

end

end A143839.P5021142277532232096

namespace A143839

/-- `abs(lcm(2*n+1, 8*n)-(n-1))` -/
def P5021142277532232096.Spec : Prop :=
  ∀ n, P5021142277532232096.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P8330061573184717120

`abs(8*n*or(1, 2*n)+1-n)`
-/

namespace A143839.P8330061573184717120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n * Nat.lor 1 (2 * n) + 1 : ℤ) - (n : ℤ)|

end

end A143839.P8330061573184717120

namespace A143839

/-- `abs(8*n*or(1, 2*n)+1-n)` -/
def P8330061573184717120.Spec : Prop :=
  ∀ n, P8330061573184717120.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P17534353227838695729

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=24, a(2)=79`
-/

namespace A143839.P17534353227838695729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24, 79] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A143839.P17534353227838695729

namespace A143839

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17534353227838695729.Spec : Prop :=
  ∀ n, P17534353227838695729.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P14293153466054366342

`A016814(n)-n`
-/

namespace A143839.P14293153466054366342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n - (n : ℤ)

end

end A143839.P14293153466054366342

namespace A143839

/-- `A016814(n)-n` -/
def P14293153466054366342.Spec : Prop :=
  ∀ n, P14293153466054366342.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P13247191511446421588

`A016813(n)²-n`
-/

namespace A143839.P13247191511446421588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n ^ 2 - (n : ℤ)

end

end A143839.P13247191511446421588

namespace A143839

/-- `A016813(n)²-n` -/
def P13247191511446421588.Spec : Prop :=
  ∀ n, P13247191511446421588.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P14369042997897217574

`sqrt(A016816(n))-n`
-/

namespace A143839.P14369042997897217574
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016816 n : ℝ) - (n : ℝ)

end

end A143839.P14369042997897217574

namespace A143839

/-- `sqrt(A016816(n))-n` -/
def P14369042997897217574.Spec : Prop :=
  ∀ n, P14369042997897217574.a n = (A143839 (n + 1) : ℝ)

end A143839

/-! ## A143839.P14214350901144270184

`A082041(n)+3*n`
-/

namespace A143839.P14214350901144270184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082041 n + (3 * n : ℤ)

end

end A143839.P14214350901144270184

namespace A143839

/-- `A082041(n)+3*n` -/
def P14214350901144270184.Spec : Prop :=
  ∀ n, P14214350901144270184.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P17368905706614727603

`A028993(n)-3*n`
-/

namespace A143839.P17368905706614727603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028993 n - (3 * n : ℤ)

end

end A143839.P17368905706614727603

namespace A143839

/-- `A028993(n)-3*n` -/
def P17368905706614727603.Spec : Prop :=
  ∀ n, P17368905706614727603.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P11355976434090685118

`A204675(n)+5*n`
-/

namespace A143839.P11355976434090685118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204675 n + (5 * n : ℤ)

end

end A143839.P11355976434090685118

namespace A143839

/-- `A204675(n)+5*n` -/
def P11355976434090685118.Spec : Prop :=
  ∀ n, P11355976434090685118.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P968038106076641962

`A017090(n)/4-n`
-/

namespace A143839.P968038106076641962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017090 n : ℚ) / 4 - (n : ℚ)

end

end A143839.P968038106076641962

namespace A143839

/-- `A017090(n)/4-n` -/
def P968038106076641962.Spec : Prop :=
  ∀ n, P968038106076641962.a n = (A143839 (n + 1) : ℚ)

end A143839

/-! ## A143839.P903767126033558116

`Δ[A000384(n)]²-n`
-/

namespace A143839.P903767126033558116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (n : ℤ)

end

end A143839.P903767126033558116

namespace A143839

/-- `Δ[A000384(n)]²-n` -/
def P903767126033558116.Spec : Prop :=
  ∀ n, P903767126033558116.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P5741246940043725887

`A080861(n)+n²+n`
-/

namespace A143839.P5741246940043725887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080861 n + (n ^ 2 + n : ℤ)

end

end A143839.P5741246940043725887

namespace A143839

/-- `A080861(n)+n²+n` -/
def P5741246940043725887.Spec : Prop :=
  ∀ n, P5741246940043725887.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P5429140528861729491

`2*A139276(n)+n+1`
-/

namespace A143839.P5429140528861729491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139276 n + (n + 1 : ℤ)

end

end A143839.P5429140528861729491

namespace A143839

/-- `2*A139276(n)+n+1` -/
def P5429140528861729491.Spec : Prop :=
  ∀ n, P5429140528861729491.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P11850925798537408130

`A143838(n+1)+2*n`
-/

namespace A143839.P11850925798537408130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143838 (n + 1) + (2 * n : ℤ)

end

end A143839.P11850925798537408130

namespace A143839

/-- `A143838(n+1)+2*n` -/
def P11850925798537408130.Spec : Prop :=
  ∀ n, P11850925798537408130.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P8441188245888414959

`A143854(n+1)+4*n`
-/

namespace A143839.P8441188245888414959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143854 (n + 1) + (4 * n : ℤ)

end

end A143839.P8441188245888414959

namespace A143839

/-- `A143854(n+1)+4*n` -/
def P8441188245888414959.Spec : Prop :=
  ∀ n, P8441188245888414959.a n = A143839 (n + 1)

end A143839

/-! ## A143839.P12768506475043278552

`abs((2-A004767(n))²-n)`
-/

namespace A143839.P12768506475043278552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A004767 n) ^ 2 - (n : ℤ)|

end

end A143839.P12768506475043278552

namespace A143839

/-- `abs((2-A004767(n))²-n)` -/
def P12768506475043278552.Spec : Prop :=
  ∀ n, P12768506475043278552.a n = A143839 (n + 1)

end A143839

/-!
# A143841: Table read by antidiagonals: T(n,k) is the number of strongly connected directed multigraphs with loops with n arcs and up to k vertices.

The programs for A143841, there is no canonical definition to state claims against.
-/

/-! ## A143841.P486980464813905860

`or(A124768(A293960(n)), A182172(n))`
-/

namespace A143841.P486980464813905860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124768 (A293960 n).toNat) (A182172 n)

end

end A143841.P486980464813905860

/-! ## A143841.P1146333059595923205

`A059939(ceil(exp(A182172(n))))`
-/

namespace A143841.P1146333059595923205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 ⌈Real.exp (A182172 n : ℝ)⌉.toNat

end

end A143841.P1146333059595923205

/-! ## A143841.P12298905689683297341

`A059939(round(exp(A182172(n))))`
-/

namespace A143841.P12298905689683297341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (SequenceMachineLib.roundAway (Real.exp (A182172 n : ℝ))).toNat

end

end A143841.P12298905689683297341

/-! ## A143841.P1793875193546847198

`∑{d}[A214015(n), A034363(#)]`
-/

namespace A143841.P1793875193546847198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A034363 d

end

end A143841.P1793875193546847198

/-! ## A143841.P4835597318577305039

`A000523(ceil(cosh(A182172(n))))`
-/

namespace A143841.P4835597318577305039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 ⌈Real.cosh (A182172 n : ℝ)⌉.toNat

end

end A143841.P4835597318577305039

/-!
# A143842: Table read by antidiagonals: T(n,k) is the number of strongly connected directed multigraphs with loops with n arcs and k vertices, which are transitive (the existence of a path between two points implies the existence of an arc between those two points).

The programs for A143842, there is no canonical definition to state claims against.
-/

/-! ## A143842.P12609476903881250759

`A001221(A001971(A294250(n)+3))`
-/

namespace A143842.P12609476903881250759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001971 (A294250 n + 3).toNat).toNat

end

end A143842.P12609476903881250759

/-! ## A143842.P14681159489099700400

`A048766(A294220(n)^A216635(n+1))`
-/

namespace A143842.P14681159489099700400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A294220 n : ℚ) ^ (A216635 (n + 1) : ℤ))).toNat

end

end A143842.P14681159489099700400

/-! ## A143842.P8719857094711750847

`A005136(A293108(n))`
-/

namespace A143842.P8719857094711750847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A293108 n).toNat

end

end A143842.P8719857094711750847

/-! ## A143842.P13301766156808866595

`A115721(A267479(n))`
-/

namespace A143842.P13301766156808866595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115721 (A267479 n).toNat

end

end A143842.P13301766156808866595

/-! ## A143842.P854490801964987474

`A380199(A293525(n))`
-/

namespace A143842.P854490801964987474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380199 (A293525 n).toNat

end

end A143842.P854490801964987474

/-!
# A143844: Triangle T(n,k) = k^2 read by rows.

The programs for A143844, the canonical program `A143844.P5543645372277359281` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143844 has offset 0).

The definition of A143844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143844.P6514802285333932956

`(n-C(∑[char[∑[n]]], 2))²`
-/

namespace A143844.P6514802285333932956
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ 2

end

end A143844.P6514802285333932956

namespace A143844

/-- `(n-C(∑[char[∑[n]]], 2))²` -/
def P6514802285333932956.Spec : Prop :=
  ∀ n, P6514802285333932956.a n = A143844 n

end A143844

/-! ## A143844.P6707377245100756384

`(n-C(∑[char[∑[n]]], 2))^2`
-/

namespace A143844.P6707377245100756384
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ 2

end

end A143844.P6707377245100756384

namespace A143844

/-- `(n-C(∑[char[∑[n]]], 2))^2` -/
def P6707377245100756384.Spec : Prop :=
  ∀ n, P6707377245100756384.a n = A143844 n

end A143844

/-! ## A143844.P3587944677933601652

`(C(comp[∑[n-1]]-n, 2)-n)²`
-/

namespace A143844.P3587944677933601652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2

end

end A143844.P3587944677933601652

namespace A143844

/-- `(C(comp[∑[n-1]]-n, 2)-n)²` -/
def P3587944677933601652.Spec : Prop :=
  ∀ n, P3587944677933601652.a n = A143844 n

end A143844

/-! ## A143844.P14392185304678519349

`((n+1)%(C(∑[char[∑[n]]], 2)+1))²`
-/

namespace A143844.P14392185304678519349
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)) ^ 2

end

end A143844.P14392185304678519349

namespace A143844

/-- `((n+1)%(C(∑[char[∑[n]]], 2)+1))²` -/
def P14392185304678519349.Spec : Prop :=
  ∀ n, (P14392185304678519349.a n : ℤ) = A143844 n

end A143844

/-! ## A143844.P5543645372277359281

`A002262(n)²`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143844

/-- `A002262(n)²` -/
def P5543645372277359281.Spec : Prop :=
  ∀ n, P5543645372277359281.a n = A143844 n

theorem P5543645372277359281.correct : P5543645372277359281.Spec := by
  intro n
  simp only [A143844]

end A143844

/-! ## A143844.P15266204622186275956

`log2(A059268(n))²`
-/

namespace A143844.P15266204622186275956
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ) ^ 2

end

end A143844.P15266204622186275956

namespace A143844

/-- `log2(A059268(n))²` -/
def P15266204622186275956.Spec : Prop :=
  ∀ n, P15266204622186275956.a n = (A143844 n : ℝ)

end A143844

/-! ## A143844.P10463365842151557511

`val(A130328(n), 2)²`
-/

namespace A143844.P10463365842151557511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130328 n).toNat 2 ^ 2

end

end A143844.P10463365842151557511

namespace A143844

/-- `val(A130328(n), 2)²` -/
def P10463365842151557511.Spec : Prop :=
  ∀ n, (P10463365842151557511.a n : ℤ) = A143844 n

end A143844

/-! ## A143844.P16608360354441074455

`val(A130329(n), 2)²`
-/

namespace A143844.P16608360354441074455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130329 n).toNat 2 ^ 2

end

end A143844.P16608360354441074455

namespace A143844

/-- `val(A130329(n), 2)²` -/
def P16608360354441074455.Spec : Prop :=
  ∀ n, (P16608360354441074455.a n : ℤ) = A143844 n

end A143844

/-! ## A143844.P13641608551166733110

`val(A175840(n), 2)²`
-/

namespace A143844.P13641608551166733110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A175840 n).toNat 2 ^ 2

end

end A143844.P13641608551166733110

namespace A143844

/-- `val(A175840(n), 2)²` -/
def P13641608551166733110.Spec : Prop :=
  ∀ n, (P13641608551166733110.a n : ℤ) = A143844 n

end A143844

/-! ## A143844.P7938269916510473792

`val(A193859(n), 2)²`
-/

namespace A143844.P7938269916510473792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A193859 n).toNat 2 ^ 2

end

end A143844.P7938269916510473792

namespace A143844

/-- `val(A193859(n), 2)²` -/
def P7938269916510473792.Spec : Prop :=
  ∀ n, (P7938269916510473792.a n : ℤ) = A143844 n

end A143844

/-! ## A143844.P6596207363124743121

`val(A247936(n), 2)²`
-/

namespace A143844.P6596207363124743121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A247936 n).toNat 2 ^ 2

end

end A143844.P6596207363124743121

namespace A143844

/-- `val(A247936(n), 2)²` -/
def P6596207363124743121.Spec : Prop :=
  ∀ n, (P6596207363124743121.a n : ℤ) = A143844 n

end A143844

/-! ## A143844.P7822754750742147440

`(n-A057944(n))²`
-/

namespace A143844.P7822754750742147440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A057944 n) ^ 2

end

end A143844.P7822754750742147440

namespace A143844

/-- `(n-A057944(n))²` -/
def P7822754750742147440.Spec : Prop :=
  ∀ n, P7822754750742147440.a n = A143844 n

end A143844

/-! ## A143844.P4542286173587525496

`A057554(Δ[n²])²`
-/

namespace A143844.P4542286173587525496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A143844.P4542286173587525496

namespace A143844

/-- `A057554(Δ[n²])²` -/
def P4542286173587525496.Spec : Prop :=
  ∀ n, P4542286173587525496.a n = A143844 n

end A143844

/-! ## A143844.P7863722613171430708

`(1-A002260(n+1))²`
-/

namespace A143844.P7863722613171430708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A002260 (n + 1)) ^ 2

end

end A143844.P7863722613171430708

namespace A143844

/-- `(1-A002260(n+1))²` -/
def P7863722613171430708.Spec : Prop :=
  ∀ n, P7863722613171430708.a n = A143844 n

end A143844

/-! ## A143844.P12535936710373915044

`val(A018900(n+1), 2)²`
-/

namespace A143844.P12535936710373915044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018900 (n + 1)).toNat 2 ^ 2

end

end A143844.P12535936710373915044

namespace A143844

/-- `val(A018900(n+1), 2)²` -/
def P12535936710373915044.Spec : Prop :=
  ∀ n, (P12535936710373915044.a n : ℤ) = A143844 n

end A143844

/-! ## A143844.P11514713455534876120

`val(A118413(n+1), 2)²`
-/

namespace A143844.P11514713455534876120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A118413 (n + 1)).toNat 2 ^ 2

end

end A143844.P11514713455534876120

namespace A143844

/-- `val(A118413(n+1), 2)²` -/
def P11514713455534876120.Spec : Prop :=
  ∀ n, (P11514713455534876120.a n : ℤ) = A143844 n

end A143844

/-! ## A143844.P713245605691975264

`(2*n-A061885(n))²`
-/

namespace A143844.P713245605691975264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - A061885 n) ^ 2

end

end A143844.P713245605691975264

namespace A143844

/-- `(2*n-A061885(n))²` -/
def P713245605691975264.Spec : Prop :=
  ∀ n, P713245605691975264.a n = A143844 n

end A143844

/-! ## A143844.P116350917480027336

`(n+1-A132118(n+1))²`
-/

namespace A143844.P116350917480027336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A132118 (n + 1)) ^ 2

end

end A143844.P116350917480027336

namespace A143844

/-- `(n+1-A132118(n+1))²` -/
def P116350917480027336.Spec : Prop :=
  ∀ n, P116350917480027336.a n = A143844 n

end A143844

/-! ## A143844.P1131773955904174727

`(A004201(n+1)-Δ[n²])²`
-/

namespace A143844.P1131773955904174727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004201 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2

end

end A143844.P1131773955904174727

namespace A143844

/-- `(A004201(n+1)-Δ[n²])²` -/
def P1131773955904174727.Spec : Prop :=
  ∀ n, P1131773955904174727.a n = A143844 n

end A143844

/-! ## A143844.P18050066854540142988

`(A000217(∑[char[∑[n+1]]])-n)²`
-/

namespace A143844.P18050066854540142988
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)) ^ 2

end

end A143844.P18050066854540142988

namespace A143844

/-- `(A000217(∑[char[∑[n+1]]])-n)²` -/
def P18050066854540142988.Spec : Prop :=
  ∀ n, P18050066854540142988.a n = A143844 n

end A143844

/-!
# A143845: Period 8: repeat [0, 8, 12, 14, 15, 7, 3, 1].

The programs for A143845, the canonical program `A143845.P2544863569797493486` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143845 has offset 0).

The definition of A143845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143845.P2544863569797493486

`15-a(n-4)` with `a(0)=0, a(1)=8, a(2)=12, a(3)=14`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143845

/-- `15-a(n-4)` -/
def P2544863569797493486.Spec : Prop :=
  ∀ n, P2544863569797493486.a n = A143845 n

theorem P2544863569797493486.correct : P2544863569797493486.Spec := by
  intro n
  simp only [A143845]

end A143845

/-!
# A143846: Aliquot sequence starting at 88.

The programs for A143846, the canonical program `A143846.P9170851586254703169` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143846 has offset 0).

The definition of A143846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143846.P9170851586254703169

`A001065(A028310(a(n-1)))` with `a(0)=88`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A143846

/-- `A001065(A028310(a(n-1)))` -/
def P9170851586254703169.Spec : Prop :=
  ∀ n, P9170851586254703169.a n = A143846 n

theorem P9170851586254703169.correct : P9170851586254703169.Spec := by
  intro n
  simp only [A143846]

end A143846

/-!
# A143847: Aliquot sequence starting at 96.

The programs for A143847, the canonical program `A143847.P819203088057460504` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143847 has offset 0).

The definition of A143847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143847.P819203088057460504

`A001065(A028310(a(n-1)))` with `a(0)=96`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A143847

/-- `A001065(A028310(a(n-1)))` -/
def P819203088057460504.Spec : Prop :=
  ∀ n, P819203088057460504.a n = A143847 n

theorem P819203088057460504.correct : P819203088057460504.Spec := by
  intro n
  simp only [A143847]

end A143847

/-!
# A143850: Numbers of the form (p^2 + q^2)/2, for odd primes p and q.

The programs for A143850, there is no canonical definition to state claims against.
-/

/-! ## A143850.P10151626711273852492

`∩[4*n+5, floor(A045636(n+1)/2)]`
-/

namespace A143850.P10151626711273852492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045636 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143850.P10151626711273852492

/-! ## A143850.P15801059842468071789

`∩[A045636(n+1), A016825(n)]/2`
-/

namespace A143850.P15801059842468071789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P15801059842468071789

/-! ## A143850.P2923856034033905721

`∩[A045636(n+1), A017089(n)]/2`
-/

namespace A143850.P2923856034033905721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P2923856034033905721

/-! ## A143850.P12016328704643283260

`∩[A045636(n+1), A097269(n+1)]/2`
-/

namespace A143850.P12016328704643283260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097269 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P12016328704643283260

/-! ## A143850.P10555367665106986583

`∩[A045636(n+1), A113127(n)]/2`
-/

namespace A143850.P10555367665106986583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P10555367665106986583

/-! ## A143850.P10689312967910129860

`∩[A045636(n+1), A130824(n)]/2`
-/

namespace A143850.P10689312967910129860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P10689312967910129860

/-! ## A143850.P2571832265659773600

`∩[A045636(n+1), A047463(n+1)]/2`
-/

namespace A143850.P2571832265659773600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047463 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P2571832265659773600

/-! ## A143850.P584750182817048807

`∩[A045636(n+1), A047468(n+1)]/2`
-/

namespace A143850.P584750182817048807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047468 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P584750182817048807

/-! ## A143850.P1379963346034273308

`∩[A045636(n+1), A047473(n+1)]/2`
-/

namespace A143850.P1379963346034273308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047473 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P1379963346034273308

/-! ## A143850.P173399327022931964

`∩[A045636(n+1), A047524(n+1)]/2`
-/

namespace A143850.P173399327022931964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P173399327022931964

/-! ## A143850.P3816544974109535323

`∩[A045636(n+1), A073760(n+1)]/2`
-/

namespace A143850.P3816544974109535323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P3816544974109535323

/-! ## A143850.P10690889981620543386

`∩[A045636(n+1), A111284(n+1)]/2`
-/

namespace A143850.P10690889981620543386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P10690889981620543386

/-! ## A143850.P2857121580021552606

`∩[A045636(n+1), A133653(n+1)]/2`
-/

namespace A143850.P2857121580021552606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P2857121580021552606

/-! ## A143850.P1665537121435591017

`∩[A045636(n+1), A139544(n+1)]/2`
-/

namespace A143850.P1665537121435591017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P1665537121435591017

/-! ## A143850.P6520064731807440772

`∩[A045636(n+1), A190035(n+1)]/2`
-/

namespace A143850.P6520064731807440772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190035 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P6520064731807440772

/-! ## A143850.P17127627408297391972

`∩[A045636(n+1), A308607(n+4)]/2`
-/

namespace A143850.P17127627408297391972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308607 (n + 4)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P17127627408297391972

/-! ## A143850.P13224669250116760137

`∩[A045636(n+1), A102212(n+1)]/2`
-/

namespace A143850.P13224669250116760137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102212 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P13224669250116760137

/-! ## A143850.P1217267442008145149

`∩[A045636(n+1), A053438(n)]/2`
-/

namespace A143850.P1217267442008145149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P1217267442008145149

/-! ## A143850.P4437153860907668814

`∩[A045636(n+2), A163300(n+2)]/2`
-/

namespace A143850.P4437153860907668814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A143850.P4437153860907668814

/-!
# A143851: Primes p that divide the sum of their residues modulo all smaller primes (=A024934(p)).

The programs for A143851, there is no canonical definition to state claims against.
-/

/-! ## A143851.P1430619383207770454

`A065132(A086661(n+1)+A010051(3*n+1))`
-/

namespace A143851.P1430619383207770454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065132 (A086661 (n + 1) + A010051 (3 * n + 1)).toNat

end

end A143851.P1430619383207770454

/-!
# A143853: Primes p that divide the sum of their remainders modulo all smaller composites (=A233131(p)).

The programs for A143853, there is no canonical definition to state claims against.
-/

/-! ## A143853.P2795474205733256559

`p?[A233344(n+1)]`
-/

namespace A143853.P2795474205733256559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143853.P2795474205733256559

/-!
# A143854: Ulam's spiral (WSW spoke).

The programs for A143854, the canonical program `A143854.P4513904195395857433` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143854 has offset 1).

The definition of A143854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143854.P4513904195395857433

`((32*(n+1)-29)²+55)/64`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143854

/-- `((32*(n+1)-29)²+55)/64` -/
def P4513904195395857433.Spec : Prop :=
  ∀ n, P4513904195395857433.a n = (A143854 (n + 1) : ℚ)

end A143854

/-! ## A143854.P5107443606685870419

`∑[a(n-1)+32]` with `a(0)=1, a(1)=19`
-/

namespace A143854.P5107443606685870419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143854.P5107443606685870419

namespace A143854

/-- `∑[a(n-1)+32]` -/
def P5107443606685870419.Spec : Prop :=
  ∀ n, (P5107443606685870419.a n : ℤ) = A143854 (n + 1)

end A143854

/-! ## A143854.P12348182054062016296

`A204675(n)+n`
-/

namespace A143854.P12348182054062016296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204675 n + (n : ℤ)

end

end A143854.P12348182054062016296

namespace A143854

/-- `A204675(n)+n` -/
def P12348182054062016296.Spec : Prop :=
  ∀ n, P12348182054062016296.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P8375322070047822528

`A082041(n)-n`
-/

namespace A143854.P8375322070047822528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082041 n - (n : ℤ)

end

end A143854.P8375322070047822528

namespace A143854

/-- `A082041(n)-n` -/
def P8375322070047822528.Spec : Prop :=
  ∀ n, P8375322070047822528.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P12219187758698456772

`A016814(n)-5*n`
-/

namespace A143854.P12219187758698456772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n - (5 * n : ℤ)

end

end A143854.P12219187758698456772

namespace A143854

/-- `A016814(n)-5*n` -/
def P12219187758698456772.Spec : Prop :=
  ∀ n, P12219187758698456772.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P5789869982838987855

`∑[2*A113770(n)-1]`
-/

namespace A143854.P5789869982838987855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113770 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143854.P5789869982838987855

namespace A143854

/-- `∑[2*A113770(n)-1]` -/
def P5789869982838987855.Spec : Prop :=
  ∀ n, P5789869982838987855.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P75390604359679828

`2*A139275(n)+n+1`
-/

namespace A143854.P75390604359679828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139275 n + (n + 1 : ℤ)

end

end A143854.P75390604359679828

namespace A143854

/-- `2*A139275(n)+n+1` -/
def P75390604359679828.Spec : Prop :=
  ∀ n, P75390604359679828.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P79077904045040106

`A143859(n+1)+2*n`
-/

namespace A143854.P79077904045040106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143859 (n + 1) + (2 * n : ℤ)

end

end A143854.P79077904045040106

namespace A143854

/-- `A143859(n+1)+2*n` -/
def P79077904045040106.Spec : Prop :=
  ∀ n, P79077904045040106.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P17748734764539882992

`A143838(n+1)-2*n`
-/

namespace A143854.P17748734764539882992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143838 (n + 1) - (2 * n : ℤ)

end

end A143854.P17748734764539882992

namespace A143854

/-- `A143838(n+1)-2*n` -/
def P17748734764539882992.Spec : Prop :=
  ∀ n, P17748734764539882992.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P7479384149662654692

`2*A188135(n)-(n+1)`
-/

namespace A143854.P7479384149662654692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188135 n - (n + 1 : ℤ)

end

end A143854.P7479384149662654692

namespace A143854

/-- `2*A188135(n)-(n+1)` -/
def P7479384149662654692.Spec : Prop :=
  ∀ n, P7479384149662654692.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P9108989018277480827

`A143860(n+1)+4*n`
-/

namespace A143854.P9108989018277480827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143860 (n + 1) + (4 * n : ℤ)

end

end A143854.P9108989018277480827

namespace A143854

/-- `A143860(n+1)+4*n` -/
def P9108989018277480827.Spec : Prop :=
  ∀ n, P9108989018277480827.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P6019135717141936148

`A143839(n+1)-4*n`
-/

namespace A143854.P6019135717141936148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143839 (n + 1) - (4 * n : ℤ)

end

end A143854.P6019135717141936148

namespace A143854

/-- `A143839(n+1)-4*n` -/
def P6019135717141936148.Spec : Prop :=
  ∀ n, P6019135717141936148.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P2666337317640264518

`n*A063116(n+1)+n+1`
-/

namespace A143854.P2666337317640264518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063116 (n + 1) + (n + 1 : ℤ)

end

end A143854.P2666337317640264518

namespace A143854

/-- `n*A063116(n+1)+n+1` -/
def P2666337317640264518.Spec : Prop :=
  ∀ n, P2666337317640264518.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P11545635307375770990

`A022285(n)+A005891(n)`
-/

namespace A143854.P11545635307375770990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022285 n + A005891 n

end

end A143854.P11545635307375770990

namespace A143854

/-- `A022285(n)+A005891(n)` -/
def P11545635307375770990.Spec : Prop :=
  ∀ n, P11545635307375770990.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P14299819694032565433

`A016802(n)+A016777(n)`
-/

namespace A143854.P14299819694032565433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 n + A016777 n

end

end A143854.P14299819694032565433

namespace A143854

/-- `A016802(n)+A016777(n)` -/
def P14299819694032565433.Spec : Prop :=
  ∀ n, P14299819694032565433.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P721321080851064116

`A028994(n)+A017173(n)`
-/

namespace A143854.P721321080851064116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n + A017173 n

end

end A143854.P721321080851064116

namespace A143854

/-- `A028994(n)+A017173(n)` -/
def P721321080851064116.Spec : Prop :=
  ∀ n, P721321080851064116.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P7579232202407904982

`A052905(n)+A022288(n)`
-/

namespace A143854.P7579232202407904982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n + A022288 n

end

end A143854.P7579232202407904982

namespace A143854

/-- `A052905(n)+A022288(n)` -/
def P7579232202407904982.Spec : Prop :=
  ∀ n, P7579232202407904982.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P17886538484700528550

`A064225(n)+A022281(n)`
-/

namespace A143854.P17886538484700528550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n + A022281 n

end

end A143854.P17886538484700528550

namespace A143854

/-- `A064225(n)+A022281(n)` -/
def P17886538484700528550.Spec : Prop :=
  ∀ n, P17886538484700528550.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P13244798869113454745

`A064761(n)+A028387(n)`
-/

namespace A143854.P13244798869113454745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064761 n + A028387 n

end

end A143854.P13244798869113454745

namespace A143854

/-- `A064761(n)+A028387(n)` -/
def P13244798869113454745.Spec : Prop :=
  ∀ n, P13244798869113454745.a n = A143854 (n + 1)

end A143854

/-! ## A143854.P12234432233666056629

`A093485(n)+A000566(n)`
-/

namespace A143854.P12234432233666056629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093485 n + A000566 n

end

end A143854.P12234432233666056629

namespace A143854

/-- `A093485(n)+A000566(n)` -/
def P12234432233666056629.Spec : Prop :=
  ∀ n, P12234432233666056629.a n = A143854 (n + 1)

end A143854

/-!
# A143855: Ulam's spiral (ESE spoke).

The programs for A143855, the canonical program `A143855.P16524628240967688166` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143855 has offset 1).

The definition of A143855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143855.P16524628240967688166

`((32*(n+1)-39)²+15)/64`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143855

/-- `((32*(n+1)-39)²+15)/64` -/
def P16524628240967688166.Spec : Prop :=
  ∀ n, P16524628240967688166.a n = (A143855 (n + 1) : ℚ)

end A143855

/-! ## A143855.P10125557383620495878

`∑[a(n-1)+32]` with `a(0)=1, a(1)=9`
-/

namespace A143855.P10125557383620495878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143855.P10125557383620495878

namespace A143855

/-- `∑[a(n-1)+32]` -/
def P10125557383620495878.Spec : Prop :=
  ∀ n, (P10125557383620495878.a n : ℤ) = A143855 (n + 1)

end A143855

/-! ## A143855.P8883778715996054566

`A152750(n)+1+n`
-/

namespace A143855.P8883778715996054566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n + 1 + (n : ℤ)

end

end A143855.P8883778715996054566

namespace A143855

/-- `A152750(n)+1+n` -/
def P8883778715996054566.Spec : Prop :=
  ∀ n, P8883778715996054566.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P3111689058619942622

`A028994(n)+1-n`
-/

namespace A143855.P3111689058619942622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n + (1 - (n : ℤ))

end

end A143855.P3111689058619942622

namespace A143855

/-- `A028994(n)+1-n` -/
def P3111689058619942622.Spec : Prop :=
  ∀ n, P3111689058619942622.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P9198249701165532760

`A131098(n+1)²+n`
-/

namespace A143855.P9198249701165532760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1) ^ 2 + (n : ℤ)

end

end A143855.P9198249701165532760

namespace A143855

/-- `A131098(n+1)²+n` -/
def P9198249701165532760.Spec : Prop :=
  ∀ n, P9198249701165532760.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P4525279926924938249

`A153786(n)+(n+1)²`
-/

namespace A143855.P4525279926924938249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153786 n + ((n + 1) ^ 2 : ℤ)

end

end A143855.P4525279926924938249

namespace A143855

/-- `A153786(n)+(n+1)²` -/
def P4525279926924938249.Spec : Prop :=
  ∀ n, P4525279926924938249.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P6058100060166903924

`A304378(n+1)/4+1`
-/

namespace A143855.P6058100060166903924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304378 (n + 1) : ℚ) / 4 + 1

end

end A143855.P6058100060166903924

namespace A143855

/-- `A304378(n+1)/4+1` -/
def P6058100060166903924.Spec : Prop :=
  ∀ n, P6058100060166903924.a n = (A143855 (n + 1) : ℚ)

end A143855

/-! ## A143855.P7138534584836459082

`2*A085250(n)+n+1`
-/

namespace A143855.P7138534584836459082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085250 n + (n + 1 : ℤ)

end

end A143855.P7138534584836459082

namespace A143855

/-- `2*A085250(n)+n+1` -/
def P7138534584836459082.Spec : Prop :=
  ∀ n, P7138534584836459082.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P7437960465007811439

`n-1+2*A080856(n)`
-/

namespace A143855.P7437960465007811439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + 2 * A080856 n

end

end A143855.P7437960465007811439

namespace A143855

/-- `n-1+2*A080856(n)` -/
def P7437960465007811439.Spec : Prop :=
  ∀ n, P7437960465007811439.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P15585866220379963495

`A143856(n+1)-2*n`
-/

namespace A143855.P15585866220379963495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143856 (n + 1) - (2 * n : ℤ)

end

end A143855.P15585866220379963495

namespace A143855

/-- `A143856(n+1)-2*n` -/
def P15585866220379963495.Spec : Prop :=
  ∀ n, P15585866220379963495.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P7200371560057723011

`A143861(n+1)-4*n`
-/

namespace A143855.P7200371560057723011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143861 (n + 1) - (4 * n : ℤ)

end

end A143855.P7200371560057723011

namespace A143855

/-- `A143861(n+1)-4*n` -/
def P7200371560057723011.Spec : Prop :=
  ∀ n, P7200371560057723011.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P2584183465252359732

`∑[8*record[A006257(2*n)]+1]`
-/

namespace A143855.P2584183465252359732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143855.P2584183465252359732

namespace A143855

/-- `∑[8*record[A006257(2*n)]+1]` -/
def P2584183465252359732.Spec : Prop :=
  ∀ n, P2584183465252359732.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P10172811505868319647

`abs(2*n*or(1, A086570(n))+1-n)`
-/

namespace A143855.P10172811505868319647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) * Int.lor 1 (A086570 n) + 1 - (n : ℤ)|

end

end A143855.P10172811505868319647

namespace A143855

/-- `abs(2*n*or(1, A086570(n))+1-n)` -/
def P10172811505868319647.Spec : Prop :=
  ∀ n, P10172811505868319647.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P1039650641828069443

`A033578(n)+A016742(n)`
-/

namespace A143855.P1039650641828069443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033578 n + A016742 n

end

end A143855.P1039650641828069443

namespace A143855

/-- `A033578(n)+A016742(n)` -/
def P1039650641828069443.Spec : Prop :=
  ∀ n, P1039650641828069443.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P3943284845882497661

`A054552(n)+A014642(n)`
-/

namespace A143855.P3943284845882497661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n + A014642 n

end

end A143855.P3943284845882497661

namespace A143855

/-- `A054552(n)+A014642(n)` -/
def P3943284845882497661.Spec : Prop :=
  ∀ n, P3943284845882497661.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P14034047836856376531

`A080857(n)+A022265(n)`
-/

namespace A143855.P14034047836856376531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080857 n + A022265 n

end

end A143855.P14034047836856376531

namespace A143855

/-- `A080857(n)+A022265(n)` -/
def P14034047836856376531.Spec : Prop :=
  ∀ n, P14034047836856376531.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P1829397504485834477

`A081585(n)+A051870(n)`
-/

namespace A143855.P1829397504485834477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n + A051870 n

end

end A143855.P1829397504485834477

namespace A143855

/-- `A081585(n)+A051870(n)` -/
def P1829397504485834477.Spec : Prop :=
  ∀ n, P1829397504485834477.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P3410696198834543738

`A134154(n)+A005563(n)`
-/

namespace A143855.P3410696198834543738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134154 n + A005563 n

end

end A143855.P3410696198834543738

namespace A143855

/-- `A134154(n)+A005563(n)` -/
def P3410696198834543738.Spec : Prop :=
  ∀ n, P3410696198834543738.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P2943532994055145963

`A139274(n)+A033567(n)`
-/

namespace A143855.P2943532994055145963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139274 n + A033567 n

end

end A143855.P2943532994055145963

namespace A143855

/-- `A139274(n)+A033567(n)` -/
def P2943532994055145963.Spec : Prop :=
  ∀ n, P2943532994055145963.a n = A143855 (n + 1)

end A143855

/-! ## A143855.P10708420435513241062

`A153795(n)+A028387(n)`
-/

namespace A143855.P10708420435513241062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153795 n + A028387 n

end

end A143855.P10708420435513241062

namespace A143855

/-- `A153795(n)+A028387(n)` -/
def P10708420435513241062.Spec : Prop :=
  ∀ n, P10708420435513241062.a n = A143855 (n + 1)

end A143855

/-!
# A143856: Ulam's spiral (ENE spoke).

The programs for A143856, the canonical program `A143856.P4637642312110297551` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143856 has offset 1).

The definition of A143856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143856.P4637642312110297551

`((32*(n+1)-37)²+39)/64`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143856

/-- `((32*(n+1)-37)²+39)/64` -/
def P4637642312110297551.Spec : Prop :=
  ∀ n, P4637642312110297551.a n = (A143856 (n + 1) : ℚ)

end A143856

/-! ## A143856.P5130983586234611457

`∑[a(n-1)+32]` with `a(0)=1, a(1)=11`
-/

namespace A143856.P5130983586234611457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143856.P5130983586234611457

namespace A143856

/-- `∑[a(n-1)+32]` -/
def P5130983586234611457.Spec : Prop :=
  ∀ n, (P5130983586234611457.a n : ℤ) = A143856 (n + 1)

end A143856

/-! ## A143856.P8828414503155437856

`abs(n*(16*n-6)-xor(n, -1))`
-/

namespace A143856.P8828414503155437856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((16 * n : ℤ) - 6) - Int.xor (n : ℤ) (-1)|

end

end A143856.P8828414503155437856

namespace A143856

/-- `abs(n*(16*n-6)-xor(n, -1))` -/
def P8828414503155437856.Spec : Prop :=
  ∀ n, P8828414503155437856.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P2675302589117971578

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=12, a(2)=55`
-/

namespace A143856.P2675302589117971578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 55] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A143856.P2675302589117971578

namespace A143856

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2675302589117971578.Spec : Prop :=
  ∀ n, P2675302589117971578.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P1871030059145950265

`A028994(n)+1+n`
-/

namespace A143856.P1871030059145950265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n + 1 + (n : ℤ)

end

end A143856.P1871030059145950265

namespace A143856

/-- `A028994(n)+1+n` -/
def P1871030059145950265.Spec : Prop :=
  ∀ n, P1871030059145950265.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P6723035407405627587

`A104188(n)+1-n`
-/

namespace A143856.P6723035407405627587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104188 n + (1 - (n : ℤ))

end

end A143856.P6723035407405627587

namespace A143856

/-- `A104188(n)+1-n` -/
def P6723035407405627587.Spec : Prop :=
  ∀ n, P6723035407405627587.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P13917585720666631414

`2*A139273(n)+n+1`
-/

namespace A143856.P13917585720666631414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139273 n + (n + 1 : ℤ)

end

end A143856.P13917585720666631414

namespace A143856

/-- `2*A139273(n)+n+1` -/
def P13917585720666631414.Spec : Prop :=
  ∀ n, P13917585720666631414.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P7103202376131855804

`A143855(n+1)+2*n`
-/

namespace A143856.P7103202376131855804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143855 (n + 1) + (2 * n : ℤ)

end

end A143856.P7103202376131855804

namespace A143856

/-- `A143855(n+1)+2*n` -/
def P7103202376131855804.Spec : Prop :=
  ∀ n, P7103202376131855804.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P2030539617634067392

`A143861(n+1)-2*n`
-/

namespace A143856.P2030539617634067392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143861 (n + 1) - (2 * n : ℤ)

end

end A143856.P2030539617634067392

namespace A143856

/-- `A143861(n+1)-2*n` -/
def P2030539617634067392.Spec : Prop :=
  ∀ n, P2030539617634067392.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P11082755685356503468

`2*A185438(n)-(n+1)`
-/

namespace A143856.P11082755685356503468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185438 n - (n + 1 : ℤ)

end

end A143856.P11082755685356503468

namespace A143856

/-- `2*A185438(n)-(n+1)` -/
def P11082755685356503468.Spec : Prop :=
  ∀ n, P11082755685356503468.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P15582196369248197348

`A143860(n+1)-4*n`
-/

namespace A143856.P15582196369248197348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143860 (n + 1) - (4 * n : ℤ)

end

end A143856.P15582196369248197348

namespace A143856

/-- `A143860(n+1)-4*n` -/
def P15582196369248197348.Spec : Prop :=
  ∀ n, P15582196369248197348.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P8213973555482887428

`n*A113770(n)+n+1`
-/

namespace A143856.P8213973555482887428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A113770 n + (n + 1 : ℤ)

end

end A143856.P8213973555482887428

namespace A143856

/-- `n*A113770(n)+n+1` -/
def P8213973555482887428.Spec : Prop :=
  ∀ n, P8213973555482887428.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P16251231024308017038

`floor(A304378(n+1)/4+2*n+1)`
-/

namespace A143856.P16251231024308017038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A304378 (n + 1) : ℚ) / 4 + (2 * n + 1 : ℚ)⌋

end

end A143856.P16251231024308017038

namespace A143856

/-- `floor(A304378(n+1)/4+2*n+1)` -/
def P16251231024308017038.Spec : Prop :=
  ∀ n, P16251231024308017038.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P14298294375526730470

`A033578(n)+A002943(n)`
-/

namespace A143856.P14298294375526730470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033578 n + A002943 n

end

end A143856.P14298294375526730470

namespace A143856

/-- `A033578(n)+A002943(n)` -/
def P14298294375526730470.Spec : Prop :=
  ∀ n, P14298294375526730470.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P3771897121916673259

`A033583(n)+A033568(n)`
-/

namespace A143856.P3771897121916673259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A033568 n

end

end A143856.P3771897121916673259

namespace A143856

/-- `A033583(n)+A033568(n)` -/
def P3771897121916673259.Spec : Prop :=
  ∀ n, P3771897121916673259.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P6508594659211906968

`A081587(n)+A001106(n)`
-/

namespace A143856.P6508594659211906968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081587 n + A001106 n

end

end A143856.P6508594659211906968

namespace A143856

/-- `A081587(n)+A001106(n)` -/
def P6508594659211906968.Spec : Prop :=
  ∀ n, P6508594659211906968.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P16870279101019420985

`A080859(n)+A051874(n)`
-/

namespace A143856.P16870279101019420985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n + A051874 n

end

end A143856.P16870279101019420985

namespace A143856

/-- `A080859(n)+A051874(n)` -/
def P16870279101019420985.Spec : Prop :=
  ∀ n, P16870279101019420985.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P4308673480590707944

`A153780(n)+A002522(n)`
-/

namespace A143856.P4308673480590707944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153780 n + A002522 n

end

end A143856.P4308673480590707944

namespace A143856

/-- `A153780(n)+A002522(n)` -/
def P4308673480590707944.Spec : Prop :=
  ∀ n, P4308673480590707944.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P6614674790603477458

`A125201(n)+A033585(n)`
-/

namespace A143856.P6614674790603477458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125201 n + A033585 n

end

end A143856.P6614674790603477458

namespace A143856

/-- `A125201(n)+A033585(n)` -/
def P6614674790603477458.Spec : Prop :=
  ∀ n, P6614674790603477458.a n = A143856 (n + 1)

end A143856

/-! ## A143856.P14614660565780468004

`A152750(n)+A016777(n)`
-/

namespace A143856.P14614660565780468004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n + A016777 n

end

end A143856.P14614660565780468004

namespace A143856

/-- `A152750(n)+A016777(n)` -/
def P14614660565780468004.Spec : Prop :=
  ∀ n, P14614660565780468004.a n = A143856 (n + 1)

end A143856

/-!
# A143857: a(n) = n + (n+1)*(n+2)^(n+3).

The programs for A143857, the canonical program `A143857.P12452860434972836747` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143857 has offset 0).

The definition of A143857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n+1)*(n+2)^(n+3)` (program `A143857.P12452860434972836747`, by `A143857.P12452860434972836747.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143857.P12452860434972836747

`n+(n+1)*(n+2)^(n+3)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143857

/-- `n+(n+1)*(n+2)^(n+3)` -/
def P12452860434972836747.Spec : Prop :=
  ∀ n, (P12452860434972836747.a n : ℤ) = A143857 n

theorem P12452860434972836747.correct : P12452860434972836747.Spec := by
  intro n
  simp only [A143857]

end A143857

/-! ## A143857.P15011781092767018871

`abs((n+1)*(A266204(n)-A271560(n))-n)`
-/

namespace A143857.P15011781092767018871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (A266204 n - A271560 n) - (n : ℤ)|

end

end A143857.P15011781092767018871

namespace A143857

/-- `abs((n+1)*(A266204(n)-A271560(n))-n)` -/
def P15011781092767018871.Spec : Prop :=
  ∀ n, P15011781092767018871.a n = A143857 n

end A143857

/-! ## A143857.P15579275197597146835

`(A061250(n+3)+n)%A061252(2*n+3)`
-/

namespace A143857.P15579275197597146835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061250 (n + 3) + (n : ℤ)) (A061252 (2 * n + 3))

end

end A143857.P15579275197597146835

namespace A143857

/-- `(A061250(n+3)+n)%A061252(2*n+3)` -/
def P15579275197597146835.Spec : Prop :=
  ∀ n, P15579275197597146835.a n = A143857 n

end A143857

/-!
# A143858: Number of pairwise disjoint unions of m integer-to-integer subintervals of [0,n]; a rectangular array by antidiagonals, n>=2m-1, m>=1.

The programs for A143858, the canonical program `A143858.P1918811544124645960` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143858 has offset 1).

The definition of A143858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143858.P15606147396191272940

`abs(A109954(n))`
-/

namespace A143858.P15606147396191272940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109954 n|

end

end A143858.P15606147396191272940

namespace A143858

/-- `abs(A109954(n))` -/
def P15606147396191272940.Spec : Prop :=
  ∀ n, P15606147396191272940.a n = A143858 (n + 1)

end A143858

/-! ## A143858.P11090570562610948660

`A258993(n+2)`
-/

namespace A143858.P11090570562610948660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258993 (n + 2)

end

end A143858.P11090570562610948660

namespace A143858

/-- `A258993(n+2)` -/
def P11090570562610948660.Spec : Prop :=
  ∀ n, P11090570562610948660.a n = A143858 (n + 1)

end A143858

/-! ## A143858.P9545749171174592087

`A085478(comp[∑[n]])`
-/

namespace A143858.P9545749171174592087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A143858.P9545749171174592087

namespace A143858

/-- `A085478(comp[∑[n]])` -/
def P9545749171174592087.Spec : Prop :=
  ∀ n, P9545749171174592087.a n = A143858 (n + 1)

end A143858

/-! ## A143858.P17286686374254822831

`A210551(A038722(n+2))`
-/

namespace A143858.P17286686374254822831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210551 (A038722 (n + 2)).toNat

end

end A143858.P17286686374254822831

namespace A143858

/-- `A210551(A038722(n+2))` -/
def P17286686374254822831.Spec : Prop :=
  ∀ n, P17286686374254822831.a n = A143858 (n + 1)

end A143858

/-! ## A143858.P12005043983483078640

`A097807(n)*A109954(n)`
-/

namespace A143858.P12005043983483078640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A109954 n

end

end A143858.P12005043983483078640

namespace A143858

/-- `A097807(n)*A109954(n)` -/
def P12005043983483078640.Spec : Prop :=
  ∀ n, P12005043983483078640.a n = A143858 (n + 1)

end A143858

/-! ## A143858.P13096906844990194429

`gcd(A000038(n), A109954(n))`
-/

namespace A143858.P13096906844990194429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A109954 n)

end

end A143858.P13096906844990194429

namespace A143858

/-- `gcd(A000038(n), A109954(n))` -/
def P13096906844990194429.Spec : Prop :=
  ∀ n, (P13096906844990194429.a n : ℤ) = A143858 (n + 1)

end A143858

/-! ## A143858.P3159058546583871187

`lcm(A020985(n), A109954(n))`
-/

namespace A143858.P3159058546583871187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A109954 n)

end

end A143858.P3159058546583871187

namespace A143858

/-- `lcm(A020985(n), A109954(n))` -/
def P3159058546583871187.Spec : Prop :=
  ∀ n, (P3159058546583871187.a n : ℤ) = A143858 (n + 1)

end A143858

/-! ## A143858.P1918811544124645960

`abs(A129818(∑[A035214(n)]))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A143858

/-- `abs(A129818(∑[A035214(n)]))` -/
def P1918811544124645960.Spec : Prop :=
  ∀ n, P1918811544124645960.a n = A143858 (n + 1)

theorem P1918811544124645960.correct : P1918811544124645960.Spec := by
  intro n
  simp only [A143858, Nat.add_sub_cancel]

end A143858

/-! ## A143858.P17112377103286923743

`A207620(n+2)-A085478(n)`
-/

namespace A143858.P17112377103286923743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207620 (n + 2) - A085478 n

end

end A143858.P17112377103286923743

namespace A143858

/-- `A207620(n+2)-A085478(n)` -/
def P17112377103286923743.Spec : Prop :=
  ∀ n, P17112377103286923743.a n = A143858 (n + 1)

end A143858

/-! ## A143858.P5070443888408031003

`A092371(n+1)/A135278(n)`
-/

namespace A143858.P5070443888408031003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092371 (n + 1) : ℚ) / (A135278 n : ℚ)

end

end A143858.P5070443888408031003

namespace A143858

/-- `A092371(n+1)/A135278(n)` -/
def P5070443888408031003.Spec : Prop :=
  ∀ n, P5070443888408031003.a n = (A143858 (n + 1) : ℚ)

end A143858

/-! ## A143858.P7976730510296999257

`C(A051162(n)+2, A025581(n))`
-/

namespace A143858.P7976730510296999257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n + 2).toNat (A025581 n).toNat

end

end A143858.P7976730510296999257

namespace A143858

/-- `C(A051162(n)+2, A025581(n))` -/
def P7976730510296999257.Spec : Prop :=
  ∀ n, (P7976730510296999257.a n : ℤ) = A143858 (n + 1)

end A143858

/-! ## A143858.P17849271258355087637

`C(A094727(n+2), A025581(n))`
-/

namespace A143858.P17849271258355087637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 (n + 2)).toNat (A025581 n).toNat

end

end A143858.P17849271258355087637

namespace A143858

/-- `C(A094727(n+2), A025581(n))` -/
def P17849271258355087637.Spec : Prop :=
  ∀ n, (P17849271258355087637.a n : ℤ) = A143858 (n + 1)

end A143858

/-! ## A143858.P14698529924350815749

`C(A134478(n)+2, A025581(n))`
-/

namespace A143858.P14698529924350815749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134478 n + 2).toNat (A025581 n).toNat

end

end A143858.P14698529924350815749

namespace A143858

/-- `C(A134478(n)+2, A025581(n))` -/
def P14698529924350815749.Spec : Prop :=
  ∀ n, (P14698529924350815749.a n : ℤ) = A143858 (n + 1)

end A143858

/-! ## A143858.P1470634271626934954

`C(A094727(n+2), A004736(n+2))`
-/

namespace A143858.P1470634271626934954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 (n + 2)).toNat (A004736 (n + 2)).toNat

end

end A143858.P1470634271626934954

namespace A143858

/-- `C(A094727(n+2), A004736(n+2))` -/
def P1470634271626934954.Spec : Prop :=
  ∀ n, (P1470634271626934954.a n : ℤ) = A143858 (n + 1)

end A143858

/-! ## A143858.P16310303123372514490

`A085478(n)/A129818(n)*A109954(n)`
-/

namespace A143858.P16310303123372514490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085478 n : ℚ) / (A129818 n : ℚ) * (A109954 n : ℚ)

end

end A143858.P16310303123372514490

namespace A143858

/-- `A085478(n)/A129818(n)*A109954(n)` -/
def P16310303123372514490.Spec : Prop :=
  ∀ n, P16310303123372514490.a n = (A143858 (n + 1) : ℚ)

end A143858

/-! ## A143858.P12387509862281776437

`A208513(n+2)+A111125(n)-A085478(n+1)`
-/

namespace A143858.P12387509862281776437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208513 (n + 2) + (A111125 n - A085478 (n + 1))

end

end A143858.P12387509862281776437

namespace A143858

/-- `A208513(n+2)+A111125(n)-A085478(n+1)` -/
def P12387509862281776437.Spec : Prop :=
  ∀ n, P12387509862281776437.a n = A143858 (n + 1)

end A143858

/-! ## A143858.P3541397187075954857

`C(A003056(n+1)+A002260(n+2), A004736(n+2))`
-/

namespace A143858.P3541397187075954857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 (n + 1) + A002260 (n + 2)).toNat (A004736 (n + 2)).toNat

end

end A143858.P3541397187075954857

namespace A143858

/-- `C(A003056(n+1)+A002260(n+2), A004736(n+2))` -/
def P3541397187075954857.Spec : Prop :=
  ∀ n, (P3541397187075954857.a n : ℤ) = A143858 (n + 1)

end A143858

/-! ## A143858.P16296983268926250224

`A370233(n+1)/A085478(n+1)`
-/

namespace A143858.P16296983268926250224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370233 (n + 1) : ℚ) / (A085478 (n + 1) : ℚ)

end

end A143858.P16296983268926250224

namespace A143858

/-- `A370233(n+1)/A085478(n+1)` -/
def P16296983268926250224.Spec : Prop :=
  ∀ n, P16296983268926250224.a n = (A143858 (n + 1) : ℚ)

end A143858

/-! ## A143858.P15428269292291454786

`A210039(A056537(n+1))`
-/

namespace A143858.P15428269292291454786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210039 (A056537 (n + 1)).toNat

end

end A143858.P15428269292291454786

namespace A143858

/-- `A210039(A056537(n+1))` -/
def P15428269292291454786.Spec : Prop :=
  ∀ n, P15428269292291454786.a n = A143858 (n + 1)

end A143858

/-! ## A143858.P4151284295882325321

`A098925(A063657(n+1))`
-/

namespace A143858.P4151284295882325321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A063657 (n + 1)).toNat

end

end A143858.P4151284295882325321

namespace A143858

/-- `A098925(A063657(n+1))` -/
def P4151284295882325321.Spec : Prop :=
  ∀ n, P4151284295882325321.a n = A143858 (n + 1)

end A143858

/-!
# A143859: Ulam's spiral (WNW spoke).

The programs for A143859, the canonical program `A143859.P13308327507762584430` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143859 has offset 1).

The definition of A143859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143859.P13308327507762584430

`((32*(n+1)-31)²+63)/64`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143859

/-- `((32*(n+1)-31)²+63)/64` -/
def P13308327507762584430.Spec : Prop :=
  ∀ n, P13308327507762584430.a n = (A143859 (n + 1) : ℚ)

end A143859

/-! ## A143859.P15419353420057364065

`∑[a(n-1)+32]` with `a(0)=1, a(1)=17`
-/

namespace A143859.P15419353420057364065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143859.P15419353420057364065

namespace A143859

/-- `∑[a(n-1)+32]` -/
def P15419353420057364065.Spec : Prop :=
  ∀ n, (P15419353420057364065.a n : ℤ) = A143859 (n + 1)

end A143859

/-! ## A143859.P13055224281152092405

`abs(n-comp[or(1, n)]-1-(4*n)²)`
-/

namespace A143859.P13055224281152092405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1 - ((4 * n) ^ 2 : ℤ)|

end

end A143859.P13055224281152092405

namespace A143859

/-- `abs(n-comp[or(1, n)]-1-(4*n)²)` -/
def P13055224281152092405.Spec : Prop :=
  ∀ n, P13055224281152092405.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P17999720371320463927

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=18, a(2)=67`
-/

namespace A143859.P17999720371320463927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18, 67] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A143859.P17999720371320463927

namespace A143859

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17999720371320463927.Spec : Prop :=
  ∀ n, P17999720371320463927.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P10675628289462348494

`A204675(n)-n`
-/

namespace A143859.P10675628289462348494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204675 n - (n : ℤ)

end

end A143859.P10675628289462348494

namespace A143859

/-- `A204675(n)-n` -/
def P10675628289462348494.Spec : Prop :=
  ∀ n, P10675628289462348494.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P9783778108503563833

`A016802(n)+1+n`
-/

namespace A143859.P9783778108503563833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 n + 1 + (n : ℤ)

end

end A143859.P9783778108503563833

namespace A143859

/-- `A016802(n)+1+n` -/
def P9783778108503563833.Spec : Prop :=
  ∀ n, P9783778108503563833.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P213767531354060255

`n*A158057(n)+1`
-/

namespace A143859.P213767531354060255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A158057 n + 1

end

end A143859.P213767531354060255

namespace A143859

/-- `n*A158057(n)+1` -/
def P213767531354060255.Spec : Prop :=
  ∀ n, P213767531354060255.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P1243805317142314878

`A082041(n)-3*n`
-/

namespace A143859.P1243805317142314878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082041 n - (3 * n : ℤ)

end

end A143859.P1243805317142314878

namespace A143859

/-- `A082041(n)-3*n` -/
def P1243805317142314878.Spec : Prop :=
  ∀ n, P1243805317142314878.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P2280014006795520134

`abs(7*n-A016814(n))`
-/

namespace A143859.P2280014006795520134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 * n : ℤ) - A016814 n|

end

end A143859.P2280014006795520134

namespace A143859

/-- `abs(7*n-A016814(n))` -/
def P2280014006795520134.Spec : Prop :=
  ∀ n, P2280014006795520134.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P6800357615854291094

`ceil(A158575(n)/2+n)`
-/

namespace A143859.P6800357615854291094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158575 n : ℚ) / 2 + (n : ℚ)⌉

end

end A143859.P6800357615854291094

namespace A143859

/-- `ceil(A158575(n)/2+n)` -/
def P6800357615854291094.Spec : Prop :=
  ∀ n, P6800357615854291094.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P7036590026220607070

`A143860(n+1)+2*n`
-/

namespace A143859.P7036590026220607070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143860 (n + 1) + (2 * n : ℤ)

end

end A143859.P7036590026220607070

namespace A143859

/-- `A143860(n+1)+2*n` -/
def P7036590026220607070.Spec : Prop :=
  ∀ n, P7036590026220607070.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P13973440362689342627

`A143854(n+1)-2*n`
-/

namespace A143859.P13973440362689342627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143854 (n + 1) - (2 * n : ℤ)

end

end A143859.P13973440362689342627

namespace A143859

/-- `A143854(n+1)-2*n` -/
def P13973440362689342627.Spec : Prop :=
  ∀ n, P13973440362689342627.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P6347307372114189033

`A143861(n+1)+4*n`
-/

namespace A143859.P6347307372114189033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143861 (n + 1) + (4 * n : ℤ)

end

end A143859.P6347307372114189033

namespace A143859

/-- `A143861(n+1)+4*n` -/
def P6347307372114189033.Spec : Prop :=
  ∀ n, P6347307372114189033.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P3407681146429234148

`A143838(n+1)-4*n`
-/

namespace A143859.P3407681146429234148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143838 (n + 1) - (4 * n : ℤ)

end

end A143859.P3407681146429234148

namespace A143859

/-- `A143838(n+1)-4*n` -/
def P3407681146429234148.Spec : Prop :=
  ∀ n, P3407681146429234148.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P4070050701592315925

`∑[record[16*A006257(n)]+1]`
-/

namespace A143859.P4070050701592315925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143859.P4070050701592315925

namespace A143859

/-- `∑[record[16*A006257(n)]+1]` -/
def P4070050701592315925.Spec : Prop :=
  ∀ n, P4070050701592315925.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P4412106004866741628

`∑[16*(A004277(n)-1)+1]`
-/

namespace A143859.P4412106004866741628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A004277 n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143859.P4412106004866741628

namespace A143859

/-- `∑[16*(A004277(n)-1)+1]` -/
def P4412106004866741628.Spec : Prop :=
  ∀ n, P4412106004866741628.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P16755713490401949171

`(16/(n+1)*A000290(n)+1)*(n+1)`
-/

namespace A143859.P16755713490401949171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 / (n + 1 : ℚ) * (A000290 n : ℚ) + 1) * (n + 1 : ℚ)

end

end A143859.P16755713490401949171

namespace A143859

/-- `(16/(n+1)*A000290(n)+1)*(n+1)` -/
def P16755713490401949171.Spec : Prop :=
  ∀ n, P16755713490401949171.a n = (A143859 (n + 1) : ℚ)

end A143859

/-! ## A143859.P16970897131319861361

`A022289(n)+A000124(n)`
-/

namespace A143859.P16970897131319861361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022289 n + A000124 n

end

end A143859.P16970897131319861361

namespace A143859

/-- `A022289(n)+A000124(n)` -/
def P16970897131319861361.Spec : Prop :=
  ∀ n, P16970897131319861361.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P7614605131489646731

`A022281(n)+A006137(n)`
-/

namespace A143859.P7614605131489646731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n + A006137 n

end

end A143859.P7614605131489646731

namespace A143859

/-- `A022281(n)+A006137(n)` -/
def P7614605131489646731.Spec : Prop :=
  ∀ n, P7614605131489646731.a n = A143859 (n + 1)

end A143859

/-! ## A143859.P10526880427527499838

`A028994(n)+A016993(n)`
-/

namespace A143859.P10526880427527499838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n + A016993 n

end

end A143859.P10526880427527499838

namespace A143859

/-- `A028994(n)+A016993(n)` -/
def P10526880427527499838.Spec : Prop :=
  ∀ n, P10526880427527499838.a n = A143859 (n + 1)

end A143859

/-!
# A143860: Ulam's spiral (NNW spoke).

The programs for A143860, the canonical program `A143860.P9502409767252062569` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143860 has offset 1).

The definition of A143860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143860.P9502409767252062569

`((32*(n+1)-33)²+63)/64`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143860

/-- `((32*(n+1)-33)²+63)/64` -/
def P9502409767252062569.Spec : Prop :=
  ∀ n, P9502409767252062569.a n = (A143860 (n + 1) : ℚ)

end A143860

/-! ## A143860.P13537143657322196240

`∑[a(n-1)+32]` with `a(0)=1, a(1)=15`
-/

namespace A143860.P13537143657322196240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143860.P13537143657322196240

namespace A143860

/-- `∑[a(n-1)+32]` -/
def P13537143657322196240.Spec : Prop :=
  ∀ n, (P13537143657322196240.a n : ℤ) = A143860 (n + 1)

end A143860

/-! ## A143860.P8950228617873312051

`abs(or(1, (4*n)²)-n)`
-/

namespace A143860.P8950228617873312051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 ((4 * n) ^ 2) : ℤ) - (n : ℤ)|

end

end A143860.P8950228617873312051

namespace A143860

/-- `abs(or(1, (4*n)²)-n)` -/
def P8950228617873312051.Spec : Prop :=
  ∀ n, P8950228617873312051.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P6551456126974126551

`abs(xor(1, (4*n)²)-n)`
-/

namespace A143860.P6551456126974126551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 1 ((4 * n) ^ 2) : ℤ) - (n : ℤ)|

end

end A143860.P6551456126974126551

namespace A143860

/-- `abs(xor(1, (4*n)²)-n)` -/
def P6551456126974126551.Spec : Prop :=
  ∀ n, P6551456126974126551.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P10646978622553382407

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=16, a(2)=63`
-/

namespace A143860.P10646978622553382407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 16, 63] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A143860.P10646978622553382407

namespace A143860

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P10646978622553382407.Spec : Prop :=
  ∀ n, P10646978622553382407.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P322184120395840953

`A016802(n)+1-n`
-/

namespace A143860.P322184120395840953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 n + (1 - (n : ℤ))

end

end A143860.P322184120395840953

namespace A143860

/-- `A016802(n)+1-n` -/
def P322184120395840953.Spec : Prop :=
  ∀ n, P322184120395840953.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P11929009567667500035

`A204675(n)-3*n`
-/

namespace A143860.P11929009567667500035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204675 n - (3 * n : ℤ)

end

end A143860.P11929009567667500035

namespace A143860

/-- `A204675(n)-3*n` -/
def P11929009567667500035.Spec : Prop :=
  ∀ n, P11929009567667500035.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P17519548365752811366

`A082041(n)-5*n`
-/

namespace A143860.P17519548365752811366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082041 n - (5 * n : ℤ)

end

end A143860.P17519548365752811366

namespace A143860

/-- `A082041(n)-5*n` -/
def P17519548365752811366.Spec : Prop :=
  ∀ n, P17519548365752811366.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P4304773292978656151

`ceil(A158575(n)/2-n)`
-/

namespace A143860.P4304773292978656151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158575 n : ℚ) / 2 - (n : ℚ)⌉

end

end A143860.P4304773292978656151

namespace A143860

/-- `ceil(A158575(n)/2-n)` -/
def P4304773292978656151.Spec : Prop :=
  ∀ n, P4304773292978656151.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P16176622311143910162

`2*A139274(n)+n+1`
-/

namespace A143860.P16176622311143910162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139274 n + (n + 1 : ℤ)

end

end A143860.P16176622311143910162

namespace A143860

/-- `2*A139274(n)+n+1` -/
def P16176622311143910162.Spec : Prop :=
  ∀ n, P16176622311143910162.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P12169493383479380263

`A143861(n+1)+2*n`
-/

namespace A143860.P12169493383479380263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143861 (n + 1) + (2 * n : ℤ)

end

end A143860.P12169493383479380263

namespace A143860

/-- `A143861(n+1)+2*n` -/
def P12169493383479380263.Spec : Prop :=
  ∀ n, P12169493383479380263.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P13594344772361125443

`2*A081585(n)-(n+1)`
-/

namespace A143860.P13594344772361125443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081585 n - (n + 1 : ℤ)

end

end A143860.P13594344772361125443

namespace A143860

/-- `2*A081585(n)-(n+1)` -/
def P13594344772361125443.Spec : Prop :=
  ∀ n, P13594344772361125443.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P9031297704793460337

`A143859(n+1)-2*n`
-/

namespace A143860.P9031297704793460337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143859 (n + 1) - (2 * n : ℤ)

end

end A143860.P9031297704793460337

namespace A143860

/-- `A143859(n+1)-2*n` -/
def P9031297704793460337.Spec : Prop :=
  ∀ n, P9031297704793460337.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P6697078961958528174

`A143856(n+1)+4*n`
-/

namespace A143860.P6697078961958528174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143856 (n + 1) + (4 * n : ℤ)

end

end A143860.P6697078961958528174

namespace A143860

/-- `A143856(n+1)+4*n` -/
def P6697078961958528174.Spec : Prop :=
  ∀ n, P6697078961958528174.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P6342985476239411893

`A143854(n+1)-4*n`
-/

namespace A143860.P6342985476239411893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143854 (n + 1) - (4 * n : ℤ)

end

end A143860.P6342985476239411893

namespace A143860

/-- `A143854(n+1)-4*n` -/
def P6342985476239411893.Spec : Prop :=
  ∀ n, P6342985476239411893.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P11056569591193795418

`abs(2*A139098(n)-(n-1))`
-/

namespace A143860.P11056569591193795418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A139098 n - ((n : ℤ) - 1)|

end

end A143860.P11056569591193795418

namespace A143860

/-- `abs(2*A139098(n)-(n-1))` -/
def P11056569591193795418.Spec : Prop :=
  ∀ n, P11056569591193795418.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P14161690812575976862

`abs(2*A008527(n)-(n+3))`
-/

namespace A143860.P14161690812575976862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A008527 n - (n + 3 : ℤ)|

end

end A143860.P14161690812575976862

namespace A143860

/-- `abs(2*A008527(n)-(n+3))` -/
def P14161690812575976862.Spec : Prop :=
  ∀ n, P14161690812575976862.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P7205013931520472585

`abs(4*n*A008574(n)+1-n)`
-/

namespace A143860.P7205013931520472585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * n : ℤ) * A008574 n + 1 - (n : ℤ)|

end

end A143860.P7205013931520472585

namespace A143860

/-- `abs(4*n*A008574(n)+1-n)` -/
def P7205013931520472585.Spec : Prop :=
  ∀ n, P7205013931520472585.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P7837954038860589285

`abs(8*n*A004277(n)+1-n)`
-/

namespace A143860.P7837954038860589285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n : ℤ) * A004277 n + 1 - (n : ℤ)|

end

end A143860.P7837954038860589285

namespace A143860

/-- `abs(8*n*A004277(n)+1-n)` -/
def P7837954038860589285.Spec : Prop :=
  ∀ n, P7837954038860589285.a n = A143860 (n + 1)

end A143860

/-! ## A143860.P4346703688980614557

`abs(4*4*n*gcd(n, A255177(n))+1-n)`
-/

namespace A143860.P4346703688980614557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * (4 * n) * Int.gcd (n : ℤ) (A255177 n) + 1 : ℤ) - (n : ℤ)|

end

end A143860.P4346703688980614557

namespace A143860

/-- `abs(4*4*n*gcd(n, A255177(n))+1-n)` -/
def P4346703688980614557.Spec : Prop :=
  ∀ n, P4346703688980614557.a n = A143860 (n + 1)

end A143860

/-!
# A143861: Ulam's spiral (NNE spoke).

The programs for A143861, the canonical program `A143861.P1084330593149552947` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143861 has offset 1).

The definition of A143861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143861.P1084330593149552947

`((32*(n+1)-35)²+55)/64`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143861

/-- `((32*(n+1)-35)²+55)/64` -/
def P1084330593149552947.Spec : Prop :=
  ∀ n, P1084330593149552947.a n = (A143861 (n + 1) : ℚ)

end A143861

/-! ## A143861.P13903137297661997990

`∑[a(n-1)+32]` with `a(0)=1, a(1)=13`
-/

namespace A143861.P13903137297661997990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143861.P13903137297661997990

namespace A143861

/-- `∑[a(n-1)+32]` -/
def P13903137297661997990.Spec : Prop :=
  ∀ n, (P13903137297661997990.a n : ℤ) = A143861 (n + 1)

end A143861

/-! ## A143861.P38851423293115373

`A104188(n)+1+n`
-/

namespace A143861.P38851423293115373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104188 n + 1 + (n : ℤ)

end

end A143861.P38851423293115373

namespace A143861

/-- `A104188(n)+1+n` -/
def P38851423293115373.Spec : Prop :=
  ∀ n, P38851423293115373.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P16240758276266384854

`A204675(n)-5*n`
-/

namespace A143861.P16240758276266384854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204675 n - (5 * n : ℤ)

end

end A143861.P16240758276266384854

namespace A143861

/-- `A204675(n)-5*n` -/
def P16240758276266384854.Spec : Prop :=
  ∀ n, P16240758276266384854.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P14603667090067945520

`A153780(n)+(n+1)²`
-/

namespace A143861.P14603667090067945520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153780 n + ((n + 1) ^ 2 : ℤ)

end

end A143861.P14603667090067945520

namespace A143861

/-- `A153780(n)+(n+1)²` -/
def P14603667090067945520.Spec : Prop :=
  ∀ n, P14603667090067945520.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P7767770754992949006

`2*A014635(n)+n+1`
-/

namespace A143861.P7767770754992949006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014635 n + (n + 1 : ℤ)

end

end A143861.P7767770754992949006

namespace A143861

/-- `2*A014635(n)+n+1` -/
def P7767770754992949006.Spec : Prop :=
  ∀ n, P7767770754992949006.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P9711816813595492856

`A143856(n+1)+2*n`
-/

namespace A143861.P9711816813595492856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143856 (n + 1) + (2 * n : ℤ)

end

end A143861.P9711816813595492856

namespace A143861

/-- `A143856(n+1)+2*n` -/
def P9711816813595492856.Spec : Prop :=
  ∀ n, P9711816813595492856.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P2980724459095107720

`A143860(n+1)-2*n`
-/

namespace A143861.P2980724459095107720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143860 (n + 1) - (2 * n : ℤ)

end

end A143861.P2980724459095107720

namespace A143861

/-- `A143860(n+1)-2*n` -/
def P2980724459095107720.Spec : Prop :=
  ∀ n, P2980724459095107720.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P7756925964784205922

`A143855(n+1)+4*n`
-/

namespace A143861.P7756925964784205922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143855 (n + 1) + (4 * n : ℤ)

end

end A143861.P7756925964784205922

namespace A143861

/-- `A143855(n+1)+4*n` -/
def P7756925964784205922.Spec : Prop :=
  ∀ n, P7756925964784205922.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P10821033396625651106

`A143859(n+1)-4*n`
-/

namespace A143861.P10821033396625651106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143859 (n + 1) - (4 * n : ℤ)

end

end A143861.P10821033396625651106

namespace A143861

/-- `A143859(n+1)-4*n` -/
def P10821033396625651106.Spec : Prop :=
  ∀ n, P10821033396625651106.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P2673772909122854150

`∑[abs(2-record[16*A006257(n)])-1]`
-/

namespace A143861.P2673772909122854150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143861.P2673772909122854150

namespace A143861

/-- `∑[abs(2-record[16*A006257(n)])-1]` -/
def P2673772909122854150.Spec : Prop :=
  ∀ n, P2673772909122854150.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P12285730011554749839

`A028994(n)+A016777(n)`
-/

namespace A143861.P12285730011554749839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n + A016777 n

end

end A143861.P12285730011554749839

namespace A143861

/-- `A028994(n)+A016777(n)` -/
def P12285730011554749839.Spec : Prop :=
  ∀ n, P12285730011554749839.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P5948231854183269594

`A033996(n)+A033578(n)`
-/

namespace A143861.P5948231854183269594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n + A033578 n

end

end A143861.P5948231854183269594

namespace A143861

/-- `A033996(n)+A033578(n)` -/
def P5948231854183269594.Spec : Prop :=
  ∀ n, P5948231854183269594.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P17060001306779450530

`A081587(n)+A022264(n)`
-/

namespace A143861.P17060001306779450530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081587 n + A022264 n

end

end A143861.P17060001306779450530

namespace A143861

/-- `A081587(n)+A022264(n)` -/
def P17060001306779450530.Spec : Prop :=
  ∀ n, P17060001306779450530.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P12871471560552687698

`A062783(n)+A053755(n)`
-/

namespace A143861.P12871471560552687698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062783 n + A053755 n

end

end A143861.P12871471560552687698

namespace A143861

/-- `A062783(n)+A053755(n)` -/
def P12871471560552687698.Spec : Prop :=
  ∀ n, P12871471560552687698.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P16624395572571253600

`A082040(n)+A051868(n)`
-/

namespace A143861.P16624395572571253600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n + A051868 n

end

end A143861.P16624395572571253600

namespace A143861

/-- `A082040(n)+A051868(n)` -/
def P16624395572571253600.Spec : Prop :=
  ∀ n, P16624395572571253600.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P16563842233731490989

`A117625(n)+A022281(n)`
-/

namespace A143861.P16563842233731490989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117625 n + A022281 n

end

end A143861.P16563842233731490989

namespace A143861

/-- `A117625(n)+A022281(n)` -/
def P16563842233731490989.Spec : Prop :=
  ∀ n, P16563842233731490989.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P15382740938294531269

`A102083(n)+A051870(n)`
-/

namespace A143861.P15382740938294531269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 n + A051870 n

end

end A143861.P15382740938294531269

namespace A143861

/-- `A102083(n)+A051870(n)` -/
def P15382740938294531269.Spec : Prop :=
  ∀ n, P15382740938294531269.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P18137115921475373824

`A125201(n)+A033586(n)`
-/

namespace A143861.P18137115921475373824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125201 n + A033586 n

end

end A143861.P18137115921475373824

namespace A143861

/-- `A125201(n)+A033586(n)` -/
def P18137115921475373824.Spec : Prop :=
  ∀ n, P18137115921475373824.a n = A143861 (n + 1)

end A143861

/-! ## A143861.P11764176713894462263

`A152995(n)+A005892(n)`
-/

namespace A143861.P11764176713894462263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n + A005892 n

end

end A143861.P11764176713894462263

namespace A143861

/-- `A152995(n)+A005892(n)` -/
def P11764176713894462263.Spec : Prop :=
  ∀ n, P11764176713894462263.a n = A143861 (n + 1)

end A143861

/-!
# A143862: Number of compositions of n such that every part is divisible by number of parts.

The programs for A143862, there is no canonical definition to state claims against.
-/

/-! ## A143862.P4320632443890264830

`A331854(A331888(n)-A266611(n))`
-/

namespace A143862.P4320632443890264830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331854 (A331888 n - A266611 n).toNat

end

end A143862.P4320632443890264830

/-! ## A143862.P18240204641546854930

`A331854(A331888(n)-A028303(n)%2)`
-/

namespace A143862.P18240204641546854930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331854 (A331888 n - Int.tmod (A028303 n) 2).toNat

end

end A143862.P18240204641546854930

/-! ## A143862.P12566957464639172358

`A358195(A028240(n)+n)`
-/

namespace A143862.P12566957464639172358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358195 (A028240 n + (n : ℤ)).toNat

end

end A143862.P12566957464639172358

/-! ## A143862.P9157831307788436046

`A358195(or(n, A028240(n)))`
-/

namespace A143862.P9157831307788436046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358195 (Int.lor (n : ℤ) (A028240 n)).toNat

end

end A143862.P9157831307788436046

/-! ## A143862.P5078648384975141734

`A358195(A070939(floor(2^(n-1))))`
-/

namespace A143862.P5078648384975141734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358195 (A070939 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat).toNat

end

end A143862.P5078648384975141734

/-!
# A143863: Primes such that the sum of digits is a perfect power (A001597).

The programs for A143863, there is no canonical definition to state claims against.
-/

/-! ## A143863.P3632500620243245745

`p?[n*A182035(A007953(n))]`
-/

namespace A143863.P3632500620243245745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A182035 (A007953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143863.P3632500620243245745

/-! ## A143863.P4710450298816263061

`∩[A062338(n+1), A308163(n+1)]`
-/

namespace A143863.P4710450298816263061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143863.P4710450298816263061

/-! ## A143863.P14159758800621096846

`∩[A104213(n+1), A308163(n+1)]`
-/

namespace A143863.P14159758800621096846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143863.P14159758800621096846

/-! ## A143863.P6399042340440674378

`∩[A308163(n+1), A334321(n+1)]`
-/

namespace A143863.P6399042340440674378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143863.P6399042340440674378

/-! ## A143863.P8172809701086944174

`∩[A062338(n+1), A166246(n+1)]`
-/

namespace A143863.P8172809701086944174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143863.P8172809701086944174

/-!
# A143865: Eigentriangle of A099375 (odd number subsequences decrescendo).

The programs for A143865, there is no canonical definition to state claims against.
-/

/-! ## A143865.P12778215822155545665

`A052156(A002262(n))*A099375(n)`
-/

namespace A143865.P12778215822155545665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (A002262 n).toNat * A099375 n

end

end A143865.P12778215822155545665

/-! ## A143865.P8233062989260389306

`A052156(A144328(n+1))*A099375(n)`
-/

namespace A143865.P8233062989260389306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (A144328 (n + 1)).toNat * A099375 n

end

end A143865.P8233062989260389306

/-! ## A143865.P10261734715175185880

`A052156(val(A175840(n), 2))*A099375(n)`
-/

namespace A143865.P10261734715175185880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (SequenceMachineLib.valuation (A175840 n).toNat 2) * A099375 n

end

end A143865.P10261734715175185880

/-!
# A143866: Eigentriangle of A027293.

The programs for A143866, there is no canonical definition to state claims against.
-/

/-! ## A143866.P4264702455537248216

`A155002(n+1)-A185238(A130321(n))`
-/

namespace A143866.P4264702455537248216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155002 (n + 1) - A185238 (A130321 n).toNat

end

end A143866.P4264702455537248216

/-! ## A143866.P14847438879305048828

`A089854(A155002(n+1))%A004768(A000045(n))`
-/

namespace A143866.P14847438879305048828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089854 (A155002 (n + 1)).toNat) (A004768 (A000045 n).toNat)

end

end A143866.P14847438879305048828

/-! ## A143866.P5244309744708275312

`A184945(A184945(n)²)+A089854(A155002(n+1))`
-/

namespace A143866.P5244309744708275312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 (A184945 n ^ 2).toNat + A089854 (A155002 (n + 1)).toNat

end

end A143866.P5244309744708275312

/-! ## A143866.P13892272759338512408

`A000045(A184945(n)!)*A089854(A155002(n+1))`
-/

namespace A143866.P13892272759338512408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.factorial (A184945 n).toNat) * A089854 (A155002 (n + 1)).toNat

end

end A143866.P13892272759338512408

/-! ## A143866.P4299433822520566115

`A324326(A000040(n+2))+A089854(A155002(n+1))`
-/

namespace A143866.P4299433822520566115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324326 (A000040 (n + 2)).toNat + A089854 (A155002 (n + 1)).toNat

end

end A143866.P4299433822520566115

/-!
# A143869: An integer k is called regular (mod n) if there is an integer x such that k^2 x == k (mod n). Then these numbers are the sum of regular integers k (mod n) such that 1 <= k <= n for n=1,2,... .

The programs for A143869, the canonical program `A143869.P7252286459323011956` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143869 has offset 1).

The definition of A143869 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143869.P7252286459323011956

`(n+1)*(A055653(n+1)+1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143869

/-- `(n+1)*(A055653(n+1)+1)/2` -/
def P7252286459323011956.Spec : Prop :=
  ∀ n, P7252286459323011956.a n = (A143869 (n + 1) : ℚ)

end A143869

/-! ## A143869.P12044748583529496067

`(∑{d}[n+1, A114810(#)]+1)*(n+1)/2`
-/

namespace A143869.P12044748583529496067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A114810 d + 1 : ℤ) : ℚ) * ((n + 1 : ℚ) / 2)

end

end A143869.P12044748583529496067

namespace A143869

/-- `(∑{d}[n+1, A114810(#)]+1)*(n+1)/2` -/
def P12044748583529496067.Spec : Prop :=
  ∀ n, P12044748583529496067.a n = (A143869 (n + 1) : ℚ)

end A143869

/-! ## A143869.P14731391070011547000

`(n+1)*(∑{d}[n+1, A271102(#)*A332713((n+1)/#)]+1)/2`
-/

namespace A143869.P14731391070011547000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A271102 d * A332713 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + 1) : ℤ) : ℚ) / 2

end

end A143869.P14731391070011547000

namespace A143869

/-- `(n+1)*(∑{d}[n+1, A271102(#)*A332713((n+1)/#)]+1)/2` -/
def P14731391070011547000.Spec : Prop :=
  ∀ n, P14731391070011547000.a n = (A143869 (n + 1) : ℚ)

end A143869

/-! ## A143869.P9430906795121994586

`(∑{d}[n+1, A000010(A003557(#))*A173557(#)]+1)*(n+1)/2`
-/

namespace A143869.P9430906795121994586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A000010 (A003557 d).toNat * A173557 d + 1 : ℤ) : ℚ) * ((n + 1 : ℚ) / 2)

end

end A143869.P9430906795121994586

namespace A143869

/-- `(∑{d}[n+1, A000010(A003557(#))*A173557(#)]+1)*(n+1)/2` -/
def P9430906795121994586.Spec : Prop :=
  ∀ n, P9430906795121994586.a n = (A143869 (n + 1) : ℚ)

end A143869

/-! ## A143869.P2403608497041449488

`A326139((n+1)*(A055653(n+1)+1))`
-/

namespace A143869.P2403608497041449488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 ((n + 1 : ℤ) * (A055653 (n + 1) + 1)).toNat

end

end A143869.P2403608497041449488

namespace A143869

/-- `A326139((n+1)*(A055653(n+1)+1))` -/
def P2403608497041449488.Spec : Prop :=
  ∀ n, P2403608497041449488.a n = A143869 (n + 1)

end A143869

/-! ## A143869.P10150582895149457037

`(n+1)*(A004736(A055654(n+1)+A000124(n))+1)/2`
-/

namespace A143869.P10150582895149457037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A004736 (A055654 (n + 1) + A000124 n).toNat + 1) : ℚ) / 2

end

end A143869.P10150582895149457037

namespace A143869

/-- `(n+1)*(A004736(A055654(n+1)+A000124(n))+1)/2` -/
def P10150582895149457037.Spec : Prop :=
  ∀ n, P10150582895149457037.a n = (A143869 (n + 1) : ℚ)

end A143869

/-! ## A143869.P6313604340362971962

`ceil((A117656((n+1)²)+n)/2)`
-/

namespace A143869.P6313604340362971962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A117656 ((n + 1) ^ 2) + (n : ℤ) : ℚ) / 2⌉

end

end A143869.P6313604340362971962

namespace A143869

/-- `ceil((A117656((n+1)²)+n)/2)` -/
def P6313604340362971962.Spec : Prop :=
  ∀ n, P6313604340362971962.a n = A143869 (n + 1)

end A143869

/-! ## A143869.P3390956776987720796

`A000463(A117656((n+1)²)+n)`
-/

namespace A143869.P3390956776987720796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A117656 ((n + 1) ^ 2) + (n : ℤ)).toNat

end

end A143869.P3390956776987720796

namespace A143869

/-- `A000463(A117656((n+1)²)+n)` -/
def P3390956776987720796.Spec : Prop :=
  ∀ n, P3390956776987720796.a n = A143869 (n + 1)

end A143869

/-! ## A143869.P12984849283662744951

`A008619(A117656((n+1)²)+n)`
-/

namespace A143869.P12984849283662744951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A117656 ((n + 1) ^ 2) + (n : ℤ)).toNat

end

end A143869.P12984849283662744951

namespace A143869

/-- `A008619(A117656((n+1)²)+n)` -/
def P12984849283662744951.Spec : Prop :=
  ∀ n, P12984849283662744951.a n = A143869 (n + 1)

end A143869

/-! ## A143869.P5484805371209487173

`A110654(A117656((n+1)²)+n)`
-/

namespace A143869.P5484805371209487173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A117656 ((n + 1) ^ 2) + (n : ℤ)).toNat

end

end A143869.P5484805371209487173

namespace A143869

/-- `A110654(A117656((n+1)²)+n)` -/
def P5484805371209487173.Spec : Prop :=
  ∀ n, P5484805371209487173.a n = A143869 (n + 1)

end A143869

/-! ## A143869.P7179856615498793719

`A004525(A117656((n+1)²)+1+n)`
-/

namespace A143869.P7179856615498793719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A117656 ((n + 1) ^ 2) + 1 + (n : ℤ)).toNat

end

end A143869.P7179856615498793719

namespace A143869

/-- `A004525(A117656((n+1)²)+1+n)` -/
def P7179856615498793719.Spec : Prop :=
  ∀ n, P7179856615498793719.a n = A143869 (n + 1)

end A143869

/-! ## A143869.P15274967493898545450

`A004525((n+1)*(A055653(n+1)+1))`
-/

namespace A143869.P15274967493898545450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n + 1 : ℤ) * (A055653 (n + 1) + 1)).toNat

end

end A143869.P15274967493898545450

namespace A143869

/-- `A004525((n+1)*(A055653(n+1)+1))` -/
def P15274967493898545450.Spec : Prop :=
  ∀ n, P15274967493898545450.a n = A143869 (n + 1)

end A143869

/-! ## A143869.P1835194467039834583

`A004526((n+1)*(A055653(n+1)+1))`
-/

namespace A143869.P1835194467039834583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1 : ℤ) * (A055653 (n + 1) + 1)).toNat

end

end A143869.P1835194467039834583

namespace A143869

/-- `A004526((n+1)*(A055653(n+1)+1))` -/
def P1835194467039834583.Spec : Prop :=
  ∀ n, P1835194467039834583.a n = A143869 (n + 1)

end A143869

/-! ## A143869.P6194328198778428345

`A032742((n+1)*(A055653(n+1)+1))`
-/

namespace A143869.P6194328198778428345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((n + 1 : ℤ) * (A055653 (n + 1) + 1)).toNat

end

end A143869.P6194328198778428345

namespace A143869

/-- `A032742((n+1)*(A055653(n+1)+1))` -/
def P6194328198778428345.Spec : Prop :=
  ∀ n, P6194328198778428345.a n = A143869 (n + 1)

end A143869

/-! ## A143869.P8323657796450674525

`A004525(A117656(∑[2*n+1])+n+1)`
-/

namespace A143869.P8323657796450674525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A117656 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)).toNat

end

end A143869.P8323657796450674525

namespace A143869

/-- `A004525(A117656(∑[2*n+1])+n+1)` -/
def P8323657796450674525.Spec : Prop :=
  ∀ n, P8323657796450674525.a n = A143869 (n + 1)

end A143869

/-!
# A143870: Number of ways of placing kings with no more than 1 mutual attack on an n X n chessboard.

The programs for A143870, there is no canonical definition to state claims against.
-/

/-! ## A143870.P2868180948987223890

`A057359(2^(∑[n]+1))`
-/

namespace A143870.P2868180948987223890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A143870.P2868180948987223890

/-!
# A143871: Number of ways of placing kings with no more than 1 mutual attack on an n X n chessboard symmetric under horizontal reflection.

The programs for A143871, there is no canonical definition to state claims against.
-/

/-! ## A143871.P11822665971958862451

`A244796(n+1)+A178867(round(5*2^n/3))`
-/

namespace A143871.P11822665971958862451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244796 (n + 1) + A178867 (SequenceMachineLib.roundAway (5 * ((2 ^ n : ℚ) / 3))).toNat

end

end A143871.P11822665971958862451

/-!
# A143872: Number of ways of placing kings with no more than 1 mutual attack on an n X n chessboard symmetric about main diagonal.

The programs for A143872, there is no canonical definition to state claims against.
-/

/-! ## A143872.P8334936419238643920

`∑[A001462(A145087(n))]`
-/

namespace A143872.P8334936419238643920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A145087 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143872.P8334936419238643920

/-! ## A143872.P4116080039264883620

`∑[A324965(A321541(n))]`
-/

namespace A143872.P4116080039264883620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A321541 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143872.P4116080039264883620

/-!
# A143874: Number of ways of placing kings with no more than 1 mutual attack on an n X n chessboard symmetric under 180 degree rotation.

The programs for A143874, there is no canonical definition to state claims against.
-/

/-! ## A143874.P12232298921621834153

`A067539(round(11^(n/3))+n)`
-/

namespace A143874.P12232298921621834153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067539 (SequenceMachineLib.roundAway ((11 : ℝ) ^ ((n : ℚ) / 3 : ℝ)) + (n : ℤ)).toNat

end

end A143874.P12232298921621834153

/-! ## A143874.P2905426741063113733

`A007998(A104879(n))`
-/

namespace A143874.P2905426741063113733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007998 (A104879 n).toNat

end

end A143874.P2905426741063113733

/-!
# A143875: Number of ways of placing kings with no more than 2 mutual attacks on an n X n chessboard.

The programs for A143875, there is no canonical definition to state claims against.
-/

/-! ## A143875.P5801802863513239885

`∑[A048279(n*a(n-1)+1)]` with `a(0)=1`
-/

namespace A143875.P5801802863513239885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A048279 ((n : ℤ) * f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143875.P5801802863513239885

/-!
# A143876: Number of ways of placing kings with no more than 2 mutual attacks on an n X n chessboard symmetric under horizontal reflection.

The programs for A143876, there is no canonical definition to state claims against.
-/

/-! ## A143876.P3616898753025415850

`A332350(A130220(n))+A030373(n+1)`
-/

namespace A143876.P3616898753025415850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332350 (A130220 n).toNat + A030373 (n + 1)

end

end A143876.P3616898753025415850

/-! ## A143876.P16919702583759059109

`A333704(n+1)-A124763(A000110(n))`
-/

namespace A143876.P16919702583759059109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333704 (n + 1) - A124763 (A000110 n).toNat

end

end A143876.P16919702583759059109

/-!
# A143878: Number of ways of placing kings with no more than 2 mutual attacks on an n X n chessboard symmetric about main diagonal.

The programs for A143878, there is no canonical definition to state claims against.
-/

/-! ## A143878.P18281099248512542852

`A036234(∑[A258790(n)])`
-/

namespace A143878.P18281099248512542852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143878.P18281099248512542852

/-! ## A143878.P18227597551413864258

`A171896(or(n+1, A343352(n)))`
-/

namespace A143878.P18227597551413864258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (Int.lor (n + 1 : ℤ) (A343352 n)).toNat

end

end A143878.P18227597551413864258

/-!
# A143880: Number of ways of placing kings with no more than 2 mutual attacks on an n X n chessboard symmetric under 180 degree rotation.

The programs for A143880, there is no canonical definition to state claims against.
-/

/-! ## A143880.P8957762483583142080

`A057022(A077889(n)+A002110(n))`
-/

namespace A143880.P8957762483583142080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057022 (A077889 n + A002110 n).toNat

end

end A143880.P8957762483583142080

/-! ## A143880.P17559215654270391339

`A346689(n)+A175301(A098620(n))`
-/

namespace A143880.P17559215654270391339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346689 n + A175301 (A098620 n).toNat

end

end A143880.P17559215654270391339

/-!
# A143881: Number of ways of placing kings with no more than 3 mutual attacks on an n X n chessboard.

The programs for A143881, there is no canonical definition to state claims against.
-/

/-! ## A143881.P10706026273125469202

`A071980(∏[record[A229557(n+1)]])`
-/

namespace A143881.P10706026273125469202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229557 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143881.P10706026273125469202

/-!
# A143883: Number of ways of placing kings with no more than 3 mutual attacks on an n X n chessboard symmetric about main diagonal.

The programs for A143883, there is no canonical definition to state claims against.
-/

/-! ## A143883.P13980671983598771100

`A339564(A001147(n))+A000629(n)`
-/

namespace A143883.P13980671983598771100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339564 (A001147 n).toNat + A000629 n

end

end A143883.P13980671983598771100

/-! ## A143883.P2850880111209507850

`A194920(A016861(n)*A247224(n))`
-/

namespace A143883.P2850880111209507850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A016861 n * A247224 n).toNat

end

end A143883.P2850880111209507850

/-!
# A143884: Number of ways of placing kings with no more than 3 mutual attacks on an n X n chessboard symmetric about both diagonal and antidiagonal.

The programs for A143884, there is no canonical definition to state claims against.
-/

/-! ## A143884.P6005727382543025458

`A001462(∑[2*n!-1])`
-/

namespace A143884.P6005727382543025458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143884.P6005727382543025458

/-! ## A143884.P9257203147575613312

`A326534(floor(∑[2^n/3])+1)`
-/

namespace A143884.P9257203147575613312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1).toNat

end

end A143884.P9257203147575613312

/-! ## A143884.P5778667893544374724

`A383099(A132831(n))`
-/

namespace A143884.P5778667893544374724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383099 (A132831 n).toNat

end

end A143884.P5778667893544374724

/-!
# A143885: Number of ways of placing kings with no more than 3 mutual attacks on an n X n chessboard symmetric under 180 degree rotation.

The programs for A143885, there is no canonical definition to state claims against.
-/

/-! ## A143885.P10762216617317200478

`A350952(n)+A167520(A009239(n))`
-/

namespace A143885.P10762216617317200478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350952 n + A167520 (A009239 n).toNat

end

end A143885.P10762216617317200478

/-! ## A143885.P5810979793721789343

`A270294(n)+A001877(A326887(n))`
-/

namespace A143885.P5810979793721789343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270294 n + A001877 (A326887 n).toNat

end

end A143885.P5810979793721789343

/-!
# A143886: Number of ways of placing kings with no more than 4 mutual attacks on an n X n chessboard.

The programs for A143886, there is no canonical definition to state claims against.
-/

/-! ## A143886.P17170677907331739828

`A151572(A326870(n))*A348241(n)`
-/

namespace A143886.P17170677907331739828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151572 (A326870 n).toNat * A348241 n

end

end A143886.P17170677907331739828

/-!
# A143887: Number of ways of placing kings with no more than 4 mutual attacks on an n X n chessboard symmetric under horizontal reflection.

The programs for A143887, there is no canonical definition to state claims against.
-/

/-! ## A143887.P10025645011524963857

`A250479(A126596(n)%A000079(2*n+3))`
-/

namespace A143887.P10025645011524963857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250479 (Int.tmod (A126596 n) (A000079 (2 * n + 3))).toNat

end

end A143887.P10025645011524963857

/-!
# A143888: Number of ways of placing kings with no more than 4 mutual attacks on an n X n chessboard symmetric under horizontal and vertical reflection.

The programs for A143888, there is no canonical definition to state claims against.
-/

/-! ## A143888.P2842787514576303601

`A201079(A078784(n+1))`
-/

namespace A143888.P2842787514576303601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201079 (A078784 (n + 1)).toNat

end

end A143888.P2842787514576303601

/-! ## A143888.P6048479316516329285

`A366154(A263738(n+1))`
-/

namespace A143888.P6048479316516329285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366154 (A263738 (n + 1)).toNat

end

end A143888.P6048479316516329285

/-!
# A143889: Number of ways of placing kings with no more than 4 mutual attacks on an n X n chessboard symmetric about main diagonal.

The programs for A143889, there is no canonical definition to state claims against.
-/

/-! ## A143889.P13039567830547282764

`A048865(A137964(n))+A047863(n)`
-/

namespace A143889.P13039567830547282764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A137964 n).toNat + A047863 n

end

end A143889.P13039567830547282764

/-! ## A143889.P1910855102743037854

`A004525(A112944(n)+A060995(n+1))`
-/

namespace A143889.P1910855102743037854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A112944 n + A060995 (n + 1)).toNat

end

end A143889.P1910855102743037854

/-!
# A143890: Number of ways of placing kings with no more than 4 mutual attacks on an n X n chessboard symmetric about both diagonal and antidiagonal.

The programs for A143890, there is no canonical definition to state claims against.
-/

/-! ## A143890.P6118025668775508609

`A121281(n)+A113884(A328768(n))`
-/

namespace A143890.P6118025668775508609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 n + A113884 (A328768 n).toNat

end

end A143890.P6118025668775508609

/-! ## A143890.P1002809427850253057

`A274528(∑[A111529(n)-A038380(n)])`
-/

namespace A143890.P1002809427850253057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111529 n - A038380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A143890.P1002809427850253057

/-! ## A143890.P13879315991257695563

`A325394(A014210(n)-A253170(n+1))`
-/

namespace A143890.P13879315991257695563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325394 (A014210 n - A253170 (n + 1)).toNat

end

end A143890.P13879315991257695563

/-!
# A143894: Expansion of (chi(q)^5 * chi(-q))^2 in powers of q where chi() is a Ramanujan theta function.

The programs for A143894, there is no canonical definition to state claims against.
-/

/-! ## A143894.P2359148876367595503

`A139250(3*n)+A108297(A000110(n))`
-/

namespace A143894.P2359148876367595503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (3 * n) + A108297 (A000110 n).toNat

end

end A143894.P2359148876367595503

/-!
# A143896: Numbers that are among the d smallest numbers with d divisors.

The programs for A143896, there is no canonical definition to state claims against.
-/

/-! ## A143896.P11959453360230027724

`lt[A047983(n+1), A000005(n+1)]+1`
-/

namespace A143896.P11959453360230027724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A143896.P11959453360230027724

/-! ## A143896.P1962833950661198658

`record[and(A004396(n+1), A127953(n+1))]`
-/

namespace A143896.P1962833950661198658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004396 (n + 1)) (A127953 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143896.P1962833950661198658

/-! ## A143896.P10982708748421311085

`lt[A005044(A364493(n)), A000217(n)]`
-/

namespace A143896.P10982708748421311085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A364493 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A143896.P10982708748421311085

/-! ## A143896.P390580829155563047

`lt[A145091(3*n+5), char[A073915(n+1)]]`
-/

namespace A143896.P390580829155563047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145091 (3 * n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073915 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A143896.P390580829155563047

/-!
# A143897: Triangle read by rows: T(n,k) = number of AVL trees of height n with k (leaf-) nodes, n>=0, fibonacci(n+2)<=k<=2^n.

The programs for A143897, there is no canonical definition to state claims against.
-/

/-! ## A143897.P10936194316925249148

`A217298(lt[A338042(n+2), A250120(n)])`
-/

namespace A143897.P10936194316925249148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338042 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217298 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A143897.P10936194316925249148

/-! ## A143897.P15001190652166480434

`A217298(lt[A217298(n+2), A334266(3*n+1)])`
-/

namespace A143897.P15001190652166480434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217298 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334266 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217298 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A143897.P15001190652166480434

/-! ## A143897.P249935187149489873

`A217298(lt[A101271(3*n+8), A175886(2*n+1)])`
-/

namespace A143897.P249935187149489873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101271 (3 * n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217298 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A143897.P249935187149489873

/-! ## A143897.P12351579142585370577

`-A001489(A217298(A296756(n+1)))`
-/

namespace A143897.P12351579142585370577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (A217298 (A296756 (n + 1)).toNat).toNat

end

end A143897.P12351579142585370577

/-! ## A143897.P2699455591506466034

`A217298(n+1)%A307206(A307203(n))`
-/

namespace A143897.P2699455591506466034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217298 (n + 1)) (A307206 (A307203 n).toNat)

end

end A143897.P2699455591506466034

/-!
# A143898: Number of primes between n^K and (n+1)^K, where K = log(1151)/log(95).

The programs for A143898, there is no canonical definition to state claims against.
-/

/-! ## A143898.P1498772444710128267

`gcd(A020639(A076578(n+1)), A240074(n+1))`
-/

namespace A143898.P1498772444710128267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A076578 (n + 1)).toNat) (A240074 (n + 1))

end

end A143898.P1498772444710128267

/-! ## A143898.P12429355226547836562

`A014963(gcd(A048793(5*n+3), A333226(4*(n+1))))`
-/

namespace A143898.P12429355226547836562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.gcd (A048793 (5 * n + 3)) (A333226 (4 * (n + 1))))

end

end A143898.P12429355226547836562

/-! ## A143898.P5424679003277139266

`gcd(A004526(A006330(n)), A054352(n))`
-/

namespace A143898.P5424679003277139266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004526 (A006330 n).toNat) (A054352 n)

end

end A143898.P5424679003277139266

/-! ## A143898.P2050122367804131725

`A077478(lcm(A314191(n), A314194(n)))`
-/

namespace A143898.P2050122367804131725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077478 (Int.lcm (A314191 n) (A314194 n))

end

end A143898.P2050122367804131725

/-! ## A143898.P1768817391081568454

`A231867(A067729(n+2))`
-/

namespace A143898.P1768817391081568454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231867 (A067729 (n + 2)).toNat

end

end A143898.P1768817391081568454

