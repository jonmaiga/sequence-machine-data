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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
# A276803: Semiprimes k such that the concatenation of its prime factors is prime.

The programs for A276803, there is no canonical definition to state claims against.
-/

/-! ## A276803.P16125024915021828640

`filter[A046411(n+1), A064911(#)]`
-/

namespace A276803.P16125024915021828640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A276803.P16125024915021828640

/-! ## A276803.P12651503512078147499

`filter[A046411(n+1), A101040(#)]`
-/

namespace A276803.P12651503512078147499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A276803.P12651503512078147499

/-! ## A276803.P16866570779010525136

`filter[A046411(n+1), A280710(#)]`
-/

namespace A276803.P16866570779010525136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A276803.P16866570779010525136

/-! ## A276803.P7055786703642212576

`filter[A046411(n+1), A353471(#)]`
-/

namespace A276803.P7055786703642212576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A276803.P7055786703642212576

/-! ## A276803.P3111513336962027673

`filter[A046411(n+1), A353788(#)]`
-/

namespace A276803.P3111513336962027673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A276803.P3111513336962027673

/-! ## A276803.P18242094787020653618

`filter[A046411(n+1), A353799(#)]`
-/

namespace A276803.P18242094787020653618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A276803.P18242094787020653618

/-! ## A276803.P9080185909817931402

`filter[A046411(n+1), A354927(#)]`
-/

namespace A276803.P9080185909817931402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A276803.P9080185909817931402

/-! ## A276803.P12083332414393419114

`∩[A001358(n+1), A046411(n+1)]`
-/

namespace A276803.P12083332414393419114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276803.P12083332414393419114

/-! ## A276803.P7829623778607946081

`∩[A006881(n+1), A046411(n+1)]`
-/

namespace A276803.P7829623778607946081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276803.P7829623778607946081

/-! ## A276803.P6589187825650840542

`∩[A046411(n+1), A068993(n+1)]`
-/

namespace A276803.P6589187825650840542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276803.P6589187825650840542

/-! ## A276803.P17474589178488580534

`∩[A046411(n+1), A161918(n+1)]`
-/

namespace A276803.P17474589178488580534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276803.P17474589178488580534

/-! ## A276803.P2106591640003811447

`∩[A030513(n+1), A046411(n+1)]`
-/

namespace A276803.P2106591640003811447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276803.P2106591640003811447

/-! ## A276803.P12722870532593869944

`∩[A007422(n+1), A046411(n+1)]`
-/

namespace A276803.P12722870532593869944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276803.P12722870532593869944

/-! ## A276803.P16767656928495951669

`∩[A046411(n+1), A176540(n+1)]`
-/

namespace A276803.P16767656928495951669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276803.P16767656928495951669

/-! ## A276803.P1934340083536485599

`∩[eq[2, A050379(n+1)]+1, A046411(n+1)]`
-/

namespace A276803.P1934340083536485599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A276803.P1934340083536485599

/-! ## A276803.P12800225025301671332

`∩[A046411(n+1), A083681(n+1)-A083682(n+1)]`
-/

namespace A276803.P12800225025301671332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083681 (n + 1) - A083682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276803.P12800225025301671332

/-! ## A276803.P1418409330395952256

`∩[A046411(n+1), A323644(n+1)]`
-/

namespace A276803.P1418409330395952256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276803.P1418409330395952256

/-! ## A276803.P8284822090498853399

`filter[A343027(n+1), A064911(#)]`
-/

namespace A276803.P8284822090498853399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A276803.P8284822090498853399

/-! ## A276803.P4804516102934725862

`filter[A343027(n+1), A280710(#)]`
-/

namespace A276803.P4804516102934725862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A276803.P4804516102934725862

/-! ## A276803.P11881015178371130608

`filter[A343027(n+1), A354927(#)]`
-/

namespace A276803.P11881015178371130608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A276803.P11881015178371130608

/-!
# A276804: Second column T[.,2] of array T = A255483: T[0,j] = prime(j), T[i+1,j] = T[i,j]*T[i,j+1]/gcd(T[i,j],T[i,j+1])^2, i >= 0, j >= 1.

The programs for A276804, there is no canonical definition to state claims against.
-/

/-! ## A276804.P8996775439196819011

`A003961(A123098(n))`
-/

namespace A276804.P8996775439196819011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A123098 n).toNat

end

end A276804.P8996775439196819011

/-! ## A276804.P16990116601913762826

`A277809(∑[n+2])`
-/

namespace A276804.P16990116601913762826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277809 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276804.P16990116601913762826

/-! ## A276804.P2220309409248988063

`A277810(∑[n+1]+2)`
-/

namespace A276804.P2220309409248988063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277810 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A276804.P2220309409248988063

/-! ## A276804.P2010805550555948572

`A255483(∑[n+2]-1)`
-/

namespace A276804.P2010805550555948572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255483 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A276804.P2010805550555948572

/-! ## A276804.P12844329130145128910

`lcm(3, A277809(A000096(n+1)))`
-/

namespace A276804.P12844329130145128910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A277809 (A000096 (n + 1)).toNat)

end

end A276804.P12844329130145128910

/-!
# A276805: a(n) = numerator((n^2 + 3*n + 2)/n^3).

The programs for A276805, the canonical program `A276805.P12603908147871309293` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276805 has offset 1).

The definition of A276805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276805.P12603908147871309293

`a(n-8)*((n+1)²+3*(n+1)+2)/((n+1)²-13*(n+1)+42)` with `a(0)=6, a(1)=3, a(2)=20, a(3)=15, a(4)=42, a(5)=7, a(6)=72, a(7)=45`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276805

/-- `a(n-8)*((n+1)²+3*(n+1)+2)/((n+1)²-13*(n+1)+42)` -/
def P12603908147871309293.Spec : Prop :=
  ∀ n, P12603908147871309293.a n = (A276805 (n + 1) : ℚ)

end A276805

/-! ## A276805.P11542646211145161048

`(n+2)*lcm(8, n+3)/8`
-/

namespace A276805.P11542646211145161048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((Nat.lcm 8 (n + 3) : ℚ) / 8)

end

end A276805.P11542646211145161048

namespace A276805

/-- `(n+2)*lcm(8, n+3)/8` -/
def P11542646211145161048.Spec : Prop :=
  ∀ n, P11542646211145161048.a n = (A276805 (n + 1) : ℚ)

end A276805

/-! ## A276805.P892982336483904130

`(n+2)*(n+3)/gcd(8, n+3)`
-/

namespace A276805.P892982336483904130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n + 3 : ℚ) / (Nat.gcd 8 (n + 3) : ℚ))

end

end A276805.P892982336483904130

namespace A276805

/-- `(n+2)*(n+3)/gcd(8, n+3)` -/
def P892982336483904130.Spec : Prop :=
  ∀ n, P892982336483904130.a n = (A276805 (n + 1) : ℚ)

end A276805

/-! ## A276805.P2299215452682919597

`A045896(n+1)/gcd((n+1)², A045896(n+1))`
-/

namespace A276805.P2299215452682919597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045896 (n + 1) : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (A045896 (n + 1)) : ℚ)

end

end A276805.P2299215452682919597

namespace A276805

/-- `A045896(n+1)/gcd((n+1)², A045896(n+1))` -/
def P2299215452682919597.Spec : Prop :=
  ∀ n, P2299215452682919597.a n = (A276805 (n + 1) : ℚ)

end A276805

/-! ## A276805.P16266696565027679220

`(n+2)*A106609(n+3)`
-/

namespace A276805.P16266696565027679220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A106609 (n + 3)

end

end A276805.P16266696565027679220

namespace A276805

/-- `(n+2)*A106609(n+3)` -/
def P16266696565027679220.Spec : Prop :=
  ∀ n, P16266696565027679220.a n = A276805 (n + 1)

end A276805

/-! ## A276805.P4533599484178786285

`A060819(A145051(n+2))*(n+2)`
-/

namespace A276805.P4533599484178786285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A145051 (n + 2)).toNat * (n + 2 : ℤ)

end

end A276805.P4533599484178786285

namespace A276805

/-- `A060819(A145051(n+2))*(n+2)` -/
def P4533599484178786285.Spec : Prop :=
  ∀ n, P4533599484178786285.a n = A276805 (n + 1)

end A276805

/-! ## A276805.P167625108408581014

`(n+2)*A060819(A026741(n+3))`
-/

namespace A276805.P167625108408581014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060819 (A026741 (n + 3)).toNat

end

end A276805.P167625108408581014

namespace A276805

/-- `(n+2)*A060819(A026741(n+3))` -/
def P167625108408581014.Spec : Prop :=
  ∀ n, P167625108408581014.a n = A276805 (n + 1)

end A276805

/-! ## A276805.P11698338915132955027

`(n+2)*A060819(A186646(n+3))`
-/

namespace A276805.P11698338915132955027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060819 (A186646 (n + 3)).toNat

end

end A276805.P11698338915132955027

namespace A276805

/-- `(n+2)*A060819(A186646(n+3))` -/
def P11698338915132955027.Spec : Prop :=
  ∀ n, P11698338915132955027.a n = A276805 (n + 1)

end A276805

/-! ## A276805.P16570119955617028522

`lcm(n+2, A059616(n+3))`
-/

namespace A276805.P16570119955617028522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A059616 (n + 3))

end

end A276805.P16570119955617028522

namespace A276805

/-- `lcm(n+2, A059616(n+3))` -/
def P16570119955617028522.Spec : Prop :=
  ∀ n, (P16570119955617028522.a n : ℤ) = A276805 (n + 1)

end A276805

/-! ## A276805.P8042424048456228912

`(n+2)*(n+3)/A109011(n+3)`
-/

namespace A276805.P8042424048456228912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n + 3 : ℚ) / (A109011 (n + 3) : ℚ))

end

end A276805.P8042424048456228912

namespace A276805

/-- `(n+2)*(n+3)/A109011(n+3)` -/
def P8042424048456228912.Spec : Prop :=
  ∀ n, P8042424048456228912.a n = (A276805 (n + 1) : ℚ)

end A276805

/-! ## A276805.P6417596818292509149

`(n+2)*A026741(A214392(n+3))`
-/

namespace A276805.P6417596818292509149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A026741 (A214392 (n + 3)).toNat

end

end A276805.P6417596818292509149

namespace A276805

/-- `(n+2)*A026741(A214392(n+3))` -/
def P6417596818292509149.Spec : Prop :=
  ∀ n, P6417596818292509149.a n = A276805 (n + 1)

end A276805

/-! ## A276805.P3883133772711382780

`(n+2)*A060819(A062828(n+3))`
-/

namespace A276805.P3883133772711382780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060819 (A062828 (n + 3)).toNat

end

end A276805.P3883133772711382780

namespace A276805

/-- `(n+2)*A060819(A062828(n+3))` -/
def P3883133772711382780.Spec : Prop :=
  ∀ n, P3883133772711382780.a n = A276805 (n + 1)

end A276805

/-! ## A276805.P16835405379443384273

`(n+2)*A060819(A060819(A022998(n+3)))`
-/

namespace A276805.P16835405379443384273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060819 (A060819 (A022998 (n + 3)).toNat).toNat

end

end A276805.P16835405379443384273

namespace A276805

/-- `(n+2)*A060819(A060819(A022998(n+3)))` -/
def P16835405379443384273.Spec : Prop :=
  ∀ n, P16835405379443384273.a n = A276805 (n + 1)

end A276805

/-! ## A276805.P14898383224847967064

`(n+2)*A106617(2*(n+3))`
-/

namespace A276805.P14898383224847967064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A106617 (2 * (n + 3))

end

end A276805.P14898383224847967064

namespace A276805

/-- `(n+2)*A106617(2*(n+3))` -/
def P14898383224847967064.Spec : Prop :=
  ∀ n, P14898383224847967064.a n = A276805 (n + 1)

end A276805

/-! ## A276805.P11193783715989361385

`(n+2)*A060819(A176743(n+1))`
-/

namespace A276805.P11193783715989361385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060819 (A176743 (n + 1)).toNat

end

end A276805.P11193783715989361385

namespace A276805

/-- `(n+2)*A060819(A176743(n+1))` -/
def P11193783715989361385.Spec : Prop :=
  ∀ n, P11193783715989361385.a n = A276805 (n + 1)

end A276805

/-! ## A276805.P13117899068913925594

`(n+2)*A060819(A064680(n+3))`
-/

namespace A276805.P13117899068913925594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060819 (A064680 (n + 3)).toNat

end

end A276805.P13117899068913925594

namespace A276805

/-- `(n+2)*A060819(A064680(n+3))` -/
def P13117899068913925594.Spec : Prop :=
  ∀ n, P13117899068913925594.a n = A276805 (n + 1)

end A276805

/-! ## A276805.P5182857835485398577

`(n+2)*A060819(A225975(n+3))`
-/

namespace A276805.P5182857835485398577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060819 (A225975 (n + 3)).toNat

end

end A276805.P5182857835485398577

namespace A276805

/-- `(n+2)*A060819(A225975(n+3))` -/
def P5182857835485398577.Spec : Prop :=
  ∀ n, P5182857835485398577.a n = A276805 (n + 1)

end A276805

/-! ## A276805.P18106755799973826544

`(n+2)*A060819(A060819(2*(n+3)))`
-/

namespace A276805.P18106755799973826544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060819 (A060819 (2 * (n + 3))).toNat

end

end A276805.P18106755799973826544

namespace A276805

/-- `(n+2)*A060819(A060819(2*(n+3)))` -/
def P18106755799973826544.Spec : Prop :=
  ∀ n, P18106755799973826544.a n = A276805 (n + 1)

end A276805

/-! ## A276805.P7607636095989178194

`(n+2)*A070290(A109049(n+3))`
-/

namespace A276805.P7607636095989178194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A070290 (A109049 (n + 3)).toNat

end

end A276805.P7607636095989178194

namespace A276805

/-- `(n+2)*A070290(A109049(n+3))` -/
def P7607636095989178194.Spec : Prop :=
  ∀ n, P7607636095989178194.a n = A276805 (n + 1)

end A276805

/-! ## A276805.P17601105115231036326

`(n+2)*A070290(A205382(n+3))`
-/

namespace A276805.P17601105115231036326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A070290 (A205382 (n + 3)).toNat

end

end A276805.P17601105115231036326

namespace A276805

/-- `(n+2)*A070290(A205382(n+3))` -/
def P17601105115231036326.Spec : Prop :=
  ∀ n, P17601105115231036326.a n = A276805 (n + 1)

end A276805

/-!
# A276806: Height of the shortest binary factorization tree of n.

The programs for A276806, the canonical program `A276806.P5142703683070357090` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276806 has offset 1).

The definition of A276806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276806.P11373485161681632010

`ceil(log2(A086436(n+1)))`
-/

namespace A276806.P11373485161681632010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A086436 (n + 1) : ℝ)⌉

end

end A276806.P11373485161681632010

namespace A276806

/-- `ceil(log2(A086436(n+1)))` -/
def P11373485161681632010.Spec : Prop :=
  ∀ n, P11373485161681632010.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P4915289972421123169

`round(log2(A036467(∑{e}[n+1, #])))`
-/

namespace A276806.P4915289972421123169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A036467 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℝ))

end

end A276806.P4915289972421123169

namespace A276806

/-- `round(log2(A036467(∑{e}[n+1, #])))` -/
def P4915289972421123169.Spec : Prop :=
  ∀ n, P4915289972421123169.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P11590354882722230277

`ceil(log2(A001222(abs(1-n)+2)))`
-/

namespace A276806.P11590354882722230277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A001222 (|1 - (n : ℤ)| + 2).toNat : ℝ)⌉

end

end A276806.P11590354882722230277

namespace A276806

/-- `ceil(log2(A001222(abs(1-n)+2)))` -/
def P11590354882722230277.Spec : Prop :=
  ∀ n, P11590354882722230277.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P13824524497346119237

`∑{e}[2^∑{e}[n+1, #], A196050(#)]`
-/

namespace A276806.P13824524497346119237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A196050 (Nat.factorization (f1 n) p)

end

end A276806.P13824524497346119237

namespace A276806

/-- `∑{e}[2^∑{e}[n+1, #], A196050(#)]` -/
def P13824524497346119237.Spec : Prop :=
  ∀ n, P13824524497346119237.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P2017795059343283095

`A029837(∑{e}[n+1, #]+floor(acot(n)))`
-/

namespace A276806.P2017795059343283095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A276806.P2017795059343283095

namespace A276806

/-- `A029837(∑{e}[n+1, #]+floor(acot(n)))` -/
def P2017795059343283095.Spec : Prop :=
  ∀ n, P2017795059343283095.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P5142703683070357090

`A029837(A252736(n+1)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276806

/-- `A029837(A252736(n+1)+1)` -/
def P5142703683070357090.Spec : Prop :=
  ∀ n, P5142703683070357090.a n = A276806 (n + 1)

theorem P5142703683070357090.correct : P5142703683070357090.Spec := by
  intro n
  simp only [A276806, Nat.add_sub_cancel]

end A276806

/-! ## A276806.P17812229135786942267

`A334097((A001222(n+1)+n)%(n+1)+1)`
-/

namespace A276806.P17812229135786942267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (Int.tmod (A001222 (n + 1) + (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A276806.P17812229135786942267

namespace A276806

/-- `A334097((A001222(n+1)+n)%(n+1)+1)` -/
def P17812229135786942267.Spec : Prop :=
  ∀ n, P17812229135786942267.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P2547225153053246066

`A286103(A252736(n+1)+∑{d}[A252736(n+1), #]+1)`
-/

namespace A276806.P2547225153053246066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286103 (A252736 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) + 1).toNat

end

end A276806.P2547225153053246066

namespace A276806

/-- `A286103(A252736(n+1)+∑{d}[A252736(n+1), #]+1)` -/
def P2547225153053246066.Spec : Prop :=
  ∀ n, P2547225153053246066.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P7173923773165730481

`ceil(log2(A006530(∑{e}[n+1, #]!)))`
-/

namespace A276806.P7173923773165730481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A006530 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℝ)⌉

end

end A276806.P7173923773165730481

namespace A276806

/-- `ceil(log2(A006530(∑{e}[n+1, #]!)))` -/
def P7173923773165730481.Spec : Prop :=
  ∀ n, P7173923773165730481.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P7174502987606591872

`ceil(log2(gcd(A001222(n+1), A048782(n+1))))`
-/

namespace A276806.P7174502987606591872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Int.gcd (A001222 (n + 1)) (A048782 (n + 1)) : ℝ)⌉

end

end A276806.P7174502987606591872

namespace A276806

/-- `ceil(log2(gcd(A001222(n+1), A048782(n+1))))` -/
def P7174502987606591872.Spec : Prop :=
  ∀ n, P7174502987606591872.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P10400812563882357375

`A008334(A130675(n+1))`
-/

namespace A276806.P10400812563882357375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008334 (A130675 (n + 1)).toNat

end

end A276806.P10400812563882357375

namespace A276806

/-- `A008334(A130675(n+1))` -/
def P10400812563882357375.Spec : Prop :=
  ∀ n, P10400812563882357375.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P135989205161609744

`A008334(A001222(n+1)!)`
-/

namespace A276806.P135989205161609744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008334 (Nat.factorial (A001222 (n + 1)).toNat)

end

end A276806.P135989205161609744

namespace A276806

/-- `A008334(A001222(n+1)!)` -/
def P135989205161609744.Spec : Prop :=
  ∀ n, P135989205161609744.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P1915620456309725202

`A109082(A001222(n+1)!)`
-/

namespace A276806.P1915620456309725202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (Nat.factorial (A001222 (n + 1)).toNat)

end

end A276806.P1915620456309725202

namespace A276806

/-- `A109082(A001222(n+1)!)` -/
def P1915620456309725202.Spec : Prop :=
  ∀ n, P1915620456309725202.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P3055412597552624952

`A112758(A001222(n+1)!)`
-/

namespace A276806.P3055412597552624952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112758 (Nat.factorial (A001222 (n + 1)).toNat)

end

end A276806.P3055412597552624952

namespace A276806

/-- `A112758(A001222(n+1)!)` -/
def P3055412597552624952.Spec : Prop :=
  ∀ n, P3055412597552624952.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P10400551967463392388

`A156542(A001222(n+1)!)`
-/

namespace A276806.P10400551967463392388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (Nat.factorial (A001222 (n + 1)).toNat)

end

end A276806.P10400551967463392388

namespace A276806

/-- `A156542(A001222(n+1)!)` -/
def P10400551967463392388.Spec : Prop :=
  ∀ n, P10400551967463392388.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P7595688334263640844

`∑{e}[A023997(∑{e}[n+1, #]), #]`
-/

namespace A276806.P7595688334263640844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023997 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A276806.P7595688334263640844

namespace A276806

/-- `∑{e}[A023997(∑{e}[n+1, #]), #]` -/
def P7595688334263640844.Spec : Prop :=
  ∀ n, (P7595688334263640844.a n : ℤ) = A276806 (n + 1)

end A276806

/-! ## A276806.P15713398565776664590

`A049087(A086568(n+1))`
-/

namespace A276806.P15713398565776664590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (A086568 (n + 1)).toNat

end

end A276806.P15713398565776664590

namespace A276806

/-- `A049087(A086568(n+1))` -/
def P15713398565776664590.Spec : Prop :=
  ∀ n, P15713398565776664590.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P12566183421238478537

`A087974(A001222(n+1)!)`
-/

namespace A276806.P12566183421238478537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087974 (Nat.factorial (A001222 (n + 1)).toNat)

end

end A276806.P12566183421238478537

namespace A276806

/-- `A087974(A001222(n+1)!)` -/
def P12566183421238478537.Spec : Prop :=
  ∀ n, P12566183421238478537.a n = A276806 (n + 1)

end A276806

/-! ## A276806.P12489876542031265222

`A007814(A108951(A034386(A007814(A329600(n+1)))))`
-/

namespace A276806.P12489876542031265222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A108951 (A034386 (A007814 (A329600 (n + 1)).toNat).toNat).toNat).toNat

end

end A276806.P12489876542031265222

namespace A276806

/-- `A007814(A108951(A034386(A007814(A329600(n+1)))))` -/
def P12489876542031265222.Spec : Prop :=
  ∀ n, P12489876542031265222.a n = A276806 (n + 1)

end A276806

/-!
# A276807: Number of solutions of the congruence y^2 == x^3 - x^2 - 4*x + 4 (mod p) as p runs through the primes.

The programs for A276807, there is no canonical definition to state claims against.
-/

/-! ## A276807.P17279173252530918544

`A000040(n+1)-A276847(A000040(n+1))`
-/

namespace A276807.P17279173252530918544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A276847 (A000040 (n + 1)).toNat

end

end A276807.P17279173252530918544

/-! ## A276807.P8258593490878423667

`A008578(n+2)-A276847(A008578(n+2))`
-/

namespace A276807.P8258593490878423667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A276847 (A008578 (n + 2)).toNat

end

end A276807.P8258593490878423667

/-! ## A276807.P9934407156016501394

`A182986(n+2)-A276847(A182986(n+2))`
-/

namespace A276807.P9934407156016501394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A276847 (A182986 (n + 2)).toNat

end

end A276807.P9934407156016501394

/-! ## A276807.P11113643234481621943

`A276847(A001748(n+1))+Δ[A007504(n)]`
-/

namespace A276807.P11113643234481621943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276847 (A001748 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A276807.P11113643234481621943

/-! ## A276807.P6781011042491730557

`A276847(A001748(n+1))+p?[A142150(n)]`
-/

namespace A276807.P6781011042491730557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276847 (A001748 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276807.P6781011042491730557

/-! ## A276807.P17292118010749785075

`A276847(A001748(n+1))+A000040(n+1)`
-/

namespace A276807.P17292118010749785075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276847 (A001748 (n + 1)).toNat + A000040 (n + 1)

end

end A276807.P17292118010749785075

/-! ## A276807.P953623436163571035

`A276847(A001748(n+1))+A008578(n+2)`
-/

namespace A276807.P953623436163571035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276847 (A001748 (n + 1)).toNat + A008578 (n + 2)

end

end A276807.P953623436163571035

/-! ## A276807.P238038485500705269

`A276847(A001748(n+1))+A182986(n+2)`
-/

namespace A276807.P238038485500705269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276847 (A001748 (n + 1)).toNat + A182986 (n + 2)

end

end A276807.P238038485500705269

/-! ## A276807.P16111191456776845605

`A276847(A001748(n+1))+p?[A015919(n+1)]`
-/

namespace A276807.P16111191456776845605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276847 (A001748 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276807.P16111191456776845605

/-! ## A276807.P16544910251150267089

`A276847(A001748(n+1))+p?[A163753(n+1)]`
-/

namespace A276807.P16544910251150267089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276847 (A001748 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276807.P16544910251150267089

/-!
# A276809: Least prime p such that (p^2-1)/24 is divisible by prime(n) or 0 if no such prime exists.

The programs for A276809, there is no canonical definition to state claims against.
-/

/-! ## A276809.P2486145231695385577

`A093868(A074845(n+2))`
-/

namespace A276809.P2486145231695385577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (A074845 (n + 2)).toNat

end

end A276809.P2486145231695385577

/-! ## A276809.P17893657309606909977

`A078331(3*p?[round(8*n/7)])+A000038(n)`
-/

namespace A276809.P17893657309606909977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078331 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A000038 n

end

end A276809.P17893657309606909977

/-! ## A276809.P13068492094253723760

`A078331(A001748(n+1))+A000038(n)`
-/

namespace A276809.P13068492094253723760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078331 (A001748 (n + 1)).toNat + A000038 n

end

end A276809.P13068492094253723760

/-! ## A276809.P10692272282529032745

`A078331(A001748(n+1))+A073267(n²+10)`
-/

namespace A276809.P10692272282529032745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078331 (A001748 (n + 1)).toNat + A073267 (n ^ 2 + 10)

end

end A276809.P10692272282529032745

/-!
# A276810: Numbers n such that A045876(n) has distinct decimal digits.

The programs for A276810, there is no canonical definition to state claims against.
-/

/-! ## A276810.P6183037744506924603

`lt[A139337(n)², A052008(n)]`
-/

namespace A276810.P6183037744506924603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276810.P6183037744506924603

/-! ## A276810.P6595086884474093997

`lt[A139337(n)², A056964(n)]`
-/

namespace A276810.P6595086884474093997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276810.P6595086884474093997

/-! ## A276810.P459285649816447648

`lt[A139337(n)², 2*n-A056965(n)]`
-/

namespace A276810.P459285649816447648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276810.P459285649816447648

/-! ## A276810.P14692167641104537481

`lt[A139337(n)², A004093(5*n)+n]`
-/

namespace A276810.P14692167641104537481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * n) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276810.P14692167641104537481

/-! ## A276810.P6780254420093865240

`lt[A139337(n)², xor(n, A256756(n))+n]`
-/

namespace A276810.P6780254420093865240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A256756 n) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276810.P6780254420093865240

/-!
# A276812: Prime gap residues mod previous prime gap.

The programs for A276812, the canonical program `A276812.P2217875081262429176` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276812 has offset 1).

The definition of A276812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276812.P2217875081262429176

`A031131(n+1)%A001223(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276812

/-- `A031131(n+1)%A001223(n+1)` -/
def P2217875081262429176.Spec : Prop :=
  ∀ n, P2217875081262429176.a n = A276812 (n + 1)

theorem P2217875081262429176.correct : P2217875081262429176.Spec := by
  intro n
  simp only [A276812, Nat.add_sub_cancel]

end A276812

/-! ## A276812.P14082775294995746364

`A001223(n+2)%A001223(n+1)`
-/

namespace A276812.P14082775294995746364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 2)) (A001223 (n + 1))

end

end A276812.P14082775294995746364

namespace A276812

/-- `A001223(n+2)%A001223(n+1)` -/
def P14082775294995746364.Spec : Prop :=
  ∀ n, P14082775294995746364.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P10258111500194553786

`A001223(n+2)-A001223(n+1)*A274263(n+1)`
-/

namespace A276812.P10258111500194553786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) - A001223 (n + 1) * A274263 (n + 1)

end

end A276812.P10258111500194553786

namespace A276812

/-- `A001223(n+2)-A001223(n+1)*A274263(n+1)` -/
def P10258111500194553786.Spec : Prop :=
  ∀ n, P10258111500194553786.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P3734918114525062659

`Δ[A065091(n+1)]%log2(A218075(n+1))`
-/

namespace A276812.P3734918114525062659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (SequenceMachineLib.roundAway (Real.logb 2 (A218075 (n + 1) : ℝ)))

end

end A276812.P3734918114525062659

namespace A276812

/-- `Δ[A065091(n+1)]%log2(A218075(n+1))` -/
def P3734918114525062659.Spec : Prop :=
  ∀ n, P3734918114525062659.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P2687796477760871366

`Δ[A092949(n+1)]%log2(A218075(n+1))`
-/

namespace A276812.P2687796477760871366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (SequenceMachineLib.roundAway (Real.logb 2 (A218075 (n + 1) : ℝ)))

end

end A276812.P2687796477760871366

namespace A276812

/-- `Δ[A092949(n+1)]%log2(A218075(n+1))` -/
def P2687796477760871366.Spec : Prop :=
  ∀ n, P2687796477760871366.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P3312321213135889766

`A054541(n+3)%A054541(n+2)`
-/

namespace A276812.P3312321213135889766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054541 (n + 3)) (A054541 (n + 2))

end

end A276812.P3312321213135889766

namespace A276812

/-- `A054541(n+3)%A054541(n+2)` -/
def P3312321213135889766.Spec : Prop :=
  ∀ n, P3312321213135889766.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P4115649407647340675

`A125266(n+3)%A125266(n+2)`
-/

namespace A276812.P4115649407647340675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125266 (n + 3)) (A125266 (n + 2))

end

end A276812.P4115649407647340675

namespace A276812

/-- `A125266(n+3)%A125266(n+2)` -/
def P4115649407647340675.Spec : Prop :=
  ∀ n, P4115649407647340675.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P15185628402843735477

`Δ[A000040(n+2)]%Δ[A000040(n+1)]`
-/

namespace A276812.P15185628402843735477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A276812.P15185628402843735477

namespace A276812

/-- `Δ[A000040(n+2)]%Δ[A000040(n+1)]` -/
def P15185628402843735477.Spec : Prop :=
  ∀ n, P15185628402843735477.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P14968062493357877255

`(A000040(n+3)-A000040(n+1))%(A141042(n+1)/(n+1))`
-/

namespace A276812.P14968062493357877255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 3) - A000040 (n + 1)) (SequenceMachineLib.roundAway ((A141042 (n + 1) : ℚ) / (n + 1 : ℚ)))

end

end A276812.P14968062493357877255

namespace A276812

/-- `(A000040(n+3)-A000040(n+1))%(A141042(n+1)/(n+1))` -/
def P14968062493357877255.Spec : Prop :=
  ∀ n, P14968062493357877255.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P11135292323184790884

`A166597(p?[2*n+1])%(A000040(n+2)-A000040(n+1))`
-/

namespace A276812.P11135292323184790884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166597 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) (A000040 (n + 2) - A000040 (n + 1))

end

end A276812.P11135292323184790884

namespace A276812

/-- `A166597(p?[2*n+1])%(A000040(n+2)-A000040(n+1))` -/
def P11135292323184790884.Spec : Prop :=
  ∀ n, P11135292323184790884.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P2722672296112566217

`A031131(n+1)%A219606(A005408(n))`
-/

namespace A276812.P2722672296112566217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031131 (n + 1)) (A219606 (A005408 n).toNat)

end

end A276812.P2722672296112566217

namespace A276812

/-- `A031131(n+1)%A219606(A005408(n))` -/
def P2722672296112566217.Spec : Prop :=
  ∀ n, P2722672296112566217.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P13470346335385018348

`A001223(n+2)%A219606(A005408(n))`
-/

namespace A276812.P13470346335385018348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 2)) (A219606 (A005408 n).toNat)

end

end A276812.P13470346335385018348

namespace A276812

/-- `A001223(n+2)%A219606(A005408(n))` -/
def P13470346335385018348.Spec : Prop :=
  ∀ n, P13470346335385018348.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P12030218802415612383

`Δ[A001043(n+1)]%A219606(A005408(n))`
-/

namespace A276812.P12030218802415612383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A219606 (A005408 n).toNat)

end

end A276812.P12030218802415612383

namespace A276812

/-- `Δ[A001043(n+1)]%A219606(A005408(n))` -/
def P12030218802415612383.Spec : Prop :=
  ∀ n, P12030218802415612383.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P17656249088245928682

`Δ[A045344(n+1)]%A219606(A005408(n))`
-/

namespace A276812.P17656249088245928682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A219606 (A005408 n).toNat)

end

end A276812.P17656249088245928682

namespace A276812

/-- `Δ[A045344(n+1)]%A219606(A005408(n))` -/
def P17656249088245928682.Spec : Prop :=
  ∀ n, P17656249088245928682.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P10257286540466472612

`Δ[A065091(n+1)]%A219606(A005408(n))`
-/

namespace A276812.P10257286540466472612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A219606 (A005408 n).toNat)

end

end A276812.P10257286540466472612

namespace A276812

/-- `Δ[A065091(n+1)]%A219606(A005408(n))` -/
def P10257286540466472612.Spec : Prop :=
  ∀ n, P10257286540466472612.a n = A276812 (n + 1)

end A276812

/-! ## A276812.P16385390552347612401

`Δ[A000040(n+2)]%A219606(A005408(n))`
-/

namespace A276812.P16385390552347612401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A219606 (A005408 n).toNat)

end

end A276812.P16385390552347612401

namespace A276812

/-- `Δ[A000040(n+2)]%A219606(A005408(n))` -/
def P16385390552347612401.Spec : Prop :=
  ∀ n, P16385390552347612401.a n = A276812 (n + 1)

end A276812

/-!
# A276818: Composite numbers n such that b^gpf(n) == b (mod n) for every integer b, where gpf(n) = A006530(n).

The programs for A276818, there is no canonical definition to state claims against.
-/

/-! ## A276818.P2327686178478492214

`∩[A326535(n+1), A340058(n+1)]`
-/

namespace A276818.P2327686178478492214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276818.P2327686178478492214

/-! ## A276818.P198843082634224752

`∩[A298540(n+1), A340058(n+2)]`
-/

namespace A276818.P198843082634224752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340058 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276818.P198843082634224752

/-! ## A276818.P13618146826206931144

`filter[A325389(n+3), A391844(#)]`
-/

namespace A276818.P13618146826206931144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A276818.P13618146826206931144

/-! ## A276818.P17094142859392234511

`filter[A390364(n+3), A391844(#)]`
-/

namespace A276818.P17094142859392234511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390364 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A276818.P17094142859392234511

/-! ## A276818.P9556326110570986415

`A120944(A351467(n+1)%A333445(2*(n+2)))`
-/

namespace A276818.P9556326110570986415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (Int.tmod (A351467 (n + 1)) (A333445 (2 * (n + 2)))).toNat

end

end A276818.P9556326110570986415

/-!
# A276819: a(n) = (9*n^2 - n)/2 + 1.

The programs for A276819, the canonical program `A276819.P10114342423501417068` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276819 has offset 0).

The definition of A276819 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n²-n)/2+1` (program `A276819.P6768116376441466176`, by `A276819.P6768116376441466176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276819.P6768116376441466176

`(9*n²-n)/2+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276819.P6768116376441466176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 + 1

end

end A276819.P6768116376441466176

namespace A276819

/-- `(9*n²-n)/2+1` -/
def P6768116376441466176.Spec : Prop :=
  ∀ n, P6768116376441466176.a n = (A276819 n : ℚ)

theorem P6768116376441466176.correct : P6768116376441466176.Spec := by
  intro n
  induction n with
  | zero => simp [A276819, A276819.P6768116376441466176.a, A276819.P10114342423501417068.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A276819, Nat.add_sub_cancel, A276819.P6768116376441466176.a, A276819.P10114342423501417068.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A276819

/-! ## A276819.P12622005903220081138

`∑[a(n-1)+9]` with `a(0)=1, a(1)=4`
-/

namespace A276819.P12622005903220081138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276819.P12622005903220081138

namespace A276819

/-- `∑[a(n-1)+9]` -/
def P12622005903220081138.Spec : Prop :=
  ∀ n, (P12622005903220081138.a n : ℤ) = A276819 n

end A276819

/-! ## A276819.P5183656271793820085

`∑[ogf((1+2x+6x^2)/(1-2x+x^2))]`
-/

namespace A276819.P5183656271793820085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276819.P5183656271793820085

namespace A276819

/-- `∑[ogf((1+2x+6x^2)/(1-2x+x^2))]` -/
def P5183656271793820085.Spec : Prop :=
  ∀ n, P5183656271793820085.a n = A276819 n

end A276819

/-! ## A276819.P8369979209507976273

`ogf((1+2x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A276819.P8369979209507976273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 6] [1, -3, 3, -1] n

end

end A276819.P8369979209507976273

namespace A276819

/-- `ogf((1+2x+6x^2)/(1-3x+3x^2-x^3))` -/
def P8369979209507976273.Spec : Prop :=
  ∀ n, P8369979209507976273.a n = A276819 n

end A276819

/-! ## A276819.P2837868513548290052

`∑[lcm(3, 2*n+n-1)-2]`
-/

namespace A276819.P2837868513548290052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 ((2 * n : ℤ) + ((n : ℤ) - 1)) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276819.P2837868513548290052

namespace A276819

/-- `∑[lcm(3, 2*n+n-1)-2]` -/
def P2837868513548290052.Spec : Prop :=
  ∀ n, P2837868513548290052.a n = A276819 n

end A276819

/-! ## A276819.P2670739488534477950

`ceil((C(9*n, 2)-2)/9+γ)`
-/

namespace A276819.P2670739488534477950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((Nat.choose (9 * n) 2 : ℤ) - 2 : ℚ) / 9 : ℝ) + Real.eulerMascheroniConstant⌉

end

end A276819.P2670739488534477950

namespace A276819

/-- `ceil((C(9*n, 2)-2)/9+γ)` -/
def P2670739488534477950.Spec : Prop :=
  ∀ n, P2670739488534477950.a n = A276819 n

end A276819

/-! ## A276819.P10114342423501417068

`floor(a(n-1)-(5-9*n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276819

/-- `floor(a(n-1)-(5-9*n))` -/
def P10114342423501417068.Spec : Prop :=
  ∀ n, P10114342423501417068.a n = A276819 n

theorem P10114342423501417068.correct : P10114342423501417068.Spec := by
  intro n
  simp only [A276819]

end A276819

/-! ## A276819.P11152167479853715593

`abs(n-A006137(n))`
-/

namespace A276819.P11152167479853715593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A006137 n|

end

end A276819.P11152167479853715593

namespace A276819

/-- `abs(n-A006137(n))` -/
def P11152167479853715593.Spec : Prop :=
  ∀ n, P11152167479853715593.a n = A276819 n

end A276819

/-! ## A276819.P11377841473311193485

`ceil((A010002(n)-n)/2)`
-/

namespace A276819.P11377841473311193485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010002 n - (n : ℤ) : ℚ) / 2⌉

end

end A276819.P11377841473311193485

namespace A276819

/-- `ceil((A010002(n)-n)/2)` -/
def P11377841473311193485.Spec : Prop :=
  ∀ n, P11377841473311193485.a n = A276819 n

end A276819

/-! ## A276819.P10575128708086587062

`round((A247792(n)-n)/2)`
-/

namespace A276819.P10575128708086587062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A247792 n - (n : ℤ) : ℚ) / 2)

end

end A276819.P10575128708086587062

namespace A276819

/-- `round((A247792(n)-n)/2)` -/
def P10575128708086587062.Spec : Prop :=
  ∀ n, P10575128708086587062.a n = A276819 n

end A276819

/-! ## A276819.P2396619102522524231

`∑[A179805(n+1)-2]`
-/

namespace A276819.P2396619102522524231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276819.P2396619102522524231

namespace A276819

/-- `∑[A179805(n+1)-2]` -/
def P2396619102522524231.Spec : Prop :=
  ∀ n, P2396619102522524231.a n = A276819 n

end A276819

/-! ## A276819.P10482547017902756431

`(Δ[A226450(n)]+1)/2`
-/

namespace A276819.P10482547017902756431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226450 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A276819.P10482547017902756431

namespace A276819

/-- `(Δ[A226450(n)]+1)/2` -/
def P10482547017902756431.Spec : Prop :=
  ∀ n, P10482547017902756431.a n = (A276819 n : ℚ)

theorem P10482547017902756431.correct : P10482547017902756431.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A276819, Nat.add_sub_cancel, A276819.P10482547017902756431.f1, A276819.P10482547017902756431.a, A276819.P10114342423501417068.a, A226450, A226450.P15708609786639552732.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A276819, Nat.add_sub_cancel, A276819.P10482547017902756431.f1, A276819.P10482547017902756431.a, A276819.P10114342423501417068.a, A226450, A226450.P15708609786639552732.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A276819

/-! ## A276819.P5849539957354802643

`Δ[A002411(n)+(n-2)*(n²-n)]`
-/

namespace A276819.P5849539957354802643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + ((n : ℤ) - 2) * ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276819.P5849539957354802643

namespace A276819

/-- `Δ[A002411(n)+(n-2)*(n²-n)]` -/
def P5849539957354802643.Spec : Prop :=
  ∀ n, P5849539957354802643.a n = A276819 n

end A276819

/-! ## A276819.P10746567568880990885

`Δ[A007531(n)+A002411(n)]`
-/

namespace A276819.P10746567568880990885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + A002411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276819.P10746567568880990885

namespace A276819

/-- `Δ[A007531(n)+A002411(n)]` -/
def P10746567568880990885.Spec : Prop :=
  ∀ n, P10746567568880990885.a n = A276819 n

end A276819

/-! ## A276819.P4122436594170974095

`∑[A135042(2*n)-n]`
-/

namespace A276819.P4122436594170974095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276819.P4122436594170974095

namespace A276819

/-- `∑[A135042(2*n)-n]` -/
def P4122436594170974095.Spec : Prop :=
  ∀ n, P4122436594170974095.a n = A276819 n

end A276819

/-! ## A276819.P5843392112665039828

`record[A000217(A168237(n))-(n-1)]`
-/

namespace A276819.P5843392112665039828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A168237 n).toNat - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276819.P5843392112665039828

namespace A276819

/-- `record[A000217(A168237(n))-(n-1)]` -/
def P5843392112665039828.Spec : Prop :=
  ∀ n, P5843392112665039828.a n = A276819 n

end A276819

/-! ## A276819.P16780558309640071052

`∑[A016777(abs(1-3*n)-1)]`
-/

namespace A276819.P16780558309640071052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (|1 - (3 * n : ℤ)| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276819.P16780558309640071052

namespace A276819

/-- `∑[A016777(abs(1-3*n)-1)]` -/
def P16780558309640071052.Spec : Prop :=
  ∀ n, P16780558309640071052.a n = A276819 n

end A276819

/-! ## A276819.P14868875122345197856

`∑[record[A078688(n)]+n]`
-/

namespace A276819.P14868875122345197856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276819.P14868875122345197856

namespace A276819

/-- `∑[record[A078688(n)]+n]` -/
def P14868875122345197856.Spec : Prop :=
  ∀ n, P14868875122345197856.a n = A276819 n

end A276819

/-! ## A276819.P2756856736727601623

`∑[A033627(A008486(n))]`
-/

namespace A276819.P2756856736727601623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276819.P2756856736727601623

namespace A276819

/-- `∑[A033627(A008486(n))]` -/
def P2756856736727601623.Spec : Prop :=
  ∀ n, P2756856736727601623.a n = A276819 n

end A276819

/-! ## A276819.P14513941473061385944

`∑[record[A266285(3*n)]]`
-/

namespace A276819.P14513941473061385944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276819.P14513941473061385944

namespace A276819

/-- `∑[record[A266285(3*n)]]` -/
def P14513941473061385944.Spec : Prop :=
  ∀ n, P14513941473061385944.a n = A276819 n

end A276819

/-!
# A276822: Complement of A063662.

The programs for A276822, there is no canonical definition to state claims against.
-/

/-! ## A276822.P9059550374500944427

`comp[A063662(n)]`
-/

namespace A276822.P9059550374500944427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063662 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276822.P9059550374500944427

/-! ## A276822.P14951824128507011117

`lt[sqrt(A329267(n)), A225693(n)]`
-/

namespace A276822.P14951824128507011117
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A329267 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A276822.P14951824128507011117

/-! ## A276822.P8731988814553969381

`lt[log2(A117462(n+1)), A225693(n)]`
-/

namespace A276822.P8731988814553969381
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A117462 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A276822.P8731988814553969381

/-! ## A276822.P10843282878537009415

`lt[atan(A118511(n+1)), A225693(n)]`
-/

namespace A276822.P10843282878537009415
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A118511 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A276822.P10843282878537009415

/-! ## A276822.P1469050516527263479

`lt[atan(A173883(n+2)), A225693(n)]`
-/

namespace A276822.P1469050516527263479
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A173883 (n + 2) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A276822.P1469050516527263479

/-!
# A276824: a(n) = p-s, where s = Sum_{i=1..n} prime(i) and p = primepi(prime(n)^2).

The programs for A276824, the canonical program `A276824.P1865868106888623118` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276824 has offset 1).

The definition of A276824 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276824.P1865868106888623118

`A000879(n+1)-A007504(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A276824

/-- `A000879(n+1)-A007504(n+1)` -/
def P1865868106888623118.Spec : Prop :=
  ∀ n, P1865868106888623118.a n = A276824 (n + 1)

theorem P1865868106888623118.correct : P1865868106888623118.Spec := by
  intro n
  simp only [A276824, Nat.add_sub_cancel]

end A276824

/-! ## A276824.P1410394499260368134

`∑[A050216(n)-Δ[A007504(n)]]`
-/

namespace A276824.P1410394499260368134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276824.P1410394499260368134

namespace A276824

/-- `∑[A050216(n)-Δ[A007504(n)]]` -/
def P1410394499260368134.Spec : Prop :=
  ∀ n, P1410394499260368134.a n = A276824 (n + 1)

end A276824

/-! ## A276824.P15770183815388342280

`∑[A050216(n)-A000040(n+1)]`
-/

namespace A276824.P15770183815388342280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276824.P15770183815388342280

namespace A276824

/-- `∑[A050216(n)-A000040(n+1)]` -/
def P15770183815388342280.Spec : Prop :=
  ∀ n, P15770183815388342280.a n = A276824 (n + 1)

end A276824

/-! ## A276824.P13134896403653756801

`∑[A050216(n)]-A007504(n+1)`
-/

namespace A276824.P13134896403653756801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007504 (n + 1)

end

end A276824.P13134896403653756801

namespace A276824

/-- `∑[A050216(n)]-A007504(n+1)` -/
def P13134896403653756801.Spec : Prop :=
  ∀ n, P13134896403653756801.a n = A276824 (n + 1)

end A276824

/-! ## A276824.P10734780373701341395

`∑[A050216(n)-record[A006530(n+2)]]`
-/

namespace A276824.P10734780373701341395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276824.P10734780373701341395

namespace A276824

/-- `∑[A050216(n)-record[A006530(n+2)]]` -/
def P10734780373701341395.Spec : Prop :=
  ∀ n, P10734780373701341395.a n = A276824 (n + 1)

end A276824

/-! ## A276824.P687795990783258049

`∑[A050216(n)-record[A020639(n+2)]]`
-/

namespace A276824.P687795990783258049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276824.P687795990783258049

namespace A276824

/-- `∑[A050216(n)-record[A020639(n+2)]]` -/
def P687795990783258049.Spec : Prop :=
  ∀ n, P687795990783258049.a n = A276824 (n + 1)

end A276824

/-! ## A276824.P2035276415188520853

`A000879(n+1)-∑[A000040(n+1)]`
-/

namespace A276824.P2035276415188520853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276824.P2035276415188520853

namespace A276824

/-- `A000879(n+1)-∑[A000040(n+1)]` -/
def P2035276415188520853.Spec : Prop :=
  ∀ n, P2035276415188520853.a n = A276824 (n + 1)

end A276824

/-! ## A276824.P16245061532684003805

`A000879(n+1)-∑[record[A006530(n+2)]]`
-/

namespace A276824.P16245061532684003805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276824.P16245061532684003805

namespace A276824

/-- `A000879(n+1)-∑[record[A006530(n+2)]]` -/
def P16245061532684003805.Spec : Prop :=
  ∀ n, P16245061532684003805.a n = A276824 (n + 1)

end A276824

/-! ## A276824.P3430220196605573420

`A000879(n+1)-∑[record[A020639(n+2)]]`
-/

namespace A276824.P3430220196605573420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276824.P3430220196605573420

namespace A276824

/-- `A000879(n+1)-∑[record[A020639(n+2)]]` -/
def P3430220196605573420.Spec : Prop :=
  ∀ n, P3430220196605573420.a n = A276824 (n + 1)

end A276824

/-! ## A276824.P14903469772951016391

`A062773(n+1)-1-∑[record[A020639(n+2)]]`
-/

namespace A276824.P14903469772951016391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) - 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276824.P14903469772951016391

namespace A276824

/-- `A062773(n+1)-1-∑[record[A020639(n+2)]]` -/
def P14903469772951016391.Spec : Prop :=
  ∀ n, P14903469772951016391.a n = A276824 (n + 1)

end A276824

/-! ## A276824.P13888465290659419549

`A181962(n+1)-A060939(n+1)`
-/

namespace A276824.P13888465290659419549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181962 (n + 1) - A060939 (n + 1)

end

end A276824.P13888465290659419549

namespace A276824

/-- `A181962(n+1)-A060939(n+1)` -/
def P13888465290659419549.Spec : Prop :=
  ∀ n, P13888465290659419549.a n = A276824 (n + 1)

theorem P13888465290659419549.correct : P13888465290659419549.Spec := by
  intro n
  simp only [A276824, Nat.add_sub_cancel, A276824.P13888465290659419549.a, A276824.P1865868106888623118.a, A000879, A000879.P11642258310759995278.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A060939, A060939.P1241768612471461444.a, A181962, A181962.P15147201020200271264.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A182986, A182986.P2625431067462217415.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A276824

/-! ## A276824.P7670029422945316749

`A079047(n+1)-A101301(n+1)`
-/

namespace A276824.P7670029422945316749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079047 (n + 1) - A101301 (n + 1)

end

end A276824.P7670029422945316749

namespace A276824

/-- `A079047(n+1)-A101301(n+1)` -/
def P7670029422945316749.Spec : Prop :=
  ∀ n, P7670029422945316749.a n = A276824 (n + 1)

end A276824

/-!
# A276825: Number of ways to write n as x^3 + P_2, where x and P_2 are positive integers with P_2 a product of at most two primes.

The programs for A276825, there is no canonical definition to state claims against.
-/

/-! ## A276825.P14598637609691713344

`gcd(A048766(n), A242390(A049450(n)))`
-/

namespace A276825.P14598637609691713344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048766 n) (A242390 (A049450 n).toNat)

end

end A276825.P14598637609691713344

/-! ## A276825.P656209309915748565

`A124766(or(A002487(n), A192015(n+1)))`
-/

namespace A276825.P656209309915748565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (Int.lor (A002487 n) (A192015 (n + 1))).toNat

end

end A276825.P656209309915748565

/-! ## A276825.P18412726643468428581

`gcd(A069160(n+1), A297045(A201598(n+1)))`
-/

namespace A276825.P18412726643468428581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069160 (n + 1)) (A297045 (A201598 (n + 1)).toNat)

end

end A276825.P18412726643468428581

/-!
# A276827: Primes p such that the greatest prime factor of 3*p+1 is at most 5.

The programs for A276827, there is no canonical definition to state claims against.
-/

/-! ## A276827.P12707321974471898926

`p?[floor(A054901(n+1)/3)]`
-/

namespace A276827.P12707321974471898926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054901 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276827.P12707321974471898926

/-! ## A276827.P2517250641403492346

`p?[floor(A054774(n+1)/6)]`
-/

namespace A276827.P2517250641403492346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054774 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276827.P2517250641403492346

/-! ## A276827.P5862939721285063807

`p?[A026142(A003592(n+1))]`
-/

namespace A276827.P5862939721285063807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (A003592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276827.P5862939721285063807

/-! ## A276827.P9126813335915836968

`p?[A004396(A054774(n+1))]`
-/

namespace A276827.P9126813335915836968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A054774 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276827.P9126813335915836968

/-! ## A276827.P13250551890074529219

`p?[A092092(A306074(n+1))]`
-/

namespace A276827.P13250551890074529219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A306074 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276827.P13250551890074529219

/-!
# A276830: Number of ways to write n as ((p-1)/2)^2 + P_2, where p is an odd prime and P_2 is a product of at most two primes.

The programs for A276830, there is no canonical definition to state claims against.
-/

/-! ## A276830.P4986289402013252811

`A001221(or(A057508(n), A147655(n)))`
-/

namespace A276830.P4986289402013252811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A057508 n) (A147655 n)).toNat

end

end A276830.P4986289402013252811

/-! ## A276830.P8272554350614150224

`A001221(∑[A139338(A072166(n+1))])`
-/

namespace A276830.P8272554350614150224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (A072166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276830.P8272554350614150224

/-! ## A276830.P16875191417715095136

`A001221(or(A036633(n), A291924(n+1)))`
-/

namespace A276830.P16875191417715095136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A036633 n) (A291924 (n + 1))).toNat

end

end A276830.P16875191417715095136

/-! ## A276830.P3056131034309066362

`A060500(A050680(n+1)*A105612(n+1))`
-/

namespace A276830.P3056131034309066362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A050680 (n + 1) * A105612 (n + 1)).toNat

end

end A276830.P3056131034309066362

/-!
# A276833: Sum of mu(d)*phi(d) over divisors d of n.

The programs for A276833, the canonical program `A276833.P12354155461335346744` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276833 has offset 1).

The definition of A276833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276833.P12354155461335346744

`∏{p}[n+1, 2-#]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276833

/-- `∏{p}[n+1, 2-#]` -/
def P12354155461335346744.Spec : Prop :=
  ∀ n, P12354155461335346744.a n = A276833 (n + 1)

theorem P12354155461335346744.correct : P12354155461335346744.Spec := by
  intro n
  simp only [A276833, Nat.add_sub_cancel]

end A276833

/-! ## A276833.P2772961632796319238

`∑{d}[n+1, A097945(#)]`
-/

namespace A276833.P2772961632796319238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A097945 d

end

end A276833.P2772961632796319238

namespace A276833

/-- `∑{d}[n+1, A097945(#)]` -/
def P2772961632796319238.Spec : Prop :=
  ∀ n, P2772961632796319238.a n = A276833 (n + 1)

end A276833

/-! ## A276833.P8344361784108470686

`A130054(∏{p}[n+1, #])`
-/

namespace A276833.P8344361784108470686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130054 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A276833.P8344361784108470686

namespace A276833

/-- `A130054(∏{p}[n+1, #])` -/
def P8344361784108470686.Spec : Prop :=
  ∀ n, P8344361784108470686.a n = A276833 (n + 1)

end A276833

/-! ## A276833.P13302311149542200568

`A130054(A007947(n+1))`
-/

namespace A276833.P13302311149542200568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130054 (A007947 (n + 1)).toNat

end

end A276833.P13302311149542200568

namespace A276833

/-- `A130054(A007947(n+1))` -/
def P13302311149542200568.Spec : Prop :=
  ∀ n, P13302311149542200568.a n = A276833 (n + 1)

end A276833

/-! ## A276833.P10595698149078098893

`∑{d}[A007947(n+1), A023900(#)]`
-/

namespace A276833.P10595698149078098893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A023900 d

end

end A276833.P10595698149078098893

namespace A276833

/-- `∑{d}[A007947(n+1), A023900(#)]` -/
def P10595698149078098893.Spec : Prop :=
  ∀ n, P10595698149078098893.a n = A276833 (n + 1)

end A276833

/-! ## A276833.P12046956836474571921

`∑{d}[A007947(n+1), A323407(#)]`
-/

namespace A276833.P12046956836474571921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323407 d

end

end A276833.P12046956836474571921

namespace A276833

/-- `∑{d}[A007947(n+1), A323407(#)]` -/
def P12046956836474571921.Spec : Prop :=
  ∀ n, P12046956836474571921.a n = A276833 (n + 1)

end A276833

/-! ## A276833.P3525768026283866128

`A003966(n+1)/A349340(n+1)`
-/

namespace A276833.P3525768026283866128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003966 (n + 1) : ℚ) / (A349340 (n + 1) : ℚ)

end

end A276833.P3525768026283866128

namespace A276833

/-- `A003966(n+1)/A349340(n+1)` -/
def P3525768026283866128.Spec : Prop :=
  ∀ n, P3525768026283866128.a n = (A276833 (n + 1) : ℚ)

end A276833

/-! ## A276833.P17578924414617286898

`∑{d}[n+1, A003557(#)*A023900((n+1)/#)]`
-/

namespace A276833.P17578924414617286898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276833.P17578924414617286898

namespace A276833

/-- `∑{d}[n+1, A003557(#)*A023900((n+1)/#)]` -/
def P17578924414617286898.Spec : Prop :=
  ∀ n, P17578924414617286898.a n = A276833 (n + 1)

end A276833

/-! ## A276833.P15774755778038677714

`∑{d}[n+1, A000005(#)*A341635((n+1)/#)]`
-/

namespace A276833.P15774755778038677714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A341635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276833.P15774755778038677714

namespace A276833

/-- `∑{d}[n+1, A000005(#)*A341635((n+1)/#)]` -/
def P15774755778038677714.Spec : Prop :=
  ∀ n, P15774755778038677714.a n = A276833 (n + 1)

end A276833

/-! ## A276833.P13276450033634291740

`∑{d}[n+1, A055615(#)*A326306((n+1)/#)]`
-/

namespace A276833.P13276450033634291740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A326306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276833.P13276450033634291740

namespace A276833

/-- `∑{d}[n+1, A055615(#)*A326306((n+1)/#)]` -/
def P13276450033634291740.Spec : Prop :=
  ∀ n, P13276450033634291740.a n = A276833 (n + 1)

end A276833

/-! ## A276833.P13652440544021545153

`∑{d}[n+1, A062953(#)*A349356((n+1)/#)]`
-/

namespace A276833.P13652440544021545153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062953 d * A349356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276833.P13652440544021545153

namespace A276833

/-- `∑{d}[n+1, A062953(#)*A349356((n+1)/#)]` -/
def P13652440544021545153.Spec : Prop :=
  ∀ n, P13652440544021545153.a n = A276833 (n + 1)

end A276833

/-! ## A276833.P8438330920816079518

`∑{d}[n+1, A130054(#)*A300717((n+1)/#)]`
-/

namespace A276833.P8438330920816079518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A300717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276833.P8438330920816079518

namespace A276833

/-- `∑{d}[n+1, A130054(#)*A300717((n+1)/#)]` -/
def P8438330920816079518.Spec : Prop :=
  ∀ n, P8438330920816079518.a n = A276833 (n + 1)

end A276833

/-! ## A276833.P9496088000718926062

`A058026(A007947(n+1))*A076479(n+1)`
-/

namespace A276833.P9496088000718926062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (A007947 (n + 1)).toNat * A076479 (n + 1)

end

end A276833.P9496088000718926062

namespace A276833

/-- `A058026(A007947(n+1))*A076479(n+1)` -/
def P9496088000718926062.Spec : Prop :=
  ∀ n, P9496088000718926062.a n = A276833 (n + 1)

end A276833

/-! ## A276833.P6789985617615145234

`A130054(A088835((n+1)²))`
-/

namespace A276833.P6789985617615145234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130054 (A088835 ((n + 1) ^ 2)).toNat

end

end A276833.P6789985617615145234

namespace A276833

/-- `A130054(A088835((n+1)²))` -/
def P6789985617615145234.Spec : Prop :=
  ∀ n, P6789985617615145234.a n = A276833 (n + 1)

end A276833

/-!
# A276835: Numerator of a modified exponentiated von Mangoldt function defined recursively.

The programs for A276835, there is no canonical definition to state claims against.
-/

/-! ## A276835.P9244486425800158008

`gcd(A002034(n+1), A053447(A005179(n+1)))`
-/

namespace A276835.P9244486425800158008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002034 (n + 1)) (A053447 (A005179 (n + 1)).toNat)

end

end A276835.P9244486425800158008

/-! ## A276835.P5048260723366605972

`A014963((n+1)*val(n+1, 2)!!)`
-/

namespace A276835.P5048260723366605972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n + 1) * Nat.factorial (Nat.factorial (SequenceMachineLib.valuation (n + 1) 2)))

end

end A276835.P5048260723366605972

/-! ## A276835.P3360517247802669507

`A014963(lcm(n+1, val(n+1, 2)!!))`
-/

namespace A276835.P3360517247802669507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lcm (n + 1) (Nat.factorial (Nat.factorial (SequenceMachineLib.valuation (n + 1) 2))))

end

end A276835.P3360517247802669507

/-! ## A276835.P8892218562914266848

`gcd(∏{p}[n+1, #-1]+1, A066745(n+1))`
-/

namespace A276835.P8892218562914266848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) + 1) (A066745 (n + 1))

end

end A276835.P8892218562914266848

/-! ## A276835.P940517650897683202

`∏{p}[n+1, #]^A243775(∏{e}[n+1, #+1])`
-/

namespace A276835.P940517650897683202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A243775 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + 10) : ℤ)

end

end A276835.P940517650897683202

/-!
# A276836: Denominator of modified von Mangoldt function defined recursively.

The programs for A276836, there is no canonical definition to state claims against.
-/

/-! ## A276836.P3727465776990111366

`∏{e}[ceil(2^(n-1)*Δ[n²]), A079880(#)]`
-/

namespace A276836.P3727465776990111366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A079880 (Nat.factorization (f1 n).natAbs p)

end

end A276836.P3727465776990111366

/-! ## A276836.P7064536276083136770

`∏{e}[A052951(n), A280497(#)]`
-/

namespace A276836.P7064536276083136770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A280497 (Nat.factorization (f1 n).natAbs p)

end

end A276836.P7064536276083136770

/-! ## A276836.P13201129475770193757

`A032742(A077168(abs(2-n)))`
-/

namespace A276836.P13201129475770193757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A077168 |2 - (n : ℤ)|.toNat).toNat

end

end A276836.P13201129475770193757

/-! ## A276836.P9705418633849226665

`A032742(∑[A272925(n)%2])`
-/

namespace A276836.P9705418633849226665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272925 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276836.P9705418633849226665

/-! ## A276836.P15128332659656469563

`∏{e}[A128135(n+1), A032742(#)]`
-/

namespace A276836.P15128332659656469563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A032742 (Nat.factorization (f1 n).natAbs p)

end

end A276836.P15128332659656469563

/-!
# A276837: Number A(n,k) of permutations of [n] such that for each cycle c the smallest integer interval containing all elements of c has at most k elements; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A276837, there is no canonical definition to state claims against.
-/

/-! ## A276837.P12593092192679245961

`A162351(A293960(n))`
-/

namespace A276837.P12593092192679245961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (A293960 n).toNat

end

end A276837.P12593092192679245961

/-! ## A276837.P1577284307774608110

`A139789(A293960(n)+2)`
-/

namespace A276837.P1577284307774608110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139789 (A293960 n + 2).toNat

end

end A276837.P1577284307774608110

/-! ## A276837.P6967827716883368695

`A285189(2*A293960(n)-A143841(n))`
-/

namespace A276837.P6967827716883368695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (2 * A293960 n - A143841 n).toNat

end

end A276837.P6967827716883368695

/-!
# A276838: Number of permutations of [n] such that for each cycle c the smallest integer interval containing all elements of c has at most four elements.

The programs for A276838, there is no canonical definition to state claims against.
-/

/-! ## A276838.P13728959408285989521

`A276837(A052905(n+2))`
-/

namespace A276838.P13728959408285989521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A052905 (n + 2)).toNat

end

end A276838.P13728959408285989521

/-! ## A276838.P11022617831305683312

`A276837(A056115(n)+10)`
-/

namespace A276838.P11022617831305683312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A056115 n + 10).toNat

end

end A276838.P11022617831305683312

/-! ## A276838.P5840559054508985021

`A276837(eq[4, A025581(n)])`
-/

namespace A276838.P5840559054508985021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276838.P5840559054508985021

/-! ## A276838.P18139192919102560539

`A276837(eq[5, A193739(n)])`
-/

namespace A276838.P18139192919102560539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276838.P18139192919102560539

/-! ## A276838.P15939129655053758329

`A276837(eq[16, A130321(n)])`
-/

namespace A276838.P15939129655053758329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276838.P15939129655053758329

/-!
# A276839: Number of permutations of [n] such that for each cycle c the smallest integer interval containing all elements of c has at most five elements.

The programs for A276839, there is no canonical definition to state claims against.
-/

/-! ## A276839.P18271172768754506066

`A276837(A055999(n+3))`
-/

namespace A276839.P18271172768754506066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A055999 (n + 3)).toNat

end

end A276839.P18271172768754506066

/-! ## A276839.P17158138342620139363

`A276837(A134227(n+4))`
-/

namespace A276839.P17158138342620139363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A134227 (n + 4)).toNat

end

end A276839.P17158138342620139363

/-! ## A276839.P4949987835374962940

`A276837(A056119(n)+15)`
-/

namespace A276839.P4949987835374962940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A056119 n + 15).toNat

end

end A276839.P4949987835374962940

/-! ## A276839.P3460515392256357665

`A276837(eq[5, A025581(n)])`
-/

namespace A276839.P3460515392256357665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276839.P3460515392256357665

/-! ## A276839.P14848882479311739060

`A276837(eq[6, A193739(n)])`
-/

namespace A276839.P14848882479311739060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276839.P14848882479311739060

/-!
# A276840: Number of permutations of [n] such that for each cycle c the smallest integer interval containing all elements of c has at most six elements.

The programs for A276840, there is no canonical definition to state claims against.
-/

/-! ## A276840.P1921471122598592951

`A276837(C(n+7, 2)+n)`
-/

namespace A276840.P1921471122598592951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (Nat.choose (n + 7) 2 + n)

end

end A276840.P1921471122598592951

/-! ## A276840.P2117431644613989894

`A276837(2*n+∑[n+5]+16)`
-/

namespace A276840.P2117431644613989894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 16))

end

end A276840.P2117431644613989894

/-! ## A276840.P6501372497686854402

`A000027(A276841(n+1)/(n+1))`
-/

namespace A276840.P6501372497686854402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A276841 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A276840.P6501372497686854402

/-! ## A276840.P9768896498179740687

`A331299(A276841(n+1)/(n+1))`
-/

namespace A276840.P9768896498179740687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331299 (SequenceMachineLib.roundAway ((A276841 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A276840.P9768896498179740687

/-! ## A276840.P1657598814945184177

`A028310(A276841(n+1)/(n+1))`
-/

namespace A276840.P1657598814945184177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A276841 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A276840.P1657598814945184177

/-!
# A276841: Number of permutations of [n] such that for each cycle c the smallest integer interval containing all elements of c has at most seven elements.

The programs for A276841, there is no canonical definition to state claims against.
-/

/-! ## A276841.P4661651905395799566

`A276837(A155212(n+4))`
-/

namespace A276841.P4661651905395799566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A155212 (n + 4)).toNat

end

end A276841.P4661651905395799566

/-! ## A276841.P1925942878311364491

`A276837(eq[7, A025581(n)])`
-/

namespace A276841.P1925942878311364491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276841.P1925942878311364491

/-! ## A276841.P14675137732276593092

`A276837(eq[8, A193739(n)])`
-/

namespace A276841.P14675137732276593092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276841.P14675137732276593092

/-! ## A276841.P11593298611828491942

`A276837(A000096(n+7)-7)`
-/

namespace A276841.P11593298611828491942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A000096 (n + 7) - 7).toNat

end

end A276841.P11593298611828491942

/-! ## A276841.P17265927872144276004

`A276837(A000217(n+8)-8)`
-/

namespace A276841.P17265927872144276004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A000217 (n + 8) - 8).toNat

end

end A276841.P17265927872144276004

/-!
# A276842: Number of permutations of [n] such that for each cycle c the smallest integer interval containing all elements of c has at most eight elements.

The programs for A276842, there is no canonical definition to state claims against.
-/

/-! ## A276842.P6028354675705271403

`A276837(C(n+9, 2)+n)`
-/

namespace A276842.P6028354675705271403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (Nat.choose (n + 9) 2 + n)

end

end A276842.P6028354675705271403

/-! ## A276842.P4652333382300525165

`A276837(eq[8, A025581(n)])`
-/

namespace A276842.P4652333382300525165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276842.P4652333382300525165

/-! ## A276842.P15961284578306628740

`A276837(A000096(n+8)-8)`
-/

namespace A276842.P15961284578306628740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A000096 (n + 8) - 8).toNat

end

end A276842.P15961284578306628740

/-! ## A276842.P9943225279970361731

`A276837(A000217(n+9)-9)`
-/

namespace A276842.P9943225279970361731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A000217 (n + 9) - 9).toNat

end

end A276842.P9943225279970361731

/-! ## A276842.P10477339706990044587

`A276837(A133263(n+9)-11)`
-/

namespace A276842.P10477339706990044587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A133263 (n + 9) - 11).toNat

end

end A276842.P10477339706990044587

/-!
# A276843: Number of permutations of [n] such that for each cycle c the smallest integer interval containing all elements of c has at most nine elements.

The programs for A276843, there is no canonical definition to state claims against.
-/

/-! ## A276843.P8872365414778207902

`A276837(eq[9, A025581(n)])`
-/

namespace A276843.P8872365414778207902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276843.P8872365414778207902

/-! ## A276843.P4626754980790003095

`A276837(A052905(n+7)-5)`
-/

namespace A276843.P4626754980790003095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A052905 (n + 7) - 5).toNat

end

end A276843.P4626754980790003095

/-! ## A276843.P242609251725816820

`A276837(A000217(n+10)-10)`
-/

namespace A276843.P242609251725816820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A000217 (n + 10) - 10).toNat

end

end A276843.P242609251725816820

/-! ## A276843.P15508592866646626531

`A276837(A056121(n+3)+18)`
-/

namespace A276843.P15508592866646626531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A056121 (n + 3) + 18).toNat

end

end A276843.P15508592866646626531

/-! ## A276843.P8651684222738587895

`A276837(eq[10, A004736(n+1)])`
-/

namespace A276843.P8651684222738587895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276843.P8651684222738587895

/-!
# A276844: Number of permutations of [n] such that for each cycle c the smallest integer interval containing all elements of c has at most ten elements.

The programs for A276844, there is no canonical definition to state claims against.
-/

/-! ## A276844.P7885977219927031607

`A276837(eq[10, A025581(n)])`
-/

namespace A276844.P7885977219927031607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276844.P7885977219927031607

/-! ## A276844.P10672844020033872125

`A276837(A000217(n+11)-11)`
-/

namespace A276844.P10672844020033872125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A000217 (n + 11) - 11).toNat

end

end A276844.P10672844020033872125

/-! ## A276844.P13316559667364365246

`A276837(eq[11, A004736(n+1)])`
-/

namespace A276844.P13316559667364365246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276844.P13316559667364365246

/-! ## A276844.P15281933360283312715

`A276837(A055999(n+7)+n+6)`
-/

namespace A276844.P15281933360283312715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A055999 (n + 7) + (n + 6 : ℤ)).toNat

end

end A276844.P15281933360283312715

/-! ## A276844.P15398644621899150529

`A276837(A028387(n+6)-A055999(n))`
-/

namespace A276844.P15398644621899150529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (A028387 (n + 6) - A055999 n).toNat

end

end A276844.P15398644621899150529

/-!
# A276847: Expansion of eta(q^2) * eta(q^4) * eta(q^6) * eta(q^12) in powers of q.

The programs for A276847, there is no canonical definition to state claims against.
-/

/-! ## A276847.P7673272145706027831

`A087960(n)*A271231(n+1)`
-/

namespace A276847.P7673272145706027831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A271231 (n + 1)

end

end A276847.P7673272145706027831

/-! ## A276847.P14782652419137021132

`Δ[A088748(n)]*A271231(n+1)`
-/

namespace A276847.P14782652419137021132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A271231 (n + 1)

end

end A276847.P14782652419137021132

/-! ## A276847.P13438890261422979424

`A034947(n+1)*A271231(n+1)`
-/

namespace A276847.P13438890261422979424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A271231 (n + 1)

end

end A276847.P13438890261422979424

/-! ## A276847.P8973010278352114493

`A209615(n+1)*A271231(n+1)`
-/

namespace A276847.P8973010278352114493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1) * A271231 (n + 1)

end

end A276847.P8973010278352114493

/-! ## A276847.P14780390908641108941

`(1-A083220(n)+n)*A271231(n+1)`
-/

namespace A276847.P14780390908641108941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A083220 n + (n : ℤ)) * A271231 (n + 1)

end

end A276847.P14780390908641108941

/-! ## A276847.P14172964927203935433

`(A088748(n+1)-A088748(2*n))*A271231(n+1)`
-/

namespace A276847.P14172964927203935433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088748 (n + 1) - A088748 (2 * n)) * A271231 (n + 1)

end

end A276847.P14172964927203935433

/-!
# A276848: For a lesser p of twin primes, let B_(p+2) and B_p be sequences defined as A159559, but with initial terms p+2 and p respectively. The sequence lists p for which all differences B_(p+2)(n)-B_p(n)<=6.

The programs for A276848, there is no canonical definition to state claims against.
-/

/-! ## A276848.P10919225412526310909

`p?[A277118(n+2)+A001359(n+1)]`
-/

namespace A276848.P10919225412526310909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277118 (n + 2) + A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276848.P10919225412526310909

/-! ## A276848.P12559222501641977133

`record[gcd(A144834(n+1)+1, A277118(n+2))]`
-/

namespace A276848.P12559222501641977133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144834 (n + 1) + 1) (A277118 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276848.P12559222501641977133

/-! ## A276848.P15812220041765970704

`record[A020639(A277118(n+2)+A001359(n+1))]`
-/

namespace A276848.P15812220041765970704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A277118 (n + 2) + A001359 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276848.P15812220041765970704

/-! ## A276848.P12360853015697462486

`p?[A277118(n+2)+A000040(A029707(n+1))]`
-/

namespace A276848.P12360853015697462486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277118 (n + 2) + A000040 (A029707 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276848.P12360853015697462486

/-! ## A276848.P3644009898465970954

`p?[A277255(A029707(n+1))+A001359(n+1)]`
-/

namespace A276848.P3644009898465970954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277255 (A029707 (n + 1)).toNat + A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276848.P3644009898465970954

/-!
# A276849: a(0) = 5, a(1) = 2; for n>1, a(n) = 2*a(n-1) + a(n-2).

The programs for A276849, the canonical program `A276849.P10707332101065188361` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276849 has offset 0).

The definition of A276849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A276849.P10707332101065188361`, by `A276849.P10707332101065188361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276849.P10707332101065188361

`2*a(n-1)+a(n-2)` with `a(0)=5, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276849

/-- `2*a(n-1)+a(n-2)` -/
def P10707332101065188361.Spec : Prop :=
  ∀ n, (P10707332101065188361.a n : ℤ) = A276849 n

theorem P10707332101065188361.correct : P10707332101065188361.Spec := by
  intro n
  simp only [A276849]

end A276849

/-! ## A276849.P6351690636041945495

`ogf((-5+8x)/(-1+2x+x^2))`
-/

namespace A276849.P6351690636041945495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -8] [1, -2, -1] n

end

end A276849.P6351690636041945495

namespace A276849

/-- `ogf((-5+8x)/(-1+2x+x^2))` -/
def P6351690636041945495.Spec : Prop :=
  ∀ n, P6351690636041945495.a n = A276849 n

end A276849

/-! ## A276849.P1643635100043695134

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=5, a(1)=2`
-/

namespace A276849.P1643635100043695134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 2] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A276849.P1643635100043695134

namespace A276849

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P1643635100043695134.Spec : Prop :=
  ∀ n, (P1643635100043695134.a n : ℤ) = A276849 n

theorem P1643635100043695134.correct : P1643635100043695134.Spec := by
  intro n
  simp only [A276849, Nat.add_sub_cancel, A276849.P1643635100043695134.a, A276849.P10707332101065188361.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A276849

/-! ## A276849.P2391247028503811111

`2-(2*(1-a(n-1))-a(n-2))` with `a(0)=5, a(1)=2`
-/

namespace A276849.P2391247028503811111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n a =>
  2 - (2 * (1 - a (n - 1)) - a (n - 2))

end

end A276849.P2391247028503811111

namespace A276849

/-- `2-(2*(1-a(n-1))-a(n-2))` -/
def P2391247028503811111.Spec : Prop :=
  ∀ n, P2391247028503811111.a n = A276849 n

end A276849

/-! ## A276849.P2333152915060031464

`a(n-2)-a(n-1)/(1/2-1)` with `a(0)=5, a(1)=2`
-/

namespace A276849.P2333152915060031464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5, 2] fun n a =>
  a (n - 2) - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A276849.P2333152915060031464

namespace A276849

/-- `a(n-2)-a(n-1)/(1/2-1)` -/
def P2333152915060031464.Spec : Prop :=
  ∀ n, P2333152915060031464.a n = (A276849 n : ℚ)

end A276849

/-! ## A276849.P6430488361262692706

`A048694(n)-A221174(n)`
-/

namespace A276849.P6430488361262692706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048694 n - A221174 n

end

end A276849.P6430488361262692706

namespace A276849

/-- `A048694(n)-A221174(n)` -/
def P6430488361262692706.Spec : Prop :=
  ∀ n, P6430488361262692706.a n = A276849 n

end A276849

/-! ## A276849.P8225989487432325307

`A000129(n)+Δ[A221172(n)]`
-/

namespace A276849.P8225989487432325307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (f1 (n + 1) - f1 n)

end

end A276849.P8225989487432325307

namespace A276849

/-- `A000129(n)+Δ[A221172(n)]` -/
def P8225989487432325307.Spec : Prop :=
  ∀ n, P8225989487432325307.a n = A276849 n

end A276849

/-! ## A276849.P6738629624660659819

`A002203(n+1)-A221173(n)`
-/

namespace A276849.P6738629624660659819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) - A221173 n

end

end A276849.P6738629624660659819

namespace A276849

/-- `A002203(n+1)-A221173(n)` -/
def P6738629624660659819.Spec : Prop :=
  ∀ n, P6738629624660659819.a n = A276849 n

end A276849

/-! ## A276849.P2981322613737748943

`A135532(n+1)-A221172(n)`
-/

namespace A276849.P2981322613737748943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 (n + 1) - A221172 n

end

end A276849.P2981322613737748943

namespace A276849

/-- `A135532(n+1)-A221172(n)` -/
def P2981322613737748943.Spec : Prop :=
  ∀ n, P2981322613737748943.a n = A276849 n

end A276849

/-! ## A276849.P3963850828756762088

`A221173(n+1)-A135532(n)`
-/

namespace A276849.P3963850828756762088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (n + 1) - A135532 n

end

end A276849.P3963850828756762088

namespace A276849

/-- `A221173(n+1)-A135532(n)` -/
def P3963850828756762088.Spec : Prop :=
  ∀ n, P3963850828756762088.a n = A276849 n

end A276849

/-! ## A276849.P9198344440867481230

`2*A002203(n)-A078343(n)`
-/

namespace A276849.P9198344440867481230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002203 n - A078343 n

end

end A276849.P9198344440867481230

namespace A276849

/-- `2*A002203(n)-A078343(n)` -/
def P9198344440867481230.Spec : Prop :=
  ∀ n, P9198344440867481230.a n = A276849 n

end A276849

/-! ## A276849.P9916162712539754010

`A266504(2*n)+Δ[A078343(n)]`
-/

namespace A276849.P9916162712539754010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * n) + (f1 (n + 1) - f1 n)

end

end A276849.P9916162712539754010

namespace A276849

/-- `A266504(2*n)+Δ[A078343(n)]` -/
def P9916162712539754010.Spec : Prop :=
  ∀ n, P9916162712539754010.a n = A276849 n

end A276849

/-! ## A276849.P5642790787712135128

`A221173(n+1)-A266505(2*n)`
-/

namespace A276849.P5642790787712135128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (n + 1) - A266505 (2 * n)

end

end A276849.P5642790787712135128

namespace A276849

/-- `A221173(n+1)-A266505(2*n)` -/
def P5642790787712135128.Spec : Prop :=
  ∀ n, P5642790787712135128.a n = A276849 n

end A276849

/-! ## A276849.P8642876716392223406

`Δ[A000129(n)]+A048655(n)-A221173(n)`
-/

namespace A276849.P8642876716392223406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A048655 n - A221173 n)

end

end A276849.P8642876716392223406

namespace A276849

/-- `Δ[A000129(n)]+A048655(n)-A221173(n)` -/
def P8642876716392223406.Spec : Prop :=
  ∀ n, P8642876716392223406.a n = A276849 n

end A276849

/-! ## A276849.P5340252449031967421

`A000129(n+1)+A048654(n)-A221173(n)`
-/

namespace A276849.P5340252449031967421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A048654 n - A221173 n)

end

end A276849.P5340252449031967421

namespace A276849

/-- `A000129(n+1)+A048654(n)-A221173(n)` -/
def P5340252449031967421.Spec : Prop :=
  ∀ n, P5340252449031967421.a n = A276849 n

end A276849

/-! ## A276849.P2707810716604981727

`A221173(n+1)-(A078343(n)+A000129(n))`
-/

namespace A276849.P2707810716604981727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (n + 1) - (A078343 n + A000129 n)

end

end A276849.P2707810716604981727

namespace A276849

/-- `A221173(n+1)-(A078343(n)+A000129(n))` -/
def P2707810716604981727.Spec : Prop :=
  ∀ n, P2707810716604981727.a n = A276849 n

end A276849

/-! ## A276849.P12517813909222589352

`A221172(n+1)+A000129(n)-A221172(n)`
-/

namespace A276849.P12517813909222589352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 1) + (A000129 n - A221172 n)

end

end A276849.P12517813909222589352

namespace A276849

/-- `A221172(n+1)+A000129(n)-A221172(n)` -/
def P12517813909222589352.Spec : Prop :=
  ∀ n, P12517813909222589352.a n = A276849 n

end A276849

/-! ## A276849.P10145110021546565641

`A221172(n+1)+A078343(n)-A221173(n)`
-/

namespace A276849.P10145110021546565641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 1) + (A078343 n - A221173 n)

end

end A276849.P10145110021546565641

namespace A276849

/-- `A221172(n+1)+A078343(n)-A221173(n)` -/
def P10145110021546565641.Spec : Prop :=
  ∀ n, P10145110021546565641.a n = A276849 n

end A276849

/-! ## A276849.P14724455273845070478

`A221172(n+1)+A221172(n)-A221174(n)`
-/

namespace A276849.P14724455273845070478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 1) + (A221172 n - A221174 n)

end

end A276849.P14724455273845070478

namespace A276849

/-- `A221172(n+1)+A221172(n)-A221174(n)` -/
def P14724455273845070478.Spec : Prop :=
  ∀ n, P14724455273845070478.a n = A276849 n

end A276849

/-! ## A276849.P4203561555282564626

`A221172(n+1)+A221173(n)-A221175(n)`
-/

namespace A276849.P4203561555282564626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 1) + (A221173 n - A221175 n)

end

end A276849.P4203561555282564626

namespace A276849

/-- `A221172(n+1)+A221173(n)-A221175(n)` -/
def P4203561555282564626.Spec : Prop :=
  ∀ n, P4203561555282564626.a n = A276849 n

end A276849

/-!
# A276852: Number of positive walks with n steps {-3,-2,-1,1,2,3} starting at the origin, ending at altitude 1, and staying strictly above the x-axis.

The programs for A276852, there is no canonical definition to state claims against.
-/

/-! ## A276852.P10261609277823463173

`A226190(floor(3*(4*n-2)*a(n-1)/(n+2)))` with `a(0)=0, a(1)=1`
-/

namespace A276852.P10261609277823463173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A226190 ⌊(3 * (((4 * n : ℤ) - 2) * a (n - 1)) : ℚ) / (n + 2 : ℚ)⌋.toNat

end

end A276852.P10261609277823463173

/-! ## A276852.P12341347323963694876

`A060715(A369267(n))`
-/

namespace A276852.P12341347323963694876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A369267 n).toNat

end

end A276852.P12341347323963694876

/-! ## A276852.P855164167872069290

`A072114(A286761(n))+n`
-/

namespace A276852.P855164167872069290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072114 (A286761 n).toNat + (n : ℤ)

end

end A276852.P855164167872069290

/-!
# A276853: Beatty sequence for 2*e.

The programs for A276853, the canonical program `A276853.P13809500962673387750` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276853 has offset 0).

The definition of A276853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276853.P13809500962673387750

`floor(2*e*n)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276853

/-- `floor(2*e*n)` -/
def P13809500962673387750.Spec : Prop :=
  ∀ n, P13809500962673387750.a n = A276853 n

theorem P13809500962673387750.correct : P13809500962673387750.Spec := by
  intro n
  simp only [A276853]

end A276853

/-! ## A276853.P3428016304790223018

`A022843(n)+round(e*n)`
-/

namespace A276853.P3428016304790223018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n + SequenceMachineLib.roundAway (Real.exp 1 * (n : ℝ))

end

end A276853.P3428016304790223018

namespace A276853

/-- `A022843(n)+round(e*n)` -/
def P3428016304790223018.Spec : Prop :=
  ∀ n, P3428016304790223018.a n = A276853 n

end A276853

/-! ## A276853.P10783594236073036928

`A022852(n)+A022843(n)`
-/

namespace A276853.P10783594236073036928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022852 n + A022843 n

end

end A276853.P10783594236073036928

namespace A276853

/-- `A022852(n)+A022843(n)` -/
def P10783594236073036928.Spec : Prop :=
  ∀ n, P10783594236073036928.a n = A276853 n

end A276853

/-! ## A276853.P1212637918628286330

`A008588(n)-A195182(n)`
-/

namespace A276853.P1212637918628286330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n - A195182 n

end

end A276853.P1212637918628286330

namespace A276853

/-- `A008588(n)-A195182(n)` -/
def P1212637918628286330.Spec : Prop :=
  ∀ n, P1212637918628286330.a n = A276853 n

theorem P1212637918628286330.correct : P1212637918628286330.Spec := by
  intro n
  simp only [A276853, Nat.add_sub_cancel, A276853.P1212637918628286330.a, A276853.P13809500962673387750.a, A008588, A008588.P12386450284809463491.a, A195182, A195182.P2082398744835701677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276853

/-! ## A276853.P18281681393934119907

`∑[A276860(n+1)]-A276860(n+1)`
-/

namespace A276853.P18281681393934119907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A276860 (n + 1)

end

end A276853.P18281681393934119907

namespace A276853

/-- `∑[A276860(n+1)]-A276860(n+1)` -/
def P18281681393934119907.Spec : Prop :=
  ∀ n, P18281681393934119907.a n = A276853 n

end A276853

/-! ## A276853.P898106934410826729

`A022843(2*n)`
-/

namespace A276853.P898106934410826729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (2 * n)

end

end A276853.P898106934410826729

namespace A276853

/-- `A022843(2*n)` -/
def P898106934410826729.Spec : Prop :=
  ∀ n, P898106934410826729.a n = A276853 n

end A276853

/-! ## A276853.P3691188098598706627

`xor(1, xor(1, A022843(n+n)))`
-/

namespace A276853.P3691188098598706627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A022843 (n + n)))

end

end A276853.P3691188098598706627

namespace A276853

/-- `xor(1, xor(1, A022843(n+n)))` -/
def P3691188098598706627.Spec : Prop :=
  ∀ n, P3691188098598706627.a n = A276853 n

end A276853

/-! ## A276853.P12871846404558309587

`A121384(2*n)+A057428(n)`
-/

namespace A276853.P12871846404558309587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (2 * n) + A057428 n

end

end A276853.P12871846404558309587

namespace A276853

/-- `A121384(2*n)+A057428(n)` -/
def P12871846404558309587.Spec : Prop :=
  ∀ n, P12871846404558309587.a n = A276853 n

end A276853

/-! ## A276853.P15942831964021366911

`A121384(2*n)-A057427(n)`
-/

namespace A276853.P15942831964021366911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (2 * n) - A057427 n

end

end A276853.P15942831964021366911

namespace A276853

/-- `A121384(2*n)-A057427(n)` -/
def P15942831964021366911.Spec : Prop :=
  ∀ n, P15942831964021366911.a n = A276853 n

end A276853

/-! ## A276853.P13614289840691828852

`A121384(2*n)-A057428(2*n)²`
-/

namespace A276853.P13614289840691828852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (2 * n) - A057428 (2 * n) ^ 2

end

end A276853.P13614289840691828852

namespace A276853

/-- `A121384(2*n)-A057428(2*n)²` -/
def P13614289840691828852.Spec : Prop :=
  ∀ n, P13614289840691828852.a n = A276853 n

end A276853

/-! ## A276853.P1668890138233392593

`A209229(2*n+1)+A121384(2*n)-1`
-/

namespace A276853.P1668890138233392593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1) + (A121384 (2 * n) - 1)

end

end A276853.P1668890138233392593

namespace A276853

/-- `A209229(2*n+1)+A121384(2*n)-1` -/
def P1668890138233392593.Spec : Prop :=
  ∀ n, P1668890138233392593.a n = A276853 n

end A276853

/-! ## A276853.P5338506989079159000

`A022843(n+n)%A002858(A022843(n+1))`
-/

namespace A276853.P5338506989079159000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022843 (n + n)) (A002858 (A022843 (n + 1)).toNat)

end

end A276853.P5338506989079159000

namespace A276853

/-- `A022843(n+n)%A002858(A022843(n+1))` -/
def P5338506989079159000.Spec : Prop :=
  ∀ n, P5338506989079159000.a n = A276853 n

end A276853

/-!
# A276854: Beatty sequence for 1 + sqrt(5).

The programs for A276854, the canonical program `A276854.P5259982047319367675` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276854 has offset 0).

The definition of A276854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276854.P5259982047319367675

`floor(n*(1+sqrt(5)))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276854

/-- `floor(n*(1+sqrt(5)))` -/
def P5259982047319367675.Spec : Prop :=
  ∀ n, P5259982047319367675.a n = A276854 n

theorem P5259982047319367675.correct : P5259982047319367675.Spec := by
  intro n
  simp only [A276854]

end A276854

/-! ## A276854.P8378882501336774780

`ceil((ϕ-acot(2*n))*2*n)`
-/

namespace A276854.P8378882501336774780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio - SequenceMachineLib.acot (2 * n : ℝ)) * (2 * n : ℝ)⌉

end

end A276854.P8378882501336774780

namespace A276854

/-- `ceil((ϕ-acot(2*n))*2*n)` -/
def P8378882501336774780.Spec : Prop :=
  ∀ n, P8378882501336774780.a n = A276854 n

end A276854

/-! ## A276854.P14090369230006128243

`A004976(n)-n`
-/

namespace A276854.P14090369230006128243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n - (n : ℤ)

end

end A276854.P14090369230006128243

namespace A276854

/-- `A004976(n)-n` -/
def P14090369230006128243.Spec : Prop :=
  ∀ n, P14090369230006128243.a n = A276854 n

end A276854

/-! ## A276854.P15180597137611563968

`4*n-A195172(n)`
-/

namespace A276854.P15180597137611563968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A195172 n

end

end A276854.P15180597137611563968

namespace A276854

/-- `4*n-A195172(n)` -/
def P15180597137611563968.Spec : Prop :=
  ∀ n, P15180597137611563968.a n = A276854 n

theorem P15180597137611563968.correct : P15180597137611563968.Spec := by
  intro n
  simp only [A276854, Nat.add_sub_cancel, A276854.P15180597137611563968.a, A276854.P5259982047319367675.a, A195172, A195172.P3774427057211869333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A276854

/-! ## A276854.P14549536269055004378

`5*n-A195173(n)`
-/

namespace A276854.P14549536269055004378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A195173 n

end

end A276854.P14549536269055004378

namespace A276854

/-- `5*n-A195173(n)` -/
def P14549536269055004378.Spec : Prop :=
  ∀ n, P14549536269055004378.a n = A276854 n

theorem P14549536269055004378.correct : P14549536269055004378.Spec := by
  intro n
  simp only [A276854, Nat.add_sub_cancel, A276854.P14549536269055004378.a, A276854.P5259982047319367675.a, A195173, A195173.P5525217484699142708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A276854

/-! ## A276854.P12157120751256530177

`comp[A001962(n+1)]+2*n`
-/

namespace A276854.P12157120751256530177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 * n

end

end A276854.P12157120751256530177

namespace A276854

/-- `comp[A001962(n+1)]+2*n` -/
def P12157120751256530177.Spec : Prop :=
  ∀ n, (P12157120751256530177.a n : ℤ) = A276854 n

end A276854

/-! ## A276854.P6149257751023710380

`comp[A001950(n+1)]+round(ϕ*n)`
-/

namespace A276854.P6149257751023710380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

end

end A276854.P6149257751023710380

namespace A276854

/-- `comp[A001950(n+1)]+round(ϕ*n)` -/
def P6149257751023710380.Spec : Prop :=
  ∀ n, P6149257751023710380.a n = A276854 n

end A276854

/-! ## A276854.P1279390530207817641

`comp[A001950(2*(n+1))]+n+n`
-/

namespace A276854.P1279390530207817641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n + n

end

end A276854.P1279390530207817641

namespace A276854

/-- `comp[A001950(2*(n+1))]+n+n` -/
def P1279390530207817641.Spec : Prop :=
  ∀ n, (P1279390530207817641.a n : ℤ) = A276854 n

end A276854

/-! ## A276854.P13977168870611566320

`A060143(n)+A004937(n)`
-/

namespace A276854.P13977168870611566320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 n + A004937 n

end

end A276854.P13977168870611566320

namespace A276854

/-- `A060143(n)+A004937(n)` -/
def P13977168870611566320.Spec : Prop :=
  ∀ n, P13977168870611566320.a n = A276854 n

end A276854

/-! ## A276854.P877182864917983670

`A066096(n)+A007067(n)`
-/

namespace A276854.P877182864917983670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n + A007067 n

end

end A276854.P877182864917983670

namespace A276854

/-- `A066096(n)+A007067(n)` -/
def P877182864917983670.Spec : Prop :=
  ∀ n, P877182864917983670.a n = A276854 n

end A276854

/-! ## A276854.P3757993773374811304

`A007067(n)+A026351(n)-1`
-/

namespace A276854.P3757993773374811304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n + (A026351 n - 1)

end

end A276854.P3757993773374811304

namespace A276854

/-- `A007067(n)+A026351(n)-1` -/
def P3757993773374811304.Spec : Prop :=
  ∀ n, P3757993773374811304.a n = A276854 n

end A276854

/-! ## A276854.P7473631534171771607

`A004958(n)-A087156(n+1)`
-/

namespace A276854.P7473631534171771607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 n - A087156 (n + 1)

end

end A276854.P7473631534171771607

namespace A276854

/-- `A004958(n)-A087156(n+1)` -/
def P7473631534171771607.Spec : Prop :=
  ∀ n, P7473631534171771607.a n = A276854 n

end A276854

/-! ## A276854.P851386636446849785

`A005206(A004273(n))+2*n`
-/

namespace A276854.P851386636446849785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A004273 n).toNat + (2 * n : ℤ)

end

end A276854.P851386636446849785

namespace A276854

/-- `A005206(A004273(n))+2*n` -/
def P851386636446849785.Spec : Prop :=
  ∀ n, P851386636446849785.a n = A276854 n

end A276854

/-! ## A276854.P891813989736835174

`A007067(n)+A060143(n)+n`
-/

namespace A276854.P891813989736835174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n + (A060143 n + (n : ℤ))

end

end A276854.P891813989736835174

namespace A276854

/-- `A007067(n)+A060143(n)+n` -/
def P891813989736835174.Spec : Prop :=
  ∀ n, P891813989736835174.a n = A276854 n

end A276854

/-! ## A276854.P7809305044471437622

`A004273(n)+A300763(n)+n`
-/

namespace A276854.P7809305044471437622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A300763 n + (n : ℤ))

end

end A276854.P7809305044471437622

namespace A276854

/-- `A004273(n)+A300763(n)+n` -/
def P7809305044471437622.Spec : Prop :=
  ∀ n, P7809305044471437622.a n = A276854 n

end A276854

/-! ## A276854.P15723706808233636786

`A007067(n)+comp[A001950(n+1)]`
-/

namespace A276854.P15723706808233636786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A276854.P15723706808233636786

namespace A276854

/-- `A007067(n)+comp[A001950(n+1)]` -/
def P15723706808233636786.Spec : Prop :=
  ∀ n, P15723706808233636786.a n = A276854 n

end A276854

/-! ## A276854.P13760300148621692112

`A066096(2*n)`
-/

namespace A276854.P13760300148621692112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (2 * n)

end

end A276854.P13760300148621692112

namespace A276854

/-- `A066096(2*n)` -/
def P13760300148621692112.Spec : Prop :=
  ∀ n, P13760300148621692112.a n = A276854 n

theorem P13760300148621692112.correct : P13760300148621692112.Spec := by
  intro n
  simp only [A276854, Nat.add_sub_cancel, A276854.P13760300148621692112.a, A276854.P5259982047319367675.a, A066096, A066096.P2651506377198414293.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A276854

/-! ## A276854.P8907388240626457636

`A026351(2*n)-1`
-/

namespace A276854.P8907388240626457636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (2 * n) - 1

end

end A276854.P8907388240626457636

namespace A276854

/-- `A026351(2*n)-1` -/
def P8907388240626457636.Spec : Prop :=
  ∀ n, P8907388240626457636.a n = A276854 n

theorem P8907388240626457636.correct : P8907388240626457636.Spec := by
  intro n
  simp only [A276854, Nat.add_sub_cancel, A276854.P8907388240626457636.a, A276854.P5259982047319367675.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A276854

/-! ## A276854.P10744458430947722652

`A060143(2*n)+2*n`
-/

namespace A276854.P10744458430947722652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (2 * n) + (2 * n : ℤ)

end

end A276854.P10744458430947722652

namespace A276854

/-- `A060143(2*n)+2*n` -/
def P10744458430947722652.Spec : Prop :=
  ∀ n, P10744458430947722652.a n = A276854 n

theorem P10744458430947722652.correct : P10744458430947722652.Spec := by
  intro n
  simp only [A276854, Nat.add_sub_cancel, A276854.P10744458430947722652.a, A276854.P5259982047319367675.a, A060143, A060143.P4349736368293734599.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A276854

/-! ## A276854.P15960730794482740799

`A058066(2*n)-n`
-/

namespace A276854.P15960730794482740799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 (2 * n) - (n : ℤ)

end

end A276854.P15960730794482740799

namespace A276854

/-- `A058066(2*n)-n` -/
def P15960730794482740799.Spec : Prop :=
  ∀ n, P15960730794482740799.a n = A276854 n

end A276854

/-!
# A276855: Beatty sequence for (3 + golden ratio).

The programs for A276855, the canonical program `A276855.P14166486863681248170` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276855 has offset 0).

The definition of A276855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276855.P14166486863681248170

`floor(n*(7+sqrt(5))/2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276855

/-- `floor(n*(7+sqrt(5))/2)` -/
def P14166486863681248170.Spec : Prop :=
  ∀ n, P14166486863681248170.a n = A276855 n

theorem P14166486863681248170.correct : P14166486863681248170.Spec := by
  intro n
  simp only [A276855]

end A276855

/-! ## A276855.P476498961786708750

`record[lcm(2, n)/2]+ceil(n*ϕ²)`
-/

namespace A276855.P476498961786708750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ : ℚ)

end

end A276855.P476498961786708750

namespace A276855

/-- `record[lcm(2, n)/2]+ceil(n*ϕ²)` -/
def P476498961786708750.Spec : Prop :=
  ∀ n, P476498961786708750.a n = (A276855 n : ℚ)

end A276855

/-! ## A276855.P12769545485524416038

`A066096(n)+3*n`
-/

namespace A276855.P12769545485524416038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n + (3 * n : ℤ)

end

end A276855.P12769545485524416038

namespace A276855

/-- `A066096(n)+3*n` -/
def P12769545485524416038.Spec : Prop :=
  ∀ n, P12769545485524416038.a n = A276855 n

end A276855

/-! ## A276855.P16332162743121460833

`A060143(n)+4*n`
-/

namespace A276855.P16332162743121460833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 n + (4 * n : ℤ)

end

end A276855.P16332162743121460833

namespace A276855

/-- `A060143(n)+4*n` -/
def P16332162743121460833.Spec : Prop :=
  ∀ n, P16332162743121460833.a n = A276855 n

end A276855

/-! ## A276855.P9550797790261264764

`6*n-A195121(n)`
-/

namespace A276855.P9550797790261264764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - A195121 n

end

end A276855.P9550797790261264764

namespace A276855

/-- `6*n-A195121(n)` -/
def P9550797790261264764.Spec : Prop :=
  ∀ n, P9550797790261264764.a n = A276855 n

end A276855

/-! ## A276855.P8702940554901746249

`A284624(n+1)-2+n`
-/

namespace A276855.P8702940554901746249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 (n + 1) - 2 + (n : ℤ)

end

end A276855.P8702940554901746249

namespace A276855

/-- `A284624(n+1)-2+n` -/
def P8702940554901746249.Spec : Prop :=
  ∀ n, P8702940554901746249.a n = A276855 n

end A276855

/-! ## A276855.P7729399313362092213

`5*n-A189663(n+1)`
-/

namespace A276855.P7729399313362092213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A189663 (n + 1)

end

end A276855.P7729399313362092213

namespace A276855

/-- `5*n-A189663(n+1)` -/
def P7729399313362092213.Spec : Prop :=
  ∀ n, P7729399313362092213.a n = A276855 n

end A276855

/-! ## A276855.P3180263484195661626

`n-1+A026352(n)+n`
-/

namespace A276855.P3180263484195661626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (A026352 n + (n : ℤ))

end

end A276855.P3180263484195661626

namespace A276855

/-- `n-1+A026352(n)+n` -/
def P3180263484195661626.Spec : Prop :=
  ∀ n, P3180263484195661626.a n = A276855 n

end A276855

/-! ## A276855.P14251572369434763606

`comp[A001950(n+1)]+3*n`
-/

namespace A276855.P14251572369434763606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3 * n

end

end A276855.P14251572369434763606

namespace A276855

/-- `comp[A001950(n+1)]+3*n` -/
def P14251572369434763606.Spec : Prop :=
  ∀ n, (P14251572369434763606.a n : ℤ) = A276855 n

end A276855

/-! ## A276855.P7724589752131130512

`A026356(n+1)+2*(n-1)`
-/

namespace A276855.P7724589752131130512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1) + 2 * ((n : ℤ) - 1)

end

end A276855.P7724589752131130512

namespace A276855

/-- `A026356(n+1)+2*(n-1)` -/
def P7724589752131130512.Spec : Prop :=
  ∀ n, P7724589752131130512.a n = A276855 n

end A276855

/-! ## A276855.P5194099378918879727

`A004957(n)+A004273(n)`
-/

namespace A276855.P5194099378918879727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n + A004273 n

end

end A276855.P5194099378918879727

namespace A276855

/-- `A004957(n)+A004273(n)` -/
def P5194099378918879727.Spec : Prop :=
  ∀ n, P5194099378918879727.a n = A276855 n

end A276855

/-! ## A276855.P9267436493061517306

`A060747(n)+A026352(n)`
-/

namespace A276855.P9267436493061517306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n + A026352 n

end

end A276855.P9267436493061517306

namespace A276855

/-- `A060747(n)+A026352(n)` -/
def P9267436493061517306.Spec : Prop :=
  ∀ n, P9267436493061517306.a n = A276855 n

end A276855

/-! ## A276855.P13829481977151475255

`A334415(n)+A004976(n)`
-/

namespace A276855.P13829481977151475255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 n + A004976 n

end

end A276855.P13829481977151475255

namespace A276855

/-- `A334415(n)+A004976(n)` -/
def P13829481977151475255.Spec : Prop :=
  ∀ n, P13829481977151475255.a n = A276855 n

end A276855

/-! ## A276855.P1182983938930194828

`A026352(n)-A165747(n)`
-/

namespace A276855.P1182983938930194828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n - A165747 n

end

end A276855.P1182983938930194828

namespace A276855

/-- `A026352(n)-A165747(n)` -/
def P1182983938930194828.Spec : Prop :=
  ∀ n, P1182983938930194828.a n = A276855 n

end A276855

/-!
# A276856: First differences of the Beatty sequence A022840 for sqrt(6).

The programs for A276856, the canonical program `A276856.P5303597877526225215` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276856 has offset 1).

The definition of A276856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276856.P5303597877526225215

`Δ[floor(n*sqrt(6))]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276856

/-- `Δ[floor(n*sqrt(6))]` -/
def P5303597877526225215.Spec : Prop :=
  ∀ n, P5303597877526225215.a n = A276856 (n + 1)

theorem P5303597877526225215.correct : P5303597877526225215.Spec := by
  intro n
  simp only [A276856, Nat.add_sub_cancel]

end A276856

/-!
# A276857: First differences of the Beatty sequence A022841 for sqrt(7).

The programs for A276857, the canonical program `A276857.P14729695427695350046` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276857 has offset 1).

The definition of A276857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276857.P1518411859938950958

`Δ[floor(n*sqrt(7))]`
-/

namespace A276857.P1518411859938950958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (7 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276857.P1518411859938950958

namespace A276857

/-- `Δ[floor(n*sqrt(7))]` -/
def P1518411859938950958.Spec : Prop :=
  ∀ n, P1518411859938950958.a n = A276857 (n + 1)

end A276857

/-! ## A276857.P14729695427695350046

`a(Δ[A198084(n)])` with `a(0)=2, a(1)=3, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276857

/-- `a(Δ[A198084(n)])` -/
def P14729695427695350046.Spec : Prop :=
  ∀ n, (P14729695427695350046.a n : ℤ) = A276857 (n + 1)

theorem P14729695427695350046.correct : P14729695427695350046.Spec := by
  intro n
  simp only [A276857, Nat.add_sub_cancel]

end A276857

/-! ## A276857.P5876567621625941035

`Δ[A198084(n)]-A000007(n)`
-/

namespace A276857.P5876567621625941035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000007 n

end

end A276857.P5876567621625941035

namespace A276857

/-- `Δ[A198084(n)]-A000007(n)` -/
def P5876567621625941035.Spec : Prop :=
  ∀ n, P5876567621625941035.a n = A276857 (n + 1)

end A276857

/-! ## A276857.P6185335286201287630

`Δ[A198084(n)]-A000056(n+1)%2`
-/

namespace A276857.P6185335286201287630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A000056 (n + 1)) 2

end

end A276857.P6185335286201287630

namespace A276857

/-- `Δ[A198084(n)]-A000056(n+1)%2` -/
def P6185335286201287630.Spec : Prop :=
  ∀ n, P6185335286201287630.a n = A276857 (n + 1)

end A276857

/-! ## A276857.P148347579271823522

`A014963(A000007(n)+Δ[A198084(n)])`
-/

namespace A276857.P148347579271823522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000007 n + (f1 (n + 1) - f1 n)).toNat

end

end A276857.P148347579271823522

namespace A276857

/-- `A014963(A000007(n)+Δ[A198084(n)])` -/
def P148347579271823522.Spec : Prop :=
  ∀ n, P148347579271823522.a n = A276857 (n + 1)

end A276857

/-! ## A276857.P2876303967707278527

`A330545(A198084(n+1)%(A198084(n)+1)+1)`
-/

namespace A276857.P2876303967707278527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330545 (Int.tmod (A198084 (n + 1)) (A198084 n + 1) + 1).toNat

end

end A276857.P2876303967707278527

namespace A276857

/-- `A330545(A198084(n+1)%(A198084(n)+1)+1)` -/
def P2876303967707278527.Spec : Prop :=
  ∀ n, P2876303967707278527.a n = A276857 (n + 1)

end A276857

/-! ## A276857.P14681660699124359880

`A202306((n+1)²)-A202306(n²)`
-/

namespace A276857.P14681660699124359880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202306 ((n + 1) ^ 2) - A202306 (n ^ 2)

end

end A276857.P14681660699124359880

namespace A276857

/-- `A202306((n+1)²)-A202306(n²)` -/
def P14681660699124359880.Spec : Prop :=
  ∀ n, P14681660699124359880.a n = A276857 (n + 1)

end A276857

/-!
# A276858: First differences of the Beatty sequence A022842 for sqrt(8).

The programs for A276858, the canonical program `A276858.P4876479302285241086` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276858 has offset 1).

The definition of A276858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276858.P5350846269311943119

`Δ[floor(n*sqrt(8))]`
-/

namespace A276858.P5350846269311943119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276858.P5350846269311943119

namespace A276858

/-- `Δ[floor(n*sqrt(8))]` -/
def P5350846269311943119.Spec : Prop :=
  ∀ n, P5350846269311943119.a n = A276858 (n + 1)

end A276858

/-! ## A276858.P13308403345671192360

`xor(3, Δ[ceil(n*(3-sqrt(8)))])`
-/

namespace A276858.P13308403345671192360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (3 - Real.sqrt (8 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (f1 (n + 1) - f1 n)

end

end A276858.P13308403345671192360

namespace A276858

/-- `xor(3, Δ[ceil(n*(3-sqrt(8)))])` -/
def P13308403345671192360.Spec : Prop :=
  ∀ n, P13308403345671192360.a n = A276858 (n + 1)

end A276858

/-! ## A276858.P4876479302285241086

`3-Δ[A195177(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276858

/-- `3-Δ[A195177(n)]` -/
def P4876479302285241086.Spec : Prop :=
  ∀ n, P4876479302285241086.a n = A276858 (n + 1)

theorem P4876479302285241086.correct : P4876479302285241086.Spec := by
  intro n
  simp only [A276858, Nat.add_sub_cancel]

end A276858

/-! ## A276858.P333216743857695173

`4-Δ[A195178(n)]`
-/

namespace A276858.P333216743857695173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A276858.P333216743857695173

namespace A276858

/-- `4-Δ[A195178(n)]` -/
def P333216743857695173.Spec : Prop :=
  ∀ n, P333216743857695173.a n = A276858 (n + 1)

theorem P333216743857695173.correct : P333216743857695173.Spec := by
  intro n
  simp only [A276858, Nat.add_sub_cancel, A276858.P333216743857695173.f1, A276858.P333216743857695173.a, A276858.P4876479302285241086.f1, A276858.P4876479302285241086.a, A195177, A195177.P651983526202513123.a, A195178, A195178.P13129221249738795055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A276858

/-! ## A276858.P3379518149892299811

`5-Δ[A195179(n)]`
-/

namespace A276858.P3379518149892299811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f1 (n + 1) - f1 n)

end

end A276858.P3379518149892299811

namespace A276858

/-- `5-Δ[A195179(n)]` -/
def P3379518149892299811.Spec : Prop :=
  ∀ n, P3379518149892299811.a n = A276858 (n + 1)

theorem P3379518149892299811.correct : P3379518149892299811.Spec := by
  intro n
  simp only [A276858, Nat.add_sub_cancel, A276858.P3379518149892299811.f1, A276858.P3379518149892299811.a, A276858.P4876479302285241086.f1, A276858.P4876479302285241086.a, A195177, A195177.P651983526202513123.a, A195179, A195179.P15459766949902108573.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A276858

/-! ## A276858.P5253204504976343780

`A018245(n+1)-2`
-/

namespace A276858.P5253204504976343780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018245 (n + 1) - 2

end

end A276858.P5253204504976343780

namespace A276858

/-- `A018245(n+1)-2` -/
def P5253204504976343780.Spec : Prop :=
  ∀ n, P5253204504976343780.a n = A276858 (n + 1)

theorem P5253204504976343780.correct : P5253204504976343780.Spec := by
  intro n
  simp only [A276858, Nat.add_sub_cancel, A276858.P5253204504976343780.a, A276858.P4876479302285241086.f1, A276858.P4876479302285241086.a, A018245, A018245.P6139162678383067992.f1, A018245.P6139162678383067992.a, A195177, A195177.P651983526202513123.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A276858

/-! ## A276858.P7635368354235280635

`Δ[A245207(n)]-Δ[n²]`
-/

namespace A276858.P7635368354235280635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245207 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A276858.P7635368354235280635

namespace A276858

/-- `Δ[A245207(n)]-Δ[n²]` -/
def P7635368354235280635.Spec : Prop :=
  ∀ n, P7635368354235280635.a n = A276858 (n + 1)

end A276858

/-! ## A276858.P10538689002943764063

`A195178(2/Δ[A195178(n)])`
-/

namespace A276858.P10538689002943764063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195178 (SequenceMachineLib.roundAway (2 / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A276858.P10538689002943764063

namespace A276858

/-- `A195178(2/Δ[A195178(n)])` -/
def P10538689002943764063.Spec : Prop :=
  ∀ n, P10538689002943764063.a n = A276858 (n + 1)

end A276858

/-! ## A276858.P1539847656200813916

`A276864(n+1)+A214848(n)-2`
-/

namespace A276858.P1539847656200813916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 1) + (A214848 n - 2)

end

end A276858.P1539847656200813916

namespace A276858

/-- `A276864(n+1)+A214848(n)-2` -/
def P1539847656200813916.Spec : Prop :=
  ∀ n, P1539847656200813916.a n = A276858 (n + 1)

end A276858

/-! ## A276858.P1972051413915253761

`A008918(n+1)%A018245(n+1)`
-/

namespace A276858.P1972051413915253761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008918 (n + 1)) (A018245 (n + 1))

end

end A276858.P1972051413915253761

namespace A276858

/-- `A008918(n+1)%A018245(n+1)` -/
def P1972051413915253761.Spec : Prop :=
  ∀ n, P1972051413915253761.a n = A276858 (n + 1)

end A276858

/-! ## A276858.P12950263438119951273

`A191705(A195179(n+1)-A195179(n))`
-/

namespace A276858.P12950263438119951273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191705 (A195179 (n + 1) - A195179 n).toNat

end

end A276858.P12950263438119951273

namespace A276858

/-- `A191705(A195179(n+1)-A195179(n))` -/
def P12950263438119951273.Spec : Prop :=
  ∀ n, P12950263438119951273.a n = A276858 (n + 1)

end A276858

/-! ## A276858.P17722485642506912418

`A191740(A195179(n+1)-A195179(n))`
-/

namespace A276858.P17722485642506912418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191740 (A195179 (n + 1) - A195179 n).toNat

end

end A276858.P17722485642506912418

namespace A276858

/-- `A191740(A195179(n+1)-A195179(n))` -/
def P17722485642506912418.Spec : Prop :=
  ∀ n, P17722485642506912418.a n = A276858 (n + 1)

end A276858

/-! ## A276858.P4042725661785725607

`A347365(A195178(n+1)-A195178(n))`
-/

namespace A276858.P4042725661785725607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347365 (A195178 (n + 1) - A195178 n).toNat

end

end A276858.P4042725661785725607

namespace A276858

/-- `A347365(A195178(n+1)-A195178(n))` -/
def P4042725661785725607.Spec : Prop :=
  ∀ n, P4042725661785725607.a n = A276858 (n + 1)

end A276858

/-! ## A276858.P11671153780291288297

`A001951(n+1)+A214848(n)-A001951(n)`
-/

namespace A276858.P11671153780291288297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) + (A214848 n - A001951 n)

end

end A276858.P11671153780291288297

namespace A276858

/-- `A001951(n+1)+A214848(n)-A001951(n)` -/
def P11671153780291288297.Spec : Prop :=
  ∀ n, P11671153780291288297.a n = A276858 (n + 1)

end A276858

/-! ## A276858.P7264695591975797141

`A022842(n+1)+A195178(n)-A008586(n)`
-/

namespace A276858.P7264695591975797141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) + (A195178 n - A008586 n)

end

end A276858.P7264695591975797141

namespace A276858

/-- `A022842(n+1)+A195178(n)-A008586(n)` -/
def P7264695591975797141.Spec : Prop :=
  ∀ n, P7264695591975797141.a n = A276858 (n + 1)

end A276858

/-! ## A276858.P18294176558628941259

`A022842(n+1)+A195179(n)-A008587(n)`
-/

namespace A276858.P18294176558628941259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) + (A195179 n - A008587 n)

end

end A276858.P18294176558628941259

namespace A276858

/-- `A022842(n+1)+A195179(n)-A008587(n)` -/
def P18294176558628941259.Spec : Prop :=
  ∀ n, P18294176558628941259.a n = A276858 (n + 1)

end A276858

/-!
# A276859: First differences of the Beatty sequence A022843 for e.

The programs for A276859, the canonical program `A276859.P14467022770255802899` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276859 has offset 1).

The definition of A276859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276859.P1726358341249127981

`Δ[floor(e*n)]`
-/

namespace A276859.P1726358341249127981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276859.P1726358341249127981

namespace A276859

/-- `Δ[floor(e*n)]` -/
def P1726358341249127981.Spec : Prop :=
  ∀ n, P1726358341249127981.a n = A276859 (n + 1)

end A276859

/-! ## A276859.P14467022770255802899

`abs(Δ[A022843(n)])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276859

/-- `abs(Δ[A022843(n)])` -/
def P14467022770255802899.Spec : Prop :=
  ∀ n, P14467022770255802899.a n = A276859 (n + 1)

theorem P14467022770255802899.correct : P14467022770255802899.Spec := by
  intro n
  simp only [A276859, Nat.add_sub_cancel]

end A276859

/-! ## A276859.P2400109979218782234

`A000041(Δ[A022843(n)])`
-/

namespace A276859.P2400109979218782234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A276859.P2400109979218782234

namespace A276859

/-- `A000041(Δ[A022843(n)])` -/
def P2400109979218782234.Spec : Prop :=
  ∀ n, P2400109979218782234.a n = A276859 (n + 1)

end A276859

/-! ## A276859.P17135077191171283427

`A006530(Δ[A022843(n)])`
-/

namespace A276859.P17135077191171283427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A276859.P17135077191171283427

namespace A276859

/-- `A006530(Δ[A022843(n)])` -/
def P17135077191171283427.Spec : Prop :=
  ∀ n, P17135077191171283427.a n = A276859 (n + 1)

end A276859

/-! ## A276859.P7625610710611364896

`A001037(Δ[A022843(n)]+1)`
-/

namespace A276859.P7625610710611364896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (f1 (n + 1) - f1 n + 1).toNat

end

end A276859.P7625610710611364896

namespace A276859

/-- `A001037(Δ[A022843(n)]+1)` -/
def P7625610710611364896.Spec : Prop :=
  ∀ n, P7625610710611364896.a n = A276859 (n + 1)

end A276859

/-! ## A276859.P8181355339617618301

`A156253(Δ[A022843(n)]+1)`
-/

namespace A276859.P8181355339617618301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (f1 (n + 1) - f1 n + 1).toNat

end

end A276859.P8181355339617618301

namespace A276859

/-- `A156253(Δ[A022843(n)]+1)` -/
def P8181355339617618301.Spec : Prop :=
  ∀ n, P8181355339617618301.a n = A276859 (n + 1)

end A276859

/-! ## A276859.P8338436990920276827

`A288724(Δ[A022843(n)]+1)`
-/

namespace A276859.P8338436990920276827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288724 (f1 (n + 1) - f1 n + 1).toNat

end

end A276859.P8338436990920276827

namespace A276859

/-- `A288724(Δ[A022843(n)]+1)` -/
def P8338436990920276827.Spec : Prop :=
  ∀ n, P8338436990920276827.a n = A276859 (n + 1)

end A276859

/-! ## A276859.P16064687056217830407

`A022843(n+1)-A022843(n)`
-/

namespace A276859.P16064687056217830407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) - A022843 n

end

end A276859.P16064687056217830407

namespace A276859

/-- `A022843(n+1)-A022843(n)` -/
def P16064687056217830407.Spec : Prop :=
  ∀ n, P16064687056217830407.a n = A276859 (n + 1)

end A276859

/-! ## A276859.P7232913959265501751

`A327402(Δ[A022843(n)]+3)+1`
-/

namespace A276859.P7232913959265501751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327402 (f1 (n + 1) - f1 n + 3).toNat + 1

end

end A276859.P7232913959265501751

namespace A276859

/-- `A327402(Δ[A022843(n)]+3)+1` -/
def P7232913959265501751.Spec : Prop :=
  ∀ n, P7232913959265501751.a n = A276859 (n + 1)

end A276859

/-!
# A276860: First differences of the Beatty sequence A276853 for 2*e.

The programs for A276860, the canonical program `A276860.P581861567182324134` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276860 has offset 1).

The definition of A276860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276860.P13969715550975831593

`Δ[floor(2*e*n)]`
-/

namespace A276860.P13969715550975831593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.exp 1 * (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276860.P13969715550975831593

namespace A276860

/-- `Δ[floor(2*e*n)]` -/
def P13969715550975831593.Spec : Prop :=
  ∀ n, P13969715550975831593.a n = A276860 (n + 1)

end A276860

/-! ## A276860.P581861567182324134

`abs(Δ[A276853(n)])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276860

/-- `abs(Δ[A276853(n)])` -/
def P581861567182324134.Spec : Prop :=
  ∀ n, P581861567182324134.a n = A276860 (n + 1)

theorem P581861567182324134.correct : P581861567182324134.Spec := by
  intro n
  simp only [A276860, Nat.add_sub_cancel]

end A276860

/-! ## A276860.P17484075350758704434

`char[comp[A327211(n)+n]]+5`
-/

namespace A276860.P17484075350758704434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327211 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 5

end

end A276860.P17484075350758704434

namespace A276860

/-- `char[comp[A327211(n)+n]]+5` -/
def P17484075350758704434.Spec : Prop :=
  ∀ n, (P17484075350758704434.a n : ℤ) = A276860 (n + 1)

end A276860

/-! ## A276860.P6814291136918013760

`A000027(Δ[A276853(n)])`
-/

namespace A276860.P6814291136918013760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A276860.P6814291136918013760

namespace A276860

/-- `A000027(Δ[A276853(n)])` -/
def P6814291136918013760.Spec : Prop :=
  ∀ n, P6814291136918013760.a n = A276860 (n + 1)

end A276860

/-! ## A276860.P15539453745138386374

`A276853(n+1)-A276853(n)`
-/

namespace A276860.P15539453745138386374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 (n + 1) - A276853 n

end

end A276860.P15539453745138386374

namespace A276860

/-- `A276853(n+1)-A276853(n)` -/
def P15539453745138386374.Spec : Prop :=
  ∀ n, P15539453745138386374.a n = A276860 (n + 1)

end A276860

/-! ## A276860.P12562376923011706952

`6-Δ[A195182(n)]`
-/

namespace A276860.P12562376923011706952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (f1 (n + 1) - f1 n)

end

end A276860.P12562376923011706952

namespace A276860

/-- `6-Δ[A195182(n)]` -/
def P12562376923011706952.Spec : Prop :=
  ∀ n, P12562376923011706952.a n = A276860 (n + 1)

end A276860

/-! ## A276860.P3307127924229346207

`A194375(A195182(n)+5-A195182(n+1))`
-/

namespace A276860.P3307127924229346207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194375 (A195182 n + (5 - A195182 (n + 1))).toNat

end

end A276860.P3307127924229346207

namespace A276860

/-- `A194375(A195182(n)+5-A195182(n+1))` -/
def P3307127924229346207.Spec : Prop :=
  ∀ n, P3307127924229346207.a n = A276860 (n + 1)

end A276860

/-! ## A276860.P2222892407706355413

`A329839(A195182(n)+5-A195182(n+1))`
-/

namespace A276860.P2222892407706355413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329839 (A195182 n + (5 - A195182 (n + 1))).toNat

end

end A276860.P2222892407706355413

namespace A276860

/-- `A329839(A195182(n)+5-A195182(n+1))` -/
def P2222892407706355413.Spec : Prop :=
  ∀ n, P2222892407706355413.a n = A276860 (n + 1)

end A276860

/-! ## A276860.P10705693444236769674

`abs(Δ[A022843(2*n)])`
-/

namespace A276860.P10705693444236769674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A276860.P10705693444236769674

namespace A276860

/-- `abs(Δ[A022843(2*n)])` -/
def P10705693444236769674.Spec : Prop :=
  ∀ n, P10705693444236769674.a n = A276860 (n + 1)

end A276860

/-! ## A276860.P6579546334503037938

`A000027(Δ[A022843(2*n)])`
-/

namespace A276860.P6579546334503037938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A276860.P6579546334503037938

namespace A276860

/-- `A000027(Δ[A022843(2*n)])` -/
def P6579546334503037938.Spec : Prop :=
  ∀ n, P6579546334503037938.a n = A276860 (n + 1)

end A276860

/-! ## A276860.P14059189632501404031

`A028310(Δ[A022843(2*n)])`
-/

namespace A276860.P14059189632501404031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A276860.P14059189632501404031

namespace A276860

/-- `A028310(Δ[A022843(2*n)])` -/
def P14059189632501404031.Spec : Prop :=
  ∀ n, P14059189632501404031.a n = A276860 (n + 1)

end A276860

/-! ## A276860.P17199183835049841867

`A022843(2*(n+1))-A022843(2*n)`
-/

namespace A276860.P17199183835049841867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (2 * (n + 1)) - A022843 (2 * n)

end

end A276860.P17199183835049841867

namespace A276860

/-- `A022843(2*(n+1))-A022843(2*n)` -/
def P17199183835049841867.Spec : Prop :=
  ∀ n, P17199183835049841867.a n = A276860 (n + 1)

end A276860

/-! ## A276860.P18343030412288836171

`A276859(2*n+1)+A276859(2*(n+1))`
-/

namespace A276860.P18343030412288836171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (2 * n + 1) + A276859 (2 * (n + 1))

end

end A276860.P18343030412288836171

namespace A276860

/-- `A276859(2*n+1)+A276859(2*(n+1))` -/
def P18343030412288836171.Spec : Prop :=
  ∀ n, P18343030412288836171.a n = A276860 (n + 1)

end A276860

/-!
# A276861: First differences of the Beatty sequence A038130 for 2*Pi.

The programs for A276861, the canonical program `A276861.P8318770617900209663` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276861 has offset 1).

The definition of A276861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276861.P8318770617900209663

`Δ[floor(2*π*n)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276861

/-- `Δ[floor(2*π*n)]` -/
def P8318770617900209663.Spec : Prop :=
  ∀ n, P8318770617900209663.a n = A276861 (n + 1)

theorem P8318770617900209663.correct : P8318770617900209663.Spec := by
  intro n
  simp only [A276861, Nat.add_sub_cancel]

end A276861

/-!
# A276862: First differences of the Beatty sequence A003151 for 1 + sqrt(2).

The programs for A276862, the canonical program `A276862.P8562040950423449081` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276862 has offset 1).

The definition of A276862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276862.P8562040950423449081

`floor((n+2)*(1+sqrt(2)))-floor((n+1)*(1+sqrt(2)))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276862

/-- `floor((n+2)*(1+sqrt(2)))-floor((n+1)*(1+sqrt(2)))` -/
def P8562040950423449081.Spec : Prop :=
  ∀ n, P8562040950423449081.a n = A276862 (n + 1)

theorem P8562040950423449081.correct : P8562040950423449081.Spec := by
  intro n
  simp only [A276862, Nat.add_sub_cancel]

end A276862

/-! ## A276862.P7461926333660697902

`dr(Δ[ceil((sqrt(2)+1)*(n+1))])`
-/

namespace A276862.P7461926333660697902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (2 : ℝ) + 1) * (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A276862.P7461926333660697902

namespace A276862

/-- `dr(Δ[ceil((sqrt(2)+1)*(n+1))])` -/
def P7461926333660697902.Spec : Prop :=
  ∀ n, (P7461926333660697902.a n : ℤ) = A276862 (n + 1)

end A276862

/-! ## A276862.P4136127995289903053

`or(2, Δ[ceil((n+1)/(sqrt(2)+1))])`
-/

namespace A276862.P4136127995289903053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (Real.sqrt (2 : ℝ) + 1)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (n + 1) - f1 n)

end

end A276862.P4136127995289903053

namespace A276862

/-- `or(2, Δ[ceil((n+1)/(sqrt(2)+1))])` -/
def P4136127995289903053.Spec : Prop :=
  ∀ n, P4136127995289903053.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P5710152659383464421

`xor(2, Δ[ceil((n+1)/(sqrt(2)+1))])`
-/

namespace A276862.P5710152659383464421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (Real.sqrt (2 : ℝ) + 1)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (n + 1) - f1 n)

end

end A276862.P5710152659383464421

namespace A276862

/-- `xor(2, Δ[ceil((n+1)/(sqrt(2)+1))])` -/
def P5710152659383464421.Spec : Prop :=
  ∀ n, P5710152659383464421.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P18164970827685023037

`Δ[ceil((n+1)/(sqrt(2)-1))]%47`
-/

namespace A276862.P18164970827685023037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (Real.sqrt (2 : ℝ) - 1)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 47

end

end A276862.P18164970827685023037

namespace A276862

/-- `Δ[ceil((n+1)/(sqrt(2)-1))]%47` -/
def P18164970827685023037.Spec : Prop :=
  ∀ n, P18164970827685023037.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P12177747954189929967

`A097509(n+1)`
-/

namespace A276862.P12177747954189929967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (n + 1)

end

end A276862.P12177747954189929967

namespace A276862

/-- `A097509(n+1)` -/
def P12177747954189929967.Spec : Prop :=
  ∀ n, P12177747954189929967.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P1199911961247770770

`A000040(Δ[floor((n+1)*sqrt(2))])`
-/

namespace A276862.P1199911961247770770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A276862.P1199911961247770770

namespace A276862

/-- `A000040(Δ[floor((n+1)*sqrt(2))])` -/
def P1199911961247770770.Spec : Prop :=
  ∀ n, P1199911961247770770.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P12510542855131873450

`A000041(Δ[ceil((sqrt(2)+1)*(n+1))])`
-/

namespace A276862.P12510542855131873450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (2 : ℝ) + 1) * (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A276862.P12510542855131873450

namespace A276862

/-- `A000041(Δ[ceil((sqrt(2)+1)*(n+1))])` -/
def P12510542855131873450.Spec : Prop :=
  ∀ n, P12510542855131873450.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P8499859476158410374

`A006530(Δ[ceil((sqrt(2)+1)*(n+1))])`
-/

namespace A276862.P8499859476158410374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (2 : ℝ) + 1) * (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A276862.P8499859476158410374

namespace A276862

/-- `A006530(Δ[ceil((sqrt(2)+1)*(n+1))])` -/
def P8499859476158410374.Spec : Prop :=
  ∀ n, P8499859476158410374.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P12706390683307500548

`A010693(A352427(n+1))`
-/

namespace A276862.P12706390683307500548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A352427 (n + 1)).toNat

end

end A276862.P12706390683307500548

namespace A276862

/-- `A010693(A352427(n+1))` -/
def P12706390683307500548.Spec : Prop :=
  ∀ n, P12706390683307500548.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P14272547714892294445

`A010693(A383032(n+1))`
-/

namespace A276862.P14272547714892294445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A383032 (n + 1)).toNat

end

end A276862.P14272547714892294445

namespace A276862

/-- `A010693(A383032(n+1))` -/
def P14272547714892294445.Spec : Prop :=
  ∀ n, P14272547714892294445.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P1455876651885503323

`Δ[A003151(n+1)]`
-/

namespace A276862.P1455876651885503323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276862.P1455876651885503323

namespace A276862

/-- `Δ[A003151(n+1)]` -/
def P1455876651885503323.Spec : Prop :=
  ∀ n, P1455876651885503323.a n = A276862 (n + 1)

theorem P1455876651885503323.correct : P1455876651885503323.Spec := by
  intro n
  simp only [A276862, Nat.add_sub_cancel, A276862.P1455876651885503323.f1, A276862.P1455876651885503323.a, A276862.P8562040950423449081.a, A003151, A003151.P5230567170801236160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A276862

/-! ## A276862.P5864804510535994753

`Δ[A080754(n+1)]`
-/

namespace A276862.P5864804510535994753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276862.P5864804510535994753

namespace A276862

/-- `Δ[A080754(n+1)]` -/
def P5864804510535994753.Spec : Prop :=
  ∀ n, P5864804510535994753.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P5926178813095582612

`Δ[A286666(n+1)]`
-/

namespace A276862.P5926178813095582612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276862.P5926178813095582612

namespace A276862

/-- `Δ[A286666(n+1)]` -/
def P5926178813095582612.Spec : Prop :=
  ∀ n, P5926178813095582612.a n = A276862 (n + 1)

theorem P5926178813095582612.correct : P5926178813095582612.Spec := by
  intro n
  simp only [A276862, Nat.add_sub_cancel, A276862.P5926178813095582612.f1, A276862.P5926178813095582612.a, A276862.P8562040950423449081.a, A286666, A286666.P2262944503126098146.a, A003151, A003151.P5230567170801236160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A276862

/-! ## A276862.P18007087245405942845

`Δ[A285075(n+2)]`
-/

namespace A276862.P18007087245405942845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276862.P18007087245405942845

namespace A276862

/-- `Δ[A285075(n+2)]` -/
def P18007087245405942845.Spec : Prop :=
  ∀ n, P18007087245405942845.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P15770123562087121719

`Δ[A285078(n+2)]`
-/

namespace A276862.P15770123562087121719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276862.P15770123562087121719

namespace A276862

/-- `Δ[A285078(n+2)]` -/
def P15770123562087121719.Spec : Prop :=
  ∀ n, P15770123562087121719.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P14286832092665225735

`A110012(A087057(n+2))`
-/

namespace A276862.P14286832092665225735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110012 (A087057 (n + 2)).toNat

end

end A276862.P14286832092665225735

namespace A276862

/-- `A110012(A087057(n+2))` -/
def P14286832092665225735.Spec : Prop :=
  ∀ n, P14286832092665225735.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P15824952826741646026

`A110012(A097432(n+2))`
-/

namespace A276862.P15824952826741646026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110012 (A097432 (n + 2)).toNat

end

end A276862.P15824952826741646026

namespace A276862

/-- `A110012(A097432(n+2))` -/
def P15824952826741646026.Spec : Prop :=
  ∀ n, P15824952826741646026.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P11076443039155582630

`A110012(A284931(n+2))`
-/

namespace A276862.P11076443039155582630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110012 (A284931 (n + 2)).toNat

end

end A276862.P11076443039155582630

namespace A276862

/-- `A110012(A284931(n+2))` -/
def P11076443039155582630.Spec : Prop :=
  ∀ n, P11076443039155582630.a n = A276862 (n + 1)

end A276862

/-! ## A276862.P15225619028847829404

`Δ[record[A109250(n+1)]]`
-/

namespace A276862.P15225619028847829404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109250 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276862.P15225619028847829404

namespace A276862

/-- `Δ[record[A109250(n+1)]]` -/
def P15225619028847829404.Spec : Prop :=
  ∀ n, P15225619028847829404.a n = A276862 (n + 1)

end A276862

/-!
# A276863: First differences of the Beatty sequence A276854 for 1 + sqrt(5).

The programs for A276863, the canonical program `A276863.P5985261516785406471` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276863 has offset 1).

The definition of A276863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276863.P5985261516785406471

`1+floor((n+1)*sqrt(5))-floor(n*sqrt(5))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276863

/-- `1+floor((n+1)*sqrt(5))-floor(n*sqrt(5))` -/
def P5985261516785406471.Spec : Prop :=
  ∀ n, P5985261516785406471.a n = A276863 (n + 1)

theorem P5985261516785406471.correct : P5985261516785406471.Spec := by
  intro n
  simp only [A276863, Nat.add_sub_cancel]

end A276863

/-! ## A276863.P6542666990142897409

`∑{d}[Δ[floor(n*sqrt(5))], #]`
-/

namespace A276863.P6542666990142897409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A276863.P6542666990142897409

namespace A276863

/-- `∑{d}[Δ[floor(n*sqrt(5))], #]` -/
def P6542666990142897409.Spec : Prop :=
  ∀ n, (P6542666990142897409.a n : ℤ) = A276863 (n + 1)

end A276863

/-! ## A276863.P18295496803739495830

`Δ[A276854(n)]`
-/

namespace A276863.P18295496803739495830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276863.P18295496803739495830

namespace A276863

/-- `Δ[A276854(n)]` -/
def P18295496803739495830.Spec : Prop :=
  ∀ n, P18295496803739495830.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P10130477945197128296

`A000032(Δ[floor(n*sqrt(5))])`
-/

namespace A276863.P10130477945197128296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat

end

end A276863.P10130477945197128296

namespace A276863

/-- `A000032(Δ[floor(n*sqrt(5))])` -/
def P10130477945197128296.Spec : Prop :=
  ∀ n, P10130477945197128296.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P5353212589812897678

`A000203(Δ[floor(n*sqrt(5))])`
-/

namespace A276863.P5353212589812897678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A276863.P5353212589812897678

namespace A276863

/-- `A000203(Δ[floor(n*sqrt(5))])` -/
def P5353212589812897678.Spec : Prop :=
  ∀ n, P5353212589812897678.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P8722436233255566850

`A000720(2*(Δ[floor(n*sqrt(5))]+1))`
-/

namespace A276863.P8722436233255566850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (f1 (n + 1) - f1 n + 1)).toNat

end

end A276863.P8722436233255566850

namespace A276863

/-- `A000720(2*(Δ[floor(n*sqrt(5))]+1))` -/
def P8722436233255566850.Spec : Prop :=
  ∀ n, P8722436233255566850.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P3438738751457782112

`A044732(n+1)%A276866(n+1)`
-/

namespace A276863.P3438738751457782112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044732 (n + 1)) (A276866 (n + 1))

end

end A276863.P3438738751457782112

namespace A276863

/-- `A044732(n+1)%A276866(n+1)` -/
def P3438738751457782112.Spec : Prop :=
  ∀ n, P3438738751457782112.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P17011315936506443269

`A044752(n+1)%A276866(n+1)`
-/

namespace A276863.P17011315936506443269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044752 (n + 1)) (A276866 (n + 1))

end

end A276863.P17011315936506443269

namespace A276863

/-- `A044752(n+1)%A276866(n+1)` -/
def P17011315936506443269.Spec : Prop :=
  ∀ n, P17011315936506443269.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P9587145622033154084

`A044772(n+1)%A276866(n+1)`
-/

namespace A276863.P9587145622033154084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044772 (n + 1)) (A276866 (n + 1))

end

end A276863.P9587145622033154084

namespace A276863

/-- `A044772(n+1)%A276866(n+1)` -/
def P9587145622033154084.Spec : Prop :=
  ∀ n, P9587145622033154084.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P17555808347444734057

`A044792(n+1)%A276866(n+1)`
-/

namespace A276863.P17555808347444734057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044792 (n + 1)) (A276866 (n + 1))

end

end A276863.P17555808347444734057

namespace A276863

/-- `A044792(n+1)%A276866(n+1)` -/
def P17555808347444734057.Spec : Prop :=
  ∀ n, P17555808347444734057.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P2690668133450859171

`A044812(n+1)%A276866(n+1)`
-/

namespace A276863.P2690668133450859171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044812 (n + 1)) (A276866 (n + 1))

end

end A276863.P2690668133450859171

namespace A276863

/-- `A044812(n+1)%A276866(n+1)` -/
def P2690668133450859171.Spec : Prop :=
  ∀ n, P2690668133450859171.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P14388656393026353863

`A095995(n+1)%A276866(n+1)`
-/

namespace A276863.P14388656393026353863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095995 (n + 1)) (A276866 (n + 1))

end

end A276863.P14388656393026353863

namespace A276863

/-- `A095995(n+1)%A276866(n+1)` -/
def P14388656393026353863.Spec : Prop :=
  ∀ n, P14388656393026353863.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P18438391148742687521

`A101795(n+1)%A276866(n+1)`
-/

namespace A276863.P18438391148742687521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101795 (n + 1)) (A276866 (n + 1))

end

end A276863.P18438391148742687521

namespace A276863

/-- `A101795(n+1)%A276866(n+1)` -/
def P18438391148742687521.Spec : Prop :=
  ∀ n, P18438391148742687521.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P13143332766004198067

`A101796(n+1)%A276866(n+1)`
-/

namespace A276863.P13143332766004198067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101796 (n + 1)) (A276866 (n + 1))

end

end A276863.P13143332766004198067

namespace A276863

/-- `A101796(n+1)%A276866(n+1)` -/
def P13143332766004198067.Spec : Prop :=
  ∀ n, P13143332766004198067.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P210986743970670199

`A101797(n+1)%A276866(n+1)`
-/

namespace A276863.P210986743970670199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101797 (n + 1)) (A276866 (n + 1))

end

end A276863.P210986743970670199

namespace A276863

/-- `A101797(n+1)%A276866(n+1)` -/
def P210986743970670199.Spec : Prop :=
  ∀ n, P210986743970670199.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P3749810765620293590

`A101798(n+1)%A276866(n+1)`
-/

namespace A276863.P3749810765620293590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101798 (n + 1)) (A276866 (n + 1))

end

end A276863.P3749810765620293590

namespace A276863

/-- `A101798(n+1)%A276866(n+1)` -/
def P3749810765620293590.Spec : Prop :=
  ∀ n, P3749810765620293590.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P13255816732625209797

`A101995(n+1)%A276866(n+1)`
-/

namespace A276863.P13255816732625209797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101995 (n + 1)) (A276866 (n + 1))

end

end A276863.P13255816732625209797

namespace A276863

/-- `A101995(n+1)%A276866(n+1)` -/
def P13255816732625209797.Spec : Prop :=
  ∀ n, P13255816732625209797.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P16405090190060411410

`A101996(n+1)%A276866(n+1)`
-/

namespace A276863.P16405090190060411410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101996 (n + 1)) (A276866 (n + 1))

end

end A276863.P16405090190060411410

namespace A276863

/-- `A101996(n+1)%A276866(n+1)` -/
def P16405090190060411410.Spec : Prop :=
  ∀ n, P16405090190060411410.a n = A276863 (n + 1)

end A276863

/-! ## A276863.P11735721981284182258

`A101997(n+1)%A276866(n+1)`
-/

namespace A276863.P11735721981284182258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101997 (n + 1)) (A276866 (n + 1))

end

end A276863.P11735721981284182258

namespace A276863

/-- `A101997(n+1)%A276866(n+1)` -/
def P11735721981284182258.Spec : Prop :=
  ∀ n, P11735721981284182258.a n = A276863 (n + 1)

end A276863

/-!
# A276864: First differences of the Beatty sequence A001952 for 2 + sqrt(2).

The programs for A276864, the canonical program `A276864.P7070508175847101168` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276864 has offset 1).

The definition of A276864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276864.P7070508175847101168

`2+floor((n+1)*sqrt(2))-floor(n*sqrt(2))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276864

/-- `2+floor((n+1)*sqrt(2))-floor(n*sqrt(2))` -/
def P7070508175847101168.Spec : Prop :=
  ∀ n, P7070508175847101168.a n = A276864 (n + 1)

theorem P7070508175847101168.correct : P7070508175847101168.Spec := by
  intro n
  simp only [A276864, Nat.add_sub_cancel]

end A276864

/-! ## A276864.P12212683155294600506

`abs(Δ[A001951(n)]+2)`
-/

namespace A276864.P12212683155294600506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 2|

end

end A276864.P12212683155294600506

namespace A276864

/-- `abs(Δ[A001951(n)]+2)` -/
def P12212683155294600506.Spec : Prop :=
  ∀ n, P12212683155294600506.a n = A276864 (n + 1)

end A276864

/-! ## A276864.P16307022419628707828

`dr(A188037(n+1)+3)`
-/

namespace A276864.P16307022419628707828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A188037 (n + 1) + 3)

end

end A276864.P16307022419628707828

namespace A276864

/-- `dr(A188037(n+1)+3)` -/
def P16307022419628707828.Spec : Prop :=
  ∀ n, (P16307022419628707828.a n : ℤ) = A276864 (n + 1)

end A276864

/-! ## A276864.P6668022310979592685

`A040249(Δ[floor(n*sqrt(2))])`
-/

namespace A276864.P6668022310979592685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040249 (f1 (n + 1) - f1 n).toNat

end

end A276864.P6668022310979592685

namespace A276864

/-- `A040249(Δ[floor(n*sqrt(2))])` -/
def P6668022310979592685.Spec : Prop :=
  ∀ n, P6668022310979592685.a n = A276864 (n + 1)

end A276864

/-! ## A276864.P15240380588258675467

`A127804(Δ[floor(n*sqrt(2))])`
-/

namespace A276864.P15240380588258675467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127804 (f1 (n + 1) - f1 n).toNat

end

end A276864.P15240380588258675467

namespace A276864

/-- `A127804(Δ[floor(n*sqrt(2))])` -/
def P15240380588258675467.Spec : Prop :=
  ∀ n, P15240380588258675467.a n = A276864 (n + 1)

end A276864

/-! ## A276864.P17591421615195406068

`A195019(Δ[floor(n*sqrt(2))])`
-/

namespace A276864.P17591421615195406068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195019 (f1 (n + 1) - f1 n).toNat

end

end A276864.P17591421615195406068

namespace A276864

/-- `A195019(Δ[floor(n*sqrt(2))])` -/
def P17591421615195406068.Spec : Prop :=
  ∀ n, P17591421615195406068.a n = A276864 (n + 1)

end A276864

/-! ## A276864.P6369858129482787239

`A182691(Δ[A001951(n)])`
-/

namespace A276864.P6369858129482787239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182691 (f1 (n + 1) - f1 n).toNat

end

end A276864.P6369858129482787239

namespace A276864

/-- `A182691(Δ[A001951(n)])` -/
def P6369858129482787239.Spec : Prop :=
  ∀ n, P6369858129482787239.a n = A276864 (n + 1)

end A276864

/-! ## A276864.P6760409344718069794

`A189080(Δ[A001951(n)])`
-/

namespace A276864.P6760409344718069794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189080 (f1 (n + 1) - f1 n).toNat

end

end A276864.P6760409344718069794

namespace A276864

/-- `A189080(Δ[A001951(n)])` -/
def P6760409344718069794.Spec : Prop :=
  ∀ n, P6760409344718069794.a n = A276864 (n + 1)

end A276864

/-! ## A276864.P16644114669488477156

`A286904(Δ[A001951(n)])`
-/

namespace A276864.P16644114669488477156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286904 (f1 (n + 1) - f1 n).toNat

end

end A276864.P16644114669488477156

namespace A276864

/-- `A286904(Δ[A001951(n)])` -/
def P16644114669488477156.Spec : Prop :=
  ∀ n, P16644114669488477156.a n = A276864 (n + 1)

end A276864

/-! ## A276864.P4432585360353583745

`A000032(Δ[A001951(n)]+1)`
-/

namespace A276864.P4432585360353583745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n + 1).toNat

end

end A276864.P4432585360353583745

namespace A276864

/-- `A000032(Δ[A001951(n)]+1)` -/
def P4432585360353583745.Spec : Prop :=
  ∀ n, P4432585360353583745.a n = A276864 (n + 1)

end A276864

/-! ## A276864.P14496814613184189613

`A000203(Δ[A001951(n)]+1)`
-/

namespace A276864.P14496814613184189613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n + 1).toNat

end

end A276864.P14496814613184189613

namespace A276864

/-- `A000203(Δ[A001951(n)]+1)` -/
def P14496814613184189613.Spec : Prop :=
  ∀ n, P14496814613184189613.a n = A276864 (n + 1)

end A276864

/-! ## A276864.P18148896496867754721

`A001959(Δ[A001951(n)]+1)`
-/

namespace A276864.P18148896496867754721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001959 (f1 (n + 1) - f1 n + 1).toNat

end

end A276864.P18148896496867754721

namespace A276864

/-- `A001959(Δ[A001951(n)]+1)` -/
def P18148896496867754721.Spec : Prop :=
  ∀ n, P18148896496867754721.a n = A276864 (n + 1)

end A276864

/-! ## A276864.P10790127838982924383

`A001965(Δ[A001951(n)]+1)`
-/

namespace A276864.P10790127838982924383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 (f1 (n + 1) - f1 n + 1).toNat

end

end A276864.P10790127838982924383

namespace A276864

/-- `A001965(Δ[A001951(n)]+1)` -/
def P10790127838982924383.Spec : Prop :=
  ∀ n, P10790127838982924383.a n = A276864 (n + 1)

end A276864

/-! ## A276864.P14733304707934417612

`A189573(Δ[A001951(n)]+1)`
-/

namespace A276864.P14733304707934417612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (f1 (n + 1) - f1 n + 1).toNat

end

end A276864.P14733304707934417612

namespace A276864

/-- `A189573(Δ[A001951(n)]+1)` -/
def P14733304707934417612.Spec : Prop :=
  ∀ n, P14733304707934417612.a n = A276864 (n + 1)

end A276864

/-! ## A276864.P9994704750247972544

`A260109(2-Δ[A195119(n)])`
-/

namespace A276864.P9994704750247972544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260109 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A276864.P9994704750247972544

namespace A276864

/-- `A260109(2-Δ[A195119(n)])` -/
def P9994704750247972544.Spec : Prop :=
  ∀ n, P9994704750247972544.a n = A276864 (n + 1)

end A276864

/-! ## A276864.P1966998903418058586

`A018252(Δ[A001951(n)]+2)/2`
-/

namespace A276864.P1966998903418058586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (f1 (n + 1) - f1 n + 2).toNat : ℚ) / 2

end

end A276864.P1966998903418058586

namespace A276864

/-- `A018252(Δ[A001951(n)]+2)/2` -/
def P1966998903418058586.Spec : Prop :=
  ∀ n, P1966998903418058586.a n = (A276864 (n + 1) : ℚ)

end A276864

/-! ## A276864.P16444441944521049060

`(A000040(Δ[A001951(n)])+1)%5`
-/

namespace A276864.P16444441944521049060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (f1 (n + 1) - f1 n).toNat + 1) 5

end

end A276864.P16444441944521049060

namespace A276864

/-- `(A000040(Δ[A001951(n)])+1)%5` -/
def P16444441944521049060.Spec : Prop :=
  ∀ n, P16444441944521049060.a n = A276864 (n + 1)

end A276864

/-!
# A276865: First differences of the Beatty sequence A003512 for 2 + sqrt(3).

The programs for A276865, the canonical program `A276865.P9011630192977499640` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276865 has offset 1).

The definition of A276865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276865.P9011630192977499640

`Δ[floor(n*sqrt(3))]+2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276865

/-- `Δ[floor(n*sqrt(3))]+2` -/
def P9011630192977499640.Spec : Prop :=
  ∀ n, P9011630192977499640.a n = A276865 (n + 1)

theorem P9011630192977499640.correct : P9011630192977499640.Spec := by
  intro n
  simp only [A276865, Nat.add_sub_cancel]

end A276865

/-! ## A276865.P13183176644255330384

`dr(A080757(n)+2)`
-/

namespace A276865.P13183176644255330384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A080757 n + 2)

end

end A276865.P13183176644255330384

namespace A276865

/-- `dr(A080757(n)+2)` -/
def P13183176644255330384.Spec : Prop :=
  ∀ n, (P13183176644255330384.a n : ℤ) = A276865 (n + 1)

end A276865

/-! ## A276865.P14056145256494929518

`dr(A007538(n+1)+1)`
-/

namespace A276865.P14056145256494929518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007538 (n + 1) + 1)

end

end A276865.P14056145256494929518

namespace A276865

/-- `dr(A007538(n+1)+1)` -/
def P14056145256494929518.Spec : Prop :=
  ∀ n, (P14056145256494929518.a n : ℤ) = A276865 (n + 1)

end A276865

/-! ## A276865.P9287617196522560464

`Δ[A188069(n+1)]`
-/

namespace A276865.P9287617196522560464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276865.P9287617196522560464

namespace A276865

/-- `Δ[A188069(n+1)]` -/
def P9287617196522560464.Spec : Prop :=
  ∀ n, P9287617196522560464.a n = A276865 (n + 1)

end A276865

/-! ## A276865.P12545875681562241964

`A000027(A188069(n+2)-A188069(n+1))`
-/

namespace A276865.P12545875681562241964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A188069 (n + 2) - A188069 (n + 1)).toNat

end

end A276865.P12545875681562241964

namespace A276865

/-- `A000027(A188069(n+2)-A188069(n+1))` -/
def P12545875681562241964.Spec : Prop :=
  ∀ n, P12545875681562241964.a n = A276865 (n + 1)

end A276865

/-! ## A276865.P4921386400686981804

`A031045(A188069(n+2)-A188069(n+1))`
-/

namespace A276865.P4921386400686981804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 (A188069 (n + 2) - A188069 (n + 1)).toNat

end

end A276865.P4921386400686981804

namespace A276865

/-- `A031045(A188069(n+2)-A188069(n+1))` -/
def P4921386400686981804.Spec : Prop :=
  ∀ n, P4921386400686981804.a n = A276865 (n + 1)

end A276865

/-! ## A276865.P7950920132452008550

`Δ[A188072(Δ[n²])]`
-/

namespace A276865.P7950920132452008550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276865.P7950920132452008550

namespace A276865

/-- `Δ[A188072(Δ[n²])]` -/
def P7950920132452008550.Spec : Prop :=
  ∀ n, P7950920132452008550.a n = A276865 (n + 1)

end A276865

/-! ## A276865.P8910656105957555347

`A090739(A188068(n+1)+A091113(n+1))`
-/

namespace A276865.P8910656105957555347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090739 (A188068 (n + 1) + A091113 (n + 1)).toNat

end

end A276865.P8910656105957555347

namespace A276865

/-- `A090739(A188068(n+1)+A091113(n+1))` -/
def P8910656105957555347.Spec : Prop :=
  ∀ n, P8910656105957555347.a n = A276865 (n + 1)

end A276865

/-!
# A276866: First differences of the Beatty sequence A004976 for 2 + sqrt(5).

The programs for A276866, the canonical program `A276866.P1138749720515213800` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276866 has offset 1).

The definition of A276866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276866.P17903452103126656303

`Δ[floor(n*ϕ^3)]`
-/

namespace A276866.P17903452103126656303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276866.P17903452103126656303

namespace A276866

/-- `Δ[floor(n*ϕ^3)]` -/
def P17903452103126656303.Spec : Prop :=
  ∀ n, P17903452103126656303.a n = A276866 (n + 1)

end A276866

/-! ## A276866.P13915246566325548070

`xor(6, Δ[floor(n*sqrt(5))])`
-/

namespace A276866.P13915246566325548070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (f1 (n + 1) - f1 n)

end

end A276866.P13915246566325548070

namespace A276866

/-- `xor(6, Δ[floor(n*sqrt(5))])` -/
def P13915246566325548070.Spec : Prop :=
  ∀ n, P13915246566325548070.a n = A276866 (n + 1)

end A276866

/-! ## A276866.P9666334327138993535

`or(4, Δ[floor(n/ϕ^3)])`
-/

namespace A276866.P9666334327138993535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (f1 (n + 1) - f1 n)

end

end A276866.P9666334327138993535

namespace A276866

/-- `or(4, Δ[floor(n/ϕ^3)])` -/
def P9666334327138993535.Spec : Prop :=
  ∀ n, P9666334327138993535.a n = A276866 (n + 1)

end A276866

/-! ## A276866.P6777586809493887808

`dr(Δ[floor(n*sqrt(5))])+2`
-/

namespace A276866.P6777586809493887808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n) + 2

end

end A276866.P6777586809493887808

namespace A276866

/-- `dr(Δ[floor(n*sqrt(5))])+2` -/
def P6777586809493887808.Spec : Prop :=
  ∀ n, (P6777586809493887808.a n : ℤ) = A276866 (n + 1)

end A276866

/-! ## A276866.P8381697390963459319

`Δ[floor(2*n/ϕ)]!+3`
-/

namespace A276866.P8381697390963459319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) / Real.goldenRatio)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat + 3

end

end A276866.P8381697390963459319

namespace A276866

/-- `Δ[floor(2*n/ϕ)]!+3` -/
def P8381697390963459319.Spec : Prop :=
  ∀ n, (P8381697390963459319.a n : ℤ) = A276866 (n + 1)

end A276866

/-! ## A276866.P4043466878617676551

`Δ[floor(ϕ*lcm(2, 2*n))]+1`
-/

namespace A276866.P4043466878617676551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.lcm 2 (2 * n) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A276866.P4043466878617676551

namespace A276866

/-- `Δ[floor(ϕ*lcm(2, 2*n))]+1` -/
def P4043466878617676551.Spec : Prop :=
  ∀ n, P4043466878617676551.a n = A276866 (n + 1)

end A276866

/-! ## A276866.P10934566705639752458

`Δ[floor(ϕ*2*n)]+gcd(n, n+1)`
-/

namespace A276866.P10934566705639752458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (2 * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.gcd n (n + 1) : ℤ)

end

end A276866.P10934566705639752458

namespace A276866

/-- `Δ[floor(ϕ*2*n)]+gcd(n, n+1)` -/
def P10934566705639752458.Spec : Prop :=
  ∀ n, P10934566705639752458.a n = A276866 (n + 1)

end A276866

/-! ## A276866.P12730388271314702300

`Δ[floor(ϕ*and(2*n+1, 2*n))]+1`
-/

namespace A276866.P12730388271314702300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.land (2 * n + 1) (2 * n) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A276866.P12730388271314702300

namespace A276866

/-- `Δ[floor(ϕ*and(2*n+1, 2*n))]+1` -/
def P12730388271314702300.Spec : Prop :=
  ∀ n, P12730388271314702300.a n = A276866 (n + 1)

end A276866

/-! ## A276866.P1138749720515213800

`A081147(n)+2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276866

/-- `A081147(n)+2` -/
def P1138749720515213800.Spec : Prop :=
  ∀ n, P1138749720515213800.a n = A276866 (n + 1)

theorem P1138749720515213800.correct : P1138749720515213800.Spec := by
  intro n
  simp only [A276866, Nat.add_sub_cancel]

end A276866

/-! ## A276866.P14514564220044268168

`Δ[A276854(n)]+1`
-/

namespace A276866.P14514564220044268168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A276866.P14514564220044268168

namespace A276866

/-- `Δ[A276854(n)]+1` -/
def P14514564220044268168.Spec : Prop :=
  ∀ n, P14514564220044268168.a n = A276866 (n + 1)

end A276866

/-! ## A276866.P17578075899788461459

`5-Δ[A195172(n)]`
-/

namespace A276866.P17578075899788461459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f1 (n + 1) - f1 n)

end

end A276866.P17578075899788461459

namespace A276866

/-- `5-Δ[A195172(n)]` -/
def P17578075899788461459.Spec : Prop :=
  ∀ n, P17578075899788461459.a n = A276866 (n + 1)

end A276866

/-! ## A276866.P7670089706324414782

`A276863(n+1)+1`
-/

namespace A276866.P7670089706324414782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (n + 1) + 1

end

end A276866.P7670089706324414782

namespace A276866

/-- `A276863(n+1)+1` -/
def P7670089706324414782.Spec : Prop :=
  ∀ n, P7670089706324414782.a n = A276866 (n + 1)

theorem P7670089706324414782.correct : P7670089706324414782.Spec := by
  intro n
  simp only [A276866, Nat.add_sub_cancel, A276866.P7670089706324414782.a, A276866.P1138749720515213800.a, A081147, A081147.P562166116975668183.a, A276863, A276863.P5985261516785406471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A276866

/-! ## A276866.P8067555081807654996

`A188187(n+1)+4`
-/

namespace A276866.P8067555081807654996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188187 (n + 1) + 4

end

end A276866.P8067555081807654996

namespace A276866

/-- `A188187(n+1)+4` -/
def P8067555081807654996.Spec : Prop :=
  ∀ n, P8067555081807654996.a n = A276866 (n + 1)

theorem P8067555081807654996.correct : P8067555081807654996.Spec := by
  intro n
  simp only [A276866, Nat.add_sub_cancel, A276866.P8067555081807654996.a, A276866.P1138749720515213800.a, A081147, A081147.P562166116975668183.a, A188187, A188187.P4964063636311275739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A276866

/-! ## A276866.P12724509201468742788

`A000032(Δ[floor(n*sqrt(5))])+1`
-/

namespace A276866.P12724509201468742788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat + 1

end

end A276866.P12724509201468742788

namespace A276866

/-- `A000032(Δ[floor(n*sqrt(5))])+1` -/
def P12724509201468742788.Spec : Prop :=
  ∀ n, P12724509201468742788.a n = A276866 (n + 1)

end A276866

/-! ## A276866.P11980451755233075179

`A000041(Δ[floor(n*sqrt(5))])+2`
-/

namespace A276866.P11980451755233075179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat + 2

end

end A276866.P11980451755233075179

namespace A276866

/-- `A000041(Δ[floor(n*sqrt(5))])+2` -/
def P11980451755233075179.Spec : Prop :=
  ∀ n, P11980451755233075179.a n = A276866 (n + 1)

end A276866

/-! ## A276866.P1656560948329963480

`A000045(Δ[floor(n*sqrt(5))])+3`
-/

namespace A276866.P1656560948329963480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat + 3

end

end A276866.P1656560948329963480

namespace A276866

/-- `A000045(Δ[floor(n*sqrt(5))])+3` -/
def P1656560948329963480.Spec : Prop :=
  ∀ n, P1656560948329963480.a n = A276866 (n + 1)

end A276866

/-! ## A276866.P10140677416156351465

`A000005(Δ[floor(2*ϕ*n)])+2`
-/

namespace A276866.P10140677416156351465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat + 2

end

end A276866.P10140677416156351465

namespace A276866

/-- `A000005(Δ[floor(2*ϕ*n)])+2` -/
def P10140677416156351465.Spec : Prop :=
  ∀ n, P10140677416156351465.a n = A276866 (n + 1)

end A276866

/-! ## A276866.P18113792748711319897

`A007318(Δ[floor(2*ϕ*n)])+3`
-/

namespace A276866.P18113792748711319897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat + 3

end

end A276866.P18113792748711319897

namespace A276866

/-- `A007318(Δ[floor(2*ϕ*n)])+3` -/
def P18113792748711319897.Spec : Prop :=
  ∀ n, P18113792748711319897.a n = A276866 (n + 1)

end A276866

/-!
# A276867: First differences of the Beatty sequence A003231 for 2 + phi, where phi = golden ratio = (1 + sqrt(5))/2.

The programs for A276867, the canonical program `A276867.P14306164310346220883` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276867 has offset 1).

The definition of A276867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276867.P11162513957969300311

`Δ[floor(ϕ*n)]+2`
-/

namespace A276867.P11162513957969300311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A276867.P11162513957969300311

namespace A276867

/-- `Δ[floor(ϕ*n)]+2` -/
def P11162513957969300311.Spec : Prop :=
  ∀ n, P11162513957969300311.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P18116370291442629542

`∑{d}[Δ[floor(n*ϕ²)], #]`
-/

namespace A276867.P18116370291442629542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A276867.P18116370291442629542

namespace A276867

/-- `∑{d}[Δ[floor(n*ϕ²)], #]` -/
def P18116370291442629542.Spec : Prop :=
  ∀ n, (P18116370291442629542.a n : ℤ) = A276867 (n + 1)

end A276867

/-! ## A276867.P1979642367104602740

`A255176(A356749(n))`
-/

namespace A276867.P1979642367104602740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 (A356749 n).toNat

end

end A276867.P1979642367104602740

namespace A276867

/-- `A255176(A356749(n))` -/
def P1979642367104602740.Spec : Prop :=
  ∀ n, P1979642367104602740.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P14306164310346220883

`A113311(A083368(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A276867

/-- `A113311(A083368(n+1))` -/
def P14306164310346220883.Spec : Prop :=
  ∀ n, P14306164310346220883.a n = A276867 (n + 1)

theorem P14306164310346220883.correct : P14306164310346220883.Spec := by
  intro n
  simp only [A276867, Nat.add_sub_cancel]

end A276867

/-! ## A276867.P7672522091293660655

`A044732(n+1)%A276868(n+1)`
-/

namespace A276867.P7672522091293660655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044732 (n + 1)) (A276868 (n + 1))

end

end A276867.P7672522091293660655

namespace A276867

/-- `A044732(n+1)%A276868(n+1)` -/
def P7672522091293660655.Spec : Prop :=
  ∀ n, P7672522091293660655.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P12130796431304089328

`A044752(n+1)%A276868(n+1)`
-/

namespace A276867.P12130796431304089328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044752 (n + 1)) (A276868 (n + 1))

end

end A276867.P12130796431304089328

namespace A276867

/-- `A044752(n+1)%A276868(n+1)` -/
def P12130796431304089328.Spec : Prop :=
  ∀ n, P12130796431304089328.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P2392703631406896064

`A044772(n+1)%A276868(n+1)`
-/

namespace A276867.P2392703631406896064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044772 (n + 1)) (A276868 (n + 1))

end

end A276867.P2392703631406896064

namespace A276867

/-- `A044772(n+1)%A276868(n+1)` -/
def P2392703631406896064.Spec : Prop :=
  ∀ n, P2392703631406896064.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P11737365444341683180

`A044792(n+1)%A276868(n+1)`
-/

namespace A276867.P11737365444341683180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044792 (n + 1)) (A276868 (n + 1))

end

end A276867.P11737365444341683180

namespace A276867

/-- `A044792(n+1)%A276868(n+1)` -/
def P11737365444341683180.Spec : Prop :=
  ∀ n, P11737365444341683180.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P11360993521419089419

`A044812(n+1)%A276868(n+1)`
-/

namespace A276867.P11360993521419089419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044812 (n + 1)) (A276868 (n + 1))

end

end A276867.P11360993521419089419

namespace A276867

/-- `A044812(n+1)%A276868(n+1)` -/
def P11360993521419089419.Spec : Prop :=
  ∀ n, P11360993521419089419.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P6466765679294567297

`A095995(n+1)%A276868(n+1)`
-/

namespace A276867.P6466765679294567297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095995 (n + 1)) (A276868 (n + 1))

end

end A276867.P6466765679294567297

namespace A276867

/-- `A095995(n+1)%A276868(n+1)` -/
def P6466765679294567297.Spec : Prop :=
  ∀ n, P6466765679294567297.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P14454964261128481907

`A101795(n+1)%A276868(n+1)`
-/

namespace A276867.P14454964261128481907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101795 (n + 1)) (A276868 (n + 1))

end

end A276867.P14454964261128481907

namespace A276867

/-- `A101795(n+1)%A276868(n+1)` -/
def P14454964261128481907.Spec : Prop :=
  ∀ n, P14454964261128481907.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P13262367729613588091

`A101796(n+1)%A276868(n+1)`
-/

namespace A276867.P13262367729613588091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101796 (n + 1)) (A276868 (n + 1))

end

end A276867.P13262367729613588091

namespace A276867

/-- `A101796(n+1)%A276868(n+1)` -/
def P13262367729613588091.Spec : Prop :=
  ∀ n, P13262367729613588091.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P11504195176070440004

`A101797(n+1)%A276868(n+1)`
-/

namespace A276867.P11504195176070440004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101797 (n + 1)) (A276868 (n + 1))

end

end A276867.P11504195176070440004

namespace A276867

/-- `A101797(n+1)%A276868(n+1)` -/
def P11504195176070440004.Spec : Prop :=
  ∀ n, P11504195176070440004.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P9546465931400544629

`A101798(n+1)%A276868(n+1)`
-/

namespace A276867.P9546465931400544629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101798 (n + 1)) (A276868 (n + 1))

end

end A276867.P9546465931400544629

namespace A276867

/-- `A101798(n+1)%A276868(n+1)` -/
def P9546465931400544629.Spec : Prop :=
  ∀ n, P9546465931400544629.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P5273614978333720496

`A101995(n+1)%A276868(n+1)`
-/

namespace A276867.P5273614978333720496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101995 (n + 1)) (A276868 (n + 1))

end

end A276867.P5273614978333720496

namespace A276867

/-- `A101995(n+1)%A276868(n+1)` -/
def P5273614978333720496.Spec : Prop :=
  ∀ n, P5273614978333720496.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P884470873381788044

`A101996(n+1)%A276868(n+1)`
-/

namespace A276867.P884470873381788044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101996 (n + 1)) (A276868 (n + 1))

end

end A276867.P884470873381788044

namespace A276867

/-- `A101996(n+1)%A276868(n+1)` -/
def P884470873381788044.Spec : Prop :=
  ∀ n, P884470873381788044.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P13237016686877601405

`A101997(n+1)%A276868(n+1)`
-/

namespace A276867.P13237016686877601405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101997 (n + 1)) (A276868 (n + 1))

end

end A276867.P13237016686877601405

namespace A276867

/-- `A101997(n+1)%A276868(n+1)` -/
def P13237016686877601405.Spec : Prop :=
  ∀ n, P13237016686877601405.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P1718116892117779233

`A101998(n+1)%A276868(n+1)`
-/

namespace A276867.P1718116892117779233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101998 (n + 1)) (A276868 (n + 1))

end

end A276867.P1718116892117779233

namespace A276867

/-- `A101998(n+1)%A276868(n+1)` -/
def P1718116892117779233.Spec : Prop :=
  ∀ n, P1718116892117779233.a n = A276867 (n + 1)

end A276867

/-! ## A276867.P7746400515947664852

`A101999(n+1)%A276868(n+1)`
-/

namespace A276867.P7746400515947664852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101999 (n + 1)) (A276868 (n + 1))

end

end A276867.P7746400515947664852

namespace A276867

/-- `A101999(n+1)%A276868(n+1)` -/
def P7746400515947664852.Spec : Prop :=
  ∀ n, P7746400515947664852.a n = A276867 (n + 1)

end A276867

/-!
# A276868: First differences of the Beatty sequence A276855 for 3 + phi, where phi = golden ratio = (1 + sqrt(5))/2.

The programs for A276868, the canonical program `A276868.P13312452639279008275` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276868 has offset 1).

The definition of A276868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276868.P13221552220197976359

`Δ[floor(ϕ*n)]+3`
-/

namespace A276868.P13221552220197976359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A276868.P13221552220197976359

namespace A276868

/-- `Δ[floor(ϕ*n)]+3` -/
def P13221552220197976359.Spec : Prop :=
  ∀ n, P13221552220197976359.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P2909357695486903833

`or(4, Δ[floor(n/ϕ)])`
-/

namespace A276868.P2909357695486903833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (f1 (n + 1) - f1 n)

end

end A276868.P2909357695486903833

namespace A276868

/-- `or(4, Δ[floor(n/ϕ)])` -/
def P2909357695486903833.Spec : Prop :=
  ∀ n, P2909357695486903833.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P745433515921031292

`xor(4, Δ[floor(n/ϕ)])`
-/

namespace A276868.P745433515921031292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (f1 (n + 1) - f1 n)

end

end A276868.P745433515921031292

namespace A276868

/-- `xor(4, Δ[floor(n/ϕ)])` -/
def P745433515921031292.Spec : Prop :=
  ∀ n, P745433515921031292.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P13312452639279008275

`Δ[A276855(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276868

/-- `Δ[A276855(n)]` -/
def P13312452639279008275.Spec : Prop :=
  ∀ n, P13312452639279008275.a n = A276868 (n + 1)

theorem P13312452639279008275.correct : P13312452639279008275.Spec := by
  intro n
  simp only [A276868, Nat.add_sub_cancel]

end A276868

/-! ## A276868.P6648704448446728181

`A026351(Δ[A026351(n)]+1)`
-/

namespace A276868.P6648704448446728181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (f1 (n + 1) - f1 n + 1).toNat

end

end A276868.P6648704448446728181

namespace A276868

/-- `A026351(Δ[A026351(n)]+1)` -/
def P6648704448446728181.Spec : Prop :=
  ∀ n, P6648704448446728181.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P15846812842949034949

`A195122(Δ[A066096(n)]+2)`
-/

namespace A276868.P15846812842949034949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195122 (f1 (n + 1) - f1 n + 2).toNat

end

end A276868.P15846812842949034949

namespace A276868

/-- `A195122(Δ[A066096(n)]+2)` -/
def P15846812842949034949.Spec : Prop :=
  ∀ n, P15846812842949034949.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P16170691286401748476

`A004956(A004957(n+1)-A026352(n))`
-/

namespace A276868.P16170691286401748476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A004957 (n + 1) - A026352 n).toNat

end

end A276868.P16170691286401748476

namespace A276868

/-- `A004956(A004957(n+1)-A026352(n))` -/
def P16170691286401748476.Spec : Prop :=
  ∀ n, P16170691286401748476.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P10102415604570205013

`A026351(A004957(n+1)-A026352(n))`
-/

namespace A276868.P10102415604570205013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A004957 (n + 1) - A026352 n).toNat

end

end A276868.P10102415604570205013

namespace A276868

/-- `A026351(A004957(n+1)-A026352(n))` -/
def P10102415604570205013.Spec : Prop :=
  ∀ n, P10102415604570205013.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P9287504402185327960

`A026351(A026351(n+1)-A066096(n))`
-/

namespace A276868.P9287504402185327960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A026351 (n + 1) - A066096 n).toNat

end

end A276868.P9287504402185327960

namespace A276868

/-- `A026351(A026351(n+1)-A066096(n))` -/
def P9287504402185327960.Spec : Prop :=
  ∀ n, P9287504402185327960.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P173392960233510433

`A134299(A019446(n+1)-A060143(n))`
-/

namespace A276868.P173392960233510433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134299 (A019446 (n + 1) - A060143 n).toNat

end

end A276868.P173392960233510433

namespace A276868

/-- `A134299(A019446(n+1)-A060143(n))` -/
def P173392960233510433.Spec : Prop :=
  ∀ n, P173392960233510433.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P11455469354201249512

`A134299(A066096(n+1)-A066096(n))`
-/

namespace A276868.P11455469354201249512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134299 (A066096 (n + 1) - A066096 n).toNat

end

end A276868.P11455469354201249512

namespace A276868

/-- `A134299(A066096(n+1)-A066096(n))` -/
def P11455469354201249512.Spec : Prop :=
  ∀ n, P11455469354201249512.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P4130478739417809539

`dr(Δ[A022423(n)]+2)`
-/

namespace A276868.P4130478739417809539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n + 2)

end

end A276868.P4130478739417809539

namespace A276868

/-- `dr(Δ[A022423(n)]+2)` -/
def P4130478739417809539.Spec : Prop :=
  ∀ n, (P4130478739417809539.a n : ℤ) = A276868 (n + 1)

end A276868

/-! ## A276868.P8856318003945869

`A004956(A026352(n+1)-A026352(n))`
-/

namespace A276868.P8856318003945869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A026352 (n + 1) - A026352 n).toNat

end

end A276868.P8856318003945869

namespace A276868

/-- `A004956(A026352(n+1)-A026352(n))` -/
def P8856318003945869.Spec : Prop :=
  ∀ n, P8856318003945869.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P4939826440577567506

`A026351(A026352(n+1)-A026352(n))`
-/

namespace A276868.P4939826440577567506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A026352 (n + 1) - A026352 n).toNat

end

end A276868.P4939826440577567506

namespace A276868

/-- `A026351(A026352(n+1)-A026352(n))` -/
def P4939826440577567506.Spec : Prop :=
  ∀ n, P4939826440577567506.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P4577261972263819629

`A110007(2*A022342(n+2))`
-/

namespace A276868.P4577261972263819629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110007 (2 * A022342 (n + 2)).toNat

end

end A276868.P4577261972263819629

namespace A276868

/-- `A110007(2*A022342(n+2))` -/
def P4577261972263819629.Spec : Prop :=
  ∀ n, P4577261972263819629.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P14452100304210430105

`A038150(A047924(A035614(A047924(n))))`
-/

namespace A276868.P14452100304210430105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038150 (A047924 (A035614 (A047924 n).toNat).toNat).toNat

end

end A276868.P14452100304210430105

namespace A276868

/-- `A038150(A047924(A035614(A047924(n))))` -/
def P14452100304210430105.Spec : Prop :=
  ∀ n, P14452100304210430105.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P6588732011781184770

`A110007(A004938(n+1))`
-/

namespace A276868.P6588732011781184770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110007 (A004938 (n + 1)).toNat

end

end A276868.P6588732011781184770

namespace A276868

/-- `A110007(A004938(n+1))` -/
def P6588732011781184770.Spec : Prop :=
  ∀ n, P6588732011781184770.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P11653873238845140397

`A110007(A004976(n+1))`
-/

namespace A276868.P11653873238845140397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110007 (A004976 (n + 1)).toNat

end

end A276868.P11653873238845140397

namespace A276868

/-- `A110007(A004976(n+1))` -/
def P11653873238845140397.Spec : Prop :=
  ∀ n, P11653873238845140397.a n = A276868 (n + 1)

end A276868

/-! ## A276868.P13924693773182450574

`A110007(A089910(n+1))`
-/

namespace A276868.P13924693773182450574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110007 (A089910 (n + 1)).toNat

end

end A276868.P13924693773182450574

namespace A276868

/-- `A110007(A089910(n+1))` -/
def P13924693773182450574.Spec : Prop :=
  ∀ n, P13924693773182450574.a n = A276868 (n + 1)

end A276868

/-!
# A276869: First differences of the Beatty sequence A182769 for 2 + sqrt(1/2).

The programs for A276869, the canonical program `A276869.P5574487162763271941` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276869 has offset 1).

The definition of A276869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276869.P15239878595532436133

`Δ[floor(n/sqrt(2))]+2`
-/

namespace A276869.P15239878595532436133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A276869.P15239878595532436133

namespace A276869

/-- `Δ[floor(n/sqrt(2))]+2` -/
def P15239878595532436133.Spec : Prop :=
  ∀ n, P15239878595532436133.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P10540934373978427057

`or(2, Δ[floor(n/sqrt(2))])`
-/

namespace A276869.P10540934373978427057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (n + 1) - f1 n)

end

end A276869.P10540934373978427057

namespace A276869

/-- `or(2, Δ[floor(n/sqrt(2))])` -/
def P10540934373978427057.Spec : Prop :=
  ∀ n, P10540934373978427057.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P13632094169171901760

`xor(2, Δ[floor(n/sqrt(2))])`
-/

namespace A276869.P13632094169171901760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (n + 1) - f1 n)

end

end A276869.P13632094169171901760

namespace A276869

/-- `xor(2, Δ[floor(n/sqrt(2))])` -/
def P13632094169171901760.Spec : Prop :=
  ∀ n, P13632094169171901760.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P5574487162763271941

`A195128(3-Δ[A195128(n)])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276869

/-- `A195128(3-Δ[A195128(n)])` -/
def P5574487162763271941.Spec : Prop :=
  ∀ n, P5574487162763271941.a n = A276869 (n + 1)

theorem P5574487162763271941.correct : P5574487162763271941.Spec := by
  intro n
  simp only [A276869, Nat.add_sub_cancel]

end A276869

/-! ## A276869.P13856983495616931548

`A195128(2/Δ[A195128(n)])`
-/

namespace A276869.P13856983495616931548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 (SequenceMachineLib.roundAway (2 / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A276869.P13856983495616931548

namespace A276869

/-- `A195128(2/Δ[A195128(n)])` -/
def P13856983495616931548.Spec : Prop :=
  ∀ n, P13856983495616931548.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P8975340335665257577

`A119809(A049472(n+1)-A049472(n))`
-/

namespace A276869.P8975340335665257577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119809 ((A049472 (n + 1) - A049472 n).toNat + 1)

end

end A276869.P8975340335665257577

namespace A276869

/-- `A119809(A049472(n+1)-A049472(n))` -/
def P8975340335665257577.Spec : Prop :=
  ∀ n, P8975340335665257577.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P12160741482788961267

`A083047(A080755(n+1)-A083088(n))`
-/

namespace A276869.P12160741482788961267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A080755 (n + 1) - A083088 n).toNat

end

end A276869.P12160741482788961267

namespace A276869

/-- `A083047(A080755(n+1)-A083088(n))` -/
def P12160741482788961267.Spec : Prop :=
  ∀ n, P12160741482788961267.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P11445240559877919602

`A188937(A080755(n+1)-A083088(n))`
-/

namespace A276869.P11445240559877919602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188937 (A080755 (n + 1) - A083088 n).toNat

end

end A276869.P11445240559877919602

namespace A276869

/-- `A188937(A080755(n+1)-A083088(n))` -/
def P11445240559877919602.Spec : Prop :=
  ∀ n, P11445240559877919602.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P1907663420847456297

`A000040(Δ[A285077(n+1)])`
-/

namespace A276869.P1907663420847456297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A276869.P1907663420847456297

namespace A276869

/-- `A000040(Δ[A285077(n+1)])` -/
def P1907663420847456297.Spec : Prop :=
  ∀ n, P1907663420847456297.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P17942087390733500828

`A285077(Δ[A285077(n+1)])`
-/

namespace A276869.P17942087390733500828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (f1 (n + 1) - f1 n).toNat

end

end A276869.P17942087390733500828

namespace A276869

/-- `A285077(Δ[A285077(n+1)])` -/
def P17942087390733500828.Spec : Prop :=
  ∀ n, P17942087390733500828.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P6630104756509808944

`A083047(A083088(n+1)-A083088(n))`
-/

namespace A276869.P6630104756509808944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A083088 (n + 1) - A083088 n).toNat

end

end A276869.P6630104756509808944

namespace A276869

/-- `A083047(A083088(n+1)-A083088(n))` -/
def P6630104756509808944.Spec : Prop :=
  ∀ n, P6630104756509808944.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P13491376044781077264

`A188937(A083088(n+1)-A083088(n))`
-/

namespace A276869.P13491376044781077264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188937 (A083088 (n + 1) - A083088 n).toNat

end

end A276869.P13491376044781077264

namespace A276869

/-- `A188937(A083088(n+1)-A083088(n))` -/
def P13491376044781077264.Spec : Prop :=
  ∀ n, P13491376044781077264.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P5500392403703129199

`A010693(A036697(n+1))`
-/

namespace A276869.P5500392403703129199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A036697 (n + 1)).toNat

end

end A276869.P5500392403703129199

namespace A276869

/-- `A010693(A036697(n+1))` -/
def P5500392403703129199.Spec : Prop :=
  ∀ n, P5500392403703129199.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P15399362419789727238

`A176059(A036694(n+1))`
-/

namespace A276869.P15399362419789727238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (A036694 (n + 1)).toNat

end

end A276869.P15399362419789727238

namespace A276869

/-- `A176059(A036694(n+1))` -/
def P15399362419789727238.Spec : Prop :=
  ∀ n, P15399362419789727238.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P11673672506370051442

`A097509(A083088(n))`
-/

namespace A276869.P11673672506370051442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (A083088 n).toNat

end

end A276869.P11673672506370051442

namespace A276869

/-- `A097509(A083088(n))` -/
def P11673672506370051442.Spec : Prop :=
  ∀ n, P11673672506370051442.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P14667522671569462487

`A097509(A049472(n)+1+n)`
-/

namespace A276869.P14667522671569462487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (A049472 n + 1 + (n : ℤ)).toNat

end

end A276869.P14667522671569462487

namespace A276869

/-- `A097509(A049472(n)+1+n)` -/
def P14667522671569462487.Spec : Prop :=
  ∀ n, P14667522671569462487.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P16447895975448524179

`A276862(A049472(n)+n+1)`
-/

namespace A276869.P16447895975448524179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276862 (A049472 n + (n + 1 : ℤ)).toNat

end

end A276869.P16447895975448524179

namespace A276869

/-- `A276862(A049472(n)+n+1)` -/
def P16447895975448524179.Spec : Prop :=
  ∀ n, P16447895975448524179.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P14092028060343472479

`p?[Δ[A286805(n+1)]]`
-/

namespace A276869.P14092028060343472479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286805 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276869.P14092028060343472479

namespace A276869

/-- `p?[Δ[A286805(n+1)]]` -/
def P14092028060343472479.Spec : Prop :=
  ∀ n, P14092028060343472479.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P12679308486032137298

`A110012(A003151(n+1))`
-/

namespace A276869.P12679308486032137298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110012 (A003151 (n + 1)).toNat

end

end A276869.P12679308486032137298

namespace A276869

/-- `A110012(A003151(n+1))` -/
def P12679308486032137298.Spec : Prop :=
  ∀ n, P12679308486032137298.a n = A276869 (n + 1)

end A276869

/-! ## A276869.P14555403403202478499

`A110012(A003153(n+1))`
-/

namespace A276869.P14555403403202478499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110012 (A003153 (n + 1)).toNat

end

end A276869.P14555403403202478499

namespace A276869

/-- `A110012(A003153(n+1))` -/
def P14555403403202478499.Spec : Prop :=
  ∀ n, P14555403403202478499.a n = A276869 (n + 1)

end A276869

/-!
# A276870: First differences of the Beatty sequence A110117 for sqrt(2) + sqrt(3).

The programs for A276870, the canonical program `A276870.P6187380761647955707` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276870 has offset 1).

The definition of A276870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276870.P6187380761647955707

`floor((n+1)*(sqrt(2)+sqrt(3)))-floor(n*(sqrt(2)+sqrt(3)))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276870

/-- `floor((n+1)*(sqrt(2)+sqrt(3)))-floor(n*(sqrt(2)+sqrt(3)))` -/
def P6187380761647955707.Spec : Prop :=
  ∀ n, P6187380761647955707.a n = A276870 (n + 1)

theorem P6187380761647955707.correct : P6187380761647955707.Spec := by
  intro n
  simp only [A276870, Nat.add_sub_cancel]

end A276870

/-!
# A276871: Sums-complement of the Beatty sequence for sqrt(5).

The programs for A276871, there is no canonical definition to state claims against.
-/

/-! ## A276871.P3848731953767796025

`2*floor(n*ϕ^3)+1+n`
-/

namespace A276871.P3848731953767796025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) * Real.goldenRatio ^ 3⌋ + 1 + (n : ℤ)

end

end A276871.P3848731953767796025

/-! ## A276871.P975055975913833930

`abs(n-A284621(Δ[n²]))`
-/

namespace A276871.P975055975913833930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A284621 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A276871.P975055975913833930

/-! ## A276871.P9414701452228635883

`abs(A284621(2*n+1)-n)`
-/

namespace A276871.P9414701452228635883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284621 (2 * n + 1) - (n : ℤ)|

end

end A276871.P9414701452228635883

/-! ## A276871.P15991289993291639033

`(A188219(n+1)+n-2)/2`
-/

namespace A276871.P15991289993291639033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188219 (n + 1) + ((n : ℤ) - 2) : ℚ) / 2

end

end A276871.P15991289993291639033

/-! ## A276871.P14460923565312677746

`2*(A004976(n)+(n+1)/2)`
-/

namespace A276871.P14460923565312677746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A004976 n : ℚ) + (n + 1 : ℚ) / 2)

end

end A276871.P14460923565312677746

/-! ## A276871.P5831703358509062237

`A108598(floor(2*n*ϕ²)+1)`
-/

namespace A276871.P5831703358509062237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (⌊(2 * n : ℝ) * Real.goldenRatio ^ 2⌋ + 1).toNat

end

end A276871.P5831703358509062237

/-! ## A276871.P7285509063420916702

`abs(A188434(2*n+1)+n-1)`
-/

namespace A276871.P7285509063420916702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188434 (2 * n + 1) + ((n : ℤ) - 1)|

end

end A276871.P7285509063420916702

/-! ## A276871.P6850879569078891170

`abs(A288709(2*n+1)-(n+2))`
-/

namespace A276871.P6850879569078891170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288709 (2 * n + 1) - (n + 2 : ℤ)|

end

end A276871.P6850879569078891170

/-! ## A276871.P1826481006498718911

`abs(A288713(2*n+1)-(n+2))`
-/

namespace A276871.P1826481006498718911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288713 (2 * n + 1) - (n + 2 : ℤ)|

end

end A276871.P1826481006498718911

/-!
# A276872: Sums-complement of the Beatty sequence for sqrt(6).

The programs for A276872, there is no canonical definition to state claims against.
-/

/-! ## A276872.P15415767304334447933

`or(1, floor(n*sqrt(6)))+3*n`
-/

namespace A276872.P15415767304334447933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋ + (3 * n : ℤ)

end

end A276872.P15415767304334447933

/-! ## A276872.P4290764494771408191

`2*floor(n/(sqrt(6)-2))+1+n`
-/

namespace A276872.P4290764494771408191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋ + 1 + (n : ℤ)

end

end A276872.P4290764494771408191

/-! ## A276872.P5746983300664962118

`A138235(comp[A198083(n)-n])`
-/

namespace A276872.P5746983300664962118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 n - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138235 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A276872.P5746983300664962118

/-! ## A276872.P7683345380886423942

`∩[A138235(n+1), comp[A198083(n)]]`
-/

namespace A276872.P7683345380886423942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138235 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A276872.P7683345380886423942

/-! ## A276872.P15881084639610146346

`comp[∪[A022840(n+1), A198083(n)]]`
-/

namespace A276872.P15881084639610146346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A276872.P15881084639610146346

/-! ## A276872.P17652154811765391006

`comp[∪[A198083(n+1)-1, A198083(n)]]`
-/

namespace A276872.P17652154811765391006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 (n + 1) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A276872.P17652154811765391006

/-! ## A276872.P2705271610597807020

`comp[∪[A277644(2*(n+1)), A198083(n)]]`
-/

namespace A276872.P2705271610597807020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A276872.P2705271610597807020

/-!
# A276873: Sums-complement of the Beatty sequence for sqrt(7).

The programs for A276873, there is no canonical definition to state claims against.
-/

/-! ## A276873.P9182415390863088108

`comp[2*A286654(n+1)+n]`
-/

namespace A276873.P9182415390863088108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286654 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276873.P9182415390863088108

/-! ## A276873.P1692412975028014044

`A285676(comp[A198084(n)-n])`
-/

namespace A276873.P1692412975028014044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 n - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285676 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A276873.P1692412975028014044

/-! ## A276873.P4252432309740924629

`comp[∪[A022841(n+1), A198084(n)]]`
-/

namespace A276873.P4252432309740924629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A276873.P4252432309740924629

/-! ## A276873.P3618065721215774477

`∩[A285676(n+1), A198084(n)+1]`
-/

namespace A276873.P3618065721215774477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276873.P3618065721215774477

/-!
# A276874: Sums-complement of the Beatty sequence for sqrt(8).

The programs for A276874, there is no canonical definition to state claims against.
-/

/-! ## A276874.P2123789545346637688

`or(1, floor(n*(sqrt(2)+1)))+n`
-/

namespace A276874.P2123789545346637688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℝ) * (Real.sqrt (2 : ℝ) + 1)⌋ + (n : ℤ)

end

end A276874.P2123789545346637688

/-! ## A276874.P6677100019904068793

`comp[and(2, floor((n+1)*sqrt(2)))+n]`
-/

namespace A276874.P6677100019904068793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276874.P6677100019904068793

/-! ## A276874.P1776349329919715396

`2*floor(n*log(3)^2)+n+1`
-/

namespace A276874.P1776349329919715396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) * Real.log (3 : ℝ) ^ 2⌋ + (n + 1 : ℤ)

end

end A276874.P1776349329919715396

/-! ## A276874.P11483080669995932903

`comp[A028242(A292640(n+1))]`
-/

namespace A276874.P11483080669995932903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A292640 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276874.P11483080669995932903

/-! ## A276874.P18252730277289789392

`comp[A062157(A195128(n))+n]`
-/

namespace A276874.P18252730277289789392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A195128 n).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276874.P18252730277289789392

/-! ## A276874.P15348946283054790609

`comp[∪[A022842(n+1), A198263(n)]]`
-/

namespace A276874.P15348946283054790609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A276874.P15348946283054790609

/-! ## A276874.P4933327685596495166

`∩[A286323(n+1), A198263(n)+1]`
-/

namespace A276874.P4933327685596495166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276874.P4933327685596495166

/-! ## A276874.P5292267469372423855

`∩[A022846(2*n+1), A188298(n+2)-1]`
-/

namespace A276874.P5292267469372423855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276874.P5292267469372423855

/-! ## A276874.P11334624260560003351

`lt[A188297(n+1), A000035(A049473(n))]`
-/

namespace A276874.P11334624260560003351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A049473 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276874.P11334624260560003351

/-!
# A276875: Sums-complement of the Beatty sequence for e.

The programs for A276875, there is no canonical definition to state claims against.
-/

/-! ## A276875.P14107209169557727267

`comp[∪[A022843(n), A121384(n)]]`
-/

namespace A276875.P14107209169557727267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A276875.P14107209169557727267

/-! ## A276875.P12756390825688469009

`∩[A054385(n+1), A121384(n)+1]`
-/

namespace A276875.P12756390825688469009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276875.P12756390825688469009

/-! ## A276875.P9648886385311992644

`∩[A023444(A121384(n+1)), A121384(n)+1]`
-/

namespace A276875.P9648886385311992644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A121384 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276875.P9648886385311992644

/-! ## A276875.P2576611679769000632

`A007094(3*n+1)-A143517(A360558(3*n+4))`
-/

namespace A276875.P2576611679769000632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (3 * n + 1) - A143517 (A360558 (3 * n + 4)).toNat

end

end A276875.P2576611679769000632

/-! ## A276875.P188655011094072389

`A327482(A263771(n))+A007094(3*n)`
-/

namespace A276875.P188655011094072389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327482 (A263771 n).toNat + A007094 (3 * n)

end

end A276875.P188655011094072389

/-!
# A276876: Sums-complement of the Beatty sequence for 2e.

The programs for A276876, there is no canonical definition to state claims against.
-/

/-! ## A276876.P5452778816635441473

`record[A033999(A032634(n))+n]`
-/

namespace A276876.P5452778816635441473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A032634 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276876.P5452778816635441473

/-! ## A276876.P1142380369076421876

`comp[∪[A121384(2*n), A276853(n)]]`
-/

namespace A276876.P1142380369076421876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A276876.P1142380369076421876

/-! ## A276876.P16706539040428184564

`comp[A276853(n)-A276853(A059399(n+1))]`
-/

namespace A276876.P16706539040428184564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 n - A276853 (A059399 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276876.P16706539040428184564

/-!
# A276877: Sums-complement of the Beatty sequence for Pi.

The programs for A276877, there is no canonical definition to state claims against.
-/

/-! ## A276877.P16126865177123040091

`lt[cosh(1), abs(tan(n))]`
-/

namespace A276877.P16126865177123040091
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.tan (n : ℝ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276877.P16126865177123040091

/-! ## A276877.P15602179852983827487

`lt[cot(10), abs(tan(n))]`
-/

namespace A276877.P15602179852983827487
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (10 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.tan (n : ℝ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276877.P15602179852983827487

/-! ## A276877.P2403536701938723865

`lt[5, tan(cosh(sin(n)))]`
-/

namespace A276877.P2403536701938723865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (Real.cosh (Real.sin (n : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A276877.P2403536701938723865

/-! ## A276877.P15234047865350077107

`lt[atan(5), cosh(sin(n))]`
-/

namespace A276877.P15234047865350077107
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (5 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.sin (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276877.P15234047865350077107

/-! ## A276877.P16082226344900479257

`lt[cos(γ), abs(sin(n))]`
-/

namespace A276877.P16082226344900479257
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos Real.eulerMascheroniConstant

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin (n : ℝ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276877.P16082226344900479257

/-! ## A276877.P7215329710133652891

`lt[asin(abs(cos(n))), γ]`
-/

namespace A276877.P7215329710133652891
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin |Real.cos (n : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276877.P7215329710133652891

/-! ## A276877.P10406967189378827586

`lt[acos(abs(sin(n))), γ]`
-/

namespace A276877.P10406967189378827586
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos |Real.sin (n : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276877.P10406967189378827586

/-! ## A276877.P3089712899063741124

`lt[e, cot(cos(n))²]`
-/

namespace A276877.P3089712899063741124
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.cos (n : ℝ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276877.P3089712899063741124

/-! ## A276877.P1371604146889146950

`lt[sinh(ϕ), tan(n)²]`
-/

namespace A276877.P1371604146889146950
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sinh Real.goldenRatio

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276877.P1371604146889146950

/-! ## A276877.P4505950193910864991

`lt[acot(abs(tan(n))), γ]`
-/

namespace A276877.P4505950193910864991
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot |Real.tan (n : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276877.P4505950193910864991

/-!
# A276878: Sums-complement of the Beatty sequence for 2*Pi.

The programs for A276878, there is no canonical definition to state claims against.
-/

/-! ## A276878.P2680163232912240098

`lt[cos(n), sin(32)]`
-/

namespace A276878.P2680163232912240098
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (32 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276878.P2680163232912240098

/-! ## A276878.P16200016833703167091

`lt[cos(n), cos(43)]`
-/

namespace A276878.P16200016833703167091
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (43 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276878.P16200016833703167091

/-! ## A276878.P3255409963588402149

`lt[sin(n+ϕ), γ]`
-/

namespace A276878.P3255409963588402149
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((n : ℝ) + Real.goldenRatio)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276878.P3255409963588402149

/-! ## A276878.P18312173883456403766

`lt[round(sin(n+ϕ)), 1]`
-/

namespace A276878.P18312173883456403766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((n : ℝ) + Real.goldenRatio))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276878.P18312173883456403766

/-! ## A276878.P307234932722843074

`lt[2*sin(n+ϕ), 1]`
-/

namespace A276878.P307234932722843074
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sin ((n : ℝ) + Real.goldenRatio)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A276878.P307234932722843074

/-! ## A276878.P5182908977090132376

`lt[sin(n+1)², ∑[sin(n)]]`
-/

namespace A276878.P5182908977090132376
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ) ^ 2

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276878.P5182908977090132376

/-! ## A276878.P17603976388566256405

`lt[3/tan((n+1)/2), 2]`
-/

namespace A276878.P17603976388566256405
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 / Real.tan ((n + 1 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A276878.P17603976388566256405

/-! ## A276878.P4563351966119038020

`lt[3*cot((n+1)/2), 2]`
-/

namespace A276878.P4563351966119038020
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.cot ((n + 1 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A276878.P4563351966119038020

/-! ## A276878.P14456195181801751994

`lt[cot((n+1)/2), 2/3]`
-/

namespace A276878.P14456195181801751994
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot ((n + 1 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A276878.P14456195181801751994

/-! ## A276878.P4688257656192206092

`lt[(1-A054674(n))², n]`
-/

namespace A276878.P4688257656192206092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A054674 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276878.P4688257656192206092

/-!
# A276879: Sums-complement of the Beatty sequence for 1 + sqrt(2).

The programs for A276879, the canonical program `A276879.P10970740228062955951` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276879 has offset 1).

The definition of A276879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276879.P10970740228062955951

`A188042(A188298(2*n+1)+n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276879

/-- `A188042(A188298(2*n+1)+n)` -/
def P10970740228062955951.Spec : Prop :=
  ∀ n, P10970740228062955951.a n = A276879 (n + 1)

theorem P10970740228062955951.correct : P10970740228062955951.Spec := by
  intro n
  simp only [A276879, Nat.add_sub_cancel]

end A276879

/-! ## A276879.P17134376051741858787

`A188040(A188039(n+1)-(n+1))`
-/

namespace A276879.P17134376051741858787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 (A188039 (n + 1) - (n + 1 : ℤ)).toNat

end

end A276879.P17134376051741858787

namespace A276879

/-- `A188040(A188039(n+1)-(n+1))` -/
def P17134376051741858787.Spec : Prop :=
  ∀ n, P17134376051741858787.a n = A276879 (n + 1)

end A276879

/-! ## A276879.P15688503383971139669

`A188040(A007069(A336109(2*n+1)))`
-/

namespace A276879.P15688503383971139669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 (A007069 (A336109 (2 * n + 1)).toNat).toNat

end

end A276879.P15688503383971139669

namespace A276879

/-- `A188040(A007069(A336109(2*n+1)))` -/
def P15688503383971139669.Spec : Prop :=
  ∀ n, P15688503383971139669.a n = A276879 (n + 1)

end A276879

/-! ## A276879.P7202075821540840537

`A003152(A258703(A003152(A001951(2*n)+1))+1)`
-/

namespace A276879.P7202075821540840537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A258703 (A003152 (A001951 (2 * n) + 1).toNat).toNat + 1).toNat

end

end A276879.P7202075821540840537

namespace A276879

/-- `A003152(A258703(A003152(A001951(2*n)+1))+1)` -/
def P7202075821540840537.Spec : Prop :=
  ∀ n, P7202075821540840537.a n = A276879 (n + 1)

end A276879

/-! ## A276879.P3991146488397499532

`A267458(A285075(2*n+1))+n`
-/

namespace A276879.P3991146488397499532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A285075 (2 * n + 1)).toNat + (n : ℤ)

end

end A276879.P3991146488397499532

namespace A276879

/-- `A267458(A285075(2*n+1))+n` -/
def P3991146488397499532.Spec : Prop :=
  ∀ n, P3991146488397499532.a n = A276879 (n + 1)

end A276879

/-! ## A276879.P7257260925551657076

`A188039(n+1)-A188467(A188032(n+1))`
-/

namespace A276879.P7257260925551657076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (n + 1) - A188467 (A188032 (n + 1)).toNat

end

end A276879.P7257260925551657076

namespace A276879

/-- `A188039(n+1)-A188467(A188032(n+1))` -/
def P7257260925551657076.Spec : Prop :=
  ∀ n, P7257260925551657076.a n = A276879 (n + 1)

end A276879

/-! ## A276879.P13419952454441625570

`A188039(n+1)-A188068(A188074(n+1))`
-/

namespace A276879.P13419952454441625570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (n + 1) - A188068 (A188074 (n + 1)).toNat

end

end A276879.P13419952454441625570

namespace A276879

/-- `A188039(n+1)-A188068(A188074(n+1))` -/
def P13419952454441625570.Spec : Prop :=
  ∀ n, P13419952454441625570.a n = A276879 (n + 1)

end A276879

/-! ## A276879.P16305953428787719058

`eq[0, A188038(n+1)]`
-/

namespace A276879.P16305953428787719058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276879.P16305953428787719058

namespace A276879

/-- `eq[0, A188038(n+1)]` -/
def P16305953428787719058.Spec : Prop :=
  ∀ n, (P16305953428787719058.a n : ℤ) = A276879 (n + 1)

end A276879

/-! ## A276879.P4187781045614822308

`lt[0, Δ[A327177(n)]]+1`
-/

namespace A276879.P4187781045614822308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A276879.P4187781045614822308

namespace A276879

/-- `lt[0, Δ[A327177(n)]]+1` -/
def P4187781045614822308.Spec : Prop :=
  ∀ n, (P4187781045614822308.a n : ℤ) = A276879 (n + 1)

end A276879

/-! ## A276879.P3155727183032654529

`lt[A188038(n+2), 1]+1`
-/

namespace A276879.P3155727183032654529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A276879.P3155727183032654529

namespace A276879

/-- `lt[A188038(n+2), 1]+1` -/
def P3155727183032654529.Spec : Prop :=
  ∀ n, (P3155727183032654529.a n : ℤ) = A276879 (n + 1)

end A276879

/-! ## A276879.P3697792121471769141

`lt[Δ[A285076(n+1)]², 1]`
-/

namespace A276879.P3697792121471769141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A276879.P3697792121471769141

namespace A276879

/-- `lt[Δ[A285076(n+1)]², 1]` -/
def P3697792121471769141.Spec : Prop :=
  ∀ n, (P3697792121471769141.a n : ℤ) = A276879 (n + 1)

end A276879

/-! ## A276879.P12878302465079844715

`A023443(A188039(n+1))`
-/

namespace A276879.P12878302465079844715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A188039 (n + 1)).toNat

end

end A276879.P12878302465079844715

namespace A276879

/-- `A023443(A188039(n+1))` -/
def P12878302465079844715.Spec : Prop :=
  ∀ n, P12878302465079844715.a n = A276879 (n + 1)

end A276879

/-! ## A276879.P15331441588675856900

`filter[A083088(n), A144611(#)]`
-/

namespace A276879.P15331441588675856900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144611 (f1 j).toNat = 1) n)

end

end A276879.P15331441588675856900

namespace A276879

/-- `filter[A083088(n), A144611(#)]` -/
def P15331441588675856900.Spec : Prop :=
  ∀ n, P15331441588675856900.a n = A276879 (n + 1)

end A276879

/-! ## A276879.P5772613303387198385

`filter[A083088(n), A159684(#)]`
-/

namespace A276879.P5772613303387198385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A159684 (f1 j).toNat = 1) n)

end

end A276879.P5772613303387198385

namespace A276879

/-- `filter[A083088(n), A159684(#)]` -/
def P5772613303387198385.Spec : Prop :=
  ∀ n, P5772613303387198385.a n = A276879 (n + 1)

end A276879

/-! ## A276879.P3821918853547752076

`filter[A003152(n+1), A285076(#)]`
-/

namespace A276879.P3821918853547752076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285076 (f1 j).toNat = 1) n)

end

end A276879.P3821918853547752076

namespace A276879

/-- `filter[A003152(n+1), A285076(#)]` -/
def P3821918853547752076.Spec : Prop :=
  ∀ n, P3821918853547752076.a n = A276879 (n + 1)

end A276879

/-! ## A276879.P17846568776261666259

`filter[A285078(n+1), A144611(#)]`
-/

namespace A276879.P17846568776261666259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144611 (f1 j).toNat = 1) n)

end

end A276879.P17846568776261666259

namespace A276879

/-- `filter[A285078(n+1), A144611(#)]` -/
def P17846568776261666259.Spec : Prop :=
  ∀ n, P17846568776261666259.a n = A276879 (n + 1)

end A276879

/-! ## A276879.P7315610170473197727

`filter[A285078(n+1), A159684(#)]`
-/

namespace A276879.P7315610170473197727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A159684 (f1 j).toNat = 1) n)

end

end A276879.P7315610170473197727

namespace A276879

/-- `filter[A285078(n+1), A159684(#)]` -/
def P7315610170473197727.Spec : Prop :=
  ∀ n, P7315610170473197727.a n = A276879 (n + 1)

end A276879

/-! ## A276879.P10889742587337566522

`filter[A286666(n+1), A285076(#)]`
-/

namespace A276879.P10889742587337566522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285076 (f1 j).toNat = 1) n)

end

end A276879.P10889742587337566522

namespace A276879

/-- `filter[A286666(n+1), A285076(#)]` -/
def P10889742587337566522.Spec : Prop :=
  ∀ n, P10889742587337566522.a n = A276879 (n + 1)

end A276879

/-! ## A276879.P9590617315854882991

`filter[A327206(n+1), A285076(#)]`
-/

namespace A276879.P9590617315854882991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285076 (f1 j).toNat = 1) n)

end

end A276879.P9590617315854882991

namespace A276879

/-- `filter[A327206(n+1), A285076(#)]` -/
def P9590617315854882991.Spec : Prop :=
  ∀ n, P9590617315854882991.a n = A276879 (n + 1)

end A276879

/-!
# A276880: Sums-complement of the Beatty sequence for 1 + sqrt(3).

The programs for A276880, there is no canonical definition to state claims against.
-/

/-! ## A276880.P16045375617083896368

`lt[A245222(comp[2*n+3]), A245222(n+1)]`
-/

namespace A276880.P16045375617083896368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245222 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A276880.P16045375617083896368

/-! ## A276880.P2880864488060534510

`A330143(A090846(n))`
-/

namespace A276880.P2880864488060534510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330143 (A090846 n).toNat

end

end A276880.P2880864488060534510

/-! ## A276880.P17492331597077435038

`A194509(A276871(2*n+1)-A194509(n+2))`
-/

namespace A276880.P17492331597077435038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A276871 (2 * n + 1) - A194509 (n + 2)).toNat

end

end A276880.P17492331597077435038

/-! ## A276880.P11157522376812222834

`A344543(3*n+1)+A209229(A064262(n+1))`
-/

namespace A276880.P11157522376812222834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (3 * n + 1) + A209229 (A064262 (n + 1)).toNat

end

end A276880.P11157522376812222834

/-!
# A276881: Sums-complement of the Beatty sequence for 1 + sqrt(5).

The programs for A276881, there is no canonical definition to state claims against.
-/

/-! ## A276881.P8882017378062890299

`or(1, floor(ϕ*n))+n`
-/

namespace A276881.P8882017378062890299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊Real.goldenRatio * (n : ℝ)⌋ + (n : ℤ)

end

end A276881.P8882017378062890299

/-! ## A276881.P8439676531709060698

`and(-2, floor(ϕ*n))+1+n`
-/

namespace A276881.P8439676531709060698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ⌊Real.goldenRatio * (n : ℝ)⌋ + 1 + (n : ℤ)

end

end A276881.P8439676531709060698

/-! ## A276881.P15691255244040205708

`comp[ceil((and(1, n)+n)/ϕ)+n]`
-/

namespace A276881.P15691255244040205708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 1 n + n : ℝ) / Real.goldenRatio⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276881.P15691255244040205708

/-! ## A276881.P2687967783224718749

`2*floor(ϕ*n/2)+1+n`
-/

namespace A276881.P2687967783224718749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * ((n : ℚ) / 2 : ℝ)⌋ + 1 + (n : ℤ)

end

end A276881.P2687967783224718749

/-! ## A276881.P17929013690451025832

`abs(comp[ceil(ϕ*n)]-floor(ϕ*n)%2)`
-/

namespace A276881.P17929013690451025832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - Int.tmod ⌊Real.goldenRatio * (n : ℝ)⌋ 2|

end

end A276881.P17929013690451025832

/-! ## A276881.P15783767729485657190

`record[gcd(3, A316340(n))+n]`
-/

namespace A276881.P15783767729485657190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A316340 n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276881.P15783767729485657190

/-! ## A276881.P11024173427357861838

`record[A002251(n)+log2(gcd(2, n))]`
-/

namespace A276881.P11024173427357861838
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002251 n : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276881.P11024173427357861838

/-! ## A276881.P3036226322335945300

`record[A019444(n+1)-n%2]`
-/

namespace A276881.P3036226322335945300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019444 (n + 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276881.P3036226322335945300

/-! ## A276881.P7461156466095239301

`comp[and(2, A001962(n+1))+n]`
-/

namespace A276881.P7461156466095239301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A001962 (n + 1)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276881.P7461156466095239301

/-! ## A276881.P4263785446463641411

`record[A002251(n)+and(1, A020639(n+1))]`
-/

namespace A276881.P4263785446463641411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n + Int.land 1 (A020639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276881.P4263785446463641411

/-!
# A276882: Sums-complement of the Beatty sequence for 2 + sqrt(2).

The programs for A276882, there is no canonical definition to state claims against.
-/

/-! ## A276882.P922280346919329359

`or(1, floor(n*sqrt(2)))+n`
-/

namespace A276882.P922280346919329359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n : ℤ)

end

end A276882.P922280346919329359

/-! ## A276882.P15769279387615228749

`2*floor(n/sqrt(2))+1+n`
-/

namespace A276882.P15769279387615228749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋ + 1 + (n : ℤ)

end

end A276882.P15769279387615228749

/-! ## A276882.P9241474361182657036

`abs(or(1, -ceil(n*sqrt(2)))-n)`
-/

namespace A276882.P9241474361182657036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉) - (n : ℤ)|

end

end A276882.P9241474361182657036

/-! ## A276882.P4639787699221433691

`floor(sqrt(2)*A083088(n))`
-/

namespace A276882.P4639787699221433691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A083088 n : ℝ)⌋

end

end A276882.P4639787699221433691

/-! ## A276882.P9277398402644586817

`abs(1-(A099188(n)+n))`
-/

namespace A276882.P9277398402644586817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A099188 n + (n : ℤ))|

end

end A276882.P9277398402644586817

/-! ## A276882.P17152562175081007361

`abs(1-comp[A188298(n+1)])`
-/

namespace A276882.P17152562175081007361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)|

end

end A276882.P17152562175081007361

/-! ## A276882.P7411774918602585177

`A258833(floor(n/sqrt(2))+n)`
-/

namespace A276882.P7411774918602585177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258833 (⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋ + (n : ℤ)).toNat

end

end A276882.P7411774918602585177

/-! ## A276882.P17346468878293539225

`abs(1-(2*A049474(n)+n))`
-/

namespace A276882.P17346468878293539225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * A049474 n + (n : ℤ))|

end

end A276882.P17346468878293539225

/-! ## A276882.P12307048105364890500

`A001951(A083088(n))`
-/

namespace A276882.P12307048105364890500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A083088 n).toNat

end

end A276882.P12307048105364890500

/-! ## A276882.P11786038773603637918

`A097508(A188319(n+1))`
-/

namespace A276882.P11786038773603637918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A188319 (n + 1)).toNat

end

end A276882.P11786038773603637918

/-!
# A276883: Sums-complement of the Beatty sequence for 2 + sqrt(3).

The programs for A276883, there is no canonical definition to state claims against.
-/

/-! ## A276883.P13786793798464562855

`2*floor(γ*n)+1+n`
-/

namespace A276883.P13786793798464562855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.eulerMascheroniConstant * (n : ℝ)⌋ + 1 + (n : ℤ)

end

end A276883.P13786793798464562855

/-! ## A276883.P9564168760154115009

`abs(xor(2*floor(γ*n), -1)-n)`
-/

namespace A276883.P9564168760154115009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (2 * ⌊Real.eulerMascheroniConstant * (n : ℝ)⌋) (-1) - (n : ℤ)|

end

end A276883.P9564168760154115009

/-! ## A276883.P17125566076376166209

`lt[A194741(n+1), n/sqrt(5)]`
-/

namespace A276883.P17125566076376166209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194741 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.sqrt (5 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A276883.P17125566076376166209

/-! ## A276883.P8616368104057343635

`A003511(floor(γ*n)+n+1)`
-/

namespace A276883.P8616368104057343635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (⌊Real.eulerMascheroniConstant * (n : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A276883.P8616368104057343635

/-! ## A276883.P15287464841354211849

`lt[A120864(n+1), ϕ*(n+1)]`
-/

namespace A276883.P15287464841354211849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120864 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A276883.P15287464841354211849

/-! ## A276883.P17628056177410306324

`record[n+3-2*A188076(n+2)]`
-/

namespace A276883.P17628056177410306324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 2 * A188076 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276883.P17628056177410306324

/-! ## A276883.P8504260041070955283

`abs(2*A038128(n)+Δ[n²]-n)`
-/

namespace A276883.P8504260041070955283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A038128 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))|

end

end A276883.P8504260041070955283

/-! ## A276883.P16286060972748916104

`eq[0, A188076(A054088(n+1))]`
-/

namespace A276883.P16286060972748916104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A054088 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276883.P16286060972748916104

/-! ## A276883.P12025993750606447088

`eq[A060576(n), A188071(n+1)]`
-/

namespace A276883.P12025993750606447088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276883.P12025993750606447088

/-! ## A276883.P10700655565831685016

`∪[A080590(n+1), A180123(n+1)]`
-/

namespace A276883.P10700655565831685016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A276883.P10700655565831685016

/-!
# A276884: Sums-complement of the Beatty sequence for 2 + sqrt(5).

The programs for A276884, there is no canonical definition to state claims against.
-/

/-! ## A276884.P6829820902859575347

`2*floor(n/sqrt(5))+1+n`
-/

namespace A276884.P6829820902859575347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) / Real.sqrt (5 : ℝ)⌋ + 1 + (n : ℤ)

end

end A276884.P6829820902859575347

/-! ## A276884.P2555180694087789229

`abs(1-A188190(n+1))`
-/

namespace A276884.P2555180694087789229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A188190 (n + 1)|

end

end A276884.P2555180694087789229

/-! ## A276884.P14403599553177945798

`comp[A188191(n+1)-1]`
-/

namespace A276884.P14403599553177945798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188191 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276884.P14403599553177945798

/-! ## A276884.P13100737910075777496

`comp[n*A188189(n+1)]`
-/

namespace A276884.P13100737910075777496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A188189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276884.P13100737910075777496

/-! ## A276884.P13859212533792484778

`record[n+1-A356749(2*n)]`
-/

namespace A276884.P13859212533792484778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A356749 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276884.P13859212533792484778

/-! ## A276884.P10134864048527599615

`comp[n*A188014(2*(n+1))]`
-/

namespace A276884.P10134864048527599615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A188014 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276884.P10134864048527599615

/-! ## A276884.P4819274973376100952

`record[A028242(A002251(n))]`
-/

namespace A276884.P4819274973376100952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A002251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276884.P4819274973376100952

/-! ## A276884.P214521886952071994

`A023443(A188190(n+1))`
-/

namespace A276884.P214521886952071994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A188190 (n + 1)).toNat

end

end A276884.P214521886952071994

/-! ## A276884.P7986306979603894991

`eq[A063667(n), A188189(n+1)]`
-/

namespace A276884.P7986306979603894991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276884.P7986306979603894991

/-! ## A276884.P5404132639551462245

`∩[A188188(n+1), A188222(n+1)]`
-/

namespace A276884.P5404132639551462245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276884.P5404132639551462245

/-!
# A276885: Sums-complement of the Beatty sequence for 1 + phi.

The programs for A276885, the canonical program `A276885.P994545349588383328` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276885 has offset 1).

The definition of A276885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276885.P10014093626516592343

`floor(ϕ*comp[ceil(ϕ*n)])`
-/

namespace A276885.P10014093626516592343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ)⌋

end

end A276885.P10014093626516592343

namespace A276885

/-- `floor(ϕ*comp[ceil(ϕ*n)])` -/
def P10014093626516592343.Spec : Prop :=
  ∀ n, P10014093626516592343.a n = A276885 (n + 1)

end A276885

/-! ## A276885.P8463642578726024362

`or(1, floor(2*ϕ*n))+n`
-/

namespace A276885.P8463642578726024362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊2 * (Real.goldenRatio * (n : ℝ))⌋ + (n : ℤ)

end

end A276885.P8463642578726024362

namespace A276885

/-- `or(1, floor(2*ϕ*n))+n` -/
def P8463642578726024362.Spec : Prop :=
  ∀ n, P8463642578726024362.a n = A276885 (n + 1)

end A276885

/-! ## A276885.P10471416151115170861

`xor(1, 2*floor(ϕ*n))+n`
-/

namespace A276885.P10471416151115170861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌊Real.goldenRatio * (n : ℝ)⌋) + (n : ℤ)

end

end A276885.P10471416151115170861

namespace A276885

/-- `xor(1, 2*floor(ϕ*n))+n` -/
def P10471416151115170861.Spec : Prop :=
  ∀ n, P10471416151115170861.a n = A276885 (n + 1)

end A276885

/-! ## A276885.P12593950994295322936

`2*floor(ϕ*n)-xor(n, -1)`
-/

namespace A276885.P12593950994295322936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n : ℝ)⌋ - Int.xor (n : ℤ) (-1)

end

end A276885.P12593950994295322936

namespace A276885

/-- `2*floor(ϕ*n)-xor(n, -1)` -/
def P12593950994295322936.Spec : Prop :=
  ∀ n, P12593950994295322936.a n = A276885 (n + 1)

end A276885

/-! ## A276885.P131042284617409963

`∩[floor(ϕ*n)+1, floor(ϕ*n)]`
-/

namespace A276885.P131042284617409963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276885.P131042284617409963

namespace A276885

/-- `∩[floor(ϕ*n)+1, floor(ϕ*n)]` -/
def P131042284617409963.Spec : Prop :=
  ∀ n, (P131042284617409963.a n : ℤ) = A276885 (n + 1)

end A276885

/-! ## A276885.P3606426224696537692

`lcm(2, 2*floor(ϕ*n))+1+n`
-/

namespace A276885.P3606426224696537692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * ⌊Real.goldenRatio * (n : ℝ)⌋) + 1 + n

end

end A276885.P3606426224696537692

namespace A276885

/-- `lcm(2, 2*floor(ϕ*n))+1+n` -/
def P3606426224696537692.Spec : Prop :=
  ∀ n, (P3606426224696537692.a n : ℤ) = A276885 (n + 1)

end A276885

/-! ## A276885.P12026911922788596987

`C(n+1, n)+2*floor(ϕ*n)`
-/

namespace A276885.P12026911922788596987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) n : ℤ) + 2 * ⌊Real.goldenRatio * (n : ℝ)⌋

end

end A276885.P12026911922788596987

namespace A276885

/-- `C(n+1, n)+2*floor(ϕ*n)` -/
def P12026911922788596987.Spec : Prop :=
  ∀ n, P12026911922788596987.a n = A276885 (n + 1)

end A276885

/-! ## A276885.P4944247790345394089

`2*floor(cot(acot(n)/ϕ))+n+1`
-/

namespace A276885.P4944247790345394089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.cot (SequenceMachineLib.acot (n : ℝ) / Real.goldenRatio)⌋ + (n + 1 : ℤ)

end

end A276885.P4944247790345394089

namespace A276885

/-- `2*floor(cot(acot(n)/ϕ))+n+1` -/
def P4944247790345394089.Spec : Prop :=
  ∀ n, P4944247790345394089.a n = A276885 (n + 1)

end A276885

/-! ## A276885.P7330332430468279292

`record[gcd(floor(ϕ*(n+1)), ceil(ϕ*n))]`
-/

namespace A276885.P7330332430468279292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276885.P7330332430468279292

namespace A276885

/-- `record[gcd(floor(ϕ*(n+1)), ceil(ϕ*n))]` -/
def P7330332430468279292.Spec : Prop :=
  ∀ n, (P7330332430468279292.a n : ℤ) = A276885 (n + 1)

end A276885

/-! ## A276885.P14394174217026905400

`A047924(n)-2`
-/

namespace A276885.P14394174217026905400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047924 n - 2

end

end A276885.P14394174217026905400

namespace A276885

/-- `A047924(n)-2` -/
def P14394174217026905400.Spec : Prop :=
  ∀ n, P14394174217026905400.a n = A276885 (n + 1)

end A276885

/-! ## A276885.P994545349588383328

`A130568(n)+n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276885

/-- `A130568(n)+n` -/
def P994545349588383328.Spec : Prop :=
  ∀ n, P994545349588383328.a n = A276885 (n + 1)

theorem P994545349588383328.correct : P994545349588383328.Spec := by
  intro n
  simp only [A276885, Nat.add_sub_cancel]

end A276885

/-! ## A276885.P13228971497688719225

`A188434(n+1)-1`
-/

namespace A276885.P13228971497688719225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (n + 1) - 1

end

end A276885.P13228971497688719225

namespace A276885

/-- `A188434(n+1)-1` -/
def P13228971497688719225.Spec : Prop :=
  ∀ n, P13228971497688719225.a n = A276885 (n + 1)

theorem P13228971497688719225.correct : P13228971497688719225.Spec := by
  intro n
  simp only [A276885, Nat.add_sub_cancel, A276885.P13228971497688719225.a, A276885.P994545349588383328.a, A130568, A130568.P15557830323958427983.a, A188434, A188434.P14872401721499474557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276885

/-! ## A276885.P286690611685881296

`A284621(n+1)-n`
-/

namespace A276885.P286690611685881296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284621 (n + 1) - (n : ℤ)

end

end A276885.P286690611685881296

namespace A276885

/-- `A284621(n+1)-n` -/
def P286690611685881296.Spec : Prop :=
  ∀ n, P286690611685881296.a n = A276885 (n + 1)

end A276885

/-! ## A276885.P9571197269686728172

`A288709(n+1)-(n+2)`
-/

namespace A276885.P9571197269686728172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288709 (n + 1) - (n + 2 : ℤ)

end

end A276885.P9571197269686728172

namespace A276885

/-- `A288709(n+1)-(n+2)` -/
def P9571197269686728172.Spec : Prop :=
  ∀ n, P9571197269686728172.a n = A276885 (n + 1)

end A276885

/-! ## A276885.P8817600016536588580

`2*A066096(n)+n+1`
-/

namespace A276885.P8817600016536588580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066096 n + (n + 1 : ℤ)

end

end A276885.P8817600016536588580

namespace A276885

/-- `2*A066096(n)+n+1` -/
def P8817600016536588580.Spec : Prop :=
  ∀ n, P8817600016536588580.a n = A276885 (n + 1)

theorem P8817600016536588580.correct : P8817600016536588580.Spec := by
  intro n
  simp only [A276885, Nat.add_sub_cancel, A276885.P8817600016536588580.a, A276885.P994545349588383328.a, A066096, A066096.P2651506377198414293.a, A130568, A130568.P15557830323958427983.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276885

/-! ## A276885.P12042387949474255110

`2*A026352(n)-(n+1)`
-/

namespace A276885.P12042387949474255110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026352 n - (n + 1 : ℤ)

end

end A276885.P12042387949474255110

namespace A276885

/-- `2*A026352(n)-(n+1)` -/
def P12042387949474255110.Spec : Prop :=
  ∀ n, P12042387949474255110.a n = A276885 (n + 1)

theorem P12042387949474255110.correct : P12042387949474255110.Spec := by
  intro n
  simp only [A276885, Nat.add_sub_cancel, A276885.P12042387949474255110.a, A276885.P994545349588383328.a, A026352, A026352.P12148226438592254033.a, A130568, A130568.P15557830323958427983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276885

/-! ## A276885.P15028202754999866732

`A285682(n+1)-Δ[n²]`
-/

namespace A276885.P15028202754999866732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285682 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A276885.P15028202754999866732

namespace A276885

/-- `A285682(n+1)-Δ[n²]` -/
def P15028202754999866732.Spec : Prop :=
  ∀ n, P15028202754999866732.a n = A276885 (n + 1)

end A276885

/-!
# A276886: Sums-complement of the Beatty sequence for 2 + phi.

The programs for A276886, the canonical program `A276886.P1510064001789446143` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276886 has offset 1).

The definition of A276886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276886.P1510064001789446143

`2*floor(n*ϕ)-(n+1)+2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A276886

/-- `2*floor(n*ϕ)-(n+1)+2` -/
def P1510064001789446143.Spec : Prop :=
  ∀ n, P1510064001789446143.a n = A276886 (n + 1)

theorem P1510064001789446143.correct : P1510064001789446143.Spec := by
  intro n
  simp only [A276886, Nat.add_sub_cancel]

end A276886

/-! ## A276886.P16654090298226624094

`abs(or(1, floor(2*ϕ*n))-n)`
-/

namespace A276886.P16654090298226624094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ⌊2 * (Real.goldenRatio * (n : ℝ))⌋ - (n : ℤ)|

end

end A276886.P16654090298226624094

namespace A276886

/-- `abs(or(1, floor(2*ϕ*n))-n)` -/
def P16654090298226624094.Spec : Prop :=
  ∀ n, P16654090298226624094.a n = A276886 (n + 1)

end A276886

/-! ## A276886.P2334560862926463004

`abs(xor(1, 2*floor(ϕ*n))-n)`
-/

namespace A276886.P2334560862926463004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (2 * ⌊Real.goldenRatio * (n : ℝ)⌋) - (n : ℤ)|

end

end A276886.P2334560862926463004

namespace A276886

/-- `abs(xor(1, 2*floor(ϕ*n))-n)` -/
def P2334560862926463004.Spec : Prop :=
  ∀ n, P2334560862926463004.a n = A276886 (n + 1)

end A276886

/-!
# A276887: Sums-complement of the Beatty sequence for 3 + tau.

The programs for A276887, there is no canonical definition to state claims against.
-/

/-! ## A276887.P10093430112206816375

`or(1, floor(n*(3-sqrt(5))))+n`
-/

namespace A276887.P10093430112206816375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℝ) * (3 - Real.sqrt (5 : ℝ))⌋ + (n : ℤ)

end

end A276887.P10093430112206816375

/-! ## A276887.P1000315517914823935

`2*floor(n/ϕ²)+1+n`
-/

namespace A276887.P1000315517914823935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋ + 1 + (n : ℤ)

end

end A276887.P1000315517914823935

/-! ## A276887.P9582336530877482757

`(7*n+3)%(floor(n*ϕ²)+2)`
-/

namespace A276887.P9582336530877482757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 * n + 3 : ℤ) (⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 2)

end

end A276887.P9582336530877482757

/-! ## A276887.P5593504197917220008

`comp[ceil(ϕ*∑[ϕ-a(n-1)])+n]` with `a(0)=0`
-/

namespace A276887.P5593504197917220008
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f2 =>
  Real.goldenRatio - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (∑ j ∈ Finset.range (n + 1), f2 j)⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276887.P5593504197917220008

/-! ## A276887.P12668540166243125427

`∑[gcd(3, A083368(n+1)!)]`
-/

namespace A276887.P12668540166243125427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (Nat.factorial (A083368 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276887.P12668540166243125427

/-! ## A276887.P1601527644252773199

`∑[3%Δ[A247648(n+1)]]`
-/

namespace A276887.P1601527644252773199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276887.P1601527644252773199

/-! ## A276887.P16311140463853326077

`abs(6*n+2-A047924(n))`
-/

namespace A276887.P16311140463853326077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 * n : ℤ) + (2 - A047924 n)|

end

end A276887.P16311140463853326077

/-! ## A276887.P11794257625353563719

`abs(floor(2/acot(n))-A060145(n))`
-/

namespace A276887.P11794257625353563719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - A060145 n|

end

end A276887.P11794257625353563719

/-! ## A276887.P4288351400597299978

`∑[2*char[A001950(n+1)+1]+1]`
-/

namespace A276887.P4288351400597299978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276887.P4288351400597299978

/-! ## A276887.P10796086929499129899

`abs(A004277(n)-A060145(n))`
-/

namespace A276887.P10796086929499129899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 n - A060145 n|

end

end A276887.P10796086929499129899

/-!
# A276888: Sums-complement of the Beatty sequence for 2 + sqrt(1/2).

The programs for A276888, there is no canonical definition to state claims against.
-/

/-! ## A276888.P17144007933406878692

`or(1, floor(n*sqrt(8)))+n`
-/

namespace A276888.P17144007933406878692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋ + (n : ℤ)

end

end A276888.P17144007933406878692

/-! ## A276888.P10834423783805000093

`2*floor(n*sqrt(2))+1+n`
-/

namespace A276888.P10834423783805000093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1 + (n : ℤ)

end

end A276888.P10834423783805000093

/-! ## A276888.P1604566690030917604

`abs(A099188(2*n)-1+n)`
-/

namespace A276888.P1604566690030917604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099188 (2 * n) - 1 + (n : ℤ)|

end

end A276888.P1604566690030917604

/-! ## A276888.P18029311613083688400

`abs(2*n-A276879(n+1))`
-/

namespace A276888.P18029311613083688400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A276879 (n + 1)|

end

end A276888.P18029311613083688400

/-! ## A276888.P12009286923953541070

`abs(A188039(n+1)-Δ[n²])`
-/

namespace A276888.P12009286923953541070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188039 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A276888.P12009286923953541070

/-! ## A276888.P11070015058246748997

`2*(A001951(n)+(n+1)/2)`
-/

namespace A276888.P11070015058246748997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A001951 n : ℚ) + (n + 1 : ℚ) / 2)

end

end A276888.P11070015058246748997

/-! ## A276888.P8408509022003052475

`A054385(floor(n*sqrt(2))+1+n)`
-/

namespace A276888.P8408509022003052475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1 + (n : ℤ)).toNat

end

end A276888.P8408509022003052475

/-! ## A276888.P4244389987889509501

`A189382(floor(n*sqrt(2))+n+1)`
-/

namespace A276888.P4244389987889509501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189382 (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A276888.P4244389987889509501

/-! ## A276888.P15022651076948927131

`A375619(A285075(n+1))`
-/

namespace A276888.P15022651076948927131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375619 (A285075 (n + 1)).toNat

end

end A276888.P15022651076948927131

/-! ## A276888.P14538650388273249699

`A056576(A001951(n)+1+n)`
-/

namespace A276888.P14538650388273249699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (A001951 n + 1 + (n : ℤ)).toNat

end

end A276888.P14538650388273249699

/-!
# A276889: Sums-complement of the Beatty sequence for sqrt(2) + sqrt(3).

The programs for A276889, there is no canonical definition to state claims against.
-/

/-! ## A276889.P15635459490017153836

`2*floor(n/3*ϕ²)+n+1`
-/

namespace A276889.P15635459490017153836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((n : ℚ) / 3 : ℝ) * Real.goldenRatio ^ 2⌋ + (n + 1 : ℤ)

end

end A276889.P15635459490017153836

/-! ## A276889.P3345121405915582414

`A008611(2*A276855(n)-n)`
-/

namespace A276889.P3345121405915582414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * A276855 n - (n : ℤ)).toNat

end

end A276889.P3345121405915582414

/-! ## A276889.P13303497185751188340

`record[A047223(n+1)-A002251(n)]`
-/

namespace A276889.P13303497185751188340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047223 (n + 1) - A002251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276889.P13303497185751188340

/-! ## A276889.P10321510556495018767

`record[A008611(5*n)-A002251(n)]`
-/

namespace A276889.P10321510556495018767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (5 * n) - A002251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276889.P10321510556495018767

/-! ## A276889.P4790534804859192847

`A008611(A005843(A276855(n))-n)`
-/

namespace A276889.P4790534804859192847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A005843 (A276855 n).toNat - (n : ℤ)).toNat

end

end A276889.P4790534804859192847

/-! ## A276889.P11607216241563196401

`A047407(A026356(n+1))%A047924(n)`
-/

namespace A276889.P11607216241563196401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047407 (A026356 (n + 1)).toNat) (A047924 n)

end

end A276889.P11607216241563196401

/-! ## A276889.P6661965386436565422

`A008611(A276855(n)+A276855(n)-n)`
-/

namespace A276889.P6661965386436565422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A276855 n + (A276855 n - (n : ℤ))).toNat

end

end A276889.P6661965386436565422

/-! ## A276889.P120462563394854018

`A008611(A276855(n)-(n-A276855(n)))`
-/

namespace A276889.P120462563394854018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A276855 n - ((n : ℤ) - A276855 n)).toNat

end

end A276889.P120462563394854018

/-!
# A276890: Number A(n,k) of ordered set partitions of [n] such that for each block b the smallest integer interval containing b has at most k elements; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A276890, there is no canonical definition to state claims against.
-/

/-! ## A276890.P7584964162131141960

`A276921(n)-A151670(A057372(n+1))`
-/

namespace A276890.P7584964162131141960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 n - A151670 (A057372 (n + 1)).toNat

end

end A276890.P7584964162131141960

/-! ## A276890.P8066047328483320082

`A108611(A294212(n))+A003056(A294212(n))`
-/

namespace A276890.P8066047328483320082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A294212 n).toNat + A003056 (A294212 n).toNat

end

end A276890.P8066047328483320082

/-! ## A276890.P13172540349343249099

`A247504(n)-A108611(A267479(n))`
-/

namespace A276890.P13172540349343249099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247504 n - A108611 (A267479 n).toNat

end

end A276890.P13172540349343249099

/-! ## A276890.P6555063367480788822

`A335607(A215086(n)²)`
-/

namespace A276890.P6555063367480788822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335607 (A215086 n ^ 2).toNat

end

end A276890.P6555063367480788822

/-! ## A276890.P3215294271402214640

`A147981(A379168(n))`
-/

namespace A276890.P3215294271402214640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (A379168 n).toNat

end

end A276890.P3215294271402214640

/-!
# A276891: Number T(n,k) of ordered set partitions of [n] where k is minimal such that for each block b the smallest integer interval containing b has at most k elements; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A276891, there is no canonical definition to state claims against.
-/

/-! ## A276891.P12954038257152652468

`A055642(A283286(n))*A084938(n)`
-/

namespace A276891.P12954038257152652468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A283286 n).toNat * A084938 n

end

end A276891.P12954038257152652468

/-! ## A276891.P3029269262823043566

`A331958(A268438(n))`
-/

namespace A276891.P3029269262823043566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331958 (A268438 n).toNat

end

end A276891.P3029269262823043566

/-! ## A276891.P14199454592753836569

`A122538(n)+A025457(A001333(n))`
-/

namespace A276891.P14199454592753836569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 n + A025457 (A001333 n).toNat

end

end A276891.P14199454592753836569

/-! ## A276891.P16419468534620692218

`A038500(A077802(n))*A090238(n)`
-/

namespace A276891.P16419468534620692218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A077802 n).toNat * A090238 n

end

end A276891.P16419468534620692218

/-! ## A276891.P10990649822083760288

`A039997(A153893(n))*A084938(n)`
-/

namespace A276891.P10990649822083760288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A153893 n).toNat * A084938 n

end

end A276891.P10990649822083760288

/-!
# A276892: Number of ordered set partitions of [2n] where k=n is minimal such that for each block b the smallest integer interval containing b has at most k elements.

The programs for A276892, there is no canonical definition to state claims against.
-/

/-! ## A276892.P6668026745483439857

`A276891(∑[4*n])`
-/

namespace A276892.P6668026745483439857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276892.P6668026745483439857

/-! ## A276892.P17499405548563694281

`record[A276891(Δ[A228706(n)])]`
-/

namespace A276892.P17499405548563694281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228706 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276891 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276892.P17499405548563694281

/-! ## A276892.P17811251771865492507

`gcd(A000038(n), A276891(A046092(n)))`
-/

namespace A276892.P17811251771865492507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A276891 (A046092 n).toNat)

end

end A276892.P17811251771865492507

/-! ## A276892.P4108480738045729010

`A014963(10*(n+10))*A276891(A046092(n))`
-/

namespace A276892.P4108480738045729010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 10)) * A276891 (A046092 n).toNat

end

end A276892.P4108480738045729010

/-! ## A276892.P15922670163684111361

`A000108(C(2, 2*n))*A276891(A046092(n))`
-/

namespace A276892.P15922670163684111361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (2 * n)) * A276891 (A046092 n).toNat

end

end A276892.P15922670163684111361

/-!
# A276893: Number of ordered set partitions of [n] such that for each block b the smallest integer interval containing b has at most three elements.

The programs for A276893, there is no canonical definition to state claims against.
-/

/-! ## A276893.P10845178067782521074

`A276890(∑[n+4]+2)`
-/

namespace A276893.P10845178067782521074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A276893.P10845178067782521074

/-! ## A276893.P11040384325719227974

`abs(A276890(A046691(n+2))-1)+1`
-/

namespace A276893.P11040384325719227974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276890 (A046691 (n + 2)).toNat - 1| + 1

end

end A276893.P11040384325719227974

/-! ## A276893.P17828474330386362189

`A060576(char[1]+n)*A276890(A046691(n+2))`
-/

namespace A276893.P17828474330386362189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 ((if ∃ j, f1 j = n then 1 else 0) + n) * A276890 (A046691 (n + 2)).toNat

end

end A276893.P17828474330386362189

/-! ## A276893.P2273592005159684857

`A276890(A046691(n+2))^A168066(A052163(n+1))`
-/

namespace A276893.P2273592005159684857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276890 (A046691 (n + 2)).toNat : ℚ) ^ (A168066 (A052163 (n + 1)).toNat : ℤ)

end

end A276893.P2273592005159684857

/-!
# A276894: Number of ordered set partitions of [n] such that for each block b the smallest integer interval containing b has at most four elements.

The programs for A276894, there is no canonical definition to state claims against.
-/

/-! ## A276894.P2700274798902139422

`A276890(∑[n+5]+5)`
-/

namespace A276894.P2700274798902139422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A276894.P2700274798902139422

/-! ## A276894.P7023022705578125255

`A276890(eq[5, A004736(n+1)])+A185246(n)`
-/

namespace A276894.P7023022705578125255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A185246 n

end

end A276894.P7023022705578125255

/-! ## A276894.P9685051675162227929

`A033999(n)²*A276890(eq[5, A004736(n+1)])`
-/

namespace A276894.P9685051675162227929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276894.P9685051675162227929

/-! ## A276894.P3366558080194224067

`A276890(eq[5, A004736(n+1)])+A000007(n+1)`
-/

namespace A276894.P3366558080194224067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A276894.P3366558080194224067

/-! ## A276894.P13246268345603526221

`A276890(A052905(n+2)+A000007(n))^A178334(n)`
-/

namespace A276894.P13246268345603526221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276890 (A052905 (n + 2) + A000007 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A276894.P13246268345603526221

/-!
# A276895: Number of ordered set partitions of [n] such that for each block b the smallest integer interval containing b has at most five elements.

The programs for A276895, there is no canonical definition to state claims against.
-/

/-! ## A276895.P5394832746442115693

`A276890(eq[5, A025581(n)])`
-/

namespace A276895.P5394832746442115693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276895.P5394832746442115693

/-! ## A276895.P6165341396244515668

`A276890(Δ[A023551(n+1)])`
-/

namespace A276895.P6165341396244515668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (f1 (n + 1) - f1 n).toNat

end

end A276895.P6165341396244515668

/-! ## A276895.P12456423850996683345

`A276890(Δ[A026054(n+3)])`
-/

namespace A276895.P12456423850996683345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (f1 (n + 1) - f1 n).toNat

end

end A276895.P12456423850996683345

/-! ## A276895.P13438719177303766409

`A276890(A000217(n+6)-6)`
-/

namespace A276895.P13438719177303766409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (A000217 (n + 6) - 6).toNat

end

end A276895.P13438719177303766409

/-! ## A276895.P7196430475944272769

`A276890(eq[6, A004736(n+1)])`
-/

namespace A276895.P7196430475944272769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276895.P7196430475944272769

/-!
# A276896: Number of ordered set partitions of [n] such that for each block b the smallest integer interval containing b has at most six elements.

The programs for A276896, there is no canonical definition to state claims against.
-/

/-! ## A276896.P16415161343171513537

`A276890(eq[6, A025581(n)])`
-/

namespace A276896.P16415161343171513537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276896.P16415161343171513537

/-! ## A276896.P5384108412124697991

`A276890(A000217(n+7)-7)`
-/

namespace A276896.P5384108412124697991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (A000217 (n + 7) - 7).toNat

end

end A276896.P5384108412124697991

/-! ## A276896.P6954679883942865463

`A276890(eq[7, A004736(n+1)])`
-/

namespace A276896.P6954679883942865463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276896.P6954679883942865463

/-! ## A276896.P16312403088133402499

`A276890(A083744(n+8)-n)`
-/

namespace A276896.P16312403088133402499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (A083744 (n + 8) - (n : ℤ)).toNat

end

end A276896.P16312403088133402499

/-! ## A276896.P17668853907104956702

`A276890(Δ[A023551(n+2)]-1)`
-/

namespace A276896.P17668853907104956702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (f1 (n + 1) - f1 n - 1).toNat

end

end A276896.P17668853907104956702

/-!
# A276897: Number of ordered set partitions of [n] such that for each block b the smallest integer interval containing b has at most seven elements.

The programs for A276897, there is no canonical definition to state claims against.
-/

/-! ## A276897.P15862662689285920642

`A276890(A155212(n+4))`
-/

namespace A276897.P15862662689285920642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (A155212 (n + 4)).toNat

end

end A276897.P15862662689285920642

/-! ## A276897.P11459285099898347202

`A276890(eq[7, A025581(n)])`
-/

namespace A276897.P11459285099898347202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276897.P11459285099898347202

/-! ## A276897.P8352243324226612400

`A276890(eq[15, A099375(n)])`
-/

namespace A276897.P8352243324226612400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276897.P8352243324226612400

/-! ## A276897.P16398255117995689351

`A276890(eq[42, A113678(n)])`
-/

namespace A276897.P16398255117995689351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276897.P16398255117995689351

/-! ## A276897.P12777097627766437661

`A276890(A000217(n+8)-8)`
-/

namespace A276897.P12777097627766437661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (A000217 (n + 8) - 8).toNat

end

end A276897.P12777097627766437661

/-!
# A276898: Number of ordered set partitions of [n] such that for each block b the smallest integer interval containing b has at most eight elements.

The programs for A276898, there is no canonical definition to state claims against.
-/

/-! ## A276898.P17697140476448875343

`A276890(eq[8, A025581(n)])`
-/

namespace A276898.P17697140476448875343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276898.P17697140476448875343

/-! ## A276898.P8444784932841919815

`A276890(eq[9, A193739(n)])`
-/

namespace A276898.P8444784932841919815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276898.P8444784932841919815

/-! ## A276898.P2152155798612967010

`A276890(eq[9, A195663(n)])`
-/

namespace A276898.P2152155798612967010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276898.P2152155798612967010

/-! ## A276898.P1619885875316167087

`A276890(eq[17, A099375(n)])`
-/

namespace A276898.P1619885875316167087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276898.P1619885875316167087

/-! ## A276898.P4920998387660308216

`A276890(eq[9, A004736(n+1)])`
-/

namespace A276898.P4920998387660308216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276898.P4920998387660308216

/-!
# A276899: Number of ordered set partitions of [n] such that for each block b the smallest integer interval containing b has at most nine elements.

The programs for A276899, there is no canonical definition to state claims against.
-/

/-! ## A276899.P10937140259112605551

`A276890(eq[9, A025581(n)])`
-/

namespace A276899.P10937140259112605551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276899.P10937140259112605551

/-! ## A276899.P17656006595996244785

`A276890(eq[10, A193739(n)])`
-/

namespace A276899.P17656006595996244785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276899.P17656006595996244785

/-! ## A276899.P9648997039874331119

`A276890(eq[10, A195663(n)])`
-/

namespace A276899.P9648997039874331119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276899.P9648997039874331119

/-! ## A276899.P14965482344899776735

`A276890(eq[10, A004736(n+1)])`
-/

namespace A276899.P14965482344899776735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276899.P14965482344899776735

/-! ## A276899.P13695436985689615411

`A276890(eq[30, A027293(n+1)])`
-/

namespace A276899.P13695436985689615411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276899.P13695436985689615411

