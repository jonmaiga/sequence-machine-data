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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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

/-!
# A030300: Runs have lengths 2^n, n >= 0.

The programs for A030300, the canonical program `A030300.P12835541461277663850` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030300 has offset 1).

The definition of A030300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030300.P11471986371972915608

`1-A030301(n+1)`
-/

namespace A030300.P11471986371972915608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030301 (n + 1)

end

end A030300.P11471986371972915608

namespace A030300

/-- `1-A030301(n+1)` -/
def P11471986371972915608.Spec : Prop :=
  ∀ n, P11471986371972915608.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P14700596308357186718

`ceil(log2(n+2))%2`
-/

namespace A030300.P14700596308357186718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.logb 2 (n + 2 : ℝ)⌉ 2

end

end A030300.P14700596308357186718

namespace A030300

/-- `ceil(log2(n+2))%2` -/
def P14700596308357186718.Spec : Prop :=
  ∀ n, P14700596308357186718.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P7615364307871323286

`and(1, ceil(log2(n+2)))`
-/

namespace A030300.P7615364307871323286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.logb 2 (n + 2 : ℝ)⌉

end

end A030300.P7615364307871323286

namespace A030300

/-- `and(1, ceil(log2(n+2)))` -/
def P7615364307871323286.Spec : Prop :=
  ∀ n, P7615364307871323286.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P4014579324948541992

`log2(gcd(2, floor(log2(n+1))))`
-/

namespace A030300.P4014579324948541992
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (Nat.log 2 (n + 1)) : ℝ)

end

end A030300.P4014579324948541992

namespace A030300

/-- `log2(gcd(2, floor(log2(n+1))))` -/
def P4014579324948541992.Spec : Prop :=
  ∀ n, P4014579324948541992.a n = (A030300 (n + 1) : ℝ)

end A030300

/-! ## A030300.P12835541461277663850

`1-floor(log2(n+1))%2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030300

/-- `1-floor(log2(n+1))%2` -/
def P12835541461277663850.Spec : Prop :=
  ∀ n, P12835541461277663850.a n = A030300 (n + 1)

theorem P12835541461277663850.correct : P12835541461277663850.Spec := by
  intro n
  simp only [A030300, Nat.add_sub_cancel]

end A030300

/-! ## A030300.P8827771061196963601

`a(floor((n-3)/4))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A030300.P8827771061196963601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a ⌊((n : ℤ) - 3 : ℚ) / 4⌋.toNat

end

end A030300.P8827771061196963601

namespace A030300

/-- `a(floor((n-3)/4))` -/
def P8827771061196963601.Spec : Prop :=
  ∀ n, (P8827771061196963601.a n : ℤ) = A030300 (n + 1)

end A030300

/-! ## A030300.P11234996188184904315

`1-a(ceil(n/2)-1)` with `a(0)=1`
-/

namespace A030300.P11234996188184904315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (⌈(n : ℚ) / 2⌉ - 1).toNat

end

end A030300.P11234996188184904315

namespace A030300

/-- `1-a(ceil(n/2)-1)` -/
def P11234996188184904315.Spec : Prop :=
  ∀ n, P11234996188184904315.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P10228554157501105066

`(a(n-1)-C(and(n, 2*n+1), n))²` with `a(0)=1`
-/

namespace A030300.P10228554157501105066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - (Nat.choose (Nat.land n (2 * n + 1)) n : ℤ)) ^ 2

end

end A030300.P10228554157501105066

namespace A030300

/-- `(a(n-1)-C(and(n, 2*n+1), n))²` -/
def P10228554157501105066.Spec : Prop :=
  ∀ n, P10228554157501105066.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P11285648095625758493

`(C(and(n, 2*n), n-1)-a(n-1))²` with `a(0)=1`
-/

namespace A030300.P11285648095625758493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((Nat.choose (Nat.land n (2 * n)) ((n : ℤ) - 1).toNat : ℤ) - a (n - 1)) ^ 2

end

end A030300.P11285648095625758493

namespace A030300

/-- `(C(and(n, 2*n), n-1)-a(n-1))²` -/
def P11285648095625758493.Spec : Prop :=
  ∀ n, P11285648095625758493.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P7948534555550845378

`and(1, A267368(n))²`
-/

namespace A030300.P7948534555550845378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A267368 n) ^ 2

end

end A030300.P7948534555550845378

namespace A030300

/-- `and(1, A267368(n))²` -/
def P7948534555550845378.Spec : Prop :=
  ∀ n, P7948534555550845378.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P2307759275241166051

`∑[A154269(n+1)]`
-/

namespace A030300.P2307759275241166051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030300.P2307759275241166051

namespace A030300

/-- `∑[A154269(n+1)]` -/
def P2307759275241166051.Spec : Prop :=
  ∀ n, P2307759275241166051.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P1476533413122618016

`char[A005351(n)-1]`
-/

namespace A030300.P1476533413122618016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030300.P1476533413122618016

namespace A030300

/-- `char[A005351(n)-1]` -/
def P1476533413122618016.Spec : Prop :=
  ∀ n, (P1476533413122618016.a n : ℤ) = A030300 (n + 1)

end A030300

/-! ## A030300.P5895870411826329758

`1-A275973(n+2)`
-/

namespace A030300.P5895870411826329758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A275973 (n + 2)

end

end A030300.P5895870411826329758

namespace A030300

/-- `1-A275973(n+2)` -/
def P5895870411826329758.Spec : Prop :=
  ∀ n, P5895870411826329758.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P17135078888168648136

`A030301(2*(n+1))`
-/

namespace A030300.P17135078888168648136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (2 * (n + 1))

end

end A030300.P17135078888168648136

namespace A030300

/-- `A030301(2*(n+1))` -/
def P17135078888168648136.Spec : Prop :=
  ∀ n, P17135078888168648136.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P6037878832878907990

`A000035(ceil(log2(n+2)))`
-/

namespace A030300.P6037878832878907990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ⌈Real.logb 2 (n + 2 : ℝ)⌉.toNat

end

end A030300.P6037878832878907990

namespace A030300

/-- `A000035(ceil(log2(n+2)))` -/
def P6037878832878907990.Spec : Prop :=
  ∀ n, P6037878832878907990.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P9327763943603976046

`1-Δ[A275974(n+1)]`
-/

namespace A030300.P9327763943603976046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A030300.P9327763943603976046

namespace A030300

/-- `1-Δ[A275974(n+1)]` -/
def P9327763943603976046.Spec : Prop :=
  ∀ n, P9327763943603976046.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P9891201226862128363

`∑[A304438(3*(n+1))]`
-/

namespace A030300.P9891201226862128363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030300.P9891201226862128363

namespace A030300

/-- `∑[A304438(3*(n+1))]` -/
def P9891201226862128363.Spec : Prop :=
  ∀ n, P9891201226862128363.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P346675714985181527

`1-char[A053754(n+1)-1]`
-/

namespace A030300.P346675714985181527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A030300.P346675714985181527

namespace A030300

/-- `1-char[A053754(n+1)-1]` -/
def P346675714985181527.Spec : Prop :=
  ∀ n, P346675714985181527.a n = A030300 (n + 1)

end A030300

/-! ## A030300.P9767614220909047867

`(a(n-1)-A036987(n))²` with `a(0)=1`
-/

namespace A030300.P9767614220909047867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - A036987 n) ^ 2

end

end A030300.P9767614220909047867

namespace A030300

/-- `(a(n-1)-A036987(n))²` -/
def P9767614220909047867.Spec : Prop :=
  ∀ n, P9767614220909047867.a n = A030300 (n + 1)

end A030300

/-!
# A030301: n-th run has length 2^(n-1).

The programs for A030301, the canonical program `A030301.P5875718275954375788` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030301 has offset 1).

The definition of A030301 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030300, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A030301.P5875718275954375788

`1-A030300(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030301

/-- `1-A030300(n+1)` -/
def P5875718275954375788.Spec : Prop :=
  ∀ n, P5875718275954375788.a n = A030301 (n + 1)

theorem P5875718275954375788.correct : P5875718275954375788.Spec := by
  intro n
  simp only [A030301, Nat.add_sub_cancel]

end A030301

/-! ## A030301.P14303393974553642052

`floor(log2(n+1))%2`
-/

namespace A030301.P14303393974553642052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (n + 1) % 2

end

end A030301.P14303393974553642052

namespace A030301

/-- `floor(log2(n+1))%2` -/
def P14303393974553642052.Spec : Prop :=
  ∀ n, (P14303393974553642052.a n : ℤ) = A030301 (n + 1)

end A030301

/-! ## A030301.P2836972162219506441

`and(1, floor(log2(n+1)))`
-/

namespace A030301.P2836972162219506441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.log 2 (n + 1))

end

end A030301.P2836972162219506441

namespace A030301

/-- `and(1, floor(log2(n+1)))` -/
def P2836972162219506441.Spec : Prop :=
  ∀ n, (P2836972162219506441.a n : ℤ) = A030301 (n + 1)

end A030301

/-! ## A030301.P3728210769871693849

`log2(gcd(2, ceil(log2(n+2))))`
-/

namespace A030301.P3728210769871693849
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 ⌈Real.logb 2 (n + 2 : ℝ)⌉ : ℝ)

end

end A030301.P3728210769871693849

namespace A030301

/-- `log2(gcd(2, ceil(log2(n+2))))` -/
def P3728210769871693849.Spec : Prop :=
  ∀ n, P3728210769871693849.a n = (A030301 (n + 1) : ℝ)

end A030301

/-! ## A030301.P8185751625636207577

`1-ceil(log2(n+2))%2`
-/

namespace A030301.P8185751625636207577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ⌈Real.logb 2 (n + 2 : ℝ)⌉ 2

end

end A030301.P8185751625636207577

namespace A030301

/-- `1-ceil(log2(n+2))%2` -/
def P8185751625636207577.Spec : Prop :=
  ∀ n, P8185751625636207577.a n = A030301 (n + 1)

end A030301

/-! ## A030301.P4998092765982825657

`a(floor((n-3)/4))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A030301.P4998092765982825657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a ⌊((n : ℤ) - 3 : ℚ) / 4⌋.toNat

end

end A030301.P4998092765982825657

namespace A030301

/-- `a(floor((n-3)/4))` -/
def P4998092765982825657.Spec : Prop :=
  ∀ n, (P4998092765982825657.a n : ℤ) = A030301 (n + 1)

end A030301

/-! ## A030301.P6531183872986202531

`1-a(∑[n%2]-1)` with `a(0)=0`
-/

namespace A030301.P6531183872986202531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A030301.P6531183872986202531

namespace A030301

/-- `1-a(∑[n%2]-1)` -/
def P6531183872986202531.Spec : Prop :=
  ∀ n, P6531183872986202531.a n = A030301 (n + 1)

end A030301

/-! ## A030301.P18310912942126738531

`1-a(∑[1-a(n-1)]-1)` with `a(0)=0`
-/

namespace A030301.P18310912942126738531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A030301.P18310912942126738531

namespace A030301

/-- `1-a(∑[1-a(n-1)]-1)` -/
def P18310912942126738531.Spec : Prop :=
  ∀ n, P18310912942126738531.a n = A030301 (n + 1)

end A030301

/-! ## A030301.P10837829985669352789

`(a(n-1)-C(and(n, 2*n+1), n))²` with `a(0)=0`
-/

namespace A030301.P10837829985669352789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) - (Nat.choose (Nat.land n (2 * n + 1)) n : ℤ)) ^ 2

end

end A030301.P10837829985669352789

namespace A030301

/-- `(a(n-1)-C(and(n, 2*n+1), n))²` -/
def P10837829985669352789.Spec : Prop :=
  ∀ n, P10837829985669352789.a n = A030301 (n + 1)

end A030301

/-! ## A030301.P10017808980410679906

`(C(and(n, 2*n), n-1)-a(n-1))²` with `a(0)=0`
-/

namespace A030301.P10017808980410679906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((Nat.choose (Nat.land n (2 * n)) ((n : ℤ) - 1).toNat : ℤ) - a (n - 1)) ^ 2

end

end A030301.P10017808980410679906

namespace A030301

/-- `(C(and(n, 2*n), n-1)-a(n-1))²` -/
def P10017808980410679906.Spec : Prop :=
  ∀ n, P10017808980410679906.a n = A030301 (n + 1)

end A030301

/-! ## A030301.P9889737370703806848

`A275973(n+2)`
-/

namespace A030301.P9889737370703806848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 2)

end

end A030301.P9889737370703806848

namespace A030301

/-- `A275973(n+2)` -/
def P9889737370703806848.Spec : Prop :=
  ∀ n, P9889737370703806848.a n = A030301 (n + 1)

end A030301

/-! ## A030301.P4466359741793707725

`Δ[A275974(n+1)]`
-/

namespace A030301.P4466359741793707725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030301.P4466359741793707725

namespace A030301

/-- `Δ[A275974(n+1)]` -/
def P4466359741793707725.Spec : Prop :=
  ∀ n, P4466359741793707725.a n = A030301 (n + 1)

end A030301

/-! ## A030301.P3943904167143498139

`A030300(2*(n+1))`
-/

namespace A030301.P3943904167143498139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (2 * (n + 1))

end

end A030301.P3943904167143498139

namespace A030301

/-- `A030300(2*(n+1))` -/
def P3943904167143498139.Spec : Prop :=
  ∀ n, P3943904167143498139.a n = A030301 (n + 1)

end A030301

/-! ## A030301.P2718802917143322682

`1-a(A004524(n))` with `a(0)=0`
-/

namespace A030301.P2718802917143322682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (A004524 n).toNat

end

end A030301.P2718802917143322682

namespace A030301

/-- `1-a(A004524(n))` -/
def P2718802917143322682.Spec : Prop :=
  ∀ n, P2718802917143322682.a n = A030301 (n + 1)

end A030301

/-! ## A030301.P9836620308169175688

`1-a(A173989(n))` with `a(0)=0`
-/

namespace A030301.P9836620308169175688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (A173989 n).toNat

end

end A030301.P9836620308169175688

namespace A030301

/-- `1-a(A173989(n))` -/
def P9836620308169175688.Spec : Prop :=
  ∀ n, P9836620308169175688.a n = A030301 (n + 1)

end A030301

/-! ## A030301.P9340462047301820190

`1-a(A255070(n))` with `a(0)=0`
-/

namespace A030301.P9340462047301820190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (A255070 n).toNat

end

end A030301.P9340462047301820190

namespace A030301

/-- `1-a(A255070(n))` -/
def P9340462047301820190.Spec : Prop :=
  ∀ n, P9340462047301820190.a n = A030301 (n + 1)

end A030301

/-! ## A030301.P7317710761247669950

`A000035(floor(log2(n+1)))`
-/

namespace A030301.P7317710761247669950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.log 2 (n + 1))

end

end A030301.P7317710761247669950

namespace A030301

/-- `A000035(floor(log2(n+1)))` -/
def P7317710761247669950.Spec : Prop :=
  ∀ n, P7317710761247669950.a n = A030301 (n + 1)

end A030301

/-! ## A030301.P11782727581423450731

`char[comp[A005351(n)-1]]`
-/

namespace A030301.P11782727581423450731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A030301.P11782727581423450731

namespace A030301

/-- `char[comp[A005351(n)-1]]` -/
def P11782727581423450731.Spec : Prop :=
  ∀ n, (P11782727581423450731.a n : ℤ) = A030301 (n + 1)

end A030301

/-! ## A030301.P10970790238494215836

`1-∑[A154269(n+1)]`
-/

namespace A030301.P10970790238494215836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030301.P10970790238494215836

namespace A030301

/-- `1-∑[A154269(n+1)]` -/
def P10970790238494215836.Spec : Prop :=
  ∀ n, P10970790238494215836.a n = A030301 (n + 1)

end A030301

/-!
# A030302: Write n in base 2 and juxtapose; irregular table in which row n lists the binary expansion of n.

The programs for A030302, there is no canonical definition to state claims against.
-/

/-! ## A030302.P14913228020214572446

`Δ[A054633(n)]`
-/

namespace A030302.P14913228020214572446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030302.P14913228020214572446

/-! ## A030302.P549965811015317551

`A030190(n+1)`
-/

namespace A030302.P549965811015317551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (n + 1)

end

end A030302.P549965811015317551

/-! ## A030302.P17484303316171554577

`floor(sqrt(A319954(n)))`
-/

namespace A030302.P17484303316171554577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A319954 n)

end

end A030302.P17484303316171554577

/-! ## A030302.P6938444166507453352

`A382115(n+1)%2`
-/

namespace A030302.P6938444166507453352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382115 (n + 1)) 2

end

end A030302.P6938444166507453352

/-! ## A030302.P14576539818694920400

`∑[Δ[A030190(n)]^3]`
-/

namespace A030302.P14576539818694920400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030302.P14576539818694920400

/-! ## A030302.P15483819388446767321

`char[comp[A003607(n)-1]]`
-/

namespace A030302.P15483819388446767321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003607 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A030302.P15483819388446767321

/-! ## A030302.P16875376257253559026

`char[A030303(n+1)-1]`
-/

namespace A030302.P16875376257253559026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030302.P16875376257253559026

/-! ## A030302.P12087605033415410459

`A054633(n+1)-A054633(n)`
-/

namespace A030302.P12087605033415410459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054633 (n + 1) - A054633 n

end

end A030302.P12087605033415410459

/-! ## A030302.P7285667222332116628

`and(A158388(n), A382115(n+1))`
-/

namespace A030302.P7285667222332116628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A382115 (n + 1))

end

end A030302.P7285667222332116628

/-! ## A030302.P5216623027608052880

`ceil(A319954(n)/A319927(n+1))`
-/

namespace A030302.P5216623027608052880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319954 n : ℚ) / (A319927 (n + 1) : ℚ)⌉

end

end A030302.P5216623027608052880

/-! ## A030302.P5121724116320657482

`A057427(A000005(n+1)*A319954(n))`
-/

namespace A030302.P5121724116320657482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000005 (n + 1) * A319954 n).toNat

end

end A030302.P5121724116320657482

/-! ## A030302.P994245578135360765

`A057427(A181796(n+1)*A319954(n))`
-/

namespace A030302.P994245578135360765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A181796 (n + 1) * A319954 n).toNat

end

end A030302.P994245578135360765

/-! ## A030302.P1986140771481361408

`∑[-Δ[A030315(n)]]`
-/

namespace A030302.P1986140771481361408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030302.P1986140771481361408

/-! ## A030302.P14615112907988419556

`1-A030315(n+1)`
-/

namespace A030302.P14615112907988419556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030315 (n + 1)

end

end A030302.P14615112907988419556

/-! ## A030302.P11087368406319233212

`A030315(Δ[2*∑[A030315(n)]])`
-/

namespace A030302.P11087368406319233212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (f1 (n + 1) - f1 n).toNat

end

end A030302.P11087368406319233212

/-! ## A030302.P12115958088783858842

`A057427(∑{d}[n+1, A057427(#)]*A319954(n))`
-/

namespace A030302.P12115958088783858842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((∑ d ∈ Nat.divisors (f1 n), A057427 d) * A319954 n).toNat

end

end A030302.P12115958088783858842

/-! ## A030302.P2915756837732378573

`A057427((n+1)*A319954(n))`
-/

namespace A030302.P2915756837732378573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n + 1 : ℤ) * A319954 n).toNat

end

end A030302.P2915756837732378573

/-! ## A030302.P11734173839284720555

`A030315(A030315(n+1)*A083652(n))`
-/

namespace A030302.P11734173839284720555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (A030315 (n + 1) * A083652 n).toNat

end

end A030302.P11734173839284720555

/-! ## A030302.P3980731061598725121

`A000035(A382115(n+1))`
-/

namespace A030302.P3980731061598725121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A382115 (n + 1)).toNat

end

end A030302.P3980731061598725121

/-!
# A030303: Position of n-th 1 in A030302.

The programs for A030303, there is no canonical definition to state claims against.
-/

/-! ## A030303.P10626659077808008052

`comp[A003607(n)]`
-/

namespace A030303.P10626659077808008052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003607 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A030303.P10626659077808008052

/-! ## A030303.P7460041042739659280

`lt[0, A319954(n)]+1`
-/

namespace A030303.P7460041042739659280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030303.P7460041042739659280

/-! ## A030303.P14362433316603827828

`∑[A066099(ceil(abs(γ-n)))]`
-/

namespace A030303.P14362433316603827828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030303.P14362433316603827828

/-! ## A030303.P2817568251459828736

`A066099(n)+a(n-1)` with `a(0)=1`
-/

namespace A030303.P2817568251459828736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066099 n + a (n - 1)

end

end A030303.P2817568251459828736

/-! ## A030303.P15122226619883460375

`∑[A066099(n+1)]+1-A066099(n+1)`
-/

namespace A030303.P15122226619883460375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A066099 (n + 1))

end

end A030303.P15122226619883460375

/-! ## A030303.P14652210419123156226

`eq[0, A030315(n)]`
-/

namespace A030303.P14652210419123156226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030303.P14652210419123156226

/-! ## A030303.P12687515049595051426

`lt[0, A030190(n)]`
-/

namespace A030303.P12687515049595051426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A030303.P12687515049595051426

/-! ## A030303.P14696765231330529988

`filter[n+1, A030190(#)]`
-/

namespace A030303.P14696765231330529988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030190 (f1 j) = 1) n)

end

end A030303.P14696765231330529988

/-! ## A030303.P3440604886691709331

`filter[n+1, A030302(#)]`
-/

namespace A030303.P3440604886691709331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030302 (f1 j) = 1) n)

end

end A030303.P3440604886691709331

/-! ## A030303.P1621853629503654534

`eq[1, A030302(n+1)]+1`
-/

namespace A030303.P1621853629503654534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030303.P1621853629503654534

/-! ## A030303.P13933257460987349382

`record[(n+1)*A030190(n+1)]`
-/

namespace A030303.P13933257460987349382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A030190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030303.P13933257460987349382

/-! ## A030303.P9888513024912228956

`eq[A030190(n), A054977(n)]`
-/

namespace A030303.P9888513024912228956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030303.P9888513024912228956

/-! ## A030303.P10873963809884984022

`eq[A030190(n), A158388(n)]`
-/

namespace A030303.P10873963809884984022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030303.P10873963809884984022

/-! ## A030303.P8240743481304906945

`eq[1, A030190(n*A030190(n))]`
-/

namespace A030303.P8240743481304906945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 ((n : ℤ) * A030190 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030303.P8240743481304906945

/-! ## A030303.P16851850503745453548

`record[A004442(A004442(n)*A030190(n))]`
-/

namespace A030303.P16851850503745453548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A004442 n * A030190 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030303.P16851850503745453548

/-! ## A030303.P4529332757644641107

`a(n-1)+A108730(n)+1` with `a(0)=1`
-/

namespace A030303.P4529332757644641107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A108730 n + 1)

end

end A030303.P4529332757644641107

/-! ## A030303.P3242196687123431751

`eq[A030190(A030304(n+3)), A030190(n)]`
-/

namespace A030303.P3242196687123431751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A030304 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030303.P3242196687123431751

/-! ## A030303.P3807032386159320546

`record[(n+1)*ceil(A319954(n)/A319928(n+1))]`
-/

namespace A030303.P3807032386159320546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A319954 n : ℚ) / (A319928 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030303.P3807032386159320546

/-!
# A030304: Least k such that the base-2 representation of n begins at s(k), where s=A030190 (or equally A030302).

The programs for A030304, there is no canonical definition to state claims against.
-/

/-! ## A030304.P12073713779163487875

`∑[ceil(log2(C(n, n²)+n))]-A296364(n)`
-/

namespace A030304.P12073713779163487875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.choose n (n ^ 2) + n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A296364 n

end

end A030304.P12073713779163487875

/-! ## A030304.P6593820447897503020

`A296349(n)-A296364(n)`
-/

namespace A030304.P6593820447897503020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 n - A296364 n

end

end A030304.P6593820447897503020

/-! ## A030304.P13969219659225378495

`A083652(n)-(A296364(n)+A070939(n))`
-/

namespace A030304.P13969219659225378495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n - (A296364 n + A070939 n)

end

end A030304.P13969219659225378495

/-! ## A030304.P11986320064903241241

`A000007(n+1)+∑[ceil(log2((n%2)^n+n))]-A296364(n)`
-/

namespace A030304.P11986320064903241241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (((n % 2) ^ n + n : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A296364 n)

end

end A030304.P11986320064903241241

/-! ## A030304.P1452343969551789711

`∑[A238845(A004275(n))]-A296364(n)`
-/

namespace A030304.P1452343969551789711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A296364 n

end

end A030304.P1452343969551789711

/-!
# A030305: Length of n-th run of 0's in A030302.

The programs for A030305, there is no canonical definition to state claims against.
-/

/-! ## A030305.P16727334807872655074

`A056062(2*(n+1))`
-/

namespace A030305.P16727334807872655074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056062 (2 * (n + 1))

end

end A030305.P16727334807872655074

/-! ## A030305.P5591051060187436427

`A056062(A005843(n+1))%13`
-/

namespace A030305.P5591051060187436427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056062 (A005843 (n + 1)).toNat) 13

end

end A030305.P5591051060187436427

/-! ## A030305.P8687086330214274241

`A056062(A051755(n+2))%(n+2)`
-/

namespace A030305.P8687086330214274241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056062 (A051755 (n + 2)).toNat) (n + 2 : ℤ)

end

end A030305.P8687086330214274241

/-! ## A030305.P12436344015163487890

`A056062(n+2+n)/A005350(∑{p}[n, val(#, n)]+1)`
-/

namespace A030305.P12436344015163487890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056062 (n + 2 + n) : ℚ) / (A005350 (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p n + 1) : ℚ)

end

end A030305.P12436344015163487890

/-! ## A030305.P2609546122650702866

`A056062(n+2+n)/A016210(∑{p}[n, val(#, n)]+1)`
-/

namespace A030305.P2609546122650702866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056062 (n + 2 + n) : ℚ) / (A016210 (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p n + 1) : ℚ)

end

end A030305.P2609546122650702866

/-! ## A030305.P7521909037794928154

`A056062(A051755(n+2))-A000038(n)`
-/

namespace A030305.P7521909037794928154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056062 (A051755 (n + 2)).toNat - A000038 n

end

end A030305.P7521909037794928154

/-! ## A030305.P4841368732939041893

`gcd(A000038(n), A056062(A005408(n)+1))`
-/

namespace A030305.P4841368732939041893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A056062 (A005408 n + 1).toNat)

end

end A030305.P4841368732939041893

/-! ## A030305.P954315675545960955

`gcd(A002182(n+1), A056062(A051755(n+2)))`
-/

namespace A030305.P954315675545960955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (n + 1)) (A056062 (A051755 (n + 2)).toNat)

end

end A030305.P954315675545960955

/-!
# A030306: Length of n-th run of 1's in A030302.

The programs for A030306, there is no canonical definition to state claims against.
-/

/-! ## A030306.P10157372181884512011

`A056062(Δ[n²])`
-/

namespace A030306.P10157372181884512011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056062 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A030306.P10157372181884512011

/-! ## A030306.P16454974129783925593

`A056062(2*n+1)%13`
-/

namespace A030306.P16454974129783925593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056062 (2 * n + 1)) 13

end

end A030306.P16454974129783925593

/-! ## A030306.P17245035783958244114

`A056064(A056062(2*n+1))`
-/

namespace A030306.P17245035783958244114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056064 (A056062 (2 * n + 1)).toNat

end

end A030306.P17245035783958244114

/-! ## A030306.P14467699765244770088

`A004873(A056062(2*n+1)+1)`
-/

namespace A030306.P14467699765244770088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (A056062 (2 * n + 1) + 1).toNat

end

end A030306.P14467699765244770088

/-! ## A030306.P15692893955679949082

`A001222(2^A056062(2*n+1))`
-/

namespace A030306.P15692893955679949082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A056062 (2 * n + 1) : ℤ))).toNat

end

end A030306.P15692893955679949082

/-! ## A030306.P14714827294973183503

`filter[A056062(2*n+1), A102609(#)]`
-/

namespace A030306.P14714827294973183503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056062 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A030306.P14714827294973183503

/-! ## A030306.P14653203227640995459

`filter[A056062(2*n+1), A108358(#)]`
-/

namespace A030306.P14653203227640995459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056062 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108358 (f1 j).toNat = 1) n)

end

end A030306.P14653203227640995459

/-! ## A030306.P14099648312692914134

`filter[A056062(2*n+1), A114213(#)]`
-/

namespace A030306.P14099648312692914134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056062 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A030306.P14099648312692914134

/-! ## A030306.P7036177031050078654

`A056062(n+1+n)/A003108(∑[char[n!]])`
-/

namespace A030306.P7036177031050078654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056062 (n + 1 + n) : ℚ) / (A003108 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A030306.P7036177031050078654

/-! ## A030306.P14207293744107614936

`gcd(A000038(n), A056062(A005408(n)))`
-/

namespace A030306.P14207293744107614936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A056062 (A005408 n).toNat)

end

end A030306.P14207293744107614936

/-! ## A030306.P625188789017425193

`A056062(A005408(n))+A000038(n+1)`
-/

namespace A030306.P625188789017425193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056062 (A005408 n).toNat + A000038 (n + 1)

end

end A030306.P625188789017425193

/-! ## A030306.P14316650635717718862

`A318921(A175046(A056062(n+1+n)))`
-/

namespace A030306.P14316650635717718862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A175046 (A056062 (n + 1 + n)).toNat).toNat

end

end A030306.P14316650635717718862

/-! ## A030306.P4940838283004185254

`A030530(A030530(A056062(2*n+1)²))`
-/

namespace A030306.P4940838283004185254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A030530 (A056062 (2 * n + 1) ^ 2).toNat).toNat

end

end A030306.P4940838283004185254

/-! ## A030306.P5610807396474903671

`A056062(A005408(n))-A000038(A056062(n))²`
-/

namespace A030306.P5610807396474903671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056062 (A005408 n).toNat - A000038 (A056062 n).toNat ^ 2

end

end A030306.P5610807396474903671

/-! ## A030306.P11661371826455199347

`A056062(2*n+1)+A000122(record[A020639(n+2)])`
-/

namespace A030306.P11661371826455199347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056062 (2 * n + 1) + A000122 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030306.P11661371826455199347

/-! ## A030306.P13538924526408537188

`gcd(A002182(2*(n+1))*A002182(n+2), A056062(2*n+1))`
-/

namespace A030306.P13538924526408537188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (2 * (n + 1)) * A002182 (n + 2)) (A056062 (2 * n + 1))

end

end A030306.P13538924526408537188

/-! ## A030306.P9520446054913675065

`gcd(A002182(A051755(2*(n+1))), A056062(2*n+1))`
-/

namespace A030306.P9520446054913675065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (A051755 (2 * (n + 1))).toNat) (A056062 (2 * n + 1))

end

end A030306.P9520446054913675065

/-! ## A030306.P2476718661669785348

`gcd(A002182(A051755(n+3))², A056062(2*n+1))`
-/

namespace A030306.P2476718661669785348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (A051755 (n + 3)).toNat ^ 2) (A056062 (2 * n + 1))

end

end A030306.P2476718661669785348

/-! ## A030306.P14525407447526772594

`A056062(2*n+1)*A280412(2*n)`
-/

namespace A030306.P14525407447526772594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056062 (2 * n + 1) * A280412 (2 * n)

end

end A030306.P14525407447526772594

/-!
# A030307: (# 1's)-(# 0's) in first n terms of A030302.

The programs for A030307, there is no canonical definition to state claims against.
-/

/-! ## A030307.P15604909334811560963

`∑[2*A030190(n+1)-1]`
-/

namespace A030307.P15604909334811560963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030190 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030307.P15604909334811560963

/-! ## A030307.P17703065143508541052

`∑[2*A030302(n+1)-1]`
-/

namespace A030307.P17703065143508541052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030302 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030307.P17703065143508541052

/-! ## A030307.P6617682050611514764

`2*A054633(n+1)-(n+1)`
-/

namespace A030307.P6617682050611514764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054633 (n + 1) - (n + 1 : ℤ)

end

end A030307.P6617682050611514764

/-! ## A030307.P8511814291860413681

`A004273(∑[A030190(n+1)])-n`
-/

namespace A030307.P8511814291860413681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A030307.P8511814291860413681

/-! ## A030307.P17136924831685452683

`A004273(∑[A030302(n+1)])-n`
-/

namespace A030307.P17136924831685452683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A030307.P17136924831685452683

/-! ## A030307.P10448401336751010104

`A004277(∑[A030302(n+1)])-(n+1)`
-/

namespace A030307.P10448401336751010104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A030307.P10448401336751010104

/-! ## A030307.P670813975297527708

`A005843(∑[A030190(n+1)])-(n+1)`
-/

namespace A030307.P670813975297527708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A030307.P670813975297527708

/-! ## A030307.P8754265471853701124

`A005843(∑[A030302(n+1)])-(n+1)`
-/

namespace A030307.P8754265471853701124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A030307.P8754265471853701124

/-! ## A030307.P12768532660593239896

`A005408(∑[A030302(n+1)])-(n+2)`
-/

namespace A030307.P12768532660593239896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 2 : ℤ)

end

end A030307.P12768532660593239896

/-! ## A030307.P10724510431555696420

`∑[1-2*A030315(n+1)]`
-/

namespace A030307.P10724510431555696420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A030315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030307.P10724510431555696420

/-! ## A030307.P13419090674009124329

`∑[A030190(n+1)-A030315(n+1)]`
-/

namespace A030307.P13419090674009124329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (n + 1) - A030315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030307.P13419090674009124329

/-! ## A030307.P4521277952539233136

`∑[A030302(n+1)-A030315(n+1)]`
-/

namespace A030307.P4521277952539233136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1) - A030315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030307.P4521277952539233136

/-!
# A030308: Triangle T(n, k): Write n in base 2, reverse order of digits, to get the n-th row.

The programs for A030308, there is no canonical definition to state claims against.
-/

/-! ## A030308.P10363529669771104240

`char[A030310(n+1)]`
-/

namespace A030308.P10363529669771104240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030308.P10363529669771104240

/-! ## A030308.P13765051515561106516

`char[∑[A228351(n+1)]]`
-/

namespace A030308.P13765051515561106516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030308.P13765051515561106516

/-! ## A030308.P9989885077729644128

`1-char[A030309(n+1)]`
-/

namespace A030308.P9989885077729644128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030309 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A030308.P9989885077729644128

/-! ## A030308.P7857225113488668085

`char[∑[A163510(n+1)+1]]`
-/

namespace A030308.P7857225113488668085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163510 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030308.P7857225113488668085

/-! ## A030308.P15531628161075517111

`char[val(A120385(n+1), 2)+n+1]`
-/

namespace A030308.P15531628161075517111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A120385 (n + 1)).toNat 2 + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A030308.P15531628161075517111

/-! ## A030308.P17273535135176105858

`char[∑[A005555(A163510(n+1))]]`
-/

namespace A030308.P17273535135176105858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A163510 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030308.P17273535135176105858

/-! ## A030308.P6014288109441121031

`A000007(char[A030309(n+1)]*A004768(n))`
-/

namespace A030308.P6014288109441121031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030309 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A004768 n).toNat

end

end A030308.P6014288109441121031

/-! ## A030308.P1861987288578911160

`A000007(char[A030309(n+1)]*A004793(n+1))`
-/

namespace A030308.P1861987288578911160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030309 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A004793 (n + 1)).toNat

end

end A030308.P1861987288578911160

/-! ## A030308.P3757640421328271345

`A192323(char[A030309(n+1)]*A140213(n+1))`
-/

namespace A030308.P3757640421328271345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030309 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A140213 (n + 1)).toNat

end

end A030308.P3757640421328271345

/-! ## A030308.P15667877743268051805

`A192323(char[A030309(n+1)]*A081256(n+1))`
-/

namespace A030308.P15667877743268051805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030309 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A081256 (n + 1)).toNat

end

end A030308.P15667877743268051805

/-!
# A030309: Position of n-th 0 in A030308.

The programs for A030309, there is no canonical definition to state claims against.
-/

/-! ## A030309.P5820870990814503087

`eq[0, A030308(n)]`
-/

namespace A030309.P5820870990814503087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030309.P5820870990814503087

/-! ## A030309.P4937444168529123325

`lt[A030308(n), acot(A007088(n))]`
-/

namespace A030309.P4937444168529123325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A007088 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030309.P4937444168529123325

/-! ## A030309.P16475900788015428223

`lt[A030308(n), acot(A080719(n))]`
-/

namespace A030309.P16475900788015428223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A080719 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030309.P16475900788015428223

/-! ## A030309.P9146998488763398181

`lt[A030308(n), acot(A157845(n))]`
-/

namespace A030309.P9146998488763398181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A157845 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030309.P9146998488763398181

/-! ## A030309.P16659183954502859093

`lt[A030308(n), acot(A257831(n))]`
-/

namespace A030309.P16659183954502859093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A257831 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030309.P16659183954502859093

/-! ## A030309.P7253113239907755716

`lt[A030308(n), acot(A117697(n+1))]`
-/

namespace A030309.P7253113239907755716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A117697 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030309.P7253113239907755716

/-! ## A030309.P17799103610452579289

`record[n-A000009(n)*A030308(n)]`
-/

namespace A030309.P17799103610452579289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000009 n * A030308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030309.P17799103610452579289

/-! ## A030309.P8862624660678579179

`record[n-A000217(n*A030308(n))]`
-/

namespace A030309.P8862624660678579179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000217 ((n : ℤ) * A030308 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030309.P8862624660678579179

/-! ## A030309.P6833540821291687515

`record[n-A000290(n*A030308(n))]`
-/

namespace A030309.P6833540821291687515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000290 ((n : ℤ) * A030308 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030309.P6833540821291687515

/-! ## A030309.P4227057196428176769

`record[n-A000695(n*A030308(n))]`
-/

namespace A030309.P4227057196428176769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000695 ((n : ℤ) * A030308 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030309.P4227057196428176769

/-! ## A030309.P14492171758987890389

`record[n-A001196(n*A030308(n))]`
-/

namespace A030309.P14492171758987890389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001196 ((n : ℤ) * A030308 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030309.P14492171758987890389

/-! ## A030309.P77687080886152203

`record[n-A005843(n*A030308(n))]`
-/

namespace A030309.P77687080886152203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005843 ((n : ℤ) * A030308 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030309.P77687080886152203

/-! ## A030309.P13179092465144957151

`record[n-A255411(n*A030308(n))]`
-/

namespace A030309.P13179092465144957151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255411 ((n : ℤ) * A030308 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030309.P13179092465144957151

/-! ## A030309.P9295429435575721660

`record[A025480(A030308(n)+A005843(n))]`
-/

namespace A030309.P9295429435575721660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A030308 n + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030309.P9295429435575721660

/-! ## A030309.P9721680965858104604

`record[A025480(A005843(n)-A030308(n))]`
-/

namespace A030309.P9721680965858104604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A005843 n - A030308 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030309.P9721680965858104604

/-! ## A030309.P8920209058147647047

`lt[A000040(2*(n+1))*A030308(n), A315914(n)]`
-/

namespace A030309.P8920209058147647047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) * A030308 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030309.P8920209058147647047

/-! ## A030309.P14466258431924356057

`lt[A030308(n), acot(A032533(n+1))]`
-/

namespace A030309.P14466258431924356057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A032533 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030309.P14466258431924356057

/-! ## A030309.P9864625507805845654

`record[A257685(A255411(n)+A030308(n))]`
-/

namespace A030309.P9864625507805845654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257685 (A255411 n + A030308 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030309.P9864625507805845654

/-! ## A030309.P484651807774257939

`lt[A007924(n*A030308(n)), 1]`
-/

namespace A030309.P484651807774257939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007924 ((n : ℤ) * A030308 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030309.P484651807774257939

/-! ## A030309.P7251037037468520892

`lt[A030308(n), acot(A007924(n))]`
-/

namespace A030309.P7251037037468520892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A007924 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030309.P7251037037468520892

/-!
# A030310: Position of n-th 1 in A030308.

The programs for A030310, there is no canonical definition to state claims against.
-/

/-! ## A030310.P12644046014728312063

`∑[A228351(n+1)]`
-/

namespace A030310.P12644046014728312063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030310.P12644046014728312063

/-! ## A030310.P8506587125550574722

`comp[A030309(n+1)]`
-/

namespace A030310.P8506587125550574722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A030310.P8506587125550574722

/-! ## A030310.P15955522658657279948

`∑[A163510(n+1)+1]`
-/

namespace A030310.P15955522658657279948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163510 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030310.P15955522658657279948

/-! ## A030310.P7387188704864937030

`∑[A005555(A163510(n+1))]`
-/

namespace A030310.P7387188704864937030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A163510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030310.P7387188704864937030

/-! ## A030310.P9403688147444178503

`lt[0, A030308(n)]`
-/

namespace A030310.P9403688147444178503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A030310.P9403688147444178503

/-! ## A030310.P9551904157261681595

`filter[n+1, A030308(#)]`
-/

namespace A030310.P9551904157261681595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030308 (f1 j) = 1) n)

end

end A030310.P9551904157261681595

/-! ## A030310.P5326774815400340634

`record[(n+1)*A030308(n+1)]`
-/

namespace A030310.P5326774815400340634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A030308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030310.P5326774815400340634

/-! ## A030310.P2365788148713584249

`eq[A030308(n), A054977(n)]`
-/

namespace A030310.P2365788148713584249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030310.P2365788148713584249

/-! ## A030310.P14195755226226173609

`eq[A030308(n), A158388(n)]`
-/

namespace A030310.P14195755226226173609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030310.P14195755226226173609

/-! ## A030310.P6519236730309542293

`eq[A030308(n), A329684(n)]`
-/

namespace A030310.P6519236730309542293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030310.P6519236730309542293

/-! ## A030310.P10135981980687375455

`eq[1, A030308(n*A030308(n))]`
-/

namespace A030310.P10135981980687375455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 ((n : ℤ) * A030308 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030310.P10135981980687375455

/-! ## A030310.P5893810998955963638

`eq[A030308(n), A054024(A040976(n+1)+2)]`
-/

namespace A030310.P5893810998955963638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A040976 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030310.P5893810998955963638

/-! ## A030310.P14950721712963542434

`eq[A030308(n), A057427(Δ[n²])]`
-/

namespace A030310.P14950721712963542434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030310.P14950721712963542434

/-! ## A030310.P2544810932784587353

`eq[A030308(n), A031045(A031047(n+1))]`
-/

namespace A030310.P2544810932784587353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 (A031047 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030310.P2544810932784587353

/-!
# A030312: Length of n-th run of 0's in A030308.

The programs for A030312, there is no canonical definition to state claims against.
-/

/-! ## A030312.P13763222881953500147

`A218799(∑[A358901(n)])`
-/

namespace A030312.P13763222881953500147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218799 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030312.P13763222881953500147

/-! ## A030312.P2282741524735028807

`A228350(gcd(n, A205295(n)))`
-/

namespace A030312.P2282741524735028807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228350 (Int.gcd (n : ℤ) (A205295 n))

end

end A030312.P2282741524735028807

/-! ## A030312.P18053788429646590813

`A228350(xor(n, A205295(n)))`
-/

namespace A030312.P18053788429646590813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228350 (Int.xor (n : ℤ) (A205295 n)).toNat

end

end A030312.P18053788429646590813

/-! ## A030312.P249346103514736799

`ceil(ratio[A055155(A192804(n))])`
-/

namespace A030312.P249346103514736799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055155 (A192804 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A030312.P249346103514736799

/-! ## A030312.P3646342499477266937

`A228350(round(A083730(n+1)/acot(n)))`
-/

namespace A030312.P3646342499477266937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228350 (SequenceMachineLib.roundAway ((A083730 (n + 1) : ℝ) / SequenceMachineLib.acot (n : ℝ))).toNat

end

end A030312.P3646342499477266937

/-!
# A030313: Length of n-th run of 1's in A030308.

The programs for A030313, there is no canonical definition to state claims against.
-/

/-! ## A030313.P17183425622534194588

`Δ[lt[n-abs(1-n), A228351(n+1)]]`
-/

namespace A030313.P17183425622534194588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |1 - (n : ℤ)|

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A030313.P17183425622534194588

/-!
# A030314: (# 1's)-(# 0's) in first n terms of A030308.

The programs for A030314, there is no canonical definition to state claims against.
-/

/-! ## A030314.P11189061799405694453

`∑[(-1)^(A120385(n+1)-1)]`
-/

namespace A030314.P11189061799405694453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A120385 (n + 1) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030314.P11189061799405694453

/-! ## A030314.P1173823039491448961

`∑[A062157(A120385(n+1))]`
-/

namespace A030314.P1173823039491448961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A120385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030314.P1173823039491448961

/-! ## A030314.P4309056687669088717

`∑[A033999(A120385(n+1)+1)]`
-/

namespace A030314.P4309056687669088717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A120385 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030314.P4309056687669088717

/-! ## A030314.P11075769277540930660

`∑[A087960(or(2, A120385(n+1)))]`
-/

namespace A030314.P11075769277540930660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (Int.lor 2 (A120385 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030314.P11075769277540930660

/-! ## A030314.P10920125854093051159

`∑[2*A030308(n+1)-1]`
-/

namespace A030314.P10920125854093051159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030308 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030314.P10920125854093051159

/-! ## A030314.P2855448178837589716

`∑[A123218(A120385(n+1)²)]`
-/

namespace A030314.P2855448178837589716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123218 (A120385 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030314.P2855448178837589716

/-! ## A030314.P4642317766326265327

`∑[A094267((1-A120385(n+1))²)]`
-/

namespace A030314.P4642317766326265327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 ((1 - A120385 (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030314.P4642317766326265327

/-! ## A030314.P10787899254352158195

`∑[A105931(A120385(n+1)²)]`
-/

namespace A030314.P10787899254352158195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (A120385 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030314.P10787899254352158195

/-! ## A030314.P3135482832563947919

`∑[A087960((1-A120385(n+1))²)]`
-/

namespace A030314.P3135482832563947919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 ((1 - A120385 (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030314.P3135482832563947919

/-! ## A030314.P13679508296694040473

`∑[A258998(A120385(n+1)²)]`
-/

namespace A030314.P13679508296694040473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 (A120385 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030314.P13679508296694040473

/-! ## A030314.P4397227673615733541

`∑[A094267((A120385(n+1)+1)²)]`
-/

namespace A030314.P4397227673615733541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 ((A120385 (n + 1) + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030314.P4397227673615733541

/-! ## A030314.P11295783872172806577

`∑[A087960(A120385(n+1)²+2)]`
-/

namespace A030314.P11295783872172806577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A120385 (n + 1) ^ 2 + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030314.P11295783872172806577

/-! ## A030314.P16338588285231422573

`A002262(∑[2*A030308(n+1)+n])`
-/

namespace A030314.P16338588285231422573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030308 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030314.P16338588285231422573

/-!
# A030315: Write n in base 2, complement each digit (d -> 1-d) and append the complemented digits to the sequence.

The programs for A030315, there is no canonical definition to state claims against.
-/

/-! ## A030315.P5750819388035182239

`1-A030190(n)`
-/

namespace A030315.P5750819388035182239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030190 n

end

end A030315.P5750819388035182239

/-! ## A030315.P5963437940790880594

`char[A003607(n)]`
-/

namespace A030315.P5963437940790880594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003607 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030315.P5963437940790880594

/-! ## A030315.P8803453438050610276

`char[comp[A030303(n+1)]]`
-/

namespace A030315.P8803453438050610276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A030315.P8803453438050610276

/-! ## A030315.P10438923232328721867

`1-A030302(n*a(floor(acot(n))))` with `a(0)=1`
-/

namespace A030315.P10438923232328721867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A030302 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat

end

end A030315.P10438923232328721867

/-! ## A030315.P10486189303409043409

`A000007(n*A030190(n))`
-/

namespace A030315.P10486189303409043409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A030190 n).toNat

end

end A030315.P10486189303409043409

/-! ## A030315.P7368864459459648895

`and(1, A030190(n)+A008501(n))`
-/

namespace A030315.P7368864459459648895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030190 n + A008501 n)

end

end A030315.P7368864459459648895

/-! ## A030315.P10543244524656890714

`and(1, A030190(n)+A016921(n))`
-/

namespace A030315.P10543244524656890714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030190 n + A016921 n)

end

end A030315.P10543244524656890714

/-! ## A030315.P14467763270618500266

`A030190(C(n, A030190(n)+n))`
-/

namespace A030315.P14467763270618500266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (Nat.choose n (A030190 n + (n : ℤ)).toNat)

end

end A030315.P14467763270618500266

/-! ## A030315.P18198271456214416819

`A000108(a(n-1))-A030302(n)` with `a(0)=1`
-/

namespace A030315.P18198271456214416819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 (a (n - 1)).toNat - A030302 n

end

end A030315.P18198271456214416819

/-! ## A030315.P3564532287010680878

`xor(A000041(and(1, n)^n), A030190(n))`
-/

namespace A030315.P3564532287010680878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000041 (Nat.land 1 n ^ n)) (A030190 n)

end

end A030315.P3564532287010680878

/-! ## A030315.P9293960788922651038

`A019590(A007947(n+1)*A030190(n)+1)`
-/

namespace A030315.P9293960788922651038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A007947 (n + 1) * A030190 n + 1).toNat

end

end A030315.P9293960788922651038

/-! ## A030315.P11843234737527468159

`A019590(A030190(n)*A117004(n+1)+1)`
-/

namespace A030315.P11843234737527468159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A030190 n * A117004 (n + 1) + 1).toNat

end

end A030315.P11843234737527468159

/-! ## A030315.P2942631056462865372

`A030190(A030190(n)+A020639(2*(n+1)))`
-/

namespace A030315.P2942631056462865372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A030190 n + A020639 (2 * (n + 1))).toNat

end

end A030315.P2942631056462865372

/-! ## A030315.P14580700168712023356

`A070536(A217221(3*n+2)+A030190(n)+1)`
-/

namespace A030315.P14580700168712023356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (A217221 (3 * n + 2) + A030190 n + 1).toNat

end

end A030315.P14580700168712023356

/-! ## A030315.P12473341460608551990

`A019590(n*A030190(n)+2)`
-/

namespace A030315.P12473341460608551990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 ((n : ℤ) * A030190 n + 2).toNat

end

end A030315.P12473341460608551990

/-! ## A030315.P249044421169020305

`A000035(A030190(n)+A030101(n+1))`
-/

namespace A030315.P249044421169020305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A030190 n + A030101 (n + 1)).toNat

end

end A030315.P249044421169020305

/-! ## A030315.P4609322602192704487

`A000035(A030190(n)+2*n+1)`
-/

namespace A030315.P4609322602192704487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A030190 n + (2 * n + 1 : ℤ)).toNat

end

end A030315.P4609322602192704487

/-! ## A030315.P7358227804890358741

`xor(A030190(A030304(n+3)), A030190(n))`
-/

namespace A030315.P7358227804890358741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030190 (A030304 (n + 3)).toNat) (A030190 n)

end

end A030315.P7358227804890358741

/-! ## A030315.P18196212320909519410

`A133872(A382115(n+1))`
-/

namespace A030315.P18196212320909519410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A382115 (n + 1)).toNat

end

end A030315.P18196212320909519410

/-! ## A030315.P7474707514893320658

`xor(A030190(n), A325977(A163420(n+1)))`
-/

namespace A030315.P7474707514893320658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030190 n) (A325977 (A163420 (n + 1)).toNat)

end

end A030315.P7474707514893320658

/-!
# A030317: Write the odd numbers 2n - 1 in base 2 and juxtapose these binary expansions; read the result bit-by-bit.

The programs for A030317, there is no canonical definition to state claims against.
-/

/-! ## A030317.P132017635700438948

`char[A030319(n+1)-1]`
-/

namespace A030317.P132017635700438948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030319 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030317.P132017635700438948

/-! ## A030317.P11477835625752293523

`ceil(atan(abs(A263848(n))+1))-1`
-/

namespace A030317.P11477835625752293523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (|A263848 n| + 1 : ℝ)⌉ - 1

end

end A030317.P11477835625752293523

/-! ## A030317.P15056625598609825603

`A057427(abs(A263848(n)))`
-/

namespace A030317.P15056625598609825603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 |A263848 n|.toNat

end

end A030317.P15056625598609825603

/-! ## A030317.P16642379252061825989

`A019430(lcm(2, A263848(n)))`
-/

namespace A030317.P16642379252061825989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (Int.lcm 2 (A263848 n))

end

end A030317.P16642379252061825989

/-! ## A030317.P18212151502109377770

`1-A000007(abs(A263848(n)))`
-/

namespace A030317.P18212151502109377770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 |A263848 n|.toNat

end

end A030317.P18212151502109377770

/-! ## A030317.P11289631469073011356

`ceil((A263848(n)/A000097(n))²)`
-/

namespace A030317.P11289631469073011356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A263848 n : ℚ) / (A000097 n : ℚ)) ^ 2⌉

end

end A030317.P11289631469073011356

/-! ## A030317.P4397958070325677054

`ceil((A263848(n)/A000123(n))²)`
-/

namespace A030317.P4397958070325677054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A263848 n : ℚ) / (A000123 n : ℚ)) ^ 2⌉

end

end A030317.P4397958070325677054

/-! ## A030317.P6546898715741685077

`ceil((A263848(n)/A001567(n+1))²)`
-/

namespace A030317.P6546898715741685077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A263848 n : ℚ) / (A001567 (n + 1) : ℚ)) ^ 2⌉

end

end A030317.P6546898715741685077

/-! ## A030317.P8241938872405324383

`A000225(abs(A263848(n)))%2`
-/

namespace A030317.P8241938872405324383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 |A263848 n|.toNat) 2

end

end A030317.P8241938872405324383

/-! ## A030317.P9173610830124602083

`A002828(A263848(n)²)`
-/

namespace A030317.P9173610830124602083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A263848 n ^ 2).toNat

end

end A030317.P9173610830124602083

/-! ## A030317.P18197808081941746990

`A057427(A263848(n)²)`
-/

namespace A030317.P18197808081941746990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A263848 n ^ 2).toNat

end

end A030317.P18197808081941746990

/-! ## A030317.P5374799995079135831

`A089309(A263848(n)²)`
-/

namespace A030317.P5374799995079135831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A263848 n ^ 2).toNat

end

end A030317.P5374799995079135831

/-! ## A030317.P601578677169919794

`1-A000007(A263848(n)²)`
-/

namespace A030317.P601578677169919794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A263848 n ^ 2).toNat

end

end A030317.P601578677169919794

/-! ## A030317.P10603439398162690632

`A019430(2*A263848(n)²)`
-/

namespace A030317.P10603439398162690632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (2 * A263848 n ^ 2).toNat

end

end A030317.P10603439398162690632

/-! ## A030317.P9011341062520517221

`A002277(abs(A263848(n)))%2`
-/

namespace A030317.P9011341062520517221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002277 |A263848 n|.toNat) 2

end

end A030317.P9011341062520517221

/-! ## A030317.P8516361413184417342

`A019430(2*A263848(n)*A263848(n))`
-/

namespace A030317.P8516361413184417342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (2 * A263848 n * A263848 n).toNat

end

end A030317.P8516361413184417342

/-! ## A030317.P54368901568209750

`val(A000629(abs(A263848(n))), 2)`
-/

namespace A030317.P54368901568209750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000629 |A263848 n|.toNat).toNat 2

end

end A030317.P54368901568209750

/-! ## A030317.P6822802463410381972

`A057427(2*A263848(n)*A263848(n))`
-/

namespace A030317.P6822802463410381972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * A263848 n * A263848 n).toNat

end

end A030317.P6822802463410381972

/-! ## A030317.P10204931879232141818

`A089309(2*A263848(n)*A263848(n))`
-/

namespace A030317.P10204931879232141818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (2 * A263848 n * A263848 n).toNat

end

end A030317.P10204931879232141818

/-!
# A030318: Position of n-th 0 in A030317.

The programs for A030318, there is no canonical definition to state claims against.
-/

/-! ## A030318.P5421084398360725572

`A030530(A003607(n+1))+A003607(n+1)`
-/

namespace A030318.P5421084398360725572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A003607 (n + 1)).toNat + A003607 (n + 1)

end

end A030318.P5421084398360725572

/-! ## A030318.P16611622420369809493

`eq[0, A263848(n)]+1`
-/

namespace A030318.P16611622420369809493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030318.P16611622420369809493

/-! ## A030318.P4345411431733559858

`1-A001489(eq[0, A263848(n)])`
-/

namespace A030318.P4345411431733559858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030318.P4345411431733559858

/-! ## A030318.P8255406188849829302

`2-A024000(eq[0, A263848(n)])`
-/

namespace A030318.P8255406188849829302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030318.P8255406188849829302

/-! ## A030318.P17619332484563500099

`A008619(2*eq[0, A263848(n)])`
-/

namespace A030318.P17619332484563500099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030318.P17619332484563500099

/-! ## A030318.P2083844836119298780

`A028242(2*eq[0, A263848(n)])`
-/

namespace A030318.P2083844836119298780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030318.P2083844836119298780

/-! ## A030318.P3394859974502259296

`A029579(2*eq[0, A263848(n)])`
-/

namespace A030318.P3394859974502259296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030318.P3394859974502259296

/-! ## A030318.P14089754415360510178

`A008611(3*eq[0, A263848(n)])`
-/

namespace A030318.P14089754415360510178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030318.P14089754415360510178

/-! ## A030318.P13794730555702325606

`A008621(4*eq[0, A263848(n)])`
-/

namespace A030318.P13794730555702325606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030318.P13794730555702325606

/-! ## A030318.P3621443511049840349

`eq[0, A263848(A004273(n)-n)]`
-/

namespace A030318.P3621443511049840349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030318.P3621443511049840349

/-!
# A030319: Position of n-th 1 in A030317.

The programs for A030319, there is no canonical definition to state claims against.
-/

/-! ## A030319.P8427085819998338805

`filter[n+1, A030317(#)]`
-/

namespace A030319.P8427085819998338805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030317 (f1 j) = 1) n)

end

end A030319.P8427085819998338805

/-! ## A030319.P1323046865343364766

`eq[1, A030317(n+1)]+1`
-/

namespace A030319.P1323046865343364766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030317 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030319.P1323046865343364766

/-! ## A030319.P8667197052350492886

`record[A000027(n+1)*A030317(n+1)]`
-/

namespace A030319.P8667197052350492886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A030317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030319.P8667197052350492886

/-! ## A030319.P17250690291144304019

`record[A005378(n)*A030317(A005378(n))]`
-/

namespace A030319.P17250690291144304019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n * A030317 (A005378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030319.P17250690291144304019

/-! ## A030319.P8465180329318785401

`record[A008619(2*n)*A030317(n+1)]`
-/

namespace A030319.P8465180329318785401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A030317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030319.P8465180329318785401

/-! ## A030319.P2162620047931811914

`record[A028242(2*n)*A030317(n+1)]`
-/

namespace A030319.P2162620047931811914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) * A030317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030319.P2162620047931811914

/-! ## A030319.P15177426661411286652

`record[A030317(n+1)*A065033(2*(n+1))]`
-/

namespace A030319.P15177426661411286652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030317 (n + 1) * A065033 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030319.P15177426661411286652

/-! ## A030319.P5773772210886403448

`record[A008611(n)*A030317(A008620(n))]`
-/

namespace A030319.P5773772210886403448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A030317 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030319.P5773772210886403448

/-! ## A030319.P5897146142621176412

`record[(n+1)%(abs(A263848(n))+1+n)]`
-/

namespace A030319.P5897146142621176412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (|A263848 n| + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030319.P5897146142621176412

/-!
# A030323: Number of 1's minus number of 0's in first n terms of A030317.

The programs for A030323, there is no canonical definition to state claims against.
-/

/-! ## A030323.P11158676244692051420

`∑[2*A030317(n+1)-1]`
-/

namespace A030323.P11158676244692051420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030317 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030323.P11158676244692051420

/-! ## A030323.P7073433852377471299

`A004273(∑[A030317(n+1)])-n`
-/

namespace A030323.P7073433852377471299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A030323.P7073433852377471299

/-! ## A030323.P10151810167344933656

`A005843(∑[A030317(n+1)])-(n+1)`
-/

namespace A030323.P10151810167344933656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A030323.P10151810167344933656

/-! ## A030323.P17102701410094098989

`A005408(∑[A030317(n+1)])-(n+2)`
-/

namespace A030323.P17102701410094098989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 2 : ℤ)

end

end A030323.P17102701410094098989

/-! ## A030323.P14727677288126787804

`A005408(∑[A030317(n+1)])%A028310(n+2)`
-/

namespace A030323.P14727677288126787804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A028310 (n + 2))

end

end A030323.P14727677288126787804

/-!
# A030324: Triangle read by rows, where row k consists of the binary digits of Fibonacci(k+1).

The programs for A030324, there is no canonical definition to state claims against.
-/

/-! ## A030324.P3982717007874808510

`char[A030326(n+1)-1]`
-/

namespace A030324.P3982717007874808510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030326 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030324.P3982717007874808510

/-! ## A030324.P13508413726861568753

`char[comp[A030325(n+1)-1]]`
-/

namespace A030324.P13508413726861568753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030325 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A030324.P13508413726861568753

/-! ## A030324.P18274602872162188509

`char[A023443(A030326(n+1))]`
-/

namespace A030324.P18274602872162188509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A030326 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030324.P18274602872162188509

/-! ## A030324.P17190539164745539855

`char[A023443(comp[A030325(n+1)])]`
-/

namespace A030324.P17190539164745539855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030325 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030324.P17190539164745539855

/-! ## A030324.P4932724073966755255

`char[A030326(A028310(n))-1-char[1]]`
-/

namespace A030324.P4932724073966755255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030326 (A028310 n).toNat - 1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A030324.P4932724073966755255

/-!
# A030325: Position of n-th 0 in A030324.

The programs for A030325, there is no canonical definition to state claims against.
-/

/-! ## A030325.P9282745784716111083

`eq[0, A030324(n+1)]+1`
-/

namespace A030325.P9282745784716111083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030325.P9282745784716111083

/-! ## A030325.P14115127889653866891

`lt[A030324(A028310(n)), 1]`
-/

namespace A030325.P14115127889653866891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030324 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030325.P14115127889653866891

/-! ## A030325.P350197877979848109

`eq[0, A030324(A328399(A004275(n)))]`
-/

namespace A030325.P350197877979848109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030324 (A328399 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030325.P350197877979848109

/-! ## A030325.P16740006580544550738

`lt[A030324(A000007(n)+n), 1]`
-/

namespace A030325.P16740006580544550738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030324 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030325.P16740006580544550738

/-! ## A030325.P4671803806218157387

`eq[0, A030324(A065033(2*n))]`
-/

namespace A030325.P4671803806218157387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030324 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030325.P4671803806218157387

/-! ## A030325.P10356550635566230043

`eq[0, A030324(A008619(A004273(n)))]`
-/

namespace A030325.P10356550635566230043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030324 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030325.P10356550635566230043

/-! ## A030325.P16839723004188844820

`eq[0, A030324(A233583(n+1))]`
-/

namespace A030325.P16839723004188844820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030324 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030325.P16839723004188844820

/-!
# A030326: Position of n-th 1 in A030324.

The programs for A030326, there is no canonical definition to state claims against.
-/

/-! ## A030326.P4735761578098911127

`comp[A030325(n+1)-1]+1`
-/

namespace A030326.P4735761578098911127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030325 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A030326.P4735761578098911127

/-! ## A030326.P17413547724157493240

`eq[1, A030324(n+1)]+1`
-/

namespace A030326.P17413547724157493240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030326.P17413547724157493240

/-! ## A030326.P3122536462891580473

`record[A000027(n+1)*A030324(n+1)]`
-/

namespace A030326.P3122536462891580473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A030324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030326.P3122536462891580473

/-! ## A030326.P9208150034393749713

`filter[A337843(n), A030324(#)]`
-/

namespace A030326.P9208150034393749713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030324 (f1 j).toNat = 1) n)

end

end A030326.P9208150034393749713

/-! ## A030326.P17348298586418129840

`record[(A005408(n)-n)*A030324(n+1)]`
-/

namespace A030326.P17348298586418129840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ)) * A030324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030326.P17348298586418129840

/-! ## A030326.P13889498690919993091

`record[A006949(n)*A030324(A006949(n))]`
-/

namespace A030326.P13889498690919993091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 n * A030324 (A006949 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030326.P13889498690919993091

/-! ## A030326.P1306038783478444899

`filter[A305904(n+1), A030324(#)]`
-/

namespace A030326.P1306038783478444899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030324 (f1 j).toNat = 1) n)

end

end A030326.P1306038783478444899

/-! ## A030326.P8153856786189362684

`filter[A305903(n+1), A030324(#)]`
-/

namespace A030326.P8153856786189362684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030324 (f1 j).toNat = 1) n)

end

end A030326.P8153856786189362684

/-! ## A030326.P11979040740870673835

`filter[A379000(n+1), A030324(#)]`
-/

namespace A030326.P11979040740870673835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030324 (f1 j).toNat = 1) n)

end

end A030326.P11979040740870673835

/-! ## A030326.P10435855131040689133

`filter[A305801(n+1), A030324(#)]`
-/

namespace A030326.P10435855131040689133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030324 (f1 j).toNat = 1) n)

end

end A030326.P10435855131040689133

/-! ## A030326.P12488792618468459609

`filter[A326203(n+1), A030324(#)]`
-/

namespace A030326.P12488792618468459609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030324 (f1 j).toNat = 1) n)

end

end A030326.P12488792618468459609

/-! ## A030326.P14565267461949306994

`record[A030324(A133310(n))*A133310(n)]`
-/

namespace A030326.P14565267461949306994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030324 (A133310 n).toNat * A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030326.P14565267461949306994

/-! ## A030326.P3733950782241462544

`filter[A326202(n+1), A030324(#)]`
-/

namespace A030326.P3733950782241462544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030324 (f1 j).toNat = 1) n)

end

end A030326.P3733950782241462544

/-! ## A030326.P2715177751005078180

`filter[A322810(n+1), A030324(#)]`
-/

namespace A030326.P2715177751005078180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030324 (f1 j).toNat = 1) n)

end

end A030326.P2715177751005078180

/-! ## A030326.P361043265596786179

`filter[A326201(n+1), A030324(#)]`
-/

namespace A030326.P361043265596786179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030324 (f1 j).toNat = 1) n)

end

end A030326.P361043265596786179

/-! ## A030326.P12241961105202241057

`filter[A319701(n+1), A030324(#)]`
-/

namespace A030326.P12241961105202241057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030324 (f1 j).toNat = 1) n)

end

end A030326.P12241961105202241057

/-! ## A030326.P17021798444312287486

`record[A008619(n)*A030324(A008619(n))]`
-/

namespace A030326.P17021798444312287486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A030324 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030326.P17021798444312287486

/-! ## A030326.P3718356629123001953

`filter[A038459(n+1), A030324(#)]`
-/

namespace A030326.P3718356629123001953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030324 (f1 j).toNat = 1) n)

end

end A030326.P3718356629123001953

/-! ## A030326.P10936757244584510948

`record[A030324(A065033(n))*A065033(n)]`
-/

namespace A030326.P10936757244584510948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030324 (A065033 n).toNat * A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030326.P10936757244584510948

/-!
# A030327: a(n) is the least k such that the base-2 representation of n begins at s(k) in A030324.

The programs for A030327, there is no canonical definition to state claims against.
-/

/-! ## A030327.P18033897886082084487

`A018097(A053711(n+1)%A064883(n+1))`
-/

namespace A030327.P18033897886082084487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018097 (Int.tmod (A053711 (n + 1)) (A064883 (n + 1))).toNat

end

end A030327.P18033897886082084487

/-!
# A030328: Length of n-th run of 0's in A030324.

The programs for A030328, there is no canonical definition to state claims against.
-/

/-! ## A030328.P1534362571136117792

`A051903(A071204(n+1)+A000051(n))`
-/

namespace A030328.P1534362571136117792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A071204 (n + 1) + A000051 n).toNat

end

end A030328.P1534362571136117792

/-! ## A030328.P9472908478277535816

`gcd(A048448(A199523(n+1)), A319616(n+3))`
-/

namespace A030328.P9472908478277535816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048448 (A199523 (n + 1)).toNat) (A319616 (n + 3))

end

end A030328.P9472908478277535816

/-!
# A030329: Length of n-th run of 1's in A030324.

The programs for A030329, there is no canonical definition to state claims against.
-/

/-! ## A030329.P7614836051925201278

`A193929(∑[4*A078287(n+1)])`
-/

namespace A030329.P7614836051925201278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A078287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030329.P7614836051925201278

/-! ## A030329.P2406208703731516124

`A293668(gcd(A104010(3*n+1), A359046(3*n+2)))`
-/

namespace A030329.P2406208703731516124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 (Int.gcd (A104010 (3 * n + 1)) (A359046 (3 * n + 2)))

end

end A030329.P2406208703731516124

/-! ## A030329.P16436644882048648691

`A374629((∑[n]+1)*A284775(n+1)+1)`
-/

namespace A030329.P16436644882048648691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374629 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A284775 (n + 1) + 1).toNat

end

end A030329.P16436644882048648691

/-!
# A030330: (# 1's)-(# 0's) in first n terms of A030324.

The programs for A030330, there is no canonical definition to state claims against.
-/

/-! ## A030330.P14626427572018948429

`∑[2*A030324(n+1)-1]`
-/

namespace A030330.P14626427572018948429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030324 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030330.P14626427572018948429

/-! ## A030330.P5783730684398842155

`A004273(∑[A030324(n+1)])-n`
-/

namespace A030330.P5783730684398842155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A030330.P5783730684398842155

/-! ## A030330.P10804950553738609931

`A004277(∑[A030324(n+1)])-(n+1)`
-/

namespace A030330.P10804950553738609931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A030330.P10804950553738609931

/-! ## A030330.P5984398128732787722

`A005843(∑[A030324(n+1)])-(n+1)`
-/

namespace A030330.P5984398128732787722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A030330.P5984398128732787722

/-! ## A030330.P3137154093928046299

`∑[A260574((1-A030324(n+1))^(n+1))]`
-/

namespace A030330.P3137154093928046299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260574 ((1 - A030324 (n + 1)) ^ (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030330.P3137154093928046299

/-! ## A030330.P2855543887594996772

`∑[A081729(A030324(n+1)+A004770(n+1))]`
-/

namespace A030330.P2855543887594996772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A030324 (n + 1) + A004770 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030330.P2855543887594996772

/-! ## A030330.P13286325757609065927

`∑[A309873(A100484(n+1)+A030324(n+1))]`
-/

namespace A030330.P13286325757609065927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A100484 (n + 1) + A030324 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030330.P13286325757609065927

/-! ## A030330.P3738204800015803550

`∑[A219977(A001844(n)-A030324(n+1))]`
-/

namespace A030330.P3738204800015803550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A001844 n - A030324 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030330.P3738204800015803550

/-!
# A030331: Weight distribution of hypothetical [ 24,12,10 ] trace-self-dual additive code over GF(4).

The programs for A030331, there is no canonical definition to state claims against.
-/

/-! ## A030331.P2418196081531015209

`A221768(xor(5, A003422(n)))`
-/

namespace A030331.P2418196081531015209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (Int.xor 5 (A003422 n)).toNat

end

end A030331.P2418196081531015209

/-! ## A030331.P15596418785799085699

`A048390(C(A271271(n), n))`
-/

namespace A030331.P15596418785799085699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048390 (Nat.choose (A271271 n).toNat n)

end

end A030331.P15596418785799085699

/-!
# A030332: Position of n-th 0 in A003137.

The programs for A030332, there is no canonical definition to state claims against.
-/

/-! ## A030332.P492822750754695970

`lt[n*A054635(n), n]`
-/

namespace A030332.P492822750754695970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054635 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030332.P492822750754695970

/-! ## A030332.P16847794671097620183

`eq[0, A003137(n+1)]+1`
-/

namespace A030332.P16847794671097620183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030332.P16847794671097620183

/-! ## A030332.P7242768647078746367

`lt[A054635(n+1), 1]+1`
-/

namespace A030332.P7242768647078746367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030332.P7242768647078746367

/-! ## A030332.P18358396407429301971

`eq[0, A054635(n+3)]+3`
-/

namespace A030332.P18358396407429301971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A030332.P18358396407429301971

/-! ## A030332.P49281739005282096

`eq[A000007(n), A054635(n)]`
-/

namespace A030332.P49281739005282096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P49281739005282096

/-! ## A030332.P648970999582262655

`eq[A000038(n), A054635(n)]`
-/

namespace A030332.P648970999582262655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P648970999582262655

/-! ## A030332.P16143035444397366622

`eq[A054635(n), A130706(n)]`
-/

namespace A030332.P16143035444397366622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P16143035444397366622

/-! ## A030332.P6567610270339443734

`eq[A054635(n), A130713(n)]`
-/

namespace A030332.P6567610270339443734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P6567610270339443734

/-! ## A030332.P12919054184851203504

`eq[A054635(n), A166926(n)]`
-/

namespace A030332.P12919054184851203504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P12919054184851203504

/-! ## A030332.P10082951138226026111

`eq[A054635(n), A167876(n)]`
-/

namespace A030332.P10082951138226026111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167876 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P10082951138226026111

/-! ## A030332.P6893017290774117895

`eq[A054635(n), A169585(n)]`
-/

namespace A030332.P6893017290774117895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P6893017290774117895

/-! ## A030332.P15036576580878512093

`eq[A054635(n), A263013(n)]`
-/

namespace A030332.P15036576580878512093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P15036576580878512093

/-! ## A030332.P17035128585684972591

`eq[A054635(n), A154272(n+1)]`
-/

namespace A030332.P17035128585684972591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P17035128585684972591

/-! ## A030332.P7346721266455794016

`eq[A054635(n), A154955(n+1)]`
-/

namespace A030332.P7346721266455794016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P7346721266455794016

/-! ## A030332.P1720338444407610868

`eq[A054635(n), A173012(n+1)]`
-/

namespace A030332.P1720338444407610868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173012 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P1720338444407610868

/-! ## A030332.P18017128689096441713

`eq[A054635(n), A181403(n+1)]`
-/

namespace A030332.P18017128689096441713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P18017128689096441713

/-! ## A030332.P6439083909139993850

`eq[A054635(n), A182687(n+1)]`
-/

namespace A030332.P6439083909139993850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P6439083909139993850

/-! ## A030332.P10571579821987602514

`eq[A054635(n), A182688(n+1)]`
-/

namespace A030332.P10571579821987602514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P10571579821987602514

/-! ## A030332.P2238912317604651686

`eq[A054635(n), A299529(n+1)]`
-/

namespace A030332.P2238912317604651686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030332.P2238912317604651686

/-!
# A030333: Position of n-th 1 in A003137.

The programs for A030333, there is no canonical definition to state claims against.
-/

/-! ## A030333.P15092716923114421292

`eq[1, A054635(n)]`
-/

namespace A030333.P15092716923114421292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030333.P15092716923114421292

/-! ## A030333.P15357208841316588473

`eq[1, A003137(n+1)]+1`
-/

namespace A030333.P15357208841316588473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030333.P15357208841316588473

/-! ## A030333.P14850340730591863728

`record[(n+1)*A054635(n+1)%2]`
-/

namespace A030333.P14850340730591863728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A054635 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030333.P14850340730591863728

/-! ## A030333.P9809657192238524814

`A000720(p?[A000040(n+1)*A003137(n+1)])`
-/

namespace A030333.P9809657192238524814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A003137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030333.P9809657192238524814

/-! ## A030333.P13793972435384284293

`record[A110514(2*n+1-A003137(n+1))]`
-/

namespace A030333.P13793972435384284293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 ((2 * n + 1 : ℤ) - A003137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030333.P13793972435384284293

/-! ## A030333.P16651261068406364800

`record[A001057(A005843(n)+A003137(n+1))]`
-/

namespace A030333.P16651261068406364800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A005843 n + A003137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030333.P16651261068406364800

/-! ## A030333.P10748218443483050758

`record[A242096(A100484(n+1)+A003137(n+1))]`
-/

namespace A030333.P10748218443483050758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (A100484 (n + 1) + A003137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030333.P10748218443483050758

/-! ## A030333.P1317954501797010021

`eq[1, A055144(n+1)%3]+1`
-/

namespace A030333.P1317954501797010021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055144 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030333.P1317954501797010021

/-!
# A030334: Position of n-th 2 in A003137.

The programs for A030334, there is no canonical definition to state claims against.
-/

/-! ## A030334.P17928886469097592335

`lt[1, A003137(n+1)]+1`
-/

namespace A030334.P17928886469097592335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030334.P17928886469097592335

/-! ## A030334.P8041548352726540655

`eq[2, A003137(n+2)]+2`
-/

namespace A030334.P8041548352726540655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A030334.P8041548352726540655

/-! ## A030334.P7963883456205710817

`eq[A030339(n+2), A030339(n+1)]+2`
-/

namespace A030334.P7963883456205710817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030339 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030339 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A030334.P7963883456205710817

/-! ## A030334.P9693131940620507595

`lt[A030340(n+2), A030340(n+1)]+2`
-/

namespace A030334.P9693131940620507595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030340 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A030334.P9693131940620507595

/-! ## A030334.P10797292035733077782

`lt[1, A054635(n)]`
-/

namespace A030334.P10797292035733077782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A030334.P10797292035733077782

/-! ## A030334.P4415286106179333881

`eq[2, A054635(n+1)]+1`
-/

namespace A030334.P4415286106179333881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030334.P4415286106179333881

/-! ## A030334.P10236317796515811079

`eq[A054635(n), A104435(n+1)]`
-/

namespace A030334.P10236317796515811079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030334.P10236317796515811079

/-! ## A030334.P13790307265316037751

`eq[2, A054635(A000007(n)+n)]`
-/

namespace A030334.P13790307265316037751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030334.P13790307265316037751

/-! ## A030334.P15727451804893456561

`eq[A000038(n)+2, A054635(n)]`
-/

namespace A030334.P15727451804893456561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030334.P15727451804893456561

/-! ## A030334.P16823274238599993295

`eq[2, A054635(A130706(n)+n)]`
-/

namespace A030334.P16823274238599993295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (A130706 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030334.P16823274238599993295

/-! ## A030334.P6788146749910454595

`eq[2, A054635(A169585(n)+n)]`
-/

namespace A030334.P6788146749910454595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (A169585 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030334.P6788146749910454595

/-! ## A030334.P14624470293439065285

`eq[A000038(n*A000038(n)), A054635(n)]`
-/

namespace A030334.P14624470293439065285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n : ℤ) * A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030334.P14624470293439065285

/-! ## A030334.P8671960979156182372

`eq[2, A285476(n)+A054635(n)]`
-/

namespace A030334.P8671960979156182372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n + A054635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030334.P8671960979156182372

/-!
# A030336: Length of n-th run of digit 0 in A003137.

The programs for A030336, there is no canonical definition to state claims against.
-/

/-! ## A030336.P8004961198552525998

`A020500(A078285(3*n+5))*A030346(n+2)`
-/

namespace A030336.P8004961198552525998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (A078285 (3 * n + 5)).toNat * A030346 (n + 2)

end

end A030336.P8004961198552525998

/-! ## A030336.P17513972875587745210

`A354926(A131876(2*n+1))+A030346(n+2)`
-/

namespace A030336.P17513972875587745210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (A131876 (2 * n + 1)).toNat + A030346 (n + 2)

end

end A030336.P17513972875587745210

/-! ## A030336.P9006870407406617326

`A354926(A192125(n+5))+A030346(n+2)`
-/

namespace A030336.P9006870407406617326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (A192125 (n + 5)).toNat + A030346 (n + 2)

end

end A030336.P9006870407406617326

/-! ## A030336.P2027456952258441949

`A030346(n+2)%A081604(A020338(2*n+3))`
-/

namespace A030336.P2027456952258441949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030346 (n + 2)) (A081604 (A020338 (2 * n + 3)).toNat)

end

end A030336.P2027456952258441949

/-!
# A030337: Length of n-th run of digit 1 in A003137.

The programs for A030337, there is no canonical definition to state claims against.
-/

/-! ## A030337.P16010211642625492589

`gcd(A108598(A141928(3*n+4)), A136047(n+1))`
-/

namespace A030337.P16010211642625492589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108598 (A141928 (3 * n + 4)).toNat) (A136047 (n + 1))

end

end A030337.P16010211642625492589

/-! ## A030337.P13550647285512528534

`A000188(A022265(n)+A003064(n))`
-/

namespace A030337.P13550647285512528534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A022265 n + A003064 n).toNat

end

end A030337.P13550647285512528534

/-! ## A030337.P9514863110681612881

`A000189(A022265(n)+A003064(n))`
-/

namespace A030337.P9514863110681612881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A022265 n + A003064 n).toNat

end

end A030337.P9514863110681612881

/-! ## A030337.P5625598904116756789

`A000190(A022265(n)+A003064(n))`
-/

namespace A030337.P5625598904116756789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (A022265 n + A003064 n).toNat

end

end A030337.P5625598904116756789

/-!
# A030338: Length of n-th run of digit 2 in A003137.

The programs for A030338, there is no canonical definition to state claims against.
-/

/-! ## A030338.P15900610993573724535

`gcd(A014963(A015886(n)), A311477(n))`
-/

namespace A030338.P15900610993573724535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014963 (A015886 n).toNat) (A311477 n)

end

end A030338.P15900610993573724535

/-! ## A030338.P3253831297325880866

`gcd(A004086(A295724(n)), A015886(n))`
-/

namespace A030338.P3253831297325880866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004086 (A295724 n).toNat) (A015886 n)

end

end A030338.P3253831297325880866

/-! ## A030338.P3482735100519564903

`gcd(A003355(A142809(n+1)), A328928(n+3))`
-/

namespace A030338.P3482735100519564903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003355 (A142809 (n + 1)).toNat) (A328928 (n + 3))

end

end A030338.P3482735100519564903

/-! ## A030338.P6134037721437470838

`gcd(A061925(n), A275183(A002522(n)))`
-/

namespace A030338.P6134037721437470838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061925 n) (A275183 (A002522 n).toNat)

end

end A030338.P6134037721437470838

/-! ## A030338.P139527679871628823

`A365632(A222110(n+2))`
-/

namespace A030338.P139527679871628823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365632 (A222110 (n + 2)).toNat

end

end A030338.P139527679871628823

/-!
# A030339: (# 1's)-(# 0's) in first n terms of A003137.

The programs for A030339, there is no canonical definition to state claims against.
-/

/-! ## A030339.P17853401078487591112

`∑[round(sin(A030351(n+1)²))]`
-/

namespace A030339.P17853401078487591112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A030351 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030339.P17853401078487591112

/-! ## A030339.P15425503502765378785

`A030340(n+1)+∑[A003137(n+1)-1]`
-/

namespace A030339.P15425503502765378785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030340 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030339.P15425503502765378785

/-! ## A030339.P14860027542544429784

`∑[A054670(Δ[A054637(n)]²)]`
-/

namespace A030339.P14860027542544429784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054670 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030339.P14860027542544429784

/-! ## A030339.P12831997123807712701

`∑[A001057(2-Δ[A054637(n)])]`
-/

namespace A030339.P12831997123807712701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030339.P12831997123807712701

/-! ## A030339.P15820974636159363315

`∑[A065359(2-Δ[A054637(n)])]`
-/

namespace A030339.P15820974636159363315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030339.P15820974636159363315

/-! ## A030339.P9226291136074979996

`∑[A062157(A030351(n+1)^A178334(n))]`
-/

namespace A030339.P9226291136074979996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (SequenceMachineLib.roundAway ((A030351 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030339.P9226291136074979996

/-!
# A030340: a(n)=(# 1's)-(# 2's) in first n terms of A003137.

The programs for A030340, there is no canonical definition to state claims against.
-/

/-! ## A030340.P1240015490864655272

`∑[round(sin(A003137(n+1)²))]`
-/

namespace A030340.P1240015490864655272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A003137 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030340.P1240015490864655272

/-! ## A030340.P13002759730716955981

`A030339(n+1)+∑[1-A003137(n+1)]`
-/

namespace A030340.P13002759730716955981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030339 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030340.P13002759730716955981

/-! ## A030340.P1988168117076289184

`∑[C(2, A054635(n+1)²)-1]`
-/

namespace A030340.P1988168117076289184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A054635 (n + 1) ^ 2).toNat : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030340.P1988168117076289184

/-! ## A030340.P11081290033475587254

`∑[A001057(Δ[A054637(n)])]`
-/

namespace A030340.P11081290033475587254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030340.P11081290033475587254

/-! ## A030340.P15706895848223840916

`∑[A065359(Δ[A054637(n)])]`
-/

namespace A030340.P15706895848223840916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030340.P15706895848223840916

/-! ## A030340.P1784961922849448503

`∑[A065490(A054635(n+1)+gcd(n, n+1))]`
-/

namespace A030340.P1784961922849448503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065490 (A054635 (n + 1) + (Nat.gcd n (n + 1) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030340.P1784961922849448503

/-! ## A030340.P5055111025207499651

`∑[A062157(A003137(n+1)^A178334(n))]`
-/

namespace A030340.P5055111025207499651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (SequenceMachineLib.roundAway ((A003137 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030340.P5055111025207499651

/-!
# A030341: Triangle T(n,k): write n in base 3, reverse order of digits.

The programs for A030341, there is no canonical definition to state claims against.
-/

/-! ## A030341.P547424363817190638

`A022307(∑{e}[A256322(n)², #])`
-/

namespace A030341.P547424363817190638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256322 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A030341.P547424363817190638

/-! ## A030341.P6555343310845785885

`A022307(∑{e}[A000290(A256322(n)), #])`
-/

namespace A030341.P6555343310845785885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A256322 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A030341.P6555343310845785885

/-! ## A030341.P15578394433519920724

`A284792(A033996(3*(n+1)))+A284792(n+1)`
-/

namespace A030341.P15578394433519920724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284792 (A033996 (3 * (n + 1))).toNat + A284792 (n + 1)

end

end A030341.P15578394433519920724

/-! ## A030341.P4758628740651220498

`A008472(A066031(n+1))%A339871(A158684(2*(n+1)))`
-/

namespace A030341.P4758628740651220498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008472 (A066031 (n + 1)).toNat) (A339871 (A158684 (2 * (n + 1))).toNat)

end

end A030341.P4758628740651220498

/-! ## A030341.P16892814509961631426

`A083054(4*A131423(n+1))`
-/

namespace A030341.P16892814509961631426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083054 (4 * A131423 (n + 1)).toNat

end

end A030341.P16892814509961631426

/-!
# A030342: Position of n-th 0 in A030341.

The programs for A030342, there is no canonical definition to state claims against.
-/

/-! ## A030342.P6958970745913921010

`eq[0, A030341(n)]`
-/

namespace A030342.P6958970745913921010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030342.P6958970745913921010

/-! ## A030342.P312634535064785385

`lt[A030341(n), A054977(n)]`
-/

namespace A030342.P312634535064785385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030342.P312634535064785385

/-! ## A030342.P14231133388332836577

`lt[A030341(n), A000038(n)+1]`
-/

namespace A030342.P14231133388332836577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030342.P14231133388332836577

/-! ## A030342.P9624195063820093700

`lt[A030341(n)*A178732(n), 2]`
-/

namespace A030342.P9624195063820093700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n * A178732 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030342.P9624195063820093700

/-! ## A030342.P12068970680636806807

`record[n-A000096(n)*A030341(n)]`
-/

namespace A030342.P12068970680636806807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000096 n * A030341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030342.P12068970680636806807

/-! ## A030342.P2841680931307146261

`record[n-A000290(n)*A030341(n)]`
-/

namespace A030342.P2841680931307146261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000290 n * A030341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030342.P2841680931307146261

/-! ## A030342.P1912875330095119584

`record[n-A000292(n)*A030341(n)]`
-/

namespace A030342.P1912875330095119584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000292 n * A030341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030342.P1912875330095119584

/-! ## A030342.P13438115689893995158

`record[n-A004128(n)*A030341(n)]`
-/

namespace A030342.P13438115689893995158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004128 n * A030341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030342.P13438115689893995158

/-! ## A030342.P13058862073531005546

`record[n-A005187(n*A030341(n))]`
-/

namespace A030342.P13058862073531005546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005187 ((n : ℤ) * A030341 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030342.P13058862073531005546

/-! ## A030342.P8291649671230582847

`record[n-A005408(n)*A030341(n)]`
-/

namespace A030342.P8291649671230582847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005408 n * A030341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030342.P8291649671230582847

/-! ## A030342.P11363543916085400805

`record[n-A005843(n)*A030341(n)]`
-/

namespace A030342.P11363543916085400805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005843 n * A030341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030342.P11363543916085400805

/-! ## A030342.P16138999299804436954

`record[n-A007088(n)*A030341(n)]`
-/

namespace A030342.P16138999299804436954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007088 n * A030341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030342.P16138999299804436954

/-! ## A030342.P4931140954893388610

`record[n-A007089(n)*A030341(n)]`
-/

namespace A030342.P4931140954893388610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007089 n * A030341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030342.P4931140954893388610

/-! ## A030342.P8388118054056774532

`lt[A030341(n), A030579(A030576(n+1))]`
-/

namespace A030342.P8388118054056774532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030579 (A030576 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030342.P8388118054056774532

/-! ## A030342.P3640083164076114080

`lt[A030341(n), A030580(A030576(3*n+1))]`
-/

namespace A030342.P3640083164076114080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030580 (A030576 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030342.P3640083164076114080

/-! ## A030342.P5243915136120269036

`lt[A030341(n), A030567(A030569(n+1))]`
-/

namespace A030342.P5243915136120269036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 (A030569 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030342.P5243915136120269036

/-! ## A030342.P10976448393129508989

`lt[A284260(2*(n+1)*A030341(n)+1), 3]`
-/

namespace A030342.P10976448393129508989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284260 (2 * ((n + 1 : ℤ) * A030341 n) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030342.P10976448393129508989

/-! ## A030342.P2989622569076086697

`lt[A030341(n), A031298(A031300(n+1))]`
-/

namespace A030342.P2989622569076086697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (A031300 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030342.P2989622569076086697

/-!
# A030343: Position of n-th 1 in A030341.

The programs for A030343, there is no canonical definition to state claims against.
-/

/-! ## A030343.P6437706126772052938

`eq[1, A030341(n)]`
-/

namespace A030343.P6437706126772052938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030343.P6437706126772052938

/-! ## A030343.P5929089096832310563

`record[(n+1)*A030341(n+1)%2]`
-/

namespace A030343.P5929089096832310563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A030341 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030343.P5929089096832310563

/-! ## A030343.P13048087006001381184

`lt[A030308(n), tan(A030341(n))]`
-/

namespace A030343.P13048087006001381184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A030341 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030343.P13048087006001381184

/-! ## A030343.P7928440120475458626

`record[A032742(A005408(n)-A030341(n))]`
-/

namespace A030343.P7928440120475458626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A005408 n - A030341 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030343.P7928440120475458626

/-! ## A030343.P3905922329019740944

`A056239(p?[A008578(n+1)*A030341(n)])`
-/

namespace A030343.P3905922329019740944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A030341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030343.P3905922329019740944

/-!
# A030344: Position of n-th 2 in A030341.

The programs for A030344, there is no canonical definition to state claims against.
-/

/-! ## A030344.P3340958118001612010

`lt[1, A030341(n)]`
-/

namespace A030344.P3340958118001612010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A030344.P3340958118001612010

/-! ## A030344.P9064143771527388569

`eq[2, A030341(n+1)]+1`
-/

namespace A030344.P9064143771527388569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030344.P9064143771527388569

/-! ## A030344.P6423732705264793225

`A000027(eq[2, A030341(n)])`
-/

namespace A030344.P6423732705264793225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030344.P6423732705264793225

/-! ## A030344.P11586881441262433918

`eq[2, A030341(A028310(n))]`
-/

namespace A030344.P11586881441262433918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030344.P11586881441262433918

/-! ## A030344.P16261337377583323003

`eq[A030341(n), A104435(n+1)]`
-/

namespace A030344.P16261337377583323003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030344.P16261337377583323003

/-! ## A030344.P10725521928351175814

`eq[2, A030341(A000007(n)+n)]`
-/

namespace A030344.P10725521928351175814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030344.P10725521928351175814

/-! ## A030344.P10745288780581712002

`eq[A000038(n)+2, A030341(n)]`
-/

namespace A030344.P10745288780581712002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030344.P10745288780581712002

/-! ## A030344.P5022855755442712032

`eq[2, A030341(or(n, A000007(n)))]`
-/

namespace A030344.P5022855755442712032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030344.P5022855755442712032

/-! ## A030344.P16141797256612788440

`eq[A000010(4-C(n, n²)), A030341(n)]`
-/

namespace A030344.P16141797256612788440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (4 - Nat.choose n (n ^ 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030344.P16141797256612788440

/-! ## A030344.P4214124418163780760

`eq[A006530(A001316(n)), A030341(n)]`
-/

namespace A030344.P4214124418163780760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030344.P4214124418163780760

/-! ## A030344.P4523229933975801050

`eq[A020639(A007843(n)), A030341(n)]`
-/

namespace A030344.P4523229933975801050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007843 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030344.P4523229933975801050

/-! ## A030344.P10461043674541915489

`eq[A020639(A008574(n)), A030341(n)]`
-/

namespace A030344.P10461043674541915489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030344.P10461043674541915489

/-! ## A030344.P2940040236211605659

`A007318(A000217(n))*eq[2, A030341(n)]`
-/

namespace A030344.P2940040236211605659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A030344.P2940040236211605659

/-! ## A030344.P6898572116309566405

`eq[A020639(A000132(n)), A030341(n)]`
-/

namespace A030344.P6898572116309566405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030344.P6898572116309566405

/-!
# A030346: Length of n-th run of digit 0 in A030341.

The programs for A030346, there is no canonical definition to state claims against.
-/

/-! ## A030346.P3089771930513279505

`gcd(A010815(3*n²+1), A030336(A233583(n+1)))`
-/

namespace A030346.P3089771930513279505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (3 * n ^ 2 + 1)) (A030336 (A233583 (n + 1)).toNat)

end

end A030346.P3089771930513279505

/-! ## A030346.P6107157982809187023

`A030336(A233583(n+1))*A196839(A372361(3*n+1))`
-/

namespace A030346.P6107157982809187023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030336 (A233583 (n + 1)).toNat * A196839 (A372361 (3 * n + 1)).toNat

end

end A030346.P6107157982809187023

/-! ## A030346.P8706581040933109887

`A030336(C(A263142(n+1), n)+n)`
-/

namespace A030346.P8706581040933109887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030336 (Nat.choose (A263142 (n + 1)).toNat n + n)

end

end A030346.P8706581040933109887

/-! ## A030346.P9502491228468693091

`gcd(A153024(n+1), A260319(n+1))`
-/

namespace A030346.P9502491228468693091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153024 (n + 1)) (A260319 (n + 1))

end

end A030346.P9502491228468693091

/-!
# A030347: Length of n-th run of digit 1 in A030341.

The programs for A030347, there is no canonical definition to state claims against.
-/

/-! ## A030347.P10190515808594152409

`gcd(A005187(n+1), A057944(A020695(n)))`
-/

namespace A030347.P10190515808594152409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005187 (n + 1)) (A057944 (A020695 n).toNat)

end

end A030347.P10190515808594152409

/-! ## A030347.P17336284192642778241

`A374629(A109997(n+1))`
-/

namespace A030347.P17336284192642778241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374629 (A109997 (n + 1)).toNat

end

end A030347.P17336284192642778241

/-! ## A030347.P10954383875298464055

`gcd(A002156(A056520(n)), A002172(n+1))`
-/

namespace A030347.P10954383875298464055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002156 (A056520 n).toNat) (A002172 (n + 1))

end

end A030347.P10954383875298464055

/-! ## A030347.P6929084099468051148

`gcd(A082053(n+1), A127388(A064910(n)))`
-/

namespace A030347.P6929084099468051148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082053 (n + 1)) (A127388 (A064910 n).toNat)

end

end A030347.P6929084099468051148

/-!
# A030348: Length of n-th run of digit 2 in A030341.

The programs for A030348, there is no canonical definition to state claims against.
-/

/-! ## A030348.P10516215978933342990

`A003056(gcd(A038722(n+1), A186724(n)))`
-/

namespace A030348.P10516215978933342990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.gcd (A038722 (n + 1)) (A186724 n))

end

end A030348.P10516215978933342990

/-! ## A030348.P10781202944611405570

`gcd(A044818(A228859(n+1)), A048309(n))`
-/

namespace A030348.P10781202944611405570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A044818 (A228859 (n + 1)).toNat) (A048309 n)

end

end A030348.P10781202944611405570

/-! ## A030348.P3524528050941858019

`gcd(A121438(n), A182893(A058787(n+4)))`
-/

namespace A030348.P3524528050941858019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121438 n) (A182893 (A058787 (n + 4)).toNat)

end

end A030348.P3524528050941858019

/-! ## A030348.P15305342302356368351

`gcd(A046521(n), A086820(A175967(n+4)))`
-/

namespace A030348.P15305342302356368351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046521 n) (A086820 (A175967 (n + 4)).toNat)

end

end A030348.P15305342302356368351

/-!
# A030350: a(n) = (# 1's)-(# 2's) in first n terms of A030341.

The programs for A030350, there is no canonical definition to state claims against.
-/

/-! ## A030350.P3609206583879159389

`A230417(A001190(n+3)-A344527(n+1))`
-/

namespace A030350.P3609206583879159389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230417 (A001190 (n + 3) - A344527 (n + 1)).toNat

end

end A030350.P3609206583879159389

/-! ## A030350.P6162375209315482156

`A275609(A007318(3*n+1)*A071397(n))`
-/

namespace A030350.P6162375209315482156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (A007318 (3 * n + 1) * A071397 n).toNat

end

end A030350.P6162375209315482156

/-!
# A030351: Write n in base 3, then complement each digit (d -> 2-d) and juxtapose.

The programs for A030351, there is no canonical definition to state claims against.
-/

/-! ## A030351.P1497829250831945726

`2-A003137(n+1)`
-/

namespace A030351.P1497829250831945726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A003137 (n + 1)

end

end A030351.P1497829250831945726

/-! ## A030351.P5830449246945856135

`A073423(A003137(n+1)^ceil(n/(n+1)))`
-/

namespace A030351.P5830449246945856135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 (SequenceMachineLib.roundAway ((A003137 (n + 1) : ℚ) ^ (⌈(n : ℚ) / (n + 1 : ℚ)⌉ : ℤ))).toNat

end

end A030351.P5830449246945856135

/-! ## A030351.P14783256863062124298

`A003137(A003137(n+1)+A020639(2*(n+1)))`
-/

namespace A030351.P14783256863062124298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A003137 (n + 1) + A020639 (2 * (n + 1))).toNat

end

end A030351.P14783256863062124298

/-! ## A030351.P15194424580086252867

`2-Δ[A054637(n)]`
-/

namespace A030351.P15194424580086252867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A030351.P15194424580086252867

/-! ## A030351.P14637487393014354779

`2-A054635(n+1)`
-/

namespace A030351.P14637487393014354779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A054635 (n + 1)

end

end A030351.P14637487393014354779

/-! ## A030351.P16844765007189528060

`a(n-1)-Δ[A054635(n)]` with `a(0)=1`
-/

namespace A030351.P16844765007189528060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A030351.P16844765007189528060

/-! ## A030351.P17061484228476068934

`A054635(A072865(2*n+1)+A054635(n+1))`
-/

namespace A030351.P17061484228476068934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (A072865 (2 * n + 1) + A054635 (n + 1)).toNat

end

end A030351.P17061484228476068934

/-!
# A030353: Write 2n-1 in base 3 and juxtapose.

The programs for A030353, there is no canonical definition to state claims against.
-/

/-! ## A030353.P7907648714872072831

`A126077(A019538(n+1))%3`
-/

namespace A030353.P7907648714872072831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126077 (A019538 (n + 1)).toNat) 3

end

end A030353.P7907648714872072831

/-! ## A030353.P14124319267135323046

`A296978(n+1)-A010892(A256776(n+1))`
-/

namespace A030353.P14124319267135323046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296978 (n + 1) - A010892 (A256776 (n + 1)).toNat

end

end A030353.P14124319267135323046

/-! ## A030353.P13762338599020756889

`and(A003842(3*n+2), A376604(A000712(n)))`
-/

namespace A030353.P13762338599020756889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003842 (3 * n + 2)) (A376604 (A000712 n).toNat)

end

end A030353.P13762338599020756889

/-! ## A030353.P13748036927232600382

`A279291(A343510(n+1)²)`
-/

namespace A030353.P13748036927232600382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279291 (A343510 (n + 1) ^ 2).toNat

end

end A030353.P13748036927232600382

/-! ## A030353.P12085714460061292975

`A225771(A013609(A013609(n)))%3`
-/

namespace A030353.P12085714460061292975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225771 (A013609 (A013609 n).toNat).toNat) 3

end

end A030353.P12085714460061292975

/-!
# A030354: Position of n-th 0 in A030353.

The programs for A030354, there is no canonical definition to state claims against.
-/

/-! ## A030354.P18408928403461361038

`eq[0, A030353(n+1)]+1`
-/

namespace A030354.P18408928403461361038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030354.P18408928403461361038

/-! ## A030354.P4138091914764859831

`lt[A030353(A028310(n)), 1]`
-/

namespace A030354.P4138091914764859831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030354.P4138091914764859831

/-! ## A030354.P18151639256480035090

`eq[0, A030353(A000007(n)+n)]`
-/

namespace A030354.P18151639256480035090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030354.P18151639256480035090

/-! ## A030354.P12162941984485901620

`eq[0, A030353(A000038(n)+n)]`
-/

namespace A030354.P12162941984485901620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030354.P12162941984485901620

/-! ## A030354.P4379200646253017490

`eq[1-A030353(A028310(n)), A054977(n)]`
-/

namespace A030354.P4379200646253017490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030353 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030354.P4379200646253017490

/-! ## A030354.P4168413664155193887

`eq[0, A030353(A065033(2*n))]`
-/

namespace A030354.P4168413664155193887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030354.P4168413664155193887

/-!
# A030355: Position of n-th 1 in A030353.

The programs for A030355, there is no canonical definition to state claims against.
-/

/-! ## A030355.P5455834074185727902

`eq[1, A030353(n+1)]+1`
-/

namespace A030355.P5455834074185727902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030355.P5455834074185727902

/-! ## A030355.P14314923389223172567

`eq[A030353(A028310(n)), A054977(n)]`
-/

namespace A030355.P14314923389223172567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030355.P14314923389223172567

/-! ## A030355.P10984986993717412374

`eq[A030353(A028310(n)), A057427(n)]`
-/

namespace A030355.P10984986993717412374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030355.P10984986993717412374

/-! ## A030355.P13664787583016416151

`eq[A057428(n)², A030353(A028310(n))]`
-/

namespace A030355.P13664787583016416151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030355.P13664787583016416151

/-! ## A030355.P11490630684358549504

`eq[A030353(A065033(2*n)), A057427(n)]`
-/

namespace A030355.P11490630684358549504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030355.P11490630684358549504

/-!
# A030356: Position of n-th 2 in A030353.

The programs for A030356, there is no canonical definition to state claims against.
-/

/-! ## A030356.P3915909016105290324

`lt[1, A030353(n+1)]+1`
-/

namespace A030356.P3915909016105290324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030356.P3915909016105290324

/-! ## A030356.P3914835702267937241

`lt[1, A030353(A028310(n))]`
-/

namespace A030356.P3914835702267937241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A030356.P3914835702267937241

/-! ## A030356.P17800681656374170343

`eq[2, A030353(A000038(n)+n)]`
-/

namespace A030356.P17800681656374170343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030356.P17800681656374170343

/-! ## A030356.P7678120239147472482

`eq[2, A030353(A000007(n)+n)]`
-/

namespace A030356.P7678120239147472482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030356.P7678120239147472482

/-! ## A030356.P11374209420158543279

`eq[2, A030353(A065033(2*n))]`
-/

namespace A030356.P11374209420158543279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030356.P11374209420158543279

/-! ## A030356.P11221547911244042014

`eq[2, A030353(A233583(n+1))]`
-/

namespace A030356.P11221547911244042014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030353 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030356.P11221547911244042014

/-!
# A030358: Length of n-th run of digit 0 in A030353.

The programs for A030358, there is no canonical definition to state claims against.
-/

/-! ## A030358.P2328521561518139290

`A030346(Δ[A233583(A027692(n))])`
-/

namespace A030358.P2328521561518139290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A027692 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030346 (f1 (n + 1) - f1 n).toNat

end

end A030358.P2328521561518139290

/-! ## A030358.P12762433110988730437

`A030346(2*(n+1))^A161946(A161948(∏{e}[n+1, 2^#-1]))`
-/

namespace A030358.P12762433110988730437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030346 (2 * (n + 1)) : ℚ) ^ (A161946 (A161948 (∏ p ∈ Nat.primeFactors (f1 n), ((2 ^ Nat.factorization (f1 n) p : ℤ) - 1)).toNat).toNat : ℤ)

end

end A030358.P12762433110988730437

/-! ## A030358.P12143956839326023098

`A030346(2*(n+1))^A161946(A161949(∏{e}[n+1, 2^#-1]))`
-/

namespace A030358.P12143956839326023098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030346 (2 * (n + 1)) : ℚ) ^ (A161946 (A161949 (∏ p ∈ Nat.primeFactors (f1 n), ((2 ^ Nat.factorization (f1 n) p : ℤ) - 1)).toNat).toNat : ℤ)

end

end A030358.P12143956839326023098

/-! ## A030358.P15851250387760047141

`A030346(2*(n+1))^A161946(A161950(∏{e}[n+1, 2^#-1]))`
-/

namespace A030358.P15851250387760047141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030346 (2 * (n + 1)) : ℚ) ^ (A161946 (A161950 (∏ p ∈ Nat.primeFactors (f1 n), ((2 ^ Nat.factorization (f1 n) p : ℤ) - 1)).toNat).toNat : ℤ)

end

end A030358.P15851250387760047141

/-!
# A030359: Length of n-th run of digit 1 in A030353.

The programs for A030359, there is no canonical definition to state claims against.
-/

/-! ## A030359.P16349995011056057170

`A227481(xor(20, A000070(n)))`
-/

namespace A030359.P16349995011056057170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (Int.xor 20 (A000070 n)).toNat

end

end A030359.P16349995011056057170

/-! ## A030359.P17009121319974269645

`gcd(A331813(n+1), A332273(A331786(2*n+3)))`
-/

namespace A030359.P17009121319974269645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A331813 (n + 1)) (A332273 (A331786 (2 * n + 3)).toNat)

end

end A030359.P17009121319974269645

/-!
# A030360: Length of n-th run of digit 2 in A030353.

The programs for A030360, there is no canonical definition to state claims against.
-/

/-! ## A030360.P3949292661777721459

`gcd(A047221(A133670(n)), A167499(n))`
-/

namespace A030360.P3949292661777721459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047221 (A133670 n).toNat) (A167499 n)

end

end A030360.P3949292661777721459

/-!
# A030361: a(n)=(# 1's)-(# 0's) in first n terms of A030353.

The programs for A030361, there is no canonical definition to state claims against.
-/

/-! ## A030361.P11593264240282169124

`A001222(lcm(2^∑{e}[n+1, #-1], A017981(3*n+2)))`
-/

namespace A030361.P11593264240282169124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))) (A017981 (3 * n + 2)))

end

end A030361.P11593264240282169124

/-! ## A030361.P16474355362458535683

`A079553(C(2*(n+2), A319420(n)))`
-/

namespace A030361.P16474355362458535683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079553 (Nat.choose (2 * (n + 2)) (A319420 n).toNat)

end

end A030361.P16474355362458535683

/-! ## A030361.P5139024500378363601

`A001221(A287128(n)+A045326(n+4))`
-/

namespace A030361.P5139024500378363601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A287128 n + A045326 (n + 4)).toNat

end

end A030361.P5139024500378363601

/-! ## A030361.P17196373298730441090

`A030583(n+1)+A030547(A225377(n+1))`
-/

namespace A030361.P17196373298730441090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030583 (n + 1) + A030547 (A225377 (n + 1)).toNat

end

end A030361.P17196373298730441090

/-! ## A030361.P10375900708386083162

`A064547(A290440(n)+A045779(3*n+1))`
-/

namespace A030361.P10375900708386083162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A290440 n + A045779 (3 * n + 1)).toNat

end

end A030361.P10375900708386083162

/-!
# A030362: a(n) = (# 1's) - (# 2's) in first n terms of A030353.

The programs for A030362, there is no canonical definition to state claims against.
-/

/-! ## A030362.P18415572509987511139

`∑[round(sin(A030353(n+1)²))]`
-/

namespace A030362.P18415572509987511139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A030353 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030362.P18415572509987511139

/-! ## A030362.P9084370666202719781

`A030361(n+1)+∑[1-A030353(n+1)]`
-/

namespace A030362.P9084370666202719781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030361 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030362.P9084370666202719781

/-! ## A030362.P9266576602995700160

`A014230(A004094(n))+A000194(n)`
-/

namespace A030362.P9266576602995700160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014230 (A004094 n).toNat + A000194 n

end

end A030362.P9266576602995700160

/-! ## A030362.P14395709992157281746

`A228351(A000079(n))+A059906(n)`
-/

namespace A030362.P14395709992157281746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A000079 n).toNat + A059906 n

end

end A030362.P14395709992157281746

/-! ## A030362.P6361828403145078633

`A057945(A240500(n)+A214831(n))`
-/

namespace A030362.P6361828403145078633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (A240500 n + A214831 n).toNat

end

end A030362.P6361828403145078633

/-!
# A030363: Write (n+1)st Fibonacci number in base 3 and juxtapose.

The programs for A030363, there is no canonical definition to state claims against.
-/

/-! ## A030363.P10387822485048570573

`A116611(n+1)%A078570(A003558(3*(n+1)))`
-/

namespace A030363.P10387822485048570573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116611 (n + 1)) (A078570 (A003558 (3 * (n + 1))).toNat)

end

end A030363.P10387822485048570573

/-!
# A030364: Position of n-th 0 in A030363.

The programs for A030364, there is no canonical definition to state claims against.
-/

/-! ## A030364.P7520220135094840510

`eq[0, A030363(n+2)]+2`
-/

namespace A030364.P7520220135094840510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A030364.P7520220135094840510

/-! ## A030364.P3541329752555969626

`lt[A030363(n+1), 1]+1`
-/

namespace A030364.P3541329752555969626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030364.P3541329752555969626

/-! ## A030364.P10545900555283838121

`eq[0, A030363(A000038(n)+n)]`
-/

namespace A030364.P10545900555283838121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030364.P10545900555283838121

/-! ## A030364.P3399468948365836760

`eq[0, A030363(gcd(n, A022144(n)))]`
-/

namespace A030364.P3399468948365836760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (Int.gcd (n : ℤ) (A022144 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030364.P3399468948365836760

/-! ## A030364.P6690630200664086726

`eq[0, A030363(xor(n, A000038(n)))]`
-/

namespace A030364.P6690630200664086726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030364.P6690630200664086726

/-! ## A030364.P7712278413314611716

`eq[0, A030363(A065033(2*n))]`
-/

namespace A030364.P7712278413314611716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030364.P7712278413314611716

/-! ## A030364.P4105133664130546251

`eq[0, A030363(A233583(n+1))]`
-/

namespace A030364.P4105133664130546251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030364.P4105133664130546251

/-!
# A030365: Position of n-th 1 in A030363.

The programs for A030365, there is no canonical definition to state claims against.
-/

/-! ## A030365.P3526525085186117879

`eq[1, A030363(n+1)]+1`
-/

namespace A030365.P3526525085186117879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030365.P3526525085186117879

/-! ## A030365.P11189760804934993810

`eq[1, A030363(A000038(n)+n)]`
-/

namespace A030365.P11189760804934993810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030365.P11189760804934993810

/-! ## A030365.P2426691997526133290

`eq[1, A030363(xor(n, A000038(n)))]`
-/

namespace A030365.P2426691997526133290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030365.P2426691997526133290

/-! ## A030365.P12504427096039284963

`eq[A030363(A065033(2*n)), A057427(n)]`
-/

namespace A030365.P12504427096039284963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030365.P12504427096039284963

/-! ## A030365.P12749331897616248200

`record[A003602(A030363(n+1)+A005843(n))]`
-/

namespace A030365.P12749331897616248200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A030363 (n + 1) + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030365.P12749331897616248200

/-!
# A030366: Position of n-th 2 in A030363.

The programs for A030366, there is no canonical definition to state claims against.
-/

/-! ## A030366.P18012399425221443616

`lt[1, A030363(n+1)]+1`
-/

namespace A030366.P18012399425221443616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030366.P18012399425221443616

/-! ## A030366.P13507593452548084019

`eq[2, A030363(n+2)]+2`
-/

namespace A030366.P13507593452548084019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A030366.P13507593452548084019

/-! ## A030366.P13028552720551984752

`eq[2, A030363(A000007(n)+n)]`
-/

namespace A030366.P13028552720551984752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030366.P13028552720551984752

/-! ## A030366.P817013775126388658

`eq[2, A030363(gcd(n, A022144(n)))]`
-/

namespace A030366.P817013775126388658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (Int.gcd (n : ℤ) (A022144 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030366.P817013775126388658

/-! ## A030366.P14046396020001254170

`eq[2, A030363(A065033(2*n))]`
-/

namespace A030366.P14046396020001254170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030366.P14046396020001254170

/-!
# A030370: Length of n-th run of digit 2 in A030363.

The programs for A030370, there is no canonical definition to state claims against.
-/

/-! ## A030370.P6252866623439979608

`A333381(A138862(n+1)+A094544(n))`
-/

namespace A030370.P6252866623439979608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A138862 (n + 1) + A094544 n).toNat

end

end A030370.P6252866623439979608

/-! ## A030370.P15889600925893256300

`A066099(A047981(n+1)*A286001(n+1))`
-/

namespace A030370.P15889600925893256300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A047981 (n + 1) * A286001 (n + 1)).toNat

end

end A030370.P15889600925893256300

/-! ## A030370.P4687281915885977455

`A046951(A260274(n+1)%A023545(n+1))`
-/

namespace A030370.P4687281915885977455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (Int.tmod (A260274 (n + 1)) (A023545 (n + 1))).toNat

end

end A030370.P4687281915885977455

/-!
# A030371: a(n)=(# 1's)-(# 0's) in first n terms of A030363.

The programs for A030371, there is no canonical definition to state claims against.
-/

/-! ## A030371.P1544564227943823387

`A030372(n+1)+∑[A030363(n+1)-1]`
-/

namespace A030371.P1544564227943823387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030372 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030371.P1544564227943823387

/-! ## A030371.P13651000721629224563

`∑[A102283(A020639(2*(n+1))-A030363(n+1))]`
-/

namespace A030371.P13651000721629224563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A020639 (2 * (n + 1)) - A030363 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030371.P13651000721629224563

/-! ## A030371.P6765746629906950200

`∑[A102283(A027760(2*n+1)-A030363(n+1))]`
-/

namespace A030371.P6765746629906950200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A027760 (2 * n + 1) - A030363 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030371.P6765746629906950200

/-! ## A030371.P3289581890671968974

`∑[A102283(A016789(n)-A030363(n+1))]`
-/

namespace A030371.P3289581890671968974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A016789 n - A030363 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030371.P3289581890671968974

/-! ## A030371.P15213954053301905613

`∑[A102283(A103505(3*n+2)-A030363(n+1))]`
-/

namespace A030371.P15213954053301905613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A103505 (3 * n + 2) - A030363 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030371.P15213954053301905613

/-!
# A030372: (# 1's)-(# 2's) in first n terms of A030363.

The programs for A030372, there is no canonical definition to state claims against.
-/

/-! ## A030372.P14490962299284957933

`∑[round(sin(A030363(n+1)²))]`
-/

namespace A030372.P14490962299284957933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A030363 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030372.P14490962299284957933

/-! ## A030372.P17099007842149611318

`A030371(n+1)+∑[1-A030363(n+1)]`
-/

namespace A030372.P17099007842149611318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030371 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030372.P17099007842149611318

/-! ## A030372.P14774982462526786068

`∑[(A030363(n+1)+A000326(3*n+1))%3-1]`
-/

namespace A030372.P14774982462526786068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030363 (n + 1) + A000326 (3 * n + 1)) 3 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030372.P14774982462526786068

/-! ## A030372.P13537109009113263717

`∑[A062157(A030363(n+1)^A030371(n+1))]`
-/

namespace A030372.P13537109009113263717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (SequenceMachineLib.roundAway ((A030363 (n + 1) : ℚ) ^ (A030371 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030372.P13537109009113263717

/-! ## A030372.P4975874133190485264

`∑[A062157(A030363(n+1)^A023022(n+2))]`
-/

namespace A030372.P4975874133190485264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (SequenceMachineLib.roundAway ((A030363 (n + 1) : ℚ) ^ (A023022 (n + 2) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030372.P4975874133190485264

/-!
# A030373: Write n in base 4 and juxtapose.

The programs for A030373, there is no canonical definition to state claims against.
-/

/-! ## A030373.P12718767742160548279

`3-A030399(n+1)`
-/

namespace A030373.P12718767742160548279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A030399 (n + 1)

end

end A030373.P12718767742160548279

/-! ## A030373.P6607463174549863388

`xor(3, A030399(A000027(n+1)))`
-/

namespace A030373.P6607463174549863388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A030399 (A000027 (n + 1)).toNat)

end

end A030373.P6607463174549863388

/-! ## A030373.P9094235091953849632

`xor(A001222(A007304(n+1)), A030399(n+1))`
-/

namespace A030373.P9094235091953849632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A007304 (n + 1)).toNat) (A030399 (n + 1))

end

end A030373.P9094235091953849632

/-! ## A030373.P12547418530647441172

`xor(A030399(n+1), A030401(A030405(n+1)))`
-/

namespace A030373.P12547418530647441172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030399 (n + 1)) (A030401 (A030405 (n + 1)).toNat)

end

end A030373.P12547418530647441172

/-! ## A030373.P8735643889359338752

`xor(A030399(n+1), A030413(A030417(n+1)))`
-/

namespace A030373.P8735643889359338752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030399 (n + 1)) (A030413 (A030417 (n + 1)).toNat)

end

end A030373.P8735643889359338752

/-! ## A030373.P369142319615192219

`xor(A030386(A030390(n+1)), A030399(n+1))`
-/

namespace A030373.P369142319615192219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030386 (A030390 (n + 1)).toNat) (A030399 (n + 1))

end

end A030373.P369142319615192219

/-! ## A030373.P8573934599564730898

`xor(A030399(A030374(n+1)), A030399(n+1))`
-/

namespace A030373.P8573934599564730898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030399 (A030374 (n + 1)).toNat) (A030399 (n + 1))

end

end A030373.P8573934599564730898

/-! ## A030373.P16098187120413052451

`A010873(xor(40*n+3, A030399(n+1)))`
-/

namespace A030373.P16098187120413052451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (Int.xor (40 * n + 3 : ℤ) (A030399 (n + 1))).toNat

end

end A030373.P16098187120413052451

/-! ## A030373.P7602835391285177792

`xor(A001221(A176877(n+1)), A030399(n+1))`
-/

namespace A030373.P7602835391285177792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A176877 (n + 1)).toNat) (A030399 (n + 1))

end

end A030373.P7602835391285177792

/-! ## A030373.P7577132909085514485

`xor(A001221(A176879(n+1)), A030399(n+1))`
-/

namespace A030373.P7577132909085514485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A176879 (n + 1)).toNat) (A030399 (n + 1))

end

end A030373.P7577132909085514485

/-! ## A030373.P11520462958895529105

`xor(A030399(n+1), A032741(A176875(n+1)))`
-/

namespace A030373.P11520462958895529105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030399 (n + 1)) (A032741 (A176875 (n + 1)).toNat)

end

end A030373.P11520462958895529105

/-! ## A030373.P6647219389859140255

`A055145(n+1)%4`
-/

namespace A030373.P6647219389859140255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055145 (n + 1)) 4

end

end A030373.P6647219389859140255

/-! ## A030373.P9297578133054121608

`and(A055145(n+1), A122553(n))`
-/

namespace A030373.P9297578133054121608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055145 (n + 1)) (A122553 n)

end

end A030373.P9297578133054121608

/-! ## A030373.P907199261598526015

`and(A055145(n+1), A158799(n))`
-/

namespace A030373.P907199261598526015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055145 (n + 1)) (A158799 n)

end

end A030373.P907199261598526015

/-! ## A030373.P2181900909436329794

`and(A055145(n+1), A188161(n))`
-/

namespace A030373.P2181900909436329794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055145 (n + 1)) (A188161 n)

end

end A030373.P2181900909436329794

/-! ## A030373.P5616384036193583105

`and(A053444(A053444(n+1)), A055145(n+1))`
-/

namespace A030373.P5616384036193583105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053444 (A053444 (n + 1)).toNat) (A055145 (n + 1))

end

end A030373.P5616384036193583105

/-!
# A030374: Position of n-th 0 in A030373.

The programs for A030374, there is no canonical definition to state claims against.
-/

/-! ## A030374.P2175491729984637914

`eq[0, A030373(n+1)]+1`
-/

namespace A030374.P2175491729984637914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030374.P2175491729984637914

/-! ## A030374.P2935506963051620519

`lt[2, A030399(n+1)]+1`
-/

namespace A030374.P2935506963051620519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030374.P2935506963051620519

/-! ## A030374.P1475870176970800116

`eq[3, 1-a(A030399(n))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=-2, a(4)=0`
-/

namespace A030374.P1475870176970800116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, -2, 0] fun n f2 =>
  1 - f2 (A030399 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030374.P1475870176970800116

/-! ## A030374.P15433315251840358741

`eq[0, A030373(A000007(n)+n)]`
-/

namespace A030374.P15433315251840358741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030374.P15433315251840358741

/-! ## A030374.P18003398545106269477

`eq[3, A030399(A000007(n)+n)]`
-/

namespace A030374.P18003398545106269477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030374.P18003398545106269477

/-! ## A030374.P17698326434885758371

`eq[0, A030373(gcd(n, A008458(n)))]`
-/

namespace A030374.P17698326434885758371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030374.P17698326434885758371

/-! ## A030374.P1972787525781158932

`eq[0, A030373(xor(n, A000007(n)))]`
-/

namespace A030374.P1972787525781158932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030374.P1972787525781158932

/-! ## A030374.P7338827281894085545

`eq[3, A030399(or(n, A000007(n)))]`
-/

namespace A030374.P7338827281894085545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030374.P7338827281894085545

/-! ## A030374.P17892392282294196907

`eq[1, A028242(a(A030399(n)))]` with `a(0)=4, a(1)=2`
-/

namespace A030374.P17892392282294196907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f2 =>
  A028242 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030374.P17892392282294196907

/-! ## A030374.P17907566258478719021

`eq[1, A008611(a(A030399(n)))]` with `a(0)=3, a(1)=6`
-/

namespace A030374.P17907566258478719021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n f2 =>
  A008611 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030374.P17907566258478719021

/-! ## A030374.P10513472865037280436

`eq[0, A030373(A065033(2*n))]`
-/

namespace A030374.P10513472865037280436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030374.P10513472865037280436

/-! ## A030374.P4152660230529717497

`eq[0, A030373(A233583(n+1))]`
-/

namespace A030374.P4152660230529717497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030374.P4152660230529717497

/-!
# A030375: Position of n-th 1 in A030373.

The programs for A030375, there is no canonical definition to state claims against.
-/

/-! ## A030375.P16984686034881302830

`eq[1, A030373(n+1)]+1`
-/

namespace A030375.P16984686034881302830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030375.P16984686034881302830

/-! ## A030375.P17461333281855801223

`eq[2, A030399(n+1)]+1`
-/

namespace A030375.P17461333281855801223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030375.P17461333281855801223

/-! ## A030375.P10829151901737516982

`eq[1, -a(A030399(n))]` with `a(0)=0, a(1)=1`
-/

namespace A030375.P10829151901737516982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  -f2 (A030399 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030375.P10829151901737516982

/-! ## A030375.P12421583800050631701

`eq[1, A028242(a(A030399(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A030375.P12421583800050631701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A028242 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030375.P12421583800050631701

/-! ## A030375.P3327909033653470223

`eq[1, A008611(a(A030399(n)))]` with `a(0)=6, a(1)=1`
-/

namespace A030375.P3327909033653470223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 1] fun n f2 =>
  A008611 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030375.P3327909033653470223

/-! ## A030375.P15118100707396247068

`eq[1, A014681(a(A030399(n)))]` with `a(0)=6, a(1)=1`
-/

namespace A030375.P15118100707396247068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 1] fun n f2 =>
  A014681 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030375.P15118100707396247068

/-! ## A030375.P1960450083206731896

`eq[1, A007599(a(A030399(n)))]` with `a(0)=16, a(1)=1`
-/

namespace A030375.P1960450083206731896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [16, 1] fun n f2 =>
  A007599 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030375.P1960450083206731896

/-!
# A030376: Position of n-th 2 in A030373.

The programs for A030376, there is no canonical definition to state claims against.
-/

/-! ## A030376.P9137323611660352860

`eq[1, A030399(n+1)]+1`
-/

namespace A030376.P9137323611660352860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030376.P9137323611660352860

/-! ## A030376.P9266410007859827220

`eq[2, A030373(n+1)]+1`
-/

namespace A030376.P9266410007859827220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030376.P9266410007859827220

/-! ## A030376.P17140388947750698934

`eq[1, 1-a(A030399(n))]` with `a(0)=2, a(1)=0`
-/

namespace A030376.P17140388947750698934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  1 - f2 (A030399 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P17140388947750698934

/-! ## A030376.P11366979041327960530

`eq[1, A030399(A000007(n)+n)]`
-/

namespace A030376.P11366979041327960530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P11366979041327960530

/-! ## A030376.P2275198160769762506

`eq[2, A030373(A000007(n)+n)]`
-/

namespace A030376.P2275198160769762506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P2275198160769762506

/-! ## A030376.P18309143027207290609

`eq[2, A030373(gcd(n, A008458(n)))]`
-/

namespace A030376.P18309143027207290609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P18309143027207290609

/-! ## A030376.P9799469885614035597

`eq[1, A030399(or(n, A000007(n)))]`
-/

namespace A030376.P9799469885614035597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P9799469885614035597

/-! ## A030376.P10278975315859174809

`eq[2, A030373(xor(n, A000007(n)))]`
-/

namespace A030376.P10278975315859174809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P10278975315859174809

/-! ## A030376.P16651383063083538310

`eq[1, A008611(a(A030399(n)))]` with `a(0)=6, a(1)=0`
-/

namespace A030376.P16651383063083538310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 0] fun n f2 =>
  A008611 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P16651383063083538310

/-! ## A030376.P7989481814423912101

`eq[1, A000732(a(A030399(n)))]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A030376.P7989481814423912101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1] fun n f2 =>
  A000732 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P7989481814423912101

/-! ## A030376.P14768234852019429263

`eq[1, A001678(a(A030399(n)))]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A030376.P14768234852019429263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f2 =>
  A001678 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P14768234852019429263

/-! ## A030376.P6411496885060110499

`eq[1, A005408(a(A030399(n)))]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A030376.P6411496885060110499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1] fun n f2 =>
  A005408 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P6411496885060110499

/-! ## A030376.P17072205238348353845

`eq[1, A028242(a(A030399(n)))]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A030376.P17072205238348353845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1] fun n f2 =>
  A028242 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P17072205238348353845

/-! ## A030376.P14732366819493551877

`eq[1, A018826(a(A030399(n)))]` with `a(0)=4, a(1)=2, a(2)=1`
-/

namespace A030376.P14732366819493551877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 2, 1] fun n f2 =>
  A018826 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P14732366819493551877

/-! ## A030376.P14372116340834879665

`eq[1, A002264(a(A030399(n))²)]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A030376.P14372116340834879665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f2 =>
  A002264 (f2 (A030399 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P14372116340834879665

/-! ## A030376.P9519422084764195162

`eq[2, A030373(A065033(2*n))]`
-/

namespace A030376.P9519422084764195162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030376.P9519422084764195162

/-!
# A030377: Position of n-th 3 in A030373.

The programs for A030377, there is no canonical definition to state claims against.
-/

/-! ## A030377.P6016286650995764428

`lt[A030399(n+1), 1]+1`
-/

namespace A030377.P6016286650995764428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A030377.P6016286650995764428

/-! ## A030377.P15275741924041541983

`lt[2, A030373(n+1)]+1`
-/

namespace A030377.P15275741924041541983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030377.P15275741924041541983

/-! ## A030377.P10706295385799016732

`eq[1, 1-a(A030399(n))]` with `a(0)=0, a(1)=2`
-/

namespace A030377.P10706295385799016732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  1 - f2 (A030399 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030377.P10706295385799016732

/-! ## A030377.P6762648510293143265

`eq[0, A030399(A000007(n)+n)]`
-/

namespace A030377.P6762648510293143265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030377.P6762648510293143265

/-! ## A030377.P8569635679090704873

`eq[3, A030373(A000007(n)+n)]`
-/

namespace A030377.P8569635679090704873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030377.P8569635679090704873

/-! ## A030377.P2889397602494373314

`eq[3, A030373(gcd(n, A008458(n)))]`
-/

namespace A030377.P2889397602494373314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030377.P2889397602494373314

/-! ## A030377.P1715982327536881827

`eq[0, A030399(or(n, A000007(n)))]`
-/

namespace A030377.P1715982327536881827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030377.P1715982327536881827

/-! ## A030377.P7021734053690219735

`eq[1, A008611(a(A030399(n)))]` with `a(0)=0, a(1)=6`
-/

namespace A030377.P7021734053690219735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n f2 =>
  A008611 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030377.P7021734053690219735

/-! ## A030377.P10446887780829459782

`eq[1, A028242(a(A030399(n)))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=1`
-/

namespace A030377.P10446887780829459782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 1] fun n f2 =>
  A028242 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030377.P10446887780829459782

/-! ## A030377.P3485688245352701689

`eq[1, A002264(a(A030399(n)))]` with `a(0)=3, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A030377.P3485688245352701689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 2, 1] fun n f2 =>
  A002264 (f2 (A030399 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030377.P3485688245352701689

/-! ## A030377.P18252091318402388214

`eq[1, A030373(A233583(n+1))-2]`
-/

namespace A030377.P18252091318402388214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (A233583 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030377.P18252091318402388214

/-!
# A030379: Length of n-th run of digit 0 in A030373.

The programs for A030379, there is no canonical definition to state claims against.
-/

/-! ## A030379.P6970966926833692760

`A087049(A325870(∏{p}[n+1, #]))+A030392(n+2)`
-/

namespace A030379.P6970966926833692760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A325870 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat + A030392 (n + 2)

end

end A030379.P6970966926833692760

/-! ## A030379.P129372313659848924

`A087049(A325870(n+1))+A030392(n+2)`
-/

namespace A030379.P129372313659848924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A325870 (n + 1)).toNat + A030392 (n + 2)

end

end A030379.P129372313659848924

/-! ## A030379.P17157652342392452056

`A001222(A020639(n+2)^A030392(n+2))`
-/

namespace A030379.P17157652342392452056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A020639 (n + 2) : ℚ) ^ (A030392 (n + 2) : ℤ))).toNat

end

end A030379.P17157652342392452056

/-! ## A030379.P11180763690559138343

`A051903(A020639(n+2)^A030392(n+2))`
-/

namespace A030379.P11180763690559138343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A020639 (n + 2) : ℚ) ^ (A030392 (n + 2) : ℤ))).toNat

end

end A030379.P11180763690559138343

/-! ## A030379.P9321767581510112547

`gcd(A030392(n+2), A347229(A174813(n+1)))`
-/

namespace A030379.P9321767581510112547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030392 (n + 2)) (A347229 (A174813 (n + 1)).toNat)

end

end A030379.P9321767581510112547

/-! ## A030379.P14172084930775061908

`∑{e}[A020639(A286690(n+1))^A030392(n+2), #]`
-/

namespace A030379.P14172084930775061908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A286690 (n + 1)).toNat : ℚ) ^ (A030392 (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A030379.P14172084930775061908

/-! ## A030379.P14865028672748881386

`∏{e}[A020639(A005187(n+1))^A030392(n+2), #]`
-/

namespace A030379.P14865028672748881386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A005187 (n + 1)).toNat : ℚ) ^ (A030392 (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A030379.P14865028672748881386

/-! ## A030379.P14321998237806080936

`∑{e}[A020639(A047290(n+2))^A030392(n+2), #]`
-/

namespace A030379.P14321998237806080936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A047290 (n + 2)).toNat : ℚ) ^ (A030392 (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A030379.P14321998237806080936

/-! ## A030379.P3554050637820284617

`∏{e}[A020639(A330336(3*n+2))^A030392(n+2), #]`
-/

namespace A030379.P3554050637820284617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A330336 (3 * n + 2)).toNat : ℚ) ^ (A030392 (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A030379.P3554050637820284617

/-! ## A030379.P13581607096126175112

`∏{e}[A020639(Δ[n²])^A030392(n+2), #]`
-/

namespace A030379.P13581607096126175112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) ^ (A030392 (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A030379.P13581607096126175112

/-! ## A030379.P1537116604563817155

`A030392(n+2)^A188644(A028702(n))`
-/

namespace A030379.P1537116604563817155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030392 (n + 2) : ℚ) ^ (A188644 (A028702 n).toNat : ℤ)

end

end A030379.P1537116604563817155

/-! ## A030379.P7950109951899041749

`A030392(n+2)+A000007(A007318(n))`
-/

namespace A030379.P7950109951899041749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030392 (n + 2) + A000007 (A007318 n).toNat

end

end A030379.P7950109951899041749

/-! ## A030379.P2154816626889854801

`A030392(n+2)%A023405(A132749(n))`
-/

namespace A030379.P2154816626889854801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030392 (n + 2)) (A023405 (A132749 n).toNat)

end

end A030379.P2154816626889854801

/-! ## A030379.P16781192746417462977

`A030392(n+2)^A002262(C(n, 2)+1)`
-/

namespace A030379.P16781192746417462977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030392 (n + 2) : ℚ) ^ (A002262 (Nat.choose n 2 + 1) : ℤ)

end

end A030379.P16781192746417462977

/-! ## A030379.P8051305085254236036

`A030392(n+2)*A040001(A263320(n+1))`
-/

namespace A030379.P8051305085254236036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030392 (n + 2) * A040001 (A263320 (n + 1)).toNat

end

end A030379.P8051305085254236036

/-! ## A030379.P17025649423053889376

`A030392(A003056(∑[n]+1)+2)`
-/

namespace A030379.P17025649423053889376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030392 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2).toNat

end

end A030379.P17025649423053889376

/-! ## A030379.P5921707622774985866

`A030392(n+2)+A000007(A000124(n))`
-/

namespace A030379.P5921707622774985866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030392 (n + 2) + A000007 (A000124 n).toNat

end

end A030379.P5921707622774985866

/-! ## A030379.P10739409308405339905

`A030392(n+2)/A040001(A263320(n+2))`
-/

namespace A030379.P10739409308405339905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030392 (n + 2) : ℚ) / (A040001 (A263320 (n + 2)).toNat : ℚ)

end

end A030379.P10739409308405339905

/-!
# A030380: Length of n-th run of digit 1 in A030373.

The programs for A030380, there is no canonical definition to state claims against.
-/

/-! ## A030380.P6242747971098322574

`A290103(A290103(A290103(4*n+3)+A069464(4*n+1)))`
-/

namespace A030380.P6242747971098322574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A290103 (A290103 (4 * n + 3) + A069464 (4 * n + 1)).toNat).toNat

end

end A030380.P6242747971098322574

/-!
# A030382: Length of n-th run of digit 3 in A030373.

The programs for A030382, there is no canonical definition to state claims against.
-/

/-! ## A030382.P3191103699929248307

`A163107(A060901(A286291(n+1))²²)`
-/

namespace A030382.P3191103699929248307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163107 ((A060901 (A286291 (n + 1)).toNat ^ 2) ^ 2).toNat

end

end A030382.P3191103699929248307

/-!
# A030383: (# 1's)-(# 0's) in first n terms of A030373.

The programs for A030383, there is no canonical definition to state claims against.
-/

/-! ## A030383.P15884872704545308459

`∑[floor(acot(A030373(n+1)-1))]`
-/

namespace A030383.P15884872704545308459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A030373 (n + 1) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030383.P15884872704545308459

/-! ## A030383.P4536836095797355278

`∑[floor(acot(2-A030399(n+1)))]`
-/

namespace A030383.P4536836095797355278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (2 - A030399 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030383.P4536836095797355278

/-!
# A030384: a(n)=(# 1's)-(# 2's) in first n terms of s=A030373.

The programs for A030384, there is no canonical definition to state claims against.
-/

/-! ## A030384.P8493160825500574685

`∑[round(sin(A030373(n+1)²))]`
-/

namespace A030384.P8493160825500574685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A030373 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030384.P8493160825500574685

/-! ## A030384.P4993792881511317946

`∑[A163804(A052380(n+1)+A030399(n+1))]`
-/

namespace A030384.P4993792881511317946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A052380 (n + 1) + A030399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030384.P4993792881511317946

/-! ## A030384.P10239798298704904350

`∑[A163804(A052380(n+1)-A030373(n+1))]`
-/

namespace A030384.P10239798298704904350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A052380 (n + 1) - A030373 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030384.P10239798298704904350

/-! ## A030384.P9436757885943845696

`∑[A163804(A008458(n)-A030373(n+1))]`
-/

namespace A030384.P9436757885943845696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A008458 n - A030373 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030384.P9436757885943845696

/-! ## A030384.P10624019638673836928

`∑[A163804(A194416(n+1)+A030399(n+1))]`
-/

namespace A030384.P10624019638673836928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A194416 (n + 1) + A030399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030384.P10624019638673836928

/-! ## A030384.P3531447687456553241

`∑[A163804(A055131(n)+A030399(n+1))]`
-/

namespace A030384.P3531447687456553241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A055131 n + A030399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030384.P3531447687456553241

/-! ## A030384.P322228689016695759

`∑[A163804(A055131(n)-A030373(n+1))]`
-/

namespace A030384.P322228689016695759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A055131 n - A030373 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030384.P322228689016695759

/-!
# A030385: (# 2's)-(# 3's) in first n terms of s=A030373.

The programs for A030385, there is no canonical definition to state claims against.
-/

/-! ## A030385.P5050773457287161443

`∑[floor(acot(A030399(n+1)-1))]`
-/

namespace A030385.P5050773457287161443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A030399 (n + 1) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030385.P5050773457287161443

/-! ## A030385.P13264720447114750230

`∑[floor(acot(2-A030373(n+1)))]`
-/

namespace A030385.P13264720447114750230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (2 - A030373 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030385.P13264720447114750230

/-! ## A030385.P4862412869861947737

`Δ[A103221(A003056(A000029(n)))]`
-/

namespace A030385.P4862412869861947737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A003056 (A000029 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030385.P4862412869861947737

/-!
# A030386: Triangle T(n,k): write n in base 4, reverse order of digits.

The programs for A030386, there is no canonical definition to state claims against.
-/

/-! ## A030386.P14918546513792851211

`A030373(A042963(3*(n+1))%A358930(n+3))`
-/

namespace A030386.P14918546513792851211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (Int.tmod (A042963 (3 * (n + 1))) (A358930 (n + 3))).toNat

end

end A030386.P14918546513792851211

/-! ## A030386.P11643881676032183751

`A213725(∑[∑[A277934(n)]])`
-/

namespace A030386.P11643881676032183751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030386.P11643881676032183751

/-! ## A030386.P15264451257069322995

`A015919(A103481(n))%A253146(n+1)`
-/

namespace A030386.P15264451257069322995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015919 (A103481 n).toNat) (A253146 (n + 1))

end

end A030386.P15264451257069322995

/-!
# A030387: Position of n-th 0 in A030386.

The programs for A030387, there is no canonical definition to state claims against.
-/

/-! ## A030387.P13974256081325591617

`eq[0, A030386(n)]`
-/

namespace A030387.P13974256081325591617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030387.P13974256081325591617

/-! ## A030387.P2685419387426004090

`lt[A030386(n)*A034175(n), 1]`
-/

namespace A030387.P2685419387426004090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n * A034175 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030387.P2685419387426004090

/-! ## A030387.P14292525936278894484

`record[n-A004273(n)*A030386(n)]`
-/

namespace A030387.P14292525936278894484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004273 n * A030386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030387.P14292525936278894484

/-! ## A030387.P14630109687537493373

`record[n-A005132(n)*A030386(n)]`
-/

namespace A030387.P14630109687537493373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005132 n * A030386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030387.P14630109687537493373

/-! ## A030387.P7890345761710379586

`record[n-A006218(n)*A030386(n)]`
-/

namespace A030387.P7890345761710379586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006218 n * A030386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030387.P7890345761710379586

/-! ## A030387.P14756537476458640858

`record[n-A007088(n)*A030386(n)]`
-/

namespace A030387.P14756537476458640858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007088 n * A030386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030387.P14756537476458640858

/-! ## A030387.P7774981399923163290

`record[n-A007090(n)*A030386(n)]`
-/

namespace A030387.P7774981399923163290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007090 n * A030386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030387.P7774981399923163290

/-! ## A030387.P12584078448661428603

`record[n-A007091(n)*A030386(n)]`
-/

namespace A030387.P12584078448661428603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007091 n * A030386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030387.P12584078448661428603

/-! ## A030387.P8303251888951966442

`record[n-A030386(n)*A103517(n)]`
-/

namespace A030387.P8303251888951966442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030386 n * A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030387.P8303251888951966442

/-! ## A030387.P2373503376679808848

`lt[A000040(n+1)*A030386(n), 1]`
-/

namespace A030387.P2373503376679808848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A030386 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030387.P2373503376679808848

/-! ## A030387.P620233900428190649

`lt[A030386(n)*A155085(n+1), 1]`
-/

namespace A030387.P620233900428190649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n * A155085 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030387.P620233900428190649

/-! ## A030387.P12916443642907881905

`lt[A030386(n)*A277902(n+1), 1]`
-/

namespace A030387.P12916443642907881905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n * A277902 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030387.P12916443642907881905

/-! ## A030387.P12664182599394588203

`lt[A030386(n)*A297826(n+1), 1]`
-/

namespace A030387.P12664182599394588203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n * A297826 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030387.P12664182599394588203

/-! ## A030387.P13944035893360941529

`lt[A030386(n)*A047480(n+1), 3]`
-/

namespace A030387.P13944035893360941529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n * A047480 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030387.P13944035893360941529

/-! ## A030387.P4066402281455996070

`lt[A030386(n)*A098090(n+1), 3]`
-/

namespace A030387.P4066402281455996070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n * A098090 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030387.P4066402281455996070

/-! ## A030387.P11270832205095002888

`lt[A030386(n)²*or(2, A016777(n)), 3]`
-/

namespace A030387.P11270832205095002888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n ^ 2 * Int.lor 2 (A016777 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030387.P11270832205095002888

/-! ## A030387.P3900816922105224596

`record[n-A000203(n+1)*A030386(n)]`
-/

namespace A030387.P3900816922105224596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000203 (n + 1) * A030386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030387.P3900816922105224596

/-! ## A030387.P9178621157625527850

`record[n-A001855(n+1)*A030386(n)]`
-/

namespace A030387.P9178621157625527850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001855 (n + 1) * A030386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030387.P9178621157625527850

/-! ## A030387.P2584042025044859808

`lt[5*n*A030386(n), A004277(n)+1]`
-/

namespace A030387.P2584042025044859808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) * A030386 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030387.P2584042025044859808

/-! ## A030387.P13068029350828206990

`lt[A030386(n), A001222(A008578(n+1))!]`
-/

namespace A030387.P13068029350828206990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A030387.P13068029350828206990

/-!
# A030388: Position of n-th 1 in A030386.

The programs for A030388, there is no canonical definition to state claims against.
-/

/-! ## A030388.P4037253434514421865

`eq[1, A030386(n)]`
-/

namespace A030388.P4037253434514421865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030388.P4037253434514421865

/-! ## A030388.P1634292317087875688

`lt[0, tan(A030386(n+1))]+1`
-/

namespace A030388.P1634292317087875688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A030386 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A030388.P1634292317087875688

/-! ## A030388.P17616655018417008983

`lt[A030308(n), tan(A030386(n))]`
-/

namespace A030388.P17616655018417008983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A030386 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030388.P17616655018417008983

/-! ## A030388.P6874242091680133851

`lt[1, A169585(n)+tan(A030386(n))]`
-/

namespace A030388.P6874242091680133851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A169585 n : ℝ) + Real.tan (A030386 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030388.P6874242091680133851

/-! ## A030388.P12178978669745787793

`lt[A188044(n+1), tan(A030386(n))]`
-/

namespace A030388.P12178978669745787793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A030386 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030388.P12178978669745787793

/-! ## A030388.P2862548374752103409

`lt[1, tan(A030386(n))*A005408(n)]`
-/

namespace A030388.P2862548374752103409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A030386 n : ℝ) * (A005408 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030388.P2862548374752103409

/-! ## A030388.P4307763409792022753

`record[gcd(A030386(n+1)+n, A103517(n))]`
-/

namespace A030388.P4307763409792022753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030386 (n + 1) + (n : ℤ)) (A103517 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030388.P4307763409792022753

/-! ## A030388.P11105795959277092998

`lt[A169585(2*n), tan(A030386(n))]`
-/

namespace A030388.P11105795959277092998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A030386 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030388.P11105795959277092998

/-!
# A030389: Position of n-th 2 in A030386.

The programs for A030389, there is no canonical definition to state claims against.
-/

/-! ## A030389.P8988028235014477679

`eq[2, A030386(n)]`
-/

namespace A030389.P8988028235014477679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030389.P8988028235014477679

/-! ## A030389.P9556592679369354952

`lt[A030308(n), tan(A030386(n)-1)]`
-/

namespace A030389.P9556592679369354952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A030386 n - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030389.P9556592679369354952

/-! ## A030389.P8796322007643023344

`lt[tan(A030386(n))+2, A169585(n)]`
-/

namespace A030389.P8796322007643023344
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A030386 n : ℝ) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A030389.P8796322007643023344

/-! ## A030389.P10665757261012670397

`lt[A188044(n+1), tan(A030386(n)-1)]`
-/

namespace A030389.P10665757261012670397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A030386 n - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030389.P10665757261012670397

/-! ## A030389.P756814951661972351

`lt[A005408(n), 1-(n+1)*tan(A030386(n))]`
-/

namespace A030389.P756814951661972351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - (n + 1 : ℝ) * Real.tan (A030386 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A030389.P756814951661972351

/-! ## A030389.P16037055404067112678

`lt[(10*tan(A030386(n))+3)*A035096(n+1), 1]`
-/

namespace A030389.P16037055404067112678
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 * Real.tan (A030386 n : ℝ) + 3) * (A035096 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A030389.P16037055404067112678

/-!
# A030390: Position of n-th 3 in A030386.

The programs for A030390, there is no canonical definition to state claims against.
-/

/-! ## A030390.P5737768163825012274

`lt[2, A030386(n)]`
-/

namespace A030390.P5737768163825012274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A030390.P5737768163825012274

/-! ## A030390.P7160610261745662119

`eq[3, A030386(char[1]+n)]`
-/

namespace A030390.P7160610261745662119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 ((if ∃ j, f3 j = n then 1 else 0) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030390.P7160610261745662119

/-! ## A030390.P4831691190369302637

`A000027(eq[3, A030386(n)])`
-/

namespace A030390.P4831691190369302637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030390.P4831691190369302637

/-! ## A030390.P5037899241416864036

`A181440(eq[3, A030386(n)])`
-/

namespace A030390.P5037899241416864036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030390.P5037899241416864036

/-! ## A030390.P15133243540838607836

`eq[A030386(n), A113923(n)]`
-/

namespace A030390.P15133243540838607836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030390.P15133243540838607836

/-! ## A030390.P13462270173539136488

`eq[A030386(n), A122553(n)]`
-/

namespace A030390.P13462270173539136488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030390.P13462270173539136488

/-! ## A030390.P9898889827045609204

`eq[A030386(n), A158799(n)]`
-/

namespace A030390.P9898889827045609204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030390.P9898889827045609204

/-! ## A030390.P7634184654518232542

`eq[A030386(n), A157532(n+1)]`
-/

namespace A030390.P7634184654518232542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030390.P7634184654518232542

/-! ## A030390.P17561537999477084816

`eq[A030386(n), A135717(A030393(n+1))]`
-/

namespace A030390.P17561537999477084816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135717 (A030393 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030390.P17561537999477084816

/-! ## A030390.P1411454918611967404

`eq[A030386(n), A135717(A031243(n+1))]`
-/

namespace A030390.P1411454918611967404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135717 (A031243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030390.P1411454918611967404

/-! ## A030390.P11416062513664704264

`eq[A030386(n), A030401(A030405(n+1))]`
-/

namespace A030390.P11416062513664704264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A030405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030390.P11416062513664704264

/-! ## A030390.P2199425947584192951

`eq[A030386(n), A030399(A030374(n+1))]`
-/

namespace A030390.P2199425947584192951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (A030374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030390.P2199425947584192951

/-! ## A030390.P13795157038656809166

`eq[A030386(n), A031087(A031091(n+1))]`
-/

namespace A030390.P13795157038656809166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 (A031091 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030390.P13795157038656809166

/-! ## A030390.P262469949049179306

`eq[A030386(n), A031298(A031302(n+1))]`
-/

namespace A030390.P262469949049179306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (A031302 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030390.P262469949049179306

/-!
# A030392: Length of n-th run of digit 0 in A030386.

The programs for A030392, there is no canonical definition to state claims against.
-/

/-! ## A030392.P3029919428600810810

`A030379(C(A188431(n), A271275(n))+n)`
-/

namespace A030392.P3029919428600810810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (Nat.choose (A188431 n).toNat (A271275 n).toNat + n)

end

end A030392.P3029919428600810810

/-! ## A030392.P17430973708308263925

`A030379(A002260(∑[n+3]))`
-/

namespace A030392.P17430973708308263925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (A002260 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030392.P17430973708308263925

/-! ## A030392.P11373852014083373900

`A030379(abs(1-n)+1)*A047999(A266259(n))`
-/

namespace A030392.P11373852014083373900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (|1 - (n : ℤ)| + 1).toNat * A047999 (A266259 n).toNat

end

end A030392.P11373852014083373900

/-! ## A030392.P6223814266788026922

`A030379(n)+(A047999(A266259(n))-1)*a(n-1)` with `a(0)=1`
-/

namespace A030392.P6223814266788026922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030379 n + (A047999 (A266259 n).toNat - 1) * a (n - 1)

end

end A030392.P6223814266788026922

/-! ## A030392.P8212034221478814568

`A030379(A233583(n+1))+A000038(A007318(n))`
-/

namespace A030392.P8212034221478814568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (A233583 (n + 1)).toNat + A000038 (A007318 n).toNat

end

end A030392.P8212034221478814568

/-! ## A030392.P14058611858145715446

`A030379(A233583(n+1))%A180011(A007318(n)+1)`
-/

namespace A030392.P14058611858145715446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030379 (A233583 (n + 1)).toNat) (A180011 (A007318 n + 1).toNat)

end

end A030392.P14058611858145715446

/-! ## A030392.P5647983707983512412

`A030379(A134478(∑[n]))`
-/

namespace A030392.P5647983707983512412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030392.P5647983707983512412

/-! ## A030392.P14786335590116948810

`A030379(A003056(∑[n]+1))`
-/

namespace A030392.P14786335590116948810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A030392.P14786335590116948810

/-! ## A030392.P16423353622690860103

`A053616(∑[n])+A030379(A233583(n+1))`
-/

namespace A030392.P16423353622690860103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (∑ j ∈ Finset.range (n + 1), f1 j) + A030379 (A233583 (n + 1)).toNat

end

end A030392.P16423353622690860103

/-! ## A030392.P7261361526990607546

`A030379(A233583(n+1))^A002262(A000124(n))`
-/

namespace A030392.P7261361526990607546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030379 (A233583 (n + 1)).toNat : ℚ) ^ (A002262 (A000124 n).toNat : ℤ)

end

end A030392.P7261361526990607546

/-! ## A030392.P3430097384643596940

`gcd(A030379(A233583(n+1)), A081123(n))`
-/

namespace A030392.P3430097384643596940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030379 (A233583 (n + 1)).toNat) (A081123 n)

end

end A030392.P3430097384643596940

/-! ## A030392.P16110510176341883571

`A030379(A233583(n+1))+A000038(∑[n+1])`
-/

namespace A030392.P16110510176341883571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (A233583 (n + 1)).toNat + A000038 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030392.P16110510176341883571

/-! ## A030392.P1880719709134092565

`A030379(A233583(n+1))*A057427(A034856(n+1))`
-/

namespace A030392.P1880719709134092565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (A233583 (n + 1)).toNat * A057427 (A034856 (n + 1)).toNat

end

end A030392.P1880719709134092565

/-! ## A030392.P7565030922684932336

`A010054(A066561(n+1))*A030379(A233583(n+1))`
-/

namespace A030392.P7565030922684932336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A066561 (n + 1)).toNat * A030379 (A233583 (n + 1)).toNat

end

end A030392.P7565030922684932336

/-! ## A030392.P7043251107525886837

`A030379(n^A178334(n))`
-/

namespace A030392.P7043251107525886837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A030392.P7043251107525886837

/-! ## A030392.P8145164763726437684

`A030379(A233583(n+1))*A057427(A049063(n))`
-/

namespace A030392.P8145164763726437684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (A233583 (n + 1)).toNat * A057427 (A049063 n).toNat

end

end A030392.P8145164763726437684

/-! ## A030392.P10759278546619279554

`A030379(A233583(n+1))*A057427(A130321(n))`
-/

namespace A030392.P10759278546619279554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (A233583 (n + 1)).toNat * A057427 (A130321 n).toNat

end

end A030392.P10759278546619279554

/-! ## A030392.P664034189835916146

`A030407(A223133(n))`
-/

namespace A030392.P664034189835916146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030407 (A223133 n).toNat

end

end A030392.P664034189835916146

/-! ## A030392.P682591743468947341

`A030379(A137734(n²))`
-/

namespace A030392.P682591743468947341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (A137734 (n ^ 2)).toNat

end

end A030392.P682591743468947341

/-!
# A030393: Length of n-th run of digit 1 in A030386.

The programs for A030393, there is no canonical definition to state claims against.
-/

/-! ## A030393.P10594095044492205582

`A031243(eq[A028717(n), A326292(n)])`
-/

namespace A030393.P10594095044492205582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031243 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030393.P10594095044492205582

/-! ## A030393.P5856939750395326959

`A031243(A325597(n+1))+A000038(A001611(n))`
-/

namespace A030393.P5856939750395326959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031243 (A325597 (n + 1)).toNat + A000038 (A001611 n).toNat

end

end A030393.P5856939750395326959

/-!
# A030394: Length of n-th run of digit 2 in A030386.

The programs for A030394, there is no canonical definition to state claims against.
-/

/-! ## A030394.P8460744709122517880

`A170956(n)*A340676(n+1)+1`
-/

namespace A030394.P8460744709122517880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170956 n * A340676 (n + 1) + 1

end

end A030394.P8460744709122517880

/-! ## A030394.P6751362883829287081

`gcd(A176545(n+1), A269570(4*n+2))`
-/

namespace A030394.P6751362883829287081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176545 (n + 1)) (A269570 (4 * n + 2))

end

end A030394.P6751362883829287081

/-! ## A030394.P3296692496284361454

`A051903(A154922(n)-A137734(n))`
-/

namespace A030394.P3296692496284361454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A154922 n - A137734 n).toNat

end

end A030394.P3296692496284361454

/-!
# A030395: Length of n-th run of digit 3 in A030386.

The programs for A030395, there is no canonical definition to state claims against.
-/

/-! ## A030395.P2583415181654101919

`gcd(A117502(A167934(n)), A145704(n))`
-/

namespace A030395.P2583415181654101919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117502 (A167934 n).toNat) (A145704 n)

end

end A030395.P2583415181654101919

/-! ## A030395.P16721352461360935294

`gcd(A023746(n+5), A326062(A203600(n+1)))`
-/

namespace A030395.P16721352461360935294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023746 (n + 5)) (A326062 (A203600 (n + 1)).toNat)

end

end A030395.P16721352461360935294

/-! ## A030395.P6373939300065550202

`A206778(gcd(A243173(2*n+5), A320226(2*(n+1))))`
-/

namespace A030395.P6373939300065550202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206778 (Int.gcd (A243173 (2 * n + 5)) (A320226 (2 * (n + 1))))

end

end A030395.P6373939300065550202

/-!
# A030397: a(n)=(# 1's)-(# 2's) in first n terms of A030386.

The programs for A030397, there is no canonical definition to state claims against.
-/

/-! ## A030397.P3593321816391549694

`A081399(A326178(∑{e}[(4-6/(n+1))*a(n-1), #]))` with `a(0)=4, a(1)=1`
-/

namespace A030397.P3593321816391549694
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (A326178 (∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)).toNat

end

end A030397.P3593321816391549694

/-!
# A030399: Write n in base 4, then complement each digit (d -> 3-d) and juxtapose.

The programs for A030399, there is no canonical definition to state claims against.
-/

/-! ## A030399.P10750930873533016096

`3-A030373(n+1)`
-/

namespace A030399.P10750930873533016096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A030373 (n + 1)

end

end A030399.P10750930873533016096

/-! ## A030399.P2057002304332327519

`xor(3, A030373(A000027(n+1)))`
-/

namespace A030399.P2057002304332327519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A030373 (A000027 (n + 1)).toNat)

end

end A030399.P2057002304332327519

/-! ## A030399.P17843120535577608791

`xor(A008864(C(n, n+1)!), A030373(n+1))`
-/

namespace A030399.P17843120535577608791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008864 (Nat.factorial (Nat.choose n (n + 1)))) (A030373 (n + 1))

end

end A030399.P17843120535577608791

/-! ## A030399.P15300925899933226612

`xor(A010693(2*n+1), A030373(n+1))`
-/

namespace A030399.P15300925899933226612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010693 (2 * n + 1)) (A030373 (n + 1))

end

end A030399.P15300925899933226612

/-! ## A030399.P480598741496227261

`xor(3, A030373(A004526(2*(n+1))))`
-/

namespace A030399.P480598741496227261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A030373 (A004526 (2 * (n + 1))).toNat)

end

end A030399.P480598741496227261

/-! ## A030399.P2367143151721226175

`xor(A030373(n+1), A030401(A030405(n+1)))`
-/

namespace A030399.P2367143151721226175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030373 (n + 1)) (A030401 (A030405 (n + 1)).toNat)

end

end A030399.P2367143151721226175

/-! ## A030399.P11019392761040349844

`xor(A030373(n+1), A030413(A030417(n+1)))`
-/

namespace A030399.P11019392761040349844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030373 (n + 1)) (A030413 (A030417 (n + 1)).toNat)

end

end A030399.P11019392761040349844

/-! ## A030399.P15235800880606617799

`xor(A030373(n+1), A030373(A030377(n+1)))`
-/

namespace A030399.P15235800880606617799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030373 (n + 1)) (A030373 (A030377 (n + 1)).toNat)

end

end A030399.P15235800880606617799

/-! ## A030399.P6962490299559285499

`xor(A030373(n+1), A030386(A030390(n+1)))`
-/

namespace A030399.P6962490299559285499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030373 (n + 1)) (A030386 (A030390 (n + 1)).toNat)

end

end A030399.P6962490299559285499

/-! ## A030399.P14205442387708178905

`xor(A030373(n+1), A231475(A059152(n)))`
-/

namespace A030399.P14205442387708178905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030373 (n + 1)) (A231475 (A059152 n).toNat)

end

end A030399.P14205442387708178905

