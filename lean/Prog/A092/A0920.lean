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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A092002: Numbers that can be expressed as the difference of the squares of primes in exactly six distinct ways.

The programs for A092002, there is no canonical definition to state claims against.
-/

/-! ## A092002.P10266614535388713334

`A272595(A156921(n)+A001906(n))`
-/

namespace A092002.P10266614535388713334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272595 (A156921 n + A001906 n).toNat

end

end A092002.P10266614535388713334

/-!
# A092005: Numbers that can be expressed as the difference of the squares of primes in exactly nine distinct ways.

The programs for A092005, there is no canonical definition to state claims against.
-/

/-! ## A092005.P42311207199721557

`A272596(A168155(n+1)+1)`
-/

namespace A092005.P42311207199721557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272596 (A168155 (n + 1) + 1).toNat

end

end A092005.P42311207199721557

/-!
# A092007: Numbers that can be expressed as the difference of the squares of primes in exactly eleven distinct ways.

The programs for A092007, there is no canonical definition to state claims against.
-/

/-! ## A092007.P11344281417513825242

`A272596(A089473(n)+A000041(n))`
-/

namespace A092007.P11344281417513825242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272596 (A089473 n + A000041 n).toNat

end

end A092007.P11344281417513825242

/-! ## A092007.P4267579874623495800

`A272596(A046816(n)+A039690(n+1))`
-/

namespace A092007.P4267579874623495800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272596 (A046816 n + A039690 (n + 1)).toNat

end

end A092007.P4267579874623495800

/-!
# A092013: Numbers that can be expressed as the difference of the squares of primes in exactly seventeen distinct ways.

The programs for A092013, there is no canonical definition to state claims against.
-/

/-! ## A092013.P14826756236570155691

`A272597(A033948(3*(n+1))+(n-1)^(n%2))`
-/

namespace A092013.P14826756236570155691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272597 (A033948 (3 * (n + 1)) + ((n : ℤ) - 1) ^ (n % 2)).toNat

end

end A092013.P14826756236570155691

/-!
# A092021: Numbers k such that k-th prime + k-th semiprime is semiprime.

The programs for A092021, the canonical program `A092021.P17155201923802105509` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092021 has offset 1).

The definition of A092021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 989 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092021.P17155201923802105509

`eq[2, A001222(A133796(n+1))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A092021

/-- `eq[2, A001222(A133796(n+1))]+1` -/
def P17155201923802105509.Spec : Prop :=
  ∀ n, (P17155201923802105509.a n : ℤ) = A092021 (n + 1)

theorem P17155201923802105509.correct : P17155201923802105509.Spec := by
  intro n
  simp only [A092021, Nat.add_sub_cancel]

end A092021

/-! ## A092021.P2759494229036061897

`eq[2, A001222(A001358(n+1)+A000040(n+1))]+1`
-/

namespace A092021.P2759494229036061897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001358 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092021.P2759494229036061897

namespace A092021

/-- `eq[2, A001222(A001358(n+1)+A000040(n+1))]+1` -/
def P2759494229036061897.Spec : Prop :=
  ∀ n, (P2759494229036061897.a n : ℤ) = A092021 (n + 1)

end A092021

/-! ## A092021.P17844287469479135266

`eq[2, A001222(A100493(n+1)+A014689(n+1))]+1`
-/

namespace A092021.P17844287469479135266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A100493 (n + 1) + A014689 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092021.P17844287469479135266

namespace A092021

/-- `eq[2, A001222(A100493(n+1)+A014689(n+1))]+1` -/
def P17844287469479135266.Spec : Prop :=
  ∀ n, (P17844287469479135266.a n : ℤ) = A092021 (n + 1)

end A092021

/-! ## A092021.P4747663549537771194

`eq[2, A001222(A001358(n+1)+A008864(n+1)-1)]+1`
-/

namespace A092021.P4747663549537771194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001358 (n + 1) + (A008864 (n + 1) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092021.P4747663549537771194

namespace A092021

/-- `eq[2, A001222(A001358(n+1)+A008864(n+1)-1)]+1` -/
def P4747663549537771194.Spec : Prop :=
  ∀ n, (P4747663549537771194.a n : ℤ) = A092021 (n + 1)

end A092021

/-! ## A092021.P9297308733634570050

`eq[2, A001222(A006093(n+1)+A186621(n+1)+2)]+1`
-/

namespace A092021.P9297308733634570050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006093 (n + 1) + (A186621 (n + 1) + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092021.P9297308733634570050

namespace A092021

/-- `eq[2, A001222(A006093(n+1)+A186621(n+1)+2)]+1` -/
def P9297308733634570050.Spec : Prop :=
  ∀ n, (P9297308733634570050.a n : ℤ) = A092021 (n + 1)

theorem P9297308733634570050.correct : P9297308733634570050.Spec := by
  intro n
  simp only [A092021, Nat.add_sub_cancel, A092021.P9297308733634570050.f1, A092021.P9297308733634570050.f2, A092021.P9297308733634570050.a, A092021.P17155201923802105509.f1, A092021.P17155201923802105509.f2, A092021.P17155201923802105509.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A006093, A006093.P2906174024863549003.a, A133796, A133796.P4942108177998988067.a, A186621, A186621.P5089299060388261365.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092021

/-! ## A092021.P11600518491517936302

`eq[2, A050379(A100493(n+1)+A014689(n+1))]+1`
-/

namespace A092021.P11600518491517936302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (A100493 (n + 1) + A014689 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092021.P11600518491517936302

namespace A092021

/-- `eq[2, A050379(A100493(n+1)+A014689(n+1))]+1` -/
def P11600518491517936302.Spec : Prop :=
  ∀ n, (P11600518491517936302.a n : ℤ) = A092021 (n + 1)

end A092021

/-! ## A092021.P3134246874813633847

`eq[2, A050379(A006093(n+1)+A186621(n+1)+2)]+1`
-/

namespace A092021.P3134246874813633847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (A006093 (n + 1) + (A186621 (n + 1) + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092021.P3134246874813633847

namespace A092021

/-- `eq[2, A050379(A006093(n+1)+A186621(n+1)+2)]+1` -/
def P3134246874813633847.Spec : Prop :=
  ∀ n, (P3134246874813633847.a n : ℤ) = A092021 (n + 1)

end A092021

/-!
# A092022: Numbers k such that 16k + 3 is prime.

The programs for A092022, the canonical program `A092022.P1203849625117540271` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092022 has offset 1).

The definition of A092022 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A092022.anchor (n : ℕ) (hn : 1 ≤ n) : A092022 n = (Nat.nth (fun k => (16 * k + 3).Prime) (n - 1) : ℤ)` in `Proof.A092.A092022`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092022.P1203849625117540271

`(A091968(n+1)-3)/16`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092022

/-- `(A091968(n+1)-3)/16` -/
def P1203849625117540271.Spec : Prop :=
  ∀ n, P1203849625117540271.a n = (A092022 (n + 1) : ℚ)

end A092022

/-! ## A092022.P13950266373864672933

`comp[A153348(n+1)]`
-/

namespace A092022.P13950266373864672933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092022.P13950266373864672933

namespace A092022

/-- `comp[A153348(n+1)]` -/
def P13950266373864672933.Spec : Prop :=
  ∀ n, (P13950266373864672933.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P11862560056618571388

`eq[1, A001222(16*n+3)]`
-/

namespace A092022.P11862560056618571388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (16 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092022.P11862560056618571388

namespace A092022

/-- `eq[1, A001222(16*n+3)]` -/
def P11862560056618571388.Spec : Prop :=
  ∀ n, (P11862560056618571388.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P11312222561778363756

`eq[2, A000005(16*n+3)]`
-/

namespace A092022.P11312222561778363756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (16 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092022.P11312222561778363756

namespace A092022

/-- `eq[2, A000005(16*n+3)]` -/
def P11312222561778363756.Spec : Prop :=
  ∀ n, (P11312222561778363756.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P1011020999654287663

`lt[A000005(2*(8*n+1)+1), 3]`
-/

namespace A092022.P1011020999654287663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (8 * n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A092022.P1011020999654287663

namespace A092022

/-- `lt[A000005(2*(8*n+1)+1), 3]` -/
def P1011020999654287663.Spec : Prop :=
  ∀ n, (P1011020999654287663.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P14445972042160817423

`lt[0, A101264(A017077(n))]`
-/

namespace A092022.P14445972042160817423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A017077 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092022.P14445972042160817423

namespace A092022

/-- `lt[0, A101264(A017077(n))]` -/
def P14445972042160817423.Spec : Prop :=
  ∀ n, (P14445972042160817423.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P2386759204122221702

`eq[1, A101264(A016993(n)+n)]`
-/

namespace A092022.P2386759204122221702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A016993 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092022.P2386759204122221702

namespace A092022

/-- `eq[1, A101264(A016993(n)+n)]` -/
def P2386759204122221702.Spec : Prop :=
  ∀ n, (P2386759204122221702.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P17640867437925231473

`A110962(A091968(n+1))`
-/

namespace A092022.P17640867437925231473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A091968 (n + 1)).toNat

end

end A092022.P17640867437925231473

namespace A092022

/-- `A110962(A091968(n+1))` -/
def P17640867437925231473.Spec : Prop :=
  ∀ n, P17640867437925231473.a n = A092022 (n + 1)

end A092022

/-! ## A092022.P11125746331379083137

`eq[1, A245203(4*n)+1]`
-/

namespace A092022.P11125746331379083137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (4 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092022.P11125746331379083137

namespace A092022

/-- `eq[1, A245203(4*n)+1]` -/
def P11125746331379083137.Spec : Prop :=
  ∀ n, (P11125746331379083137.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P3556553436253709781

`eq[2, A231734(4*n+1)]`
-/

namespace A092022.P3556553436253709781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092022.P3556553436253709781

namespace A092022

/-- `eq[2, A231734(4*n+1)]` -/
def P3556553436253709781.Spec : Prop :=
  ∀ n, (P3556553436253709781.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P8239161131807708143

`eq[3, A214834(4*n+2)]`
-/

namespace A092022.P8239161131807708143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214834 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092022.P8239161131807708143

namespace A092022

/-- `eq[3, A214834(4*n+2)]` -/
def P8239161131807708143.Spec : Prop :=
  ∀ n, (P8239161131807708143.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P15302615614177331365

`lt[A214834(A016825(n)), 4]`
-/

namespace A092022.P15302615614177331365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214834 (A016825 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A092022.P15302615614177331365

namespace A092022

/-- `lt[A214834(A016825(n)), 4]` -/
def P15302615614177331365.Spec : Prop :=
  ∀ n, (P15302615614177331365.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P10850277067120072619

`lt[A000010(A214834(4*n+2)+1), 3]`
-/

namespace A092022.P10850277067120072619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A214834 (4 * n + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A092022.P10850277067120072619

namespace A092022

/-- `lt[A000010(A214834(4*n+2)+1), 3]` -/
def P10850277067120072619.Spec : Prop :=
  ∀ n, (P10850277067120072619.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P11917157196358580548

`eq[A060324(4*n+1), A060324(A060324(4*n+1))]`
-/

namespace A092022.P11917157196358580548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (A060324 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092022.P11917157196358580548

namespace A092022

/-- `eq[A060324(4*n+1), A060324(A060324(4*n+1))]` -/
def P11917157196358580548.Spec : Prop :=
  ∀ n, (P11917157196358580548.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P3430377694006953073

`eq[A245203(2*n)-A245203(4*n), A245203(2*n)]`
-/

namespace A092022.P3430377694006953073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (2 * n) - A245203 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092022.P3430377694006953073

namespace A092022

/-- `eq[A245203(2*n)-A245203(4*n), A245203(2*n)]` -/
def P3430377694006953073.Spec : Prop :=
  ∀ n, (P3430377694006953073.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P9885462450360116602

`eq[n, n*A046067(4*n+1)]`
-/

namespace A092022.P9885462450360116602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A046067 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092022.P9885462450360116602

namespace A092022

/-- `eq[n, n*A046067(4*n+1)]` -/
def P9885462450360116602.Spec : Prop :=
  ∀ n, (P9885462450360116602.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P18033638396591245012

`eq[1, A103961(2*A016813(n))]`
-/

namespace A092022.P18033638396591245012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (2 * A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092022.P18033638396591245012

namespace A092022

/-- `eq[1, A103961(2*A016813(n))]` -/
def P18033638396591245012.Spec : Prop :=
  ∀ n, (P18033638396591245012.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P16078671866491714803

`eq[A019427(2*n), A225721(A019427(2*n+1))]`
-/

namespace A092022.P16078671866491714803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225721 (A019427 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092022.P16078671866491714803

namespace A092022

/-- `eq[A019427(2*n), A225721(A019427(2*n+1))]` -/
def P16078671866491714803.Spec : Prop :=
  ∀ n, (P16078671866491714803.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P8222768285540860180

`lt[n, A014963(16*n+3)]`
-/

namespace A092022.P8222768285540860180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (16 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092022.P8222768285540860180

namespace A092022

/-- `lt[n, A014963(16*n+3)]` -/
def P8222768285540860180.Spec : Prop :=
  ∀ n, (P8222768285540860180.a n : ℤ) = A092022 (n + 1)

end A092022

/-! ## A092022.P18157576043087364313

`record[n/A246277(A017101(2*n))]`
-/

namespace A092022.P18157576043087364313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A246277 (A017101 (2 * n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092022.P18157576043087364313

namespace A092022

/-- `record[n/A246277(A017101(2*n))]` -/
def P18157576043087364313.Spec : Prop :=
  ∀ n, P18157576043087364313.a n = (A092022 (n + 1) : ℚ)

end A092022

/-!
# A092023: a(n) is the smallest number m such that m has n distinct prime divisors and if p is a prime divisor of m then p*m - 1 is prime.

The programs for A092023, there is no canonical definition to state claims against.
-/

/-! ## A092023.P3145521698095079539

`lcm(A034386(2*(n+1)), A259850(A275923(n)))`
-/

namespace A092023.P3145521698095079539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034386 (2 * (n + 1))) (A259850 (A275923 n).toNat)

end

end A092023.P3145521698095079539

/-!
# A092028: a(n) is the smallest m > 1 such that m divides n^m-1.

The programs for A092028, there is no canonical definition to state claims against.
-/

/-! ## A092028.P5543031464889835744

`p?[A020639(∏{p}[n, #])]`
-/

namespace A092028.P5543031464889835744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092028.P5543031464889835744

/-! ## A092028.P10759438398075496405

`p?[A028233(∏{p}[n, #])]`
-/

namespace A092028.P10759438398075496405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092028.P10759438398075496405

/-! ## A092028.P3615407046442117095

`p?[A223490(∏{p}[n, #])]`
-/

namespace A092028.P3615407046442117095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092028.P3615407046442117095

/-! ## A092028.P10137405886009665029

`p?[A277708(∏{p}[n, #])]`
-/

namespace A092028.P10137405886009665029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092028.P10137405886009665029

/-! ## A092028.P1964677800090155674

`A064989(A117367(n+2))`
-/

namespace A092028.P1964677800090155674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A117367 (n + 2)).toNat

end

end A092028.P1964677800090155674

/-! ## A092028.P11853229877442756847

`A000720(A105574(n+2))`
-/

namespace A092028.P11853229877442756847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A105574 (n + 2)).toNat

end

end A092028.P11853229877442756847

/-! ## A092028.P6202798545530588764

`A020639(A007814(2*n+1)+n+2)`
-/

namespace A092028.P6202798545530588764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007814 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A092028.P6202798545530588764

/-! ## A092028.P11146436539241318300

`A014673(2*(n+2))`
-/

namespace A092028.P11146436539241318300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * (n + 2))

end

end A092028.P11146436539241318300

/-! ## A092028.P12904751230364296647

`A251101(A098551(n+2))`
-/

namespace A092028.P12904751230364296647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251101 (A098551 (n + 2)).toNat

end

end A092028.P12904751230364296647

/-! ## A092028.P12291257059334560777

`A115561(A192544(n+1))`
-/

namespace A092028.P12291257059334560777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (A192544 (n + 1)).toNat

end

end A092028.P12291257059334560777

/-! ## A092028.P16425026068544571171

`gcd(A092067(n+1), A332560(n+1))`
-/

namespace A092028.P16425026068544571171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092067 (n + 1)) (A332560 (n + 1))

end

end A092028.P16425026068544571171

/-! ## A092028.P15987250556825151990

`A020639(A067029(A398264(n+1))+n)`
-/

namespace A092028.P15987250556825151990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A067029 (A398264 (n + 1)).toNat + (n : ℤ)).toNat

end

end A092028.P15987250556825151990

/-! ## A092028.P15777291651296439483

`A056538(A077597(n+1))`
-/

namespace A092028.P15777291651296439483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (A077597 (n + 1)).toNat

end

end A092028.P15777291651296439483

/-! ## A092028.P3678513117490519288

`A115561(A272708(n+1))`
-/

namespace A092028.P3678513117490519288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (A272708 (n + 1)).toNat

end

end A092028.P3678513117490519288

/-! ## A092028.P5054994559607549893

`A020639(A003415(A000040(n+1))+n+1)`
-/

namespace A092028.P5054994559607549893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003415 (A000040 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A092028.P5054994559607549893

/-! ## A092028.P14530677495810642417

`p?[A265110(n+1)]`
-/

namespace A092028.P14530677495810642417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092028.P14530677495810642417

/-! ## A092028.P17898890142642267276

`p?[A136181(n+2)]`
-/

namespace A092028.P17898890142642267276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136181 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092028.P17898890142642267276

/-! ## A092028.P3980201250175451121

`filter[A265110(n+1), A010051(#)]`
-/

namespace A092028.P3980201250175451121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A092028.P3980201250175451121

/-! ## A092028.P11927041198396169263

`filter[A136181(n+2), A010051(#)]`
-/

namespace A092028.P11927041198396169263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136181 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A092028.P11927041198396169263

/-! ## A092028.P11536367332705479824

`filter[A136181(n+2), A080339(#)]`
-/

namespace A092028.P11536367332705479824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136181 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A092028.P11536367332705479824

/-! ## A092028.P17591560868136376154

`val(∑{p}[n+2, 2^#], 2)`
-/

namespace A092028.P17591560868136376154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ p ∈ Nat.primeFactors (f1 n), 2 ^ p) 2

end

end A092028.P17591560868136376154

/-!
# A092032: Arises in partition theory.

The programs for A092032, there is no canonical definition to state claims against.
-/

/-! ## A092032.P10895348099460943341

`∑{digits}[A060002(n), #+1]`
-/

namespace A092032.P10895348099460943341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).sum

end

end A092032.P10895348099460943341

/-! ## A092032.P17082261124471592400

`∑{digits}[A068743(n), #+1]`
-/

namespace A092032.P17082261124471592400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068743 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).sum

end

end A092032.P17082261124471592400

/-! ## A092032.P3791372086773592486

`floor(log2(A129129(n)²+1))`
-/

namespace A092032.P3791372086773592486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A129129 n ^ 2 + 1).toNat

end

end A092032.P3791372086773592486

/-! ## A092032.P12211463525190777782

`floor(log2(A185974(n)²+1))`
-/

namespace A092032.P12211463525190777782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A185974 n ^ 2 + 1).toNat

end

end A092032.P12211463525190777782

/-! ## A092032.P6270926264900356327

`floor(log2(A334436(n)²+1))`
-/

namespace A092032.P6270926264900356327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A334436 n ^ 2 + 1).toNat

end

end A092032.P6270926264900356327

/-!
# A092037: A092255 mod 3.

The programs for A092037, the canonical program `A092037.P12766482184421942466` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092037 has offset 0).

The definition of A092037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092037.P3886747740395641375

`round(atan(A151668(n)²))`
-/

namespace A092037.P3886747740395641375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A151668 n ^ 2 : ℝ))

end

end A092037.P3886747740395641375

namespace A092037

/-- `round(atan(A151668(n)²))` -/
def P3886747740395641375.Spec : Prop :=
  ∀ n, P3886747740395641375.a n = A092037 n

end A092037

/-! ## A092037.P12766482184421942466

`A046698(A151668(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092037

/-- `A046698(A151668(n))` -/
def P12766482184421942466.Spec : Prop :=
  ∀ n, P12766482184421942466.a n = A092037 n

theorem P12766482184421942466.correct : P12766482184421942466.Spec := by
  intro n
  simp only [A092037]

end A092037

/-! ## A092037.P2250845328385996939

`A060128(A151672(n))`
-/

namespace A092037.P2250845328385996939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A151672 n).toNat

end

end A092037.P2250845328385996939

namespace A092037

/-- `A060128(A151672(n))` -/
def P2250845328385996939.Spec : Prop :=
  ∀ n, P2250845328385996939.a n = A092037 n

end A092037

/-! ## A092037.P17445619574237006943

`A060128(A151668(n)²)`
-/

namespace A092037.P17445619574237006943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A151668 n ^ 2).toNat

end

end A092037.P17445619574237006943

namespace A092037

/-- `A060128(A151668(n)²)` -/
def P17445619574237006943.Spec : Prop :=
  ∀ n, P17445619574237006943.a n = A092037 n

end A092037

/-! ## A092037.P3995809965128077764

`A001221(A005408(A151668(n)²))`
-/

namespace A092037.P3995809965128077764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005408 (A151668 n ^ 2).toNat).toNat

end

end A092037.P3995809965128077764

namespace A092037

/-- `A001221(A005408(A151668(n)²))` -/
def P3995809965128077764.Spec : Prop :=
  ∀ n, P3995809965128077764.a n = A092037 n

end A092037

/-! ## A092037.P7282129721442176509

`A170849(A170849(A151668(n))²)`
-/

namespace A092037.P7282129721442176509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170849 (A170849 (A151668 n).toNat ^ 2).toNat

end

end A092037.P7282129721442176509

namespace A092037

/-- `A170849(A170849(A151668(n))²)` -/
def P7282129721442176509.Spec : Prop :=
  ∀ n, P7282129721442176509.a n = A092037 n

end A092037

/-! ## A092037.P5455775929700719898

`A092255(n)%3`
-/

namespace A092037.P5455775929700719898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092255 n) 3

end

end A092037.P5455775929700719898

namespace A092037

/-- `A092255(n)%3` -/
def P5455775929700719898.Spec : Prop :=
  ∀ n, P5455775929700719898.a n = A092037 n

end A092037

/-! ## A092037.P9690418322552675079

`A062756(A338848(n)²)`
-/

namespace A092037.P9690418322552675079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A338848 n ^ 2).toNat

end

end A092037.P9690418322552675079

namespace A092037

/-- `A062756(A338848(n)²)` -/
def P9690418322552675079.Spec : Prop :=
  ∀ n, P9690418322552675079.a n = A092037 n

end A092037

/-! ## A092037.P15489665274661519342

`A000120(A000120(A117940(n)²))`
-/

namespace A092037.P15489665274661519342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 (A117940 n ^ 2).toNat).toNat

end

end A092037.P15489665274661519342

namespace A092037

/-- `A000120(A000120(A117940(n)²))` -/
def P15489665274661519342.Spec : Prop :=
  ∀ n, P15489665274661519342.a n = A092037 n

end A092037

/-! ## A092037.P10055642645587067185

`A001221(A014430(A151668(n)²))`
-/

namespace A092037.P10055642645587067185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A014430 (A151668 n ^ 2).toNat).toNat

end

end A092037.P10055642645587067185

namespace A092037

/-- `A001221(A014430(A151668(n)²))` -/
def P10055642645587067185.Spec : Prop :=
  ∀ n, P10055642645587067185.a n = A092037 n

end A092037

/-! ## A092037.P13470656177420709012

`A062756(A338848(n)*A338848(n))`
-/

namespace A092037.P13470656177420709012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A338848 n * A338848 n).toNat

end

end A092037.P13470656177420709012

namespace A092037

/-- `A062756(A338848(n)*A338848(n))` -/
def P13470656177420709012.Spec : Prop :=
  ∀ n, P13470656177420709012.a n = A092037 n

end A092037

/-!
# A092038: a(n+1) = a(n) + (a(n) mod 2)^(n mod a(n)), a(1) = 1.

The programs for A092038, the canonical program `A092038.P12517707679021855908` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092038 has offset 1).

The definition of A092038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092038.P12517707679021855908

`∑[((2-n)%4)²%3]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092038

/-- `∑[((2-n)%4)²%3]` -/
def P12517707679021855908.Spec : Prop :=
  ∀ n, P12517707679021855908.a n = A092038 (n + 1)

theorem P12517707679021855908.correct : P12517707679021855908.Spec := by
  intro n
  simp only [A092038, Nat.add_sub_cancel]

end A092038

/-! ## A092038.P2764989902134080652

`∑[char[xor(n, a(n-1))]]` with `a(0)=0`
-/

namespace A092038.P2764989902134080652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.xor n (f2 (n - 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092038.P2764989902134080652

namespace A092038

/-- `∑[char[xor(n, a(n-1))]]` -/
def P2764989902134080652.Spec : Prop :=
  ∀ n, (P2764989902134080652.a n : ℤ) = A092038 (n + 1)

end A092038

/-! ## A092038.P17622169123935351203

`∑[C(2, n*and(2, n+1))]`
-/

namespace A092038.P17622169123935351203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n * Nat.land 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092038.P17622169123935351203

namespace A092038

/-- `∑[C(2, n*and(2, n+1))]` -/
def P17622169123935351203.Spec : Prop :=
  ∀ n, (P17622169123935351203.a n : ℤ) = A092038 (n + 1)

end A092038

/-! ## A092038.P2703454927520744375

`∑[C(C(2, n), and(2, n+1))]`
-/

namespace A092038.P2703454927520744375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 n) (Nat.land 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092038.P2703454927520744375

namespace A092038

/-- `∑[C(C(2, n), and(2, n+1))]` -/
def P2703454927520744375.Spec : Prop :=
  ∀ n, (P2703454927520744375.a n : ℤ) = A092038 (n + 1)

end A092038

/-! ## A092038.P8618098551586940926

`∑[∑[char[2]+n]%2]+1`
-/

namespace A092038.P8618098551586940926
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A092038.P8618098551586940926

namespace A092038

/-- `∑[∑[char[2]+n]%2]+1` -/
def P8618098551586940926.Spec : Prop :=
  ∀ n, (P8618098551586940926.a n : ℤ) = A092038 (n + 1)

end A092038

/-! ## A092038.P17907880339821044377

`∑[floor(n^((-1)^∑[n]-1))]`
-/

namespace A092038.P17907880339821044377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ ((-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092038.P17907880339821044377

namespace A092038

/-- `∑[floor(n^((-1)^∑[n]-1))]` -/
def P17907880339821044377.Spec : Prop :=
  ∀ n, P17907880339821044377.a n = A092038 (n + 1)

end A092038

/-! ## A092038.P16038979916407727482

`a(n-4)+2` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A092038.P16038979916407727482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3, 4] fun n a =>
  a (n - 4) + 2

end

end A092038.P16038979916407727482

namespace A092038

/-- `a(n-4)+2` -/
def P16038979916407727482.Spec : Prop :=
  ∀ n, (P16038979916407727482.a n : ℤ) = A092038 (n + 1)

end A092038

/-! ## A092038.P10011804244228782935

`2-(a(n-2)-n)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A092038.P10011804244228782935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 - (a (n - 2) - (n : ℤ))

end

end A092038.P10011804244228782935

namespace A092038

/-- `2-(a(n-2)-n)` -/
def P10011804244228782935.Spec : Prop :=
  ∀ n, P10011804244228782935.a n = A092038 (n + 1)

end A092038

/-! ## A092038.P6142616440262804113

`A049206(n+1)+1`
-/

namespace A092038.P6142616440262804113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (n + 1) + 1

end

end A092038.P6142616440262804113

namespace A092038

/-- `A049206(n+1)+1` -/
def P6142616440262804113.Spec : Prop :=
  ∀ n, P6142616440262804113.a n = A092038 (n + 1)

end A092038

/-! ## A092038.P9498593878883083511

`∑[and(1, A075157(n))]+1`
-/

namespace A092038.P9498593878883083511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A075157 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A092038.P9498593878883083511

namespace A092038

/-- `∑[and(1, A075157(n))]+1` -/
def P9498593878883083511.Spec : Prop :=
  ∀ n, P9498593878883083511.a n = A092038 (n + 1)

end A092038

/-! ## A092038.P16766749456473866975

`n-A289207(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A092038.P16766749456473866975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - A289207 (a (n - 2)).toNat

end

end A092038.P16766749456473866975

namespace A092038

/-- `n-A289207(a(n-2))` -/
def P16766749456473866975.Spec : Prop :=
  ∀ n, P16766749456473866975.a n = A092038 (n + 1)

end A092038

/-! ## A092038.P14507474326112979523

`A022958(a(n-2))+n` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A092038.P14507474326112979523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A022958 (a (n - 2)).toNat + (n : ℤ)

end

end A092038.P14507474326112979523

namespace A092038

/-- `A022958(a(n-2))+n` -/
def P14507474326112979523.Spec : Prop :=
  ∀ n, P14507474326112979523.a n = A092038 (n + 1)

end A092038

/-! ## A092038.P6623389144996622967

`A098178(n)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A092038.P6623389144996622967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A098178 n + a (n - 2)

end

end A092038.P6623389144996622967

namespace A092038

/-- `A098178(n)+a(n-2)` -/
def P6623389144996622967.Spec : Prop :=
  ∀ n, P6623389144996622967.a n = A092038 (n + 1)

end A092038

/-! ## A092038.P10999300993182910674

`A004525(A326178(n))+1`
-/

namespace A092038.P10999300993182910674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A326178 n).toNat + 1

end

end A092038.P10999300993182910674

namespace A092038

/-- `A004525(A326178(n))+1` -/
def P10999300993182910674.Spec : Prop :=
  ∀ n, P10999300993182910674.a n = A092038 (n + 1)

end A092038

/-! ## A092038.P8830555849157399755

`A040000(n)+A004524(n)`
-/

namespace A092038.P8830555849157399755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n + A004524 n

end

end A092038.P8830555849157399755

namespace A092038

/-- `A040000(n)+A004524(n)` -/
def P8830555849157399755.Spec : Prop :=
  ∀ n, P8830555849157399755.a n = A092038 (n + 1)

end A092038

/-! ## A092038.P4255305707343895813

`A133263(n)-A104563(n)`
-/

namespace A092038.P4255305707343895813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - A104563 n

end

end A092038.P4255305707343895813

namespace A092038

/-- `A133263(n)-A104563(n)` -/
def P4255305707343895813.Spec : Prop :=
  ∀ n, P4255305707343895813.a n = A092038 (n + 1)

end A092038

/-! ## A092038.P6115937461357674041

`A004525(A087156(n+1))+1`
-/

namespace A092038.P6115937461357674041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A087156 (n + 1)).toNat + 1

end

end A092038.P6115937461357674041

namespace A092038

/-- `A004525(A087156(n+1))+1` -/
def P6115937461357674041.Spec : Prop :=
  ∀ n, P6115937461357674041.a n = A092038 (n + 1)

end A092038

/-! ## A092038.P2501882190950977152

`A004525(A184985(n+1))+1`
-/

namespace A092038.P2501882190950977152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A184985 (n + 1)).toNat + 1

end

end A092038.P2501882190950977152

namespace A092038

/-- `A004525(A184985(n+1))+1` -/
def P2501882190950977152.Spec : Prop :=
  ∀ n, P2501882190950977152.a n = A092038 (n + 1)

end A092038

/-! ## A092038.P12589146837138714181

`A004524(n)+A057427(n)+1`
-/

namespace A092038.P12589146837138714181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n + (A057427 n + 1)

end

end A092038.P12589146837138714181

namespace A092038

/-- `A004524(n)+A057427(n)+1` -/
def P12589146837138714181.Spec : Prop :=
  ∀ n, P12589146837138714181.a n = A092038 (n + 1)

end A092038

/-! ## A092038.P16479391880995796003

`A057427(n)+A004525(n+1)`
-/

namespace A092038.P16479391880995796003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004525 (n + 1)

end

end A092038.P16479391880995796003

namespace A092038

/-- `A057427(n)+A004525(n+1)` -/
def P16479391880995796003.Spec : Prop :=
  ∀ n, P16479391880995796003.a n = A092038 (n + 1)

end A092038

/-!
# A092043: a(n) = numerator(n!/n^2).

The programs for A092043, the canonical program `A092043.P7291291618197232934` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092043 has offset 1).

The definition of A092043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092043.P7291291618197232934

`n!/gcd(n+1, n!)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092043

/-- `n!/gcd(n+1, n!)` -/
def P7291291618197232934.Spec : Prop :=
  ∀ n, P7291291618197232934.a n = (A092043 (n + 1) : ℚ)

end A092043

/-! ## A092043.P14386610659917674454

`lcm(n+1, n!)/(n+1)`
-/

namespace A092043.P14386610659917674454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (Nat.factorial n) : ℚ) / (n + 1 : ℚ)

end

end A092043.P14386610659917674454

namespace A092043

/-- `lcm(n+1, n!)/(n+1)` -/
def P14386610659917674454.Spec : Prop :=
  ∀ n, P14386610659917674454.a n = (A092043 (n + 1) : ℚ)

end A092043

/-! ## A092043.P8289742609594637544

`abs(A343206(n))`
-/

namespace A092043.P8289742609594637544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343206 n|

end

end A092043.P8289742609594637544

namespace A092043

/-- `abs(A343206(n))` -/
def P8289742609594637544.Spec : Prop :=
  ∀ n, P8289742609594637544.a n = A092043 (n + 1)

end A092043

/-! ## A092043.P3637807463441644747

`n!/A181569(A028310(n))`
-/

namespace A092043.P3637807463441644747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A181569 (A028310 n).toNat : ℚ)

end

end A092043.P3637807463441644747

namespace A092043

/-- `n!/A181569(A028310(n))` -/
def P3637807463441644747.Spec : Prop :=
  ∀ n, P3637807463441644747.a n = (A092043 (n + 1) : ℚ)

end A092043

/-! ## A092043.P8023013842868534951

`n!/A181569(A233583(n+1))`
-/

namespace A092043.P8023013842868534951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A181569 (A233583 (n + 1)).toNat : ℚ)

end

end A092043.P8023013842868534951

namespace A092043

/-- `n!/A181569(A233583(n+1))` -/
def P8023013842868534951.Spec : Prop :=
  ∀ n, P8023013842868534951.a n = (A092043 (n + 1) : ℚ)

end A092043

/-! ## A092043.P10017724694696371972

`A181858(n+1)/(n+1)²*A181860(n+1)`
-/

namespace A092043.P10017724694696371972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181858 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ) * (A181860 (n + 1) : ℚ)

end

end A092043.P10017724694696371972

namespace A092043

/-- `A181858(n+1)/(n+1)²*A181860(n+1)` -/
def P10017724694696371972.Spec : Prop :=
  ∀ n, P10017724694696371972.a n = (A092043 (n + 1) : ℚ)

end A092043

/-! ## A092043.P4747291862792387057

`A000142(n)/gcd(A000142(n), A131738(n))`
-/

namespace A092043.P4747291862792387057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A131738 n) : ℚ)

end

end A092043.P4747291862792387057

namespace A092043

/-- `A000142(n)/gcd(A000142(n), A131738(n))` -/
def P4747291862792387057.Spec : Prop :=
  ∀ n, P4747291862792387057.a n = (A092043 (n + 1) : ℚ)

end A092043

/-! ## A092043.P14185528298019703928

`lcm(A000027(n+1), A000142(n))/A000027(n+1)`
-/

namespace A092043.P14185528298019703928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A000142 n) : ℚ) / (A000027 (n + 1) : ℚ)

end

end A092043.P14185528298019703928

namespace A092043

/-- `lcm(A000027(n+1), A000142(n))/A000027(n+1)` -/
def P14185528298019703928.Spec : Prop :=
  ∀ n, P14185528298019703928.a n = (A092043 (n + 1) : ℚ)

end A092043

/-! ## A092043.P10416080667798876570

`A081123(2*n)/gcd(A081123(2*n), A233583(n+2))`
-/

namespace A092043.P10416080667798876570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081123 (2 * n) : ℚ) / (Int.gcd (A081123 (2 * n)) (A233583 (n + 2)) : ℚ)

end

end A092043.P10416080667798876570

namespace A092043

/-- `A081123(2*n)/gcd(A081123(2*n), A233583(n+2))` -/
def P10416080667798876570.Spec : Prop :=
  ∀ n, P10416080667798876570.a n = (A092043 (n + 1) : ℚ)

end A092043

/-! ## A092043.P9587823906155819752

`A014973(A005451(n+1))/A005451(n+1)*A000142(n)`
-/

namespace A092043.P9587823906155819752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014973 (A005451 (n + 1)).toNat : ℚ) / (A005451 (n + 1) : ℚ) * (A000142 n : ℚ)

end

end A092043.P9587823906155819752

namespace A092043

/-- `A014973(A005451(n+1))/A005451(n+1)*A000142(n)` -/
def P9587823906155819752.Spec : Prop :=
  ∀ n, P9587823906155819752.a n = (A092043 (n + 1) : ℚ)

end A092043

/-!
# A092046: Numbers n such that prime(n) == -4 (mod n).

The programs for A092046, there is no canonical definition to state claims against.
-/

/-! ## A092046.P1387450798549711475

`record[gcd(A141310(n), A175221(n+1))]`
-/

namespace A092046.P1387450798549711475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141310 n) (A175221 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092046.P1387450798549711475

/-! ## A092046.P376258456984961155

`record[gcd(A004273(n+1), A175221(2*n+1))]`
-/

namespace A092046.P376258456984961155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004273 (n + 1)) (A175221 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092046.P376258456984961155

/-! ## A092046.P4682760278917852703

`A327656(A090091(n)*A156208(n+1))`
-/

namespace A092046.P4682760278917852703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A090091 n * A156208 (n + 1)).toNat

end

end A092046.P4682760278917852703

/-!
# A092047: Numbers n such that prime(n) == -5 (mod n).

The programs for A092047, there is no canonical definition to state claims against.
-/

/-! ## A092047.P10375499317027227789

`lt[n, gcd(n+1, A000040(n+1)+5)]+1`
-/

namespace A092047.P10375499317027227789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000040 (n + 1) + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A092047.P10375499317027227789

/-!
# A092051: Numbers n such that prime(n) == -9 (mod n).

The programs for A092051, there is no canonical definition to state claims against.
-/

/-! ## A092051.P13295464443397360380

`record[gcd(A090107(n+1), A140353(n+1))]`
-/

namespace A092051.P13295464443397360380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090107 (n + 1)) (A140353 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092051.P13295464443397360380

/-!
# A092053: Denominators of the convergents of the continued fraction expansion [1;1/2,1/3,1/4,...,1/n,...].

The programs for A092053, the canonical program `A092053.P1951445893658287448` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092053 has offset 1).

The definition of A092053 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001902, A092054, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092053.P1951445893658287448

`2^A092054(n+1)-A001902(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092053

/-- `2^A092054(n+1)-A001902(n+1)` -/
def P1951445893658287448.Spec : Prop :=
  ∀ n, P1951445893658287448.a n = (A092053 (n + 1) : ℚ)

end A092053

/-! ## A092053.P2839003773739220658

`A001901(n+1)-A001902(n+1)`
-/

namespace A092053.P2839003773739220658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001901 (n + 1) - A001902 (n + 1)

end

end A092053.P2839003773739220658

namespace A092053

/-- `A001901(n+1)-A001902(n+1)` -/
def P2839003773739220658.Spec : Prop :=
  ∀ n, P2839003773739220658.a n = A092053 (n + 1)

end A092053

/-! ## A092053.P11893974967817309976

`A346943(n)/gcd(A000246(n), A346943(n))`
-/

namespace A092053.P11893974967817309976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346943 n : ℚ) / (Int.gcd (A000246 n) (A346943 n) : ℚ)

end

end A092053.P11893974967817309976

namespace A092053

/-- `A346943(n)/gcd(A000246(n), A346943(n))` -/
def P11893974967817309976.Spec : Prop :=
  ∀ n, P11893974967817309976.a n = (A092053 (n + 1) : ℚ)

end A092053

/-!
# A092054: Base-2 logarithm of the sum of numerator and denominator of the convergents of the continued fraction expansion [1; 1/2, 1/3, 1/4, ..., 1/n, ...].

The programs for A092054, the canonical program `A092054.P8892113849568096598` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092054 has offset 1).

The definition of A092054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092054.P8892113849568096598

`∑[val(or(1, n)+1, 2)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092054

/-- `∑[val(or(1, n)+1, 2)]` -/
def P8892113849568096598.Spec : Prop :=
  ∀ n, (P8892113849568096598.a n : ℤ) = A092054 (n + 1)

theorem P8892113849568096598.correct : P8892113849568096598.Spec := by
  intro n
  simp only [A092054, Nat.add_sub_cancel]

end A092054

/-! ## A092054.P4790950071081991952

`∑[val(gcd(2, n)+n, 2)]`
-/

namespace A092054.P4790950071081991952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.gcd 2 n + n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P4790950071081991952

namespace A092054

/-- `∑[val(gcd(2, n)+n, 2)]` -/
def P4790950071081991952.Spec : Prop :=
  ∀ n, (P4790950071081991952.a n : ℤ) = A092054 (n + 1)

end A092054

/-! ## A092054.P13883061538401258713

`∑[abs(Δ[val(n+1, 2)])]`
-/

namespace A092054.P13883061538401258713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P13883061538401258713

namespace A092054

/-- `∑[abs(Δ[val(n+1, 2)])]` -/
def P13883061538401258713.Spec : Prop :=
  ∀ n, P13883061538401258713.a n = A092054 (n + 1)

end A092054

/-! ## A092054.P18145728909482928411

`∑[floor(log2(xor(n, n+2)))]`
-/

namespace A092054.P18145728909482928411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P18145728909482928411

namespace A092054

/-- `∑[floor(log2(xor(n, n+2)))]` -/
def P18145728909482928411.Spec : Prop :=
  ∀ n, (P18145728909482928411.a n : ℤ) = A092054 (n + 1)

end A092054

/-! ## A092054.P17334278773946457460

`∑[val(∑[n+1], 2)+1]`
-/

namespace A092054.P17334278773946457460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f2 j) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P17334278773946457460

namespace A092054

/-- `∑[val(∑[n+1], 2)+1]` -/
def P17334278773946457460.Spec : Prop :=
  ∀ n, (P17334278773946457460.a n : ℤ) = A092054 (n + 1)

end A092054

/-! ## A092054.P16716319620590104413

`∑[log2(and(n+2, -(n+1)))]`
-/

namespace A092054.P16716319620590104413
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.land (n + 2 : ℤ) (-(n + 1 : ℤ)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P16716319620590104413

namespace A092054

/-- `∑[log2(and(n+2, -(n+1)))]` -/
def P16716319620590104413.Spec : Prop :=
  ∀ n, P16716319620590104413.a n = (A092054 (n + 1) : ℝ)

end A092054

/-! ## A092054.P15526596085129256993

`∑[val(∑[2-a(n-1)], 2)]` with `a(0)=2`
-/

namespace A092054.P15526596085129256993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P15526596085129256993

namespace A092054

/-- `∑[val(∑[2-a(n-1)], 2)]` -/
def P15526596085129256993.Spec : Prop :=
  ∀ n, (P15526596085129256993.a n : ℤ) = A092054 (n + 1)

end A092054

/-! ## A092054.P8855415610593142143

`a(n-1)+val((n+1)*(n+2), 2)` with `a(0)=1`
-/

namespace A092054.P8855415610593142143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation ((n + 1) * (n + 2)) 2

end

end A092054.P8855415610593142143

namespace A092054

/-- `a(n-1)+val((n+1)*(n+2), 2)` -/
def P8855415610593142143.Spec : Prop :=
  ∀ n, (P8855415610593142143.a n : ℤ) = A092054 (n + 1)

end A092054

/-! ## A092054.P14839523335178819517

`∑[A050603(n)]`
-/

namespace A092054.P14839523335178819517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P14839523335178819517

namespace A092054

/-- `∑[A050603(n)]` -/
def P14839523335178819517.Spec : Prop :=
  ∀ n, P14839523335178819517.a n = A092054 (n + 1)

end A092054

/-! ## A092054.P4862191345399869888

`∑[abs(A094267(n))]`
-/

namespace A092054.P4862191345399869888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094267 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P4862191345399869888

namespace A092054

/-- `∑[abs(A094267(n))]` -/
def P4862191345399869888.Spec : Prop :=
  ∀ n, P4862191345399869888.a n = A092054 (n + 1)

end A092054

/-! ## A092054.P11929589871703080631

`∑[A050605(n)+1]`
-/

namespace A092054.P11929589871703080631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P11929589871703080631

namespace A092054

/-- `∑[A050605(n)+1]` -/
def P11929589871703080631.Spec : Prop :=
  ∀ n, P11929589871703080631.a n = A092054 (n + 1)

end A092054

/-! ## A092054.P10222708532880553797

`∑[A136480(n+1)]`
-/

namespace A092054.P10222708532880553797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P10222708532880553797

namespace A092054

/-- `∑[A136480(n+1)]` -/
def P10222708532880553797.Spec : Prop :=
  ∀ n, P10222708532880553797.a n = A092054 (n + 1)

end A092054

/-! ## A092054.P5388663589325339791

`∑[A228371(or(1, n))]`
-/

namespace A092054.P5388663589325339791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228371 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P5388663589325339791

namespace A092054

/-- `∑[A228371(or(1, n))]` -/
def P5388663589325339791.Spec : Prop :=
  ∀ n, P5388663589325339791.a n = A092054 (n + 1)

end A092054

/-! ## A092054.P746631616011080944

`∑[log2(A065176(n+2))]`
-/

namespace A092054.P746631616011080944
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A065176 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P746631616011080944

namespace A092054

/-- `∑[log2(A065176(n+2))]` -/
def P746631616011080944.Spec : Prop :=
  ∀ n, P746631616011080944.a n = (A092054 (n + 1) : ℝ)

end A092054

/-! ## A092054.P5603770174521045253

`∑[A302045(3*(n+1))]`
-/

namespace A092054.P5603770174521045253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P5603770174521045253

namespace A092054

/-- `∑[A302045(3*(n+1))]` -/
def P5603770174521045253.Spec : Prop :=
  ∀ n, P5603770174521045253.a n = A092054 (n + 1)

end A092054

/-! ## A092054.P18052272234627585211

`∑[val(A109613(n)+1, 2)]`
-/

namespace A092054.P18052272234627585211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A109613 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P18052272234627585211

namespace A092054

/-- `∑[val(A109613(n)+1, 2)]` -/
def P18052272234627585211.Spec : Prop :=
  ∀ n, (P18052272234627585211.a n : ℤ) = A092054 (n + 1)

end A092054

/-! ## A092054.P10528495176379274490

`A378992(n+1)+1+n`
-/

namespace A092054.P10528495176379274490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378992 (n + 1) + 1 + (n : ℤ)

end

end A092054.P10528495176379274490

namespace A092054

/-- `A378992(n+1)+1+n` -/
def P10528495176379274490.Spec : Prop :=
  ∀ n, P10528495176379274490.a n = A092054 (n + 1)

end A092054

/-! ## A092054.P9521540894768790909

`∑[val(∑[A199944(n+1)], 2)]`
-/

namespace A092054.P9521540894768790909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199944 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P9521540894768790909

namespace A092054

/-- `∑[val(∑[A199944(n+1)], 2)]` -/
def P9521540894768790909.Spec : Prop :=
  ∀ n, (P9521540894768790909.a n : ℤ) = A092054 (n + 1)

end A092054

/-! ## A092054.P15566673700507006700

`∑[A001222(and(n+2, -(n+1)))]`
-/

namespace A092054.P15566673700507006700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (n + 2 : ℤ) (-(n + 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P15566673700507006700

namespace A092054

/-- `∑[A001222(and(n+2, -(n+1)))]` -/
def P15566673700507006700.Spec : Prop :=
  ∀ n, P15566673700507006700.a n = A092054 (n + 1)

end A092054

/-! ## A092054.P10467555496920608259

`∑[A001222(2-and(n, n+2)+n)]`
-/

namespace A092054.P10467555496920608259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 - (Nat.land n (n + 2) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092054.P10467555496920608259

namespace A092054

/-- `∑[A001222(2-and(n, n+2)+n)]` -/
def P10467555496920608259.Spec : Prop :=
  ∀ n, P10467555496920608259.a n = A092054 (n + 1)

end A092054

/-!
# A092055: a(n) = binomial(2 + 2^n,3).

The programs for A092055, the canonical program `A092055.P11074724168438944339` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092055 has offset 0).

The definition of A092055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2+2^n, 3)` (program `A092055.P11074724168438944339`, by `A092055.P11074724168438944339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092055.P3875470602381355045

`ogf((1-10x+20x^2)/(1-14x+56x^2-64x^3))`
-/

namespace A092055.P3875470602381355045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -10, 20] [1, -14, 56, -64] n

end

end A092055.P3875470602381355045

namespace A092055

/-- `ogf((1-10x+20x^2)/(1-14x+56x^2-64x^3))` -/
def P3875470602381355045.Spec : Prop :=
  ∀ n, P3875470602381355045.a n = A092055 n

end A092055

/-! ## A092055.P7659387780137016702

`2*a(n-1)+4^(n-1)+8^(n-1)` with `a(0)=1`
-/

namespace A092055.P7659387780137016702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A092055.P7659387780137016702

namespace A092055

/-- `2*a(n-1)+4^(n-1)+8^(n-1)` -/
def P7659387780137016702.Spec : Prop :=
  ∀ n, P7659387780137016702.a n = (A092055 n : ℚ)

end A092055

/-! ## A092055.P17460990178380281320

`(2^(3*n-1)+3*2^(2*n-1)+2^n)/3`
-/

namespace A092055.P17460990178380281320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((3 * n : ℤ) - 1 : ℤ) + 3 * (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) + (2 ^ n : ℚ)) / 3

end

end A092055.P17460990178380281320

namespace A092055

/-- `(2^(3*n-1)+3*2^(2*n-1)+2^n)/3` -/
def P17460990178380281320.Spec : Prop :=
  ∀ n, P17460990178380281320.a n = (A092055 n : ℚ)

end A092055

/-! ## A092055.P9261515316404213231

`A000079(n)*A007581(n)`
-/

namespace A092055.P9261515316404213231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A007581 n

end

end A092055.P9261515316404213231

namespace A092055

/-- `A000079(n)*A007581(n)` -/
def P9261515316404213231.Spec : Prop :=
  ∀ n, P9261515316404213231.a n = A092055 n

end A092055

/-! ## A092055.P11074724168438944339

`C(2+2^n, 3)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092055

/-- `C(2+2^n, 3)` -/
def P11074724168438944339.Spec : Prop :=
  ∀ n, (P11074724168438944339.a n : ℤ) = A092055 n

theorem P11074724168438944339.correct : P11074724168438944339.Spec := by
  intro n
  simp only [A092055]

end A092055

/-! ## A092055.P7125510278371343402

`2^n*A007581(n)`
-/

namespace A092055.P7125510278371343402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007581 n

end

end A092055.P7125510278371343402

namespace A092055

/-- `2^n*A007581(n)` -/
def P7125510278371343402.Spec : Prop :=
  ∀ n, P7125510278371343402.a n = A092055 n

end A092055

/-! ## A092055.P16788199431451805705

`A026740(n)+4^n`
-/

namespace A092055.P16788199431451805705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026740 n + (4 ^ n : ℤ)

end

end A092055.P16788199431451805705

namespace A092055

/-- `A026740(n)+4^n` -/
def P16788199431451805705.Spec : Prop :=
  ∀ n, P16788199431451805705.a n = A092055 n

end A092055

/-! ## A092055.P12558014496973461187

`2^n*A124303(n+1)`
-/

namespace A092055.P12558014496973461187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A124303 (n + 1)

end

end A092055.P12558014496973461187

namespace A092055

/-- `2^n*A124303(n+1)` -/
def P12558014496973461187.Spec : Prop :=
  ∀ n, P12558014496973461187.a n = A092055 n

end A092055

/-! ## A092055.P1340273929221459124

`8*a(n-1)-A028403(n)` with `a(0)=1`
-/

namespace A092055.P1340273929221459124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) - A028403 n

end

end A092055.P1340273929221459124

namespace A092055

/-- `8*a(n-1)-A028403(n)` -/
def P1340273929221459124.Spec : Prop :=
  ∀ n, P1340273929221459124.a n = A092055 n

end A092055

/-! ## A092055.P2597360199569849116

`A005578(n)*A032121(n)`
-/

namespace A092055.P2597360199569849116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n * A032121 n

end

end A092055.P2597360199569849116

namespace A092055

/-- `A005578(n)*A032121(n)` -/
def P2597360199569849116.Spec : Prop :=
  ∀ n, P2597360199569849116.a n = A092055 n

end A092055

/-! ## A092055.P1479366466789715783

`A007581(n)*A016116(2*n)`
-/

namespace A092055.P1479366466789715783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n * A016116 (2 * n)

end

end A092055.P1479366466789715783

namespace A092055

/-- `A007581(n)*A016116(2*n)` -/
def P1479366466789715783.Spec : Prop :=
  ∀ n, P1479366466789715783.a n = A092055 n

end A092055

/-! ## A092055.P18427942788825702041

`A000079(n)*A056505(2*n+1)`
-/

namespace A092055.P18427942788825702041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A056505 (2 * n + 1)

end

end A092055.P18427942788825702041

namespace A092055

/-- `A000079(n)*A056505(2*n+1)` -/
def P18427942788825702041.Spec : Prop :=
  ∀ n, P18427942788825702041.a n = A092055 n

end A092055

/-! ## A092055.P12780657697581979604

`A000051(n)*A007581(n)-A007581(n)`
-/

namespace A092055.P12780657697581979604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A007581 n - A007581 n

end

end A092055.P12780657697581979604

namespace A092055

/-- `A000051(n)*A007581(n)-A007581(n)` -/
def P12780657697581979604.Spec : Prop :=
  ∀ n, P12780657697581979604.a n = A092055 n

end A092055

/-! ## A092055.P14317327937031605375

`A011782(2*n)+A011782(n+1)*A084183(2*n)`
-/

namespace A092055.P14317327937031605375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) + A011782 (n + 1) * A084183 (2 * n)

end

end A092055.P14317327937031605375

namespace A092055

/-- `A011782(2*n)+A011782(n+1)*A084183(2*n)` -/
def P14317327937031605375.Spec : Prop :=
  ∀ n, P14317327937031605375.a n = A092055 n

end A092055

/-! ## A092055.P4256775849274416788

`record[C(A131575(n)+2, 3)]`
-/

namespace A092055.P4256775849274416788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131575 n + 2).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092055.P4256775849274416788

namespace A092055

/-- `record[C(A131575(n)+2, 3)]` -/
def P4256775849274416788.Spec : Prop :=
  ∀ n, (P4256775849274416788.a n : ℤ) = A092055 n

end A092055

/-! ## A092055.P6738862526931866986

`record[C(A324865(n+1)+3, 3)]`
-/

namespace A092055.P6738862526931866986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A324865 (n + 1) + 3).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092055.P6738862526931866986

namespace A092055

/-- `record[C(A324865(n+1)+3, 3)]` -/
def P6738862526931866986.Spec : Prop :=
  ∀ n, (P6738862526931866986.a n : ℤ) = A092055 n

end A092055

/-!
# A092056: Square table read by downward antidiagonals where T(n,k) = binomial(n+2^k-1,n).

The programs for A092056, the canonical program `A092056.P4763153891061507322` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092056 has offset 0).

The definition of A092056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(col(n)+2^(row(n)-col(n))-1, col(n))` (program `A092056.P4763153891061507322`, by `A092056.P4763153891061507322.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092056.P4763153891061507322

`C(col(n)+2^(row(n)-col(n))-1, col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092056

/-- `C(col(n)+2^(row(n)-col(n))-1, col(n))` -/
def P4763153891061507322.Spec : Prop :=
  ∀ n, (P4763153891061507322.a n : ℤ) = A092056 n

theorem P4763153891061507322.correct : P4763153891061507322.Spec := by
  intro n
  simp only [A092056]

end A092056

/-! ## A092056.P10144735765384947383

`C(2^(row(n)-col(n))+col(n)-1, col(n))`
-/

namespace A092056.P10144735765384947383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) + (SequenceMachineLib.triCol n : ℚ) - 1)).toNat (SequenceMachineLib.triCol n)

end

end A092056.P10144735765384947383

namespace A092056

/-- `C(2^(row(n)-col(n))+col(n)-1, col(n))` -/
def P10144735765384947383.Spec : Prop :=
  ∀ n, (P10144735765384947383.a n : ℤ) = A092056 n

theorem P10144735765384947383.correct : P10144735765384947383.Spec := by
  intro n
  simp only [A092056, Nat.add_sub_cancel, A092056.P10144735765384947383.a, A092056.P4763153891061507322.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A092056

/-! ## A092056.P331689143608950713

`A137153(∑[2*n]%comp[∑[n]])`
-/

namespace A092056.P331689143608950713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137153 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A092056.P331689143608950713

namespace A092056

/-- `A137153(∑[2*n]%comp[∑[n]])` -/
def P331689143608950713.Spec : Prop :=
  ∀ n, P331689143608950713.a n = A092056 n

end A092056

/-! ## A092056.P9287052907778910913

`A137153(∑[char[∑[n]]]²-(n+1))`
-/

namespace A092056.P9287052907778910913
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137153 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A092056.P9287052907778910913

namespace A092056

/-- `A137153(∑[char[∑[n]]]²-(n+1))` -/
def P9287052907778910913.Spec : Prop :=
  ∀ n, P9287052907778910913.a n = A092056 n

end A092056

/-! ## A092056.P8782402560860503964

`C(A091264(n), A002262(n))`
-/

namespace A092056.P8782402560860503964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091264 n).toNat (A002262 n).toNat

end

end A092056.P8782402560860503964

namespace A092056

/-- `C(A091264(n), A002262(n))` -/
def P8782402560860503964.Spec : Prop :=
  ∀ n, (P8782402560860503964.a n : ℤ) = A092056 n

end A092056

/-! ## A092056.P14731342745708431692

`or(char[1], A137153(A061579(n)))`
-/

namespace A092056.P14731342745708431692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A137153 (A061579 n).toNat)

end

end A092056.P14731342745708431692

namespace A092056

/-- `or(char[1], A137153(A061579(n)))` -/
def P14731342745708431692.Spec : Prop :=
  ∀ n, P14731342745708431692.a n = A092056 n

end A092056

/-! ## A092056.P7211696889459031723

`C(A091264(n), sqrt(A143844(n)))`
-/

namespace A092056.P7211696889459031723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091264 n).toNat (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat

end

end A092056.P7211696889459031723

namespace A092056

/-- `C(A091264(n), sqrt(A143844(n)))` -/
def P7211696889459031723.Spec : Prop :=
  ∀ n, (P7211696889459031723.a n : ℤ) = A092056 n

end A092056

/-! ## A092056.P11560932065135171746

`C(A091264(n), log2(A059268(n)))`
-/

namespace A092056.P11560932065135171746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091264 n).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A092056.P11560932065135171746

namespace A092056

/-- `C(A091264(n), log2(A059268(n)))` -/
def P11560932065135171746.Spec : Prop :=
  ∀ n, (P11560932065135171746.a n : ℤ) = A092056 n

end A092056

/-! ## A092056.P3095412414956670739

`A137153(A061579(n))%∑[A000032(n)]`
-/

namespace A092056.P3095412414956670739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137153 (A061579 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092056.P3095412414956670739

namespace A092056

/-- `A137153(A061579(n))%∑[A000032(n)]` -/
def P3095412414956670739.Spec : Prop :=
  ∀ n, P3095412414956670739.a n = A092056 n

end A092056

/-! ## A092056.P4101137481925992083

`A007318(C(2, n))*A137153(A061579(n))`
-/

namespace A092056.P4101137481925992083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A137153 (A061579 n).toNat

end

end A092056.P4101137481925992083

namespace A092056

/-- `A007318(C(2, n))*A137153(A061579(n))` -/
def P4101137481925992083.Spec : Prop :=
  ∀ n, P4101137481925992083.a n = A092056 n

end A092056

/-!
# A092057: Primes of the form 2*p^2 - 1, where p is prime.

The programs for A092057, the canonical program `A092057.P13672912862792873877` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092057 has offset 1).

The definition of A092057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 931 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092057.P4777636546725733046

`2*A106483(n+1)²-1`
-/

namespace A092057.P4777636546725733046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106483 (n + 1) ^ 2 - 1

end

end A092057.P4777636546725733046

namespace A092057

/-- `2*A106483(n+1)²-1` -/
def P4777636546725733046.Spec : Prop :=
  ∀ n, P4777636546725733046.a n = A092057 (n + 1)

end A092057

/-! ## A092057.P3632796160587697834

`A179262(A092058(1+n))`
-/

namespace A092057.P3632796160587697834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179262 (A092058 (1 + n)).toNat

end

end A092057.P3632796160587697834

namespace A092057

/-- `A179262(A092058(1+n))` -/
def P3632796160587697834.Spec : Prop :=
  ∀ n, P3632796160587697834.a n = A092057 (n + 1)

end A092057

/-! ## A092057.P6746043336256564940

`∩[A178491(n+1), A179262(n+1)]`
-/

namespace A092057.P6746043336256564940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092057.P6746043336256564940

namespace A092057

/-- `∩[A178491(n+1), A179262(n+1)]` -/
def P6746043336256564940.Spec : Prop :=
  ∀ n, (P6746043336256564940.a n : ℤ) = A092057 (n + 1)

end A092057

/-! ## A092057.P13672912862792873877

`∩[A066436(n+1), A179262(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A092057

/-- `∩[A066436(n+1), A179262(n+1)]` -/
def P13672912862792873877.Spec : Prop :=
  ∀ n, (P13672912862792873877.a n : ℤ) = A092057 (n + 1)

theorem P13672912862792873877.correct : P13672912862792873877.Spec := by
  intro n
  simp only [A092057, Nat.add_sub_cancel]

end A092057

/-! ## A092057.P18253341767095676891

`∩[A179262(n+1), A256917(n+1)]`
-/

namespace A092057.P18253341767095676891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092057.P18253341767095676891

namespace A092057

/-- `∩[A179262(n+1), A256917(n+1)]` -/
def P18253341767095676891.Spec : Prop :=
  ∀ n, (P18253341767095676891.a n : ℤ) = A092057 (n + 1)

end A092057

/-! ## A092057.P14128979356839227846

`A056220(A106483(n+1))`
-/

namespace A092057.P14128979356839227846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A106483 (n + 1)).toNat

end

end A092057.P14128979356839227846

namespace A092057

/-- `A056220(A106483(n+1))` -/
def P14128979356839227846.Spec : Prop :=
  ∀ n, P14128979356839227846.a n = A092057 (n + 1)

end A092057

/-! ## A092057.P11880070405466397210

`A056220(p?[A066049(n+1)])`
-/

namespace A092057.P11880070405466397210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A092057.P11880070405466397210

namespace A092057

/-- `A056220(p?[A066049(n+1)])` -/
def P11880070405466397210.Spec : Prop :=
  ∀ n, P11880070405466397210.a n = A092057 (n + 1)

end A092057

/-! ## A092057.P16508831728922468254

`A054000(p?[A066049(n+1)])+1`
-/

namespace A092057.P16508831728922468254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054000 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A092057.P16508831728922468254

namespace A092057

/-- `A054000(p?[A066049(n+1)])+1` -/
def P16508831728922468254.Spec : Prop :=
  ∀ n, P16508831728922468254.a n = A092057 (n + 1)

end A092057

/-! ## A092057.P13289200248909412145

`A007588(A106483(n+1))/A000040(A092058(n+1))`
-/

namespace A092057.P13289200248909412145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007588 (A106483 (n + 1)).toNat : ℚ) / (A000040 (A092058 (n + 1)).toNat : ℚ)

end

end A092057.P13289200248909412145

namespace A092057

/-- `A007588(A106483(n+1))/A000040(A092058(n+1))` -/
def P13289200248909412145.Spec : Prop :=
  ∀ n, P13289200248909412145.a n = (A092057 (n + 1) : ℚ)

end A092057

/-! ## A092057.P5986386530483819308

`record[A164314(A100484(n+1))]`
-/

namespace A092057.P5986386530483819308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (A100484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092057.P5986386530483819308

namespace A092057

/-- `record[A164314(A100484(n+1))]` -/
def P5986386530483819308.Spec : Prop :=
  ∀ n, P5986386530483819308.a n = A092057 (n + 1)

end A092057

/-! ## A092057.P3325658540325271929

`record[A059772(A072055(n+1)-1)]`
-/

namespace A092057.P3325658540325271929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (A072055 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092057.P3325658540325271929

namespace A092057

/-- `record[A059772(A072055(n+1)-1)]` -/
def P3325658540325271929.Spec : Prop :=
  ∀ n, P3325658540325271929.a n = A092057 (n + 1)

end A092057

/-! ## A092057.P4766515909692553677

`record[A059772(A089241(n+1)-2)]`
-/

namespace A092057.P4766515909692553677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (A089241 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092057.P4766515909692553677

namespace A092057

/-- `record[A059772(A089241(n+1)-2)]` -/
def P4766515909692553677.Spec : Prop :=
  ∀ n, P4766515909692553677.a n = A092057 (n + 1)

end A092057

/-! ## A092057.P6704223665360358669

`record[A164314(A089241(n+1)-2)]`
-/

namespace A092057.P6704223665360358669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (A089241 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092057.P6704223665360358669

namespace A092057

/-- `record[A164314(A089241(n+1)-2)]` -/
def P6704223665360358669.Spec : Prop :=
  ∀ n, P6704223665360358669.a n = A092057 (n + 1)

end A092057

/-! ## A092057.P11600983791187486589

`record[A164314(2*A000040(n+1))]`
-/

namespace A092057.P11600983791187486589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (2 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092057.P11600983791187486589

namespace A092057

/-- `record[A164314(2*A000040(n+1))]` -/
def P11600983791187486589.Spec : Prop :=
  ∀ n, P11600983791187486589.a n = A092057 (n + 1)

end A092057

/-! ## A092057.P8843260658096624897

`record[A164314(2*A006530(n+2))]`
-/

namespace A092057.P8843260658096624897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (2 * A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092057.P8843260658096624897

namespace A092057

/-- `record[A164314(2*A006530(n+2))]` -/
def P8843260658096624897.Spec : Prop :=
  ∀ n, P8843260658096624897.a n = A092057 (n + 1)

end A092057

/-! ## A092057.P2697750595828637938

`record[A164314(2*A020639(n+2))]`
-/

namespace A092057.P2697750595828637938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (2 * A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092057.P2697750595828637938

namespace A092057

/-- `record[A164314(2*A020639(n+2))]` -/
def P2697750595828637938.Spec : Prop :=
  ∀ n, P2697750595828637938.a n = A092057 (n + 1)

end A092057

/-!
# A092058: Numbers n such that 2*prime(n)^2 - 1 is prime.

The programs for A092058, the canonical program `A092058.P2002091925840857297` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092058 has offset 1).

The definition of A092058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092058.P2014327476806420310

`eq[1, A224489(n+1)]+1`
-/

namespace A092058.P2014327476806420310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224489 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092058.P2014327476806420310

namespace A092058

/-- `eq[1, A224489(n+1)]+1` -/
def P2014327476806420310.Spec : Prop :=
  ∀ n, (P2014327476806420310.a n : ℤ) = A092058 (n + 1)

end A092058

/-! ## A092058.P9771635807321636089

`A000720(A106483(n+1))`
-/

namespace A092058.P9771635807321636089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A106483 (n + 1)).toNat

end

end A092058.P9771635807321636089

namespace A092058

/-- `A000720(A106483(n+1))` -/
def P9771635807321636089.Spec : Prop :=
  ∀ n, P9771635807321636089.a n = A092058 (n + 1)

end A092058

/-! ## A092058.P2002091925840857297

`A000720(sqrt((A092057(n+1)+1)/2))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A092058

/-- `A000720(sqrt((A092057(n+1)+1)/2))` -/
def P2002091925840857297.Spec : Prop :=
  ∀ n, P2002091925840857297.a n = A092058 (n + 1)

theorem P2002091925840857297.correct : P2002091925840857297.Spec := by
  intro n
  simp only [A092058, Nat.add_sub_cancel]

end A092058

/-! ## A092058.P8922845893928592949

`record[gcd(n+1, A004526(A224489(n+1)-1))]`
-/

namespace A092058.P8922845893928592949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A004526 (A224489 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092058.P8922845893928592949

namespace A092058

/-- `record[gcd(n+1, A004526(A224489(n+1)-1))]` -/
def P8922845893928592949.Spec : Prop :=
  ∀ n, (P8922845893928592949.a n : ℤ) = A092058 (n + 1)

end A092058

/-! ## A092058.P5717171018253984961

`A000720(p?[A066049(n+1)])`
-/

namespace A092058.P5717171018253984961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A092058.P5717171018253984961

namespace A092058

/-- `A000720(p?[A066049(n+1)])` -/
def P5717171018253984961.Spec : Prop :=
  ∀ n, P5717171018253984961.a n = A092058 (n + 1)

end A092058

/-! ## A092058.P1703309717194251293

`record[A344616(A066049(n+1))]`
-/

namespace A092058.P1703309717194251293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A066049 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092058.P1703309717194251293

namespace A092058

/-- `record[A344616(A066049(n+1))]` -/
def P1703309717194251293.Spec : Prop :=
  ∀ n, P1703309717194251293.a n = A092058 (n + 1)

end A092058

/-! ## A092058.P10403603641391369428

`A289508(p?[A066049(n+1)])`
-/

namespace A092058.P10403603641391369428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A092058.P10403603641391369428

namespace A092058

/-- `A289508(p?[A066049(n+1)])` -/
def P10403603641391369428.Spec : Prop :=
  ∀ n, P10403603641391369428.a n = A092058 (n + 1)

end A092058

/-! ## A092058.P10838336176727526239

`∑{d}[A106483(n+1), A055396(#)]`
-/

namespace A092058.P10838336176727526239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A092058.P10838336176727526239

namespace A092058

/-- `∑{d}[A106483(n+1), A055396(#)]` -/
def P10838336176727526239.Spec : Prop :=
  ∀ n, P10838336176727526239.a n = A092058 (n + 1)

end A092058

/-! ## A092058.P11785322599311913616

`∑{d}[A106483(n+1), A056239(#)]`
-/

namespace A092058.P11785322599311913616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A092058.P11785322599311913616

namespace A092058

/-- `∑{d}[A106483(n+1), A056239(#)]` -/
def P11785322599311913616.Spec : Prop :=
  ∀ n, P11785322599311913616.a n = A092058 (n + 1)

end A092058

/-! ## A092058.P1924749743726222924

`A003963(A020985(n)²*A106483(n+1))`
-/

namespace A092058.P1924749743726222924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A020985 n ^ 2 * A106483 (n + 1)).toNat

end

end A092058.P1924749743726222924

namespace A092058

/-- `A003963(A020985(n)²*A106483(n+1))` -/
def P1924749743726222924.Spec : Prop :=
  ∀ n, P1924749743726222924.a n = A092058 (n + 1)

end A092058

/-! ## A092058.P8697479847662509834

`A003963(A106483(n+1))%A000040(n+1)`
-/

namespace A092058.P8697479847662509834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A106483 (n + 1)).toNat) (A000040 (n + 1))

end

end A092058.P8697479847662509834

namespace A092058

/-- `A003963(A106483(n+1))%A000040(n+1)` -/
def P8697479847662509834.Spec : Prop :=
  ∀ n, P8697479847662509834.a n = A092058 (n + 1)

end A092058

/-! ## A092058.P14425969728115280794

`A003963(A106483(n+1)%A106483(n+1)²)`
-/

namespace A092058.P14425969728115280794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.tmod (A106483 (n + 1)) (A106483 (n + 1) ^ 2)).toNat

end

end A092058.P14425969728115280794

namespace A092058

/-- `A003963(A106483(n+1)%A106483(n+1)²)` -/
def P14425969728115280794.Spec : Prop :=
  ∀ n, P14425969728115280794.a n = A092058 (n + 1)

end A092058

/-! ## A092058.P3297057141725705644

`A003963(2*A106483(n+1))`
-/

namespace A092058.P3297057141725705644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A106483 (n + 1)).toNat

end

end A092058.P3297057141725705644

namespace A092058

/-- `A003963(2*A106483(n+1))` -/
def P3297057141725705644.Spec : Prop :=
  ∀ n, P3297057141725705644.a n = A092058 (n + 1)

end A092058

/-!
# A092059: Primes in A092058.

The programs for A092059, the canonical program `A092059.P15242721470773266682` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092059 has offset 0).

The definition of A092059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092059.P13533372191422862943

`p?[(n+1)*A224489(n+1)]`
-/

namespace A092059.P13533372191422862943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A224489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092059.P13533372191422862943

namespace A092059

/-- `p?[(n+1)*A224489(n+1)]` -/
def P13533372191422862943.Spec : Prop :=
  ∀ n, P13533372191422862943.a n = A092059 n

end A092059

/-! ## A092059.P12160290480078037163

`filter[A000040(n+1), A224489(#)]`
-/

namespace A092059.P12160290480078037163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A224489 (f1 j).toNat = 1) n)

end

end A092059.P12160290480078037163

namespace A092059

/-- `filter[A000040(n+1), A224489(#)]` -/
def P12160290480078037163.Spec : Prop :=
  ∀ n, P12160290480078037163.a n = A092059 n

end A092059

/-! ## A092059.P5651288194921314250

`p?[A000720(A106483(n+1))]`
-/

namespace A092059.P5651288194921314250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A106483 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092059.P5651288194921314250

namespace A092059

/-- `p?[A000720(A106483(n+1))]` -/
def P5651288194921314250.Spec : Prop :=
  ∀ n, P5651288194921314250.a n = A092059 n

end A092059

/-! ## A092059.P5837598314607226863

`∩[A000040(n+1), A000720(A106483(n+1))]`
-/

namespace A092059.P5837598314607226863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A106483 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092059.P5837598314607226863

namespace A092059

/-- `∩[A000040(n+1), A000720(A106483(n+1))]` -/
def P5837598314607226863.Spec : Prop :=
  ∀ n, (P5837598314607226863.a n : ℤ) = A092059 n

end A092059

/-! ## A092059.P15242721470773266682

`p?[A092058(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A092059

/-- `p?[A092058(n+1)]` -/
def P15242721470773266682.Spec : Prop :=
  ∀ n, P15242721470773266682.a n = A092059 n

theorem P15242721470773266682.correct : P15242721470773266682.Spec := by
  intro n
  simp only [A092059]

end A092059

/-! ## A092059.P9476674309684045894

`record[A006530(A092058(n+2))]`
-/

namespace A092059.P9476674309684045894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A092058 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092059.P9476674309684045894

namespace A092059

/-- `record[A006530(A092058(n+2))]` -/
def P9476674309684045894.Spec : Prop :=
  ∀ n, P9476674309684045894.a n = A092059 n

end A092059

/-! ## A092059.P12641139173739614242

`record[A020639(A092058(n+3))]`
-/

namespace A092059.P12641139173739614242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A092058 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092059.P12641139173739614242

namespace A092059

/-- `record[A020639(A092058(n+3))]` -/
def P12641139173739614242.Spec : Prop :=
  ∀ n, P12641139173739614242.a n = A092059 n

end A092059

/-! ## A092059.P9006800476917718669

`filter[A092058(n+1), A010051(#)]`
-/

namespace A092059.P9006800476917718669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A092059.P9006800476917718669

namespace A092059

/-- `filter[A092058(n+1), A010051(#)]` -/
def P9006800476917718669.Spec : Prop :=
  ∀ n, P9006800476917718669.a n = A092059 n

end A092059

/-! ## A092059.P10510311911091451707

`filter[A092058(n+2), A080339(#)]`
-/

namespace A092059.P10510311911091451707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A092059.P10510311911091451707

namespace A092059

/-- `filter[A092058(n+2), A080339(#)]` -/
def P10510311911091451707.Spec : Prop :=
  ∀ n, P10510311911091451707.a n = A092059 n

end A092059

/-! ## A092059.P5904981086678714264

`∩[A000040(n+1), A092058(n+1)]`
-/

namespace A092059.P5904981086678714264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092059.P5904981086678714264

namespace A092059

/-- `∩[A000040(n+1), A092058(n+1)]` -/
def P5904981086678714264.Spec : Prop :=
  ∀ n, (P5904981086678714264.a n : ℤ) = A092059 n

end A092059

/-! ## A092059.P8447012558313872577

`∩[A045344(n+1), A092058(n+1)]`
-/

namespace A092059.P8447012558313872577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092059.P8447012558313872577

namespace A092059

/-- `∩[A045344(n+1), A092058(n+1)]` -/
def P8447012558313872577.Spec : Prop :=
  ∀ n, (P8447012558313872577.a n : ℤ) = A092059 n

end A092059

/-! ## A092059.P12493024774521901101

`∩[A092058(n+1), A106118(n+1)]`
-/

namespace A092059.P12493024774521901101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092059.P12493024774521901101

namespace A092059

/-- `∩[A092058(n+1), A106118(n+1)]` -/
def P12493024774521901101.Spec : Prop :=
  ∀ n, (P12493024774521901101.a n : ℤ) = A092059 n

end A092059

/-! ## A092059.P6232690098490457483

`∩[A092058(n+1), A182140(n+1)]`
-/

namespace A092059.P6232690098490457483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092059.P6232690098490457483

namespace A092059

/-- `∩[A092058(n+1), A182140(n+1)]` -/
def P6232690098490457483.Spec : Prop :=
  ∀ n, (P6232690098490457483.a n : ℤ) = A092059 n

end A092059

/-! ## A092059.P10363878268911134568

`∩[A092058(n+1), A182986(n+1)]`
-/

namespace A092059.P10363878268911134568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092059.P10363878268911134568

namespace A092059

/-- `∩[A092058(n+1), A182986(n+1)]` -/
def P10363878268911134568.Spec : Prop :=
  ∀ n, (P10363878268911134568.a n : ℤ) = A092059 n

end A092059

/-! ## A092059.P5263393519048209619

`∩[A092058(n+1), A186285(n+1)]`
-/

namespace A092059.P5263393519048209619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092059.P5263393519048209619

namespace A092059

/-- `∩[A092058(n+1), A186285(n+1)]` -/
def P5263393519048209619.Spec : Prop :=
  ∀ n, (P5263393519048209619.a n : ℤ) = A092059 n

end A092059

/-! ## A092059.P15528010421714990522

`∩[A092058(n+1), A230606(n+1)]`
-/

namespace A092059.P15528010421714990522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092059.P15528010421714990522

namespace A092059

/-- `∩[A092058(n+1), A230606(n+1)]` -/
def P15528010421714990522.Spec : Prop :=
  ∀ n, (P15528010421714990522.a n : ℤ) = A092059 n

end A092059

/-! ## A092059.P5858001636040202677

`∩[A092058(n+1), A240960(n+1)]`
-/

namespace A092059.P5858001636040202677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092059.P5858001636040202677

namespace A092059

/-- `∩[A092058(n+1), A240960(n+1)]` -/
def P5858001636040202677.Spec : Prop :=
  ∀ n, (P5858001636040202677.a n : ℤ) = A092059 n

end A092059

/-! ## A092059.P5720145466413653130

`p?[A000720(p?[A066049(n+1)])]`
-/

namespace A092059.P5720145466413653130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092059.P5720145466413653130

namespace A092059

/-- `p?[A000720(p?[A066049(n+1)])]` -/
def P5720145466413653130.Spec : Prop :=
  ∀ n, P5720145466413653130.a n = A092059 n

end A092059

/-!
# A092060: Primes not in A092058.

The programs for A092060, there is no canonical definition to state claims against.
-/

/-! ## A092060.P9350156180211700963

`p?[A220789(n+1)]`
-/

namespace A092060.P9350156180211700963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092060.P9350156180211700963

/-! ## A092060.P1049047624474742343

`p?[A000720(A152912(n+1))]`
-/

namespace A092060.P1049047624474742343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A152912 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092060.P1049047624474742343

/-! ## A092060.P7790468649311021140

`record[A020639(A220789(n+3))]`
-/

namespace A092060.P7790468649311021140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A220789 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092060.P7790468649311021140

/-! ## A092060.P1609948979483199126

`filter[A220789(n+1), A010051(#)]`
-/

namespace A092060.P1609948979483199126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A092060.P1609948979483199126

/-! ## A092060.P3317138633370666675

`filter[A220789(n+1), A080339(#)]`
-/

namespace A092060.P3317138633370666675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A092060.P3317138633370666675

/-! ## A092060.P2419254470140577908

`filter[A220789(n+1), A080545(#)]`
-/

namespace A092060.P2419254470140577908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A092060.P2419254470140577908

/-! ## A092060.P4945026785544471672

`∩[A000040(n+1), A220789(n+1)]`
-/

namespace A092060.P4945026785544471672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092060.P4945026785544471672

/-! ## A092060.P1775531502784188516

`∩[A004139(n+1), A220789(n+1)]`
-/

namespace A092060.P1775531502784188516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092060.P1775531502784188516

/-! ## A092060.P18398895851542808176

`∩[A006005(n+1), A220789(n+1)]`
-/

namespace A092060.P18398895851542808176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092060.P18398895851542808176

/-!
# A092061: Numbers k such that primorial(k)^2 + 1 is prime.

The programs for A092061, there is no canonical definition to state claims against.
-/

/-! ## A092061.P5286859987773081546

`eq[1, A098778(round(sqrt(n²+1)))]`
-/

namespace A092061.P5286859987773081546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098778 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092061.P5286859987773081546

/-! ## A092061.P96676447017665931

`lt[A098778(A028310(n)), 2]`
-/

namespace A092061.P96676447017665931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098778 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A092061.P96676447017665931

/-! ## A092061.P5701906060904673481

`A060311(A115593(n))+n`
-/

namespace A092061.P5701906060904673481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060311 (A115593 n).toNat + (n : ℤ)

end

end A092061.P5701906060904673481

/-! ## A092061.P603400954405557174

`A060311(A353863(n))+n`
-/

namespace A092061.P603400954405557174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060311 (A353863 n).toNat + (n : ℤ)

end

end A092061.P603400954405557174

/-!
# A092062: Numbers k such that A061015(k) is prime.

The programs for A092062, there is no canonical definition to state claims against.
-/

/-! ## A092062.P15645200408429760484

`A075075(A000085(n+1))*A088177(3*n+4)`
-/

namespace A092062.P15645200408429760484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075075 (A000085 (n + 1)).toNat * A088177 (3 * n + 4)

end

end A092062.P15645200408429760484

/-!
# A092064: Prime numbers in A092063.

The programs for A092064, there is no canonical definition to state claims against.
-/

/-! ## A092064.P4304252344100444156

`p?[A092063(n+1)]`
-/

namespace A092064.P4304252344100444156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092064.P4304252344100444156

/-! ## A092064.P6065848562619721352

`filter[A092063(n+1), A001222(#)]`
-/

namespace A092064.P6065848562619721352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A092064.P6065848562619721352

/-! ## A092064.P6000007502851158177

`filter[A092063(n+1), A010051(#)]`
-/

namespace A092064.P6000007502851158177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A092064.P6000007502851158177

/-! ## A092064.P7192473787275690299

`filter[A092063(n+1), A323152(#)]`
-/

namespace A092064.P7192473787275690299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A092064.P7192473787275690299

/-! ## A092064.P1438402124516684916

`filter[A092063(n+1), A323153(#)]`
-/

namespace A092064.P1438402124516684916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A092064.P1438402124516684916

/-!
# A092066: Primes in A092065.

The programs for A092066, there is no canonical definition to state claims against.
-/

/-! ## A092066.P13187409213864616587

`p?[A092065(n+1)]`
-/

namespace A092066.P13187409213864616587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092066.P13187409213864616587

/-! ## A092066.P10172298629379728415

`record[p?[A092065(A007306(n))]]`
-/

namespace A092066.P10172298629379728415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092065 (A007306 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092066.P10172298629379728415

/-! ## A092066.P17008955235588492280

`filter[A092065(n+1), A010051(#)]`
-/

namespace A092066.P17008955235588492280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A092066.P17008955235588492280

/-! ## A092066.P14750177709523838795

`filter[A092065(n+1), A080339(#)]`
-/

namespace A092066.P14750177709523838795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A092066.P14750177709523838795

/-! ## A092066.P15809756597566672516

`filter[A092065(n+1), A192280(#)]`
-/

namespace A092066.P15809756597566672516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192280 (f1 j).toNat = 1) n)

end

end A092066.P15809756597566672516

/-!
# A092067: a(n) is the smallest number m such that m > 1 and m divides n^m + 1.

The programs for A092067, there is no canonical definition to state claims against.
-/

/-! ## A092067.P8543584492016780414

`A020639(2+n)`
-/

namespace A092067.P8543584492016780414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 + n)

end

end A092067.P8543584492016780414

/-! ## A092067.P14702924432078179733

`A057237(n+2)+1`
-/

namespace A092067.P14702924432078179733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 2) + 1

end

end A092067.P14702924432078179733

/-! ## A092067.P15301257153028573810

`A087349(n+1)-(n+1)`
-/

namespace A092067.P15301257153028573810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087349 (n + 1) - (n + 1 : ℤ)

end

end A092067.P15301257153028573810

/-! ## A092067.P4279458002183832742

`2-A046666(n+2)+n`
-/

namespace A092067.P4279458002183832742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A046666 (n + 2) + (n : ℤ)

end

end A092067.P4279458002183832742

/-! ## A092067.P12399385848148970572

`gcd(n+2, A079390(n+1))`
-/

namespace A092067.P12399385848148970572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A079390 (n + 1))

end

end A092067.P12399385848148970572

/-! ## A092067.P4061121604289547740

`A020725(A057237(n+2))`
-/

namespace A092067.P4061121604289547740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A057237 (n + 2)).toNat

end

end A092067.P4061121604289547740

/-! ## A092067.P9685404381453318861

`gcd(A005563(n), A126286(n+1))`
-/

namespace A092067.P9685404381453318861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005563 n) (A126286 (n + 1))

end

end A092067.P9685404381453318861

/-! ## A092067.P8787564937735043041

`A064916(n+2)-A089196(n+1)`
-/

namespace A092067.P8787564937735043041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064916 (n + 2) - A089196 (n + 1)

end

end A092067.P8787564937735043041

/-! ## A092067.P14738844589161754047

`A374197(n+2)+A374196(n+2)`
-/

namespace A092067.P14738844589161754047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374197 (n + 2) + A374196 (n + 2)

end

end A092067.P14738844589161754047

/-! ## A092067.P17947828366609617546

`A126286(n+1)/A032742(n+1)`
-/

namespace A092067.P17947828366609617546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126286 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ)

end

end A092067.P17947828366609617546

/-! ## A092067.P3343025356137802768

`gcd(A046666(n+2), A070935(n+2))`
-/

namespace A092067.P3343025356137802768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046666 (n + 2)) (A070935 (n + 2))

end

end A092067.P3343025356137802768

/-! ## A092067.P16727542720432187301

`sqrt(A088377(n+2))`
-/

namespace A092067.P16727542720432187301
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 2) : ℝ)

end

end A092067.P16727542720432187301

/-! ## A092067.P10875718208666925173

`Δ[A046669(n+1)]`
-/

namespace A092067.P10875718208666925173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092067.P10875718208666925173

/-! ## A092067.P8627267007315029983

`Δ[A088821(n+1)]`
-/

namespace A092067.P8627267007315029983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092067.P8627267007315029983

/-! ## A092067.P9253839879360490290

`sqrt(sqrt(A088379(n+2)))`
-/

namespace A092067.P9253839879360490290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A088379 (n + 2) : ℝ))

end

end A092067.P9253839879360490290

/-! ## A092067.P7658011584429969413

`∑{p}[A028233(n+2), #]`
-/

namespace A092067.P7658011584429969413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A092067.P7658011584429969413

/-! ## A092067.P1877592034261066322

`∑{p}[A068794(n+2), #]`
-/

namespace A092067.P1877592034261066322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A092067.P1877592034261066322

/-! ## A092067.P3345383677290928995

`∑{p}[A304181(n+2), #]`
-/

namespace A092067.P3345383677290928995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A092067.P3345383677290928995

/-! ## A092067.P16554059180048171788

`∑{p}[A323130(n+2), #]`
-/

namespace A092067.P16554059180048171788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323130 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A092067.P16554059180048171788

/-!
# A092068: Positions of 0's in A092970.

The programs for A092068, there is no canonical definition to state claims against.
-/

/-! ## A092068.P6981941119078974813

`A093520(n+2)`
-/

namespace A092068.P6981941119078974813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093520 (n + 2)

end

end A092068.P6981941119078974813

/-! ## A092068.P16495088599412657223

`lt[n+1, A212281(n)]`
-/

namespace A092068.P16495088599412657223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092068.P16495088599412657223

/-! ## A092068.P11062896671341526913

`∑{e}[A020707(n), A093520(#)]`
-/

namespace A092068.P11062896671341526913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A093520 (Nat.factorization (f1 n).natAbs p)

end

end A092068.P11062896671341526913

/-! ## A092068.P5155313347354558311

`lt[A000332(n), A000332(A212281(n))]`
-/

namespace A092068.P5155313347354558311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A212281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092068.P5155313347354558311

/-! ## A092068.P2590460738812120943

`lt[A008615(n), A008615(A212281(n))]`
-/

namespace A092068.P2590460738812120943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A212281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092068.P2590460738812120943

/-!
# A092069: Molien series for genus 2 complete weight enumerators of self-dual codes over GF(3).

The programs for A092069, there is no canonical definition to state claims against.
-/

/-! ## A092069.P14429604357221444409

`A281965(xor(A000984(n), A069251(n)))`
-/

namespace A092069.P14429604357221444409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281965 (Int.xor (A000984 n) (A069251 n)).toNat

end

end A092069.P14429604357221444409

/-! ## A092069.P1829213696290328169

`A112925(C(A144187(n), A115571(n+2)))`
-/

namespace A092069.P1829213696290328169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (Nat.choose (A144187 n).toNat (A115571 (n + 2)).toNat)

end

end A092069.P1829213696290328169

/-! ## A092069.P18112359062554668102

`A112925(C(A144187(n), A115582(n+4)))`
-/

namespace A092069.P18112359062554668102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (Nat.choose (A144187 n).toNat (A115582 (n + 4)).toNat)

end

end A092069.P18112359062554668102

/-!
# A092070: Molien series for genus 2 complete weight enumerators of self-dual codes over GF(3) containing the all-ones vector.

The programs for A092070, there is no canonical definition to state claims against.
-/

/-! ## A092070.P11103917794321006109

`A390615(n+2)+A244291(A004211(n))`
-/

namespace A092070.P11103917794321006109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390615 (n + 2) + A244291 (A004211 n).toNat

end

end A092070.P11103917794321006109

/-!
# A092071: Molien series for complete weight enumerators of self-dual codes over GF(9).

The programs for A092071, there is no canonical definition to state claims against.
-/

/-! ## A092071.P1150691701204313728

`A298120(A192415(n+1))`
-/

namespace A092071.P1150691701204313728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298120 (A192415 (n + 1)).toNat

end

end A092071.P1150691701204313728

/-! ## A092071.P2249535806804644340

`A329366(A375279(n+1))`
-/

namespace A092071.P2249535806804644340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329366 (A375279 (n + 1)).toNat

end

end A092071.P2249535806804644340

/-! ## A092071.P103159776875010780

`A298120(A171854(n)+ceil(2^(n-1)))`
-/

namespace A092071.P103159776875010780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298120 (A171854 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A092071.P103159776875010780

/-!
# A092072: Molien series for complete weight enumerators of self-dual codes over GF(9) containing the all-ones vector.

The programs for A092072, there is no canonical definition to state claims against.
-/

/-! ## A092072.P17223163184079899692

`A278901(A004280(n+1))-A095162(2*n+1)`
-/

namespace A092072.P17223163184079899692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278901 (A004280 (n + 1)).toNat - A095162 (2 * n + 1)

end

end A092072.P17223163184079899692

/-! ## A092072.P988188244204053733

`A278901(A196499(n+1))-A095162(2*n+1)`
-/

namespace A092072.P988188244204053733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278901 (A196499 (n + 1)).toNat - A095162 (2 * n + 1)

end

end A092072.P988188244204053733

/-!
# A092073: Boustrophedon transform (first version) of Fibonacci numbers 1, 1, 2, 3, 5, 8, ...

The programs for A092073, there is no canonical definition to state claims against.
-/

/-! ## A092073.P13960217677737533381

`A000738(n)+A000111(n)`
-/

namespace A092073.P13960217677737533381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000738 n + A000111 n

end

end A092073.P13960217677737533381

/-! ## A092073.P5509201873639141543

`A000738(n)+abs(A346838(n))`
-/

namespace A092073.P5509201873639141543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000738 n + |A346838 n|

end

end A092073.P5509201873639141543

/-! ## A092073.P6753192161783215406

`A008281(A000096(n))+A000738(n)`
-/

namespace A092073.P6753192161783215406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A000096 n).toNat + A000738 n

end

end A092073.P6753192161783215406

/-! ## A092073.P12614191880549996939

`A008282(A000124(n))+A000738(n)`
-/

namespace A092073.P12614191880549996939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A000124 n).toNat + A000738 n

end

end A092073.P12614191880549996939

/-! ## A092073.P7001458979415629248

`A109449(A000217(n))+A000738(n)`
-/

namespace A092073.P7001458979415629248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000217 n).toNat + A000738 n

end

end A092073.P7001458979415629248

/-! ## A092073.P18119586118240903065

`A010094(A238531(n))+A000738(n)`
-/

namespace A092073.P18119586118240903065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A238531 n).toNat + A000738 n

end

end A092073.P18119586118240903065

/-!
# A092074: Primes congruent to 3 mod 17.

The programs for A092074, the canonical program `A092074.P13786195185324527531` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092074 has offset 1).

The definition of A092074 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A092074.anchor (n : ℕ) (hn : 1 ≤ n) : A092074 n = (Nat.nth (fun p => p.Prime ∧ p % 17 = 3) (n - 1) : ℤ)` in `Proof.A092.A092074`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092074.P13786195185324527531

`p?[17*n+3]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092074

/-- `p?[17*n+3]` -/
def P13786195185324527531.Spec : Prop :=
  ∀ n, (P13786195185324527531.a n : ℤ) = A092074 (n + 1)

theorem P13786195185324527531.correct : P13786195185324527531.Spec := by
  intro n
  simp only [A092074, Nat.add_sub_cancel]

end A092074

/-! ## A092074.P7839224930956485849

`∩[A214890(n+1), A215132(n+1)]`
-/

namespace A092074.P7839224930956485849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P7839224930956485849

namespace A092074

/-- `∩[A214890(n+1), A215132(n+1)]` -/
def P7839224930956485849.Spec : Prop :=
  ∀ n, (P7839224930956485849.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P8479202358048264784

`∩[A215132(n+1), A215153(n+1)]`
-/

namespace A092074.P8479202358048264784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P8479202358048264784

namespace A092074

/-- `∩[A215132(n+1), A215153(n+1)]` -/
def P8479202358048264784.Spec : Prop :=
  ∀ n, (P8479202358048264784.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P1561717759631360327

`∩[A215132(n+1), A215281(n+1)]`
-/

namespace A092074.P1561717759631360327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P1561717759631360327

namespace A092074

/-- `∩[A215132(n+1), A215281(n+1)]` -/
def P1561717759631360327.Spec : Prop :=
  ∀ n, (P1561717759631360327.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P3392487610809952961

`∩[A215132(n+1), A215360(n+1)]`
-/

namespace A092074.P3392487610809952961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P3392487610809952961

namespace A092074

/-- `∩[A215132(n+1), A215360(n+1)]` -/
def P3392487610809952961.Spec : Prop :=
  ∀ n, (P3392487610809952961.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P17838107136366086051

`∩[A215132(n+1), A215376(n+1)]`
-/

namespace A092074.P17838107136366086051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P17838107136366086051

namespace A092074

/-- `∩[A215132(n+1), A215376(n+1)]` -/
def P17838107136366086051.Spec : Prop :=
  ∀ n, (P17838107136366086051.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P9316803787260669178

`∩[A215132(n+1), A215380(n+1)]`
-/

namespace A092074.P9316803787260669178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P9316803787260669178

namespace A092074

/-- `∩[A215132(n+1), A215380(n+1)]` -/
def P9316803787260669178.Spec : Prop :=
  ∀ n, (P9316803787260669178.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P16020203376092379734

`∩[A215132(n+1), A215304(n+1)]`
-/

namespace A092074.P16020203376092379734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P16020203376092379734

namespace A092074

/-- `∩[A215132(n+1), A215304(n+1)]` -/
def P16020203376092379734.Spec : Prop :=
  ∀ n, (P16020203376092379734.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P8900461047150253743

`∩[A038890(n+1), A214890(n+1)]`
-/

namespace A092074.P8900461047150253743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P8900461047150253743

namespace A092074

/-- `∩[A038890(n+1), A214890(n+1)]` -/
def P8900461047150253743.Spec : Prop :=
  ∀ n, (P8900461047150253743.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P3269842667369849605

`∩[A038890(n+1), A215153(n+1)]`
-/

namespace A092074.P3269842667369849605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P3269842667369849605

namespace A092074

/-- `∩[A038890(n+1), A215153(n+1)]` -/
def P3269842667369849605.Spec : Prop :=
  ∀ n, (P3269842667369849605.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P5911487657185689298

`∩[A038890(n+1), A215281(n+1)]`
-/

namespace A092074.P5911487657185689298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P5911487657185689298

namespace A092074

/-- `∩[A038890(n+1), A215281(n+1)]` -/
def P5911487657185689298.Spec : Prop :=
  ∀ n, (P5911487657185689298.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P518383385662075908

`∩[A038890(n+1), A215304(n+1)]`
-/

namespace A092074.P518383385662075908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P518383385662075908

namespace A092074

/-- `∩[A038890(n+1), A215304(n+1)]` -/
def P518383385662075908.Spec : Prop :=
  ∀ n, (P518383385662075908.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P5014461654960438507

`∩[A038890(n+1), A215360(n+1)]`
-/

namespace A092074.P5014461654960438507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P5014461654960438507

namespace A092074

/-- `∩[A038890(n+1), A215360(n+1)]` -/
def P5014461654960438507.Spec : Prop :=
  ∀ n, (P5014461654960438507.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P3948586862761647483

`∩[A038890(n+1), A215376(n+1)]`
-/

namespace A092074.P3948586862761647483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P3948586862761647483

namespace A092074

/-- `∩[A038890(n+1), A215376(n+1)]` -/
def P3948586862761647483.Spec : Prop :=
  ∀ n, (P3948586862761647483.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P14093903565042135848

`∩[A038890(n+1), A215380(n+1)]`
-/

namespace A092074.P14093903565042135848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P14093903565042135848

namespace A092074

/-- `∩[A038890(n+1), A215380(n+1)]` -/
def P14093903565042135848.Spec : Prop :=
  ∀ n, (P14093903565042135848.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P8946730282411784827

`∩[A215153(n+1), A215137(n)+2]`
-/

namespace A092074.P8946730282411784827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P8946730282411784827

namespace A092074

/-- `∩[A215153(n+1), A215137(n)+2]` -/
def P8946730282411784827.Spec : Prop :=
  ∀ n, (P8946730282411784827.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P9981053551836658834

`∩[A215304(n+1), A215137(n)+2]`
-/

namespace A092074.P9981053551836658834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P9981053551836658834

namespace A092074

/-- `∩[A215304(n+1), A215137(n)+2]` -/
def P9981053551836658834.Spec : Prop :=
  ∀ n, (P9981053551836658834.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P3713367285995095874

`∩[A215308(n+1), A215137(n)+2]`
-/

namespace A092074.P3713367285995095874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P3713367285995095874

namespace A092074

/-- `∩[A215308(n+1), A215137(n)+2]` -/
def P3713367285995095874.Spec : Prop :=
  ∀ n, (P3713367285995095874.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P824720882956360490

`∩[A215380(n+1), A215137(n)+2]`
-/

namespace A092074.P824720882956360490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092074.P824720882956360490

namespace A092074

/-- `∩[A215380(n+1), A215137(n)+2]` -/
def P824720882956360490.Spec : Prop :=
  ∀ n, (P824720882956360490.a n : ℤ) = A092074 (n + 1)

end A092074

/-! ## A092074.P3071753695262143906

`record[A020639(17*n+3)]`
-/

namespace A092074.P3071753695262143906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (17 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092074.P3071753695262143906

namespace A092074

/-- `record[A020639(17*n+3)]` -/
def P3071753695262143906.Spec : Prop :=
  ∀ n, P3071753695262143906.a n = A092074 (n + 1)

end A092074

/-!
# A092076: Expansion of (1+4*x^3+x^6)/((1-x)*(1-x^3)^2).

The programs for A092076, the canonical program `A092076.P3381577283447898158` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092076 has offset 0).

The definition of A092076 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x^3+x^6)/(1-x-2x^3+2x^4+x^6-x^7))` (program `A092076.P3381577283447898158`, by `A092076.P3381577283447898158.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092076.P3381577283447898158

`ogf((1+4x^3+x^6)/(1-x-2x^3+2x^4+x^6-x^7))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092076

/-- `ogf((1+4x^3+x^6)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P3381577283447898158.Spec : Prop :=
  ∀ n, P3381577283447898158.a n = A092076 n

theorem P3381577283447898158.correct : P3381577283447898158.Spec := by
  intro n
  simp only [A092076]

end A092076

/-! ## A092076.P11135227815627621096

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=7, a(4)=7, a(5)=7, a(6)=19`
-/

namespace A092076.P11135227815627621096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 7, 7, 7, 19] fun n a =>
  a (n - 1) + 2 * a (n - 3) - 2 * a (n - 4) - a (n - 6) + a (n - 7)

end

end A092076.P11135227815627621096

namespace A092076

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P11135227815627621096.Spec : Prop :=
  ∀ n, P11135227815627621096.a n = A092076 n

end A092076

/-! ## A092076.P8648061106302747778

`A003215(floor(n/3))`
-/

namespace A092076.P8648061106302747778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 ⌊(n : ℚ) / 3⌋.toNat

end

end A092076.P8648061106302747778

namespace A092076

/-- `A003215(floor(n/3))` -/
def P8648061106302747778.Spec : Prop :=
  ∀ n, P8648061106302747778.a n = A092076 n

end A092076

/-! ## A092076.P8043902659354112749

`∑[n*(gcd(3, n)-1)]+1`
-/

namespace A092076.P8043902659354112749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.gcd 3 n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A092076.P8043902659354112749

namespace A092076

/-- `∑[n*(gcd(3, n)-1)]+1` -/
def P8043902659354112749.Spec : Prop :=
  ∀ n, P8043902659354112749.a n = A092076 n

end A092076

/-! ## A092076.P1437063303201613279

`∑[3*n-lcm(3, n)]+1`
-/

namespace A092076.P1437063303201613279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.lcm 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A092076.P1437063303201613279

namespace A092076

/-- `∑[3*n-lcm(3, n)]+1` -/
def P1437063303201613279.Spec : Prop :=
  ∀ n, P1437063303201613279.a n = A092076 n

end A092076

/-! ## A092076.P10983892327819642793

`∑[gcd(n%3, Δ[n²])]-n`
-/

namespace A092076.P10983892327819642793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 3 : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A092076.P10983892327819642793

namespace A092076

/-- `∑[gcd(n%3, Δ[n²])]-n` -/
def P10983892327819642793.Spec : Prop :=
  ∀ n, P10983892327819642793.a n = A092076 n

end A092076

/-! ## A092076.P7669117517503437697

`2*∑[n*char[3*n]]+1`
-/

namespace A092076.P7669117517503437697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A092076.P7669117517503437697

namespace A092076

/-- `2*∑[n*char[3*n]]+1` -/
def P7669117517503437697.Spec : Prop :=
  ∀ n, (P7669117517503437697.a n : ℤ) = A092076 n

end A092076

/-! ## A092076.P88713079591778628

`∑[and((1-n²)%3, Δ[n²])]`
-/

namespace A092076.P88713079591778628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (1 - (n ^ 2 : ℤ)) 3) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092076.P88713079591778628

namespace A092076

/-- `∑[and((1-n²)%3, Δ[n²])]` -/
def P88713079591778628.Spec : Prop :=
  ∀ n, P88713079591778628.a n = A092076 n

end A092076

/-! ## A092076.P850799471089785959

`abs(∑[(2*n+1)^(1-n²%3)]-n)`
-/

namespace A092076.P850799471089785959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ (1 - ((n ^ 2 % 3 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)|

end

end A092076.P850799471089785959

namespace A092076

/-- `abs(∑[(2*n+1)^(1-n²%3)]-n)` -/
def P850799471089785959.Spec : Prop :=
  ∀ n, P850799471089785959.a n = (A092076 n : ℚ)

end A092076

/-! ## A092076.P1203733634139672684

`A077043(Δ[ceil(n²/3)])`
-/

namespace A092076.P1203733634139672684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (f1 (n + 1) - f1 n).toNat

end

end A092076.P1203733634139672684

namespace A092076

/-- `A077043(Δ[ceil(n²/3)])` -/
def P1203733634139672684.Spec : Prop :=
  ∀ n, P1203733634139672684.a n = A092076 n

end A092076

/-! ## A092076.P2396144691390303981

`∑[char[3*n]*A004277(n)]`
-/

namespace A092076.P2396144691390303981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092076.P2396144691390303981

namespace A092076

/-- `∑[char[3*n]*A004277(n)]` -/
def P2396144691390303981.Spec : Prop :=
  ∀ n, P2396144691390303981.a n = A092076 n

end A092076

/-! ## A092076.P12346917509005735800

`ceil((A113655(n+1)+n)²/12)`
-/

namespace A092076.P12346917509005735800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A113655 (n + 1) + (n : ℤ)) ^ 2 : ℚ) / 12⌉

end

end A092076.P12346917509005735800

namespace A092076

/-- `ceil((A113655(n+1)+n)²/12)` -/
def P12346917509005735800.Spec : Prop :=
  ∀ n, P12346917509005735800.a n = A092076 n

end A092076

/-! ## A092076.P10259636334615710576

`ceil((A330396(n)+1+n)²/12)`
-/

namespace A092076.P10259636334615710576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A330396 n + 1 + (n : ℤ)) ^ 2 : ℚ) / 12⌉

end

end A092076.P10259636334615710576

namespace A092076

/-- `ceil((A330396(n)+1+n)²/12)` -/
def P10259636334615710576.Spec : Prop :=
  ∀ n, P10259636334615710576.a n = A092076 n

end A092076

/-! ## A092076.P17140078469965759181

`A007980(A047240(n+1)-n)`
-/

namespace A092076.P17140078469965759181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 (A047240 (n + 1) - (n : ℤ)).toNat

end

end A092076.P17140078469965759181

namespace A092076

/-- `A007980(A047240(n+1)-n)` -/
def P17140078469965759181.Spec : Prop :=
  ∀ n, P17140078469965759181.a n = A092076 n

end A092076

/-! ## A092076.P14067954020817786219

`∑[A004277(n)*A093719(2*n)]`
-/

namespace A092076.P14067954020817786219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A093719 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092076.P14067954020817786219

namespace A092076

/-- `∑[A004277(n)*A093719(2*n)]` -/
def P14067954020817786219.Spec : Prop :=
  ∀ n, P14067954020817786219.a n = A092076 n

end A092076

/-! ## A092076.P7231095256473033383

`A007980(A002264(n)+2*A002264(n))`
-/

namespace A092076.P7231095256473033383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 (A002264 n + 2 * A002264 n).toNat

end

end A092076.P7231095256473033383

namespace A092076

/-- `A007980(A002264(n)+2*A002264(n))` -/
def P7231095256473033383.Spec : Prop :=
  ∀ n, P7231095256473033383.a n = A092076 n

end A092076

/-! ## A092076.P8414907274532885589

`Δ[A213391(n)]`
-/

namespace A092076.P8414907274532885589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092076.P8414907274532885589

namespace A092076

/-- `Δ[A213391(n)]` -/
def P8414907274532885589.Spec : Prop :=
  ∀ n, P8414907274532885589.a n = A092076 n

end A092076

/-! ## A092076.P3348023786947151875

`Δ[(n+1)^3-A213392(n)]`
-/

namespace A092076.P3348023786947151875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092076.P3348023786947151875

namespace A092076

/-- `Δ[(n+1)^3-A213392(n)]` -/
def P3348023786947151875.Spec : Prop :=
  ∀ n, P3348023786947151875.a n = A092076 n

end A092076

/-! ## A092076.P11200228421573129705

`A068626(n-A102283(n+2))`
-/

namespace A092076.P11200228421573129705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 ((n : ℤ) - A102283 (n + 2)).toNat

end

end A092076.P11200228421573129705

namespace A092076

/-- `A068626(n-A102283(n+2))` -/
def P11200228421573129705.Spec : Prop :=
  ∀ n, P11200228421573129705.a n = A092076 n

end A092076

/-! ## A092076.P16029890878094262036

`A001399(A008588(A002264(n)))`
-/

namespace A092076.P16029890878094262036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A008588 (A002264 n).toNat).toNat

end

end A092076.P16029890878094262036

namespace A092076

/-- `A001399(A008588(A002264(n)))` -/
def P16029890878094262036.Spec : Prop :=
  ∀ n, P16029890878094262036.a n = A092076 n

end A092076

/-!
# A092078: Array of number of partitions of n into m parts which have the parts of the partitions of m as exponents.

The programs for A092078, there is no canonical definition to state claims against.
-/

/-! ## A092078.P7588405436781157161

`A287372(A143007(n))+A092079(n+1)`
-/

namespace A092078.P7588405436781157161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (A143007 n).toNat + A092079 (n + 1)

end

end A092078.P7588405436781157161

/-! ## A092078.P10498385483768452085

`A089309(A092079(n+1)*A268079(n+1))`
-/

namespace A092078.P10498385483768452085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A092079 (n + 1) * A268079 (n + 1)).toNat

end

end A092078.P10498385483768452085

/-! ## A092078.P2023086464244771888

`A089309(A092079(n+1)*A179086(n))`
-/

namespace A092078.P2023086464244771888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A092079 (n + 1) * A179086 n).toNat

end

end A092078.P2023086464244771888

/-! ## A092078.P6358737364861704585

`A284948(A274113(n+1))`
-/

namespace A092078.P6358737364861704585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (A274113 (n + 1)).toNat

end

end A092078.P6358737364861704585

/-! ## A092078.P8909437139114535579

`A030302(A331854(n)+A162975(n))`
-/

namespace A092078.P8909437139114535579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A331854 n + A162975 n).toNat

end

end A092078.P8909437139114535579

/-!
# A092079: Characteristic array marking partitions of m whose parts are exponents of partitions of n into m parts.

The programs for A092079, there is no canonical definition to state claims against.
-/

/-! ## A092079.P770134277275036558

`floor(sqrt(A092078(n+1)))`
-/

namespace A092079.P770134277275036558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A092078 (n + 1))

end

end A092079.P770134277275036558

/-! ## A092079.P13665519533010780312

`round(atan(A092078(-xor(n, -1))))`
-/

namespace A092079.P13665519533010780312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A092078 (-Int.xor (n : ℤ) (-1)).toNat : ℝ))

end

end A092079.P13665519533010780312

/-! ## A092079.P13702621633440293313

`row(row(A092078(A000027(n+1))))`
-/

namespace A092079.P13702621633440293313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (A092078 (A000027 (n + 1)).toNat).toNat)

end

end A092079.P13702621633440293313

/-! ## A092079.P8143583479579664415

`A000326(row(row(A092078(n+1))))`
-/

namespace A092079.P8143583479579664415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.triRow (SequenceMachineLib.triRow (A092078 (n + 1)).toNat))

end

end A092079.P8143583479579664415

/-! ## A092079.P7633400384563878962

`A089843(row(row(A092078(n+1))))`
-/

namespace A092079.P7633400384563878962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (SequenceMachineLib.triRow (SequenceMachineLib.triRow (A092078 (n + 1)).toNat))

end

end A092079.P7633400384563878962

/-! ## A092079.P1647480431810038466

`A194700(row(row(A092078(n+1))))`
-/

namespace A092079.P1647480431810038466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194700 (SequenceMachineLib.triRow (SequenceMachineLib.triRow (A092078 (n + 1)).toNat))

end

end A092079.P1647480431810038466

/-! ## A092079.P15644303070632114511

`ceil(A092078(n+1)/A000009(n))`
-/

namespace A092079.P15644303070632114511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A000009 n : ℚ)⌉

end

end A092079.P15644303070632114511

/-! ## A092079.P16870766081306836294

`ceil(A092078(n+1)/A000041(n))`
-/

namespace A092079.P16870766081306836294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A000041 n : ℚ)⌉

end

end A092079.P16870766081306836294

/-! ## A092079.P4637312939610110215

`ceil(A092078(n+1)/A000070(n))`
-/

namespace A092079.P4637312939610110215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A000070 n : ℚ)⌉

end

end A092079.P4637312939610110215

/-! ## A092079.P5050846315837299037

`ceil(A092078(n+1)/A000118(n))`
-/

namespace A092079.P5050846315837299037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A000118 n : ℚ)⌉

end

end A092079.P5050846315837299037

/-! ## A092079.P17709475365898849080

`ceil(A092078(n+1)/A000123(n))`
-/

namespace A092079.P17709475365898849080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A000123 n : ℚ)⌉

end

end A092079.P17709475365898849080

/-! ## A092079.P12446959883319657638

`ceil(A092078(n+1)/A000124(n))`
-/

namespace A092079.P12446959883319657638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A000124 n : ℚ)⌉

end

end A092079.P12446959883319657638

/-! ## A092079.P17907334354550105128

`ceil(A092078(n+1)/A000267(n))`
-/

namespace A092079.P17907334354550105128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A000267 n : ℚ)⌉

end

end A092079.P17907334354550105128

/-! ## A092079.P2105956402640859590

`ceil(A092078(n+1)/A001316(n))`
-/

namespace A092079.P2105956402640859590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A001316 n : ℚ)⌉

end

end A092079.P2105956402640859590

/-! ## A092079.P8169904703424490209

`ceil(A092078(n+1)/A001400(n))`
-/

namespace A092079.P8169904703424490209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A001400 n : ℚ)⌉

end

end A092079.P8169904703424490209

/-! ## A092079.P2993833159128643380

`ceil(A092078(n+1)/A007318(n))`
-/

namespace A092079.P2993833159128643380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A007318 n : ℚ)⌉

end

end A092079.P2993833159128643380

/-! ## A092079.P1770093532393523534

`ceil(A092078(n+1)/A000010(n+1))`
-/

namespace A092079.P1770093532393523534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)⌉

end

end A092079.P1770093532393523534

/-! ## A092079.P1926044039421693883

`ceil(A092078(n+1)/A000040(n+1))`
-/

namespace A092079.P1926044039421693883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A092079.P1926044039421693883

/-! ## A092079.P13253947529220279990

`ceil(A092078(n+1)/A000203(n+1))`
-/

namespace A092079.P13253947529220279990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)⌉

end

end A092079.P13253947529220279990

/-! ## A092079.P8150382086687164393

`ceil(A092078(n+1)/A006530(n+1))`
-/

namespace A092079.P8150382086687164393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092078 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)⌉

end

end A092079.P8150382086687164393

/-!
# A092080: Triangle read by rows in which row n lists the partition numbers of the first n positive integers.

The programs for A092080, the canonical program `A092080.P6835185993992173900` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092080 has offset 1).

The definition of A092080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092080.P16439726621225916661

`A000041(col(n)+1)`
-/

namespace A092080.P16439726621225916661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.triCol n + 1)

end

end A092080.P16439726621225916661

namespace A092080

/-- `A000041(col(n)+1)` -/
def P16439726621225916661.Spec : Prop :=
  ∀ n, P16439726621225916661.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P1644830746780816864

`A000041(1+col(n))`
-/

namespace A092080.P1644830746780816864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (1 + SequenceMachineLib.triCol n)

end

end A092080.P1644830746780816864

namespace A092080

/-- `A000041(1+col(n))` -/
def P1644830746780816864.Spec : Prop :=
  ∀ n, P1644830746780816864.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P11093502234789631841

`A000041(col(comp[C(n, 2)]))`
-/

namespace A092080.P11093502234789631841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.triCol (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A092080.P11093502234789631841

namespace A092080

/-- `A000041(col(comp[C(n, 2)]))` -/
def P11093502234789631841.Spec : Prop :=
  ∀ n, P11093502234789631841.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P7704297172494825480

`A000065(col(n)+1)+1`
-/

namespace A092080.P7704297172494825480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (SequenceMachineLib.triCol n + 1) + 1

end

end A092080.P7704297172494825480

namespace A092080

/-- `A000065(col(n)+1)+1` -/
def P7704297172494825480.Spec : Prop :=
  ∀ n, P7704297172494825480.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P3512206536915018716

`A119620(2*(col(n)+1))`
-/

namespace A092080.P3512206536915018716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * (SequenceMachineLib.triCol n + 1))

end

end A092080.P3512206536915018716

namespace A092080

/-- `A119620(2*(col(n)+1))` -/
def P3512206536915018716.Spec : Prop :=
  ∀ n, P3512206536915018716.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P7577811019941584952

`A119620(2+col(n)+col(n))`
-/

namespace A092080.P7577811019941584952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 + SequenceMachineLib.triCol n + SequenceMachineLib.triCol n)

end

end A092080.P7577811019941584952

namespace A092080

/-- `A119620(2+col(n)+col(n))` -/
def P7577811019941584952.Spec : Prop :=
  ∀ n, P7577811019941584952.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P4017493025290763335

`A000041(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A092080.P4017493025290763335
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat

end

end A092080.P4017493025290763335

namespace A092080

/-- `A000041(1-C(∑[char[∑[n]]], 2)+n)` -/
def P4017493025290763335.Spec : Prop :=
  ∀ n, P4017493025290763335.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P4667142474990157827

`A000041(1-(C(∑[char[∑[n]]], 2)-n))`
-/

namespace A092080.P4667142474990157827
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))).toNat

end

end A092080.P4667142474990157827

namespace A092080

/-- `A000041(1-(C(∑[char[∑[n]]], 2)-n))` -/
def P4667142474990157827.Spec : Prop :=
  ∀ n, P4667142474990157827.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P15040232101556263156

`A000041(comp[∑[n]]-C(comp[∑[n]]-n, 2))`
-/

namespace A092080.P15040232101556263156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2)

end

end A092080.P15040232101556263156

namespace A092080

/-- `A000041(comp[∑[n]]-C(comp[∑[n]]-n, 2))` -/
def P15040232101556263156.Spec : Prop :=
  ∀ n, P15040232101556263156.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P6835185993992173900

`A026820(C(col(n)+1, 2)+col(n)+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092080

/-- `A026820(C(col(n)+1, 2)+col(n)+1)` -/
def P6835185993992173900.Spec : Prop :=
  ∀ n, P6835185993992173900.a n = A092080 (n + 1)

theorem P6835185993992173900.correct : P6835185993992173900.Spec := by
  intro n
  simp only [A092080, Nat.add_sub_cancel]

end A092080

/-! ## A092080.P14670897693603415285

`A000041(eq[1, floor(2*sqrt(n))%2]%(comp[∑[n]]-n))`
-/

namespace A092080.P14670897693603415285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A092080.P14670897693603415285

namespace A092080

/-- `A000041(eq[1, floor(2*sqrt(n))%2]%(comp[∑[n]]-n))` -/
def P14670897693603415285.Spec : Prop :=
  ∀ n, P14670897693603415285.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P1384538214023825967

`A000041(A002260(n+1))`
-/

namespace A092080.P1384538214023825967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002260 (n + 1)).toNat

end

end A092080.P1384538214023825967

namespace A092080

/-- `A000041(A002260(n+1))` -/
def P1384538214023825967.Spec : Prop :=
  ∀ n, P1384538214023825967.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P14912054506501862111

`A000041(A002262(n)+1)`
-/

namespace A092080.P14912054506501862111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002262 n + 1).toNat

end

end A092080.P14912054506501862111

namespace A092080

/-- `A000041(A002262(n)+1)` -/
def P14912054506501862111.Spec : Prop :=
  ∀ n, P14912054506501862111.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P4732875640535914924

`A299200(A037126(n+1))`
-/

namespace A092080.P4732875640535914924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A037126 (n + 1)).toNat

end

end A092080.P4732875640535914924

namespace A092080

/-- `A299200(A037126(n+1))` -/
def P4732875640535914924.Spec : Prop :=
  ∀ n, P4732875640535914924.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P9553970366518941299

`A194451(A158405(n+1))`
-/

namespace A092080.P9553970366518941299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (A158405 (n + 1)).toNat

end

end A092080.P9553970366518941299

namespace A092080

/-- `A194451(A158405(n+1))` -/
def P9553970366518941299.Spec : Prop :=
  ∀ n, P9553970366518941299.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P191596496339297717

`A000041(abs(A140756(n+1)))`
-/

namespace A092080.P191596496339297717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |A140756 (n + 1)|.toNat

end

end A092080.P191596496339297717

namespace A092080

/-- `A000041(abs(A140756(n+1)))` -/
def P191596496339297717.Spec : Prop :=
  ∀ n, P191596496339297717.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P987310190588518320

`A000041(sqrt(A133819(n+1)))`
-/

namespace A092080.P987310190588518320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A092080.P987310190588518320

namespace A092080

/-- `A000041(sqrt(A133819(n+1)))` -/
def P987310190588518320.Spec : Prop :=
  ∀ n, P987310190588518320.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P13272958088916442241

`A000041(sqrt(A143844(n))+1)`
-/

namespace A092080.P13272958088916442241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ) + 1)).toNat

end

end A092080.P13272958088916442241

namespace A092080

/-- `A000041(sqrt(A143844(n))+1)` -/
def P13272958088916442241.Spec : Prop :=
  ∀ n, P13272958088916442241.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P5076968022620123435

`A000041(log2(A059268(n))+1)`
-/

namespace A092080.P5076968022620123435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat

end

end A092080.P5076968022620123435

namespace A092080

/-- `A000041(log2(A059268(n))+1)` -/
def P5076968022620123435.Spec : Prop :=
  ∀ n, P5076968022620123435.a n = A092080 (n + 1)

end A092080

/-! ## A092080.P2518648213156946569

`A000041(log2(2*A059268(n)))`
-/

namespace A092080.P2518648213156946569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A059268 n : ℝ))).toNat

end

end A092080.P2518648213156946569

namespace A092080

/-- `A000041(log2(2*A059268(n)))` -/
def P2518648213156946569.Spec : Prop :=
  ∀ n, P2518648213156946569.a n = A092080 (n + 1)

end A092080

/-!
# A092081: Triangle of certain double factorials.

The programs for A092081, there is no canonical definition to state claims against.
-/

/-! ## A092081.P15057956940164735417

`T(n-2,k-1)+T(n-1,k)+(row(n)+col(n))*(T(n-1,k-1)-T(n-2,k-1))` with `a(0)=1`
-/

namespace A092081.P15057956940164735417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n : ℤ) * (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A092081.P15057956940164735417

/-! ## A092081.P9095583892270622722

`T(T(n-1,k-1), 2*T(n-1,k-1))+(row(n)+col(n))*T(n-1,k-1)` with `a(0)=1`
-/

namespace A092081.P9095583892270622722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (2 * SequenceMachineLib.triUpLeft a n : ℤ) + (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * SequenceMachineLib.triUpLeft a n

end

end A092081.P9095583892270622722

/-! ## A092081.P8667520729712459389

`A006882(A051162(n))/A006882(A025581(n))`
-/

namespace A092081.P8667520729712459389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (A051162 n).toNat : ℚ) / (A006882 (A025581 n).toNat : ℚ)

end

end A092081.P8667520729712459389

/-!
# A092082: Triangle of numbers related to triangle A092083; generalization of Stirling numbers of second kind A008277, Lah-numbers A008297, ...

The programs for A092082, there is no canonical definition to state claims against.
-/

/-! ## A092082.P4968062669264111458

`A092083(n+1)/A132166(n+1)*A134141(n+1)`
-/

namespace A092082.P4968062669264111458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092083 (n + 1) : ℚ) / (A132166 (n + 1) : ℚ) * (A134141 (n + 1) : ℚ)

end

end A092082.P4968062669264111458

/-!
# A092083: A convolution triangle of numbers obtained from A034789.

The programs for A092083, the canonical program `A092083.P1721182978891980402` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092083 has offset 1).

The definition of A092083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092083.P1721182978891980402

`6*(6*row(n)+col(n)+1)*T(n-1,k)/(row(n)+1)+(col(n)+1)*T(n-1,k-1)/(row(n)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092083

/-- `6*(6*row(n)+col(n)+1)*T(n-1,k)/(row(n)+1)+(col(n)+1)*T(n-1,k-1)/(row(n)+1)` -/
def P1721182978891980402.Spec : Prop :=
  ∀ n, P1721182978891980402.a n = (A092083 (n + 1) : ℚ)

end A092083

/-! ## A092083.P5045494422539264076

`A092082(n+1)*A132166(n+1)/A134141(n+1)`
-/

namespace A092083.P5045494422539264076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092082 (n + 1) * A132166 (n + 1) : ℚ) / (A134141 (n + 1) : ℚ)

end

end A092083.P5045494422539264076

namespace A092083

/-- `A092082(n+1)*A132166(n+1)/A134141(n+1)` -/
def P5045494422539264076.Spec : Prop :=
  ∀ n, P5045494422539264076.a n = (A092083 (n + 1) : ℚ)

end A092083

/-!
# A092086: Row sums of triangle A092083 (s2(7)).

The programs for A092086, the canonical program `A092086.P13322653018823354937` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092086 has offset 1).

The definition of A092086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092086.P13322653018823354937

`∑{#}[n, A092083(C(n+1, 2)+#+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092086

/-- `∑{#}[n, A092083(C(n+1, 2)+#+1)]` -/
def P13322653018823354937.Spec : Prop :=
  ∀ n, P13322653018823354937.a n = A092086 (n + 1)

theorem P13322653018823354937.correct : P13322653018823354937.Spec := by
  intro n
  simp only [A092086, Nat.add_sub_cancel]

end A092086

/-!
# A092089: Number of odd-length palindromes among the k-tuples of partial quotients of the continued fraction expansions of n/r, r = 1, ..., n.

The programs for A092089, the canonical program `A092089.P5474914897670283616` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092089 has offset 1).

The definition of A092089 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092089.P5474914897670283616

`∑{d}[n+1, A060594(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A092089

/-- `∑{d}[n+1, A060594(#)]` -/
def P5474914897670283616.Spec : Prop :=
  ∀ n, P5474914897670283616.a n = A092089 (n + 1)

theorem P5474914897670283616.correct : P5474914897670283616.Spec := by
  intro n
  simp only [A092089, Nat.add_sub_cancel]

end A092089

/-! ## A092089.P10666615119709167879

`∑{d}[n+1, A114643(#)*A000005((n+1)/#)]`
-/

namespace A092089.P10666615119709167879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114643 d * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092089.P10666615119709167879

namespace A092089

/-- `∑{d}[n+1, A114643(#)*A000005((n+1)/#)]` -/
def P10666615119709167879.Spec : Prop :=
  ∀ n, P10666615119709167879.a n = A092089 (n + 1)

end A092089

/-! ## A092089.P9429614925491955545

`∑{d}[n+1, A145390(#)*A008966((n+1)/#)]`
-/

namespace A092089.P9429614925491955545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A145390 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092089.P9429614925491955545

namespace A092089

/-- `∑{d}[n+1, A145390(#)*A008966((n+1)/#)]` -/
def P9429614925491955545.Spec : Prop :=
  ∀ n, P9429614925491955545.a n = A092089 (n + 1)

end A092089

/-! ## A092089.P485962129342604075

`∑{d}[n+1, A034444(#)*A098178((n+1)/#)]`
-/

namespace A092089.P485962129342604075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A098178 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092089.P485962129342604075

namespace A092089

/-- `∑{d}[n+1, A034444(#)*A098178((n+1)/#)]` -/
def P485962129342604075.Spec : Prop :=
  ∀ n, P485962129342604075.a n = A092089 (n + 1)

end A092089

/-! ## A092089.P2123908549519795078

`A244342(n+1)/A000010(n+1)`
-/

namespace A092089.P2123908549519795078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244342 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A092089.P2123908549519795078

namespace A092089

/-- `A244342(n+1)/A000010(n+1)` -/
def P2123908549519795078.Spec : Prop :=
  ∀ n, P2123908549519795078.a n = (A092089 (n + 1) : ℚ)

end A092089

/-! ## A092089.P13458410921700535524

`∑{d}[n+1, A000005(#)*A114643((n+1)/#)]`
-/

namespace A092089.P13458410921700535524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A114643 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092089.P13458410921700535524

namespace A092089

/-- `∑{d}[n+1, A000005(#)*A114643((n+1)/#)]` -/
def P13458410921700535524.Spec : Prop :=
  ∀ n, P13458410921700535524.a n = A092089 (n + 1)

end A092089

/-! ## A092089.P5092172865066277997

`∑{d}[n+1, A008966(#)*A145390((n+1)/#)]`
-/

namespace A092089.P5092172865066277997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A145390 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092089.P5092172865066277997

namespace A092089

/-- `∑{d}[n+1, A008966(#)*A145390((n+1)/#)]` -/
def P5092172865066277997.Spec : Prop :=
  ∀ n, P5092172865066277997.a n = A092089 (n + 1)

end A092089

/-! ## A092089.P9188189204354651481

`A244342(n+1)/(A002088(n+1)-A002088(n))`
-/

namespace A092089.P9188189204354651481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244342 (n + 1) : ℚ) / (A002088 (n + 1) - A002088 n : ℚ)

end

end A092089.P9188189204354651481

namespace A092089

/-- `A244342(n+1)/(A002088(n+1)-A002088(n))` -/
def P9188189204354651481.Spec : Prop :=
  ∀ n, P9188189204354651481.a n = (A092089 (n + 1) : ℚ)

end A092089

/-! ## A092089.P13550039249395584467

`A035116(n+1)/A110601(n+1)*A244342(n+1)`
-/

namespace A092089.P13550039249395584467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035116 (n + 1) : ℚ) / (A110601 (n + 1) : ℚ) * (A244342 (n + 1) : ℚ)

end

end A092089.P13550039249395584467

namespace A092089

/-- `A035116(n+1)/A110601(n+1)*A244342(n+1)` -/
def P13550039249395584467.Spec : Prop :=
  ∀ n, P13550039249395584467.a n = (A092089 (n + 1) : ℚ)

end A092089

/-!
# A092090: Boustrophedon transform of Fibonacci numbers 1, 2, 3, 5, 8, ...

The programs for A092090, there is no canonical definition to state claims against.
-/

/-! ## A092090.P10440728179632032143

`A000744(n)+A000738(n)`
-/

namespace A092090.P10440728179632032143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000744 n + A000738 n

end

end A092090.P10440728179632032143

/-! ## A092090.P16312842147893400382

`A000687(n)+2*A000738(n)`
-/

namespace A092090.P16312842147893400382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000687 n + 2 * A000738 n

end

end A092090.P16312842147893400382

/-! ## A092090.P6268940259560457797

`2*A000744(n)-A000687(n)`
-/

namespace A092090.P6268940259560457797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000744 n - A000687 n

end

end A092090.P6268940259560457797

/-! ## A092090.P18152690652459971729

`A000744(n)+A092073(n)-A000111(n)`
-/

namespace A092090.P18152690652459971729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000744 n + (A092073 n - A000111 n)

end

end A092090.P18152690652459971729

/-! ## A092090.P17910895649186735371

`A000744(n)+A092073(n)-abs(A346838(n))`
-/

namespace A092090.P17910895649186735371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000744 n + (A092073 n - |A346838 n|)

end

end A092090.P17910895649186735371

/-!
# A092091: Molien series for 9-dimensional group of structure Z_2 X Z_2 and order 4, corresponding to complete weight enumerators of Hermitian self-dual GF(3)-linear codes over GF(9).

The programs for A092091, the canonical program `A092091.P13864060401570088604` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092091 has offset 0).

The definition of A092091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092091.P13864060401570088604

`ogf((1-x+3x^2+x^3)/(1-5x+6x^2+10x^3-29x^4+9x^5+36x^6-36x^7-9x^8+29x^9-10x^10-6x^11+5x^12-x^13))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092091

/-- `ogf((1-x+3x^2+x^3)/(1-5x+6x^2+10x^3-29x^4+9x^5+36x^6-36x^7-9x^8+29x^9-10x^10-6x^11+5x^12-x^13))` -/
def P13864060401570088604.Spec : Prop :=
  ∀ n, P13864060401570088604.a n = A092091 n

theorem P13864060401570088604.correct : P13864060401570088604.Spec := by
  intro n
  simp only [A092091]

end A092091

/-! ## A092091.P16055475286875245941

`(A177747(n)+A052267(n))/2`
-/

namespace A092091.P16055475286875245941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177747 n + A052267 n : ℚ) / 2

end

end A092091.P16055475286875245941

namespace A092091

/-- `(A177747(n)+A052267(n))/2` -/
def P16055475286875245941.Spec : Prop :=
  ∀ n, P16055475286875245941.a n = (A092091 n : ℚ)

end A092091

/-! ## A092091.P9544813612134149163

`A004525(A177747(n)+A052267(n))`
-/

namespace A092091.P9544813612134149163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A177747 n + A052267 n).toNat

end

end A092091.P9544813612134149163

namespace A092091

/-- `A004525(A177747(n)+A052267(n))` -/
def P9544813612134149163.Spec : Prop :=
  ∀ n, P9544813612134149163.a n = A092091 n

end A092091

/-! ## A092091.P3432273729460232194

`A026741(A177747(n)+A052267(n))`
-/

namespace A092091.P3432273729460232194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A177747 n + A052267 n).toNat

end

end A092091.P3432273729460232194

namespace A092091

/-- `A026741(A177747(n)+A052267(n))` -/
def P3432273729460232194.Spec : Prop :=
  ∀ n, P3432273729460232194.a n = A092091 n

end A092091

/-! ## A092091.P4922853276341939829

`A065033(A177747(n)+A052267(n))`
-/

namespace A092091.P4922853276341939829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A177747 n + A052267 n).toNat

end

end A092091.P4922853276341939829

namespace A092091

/-- `A065033(A177747(n)+A052267(n))` -/
def P4922853276341939829.Spec : Prop :=
  ∀ n, P4922853276341939829.a n = A092091 n

end A092091

/-!
# A092092: Back and Forth Summant S(n, _3): a(n) = Sum_{i=0..floor(2n/3)} (n-3i).

The programs for A092092, the canonical program `A092092.P10211553422224442862` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092092 has offset 1).

The definition of A092092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092092.P10211553422224442862

`ogf((1+x+x^3)/(1-2x^3+x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092092

/-- `ogf((1+x+x^3)/(1-2x^3+x^6))` -/
def P10211553422224442862.Spec : Prop :=
  ∀ n, P10211553422224442862.a n = A092092 (n + 1)

theorem P10211553422224442862.correct : P10211553422224442862.Spec := by
  intro n
  simp only [A092092, Nat.add_sub_cancel]

end A092092

/-! ## A092092.P4966504018036749341

`∑{#}[n, (#+1)*(floor((3*(#+1)-1)/(n+1))-floor((3*(#+1)-2)/(n+1)))]`
-/

namespace A092092.P4966504018036749341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * (⌊((3 * (k + 1) : ℤ) - 1 : ℚ) / (n + 1 : ℚ)⌋ - ⌊((3 * (k + 1) : ℤ) - 2 : ℚ) / (n + 1 : ℚ)⌋)

end

end A092092.P4966504018036749341

namespace A092092

/-- `∑{#}[n, (#+1)*(floor((3*(#+1)-1)/(n+1))-floor((3*(#+1)-2)/(n+1)))]` -/
def P4966504018036749341.Spec : Prop :=
  ∀ n, P4966504018036749341.a n = A092092 (n + 1)

end A092092

/-! ## A092092.P7795259602723507654

`∑[∑[runs[or(n, n+1)]]]%(n+2)`
-/

namespace A092092.P7795259602723507654
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2)

end

end A092092.P7795259602723507654

namespace A092092

/-- `∑[∑[runs[or(n, n+1)]]]%(n+2)` -/
def P7795259602723507654.Spec : Prop :=
  ∀ n, (P7795259602723507654.a n : ℤ) = A092092 (n + 1)

end A092092

/-! ## A092092.P17436633855152629027

`a(n-3)+2-n%3` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A092092.P17436633855152629027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 3) + (2 - ((n % 3 : ℕ) : ℤ))

end

end A092092.P17436633855152629027

namespace A092092

/-- `a(n-3)+2-n%3` -/
def P17436633855152629027.Spec : Prop :=
  ∀ n, P17436633855152629027.a n = A092092 (n + 1)

end A092092

/-! ## A092092.P13390513617065124060

`floor((2*n+3)²/6)%(n+2)`
-/

namespace A092092.P13390513617065124060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((2 * n + 3) ^ 2 : ℚ) / 6⌋ (n + 2 : ℤ)

end

end A092092.P13390513617065124060

namespace A092092

/-- `floor((2*n+3)²/6)%(n+2)` -/
def P13390513617065124060.Spec : Prop :=
  ∀ n, P13390513617065124060.a n = A092092 (n + 1)

end A092092

/-! ## A092092.P8768580766295739599

`round((n+1)*(2*(n+1))%3/3)`
-/

namespace A092092.P8768580766295739599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) * (2 * (n + 1) % 3) : ℕ) : ℚ) / 3)

end

end A092092.P8768580766295739599

namespace A092092

/-- `round((n+1)*(2*(n+1))%3/3)` -/
def P8768580766295739599.Spec : Prop :=
  ∀ n, P8768580766295739599.a n = A092092 (n + 1)

end A092092

/-! ## A092092.P12448582443173880044

`Δ[(lcm(3, n)/3+n)/2]+floor(n/3)`
-/

namespace A092092.P12448582443173880044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 3 n : ℚ) / 3 + (n : ℚ)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (⌊(n : ℚ) / 3⌋ : ℚ)

end

end A092092.P12448582443173880044

namespace A092092

/-- `Δ[(lcm(3, n)/3+n)/2]+floor(n/3)` -/
def P12448582443173880044.Spec : Prop :=
  ∀ n, P12448582443173880044.a n = (A092092 (n + 1) : ℚ)

end A092092

/-! ## A092092.P6483244509403203964

`floor((n+3)/(n-1)*a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A092092.P6483244509403203964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  ⌊(n + 3 : ℚ) / ((n : ℤ) - 1 : ℚ) * (a (n - 3) : ℚ)⌋

end

end A092092.P6483244509403203964

namespace A092092

/-- `floor((n+3)/(n-1)*a(n-3))` -/
def P6483244509403203964.Spec : Prop :=
  ∀ n, P6483244509403203964.a n = A092092 (n + 1)

end A092092

/-! ## A092092.P12461182875750031731

`A026741(A117909(n))`
-/

namespace A092092.P12461182875750031731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A117909 n).toNat

end

end A092092.P12461182875750031731

namespace A092092

/-- `A026741(A117909(n))` -/
def P12461182875750031731.Spec : Prop :=
  ∀ n, P12461182875750031731.a n = A092092 (n + 1)

end A092092

/-! ## A092092.P8147894959764942694

`A089598(A064429(n))`
-/

namespace A092092.P8147894959764942694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 (A064429 n).toNat

end

end A092092.P8147894959764942694

namespace A092092

/-- `A089598(A064429(n))` -/
def P8147894959764942694.Spec : Prop :=
  ∀ n, P8147894959764942694.a n = A092092 (n + 1)

end A092092

/-! ## A092092.P12903741486456037740

`A151842(A091684(n+1))`
-/

namespace A092092.P12903741486456037740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151842 (A091684 (n + 1)).toNat

end

end A092092.P12903741486456037740

namespace A092092

/-- `A151842(A091684(n+1))` -/
def P12903741486456037740.Spec : Prop :=
  ∀ n, P12903741486456037740.a n = A092092 (n + 1)

end A092092

/-! ## A092092.P6881343320569265705

`A128615(n)+A089598(n)`
-/

namespace A092092.P6881343320569265705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128615 n + A089598 n

end

end A092092.P6881343320569265705

namespace A092092

/-- `A128615(n)+A089598(n)` -/
def P6881343320569265705.Spec : Prop :=
  ∀ n, P6881343320569265705.a n = A092092 (n + 1)

end A092092

/-! ## A092092.P11503984172422657584

`A117909(n)/A010882(n)`
-/

namespace A092092.P11503984172422657584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117909 n : ℚ) / (A010882 n : ℚ)

end

end A092092.P11503984172422657584

namespace A092092

/-- `A117909(n)/A010882(n)` -/
def P11503984172422657584.Spec : Prop :=
  ∀ n, P11503984172422657584.a n = (A092092 (n + 1) : ℚ)

end A092092

/-! ## A092092.P18336369192577178619

`A117909(n)/A069705(n)`
-/

namespace A092092.P18336369192577178619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117909 n : ℚ) / (A069705 n : ℚ)

end

end A092092.P18336369192577178619

namespace A092092

/-- `A117909(n)/A069705(n)` -/
def P18336369192577178619.Spec : Prop :=
  ∀ n, P18336369192577178619.a n = (A092092 (n + 1) : ℚ)

end A092092

/-! ## A092092.P10782063467094973682

`A117909(n)/A130196(n)`
-/

namespace A092092.P10782063467094973682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117909 n : ℚ) / (A130196 n : ℚ)

end

end A092092.P10782063467094973682

namespace A092092

/-- `A117909(n)/A130196(n)` -/
def P10782063467094973682.Spec : Prop :=
  ∀ n, P10782063467094973682.a n = (A092092 (n + 1) : ℚ)

end A092092

/-! ## A092092.P14268355247069887637

`A117909(n)/A131534(n)`
-/

namespace A092092.P14268355247069887637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117909 n : ℚ) / (A131534 n : ℚ)

end

end A092092.P14268355247069887637

namespace A092092

/-- `A117909(n)/A131534(n)` -/
def P14268355247069887637.Spec : Prop :=
  ∀ n, P14268355247069887637.a n = (A092092 (n + 1) : ℚ)

end A092092

/-! ## A092092.P8075788765707597452

`A117909(n)/A132677(n)`
-/

namespace A092092.P8075788765707597452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117909 n : ℚ) / (A132677 n : ℚ)

end

end A092092.P8075788765707597452

namespace A092092

/-- `A117909(n)/A132677(n)` -/
def P8075788765707597452.Spec : Prop :=
  ∀ n, P8075788765707597452.a n = (A092092 (n + 1) : ℚ)

end A092092

/-! ## A092092.P15954064148459553489

`xor(A087508(n), A089598(n))`
-/

namespace A092092.P15954064148459553489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087508 n) (A089598 n)

end

end A092092.P15954064148459553489

namespace A092092

/-- `xor(A087508(n), A089598(n))` -/
def P15954064148459553489.Spec : Prop :=
  ∀ n, P15954064148459553489.a n = A092092 (n + 1)

end A092092

/-! ## A092092.P8785112560537614558

`Δ[A001318(n-A002264(n))]`
-/

namespace A092092.P8785112560537614558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 ((n : ℤ) - A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092092.P8785112560537614558

namespace A092092

/-- `Δ[A001318(n-A002264(n))]` -/
def P8785112560537614558.Spec : Prop :=
  ∀ n, P8785112560537614558.a n = A092092 (n + 1)

end A092092

/-! ## A092092.P1519431493275551773

`A166711(n+1)-A128615(n)`
-/

namespace A092092.P1519431493275551773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 (n + 1) - A128615 n

end

end A092092.P1519431493275551773

namespace A092092

/-- `A166711(n+1)-A128615(n)` -/
def P1519431493275551773.Spec : Prop :=
  ∀ n, P1519431493275551773.a n = A092092 (n + 1)

end A092092

/-!
# A092093: Back and Forth Summant S(n, _5): a(n) = sum_{i = 0..floor(2n/5)} n-5i.

The programs for A092093, the canonical program `A092093.P2057792772659251211` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092093 has offset 1).

The definition of A092093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092093.P2057792772659251211

`ogf((1+2x+x^2+3x^3+x^5+2x^6)/(1-2x^5+x^10))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092093

/-- `ogf((1+2x+x^2+3x^3+x^5+2x^6)/(1-2x^5+x^10))` -/
def P2057792772659251211.Spec : Prop :=
  ∀ n, P2057792772659251211.a n = A092093 (n + 1)

theorem P2057792772659251211.correct : P2057792772659251211.Spec := by
  intro n
  simp only [A092093, Nat.add_sub_cancel]

end A092093

/-! ## A092093.P9904855445184021606

`∑[∑[xor(1, ∑[n]%5)]]%(n+2)`
-/

namespace A092093.P9904855445184021606
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((∑ j ∈ Finset.range (n + 1), f3 j) % 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2)

end

end A092093.P9904855445184021606

namespace A092093

/-- `∑[∑[xor(1, ∑[n]%5)]]%(n+2)` -/
def P9904855445184021606.Spec : Prop :=
  ∀ n, (P9904855445184021606.a n : ℤ) = A092093 (n + 1)

end A092093

/-! ## A092093.P9537288687568649236

`∑[A250120(n+1)]%(n+2)`
-/

namespace A092093.P9537288687568649236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A092093.P9537288687568649236

namespace A092093

/-- `∑[A250120(n+1)]%(n+2)` -/
def P9537288687568649236.Spec : Prop :=
  ∀ n, P9537288687568649236.a n = A092093 (n + 1)

end A092093

/-! ## A092093.P9330013063808050678

`A008732(2*(n+1))%(n+2)`
-/

namespace A092093.P9330013063808050678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008732 (2 * (n + 1))) (n + 2 : ℤ)

end

end A092093.P9330013063808050678

namespace A092093

/-- `A008732(2*(n+1))%(n+2)` -/
def P9330013063808050678.Spec : Prop :=
  ∀ n, P9330013063808050678.a n = A092093 (n + 1)

end A092093

/-! ## A092093.P13582031444491578491

`A257845(2*n+7)/2`
-/

namespace A092093.P13582031444491578491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257845 (2 * n + 7) : ℚ) / 2

end

end A092093.P13582031444491578491

namespace A092093

/-- `A257845(2*n+7)/2` -/
def P13582031444491578491.Spec : Prop :=
  ∀ n, P13582031444491578491.a n = (A092093 (n + 1) : ℚ)

end A092093

/-! ## A092093.P14805600928542348467

`A130520(Δ[A028560(n)])%(n+2)`
-/

namespace A092093.P14805600928542348467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130520 (f1 (n + 1) - f1 n).toNat) (n + 2 : ℤ)

end

end A092093.P14805600928542348467

namespace A092093

/-- `A130520(Δ[A028560(n)])%(n+2)` -/
def P14805600928542348467.Spec : Prop :=
  ∀ n, P14805600928542348467.a n = A092093 (n + 1)

end A092093

/-! ## A092093.P7836158411068509354

`A134119((n+2)*(2*(n+1))%5)`
-/

namespace A092093.P7836158411068509354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 ((n + 2) * (2 * (n + 1) % 5))

end

end A092093.P7836158411068509354

namespace A092093

/-- `A134119((n+2)*(2*(n+1))%5)` -/
def P7836158411068509354.Spec : Prop :=
  ∀ n, P7836158411068509354.a n = A092093 (n + 1)

end A092093

/-! ## A092093.P11639771270403707562

`A008803(Δ[A046092(n)])%(n+2)`
-/

namespace A092093.P11639771270403707562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008803 (f1 (n + 1) - f1 n).toNat) (n + 2 : ℤ)

end

end A092093.P11639771270403707562

namespace A092093

/-- `A008803(Δ[A046092(n)])%(n+2)` -/
def P11639771270403707562.Spec : Prop :=
  ∀ n, P11639771270403707562.a n = A092093 (n + 1)

end A092093

/-! ## A092093.P6648529177911960903

`Δ[A001304(2*n)]%(n+2)`
-/

namespace A092093.P6648529177911960903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 2 : ℤ)

end

end A092093.P6648529177911960903

namespace A092093

/-- `Δ[A001304(2*n)]%(n+2)` -/
def P6648529177911960903.Spec : Prop :=
  ∀ n, P6648529177911960903.a n = A092093 (n + 1)

end A092093

/-!
# A092094: a(n) = Sum_{i=0,1,2,..; n-k*i >= -n} |n-k*i| for k=3.

The programs for A092094, the canonical program `A092094.P9579417812492116424` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092094 has offset 4).

The definition of A092094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092094.P6201647917341613775

`∑[(n+4)^(n²%3)]+6`
-/

namespace A092094.P6201647917341613775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) ^ (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A092094.P6201647917341613775

namespace A092094

/-- `∑[(n+4)^(n²%3)]+6` -/
def P6201647917341613775.Spec : Prop :=
  ∀ n, (P6201647917341613775.a n : ℤ) = A092094 (n + 4)

end A092094

/-! ## A092094.P8379176609331731912

`a(n-1-char[3*n])+4+n` with `a(0)=7`
-/

namespace A092094.P8379176609331731912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a ((n : ℤ) - 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat + 4 + n

end

end A092094.P8379176609331731912

namespace A092094

/-- `a(n-1-char[3*n])+4+n` -/
def P8379176609331731912.Spec : Prop :=
  ∀ n, (P8379176609331731912.a n : ℤ) = A092094 (n + 4)

end A092094

/-! ## A092094.P16733533227928983152

`ogf((7+5x+6x^2-13x^3-2x^4-3x^5+6x^6)/(1-x-2x^3+2x^4+x^6-x^7))`
-/

namespace A092094.P16733533227928983152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 5, 6, -13, -2, -3, 6] [1, -1, 0, -2, 2, 0, 1, -1] n

end

end A092094.P16733533227928983152

namespace A092094

/-- `ogf((7+5x+6x^2-13x^3-2x^4-3x^5+6x^6)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P16733533227928983152.Spec : Prop :=
  ∀ n, P16733533227928983152.a n = A092094 (n + 4)

end A092094

/-! ## A092094.P9579417812492116424

`A068626(n+3)+4+n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092094

/-- `A068626(n+3)+4+n` -/
def P9579417812492116424.Spec : Prop :=
  ∀ n, P9579417812492116424.a n = A092094 (n + 4)

theorem P9579417812492116424.correct : P9579417812492116424.Spec := by
  intro n
  simp only [A092094, Nat.add_sub_cancel]

end A092094

/-! ## A092094.P13731535702915771015

`A068626(n+3)+A020705(n)`
-/

namespace A092094.P13731535702915771015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (n + 3) + A020705 n

end

end A092094.P13731535702915771015

namespace A092094

/-- `A068626(n+3)+A020705(n)` -/
def P13731535702915771015.Spec : Prop :=
  ∀ n, P13731535702915771015.a n = A092094 (n + 4)

theorem P13731535702915771015.correct : P13731535702915771015.Spec := by
  intro n
  simp only [A092094, Nat.add_sub_cancel, A092094.P13731535702915771015.a, A092094.P9579417812492116424.a, A020705, A020705.P1213730512334166827.a, A068626, A068626.P5228562958192297829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092094

/-! ## A092094.P8435920104737515865

`∑[(n+3)*Δ[A004523(n)]+1]+6`
-/

namespace A092094.P8435920104737515865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (f2 (n + 1) - f2 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A092094.P8435920104737515865

namespace A092094

/-- `∑[(n+3)*Δ[A004523(n)]+1]+6` -/
def P8435920104737515865.Spec : Prop :=
  ∀ n, P8435920104737515865.a n = A092094 (n + 4)

end A092094

/-! ## A092094.P11218182860237007538

`∑[A091684(n+3)]+n+7`
-/

namespace A092094.P11218182860237007538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 7 : ℤ)

end

end A092094.P11218182860237007538

namespace A092094

/-- `∑[A091684(n+3)]+n+7` -/
def P11218182860237007538.Spec : Prop :=
  ∀ n, P11218182860237007538.a n = A092094 (n + 4)

end A092094

/-! ## A092094.P14255350632948408729

`A027379(n+2)-A140091(A002264(n))`
-/

namespace A092094.P14255350632948408729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (n + 2) - A140091 (A002264 n).toNat

end

end A092094.P14255350632948408729

namespace A092094

/-- `A027379(n+2)-A140091(A002264(n))` -/
def P14255350632948408729.Spec : Prop :=
  ∀ n, P14255350632948408729.a n = A092094 (n + 4)

end A092094

/-! ## A092094.P4496688660436240312

`A055998(n+2)-A140091(A002264(n))`
-/

namespace A092094.P4496688660436240312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (n + 2) - A140091 (A002264 n).toNat

end

end A092094.P4496688660436240312

namespace A092094

/-- `A055998(n+2)-A140091(A002264(n))` -/
def P4496688660436240312.Spec : Prop :=
  ∀ n, P4496688660436240312.a n = A092094 (n + 4)

end A092094

/-! ## A092094.P15024843591153017471

`A077043(A004523(n+4))+4+n`
-/

namespace A092094.P15024843591153017471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (A004523 (n + 4)).toNat + 4 + (n : ℤ)

end

end A092094.P15024843591153017471

namespace A092094

/-- `A077043(A004523(n+4))+4+n` -/
def P15024843591153017471.Spec : Prop :=
  ∀ n, P15024843591153017471.a n = A092094 (n + 4)

end A092094

/-! ## A092094.P9960134060708841537

`A000212(n+5)+Δ[A175676(n+3)]`
-/

namespace A092094.P9960134060708841537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 5) + (f1 (n + 1) - f1 n)

end

end A092094.P9960134060708841537

namespace A092094

/-- `A000212(n+5)+Δ[A175676(n+3)]` -/
def P9960134060708841537.Spec : Prop :=
  ∀ n, P9960134060708841537.a n = A092094 (n + 4)

end A092094

/-!
# A092095: a(n) = Sum_{i=0,1,2,...; n-k*i >= -n} |n-k*i| for k=4.

The programs for A092095, the canonical program `A092095.P9653114843455631928` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092095 has offset 5).

The definition of A092095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092095.P9653114843455631928

`ogf((9+7x-9x^2+x^3-8x^4-4x^5+8x^6)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092095

/-- `ogf((9+7x-9x^2+x^3-8x^4-4x^5+8x^6)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))` -/
def P9653114843455631928.Spec : Prop :=
  ∀ n, P9653114843455631928.a n = A092095 (n + 5)

theorem P9653114843455631928.correct : P9653114843455631928.Spec := by
  intro n
  simp only [A092095, Nat.add_sub_cancel]

end A092095

/-! ## A092095.P12158295490597299423

`∑[xor(a(n-1), A020710(n))]` with `a(0)=9, a(1)=7`
-/

namespace A092095.P12158295490597299423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 7] fun n f1 =>
  Int.xor (f1 (n - 1)) (A020710 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092095.P12158295490597299423

namespace A092095

/-- `∑[xor(a(n-1), A020710(n))]` -/
def P12158295490597299423.Spec : Prop :=
  ∀ n, P12158295490597299423.a n = A092095 (n + 5)

end A092095

/-! ## A092095.P9882332102026680059

`∑[A003815(n+5)]+8`
-/

namespace A092095.P9882332102026680059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A092095.P9882332102026680059

namespace A092095

/-- `∑[A003815(n+5)]+8` -/
def P9882332102026680059.Spec : Prop :=
  ∀ n, P9882332102026680059.a n = A092095 (n + 5)

end A092095

/-! ## A092095.P7224043133564221079

`Δ[A005993(n+4)-floor(n/4)]`
-/

namespace A092095.P7224043133564221079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 (n + 4) - ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092095.P7224043133564221079

namespace A092095

/-- `Δ[A005993(n+4)-floor(n/4)]` -/
def P7224043133564221079.Spec : Prop :=
  ∀ n, P7224043133564221079.a n = A092095 (n + 5)

end A092095

/-! ## A092095.P7630441623307085014

`and(A065033(n+6)², or(n+1, -2))`
-/

namespace A092095.P7630441623307085014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065033 (n + 6) ^ 2) (Int.lor (n + 1 : ℤ) (-2))

end

end A092095.P7630441623307085014

namespace A092095

/-- `and(A065033(n+6)², or(n+1, -2))` -/
def P7630441623307085014.Spec : Prop :=
  ∀ n, P7630441623307085014.a n = A092095 (n + 5)

end A092095

/-! ## A092095.P2475203041493231789

`A042948(A166515(n+5))`
-/

namespace A092095.P2475203041493231789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A166515 (n + 5)).toNat

end

end A092095.P2475203041493231789

namespace A092095

/-- `A042948(A166515(n+5))` -/
def P2475203041493231789.Spec : Prop :=
  ∀ n, P2475203041493231789.a n = A092095 (n + 5)

end A092095

/-!
# A092096: a(n) = Sum_{i=0,1,2,..; n-k*i >= -n} |n-k*i| for k=5.

The programs for A092096, the canonical program `A092096.P11259733340219664036` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092096 has offset 6).

The definition of A092096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092096.P11259733340219664036

`ogf((11+x+8x^2+10x^4-21x^5-x^6-3x^7-5x^9+10x^10)/(1-x-2x^5+2x^6+x^10-x^11))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A092096

/-- `ogf((11+x+8x^2+10x^4-21x^5-x^6-3x^7-5x^9+10x^10)/(1-x-2x^5+2x^6+x^10-x^11))` -/
def P11259733340219664036.Spec : Prop :=
  ∀ n, P11259733340219664036.a n = A092096 (n + 6)

theorem P11259733340219664036.correct : P11259733340219664036.Spec := by
  intro n
  simp only [A092096, Nat.add_sub_cancel]

end A092096

/-! ## A092096.P888326591970588730

`A104609(A000045(n+3))+A014612(n+1)`
-/

namespace A092096.P888326591970588730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104609 (A000045 (n + 3)).toNat + A014612 (n + 1)

end

end A092096.P888326591970588730

namespace A092096

/-- `A104609(A000045(n+3))+A014612(n+1)` -/
def P888326591970588730.Spec : Prop :=
  ∀ n, P888326591970588730.a n = A092096 (n + 6)

end A092096

/-!
# A092097: Limit number of (m-n)-almost-primes in range [2^m..2^{m+1}-1].

The programs for A092097, there is no canonical definition to state claims against.
-/

/-! ## A092097.P1701138580477460312

`Δ[A052130(n)%(3^n)]`
-/

namespace A092097.P1701138580477460312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052130 n) (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092097.P1701138580477460312

/-! ## A092097.P5424820722102040734

`A000007(n)+Δ[A052130(n)]`
-/

namespace A092097.P5424820722102040734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A092097.P5424820722102040734

/-! ## A092097.P16392590769098102716

`Δ[A052130(n)+A040000(n)]`
-/

namespace A092097.P16392590769098102716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052130 n + A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092097.P16392590769098102716

/-! ## A092097.P5567871573814919979

`Δ[A057427(n)+A052130(n)]`
-/

namespace A092097.P5567871573814919979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A052130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092097.P5567871573814919979

/-! ## A092097.P14977493844328389516

`Δ[A052130(n)]*A054977(n)`
-/

namespace A092097.P14977493844328389516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054977 n

end

end A092097.P14977493844328389516

/-!
# A092098: Number of regions that the line segments in A091908(n) cut the equilateral triangle into.

The programs for A092098, there is no canonical definition to state claims against.
-/

/-! ## A092098.P9512700060302252191

`A332377(n+1)+∑[2*n]`
-/

namespace A092098.P9512700060302252191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332377 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A092098.P9512700060302252191

/-! ## A092098.P1089934229341991719

`A003215(n)-A331423(n+1)`
-/

namespace A092098.P1089934229341991719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A331423 (n + 1)

end

end A092098.P1089934229341991719

/-! ## A092098.P13789959202368112259

`∑[A008458(n)]-A331423(n+1)`
-/

namespace A092098.P13789959202368112259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A331423 (n + 1)

end

end A092098.P13789959202368112259

/-! ## A092098.P5013034452002753855

`A332376(n+1)+1-A331782(n+1)`
-/

namespace A092098.P5013034452002753855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332376 (n + 1) + (1 - A331782 (n + 1))

end

end A092098.P5013034452002753855

/-! ## A092098.P12792505642868971401

`A331423(n+1)+A331782(n+1)-2`
-/

namespace A092098.P12792505642868971401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331423 (n + 1) + (A331782 (n + 1) - 2)

end

end A092098.P12792505642868971401

/-!
# A092099: Smallest prime between 2^n and 2^(n+1) having a minimal number of 1's in binary representation, A091936(n) - 2^n.

The programs for A092099, there is no canonical definition to state claims against.
-/

/-! ## A092099.P3734015298683533342

`A091936(n+1)-A000079(n+1)`
-/

namespace A092099.P3734015298683533342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091936 (n + 1) - A000079 (n + 1)

end

end A092099.P3734015298683533342

/-! ## A092099.P4033234450530100990

`A091936(n+1)-2^(n+1)`
-/

namespace A092099.P4033234450530100990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091936 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A092099.P4033234450530100990

/-! ## A092099.P17529113667450001566

`A091936(n+1)%A000079(n)`
-/

namespace A092099.P17529113667450001566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091936 (n + 1)) (A000079 n)

end

end A092099.P17529113667450001566

/-! ## A092099.P8839301990233958283

`and(A000225(n), A091936(n+1))`
-/

namespace A092099.P8839301990233958283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A091936 (n + 1))

end

end A092099.P8839301990233958283

/-! ## A092099.P13908869609459926279

`and(A091936(n+1), A104176(n))`
-/

namespace A092099.P13908869609459926279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091936 (n + 1)) (A104176 n)

end

end A092099.P13908869609459926279

/-! ## A092099.P7093604937796639605

`and(A091936(n+1), A126646(n))`
-/

namespace A092099.P7093604937796639605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091936 (n + 1)) (A126646 n)

end

end A092099.P7093604937796639605

/-! ## A092099.P13076907050699698575

`and(A091936(n+1), A153894(n))`
-/

namespace A092099.P13076907050699698575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091936 (n + 1)) (A153894 n)

end

end A092099.P13076907050699698575

/-! ## A092099.P14002395285516830841

`and(A091936(n+1), A171389(n))`
-/

namespace A092099.P14002395285516830841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091936 (n + 1)) (A171389 n)

end

end A092099.P14002395285516830841

/-! ## A092099.P6506432347997417147

`and(A091936(n+1), A198274(n))`
-/

namespace A092099.P6506432347997417147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091936 (n + 1)) (A198274 n)

end

end A092099.P6506432347997417147

/-! ## A092099.P9725184961322551921

`and(A091936(n+1), A198275(n))`
-/

namespace A092099.P9725184961322551921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091936 (n + 1)) (A198275 n)

end

end A092099.P9725184961322551921

