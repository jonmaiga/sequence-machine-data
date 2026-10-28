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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A270000: Harmonic fractility of n.

The programs for A270000, there is no canonical definition to state claims against.
-/

/-! ## A270000.P16412852384204985926

`A001221(A355457(A006530(n+2)))`
-/

namespace A270000.P16412852384204985926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A355457 (A006530 (n + 2)).toNat).toNat

end

end A270000.P16412852384204985926

/-! ## A270000.P4228954765844629094

`A151966(A000045(A006530(n+2))+1)`
-/

namespace A270000.P4228954765844629094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151966 (A000045 (A006530 (n + 2)).toNat + 1).toNat

end

end A270000.P4228954765844629094

/-! ## A270000.P6989021810156440539

`A180975(A061395(n+2)%A090781((2*n+1)*(n+1)))`
-/

namespace A270000.P6989021810156440539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180975 (Int.tmod (A061395 (n + 2)) (A090781 ((2 * n + 1) * (n + 1)))).toNat

end

end A270000.P6989021810156440539

/-! ## A270000.P11386419047232073409

`∏{e}[A325249(A092968(2*(n+2)))+1, #]`
-/

namespace A270000.P11386419047232073409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325249 (A092968 (2 * (n + 2))).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A270000.P11386419047232073409

/-! ## A270000.P12912625464445920246

`A146290(A138259(n+2))`
-/

namespace A270000.P12912625464445920246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146290 (A138259 (n + 2)).toNat

end

end A270000.P12912625464445920246

/-!
# A270002: Denominators of r-Egyptian fraction expansion for e - 2, where r = (1,1/2,1/3,1/4,...)

The programs for A270002, there is no canonical definition to state claims against.
-/

/-! ## A270002.P13467495825991230419

`A002504(A209916(n)+1+n)`
-/

namespace A270002.P13467495825991230419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (A209916 n + 1 + (n : ℤ)).toNat

end

end A270002.P13467495825991230419

/-!
# A270003: Least prime p such that n = p + q - r for some primes q and r with q > p.

The programs for A270003, the canonical program `A270003.P10437175995415337876` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270003 has offset 1).

The definition of A270003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270003.P10437175995415337876

`A143545(n+1)%2+2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A270003

/-- `A143545(n+1)%2+2` -/
def P10437175995415337876.Spec : Prop :=
  ∀ n, P10437175995415337876.a n = A270003 (n + 1)

theorem P10437175995415337876.correct : P10437175995415337876.Spec := by
  intro n
  simp only [A270003, Nat.add_sub_cancel]

end A270003

/-! ## A270003.P3374361694808022541

`A191558(n+1)%2+2`
-/

namespace A270003.P3374361694808022541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191558 (n + 1)) 2 + 2

end

end A270003.P3374361694808022541

namespace A270003

/-- `A191558(n+1)%2+2` -/
def P3374361694808022541.Spec : Prop :=
  ∀ n, P3374361694808022541.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P6987702219883815960

`and(1, A063918(n+1))+2`
-/

namespace A270003.P6987702219883815960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A063918 (n + 1)) + 2

end

end A270003.P6987702219883815960

namespace A270003

/-- `and(1, A063918(n+1))+2` -/
def P6987702219883815960.Spec : Prop :=
  ∀ n, P6987702219883815960.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P444780095198244090

`and(1, A074828(n+1))+2`
-/

namespace A270003.P444780095198244090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A074828 (n + 1)) + 2

end

end A270003.P444780095198244090

namespace A270003

/-- `and(1, A074828(n+1))+2` -/
def P444780095198244090.Spec : Prop :=
  ∀ n, P444780095198244090.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P10763400447292289159

`gcd(n, A113636(n+1))+1`
-/

namespace A270003.P10763400447292289159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A113636 (n + 1)) + 1

end

end A270003.P10763400447292289159

namespace A270003

/-- `gcd(n, A113636(n+1))+1` -/
def P10763400447292289159.Spec : Prop :=
  ∀ n, (P10763400447292289159.a n : ℤ) = A270003 (n + 1)

end A270003

/-! ## A270003.P9557753970824092332

`char[A014076(n+1)-1]+2`
-/

namespace A270003.P9557753970824092332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2

end

end A270003.P9557753970824092332

namespace A270003

/-- `char[A014076(n+1)-1]+2` -/
def P9557753970824092332.Spec : Prop :=
  ∀ n, (P9557753970824092332.a n : ℤ) = A270003 (n + 1)

end A270003

/-! ## A270003.P15815502867533109763

`char[2*A047845(n+1)]+2`
-/

namespace A270003.P15815502867533109763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2

end

end A270003.P15815502867533109763

namespace A270003

/-- `char[2*A047845(n+1)]+2` -/
def P15815502867533109763.Spec : Prop :=
  ∀ n, (P15815502867533109763.a n : ℤ) = A270003 (n + 1)

end A270003

/-! ## A270003.P6449263554256971407

`and(1, (n+1)%A151800(n))+2`
-/

namespace A270003.P6449263554256971407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (n + 1 : ℤ) (A151800 n)) + 2

end

end A270003.P6449263554256971407

namespace A270003

/-- `and(1, (n+1)%A151800(n))+2` -/
def P6449263554256971407.Spec : Prop :=
  ∀ n, P6449263554256971407.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P15129721917986843510

`A010693(A063918(n+1))`
-/

namespace A270003.P15129721917986843510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A063918 (n + 1)).toNat

end

end A270003.P15129721917986843510

namespace A270003

/-- `A010693(A063918(n+1))` -/
def P15129721917986843510.Spec : Prop :=
  ∀ n, P15129721917986843510.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P7999894950720087418

`A010693(A292597(n+1))`
-/

namespace A270003.P7999894950720087418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A292597 (n + 1)).toNat

end

end A270003.P7999894950720087418

namespace A270003

/-- `A010693(A292597(n+1))` -/
def P7999894950720087418.Spec : Prop :=
  ∀ n, P7999894950720087418.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P713755266429561779

`A005171(A141310(n))+2`
-/

namespace A270003.P713755266429561779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A141310 n).toNat + 2

end

end A270003.P713755266429561779

namespace A270003

/-- `A005171(A141310(n))+2` -/
def P713755266429561779.Spec : Prop :=
  ∀ n, P713755266429561779.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P3560659658778679587

`A020639(3*A143545(n+1))`
-/

namespace A270003.P3560659658778679587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * A143545 (n + 1)).toNat

end

end A270003.P3560659658778679587

namespace A270003

/-- `A020639(3*A143545(n+1))` -/
def P3560659658778679587.Spec : Prop :=
  ∀ n, P3560659658778679587.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P14608854880439435527

`A040001(A191558(n+1)+1)+1`
-/

namespace A270003.P14608854880439435527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A191558 (n + 1) + 1).toNat + 1

end

end A270003.P14608854880439435527

namespace A270003

/-- `A040001(A191558(n+1)+1)+1` -/
def P14608854880439435527.Spec : Prop :=
  ∀ n, P14608854880439435527.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P16697184318382114187

`and(1, A014683(A014683(n+1)))+2`
-/

namespace A270003.P16697184318382114187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014683 (A014683 (n + 1)).toNat) + 2

end

end A270003.P16697184318382114187

namespace A270003

/-- `and(1, A014683(A014683(n+1)))+2` -/
def P16697184318382114187.Spec : Prop :=
  ∀ n, P16697184318382114187.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P11385783352539517110

`A113636(or(1, A113636(n+1))-n)`
-/

namespace A270003.P11385783352539517110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113636 (Int.lor 1 (A113636 (n + 1)) - (n : ℤ)).toNat

end

end A270003.P11385783352539517110

namespace A270003

/-- `A113636(or(1, A113636(n+1))-n)` -/
def P11385783352539517110.Spec : Prop :=
  ∀ n, P11385783352539517110.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P12650225195205917086

`(A005171(n+1)*A056594(n))²+2`
-/

namespace A270003.P12650225195205917086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005171 (n + 1) * A056594 n) ^ 2 + 2

end

end A270003.P12650225195205917086

namespace A270003

/-- `(A005171(n+1)*A056594(n))²+2` -/
def P12650225195205917086.Spec : Prop :=
  ∀ n, P12650225195205917086.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P10616538424849358846

`A020639((n+1)*(A005171(n+1)+2))`
-/

namespace A270003.P10616538424849358846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * (A005171 (n + 1) + 2)).toNat

end

end A270003.P10616538424849358846

namespace A270003

/-- `A020639((n+1)*(A005171(n+1)+2))` -/
def P10616538424849358846.Spec : Prop :=
  ∀ n, P10616538424849358846.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P18353515532804598190

`A020639((n+1)*(char[A000040(n+1)-1]+3))`
-/

namespace A270003.P18353515532804598190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 3))

end

end A270003.P18353515532804598190

namespace A270003

/-- `A020639((n+1)*(char[A000040(n+1)-1]+3))` -/
def P18353515532804598190.Spec : Prop :=
  ∀ n, P18353515532804598190.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P1806425245526897156

`A020639(gcd(n+2, C(2, A000005(n+1)))+2*n+1)`
-/

namespace A270003.P1806425245526897156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.gcd (n + 2) (Nat.choose 2 (A000005 (n + 1)).toNat) + (2 * n + 1))

end

end A270003.P1806425245526897156

namespace A270003

/-- `A020639(gcd(n+2, C(2, A000005(n+1)))+2*n+1)` -/
def P1806425245526897156.Spec : Prop :=
  ∀ n, P1806425245526897156.a n = A270003 (n + 1)

end A270003

/-! ## A270003.P13029143830968822258

`A295609(A344220(A295520(n+1)))`
-/

namespace A270003.P13029143830968822258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 (A344220 (A295520 (n + 1)).toNat).toNat

end

end A270003.P13029143830968822258

namespace A270003

/-- `A295609(A344220(A295520(n+1)))` -/
def P13029143830968822258.Spec : Prop :=
  ∀ n, P13029143830968822258.a n = A270003 (n + 1)

end A270003

/-!
# A270006: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 5", based on the 5-celled von Neumann neighborhood.

The programs for A270006, the canonical program `A270006.P12805962119230033168` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270006 has offset 0).

The definition of A270006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270006.P12357028942741070151

`C(lcm(2, n)+1, 2*n)²-char[1]`
-/

namespace A270006.P12357028942741070151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lcm 2 n + 1) (2 * n) ^ 2 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270006.P12357028942741070151

namespace A270006

/-- `C(lcm(2, n)+1, 2*n)²-char[1]` -/
def P12357028942741070151.Spec : Prop :=
  ∀ n, P12357028942741070151.a n = A270006 n

end A270006

/-! ## A270006.P4731083880683919474

`((n%2)^n*Δ[n²])²-char[1]`
-/

namespace A270006.P4731083880683919474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n % 2) ^ n : ℕ) : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270006.P4731083880683919474

namespace A270006

/-- `((n%2)^n*Δ[n²])²-char[1]` -/
def P4731083880683919474.Spec : Prop :=
  ∀ n, P4731083880683919474.a n = A270006 n

end A270006

/-! ## A270006.P921634189295885205

`C(Δ[n²], a(n-1)+1)²-char[1]` with `a(0)=1`
-/

namespace A270006.P921634189295885205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat (a (n - 1) + 1).toNat ^ 2 : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270006.P921634189295885205

namespace A270006

/-- `C(Δ[n²], a(n-1)+1)²-char[1]` -/
def P921634189295885205.Spec : Prop :=
  ∀ n, P921634189295885205.a n = A270006 n

end A270006

/-! ## A270006.P8957873901161221633

`((2*n+1)²-a(n-1))*and(1, n)` with `a(0)=1`
-/

namespace A270006.P8957873901161221633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((2 * n + 1) ^ 2 : ℤ) - a (n - 1)) * (Nat.land 1 n : ℤ)

end

end A270006.P8957873901161221633

namespace A270006

/-- `((2*n+1)²-a(n-1))*and(1, n)` -/
def P8957873901161221633.Spec : Prop :=
  ∀ n, P8957873901161221633.a n = A270006 n

end A270006

/-! ## A270006.P14560964632761088483

`ogf((1+8x-3x^2+25x^3+3x^4-2x^5-x^6+x^7)/(1-3x^2+3x^4-x^6))`
-/

namespace A270006.P14560964632761088483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -3, 25, 3, -2, -1, 1] [1, 0, -3, 0, 3, 0, -1] n

end

end A270006.P14560964632761088483

namespace A270006

/-- `ogf((1+8x-3x^2+25x^3+3x^4-2x^5-x^6+x^7)/(1-3x^2+3x^4-x^6))` -/
def P14560964632761088483.Spec : Prop :=
  ∀ n, P14560964632761088483.a n = A270006 n

end A270006

/-! ## A270006.P9352210161696259544

`(2*n+1-a(n-1))²*C(2, a(n-1))` with `a(0)=1`
-/

namespace A270006.P9352210161696259544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + 1 : ℤ) - a (n - 1)) ^ 2 * (Nat.choose 2 (a (n - 1)).toNat : ℤ)

end

end A270006.P9352210161696259544

namespace A270006

/-- `(2*n+1-a(n-1))²*C(2, a(n-1))` -/
def P9352210161696259544.Spec : Prop :=
  ∀ n, P9352210161696259544.a n = A270006 n

end A270006

/-! ## A270006.P12805962119230033168

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=8, a(2)=0, a(3)=49, a(4)=0, a(5)=121, a(6)=0, a(7)=225`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270006

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P12805962119230033168.Spec : Prop :=
  ∀ n, P12805962119230033168.a n = A270006 n

theorem P12805962119230033168.correct : P12805962119230033168.Spec := by
  intro n
  simp only [A270006]

end A270006

/-! ## A270006.P11451652713680355866

`A266437(n)²-char[1]`
-/

namespace A270006.P11451652713680355866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n ^ 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270006.P11451652713680355866

namespace A270006

/-- `A266437(n)²-char[1]` -/
def P11451652713680355866.Spec : Prop :=
  ∀ n, P11451652713680355866.a n = A270006 n

end A270006

/-! ## A270006.P11804294893031565364

`A181900(A266220(n))`
-/

namespace A270006.P11804294893031565364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181900 (A266220 n).toNat

end

end A270006.P11804294893031565364

namespace A270006

/-- `A181900(A266220(n))` -/
def P11804294893031565364.Spec : Prop :=
  ∀ n, P11804294893031565364.a n = A270006 n

end A270006

/-! ## A270006.P11037945307313744582

`A223134(n)*A266220(n)`
-/

namespace A270006.P11037945307313744582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n * A266220 n

end

end A270006.P11037945307313744582

namespace A270006

/-- `A223134(n)*A266220(n)` -/
def P11037945307313744582.Spec : Prop :=
  ∀ n, P11037945307313744582.a n = A270006 n

end A270006

/-! ## A270006.P16833554251140372153

`A159075(n)+A266437(n)²`
-/

namespace A270006.P16833554251140372153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A266437 n ^ 2

end

end A270006.P16833554251140372153

namespace A270006

/-- `A159075(n)+A266437(n)²` -/
def P16833554251140372153.Spec : Prop :=
  ∀ n, P16833554251140372153.a n = A270006 n

end A270006

/-! ## A270006.P3759916583118512374

`(A266222(n)+1)*A266220(n)²`
-/

namespace A270006.P3759916583118512374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A266222 n + 1) * A266220 n ^ 2

end

end A270006.P3759916583118512374

namespace A270006

/-- `(A266222(n)+1)*A266220(n)²` -/
def P3759916583118512374.Spec : Prop :=
  ∀ n, P3759916583118512374.a n = A270006 n

end A270006

/-! ## A270006.P13349930423240815312

`A266220(n)+2*n*A266437(n)`
-/

namespace A270006.P13349930423240815312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 n + 2 * ((n : ℤ) * A266437 n)

end

end A270006.P13349930423240815312

namespace A270006

/-- `A266220(n)+2*n*A266437(n)` -/
def P13349930423240815312.Spec : Prop :=
  ∀ n, P13349930423240815312.a n = A270006 n

end A270006

/-! ## A270006.P17001153596204705279

`A266724(n+1)²-A266719(n+1)`
-/

namespace A270006.P17001153596204705279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 (n + 1) ^ 2 - A266719 (n + 1)

end

end A270006.P17001153596204705279

namespace A270006

/-- `A266724(n+1)²-A266719(n+1)` -/
def P17001153596204705279.Spec : Prop :=
  ∀ n, P17001153596204705279.a n = A270006 n

end A270006

/-! ## A270006.P364258633097457929

`A266220(n)²*A266220(A266222(n))`
-/

namespace A270006.P364258633097457929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 n ^ 2 * A266220 (A266222 n).toNat

end

end A270006.P364258633097457929

namespace A270006

/-- `A266220(n)²*A266220(A266222(n))` -/
def P364258633097457929.Spec : Prop :=
  ∀ n, P364258633097457929.a n = A270006 n

end A270006

/-! ## A270006.P13799777335441364087

`A270008(n+1)-(A270009(n)+A270008(n))`
-/

namespace A270006.P13799777335441364087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270008 (n + 1) - (A270009 n + A270008 n)

end

end A270006.P13799777335441364087

namespace A270006

/-- `A270008(n+1)-(A270009(n)+A270008(n))` -/
def P13799777335441364087.Spec : Prop :=
  ∀ n, P13799777335441364087.a n = A270006 n

end A270006

/-! ## A270006.P10661664861236653060

`xor(A157928(n), A271060(n))`
-/

namespace A270006.P10661664861236653060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A157928 n) (A271060 n)

end

end A270006.P10661664861236653060

namespace A270006

/-- `xor(A157928(n), A271060(n))` -/
def P10661664861236653060.Spec : Prop :=
  ∀ n, P10661664861236653060.a n = A270006 n

end A270006

/-! ## A270006.P11556009149456880703

`A270010(n)+A159075(n)`
-/

namespace A270006.P11556009149456880703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270010 n + A159075 n

end

end A270006.P11556009149456880703

namespace A270006

/-- `A270010(n)+A159075(n)` -/
def P11556009149456880703.Spec : Prop :=
  ∀ n, P11556009149456880703.a n = A270006 n

end A270006

/-! ## A270006.P258830074866861059

`A270010(n)-A063524(n)`
-/

namespace A270006.P258830074866861059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270010 n - A063524 n

end

end A270006.P258830074866861059

namespace A270006

/-- `A270010(n)-A063524(n)` -/
def P258830074866861059.Spec : Prop :=
  ∀ n, P258830074866861059.a n = A270006 n

end A270006

/-! ## A270006.P1058693104289402342

`and(A270010(n), A280321(n))`
-/

namespace A270006.P1058693104289402342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A270010 n) (A280321 n)

end

end A270006.P1058693104289402342

namespace A270006

/-- `and(A270010(n), A280321(n))` -/
def P1058693104289402342.Spec : Prop :=
  ∀ n, P1058693104289402342.a n = A270006 n

end A270006

/-!
# A270007: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 5", based on the 5-celled von Neumann neighborhood.

The programs for A270007, there is no canonical definition to state claims against.
-/

/-! ## A270007.P9431229993985199638

`∑[2^n]²-char[1]`
-/

namespace A270007.P9431229993985199638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270007.P9431229993985199638

/-! ## A270007.P14954725616558070168

`xor(∑[2^n]², char[1])`
-/

namespace A270007.P14954725616558070168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (if ∃ j, f2 j = n then 1 else 0)

end

end A270007.P14954725616558070168

/-! ## A270007.P9882865484688642366

`abs(∑[2^n]²-round(acot(n)))`
-/

namespace A270007.P9882865484688642366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ))|

end

end A270007.P9882865484688642366

/-! ## A270007.P16868600134046123285

`∑[2^n]²*a(floor(acot(n)))` with `a(0)=1, a(1)=8`
-/

namespace A270007.P16868600134046123285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A270007.P16868600134046123285

/-! ## A270007.P1437697281243083734

`record[A316742(n)²-char[2]]`
-/

namespace A270007.P1437697281243083734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 n ^ 2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270007.P1437697281243083734

/-!
# A270008: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 5", based on the 5-celled von Neumann neighborhood.

The programs for A270008, the canonical program `A270008.P1066427748483437901` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270008 has offset 0).

The definition of A270008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270008.P1066427748483437901

`∑[((2*n+1)²-a(n-1))*and(1, n)]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270008

/-- `∑[((2*n+1)²-a(n-1))*and(1, n)]` -/
def P1066427748483437901.Spec : Prop :=
  ∀ n, P1066427748483437901.a n = A270008 n

theorem P1066427748483437901.correct : P1066427748483437901.Spec := by
  intro n
  simp only [A270008]

end A270008

/-! ## A270008.P5993214245376997132

`ogf((1+8x-3x^2+25x^3+3x^4-2x^5-x^6+x^7)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A270008.P5993214245376997132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -3, 25, 3, -2, -1, 1] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A270008.P5993214245376997132

namespace A270008

/-- `ogf((1+8x-3x^2+25x^3+3x^4-2x^5-x^6+x^7)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P5993214245376997132.Spec : Prop :=
  ∀ n, P5993214245376997132.a n = A270008 n

end A270008

/-! ## A270008.P10705668986197196084

`∑[A270006(n)]`
-/

namespace A270008.P10705668986197196084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270008.P10705668986197196084

namespace A270008

/-- `∑[A270006(n)]` -/
def P10705668986197196084.Spec : Prop :=
  ∀ n, P10705668986197196084.a n = A270008 n

end A270008

/-! ## A270008.P2599432646345694522

`∑[A181900(A266220(n))]`
-/

namespace A270008.P2599432646345694522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181900 (A266220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270008.P2599432646345694522

namespace A270008

/-- `∑[A181900(A266220(n))]` -/
def P2599432646345694522.Spec : Prop :=
  ∀ n, P2599432646345694522.a n = A270008 n

end A270008

/-! ## A270008.P17398559043061535669

`A270012(n)+A057428(n)`
-/

namespace A270008.P17398559043061535669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270012 n + A057428 n

end

end A270008.P17398559043061535669

namespace A270008

/-- `A270012(n)+A057428(n)` -/
def P17398559043061535669.Spec : Prop :=
  ∀ n, P17398559043061535669.a n = A270008 n

end A270008

/-! ## A270008.P6444864463056053815

`A270012(n)-A057427(n)`
-/

namespace A270008.P6444864463056053815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270012 n - A057427 n

end

end A270008.P6444864463056053815

namespace A270008

/-- `A270012(n)-A057427(n)` -/
def P6444864463056053815.Spec : Prop :=
  ∀ n, P6444864463056053815.a n = A270008 n

end A270008

/-! ## A270008.P11959120198769432439

`A272418(1-A040001(n)+n)`
-/

namespace A270008.P11959120198769432439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272418 (1 - A040001 n + (n : ℤ)).toNat

end

end A270008.P11959120198769432439

namespace A270008

/-- `A272418(1-A040001(n)+n)` -/
def P11959120198769432439.Spec : Prop :=
  ∀ n, P11959120198769432439.a n = A270008 n

end A270008

/-! ## A270008.P7398645368217048494

`A272418(1-(A040001(n)-n))`
-/

namespace A270008.P7398645368217048494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272418 (1 - (A040001 n - (n : ℤ))).toNat

end

end A270008.P7398645368217048494

namespace A270008

/-- `A272418(1-(A040001(n)-n))` -/
def P7398645368217048494.Spec : Prop :=
  ∀ n, P7398645368217048494.a n = A270008 n

end A270008

/-! ## A270008.P11585412273432669962

`A272418(A022998(n)%(n+1))`
-/

namespace A270008.P11585412273432669962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272418 (Int.tmod (A022998 n) (n + 1 : ℤ)).toNat

end

end A270008.P11585412273432669962

namespace A270008

/-- `A272418(A022998(n)%(n+1))` -/
def P11585412273432669962.Spec : Prop :=
  ∀ n, P11585412273432669962.a n = A270008 n

end A270008

/-! ## A270008.P10475040379793086230

`A270012(n)-A001221(A000961(n+1))`
-/

namespace A270008.P10475040379793086230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270012 n - A001221 (A000961 (n + 1)).toNat

end

end A270008.P10475040379793086230

namespace A270008

/-- `A270012(n)-A001221(A000961(n+1))` -/
def P10475040379793086230.Spec : Prop :=
  ∀ n, P10475040379793086230.a n = A270008 n

end A270008

/-! ## A270008.P10572364235845706346

`A270012(n)-A001222(A008578(n+1))`
-/

namespace A270008.P10572364235845706346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270012 n - A001222 (A008578 (n + 1)).toNat

end

end A270008.P10572364235845706346

namespace A270008

/-- `A270012(n)-A001222(A008578(n+1))` -/
def P10572364235845706346.Spec : Prop :=
  ∀ n, P10572364235845706346.a n = A270008 n

end A270008

/-! ## A270008.P2877275118182920657

`A271062(n)-char[2*(n+1)]`
-/

namespace A270008.P2877275118182920657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271062 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270008.P2877275118182920657

namespace A270008

/-- `A271062(n)-char[2*(n+1)]` -/
def P2877275118182920657.Spec : Prop :=
  ∀ n, P2877275118182920657.a n = A270008 n

end A270008

/-! ## A270008.P10814736108668909076

`A271062(A004525(A004273(n)))`
-/

namespace A270008.P10814736108668909076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271062 (A004525 (A004273 n).toNat).toNat

end

end A270008.P10814736108668909076

namespace A270008

/-- `A271062(A004525(A004273(n)))` -/
def P10814736108668909076.Spec : Prop :=
  ∀ n, P10814736108668909076.a n = A270008 n

end A270008

/-! ## A270008.P2724844803863956230

`A271062(A004273(A110654(n)))`
-/

namespace A270008.P2724844803863956230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271062 (A004273 (A110654 n).toNat).toNat

end

end A270008.P2724844803863956230

namespace A270008

/-- `A271062(A004273(A110654(n)))` -/
def P2724844803863956230.Spec : Prop :=
  ∀ n, P2724844803863956230.a n = A270008 n

end A270008

/-! ## A270008.P11686647840720342840

`∑[A270010(n)-char[1]]`
-/

namespace A270008.P11686647840720342840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270010 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270008.P11686647840720342840

namespace A270008

/-- `∑[A270010(n)-char[1]]` -/
def P11686647840720342840.Spec : Prop :=
  ∀ n, P11686647840720342840.a n = A270008 n

end A270008

/-! ## A270008.P12534002541640677499

`∑[lcm(A073097(n), A273743(n))]`
-/

namespace A270008.P12534002541640677499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073097 n) (A273743 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270008.P12534002541640677499

namespace A270008

/-- `∑[lcm(A073097(n), A273743(n))]` -/
def P12534002541640677499.Spec : Prop :=
  ∀ n, (P12534002541640677499.a n : ℤ) = A270008 n

end A270008

/-! ## A270008.P7260783875864936689

`∑[and(A270010(n), A273743(n))]`
-/

namespace A270008.P7260783875864936689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A270010 n) (A273743 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270008.P7260783875864936689

namespace A270008

/-- `∑[and(A270010(n), A273743(n))]` -/
def P7260783875864936689.Spec : Prop :=
  ∀ n, P7260783875864936689.a n = A270008 n

end A270008

/-!
# A270009: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 5", based on the 5-celled von Neumann neighborhood.

The programs for A270009, the canonical program `A270009.P13258679155258503179` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270009 has offset 0).

The definition of A270009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270009.P18258664626555495383

`ogf((7-x+27x^2+2x^3-3x^4-x^5+x^6)/(1+x-2x^2-2x^3+x^4+x^5))`
-/

namespace A270009.P18258664626555495383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -1, 27, 2, -3, -1, 1] [1, 1, -2, -2, 1, 1] n

end

end A270009.P18258664626555495383

namespace A270009

/-- `ogf((7-x+27x^2+2x^3-3x^4-x^5+x^6)/(1+x-2x^2-2x^3+x^4+x^5))` -/
def P18258664626555495383.Spec : Prop :=
  ∀ n, P18258664626555495383.a n = A270009 n

end A270009

/-! ## A270009.P13258679155258503179

`Δ[((2*n+1)²-a(n-1))*and(1, n)]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270009

/-- `Δ[((2*n+1)²-a(n-1))*and(1, n)]` -/
def P13258679155258503179.Spec : Prop :=
  ∀ n, P13258679155258503179.a n = A270009 n

theorem P13258679155258503179.correct : P13258679155258503179.Spec := by
  intro n
  simp only [A270009]

end A270009

/-! ## A270009.P10235232690784947194

`Δ[A081346(A266220(n))]`
-/

namespace A270009.P10235232690784947194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081346 (A266220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270009.P10235232690784947194

namespace A270009

/-- `Δ[A081346(A266220(n))]` -/
def P10235232690784947194.Spec : Prop :=
  ∀ n, P10235232690784947194.a n = A270009 n

end A270009

/-! ## A270009.P12476395129040124927

`Δ[A270006(n)]`
-/

namespace A270009.P12476395129040124927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270009.P12476395129040124927

namespace A270009

/-- `Δ[A270006(n)]` -/
def P12476395129040124927.Spec : Prop :=
  ∀ n, P12476395129040124927.a n = A270009 n

end A270009

/-! ## A270009.P14460040671908966635

`A270006(n+1)-A270006(n)`
-/

namespace A270009.P14460040671908966635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270006 (n + 1) - A270006 n

end

end A270009.P14460040671908966635

namespace A270009

/-- `A270006(n+1)-A270006(n)` -/
def P14460040671908966635.Spec : Prop :=
  ∀ n, P14460040671908966635.a n = A270009 n

end A270009

/-! ## A270009.P478464155215582710

`A270013(n)-A154955(n+1)`
-/

namespace A270009.P478464155215582710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270013 n - A154955 (n + 1)

end

end A270009.P478464155215582710

namespace A270009

/-- `A270013(n)-A154955(n+1)` -/
def P478464155215582710.Spec : Prop :=
  ∀ n, P478464155215582710.a n = A270009 n

end A270009

/-! ## A270009.P5834053310280645052

`Δ[lcm(A073097(n), A273743(n))]`
-/

namespace A270009.P5834053310280645052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073097 n) (A273743 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A270009.P5834053310280645052

namespace A270009

/-- `Δ[lcm(A073097(n), A273743(n))]` -/
def P5834053310280645052.Spec : Prop :=
  ∀ n, P5834053310280645052.a n = A270009 n

end A270009

/-! ## A270009.P3323845441919168131

`Δ[and(A270010(n), A273743(n))]`
-/

namespace A270009.P3323845441919168131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A270010 n) (A273743 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270009.P3323845441919168131

namespace A270009

/-- `Δ[and(A270010(n), A273743(n))]` -/
def P3323845441919168131.Spec : Prop :=
  ∀ n, P3323845441919168131.a n = A270009 n

end A270009

/-! ## A270009.P12022644115955704678

`A270013(n)-A008683(A269695(n))`
-/

namespace A270009.P12022644115955704678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270013 n - A008683 (A269695 n).toNat

end

end A270009.P12022644115955704678

namespace A270009

/-- `A270013(n)-A008683(A269695(n))` -/
def P12022644115955704678.Spec : Prop :=
  ∀ n, P12022644115955704678.a n = A270009 n

end A270009

/-! ## A270009.P13563990533815380166

`A270013(n)-A008683(A270022(n))`
-/

namespace A270009.P13563990533815380166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270013 n - A008683 (A270022 n).toNat

end

end A270009.P13563990533815380166

namespace A270009

/-- `A270013(n)-A008683(A270022(n))` -/
def P13563990533815380166.Spec : Prop :=
  ∀ n, P13563990533815380166.a n = A270009 n

end A270009

/-! ## A270009.P9837838588057359883

`A270013(n)+A008683(2*A269695(n))`
-/

namespace A270009.P9837838588057359883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270013 n + A008683 (2 * A269695 n).toNat

end

end A270009.P9837838588057359883

namespace A270009

/-- `A270013(n)+A008683(2*A269695(n))` -/
def P9837838588057359883.Spec : Prop :=
  ∀ n, P9837838588057359883.a n = A270009 n

end A270009

/-! ## A270009.P10485767966623305618

`A270013(n)+A008683(2*A270022(n))`
-/

namespace A270009.P10485767966623305618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270013 n + A008683 (2 * A270022 n).toNat

end

end A270009.P10485767966623305618

namespace A270009

/-- `A270013(n)+A008683(2*A270022(n))` -/
def P10485767966623305618.Spec : Prop :=
  ∀ n, P10485767966623305618.a n = A270009 n

end A270009

/-!
# A270010: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 7", based on the 5-celled von Neumann neighborhood.

The programs for A270010, the canonical program `A270010.P6842430652727830196` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270010 has offset 0).

The definition of A270010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270010.P6842430652727830196

`C(lcm(2, n)+1, 2*n)²`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270010

/-- `C(lcm(2, n)+1, 2*n)²` -/
def P6842430652727830196.Spec : Prop :=
  ∀ n, (P6842430652727830196.a n : ℤ) = A270010 n

theorem P6842430652727830196.correct : P6842430652727830196.Spec := by
  intro n
  simp only [A270010]

end A270010

/-! ## A270010.P2016440198512802824

`(and(1, n)^n*Δ[n²])²`
-/

namespace A270010.P2016440198512802824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2

end

end A270010.P2016440198512802824

namespace A270010

/-- `(and(1, n)^n*Δ[n²])²` -/
def P2016440198512802824.Spec : Prop :=
  ∀ n, P2016440198512802824.a n = A270010 n

end A270010

/-! ## A270010.P7057941155889066152

`lcm(and(1, n)^n, Δ[n²])²`
-/

namespace A270010.P7057941155889066152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.land 1 n ^ n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A270010.P7057941155889066152

namespace A270010

/-- `lcm(and(1, n)^n, Δ[n²])²` -/
def P7057941155889066152.Spec : Prop :=
  ∀ n, (P7057941155889066152.a n : ℤ) = A270010 n

end A270010

/-! ## A270010.P1826586324198448789

`(Δ[n²]*∏{d}[n, #%2])²`
-/

namespace A270010.P1826586324198448789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((∏ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℤ)) ^ 2

end

end A270010.P1826586324198448789

namespace A270010

/-- `(Δ[n²]*∏{d}[n, #%2])²` -/
def P1826586324198448789.Spec : Prop :=
  ∀ n, P1826586324198448789.a n = A270010 n

end A270010

/-! ## A270010.P16947002476270303678

`(floor(cos(2)^n)*Δ[n²])²`
-/

namespace A270010.P16947002476270303678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊Real.cos (2 : ℝ) ^ n⌋ * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2

end

end A270010.P16947002476270303678

namespace A270010

/-- `(floor(cos(2)^n)*Δ[n²])²` -/
def P16947002476270303678.Spec : Prop :=
  ∀ n, P16947002476270303678.a n = A270010 n

end A270010

/-! ## A270010.P13169520007709000651

`(n-xor(n, (-(n%2))^n))²`
-/

namespace A270010.P13169520007709000651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - Int.xor (n : ℤ) ((-((n % 2 : ℕ) : ℤ)) ^ n)) ^ 2

end

end A270010.P13169520007709000651

namespace A270010

/-- `(n-xor(n, (-(n%2))^n))²` -/
def P13169520007709000651.Spec : Prop :=
  ∀ n, P13169520007709000651.a n = A270010 n

end A270010

/-! ## A270010.P1504224778689691504

`(4*and(1, n))^log2(2*n+1)`
-/

namespace A270010.P1504224778689691504
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 * Nat.land 1 n : ℝ) ^ (Real.logb 2 (2 * n + 1 : ℝ))

end

end A270010.P1504224778689691504

namespace A270010

/-- `(4*and(1, n))^log2(2*n+1)` -/
def P1504224778689691504.Spec : Prop :=
  ∀ n, P1504224778689691504.a n = (A270010 n : ℝ)

end A270010

/-! ## A270010.P9108930664256776521

`((2*n+1)*and(1, n)^n)²`
-/

namespace A270010.P9108930664256776521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.land 1 n ^ n) ^ 2

end

end A270010.P9108930664256776521

namespace A270010

/-- `((2*n+1)*and(1, n)^n)²` -/
def P9108930664256776521.Spec : Prop :=
  ∀ n, (P9108930664256776521.a n : ℤ) = A270010 n

end A270010

/-! ## A270010.P9786614791049133146

`((2*n+1)*and(1, ∏{d}[n, #]))²`
-/

namespace A270010.P9786614791049133146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.land 1 (∏ d ∈ Nat.divisors (f1 n), d)) ^ 2

end

end A270010.P9786614791049133146

namespace A270010

/-- `((2*n+1)*and(1, ∏{d}[n, #]))²` -/
def P9786614791049133146.Spec : Prop :=
  ∀ n, (P9786614791049133146.a n : ℤ) = A270010 n

end A270010

/-! ## A270010.P9653475171155343629

`((2*n+1)*and(1, ∏{p}[n, #]))²`
-/

namespace A270010.P9653475171155343629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), p)) ^ 2

end

end A270010.P9653475171155343629

namespace A270010

/-- `((2*n+1)*and(1, ∏{p}[n, #]))²` -/
def P9653475171155343629.Spec : Prop :=
  ∀ n, (P9653475171155343629.a n : ℤ) = A270010 n

end A270010

/-! ## A270010.P1284926404473625898

`C(Δ[n²], a(n-1)+1)²` with `a(0)=1`
-/

namespace A270010.P1284926404473625898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat (a (n - 1) + 1) ^ 2

end

end A270010.P1284926404473625898

namespace A270010

/-- `C(Δ[n²], a(n-1)+1)²` -/
def P1284926404473625898.Spec : Prop :=
  ∀ n, (P1284926404473625898.a n : ℤ) = A270010 n

end A270010

/-! ## A270010.P9319504279882135217

`(C(n, a(n-1))*Δ[n²])²` with `a(0)=1`
-/

namespace A270010.P9319504279882135217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((Nat.choose n (a (n - 1)).toNat : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2

end

end A270010.P9319504279882135217

namespace A270010

/-- `(C(n, a(n-1))*Δ[n²])²` -/
def P9319504279882135217.Spec : Prop :=
  ∀ n, P9319504279882135217.a n = A270010 n

end A270010

/-! ## A270010.P12105432316412298775

`lcm(Δ[n²]², C(n, a(n-1)))` with `a(0)=1`
-/

namespace A270010.P12105432316412298775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) (Nat.choose n (a (n - 1)) : ℤ)

end

end A270010.P12105432316412298775

namespace A270010

/-- `lcm(Δ[n²]², C(n, a(n-1)))` -/
def P12105432316412298775.Spec : Prop :=
  ∀ n, (P12105432316412298775.a n : ℤ) = A270010 n

end A270010

/-! ## A270010.P16762936377149988972

`floor(((2*n+1)^-(-1)^n)²)`
-/

namespace A270010.P16762936377149988972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1 : ℚ) ^ (-((-1) ^ n) : ℤ)) ^ 2⌋

end

end A270010.P16762936377149988972

namespace A270010

/-- `floor(((2*n+1)^-(-1)^n)²)` -/
def P16762936377149988972.Spec : Prop :=
  ∀ n, P16762936377149988972.a n = A270010 n

end A270010

/-! ## A270010.P9749371992898892318

`((2*n+1)*C(gcd(n, ∑[n]), n))²`
-/

namespace A270010.P9749371992898892318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.choose (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) n) ^ 2

end

end A270010.P9749371992898892318

namespace A270010

/-- `((2*n+1)*C(gcd(n, ∑[n]), n))²` -/
def P9749371992898892318.Spec : Prop :=
  ∀ n, (P9749371992898892318.a n : ℤ) = A270010 n

end A270010

/-! ## A270010.P5292592128360681715

`C((2*n+1)*and(1, n), 2*n)²`
-/

namespace A270010.P5292592128360681715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 * n + 1) * Nat.land 1 n) (2 * n) ^ 2

end

end A270010.P5292592128360681715

namespace A270010

/-- `C((2*n+1)*and(1, n), 2*n)²` -/
def P5292592128360681715.Spec : Prop :=
  ∀ n, (P5292592128360681715.a n : ℤ) = A270010 n

end A270010

/-! ## A270010.P11877038712975270856

`((2*n+1)*C(n, a(n-1)))²` with `a(0)=1`
-/

namespace A270010.P11877038712975270856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + 1) * Nat.choose n (a (n - 1))) ^ 2

end

end A270010.P11877038712975270856

namespace A270010

/-- `((2*n+1)*C(n, a(n-1)))²` -/
def P11877038712975270856.Spec : Prop :=
  ∀ n, (P11877038712975270856.a n : ℤ) = A270010 n

end A270010

/-! ## A270010.P1911157355507024320

`∑{p}[n+3, C(2*n+1, n*#)²]`
-/

namespace A270010.P1911157355507024320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (2 * n + 1) (n * p) ^ 2

end

end A270010.P1911157355507024320

namespace A270010

/-- `∑{p}[n+3, C(2*n+1, n*#)²]` -/
def P1911157355507024320.Spec : Prop :=
  ∀ n, (P1911157355507024320.a n : ℤ) = A270010 n

end A270010

/-! ## A270010.P17335348576800288425

`(Δ[floor((n+1)/a(n-1))]+n)²` with `a(0)=2`
-/

namespace A270010.P17335348576800288425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊(n + 1 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ)) ^ 2

end

end A270010.P17335348576800288425

namespace A270010

/-- `(Δ[floor((n+1)/a(n-1))]+n)²` -/
def P17335348576800288425.Spec : Prop :=
  ∀ n, P17335348576800288425.a n = A270010 n

end A270010

/-! ## A270010.P10915971776269571596

`C(2*n+1, 2*n*gcd(2, n²))²`
-/

namespace A270010.P10915971776269571596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (2 * n * Nat.gcd 2 (n ^ 2)) ^ 2

end

end A270010.P10915971776269571596

namespace A270010

/-- `C(2*n+1, 2*n*gcd(2, n²))²` -/
def P10915971776269571596.Spec : Prop :=
  ∀ n, (P10915971776269571596.a n : ℤ) = A270010 n

end A270010

/-!
# A270012: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 7", based on the 5-celled von Neumann neighborhood.

The programs for A270012, the canonical program `A270012.P14132889087999497209` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270012 has offset 0).

The definition of A270012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270012.P14132889087999497209

`∑[C(lcm(2, n)+1, 2*n)²]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270012

/-- `∑[C(lcm(2, n)+1, 2*n)²]` -/
def P14132889087999497209.Spec : Prop :=
  ∀ n, (P14132889087999497209.a n : ℤ) = A270012 n

theorem P14132889087999497209.correct : P14132889087999497209.Spec := by
  intro n
  simp only [A270012]

end A270012

/-! ## A270012.P2676883529538527060

`∑[(and(1, n)*Δ[n²])²]+1`
-/

namespace A270012.P2676883529538527060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A270012.P2676883529538527060

namespace A270012

/-- `∑[(and(1, n)*Δ[n²])²]+1` -/
def P2676883529538527060.Spec : Prop :=
  ∀ n, P2676883529538527060.a n = A270012 n

end A270012

/-! ## A270012.P76735772147611797

`∑[((n%2)^n*Δ[n²])²]`
-/

namespace A270012.P76735772147611797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n % 2) ^ n : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270012.P76735772147611797

namespace A270012

/-- `∑[((n%2)^n*Δ[n²])²]` -/
def P76735772147611797.Spec : Prop :=
  ∀ n, P76735772147611797.a n = A270012 n

end A270012

/-! ## A270012.P13885327688933509010

`∑[(and(1, n)^n*Δ[n²])²]`
-/

namespace A270012.P13885327688933509010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n ^ n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270012.P13885327688933509010

namespace A270012

/-- `∑[(and(1, n)^n*Δ[n²])²]` -/
def P13885327688933509010.Spec : Prop :=
  ∀ n, P13885327688933509010.a n = A270012 n

end A270012

/-! ## A270012.P9022301071312994554

`∑[((2*n+1)*and(1, n))²]+1`
-/

namespace A270012.P9022301071312994554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.land 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A270012.P9022301071312994554

namespace A270012

/-- `∑[((2*n+1)*and(1, n))²]+1` -/
def P9022301071312994554.Spec : Prop :=
  ∀ n, (P9022301071312994554.a n : ℤ) = A270012 n

end A270012

/-! ## A270012.P1579784598346240388

`∑[(C(n, a(n-1))*Δ[n²])²]` with `a(0)=1`
-/

namespace A270012.P1579784598346240388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((Nat.choose n (f1 (n - 1)).toNat : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270012.P1579784598346240388

namespace A270012

/-- `∑[(C(n, a(n-1))*Δ[n²])²]` -/
def P1579784598346240388.Spec : Prop :=
  ∀ n, P1579784598346240388.a n = A270012 n

end A270012

/-! ## A270012.P811118278978225553

`∑[floor((2*n+1)²^(-1)^(n+1))]`
-/

namespace A270012.P811118278978225553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1) ^ 2 : ℚ) ^ ((-1) ^ (n + 1) : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270012.P811118278978225553

namespace A270012

/-- `∑[floor((2*n+1)²^(-1)^(n+1))]` -/
def P811118278978225553.Spec : Prop :=
  ∀ n, P811118278978225553.a n = A270012 n

end A270012

/-! ## A270012.P5694989857074274197

`a(n-1)+((2*n+1)*and(1, n))²` with `a(0)=1`
-/

namespace A270012.P5694989857074274197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((2 * n + 1) * Nat.land 1 n) ^ 2

end

end A270012.P5694989857074274197

namespace A270012

/-- `a(n-1)+((2*n+1)*and(1, n))²` -/
def P5694989857074274197.Spec : Prop :=
  ∀ n, (P5694989857074274197.a n : ℤ) = A270012 n

end A270012

/-! ## A270012.P7793549136460217262

`ogf((1+9x-3x^2+22x^3+3x^4+x^5-x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A270012.P7793549136460217262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, -3, 22, 3, 1, -1] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A270012.P7793549136460217262

namespace A270012

/-- `ogf((1+9x-3x^2+22x^3+3x^4+x^5-x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P7793549136460217262.Spec : Prop :=
  ∀ n, P7793549136460217262.a n = A270012 n

end A270012

/-! ## A270012.P16958224974912728217

`∑[A322015(2*n)²]+1`
-/

namespace A270012.P16958224974912728217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A270012.P16958224974912728217

namespace A270012

/-- `∑[A322015(2*n)²]+1` -/
def P16958224974912728217.Spec : Prop :=
  ∀ n, P16958224974912728217.a n = A270012 n

end A270012

/-! ## A270012.P18193224037846997371

`∑[A000035(n)*A016754(n)]+1`
-/

namespace A270012.P18193224037846997371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A270012.P18193224037846997371

namespace A270012

/-- `∑[A000035(n)*A016754(n)]+1` -/
def P18193224037846997371.Spec : Prop :=
  ∀ n, P18193224037846997371.a n = A270012 n

end A270012

/-! ## A270012.P1163079187546845884

`A269908(A168273(n+1)/2)+A168273(n+1)`
-/

namespace A270012.P1163079187546845884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269908 (SequenceMachineLib.roundAway ((A168273 (n + 1) : ℚ) / 2)).toNat + A168273 (n + 1)

end

end A270012.P1163079187546845884

namespace A270012

/-- `A269908(A168273(n+1)/2)+A168273(n+1)` -/
def P1163079187546845884.Spec : Prop :=
  ∀ n, P1163079187546845884.a n = A270012 n

end A270012

/-! ## A270012.P5311593306736792699

`A270008(n)+A057427(n)`
-/

namespace A270012.P5311593306736792699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270008 n + A057427 n

end

end A270012.P5311593306736792699

namespace A270012

/-- `A270008(n)+A057427(n)` -/
def P5311593306736792699.Spec : Prop :=
  ∀ n, P5311593306736792699.a n = A270012 n

end A270012

/-! ## A270012.P13788149468862636574

`A270008(n)-A057428(n)`
-/

namespace A270012.P13788149468862636574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270008 n - A057428 n

end

end A270012.P13788149468862636574

namespace A270012

/-- `A270008(n)-A057428(n)` -/
def P13788149468862636574.Spec : Prop :=
  ∀ n, P13788149468862636574.a n = A270012 n

end A270012

/-! ## A270012.P8858058239914563408

`A271062(A052928(n+1))`
-/

namespace A270012.P8858058239914563408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271062 (A052928 (n + 1)).toNat

end

end A270012.P8858058239914563408

namespace A270012

/-- `A271062(A052928(n+1))` -/
def P8858058239914563408.Spec : Prop :=
  ∀ n, P8858058239914563408.a n = A270012 n

end A270012

/-! ## A270012.P1389454724490403357

`A271062(2*A110654(n))`
-/

namespace A270012.P1389454724490403357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271062 (2 * A110654 n).toNat

end

end A270012.P1389454724490403357

namespace A270012

/-- `A271062(2*A110654(n))` -/
def P1389454724490403357.Spec : Prop :=
  ∀ n, P1389454724490403357.a n = A270012 n

end A270012

/-! ## A270012.P3005399759323398178

`A271062(A000035(n)+n)`
-/

namespace A270012.P3005399759323398178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271062 (A000035 n + (n : ℤ)).toNat

end

end A270012.P3005399759323398178

namespace A270012

/-- `A271062(A000035(n)+n)` -/
def P3005399759323398178.Spec : Prop :=
  ∀ n, P3005399759323398178.a n = A270012 n

end A270012

/-! ## A270012.P9610103235380127897

`A271062(A168273(n+1)/2)`
-/

namespace A270012.P9610103235380127897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271062 (SequenceMachineLib.roundAway ((A168273 (n + 1) : ℚ) / 2)).toNat

end

end A270012.P9610103235380127897

namespace A270012

/-- `A271062(A168273(n+1)/2)` -/
def P9610103235380127897.Spec : Prop :=
  ∀ n, P9610103235380127897.a n = A270012 n

end A270012

/-! ## A270012.P17155092561019258987

`A271062(2*n-A052928(n))`
-/

namespace A270012.P17155092561019258987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271062 ((2 * n : ℤ) - A052928 n).toNat

end

end A270012.P17155092561019258987

namespace A270012

/-- `A271062(2*n-A052928(n))` -/
def P17155092561019258987.Spec : Prop :=
  ∀ n, P17155092561019258987.a n = A270012 n

end A270012

/-! ## A270012.P13342260890402740012

`A271062(n-(A052928(n)-n))`
-/

namespace A270012.P13342260890402740012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271062 ((n : ℤ) - (A052928 n - (n : ℤ))).toNat

end

end A270012.P13342260890402740012

namespace A270012

/-- `A271062(n-(A052928(n)-n))` -/
def P13342260890402740012.Spec : Prop :=
  ∀ n, P13342260890402740012.a n = A270012 n

end A270012

/-!
# A270013: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 7", based on the 5-celled von Neumann neighborhood.

The programs for A270013, the canonical program `A270013.P12289602500562428671` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270013 has offset 0).

The definition of A270013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270013.P12289602500562428671

`Δ[C(lcm(2, n)+1, 2*n)²]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270013

/-- `Δ[C(lcm(2, n)+1, 2*n)²]` -/
def P12289602500562428671.Spec : Prop :=
  ∀ n, P12289602500562428671.a n = A270013 n

theorem P12289602500562428671.correct : P12289602500562428671.Spec := by
  intro n
  simp only [A270013]

end A270013

/-! ## A270013.P6468260911881874870

`Δ[((n%2)^n*Δ[n²])²]`
-/

namespace A270013.P6468260911881874870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n % 2) ^ n : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270013.P6468260911881874870

namespace A270013

/-- `Δ[((n%2)^n*Δ[n²])²]` -/
def P6468260911881874870.Spec : Prop :=
  ∀ n, P6468260911881874870.a n = A270013 n

end A270013

/-! ## A270013.P5946775448961320676

`Δ[((2*n+1)*and(1, n)^n)²]`
-/

namespace A270013.P5946775448961320676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.land 1 n ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A270013.P5946775448961320676

namespace A270013

/-- `Δ[((2*n+1)*and(1, n)^n)²]` -/
def P5946775448961320676.Spec : Prop :=
  ∀ n, P5946775448961320676.a n = A270013 n

end A270013

/-! ## A270013.P18032875653134618360

`Δ[lcm((2*n+1)², floor(cos(2)^n))]`
-/

namespace A270013.P18032875653134618360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n + 1) ^ 2 : ℤ) ⌊Real.cos (2 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A270013.P18032875653134618360

namespace A270013

/-- `Δ[lcm((2*n+1)², floor(cos(2)^n))]` -/
def P18032875653134618360.Spec : Prop :=
  ∀ n, P18032875653134618360.a n = A270013 n

end A270013

/-! ## A270013.P63011855357647383

`Δ[((2*n+1)*floor(cos(2)^n)²)²]`
-/

namespace A270013.P63011855357647383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * ⌊Real.cos (2 : ℝ) ^ n⌋ ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270013.P63011855357647383

namespace A270013

/-- `Δ[((2*n+1)*floor(cos(2)^n)²)²]` -/
def P63011855357647383.Spec : Prop :=
  ∀ n, P63011855357647383.a n = A270013 n

end A270013

/-! ## A270013.P7294458368919516014

`ogf((8-x+24x^2+2x^3-x^5)/(1+x-2x^2-2x^3+x^4+x^5))`
-/

namespace A270013.P7294458368919516014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -1, 24, 2, 0, -1] [1, 1, -2, -2, 1, 1] n

end

end A270013.P7294458368919516014

namespace A270013

/-- `ogf((8-x+24x^2+2x^3-x^5)/(1+x-2x^2-2x^3+x^4+x^5))` -/
def P7294458368919516014.Spec : Prop :=
  ∀ n, P7294458368919516014.a n = A270013 n

end A270013

/-! ## A270013.P2692460777793489915

`Δ[C(2*n+1, a(n-1)+1)²]` with `a(0)=1`
-/

namespace A270013.P2692460777793489915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (2 * n + 1) (f1 (n - 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A270013.P2692460777793489915

namespace A270013

/-- `Δ[C(2*n+1, a(n-1)+1)²]` -/
def P2692460777793489915.Spec : Prop :=
  ∀ n, P2692460777793489915.a n = A270013 n

end A270013

/-! ## A270013.P14374930529655625331

`Δ[C(2*n+1, 2*n*gcd(2, n))²]`
-/

namespace A270013.P14374930529655625331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (2 * (n * Nat.gcd 2 n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A270013.P14374930529655625331

namespace A270013

/-- `Δ[C(2*n+1, 2*n*gcd(2, n))²]` -/
def P14374930529655625331.Spec : Prop :=
  ∀ n, P14374930529655625331.a n = A270013 n

end A270013

/-! ## A270013.P1374753118544615295

`Δ[C((2*n+1)*and(1, n), 2*n)²]`
-/

namespace A270013.P1374753118544615295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 * n + 1) * Nat.land 1 n) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A270013.P1374753118544615295

namespace A270013

/-- `Δ[C((2*n+1)*and(1, n), 2*n)²]` -/
def P1374753118544615295.Spec : Prop :=
  ∀ n, P1374753118544615295.a n = A270013 n

end A270013

/-! ## A270013.P3292138816485413522

`Δ[((2*n+1)²-a(n-1))*and(1, n)]` with `a(0)=1, a(1)=9`
-/

namespace A270013.P3292138816485413522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  (((2 * n + 1) ^ 2 : ℤ) - f1 (n - 1)) * (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270013.P3292138816485413522

namespace A270013

/-- `Δ[((2*n+1)²-a(n-1))*and(1, n)]` -/
def P3292138816485413522.Spec : Prop :=
  ∀ n, P3292138816485413522.a n = A270013 n

end A270013

/-! ## A270013.P7657359669512273888

`Δ[(2*n+1)*C(2*n+1, a(n-1)+1)]` with `a(0)=1`
-/

namespace A270013.P7657359669512273888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * n + 1) * Nat.choose (2 * n + 1) (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A270013.P7657359669512273888

namespace A270013

/-- `Δ[(2*n+1)*C(2*n+1, a(n-1)+1)]` -/
def P7657359669512273888.Spec : Prop :=
  ∀ n, P7657359669512273888.a n = A270013 n

end A270013

/-! ## A270013.P14589686867259692706

`Δ[A266437(n)²]`
-/

namespace A270013.P14589686867259692706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270013.P14589686867259692706

namespace A270013

/-- `Δ[A266437(n)²]` -/
def P14589686867259692706.Spec : Prop :=
  ∀ n, P14589686867259692706.a n = A270013 n

theorem P14589686867259692706.correct : P14589686867259692706.Spec := by
  intro n
  simp only [A270013, Nat.add_sub_cancel, A270013.P14589686867259692706.f1, A270013.P14589686867259692706.a, A270013.P12289602500562428671.f1, A270013.P12289602500562428671.a, A266437, A266437.P4904505592277439191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A270013

/-! ## A270013.P11551608720764389689

`Δ[and(2*n+1, A280193(n))²]`
-/

namespace A270013.P11551608720764389689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A280193 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270013.P11551608720764389689

namespace A270013

/-- `Δ[and(2*n+1, A280193(n))²]` -/
def P11551608720764389689.Spec : Prop :=
  ∀ n, P11551608720764389689.a n = A270013 n

end A270013

/-! ## A270013.P2896942585653631834

`Δ[(and(1, n)^n*A005408(n))²]`
-/

namespace A270013.P2896942585653631834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n ^ n : ℤ) * A005408 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270013.P2896942585653631834

namespace A270013

/-- `Δ[(and(1, n)^n*A005408(n))²]` -/
def P2896942585653631834.Spec : Prop :=
  ∀ n, P2896942585653631834.a n = A270013 n

end A270013

/-! ## A270013.P6124526262005667189

`A280560(n)+A271064(n)`
-/

namespace A270013.P6124526262005667189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n + A271064 n

end

end A270013.P6124526262005667189

namespace A270013

/-- `A280560(n)+A271064(n)` -/
def P6124526262005667189.Spec : Prop :=
  ∀ n, P6124526262005667189.a n = A270013 n

end A270013

/-! ## A270013.P5899735310629338221

`A270009(n)+A154955(n+1)`
-/

namespace A270013.P5899735310629338221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270009 n + A154955 (n + 1)

end

end A270013.P5899735310629338221

namespace A270013

/-- `A270009(n)+A154955(n+1)` -/
def P5899735310629338221.Spec : Prop :=
  ∀ n, P5899735310629338221.a n = A270013 n

end A270013

/-! ## A270013.P8329173690502467312

`Δ[C(A064680(n)+1, A004277(n))²]`
-/

namespace A270013.P8329173690502467312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A064680 n + 1).toNat (A004277 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A270013.P8329173690502467312

namespace A270013

/-- `Δ[C(A064680(n)+1, A004277(n))²]` -/
def P8329173690502467312.Spec : Prop :=
  ∀ n, P8329173690502467312.a n = A270013 n

end A270013

/-! ## A270013.P7093696337879431443

`Δ[A270010(n)]`
-/

namespace A270013.P7093696337879431443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270013.P7093696337879431443

namespace A270013

/-- `Δ[A270010(n)]` -/
def P7093696337879431443.Spec : Prop :=
  ∀ n, P7093696337879431443.a n = A270013 n

end A270013

/-! ## A270013.P4834665178642359576

`A270010(n+1)-A270010(n)`
-/

namespace A270013.P4834665178642359576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270010 (n + 1) - A270010 n

end

end A270013.P4834665178642359576

namespace A270013

/-- `A270010(n+1)-A270010(n)` -/
def P4834665178642359576.Spec : Prop :=
  ∀ n, P4834665178642359576.a n = A270013 n

end A270013

/-! ## A270013.P14204668725840264580

`Δ[A010816(n*(A004526(n)+1))²]`
-/

namespace A270013.P14204668725840264580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 ((n : ℤ) * (A004526 n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270013.P14204668725840264580

namespace A270013

/-- `Δ[A010816(n*(A004526(n)+1))²]` -/
def P14204668725840264580.Spec : Prop :=
  ∀ n, P14204668725840264580.a n = A270013 n

end A270013

/-!
# A270014: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 49", based on the 5-celled von Neumann neighborhood.

The programs for A270014, there is no canonical definition to state claims against.
-/

/-! ## A270014.P14859553858426704972

`∑[A270017(abs(1-n))]`
-/

namespace A270014.P14859553858426704972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270017 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270014.P14859553858426704972

/-! ## A270014.P728137250873168534

`A270017(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270014.P728137250873168534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270017 (n - 1) + a (n - 1)

end

end A270014.P728137250873168534

/-! ## A270014.P18066306470882096905

`Δ[A270016(n)]-A270017(n)`
-/

namespace A270014.P18066306470882096905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270017 n

end

end A270014.P18066306470882096905

/-! ## A270014.P5789162164535832093

`A270016(n+1)-(A270017(n)+A270016(n))`
-/

namespace A270014.P5789162164535832093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270016 (n + 1) - (A270017 n + A270016 n)

end

end A270014.P5789162164535832093

/-!
# A270015: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 49", based on the 5-celled von Neumann neighborhood.

The programs for A270015, there is no canonical definition to state claims against.
-/

/-! ## A270015.P1886125912499506003

`A270014(2^n-1)`
-/

namespace A270015.P1886125912499506003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270014 (2 ^ n - 1)

end

end A270015.P1886125912499506003

/-! ## A270015.P11513894059275039383

`record[A270014(A135481(n))]`
-/

namespace A270015.P11513894059275039383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270014 (A135481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270015.P11513894059275039383

/-! ## A270015.P8433766064886962007

`record[A270014(A173787(n))]`
-/

namespace A270015.P8433766064886962007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270014 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270015.P8433766064886962007

/-! ## A270015.P509032098560632137

`record[A270014(A342639(n))]`
-/

namespace A270015.P509032098560632137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270014 (A342639 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270015.P509032098560632137

/-! ## A270015.P223753158075893978

`record[A270014(A243071(n+1))]`
-/

namespace A270015.P223753158075893978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270014 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270015.P223753158075893978

/-!
# A270016: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 49", based on the 5-celled von Neumann neighborhood.

The programs for A270016, there is no canonical definition to state claims against.
-/

/-! ## A270016.P9282213928636024799

`∑[A270014(n)]`
-/

namespace A270016.P9282213928636024799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270016.P9282213928636024799

/-! ## A270016.P3867597548373813274

`∑[∑[A270017(abs(1-n))]]`
-/

namespace A270016.P3867597548373813274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270017 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270016.P3867597548373813274

/-! ## A270016.P11616134967579640124

`A270014(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270016.P11616134967579640124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270014 n + a (A023443 n).toNat

end

end A270016.P11616134967579640124

/-! ## A270016.P4615623242153646399

`A270014(n)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A270016.P4615623242153646399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270014 n + a |A024000 n|.toNat

end

end A270016.P4615623242153646399

/-! ## A270016.P7793651959098233699

`∑[∑[A270017(n)]+1-A270017(n)]`
-/

namespace A270016.P7793651959098233699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270017 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270017 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270016.P7793651959098233699

/-! ## A270016.P3346710419893679879

`a(n-1)+A270014(n)+A000007(n)` with `a(0)=1`
-/

namespace A270016.P3346710419893679879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270014 n + A000007 n)

end

end A270016.P3346710419893679879

/-!
# A270017: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 49", based on the 5-celled von Neumann neighborhood.

The programs for A270017, there is no canonical definition to state claims against.
-/

/-! ## A270017.P10376919824612379464

`Δ[A270014(n)]`
-/

namespace A270017.P10376919824612379464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270017.P10376919824612379464

/-! ## A270017.P2251683416869315892

`A270014(n+1)-A270014(n)`
-/

namespace A270017.P2251683416869315892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270014 (n + 1) - A270014 n

end

end A270017.P2251683416869315892

/-! ## A270017.P199487256629559185

`A270014(n+1)+A270014(n)/A008683(A240710(n+2))`
-/

namespace A270017.P199487256629559185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270014 (n + 1) : ℚ) + (A270014 n : ℚ) / (A008683 (A240710 (n + 2)).toNat : ℚ)

end

end A270017.P199487256629559185

/-! ## A270017.P7085154363513110843

`A270014(n+1)+A001489(A270014(n)+1)+1`
-/

namespace A270017.P7085154363513110843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270014 (n + 1) + (A001489 (A270014 n + 1).toNat + 1)

end

end A270017.P7085154363513110843

/-! ## A270017.P17289736201789759413

`A270014(A000027(n+1))+A001489(A270014(n))`
-/

namespace A270017.P17289736201789759413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270014 (A000027 (n + 1)).toNat + A001489 (A270014 n).toNat

end

end A270017.P17289736201789759413

/-!
# A270018: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 51", based on the 5-celled von Neumann neighborhood.

The programs for A270018, there is no canonical definition to state claims against.
-/

/-! ## A270018.P11121744096394724788

`A270021(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270018.P11121744096394724788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270021 (n - 1) + a (n - 1)

end

end A270018.P11121744096394724788

/-! ## A270018.P1839835331581550368

`Δ[A270020(n)]-A270021(n)`
-/

namespace A270018.P1839835331581550368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270021 n

end

end A270018.P1839835331581550368

/-! ## A270018.P17152864218523368509

`∑[A270021(A028310(n)-1)]-3`
-/

namespace A270018.P17152864218523368509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270021 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A270018.P17152864218523368509

/-! ## A270018.P12205097848627567787

`A270020(n+1)-(A270021(n)+A270020(n))`
-/

namespace A270018.P12205097848627567787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270020 (n + 1) - (A270021 n + A270020 n)

end

end A270018.P12205097848627567787

/-! ## A270018.P16761890782150270283

`A004442(∑[A270021(n)]-A270021(n))`
-/

namespace A270018.P16761890782150270283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A270021 n).toNat

end

end A270018.P16761890782150270283

/-!
# A270019: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 51", based on the 5-celled von Neumann neighborhood.

The programs for A270019, there is no canonical definition to state claims against.
-/

/-! ## A270019.P7849958730044719112

`A270018(2^n-1)`
-/

namespace A270019.P7849958730044719112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270018 (2 ^ n - 1)

end

end A270019.P7849958730044719112

/-! ## A270019.P12908328511326492730

`record[A270018(A006068(n))]`
-/

namespace A270019.P12908328511326492730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270018 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270019.P12908328511326492730

/-! ## A270019.P10514291816994728211

`record[A270018(A091264(n))]`
-/

namespace A270019.P10514291816994728211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270018 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270019.P10514291816994728211

/-! ## A270019.P16904294690867188579

`record[A270018(A173787(n))]`
-/

namespace A270019.P16904294690867188579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270018 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270019.P16904294690867188579

/-! ## A270019.P14018552297482578744

`record[A270018(A264977(n))]`
-/

namespace A270019.P14018552297482578744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270018 (A264977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270019.P14018552297482578744

/-!
# A270020: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 51", based on the 5-celled von Neumann neighborhood.

The programs for A270020, there is no canonical definition to state claims against.
-/

/-! ## A270020.P1233159007690736135

`∑[A270021(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270020.P1233159007690736135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270021 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270020.P1233159007690736135

/-! ## A270020.P11261165945215319707

`∑[∑[A270021(A028310(n)-1)]-3]`
-/

namespace A270020.P11261165945215319707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270021 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270020.P11261165945215319707

/-! ## A270020.P7100191860992825180

`∑[∑[A270021(n)]+1-A270021(n)]`
-/

namespace A270020.P7100191860992825180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270021 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270021 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270020.P7100191860992825180

/-! ## A270020.P3847488764598409869

`∑[A270018(n)]`
-/

namespace A270020.P3847488764598409869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270020.P3847488764598409869

/-! ## A270020.P13630473559357013082

`a(n-1)+A057427(n)*A270018(n)` with `a(0)=1`
-/

namespace A270020.P13630473559357013082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A270018 n

end

end A270020.P13630473559357013082

/-! ## A270020.P1919172566927302104

`A270018(n%A002378(n))+a(n-1)` with `a(0)=1`
-/

namespace A270020.P1919172566927302104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270018 (Int.tmod (n : ℤ) (A002378 n)).toNat + a (n - 1)

end

end A270020.P1919172566927302104

/-! ## A270020.P1924614113186497396

`A270018(gcd(n, A002378(n)))+a(n-1)` with `a(0)=1`
-/

namespace A270020.P1924614113186497396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270018 (Int.gcd (n : ℤ) (A002378 n)) + a (n - 1)

end

end A270020.P1924614113186497396

/-! ## A270020.P12836423772305793730

`A270018(n)+a(A025581(A001844(n)))` with `a(0)=1`
-/

namespace A270020.P12836423772305793730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270018 n + a (A025581 (A001844 n).toNat).toNat

end

end A270020.P12836423772305793730

/-!
# A270021: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 51", based on the 5-celled von Neumann neighborhood.

The programs for A270021, there is no canonical definition to state claims against.
-/

/-! ## A270021.P1563189229069708388

`Δ[A270018(n)]`
-/

namespace A270021.P1563189229069708388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270021.P1563189229069708388

/-! ## A270021.P6906300696162553385

`A270018(n+1)-A270018(n)`
-/

namespace A270021.P6906300696162553385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270018 (n + 1) - A270018 n

end

end A270021.P6906300696162553385

/-!
# A270022: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 54", based on the 5-celled von Neumann neighborhood.

The programs for A270022, there is no canonical definition to state claims against.
-/

/-! ## A270022.P9861016827302057736

`A270025(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270022.P9861016827302057736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270025 (n - 1) + a (n - 1)

end

end A270022.P9861016827302057736

/-! ## A270022.P17162571927801741234

`A270025(n-1)-floor(-a(A028310(n)-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A270022.P17162571927801741234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270025 (n - 1) - (-a (A028310 n - 1).toNat)

end

end A270022.P17162571927801741234

/-! ## A270022.P6421725629723114250

`Δ[A270024(n)]-A270025(n)`
-/

namespace A270022.P6421725629723114250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270025 n

end

end A270022.P6421725629723114250

/-! ## A270022.P16578025280513498447

`A270024(n+1)-(A270025(n)+A270024(n))`
-/

namespace A270022.P16578025280513498447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270024 (n + 1) - (A270025 n + A270024 n)

end

end A270022.P16578025280513498447

/-!
# A270023: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 54", based on the 5-celled von Neumann neighborhood.

The programs for A270023, there is no canonical definition to state claims against.
-/

/-! ## A270023.P10249009153294680372

`A270022(2^n-1)`
-/

namespace A270023.P10249009153294680372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270022 (2 ^ n - 1)

end

end A270023.P10249009153294680372

/-! ## A270023.P7420199606781567347

`record[A270022(Δ[A228693(n)])]`
-/

namespace A270023.P7420199606781567347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270022 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270023.P7420199606781567347

/-! ## A270023.P17129884771611119021

`record[A270022(A252756(n+1))]`
-/

namespace A270023.P17129884771611119021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270022 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270023.P17129884771611119021

/-! ## A270023.P3014966817579156480

`record[A270022(A286556(n+1))]`
-/

namespace A270023.P3014966817579156480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270022 (A286556 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270023.P3014966817579156480

/-! ## A270023.P1402702151941982195

`record[A036987(n)*A270022(n)]`
-/

namespace A270023.P1402702151941982195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A270022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270023.P1402702151941982195

/-!
# A270024: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 54", based on the 5-celled von Neumann neighborhood.

The programs for A270024, there is no canonical definition to state claims against.
-/

/-! ## A270024.P18099013355129290315

`∑[A270022(n)]`
-/

namespace A270024.P18099013355129290315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270024.P18099013355129290315

/-! ## A270024.P14420306656313864963

`∑[A270025(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270024.P14420306656313864963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270025 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270024.P14420306656313864963

/-! ## A270024.P11283586995111174687

`A270022(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270024.P11283586995111174687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270022 n + a (A023443 n).toNat

end

end A270024.P11283586995111174687

/-! ## A270024.P9108564135836955479

`∑[∑[A270025(n)]+1-A270025(n)]`
-/

namespace A270024.P9108564135836955479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270025 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270024.P9108564135836955479

/-! ## A270024.P13839102606387517244

`a(n-1)+A270022(n)+A000007(n)` with `a(0)=1`
-/

namespace A270024.P13839102606387517244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270022 n + A000007 n)

end

end A270024.P13839102606387517244

/-!
# A270025: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 54", based on the 5-celled von Neumann neighborhood.

The programs for A270025, there is no canonical definition to state claims against.
-/

/-! ## A270025.P1650386199166504015

`Δ[A270022(n)]`
-/

namespace A270025.P1650386199166504015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270025.P1650386199166504015

/-! ## A270025.P16241051801822107791

`A270022(n+1)-A270022(n)`
-/

namespace A270025.P16241051801822107791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270022 (n + 1) - A270022 n

end

end A270025.P16241051801822107791

/-!
# A270026: a(n) is the smallest b for which the base-b representation of n contains at least one 0 (or 0 if no such base exists).

The programs for A270026, there is no canonical definition to state claims against.
-/

/-! ## A270026.P8702389131340193478

`∑{p}[A020639((n+1)*Δ[A178063(n)]), #]`
-/

namespace A270026.P8702389131340193478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178063 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A270026.P8702389131340193478

/-! ## A270026.P4947828547523271536

`∑{p}[A020639((n+1)*A007464(n+1)), #]`
-/

namespace A270026.P4947828547523271536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * A007464 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A270026.P4947828547523271536

/-! ## A270026.P14676652075251660540

`∑{p}[A020639(lcm(n+1, A007464(n+1))), #]`
-/

namespace A270026.P14676652075251660540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (n + 1 : ℤ) (A007464 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A270026.P14676652075251660540

/-! ## A270026.P3431923212193111395

`A020639((n+1)*Δ[A178063(n)])-A000007(n)`
-/

namespace A270026.P3431923212193111395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * (f1 (n + 1) - f1 n)).toNat - A000007 n

end

end A270026.P3431923212193111395

/-! ## A270026.P43501053476421481

`A020639((n+1)*Δ[A178063(n)])%A000132(n)`
-/

namespace A270026.P43501053476421481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 ((n + 1 : ℤ) * (f1 (n + 1) - f1 n)).toNat) (A000132 n)

end

end A270026.P43501053476421481

/-! ## A270026.P1221249858353830750

`A020639((n+1)*A007464(n+1))%A000225(n+1)`
-/

namespace A270026.P1221249858353830750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 ((n + 1 : ℤ) * A007464 (n + 1)).toNat) (A000225 (n + 1))

end

end A270026.P1221249858353830750

/-!
# A270028: a(n) is the smallest b >= 3 for which the base-b representation of n contains at least one 1 (or 0 if no such base exists).

The programs for A270028, there is no canonical definition to state claims against.
-/

/-! ## A270028.P10336256007142514079

`A216194(A007494(n+1)%A270041(2*n+7))`
-/

namespace A270028.P10336256007142514079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216194 (Int.tmod (A007494 (n + 1)) (A270041 (2 * n + 7))).toNat

end

end A270028.P10336256007142514079

/-! ## A270028.P7345605788498504149

`A216194(A007494(n+1))%(n-A320922(n+2))`
-/

namespace A270028.P7345605788498504149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216194 (A007494 (n + 1)).toNat) ((n : ℤ) - A320922 (n + 2))

end

end A270028.P7345605788498504149

/-! ## A270028.P11456643238185653092

`A216194(A007494(n+1))+A087024(n+1)%2`
-/

namespace A270028.P11456643238185653092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216194 (A007494 (n + 1)).toNat + Int.tmod (A087024 (n + 1)) 2

end

end A270028.P11456643238185653092

/-! ## A270028.P3600316903227246378

`A216194(A007494(n+1))+A000035(A002943(n))`
-/

namespace A270028.P3600316903227246378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216194 (A007494 (n + 1)).toNat + A000035 (A002943 n).toNat

end

end A270028.P3600316903227246378

/-! ## A270028.P13891690885611870613

`A216194(A007494(n+1))+n*A335462(2*n+3)`
-/

namespace A270028.P13891690885611870613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216194 (A007494 (n + 1)).toNat + (n : ℤ) * A335462 (2 * n + 3)

end

end A270028.P13891690885611870613

/-!
# A270036: a(n) is the smallest b for which the base-b representation of n contains a digit greater than 9.

The programs for A270036, there is no canonical definition to state claims against.
-/

/-! ## A270036.P8455946090268326141

`A095777(n+10)+2`
-/

namespace A270036.P8455946090268326141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095777 (n + 10) + 2

end

end A270036.P8455946090268326141

/-! ## A270036.P12268684330027989857

`A331886(eq[10, A114327(n)])`
-/

namespace A270036.P12268684330027989857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270036.P12268684330027989857

/-!
# A270037: a(n) = Smallest m >= 3 containing no zeros when represented in any base from 3 through n.

The programs for A270037, there is no canonical definition to state claims against.
-/

/-! ## A270037.P6482867126335223129

`A378308(∑[n+3]+1)`
-/

namespace A270037.P6482867126335223129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378308 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A270037.P6482867126335223129

/-!
# A270041: a(n) = Smallest m >= 11 containing no fives when represented in any base from 6 through n.

The programs for A270041, there is no canonical definition to state claims against.
-/

/-! ## A270041.P2376822239136718315

`A360493(A151694(2*n))+n+11`
-/

namespace A270041.P2376822239136718315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360493 (A151694 (2 * n)).toNat + (n + 11 : ℤ)

end

end A270041.P2376822239136718315

/-!
# A270043: a(n) = Smallest m >= 15 containing no sevens when represented in any base from 8 through n.

The programs for A270043, there is no canonical definition to state claims against.
-/

/-! ## A270043.P15377644113162418164

`A270035(A270045(n+2))+A270028(A270018(3*n))`
-/

namespace A270043.P15377644113162418164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270035 (A270045 (n + 2 + 10)).toNat + A270028 (A270018 (3 * n)).toNat

end

end A270043.P15377644113162418164

/-! ## A270043.P12149555522476466615

`A270035(A270045(n+2))+A270028(A270014(3*n+2))`
-/

namespace A270043.P12149555522476466615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270035 (A270045 (n + 2 + 10)).toNat + A270028 (A270014 (3 * n + 2)).toNat

end

end A270043.P12149555522476466615

/-! ## A270043.P13096163475863063348

`A043529(A052401(n+1))+n+15`
-/

namespace A270043.P13096163475863063348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A052401 (n + 1)).toNat + (n + 15 : ℤ)

end

end A270043.P13096163475863063348

/-! ## A270043.P16389563087633175348

`A295884(A285948(n+1))+16+n`
-/

namespace A270043.P16389563087633175348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (A285948 (n + 1)).toNat + 16 + (n : ℤ)

end

end A270043.P16389563087633175348

/-!
# A270044: a(n) = Smallest m >= 17 containing no eights when represented in any base from 9 through n.

The programs for A270044, there is no canonical definition to state claims against.
-/

/-! ## A270044.P1171488732333055493

`A031285(lt[0, and(n, 16*n)]-A053836(n))`
-/

namespace A270044.P1171488732333055493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (16 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - A053836 n).toNat

end

end A270044.P1171488732333055493

/-! ## A270044.P1338786186823450158

`A031285(lt[17*n, or(n, 17*n)]-A053836(n))`
-/

namespace A270044.P1338786186823450158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (17 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - A053836 n).toNat

end

end A270044.P1338786186823450158

/-! ## A270044.P12536590906709967210

`A031285(comp[A115847(n)]-A053836(n))`
-/

namespace A270044.P12536590906709967210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115847 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A053836 n).toNat

end

end A270044.P12536590906709967210

/-! ## A270044.P9110914609434681548

`A031285(A115849(n+1)-A053836(n))`
-/

namespace A270044.P9110914609434681548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A115849 (n + 1) - A053836 n).toNat

end

end A270044.P9110914609434681548

/-! ## A270044.P2213537783251850845

`A270045(n+1)-A270028(A270018(3*(n+1)))`
-/

namespace A270044.P2213537783251850845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270045 (n + 1 + 10) - A270028 (A270018 (3 * (n + 1))).toNat

end

end A270044.P2213537783251850845

/-!
# A270045: Smallest m >= 19 containing no nines when represented in any base from 10 through n.

The programs for A270045, there is no canonical definition to state claims against.
-/

/-! ## A270045.P2469701871345630841

`A020723(or(n+11, A245794(n)))`
-/

namespace A270045.P2469701871345630841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (Int.lor (n + 11 : ℤ) (A245794 n)).toNat

end

end A270045.P2469701871345630841

/-! ## A270045.P6104278310562263228

`A007494(n+14)-A080342(A020701(n))`
-/

namespace A270045.P6104278310562263228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 14) - A080342 (A020701 n).toNat

end

end A270045.P6104278310562263228

/-! ## A270045.P7689900133475372914

`A296760(n+1)+A082204(A331783(n+1))`
-/

namespace A270045.P7689900133475372914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296760 (n + 1) + A082204 (A331783 (n + 1)).toNat

end

end A270045.P7689900133475372914

/-! ## A270045.P13445121880358818868

`a(floor(A216191(A000217(n))/3))+n` with `a(0)=20`
-/

namespace A270045.P13445121880358818868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20] fun n a =>
  a ⌊(A216191 (A000217 n).toNat : ℚ) / 3⌋.toNat + n

end

end A270045.P13445121880358818868

/-!
# A270048: a(1) = 0; a(n+1) = a(n) + n * the number of digits of a(n).

The programs for A270048, there is no canonical definition to state claims against.
-/

/-! ## A270048.P17866774709802298299

`a(n-1)+n*A055642(a(n-1))` with `a(0)=0`
-/

namespace A270048.P17866774709802298299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * A055642 (a (n - 1)).toNat

end

end A270048.P17866774709802298299

/-! ## A270048.P11931813852879072767

`∑[n*∑[A335909(A280874(n+1))]]`
-/

namespace A270048.P11931813852879072767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335909 (A280874 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270048.P11931813852879072767

/-! ## A270048.P46968156016998434

`A064223(A179865(n+1))%A125809(n)`
-/

namespace A270048.P46968156016998434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064223 (A179865 (n + 1)).toNat) (A125809 n)

end

end A270048.P46968156016998434

/-! ## A270048.P7369072370263457308

`∑[n*A343265(A343265(3*(n+1)))]`
-/

namespace A270048.P7369072370263457308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A343265 (A343265 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270048.P7369072370263457308

/-! ## A270048.P3547630859228177654

`A304818(∏[∑[char[n!-1]]])`
-/

namespace A270048.P3547630859228177654
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A270048.P3547630859228177654

/-!
# A270049: Number of 123 avoiding set partitions of [n].

The programs for A270049, the canonical program `A270049.P13182036086160240146` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270049 has offset 0).

The definition of A270049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270049.P13182036086160240146

`Δ[A186739(n+1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A270049

/-- `Δ[A186739(n+1)]` -/
def P13182036086160240146.Spec : Prop :=
  ∀ n, P13182036086160240146.a n = A270049 n

theorem P13182036086160240146.correct : P13182036086160240146.Spec := by
  intro n
  simp only [A270049]

end A270049

/-! ## A270049.P1921007427793723577

`n*A186739(n)+1`
-/

namespace A270049.P1921007427793723577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A186739 n + 1

end

end A270049.P1921007427793723577

namespace A270049

/-- `n*A186739(n)+1` -/
def P1921007427793723577.Spec : Prop :=
  ∀ n, P1921007427793723577.a n = A270049 n

end A270049

/-! ## A270049.P3717657485362284302

`∑{#}[floor(n/2), C(n, 2*#)*A006882(2*#)]`
-/

namespace A270049.P3717657485362284302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n (2 * k) : ℤ) * A006882 (2 * k)

end

end A270049.P3717657485362284302

namespace A270049

/-- `∑{#}[floor(n/2), C(n, 2*#)*A006882(2*#)]` -/
def P3717657485362284302.Spec : Prop :=
  ∀ n, P3717657485362284302.a n = A270049 n

end A270049

/-! ## A270049.P6211391925963775072

`Δ[A187044(n)-A000085(n)]`
-/

namespace A270049.P6211391925963775072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187044 n - A000085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270049.P6211391925963775072

namespace A270049

/-- `Δ[A187044(n)-A000085(n)]` -/
def P6211391925963775072.Spec : Prop :=
  ∀ n, P6211391925963775072.a n = A270049 n

end A270049

/-! ## A270049.P12228698979726192195

`Δ[A193361(n+2)-A000085(n)]`
-/

namespace A270049.P12228698979726192195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193361 (n + 2) - A000085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270049.P12228698979726192195

namespace A270049

/-- `Δ[A193361(n+2)-A000085(n)]` -/
def P12228698979726192195.Spec : Prop :=
  ∀ n, P12228698979726192195.a n = A270049 n

end A270049

/-! ## A270049.P3753251390830060308

`A186739(n+2)-A186739(n+1)`
-/

namespace A270049.P3753251390830060308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186739 (n + 2) - A186739 (n + 1)

end

end A270049.P3753251390830060308

namespace A270049

/-- `A186739(n+2)-A186739(n+1)` -/
def P3753251390830060308.Spec : Prop :=
  ∀ n, P3753251390830060308.a n = A270049 n

theorem P3753251390830060308.correct : P3753251390830060308.Spec := by
  intro n
  simp only [A270049, Nat.add_sub_cancel, A270049.P3753251390830060308.a, A270049.P13182036086160240146.f1, A270049.P13182036086160240146.a, SequenceMachineLib.memo_apply]

end A270049

/-! ## A270049.P7970879172283404220

`Δ[A187044(n)-A293808(A133263(n)-1)]`
-/

namespace A270049.P7970879172283404220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187044 n - A293808 (A133263 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270049.P7970879172283404220

namespace A270049

/-- `Δ[A187044(n)-A293808(A133263(n)-1)]` -/
def P7970879172283404220.Spec : Prop :=
  ∀ n, P7970879172283404220.a n = A270049 n

end A270049

/-! ## A270049.P2772587392282191264

`A000085(n)+A263529(n)-A000085(n+1)`
-/

namespace A270049.P2772587392282191264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n + (A263529 n - A000085 (n + 1))

end

end A270049.P2772587392282191264

namespace A270049

/-- `A000085(n)+A263529(n)-A000085(n+1)` -/
def P2772587392282191264.Spec : Prop :=
  ∀ n, P2772587392282191264.a n = A270049 n

end A270049

/-!
# A270050: Numbers of the form 2 * (x^2 + xy + y^2).

The programs for A270050, the canonical program `A270050.P15374850051776029815` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270050 has offset 1).

The definition of A270050 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A270050.P15374850051776029815

`2*A003136(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A270050

/-- `2*A003136(n+1)` -/
def P15374850051776029815.Spec : Prop :=
  ∀ n, P15374850051776029815.a n = A270050 (n + 1)

theorem P15374850051776029815.correct : P15374850051776029815.Spec := by
  intro n
  simp only [A270050, Nat.add_sub_cancel]

end A270050

/-! ## A270050.P5659676539200694060

`A270248(n+1)/2`
-/

namespace A270050.P5659676539200694060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270248 (n + 1) : ℚ) / 2

end

end A270050.P5659676539200694060

namespace A270050

/-- `A270248(n+1)/2` -/
def P5659676539200694060.Spec : Prop :=
  ∀ n, P5659676539200694060.a n = (A270050 (n + 1) : ℚ)

theorem P5659676539200694060.correct : P5659676539200694060.Spec := by
  intro n
  simp only [A270050, Nat.add_sub_cancel, A270050.P5659676539200694060.a, A270050.P15374850051776029815.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270248, A270248.P13305958007717822557.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P14495534047387877315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270050

/-! ## A270050.P1497536418820025158

`2*lt[0, A033716(n)]`
-/

namespace A270050.P1497536418820025158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270050.P1497536418820025158

namespace A270050

/-- `2*lt[0, A033716(n)]` -/
def P1497536418820025158.Spec : Prop :=
  ∀ n, (P1497536418820025158.a n : ℤ) = A270050 (n + 1)

end A270050

/-! ## A270050.P16352671322104165336

`2*eq[1, A353816(n)]`
-/

namespace A270050.P16352671322104165336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270050.P16352671322104165336

namespace A270050

/-- `2*eq[1, A353816(n)]` -/
def P16352671322104165336.Spec : Prop :=
  ∀ n, (P16352671322104165336.a n : ℤ) = A270050 (n + 1)

theorem P16352671322104165336.correct : P16352671322104165336.Spec := by
  intro n
  simp only [A270050, Nat.add_sub_cancel, A270050.P16352671322104165336.f1, A270050.P16352671322104165336.f2, A270050.P16352671322104165336.a, A270050.P15374850051776029815.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P14495534047387877315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270050

/-! ## A270050.P15554908944506469950

`2/3*A270672(n+1)`
-/

namespace A270050.P15554908944506469950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A270672 (n + 1) : ℚ)

end

end A270050.P15554908944506469950

namespace A270050

/-- `2/3*A270672(n+1)` -/
def P15554908944506469950.Spec : Prop :=
  ∀ n, P15554908944506469950.a n = (A270050 (n + 1) : ℚ)

theorem P15554908944506469950.correct : P15554908944506469950.Spec := by
  intro n
  simp only [A270050, Nat.add_sub_cancel, A270050.P15554908944506469950.a, A270050.P15374850051776029815.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270672, A270672.P7077653201386938758.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P14495534047387877315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270050

/-! ## A270050.P2239698197318222013

`2*∪[A024614(n+1), n²]`
-/

namespace A270050.P2239698197318222013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A270050.P2239698197318222013

namespace A270050

/-- `2*∪[A024614(n+1), n²]` -/
def P2239698197318222013.Spec : Prop :=
  ∀ n, (P2239698197318222013.a n : ℤ) = A270050 (n + 1)

end A270050

/-! ## A270050.P1919020649109439662

`A270672(n+1)-A003136(n+1)`
-/

namespace A270050.P1919020649109439662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270672 (n + 1) - A003136 (n + 1)

end

end A270050.P1919020649109439662

namespace A270050

/-- `A270672(n+1)-A003136(n+1)` -/
def P1919020649109439662.Spec : Prop :=
  ∀ n, P1919020649109439662.a n = A270050 (n + 1)

theorem P1919020649109439662.correct : P1919020649109439662.Spec := by
  intro n
  simp only [A270050, Nat.add_sub_cancel, A270050.P1919020649109439662.a, A270050.P15374850051776029815.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270672, A270672.P7077653201386938758.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P14495534047387877315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270050

/-! ## A270050.P12953580843239624712

`2*(A270248(n+1)-A270672(n+1))`
-/

namespace A270050.P12953580843239624712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A270248 (n + 1) - A270672 (n + 1))

end

end A270050.P12953580843239624712

namespace A270050

/-- `2*(A270248(n+1)-A270672(n+1))` -/
def P12953580843239624712.Spec : Prop :=
  ∀ n, P12953580843239624712.a n = A270050 (n + 1)

theorem P12953580843239624712.correct : P12953580843239624712.Spec := by
  intro n
  simp only [A270050, Nat.add_sub_cancel, A270050.P12953580843239624712.a, A270050.P15374850051776029815.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270248, A270248.P13305958007717822557.a, A270672, A270672.P7077653201386938758.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P14495534047387877315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270050

/-! ## A270050.P10762908899681373500

`A003136(A000027(n+1))+A003136(n+1)`
-/

namespace A270050.P10762908899681373500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (A000027 (n + 1)).toNat + A003136 (n + 1)

end

end A270050.P10762908899681373500

namespace A270050

/-- `A003136(A000027(n+1))+A003136(n+1)` -/
def P10762908899681373500.Spec : Prop :=
  ∀ n, P10762908899681373500.a n = A270050 (n + 1)

end A270050

/-! ## A270050.P1898319729486014301

`A270248(n+1)-(A003136(n+1)+A003136(n+1))`
-/

namespace A270050.P1898319729486014301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270248 (n + 1) - (A003136 (n + 1) + A003136 (n + 1))

end

end A270050.P1898319729486014301

namespace A270050

/-- `A270248(n+1)-(A003136(n+1)+A003136(n+1))` -/
def P1898319729486014301.Spec : Prop :=
  ∀ n, P1898319729486014301.a n = A270050 (n + 1)

theorem P1898319729486014301.correct : P1898319729486014301.Spec := by
  intro n
  simp only [A270050, Nat.add_sub_cancel, A270050.P1898319729486014301.a, A270050.P15374850051776029815.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270248, A270248.P13305958007717822557.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P14495534047387877315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270050

/-! ## A270050.P2803618400930735143

`eq[1, A353816(2*n)]`
-/

namespace A270050.P2803618400930735143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270050.P2803618400930735143

namespace A270050

/-- `eq[1, A353816(2*n)]` -/
def P2803618400930735143.Spec : Prop :=
  ∀ n, (P2803618400930735143.a n : ℤ) = A270050 (n + 1)

end A270050

/-! ## A270050.P6775837865773511308

`lt[1, A119395(2*n)+1]`
-/

namespace A270050.P6775837865773511308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270050.P6775837865773511308

namespace A270050

/-- `lt[1, A119395(2*n)+1]` -/
def P6775837865773511308.Spec : Prop :=
  ∀ n, (P6775837865773511308.a n : ℤ) = A270050 (n + 1)

end A270050

/-! ## A270050.P8795336237888617519

`lt[1, A217220(2*n)+1]`
-/

namespace A270050.P8795336237888617519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270050.P8795336237888617519

namespace A270050

/-- `lt[1, A217220(2*n)+1]` -/
def P8795336237888617519.Spec : Prop :=
  ∀ n, (P8795336237888617519.a n : ℤ) = A270050 (n + 1)

end A270050

/-! ## A270050.P16876385318521973342

`A003136(A024608(n+1))/2`
-/

namespace A270050.P16876385318521973342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003136 (A024608 (n + 1)).toNat : ℚ) / 2

end

end A270050.P16876385318521973342

namespace A270050

/-- `A003136(A024608(n+1))/2` -/
def P16876385318521973342.Spec : Prop :=
  ∀ n, P16876385318521973342.a n = (A270050 (n + 1) : ℚ)

end A270050

/-! ## A270050.P3398025089834671722

`2*lt[0, A004016(n)]`
-/

namespace A270050.P3398025089834671722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270050.P3398025089834671722

namespace A270050

/-- `2*lt[0, A004016(n)]` -/
def P3398025089834671722.Spec : Prop :=
  ∀ n, (P3398025089834671722.a n : ℤ) = A270050 (n + 1)

end A270050

/-! ## A270050.P12594969966733161380

`2*lt[0, A005928(n)²]`
-/

namespace A270050.P12594969966733161380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270050.P12594969966733161380

namespace A270050

/-- `2*lt[0, A005928(n)²]` -/
def P12594969966733161380.Spec : Prop :=
  ∀ n, (P12594969966733161380.a n : ℤ) = A270050 (n + 1)

end A270050

/-! ## A270050.P5605805257595351905

`A005843(A003136(n+1))`
-/

namespace A270050.P5605805257595351905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A003136 (n + 1)).toNat

end

end A270050.P5605805257595351905

namespace A270050

/-- `A005843(A003136(n+1))` -/
def P5605805257595351905.Spec : Prop :=
  ∀ n, P5605805257595351905.a n = A270050 (n + 1)

end A270050

/-! ## A270050.P2540234236736585624

`record[n*A000122(A004016(n)²)]`
-/

namespace A270050.P2540234236736585624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000122 (A004016 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270050.P2540234236736585624

namespace A270050

/-- `record[n*A000122(A004016(n)²)]` -/
def P2540234236736585624.Spec : Prop :=
  ∀ n, P2540234236736585624.a n = A270050 (n + 1)

end A270050

/-! ## A270050.P717745346565709770

`2*lt[0, A097109(n)²]`
-/

namespace A270050.P717745346565709770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270050.P717745346565709770

namespace A270050

/-- `2*lt[0, A097109(n)²]` -/
def P717745346565709770.Spec : Prop :=
  ∀ n, (P717745346565709770.a n : ℤ) = A270050 (n + 1)

end A270050

/-! ## A270050.P693283571042255595

`A047244(A003136(n+1)+1)`
-/

namespace A270050.P693283571042255595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047244 (A003136 (n + 1) + 1).toNat

end

end A270050.P693283571042255595

namespace A270050

/-- `A047244(A003136(n+1)+1)` -/
def P693283571042255595.Spec : Prop :=
  ∀ n, P693283571042255595.a n = A270050 (n + 1)

end A270050

/-!
# A270051: Number of n X n 0..4 arrays with some element plus some horizontally or vertically adjacent neighbor totalling four exactly once.

The programs for A270051, there is no canonical definition to state claims against.
-/

/-! ## A270051.P13320611639992908920

`A270058((n+1)²+n²)`
-/

namespace A270051.P13320611639992908920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 ((n + 1) ^ 2 + n ^ 2)

end

end A270051.P13320611639992908920

/-!
# A270052: Number of nX2 0..4 arrays with some element plus some horizontally or vertically adjacent neighbor totalling four exactly once.

The programs for A270052, there is no canonical definition to state claims against.
-/

/-! ## A270052.P11375269162389304059

`A270058(∑[n+1]+2)`
-/

namespace A270052.P11375269162389304059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A270052.P11375269162389304059

/-! ## A270052.P12538333109493749574

`lcm(5, A270058(A000096(n)+3))`
-/

namespace A270052.P12538333109493749574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A270058 (A000096 n + 3).toNat)

end

end A270052.P12538333109493749574

/-! ## A270052.P13952554519093215002

`record[gcd(A002262(n), A270058(n+2))]`
-/

namespace A270052.P13952554519093215002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A270058 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270052.P13952554519093215002

/-! ## A270052.P9004314364279606762

`A270058(A000096(n)+3)+A185284(n)`
-/

namespace A270052.P9004314364279606762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 (A000096 n + 3).toNat + A185284 n

end

end A270052.P9004314364279606762

/-! ## A270052.P2545951883574171223

`record[or(A113680(n+1), A270058(n+2))]`
-/

namespace A270052.P2545951883574171223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113680 (n + 1)) (A270058 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270052.P2545951883574171223

/-!
# A270053: Number of nX3 0..4 arrays with some element plus some horizontally or vertically adjacent neighbor totalling four exactly once.

The programs for A270053, there is no canonical definition to state claims against.
-/

/-! ## A270053.P4271949825959955320

`A270058(∑[n+2]+4)`
-/

namespace A270053.P4271949825959955320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A270053.P4271949825959955320

/-! ## A270053.P11000732256606659692

`lcm(2, A270058(A167614(n+1)))`
-/

namespace A270053.P11000732256606659692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A270058 (A167614 (n + 1)).toNat)

end

end A270053.P11000732256606659692

/-! ## A270053.P18378951363238059836

`record[gcd(A002262(n+1), A270058(n+4))]`
-/

namespace A270053.P18378951363238059836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 1)) (A270058 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270053.P18378951363238059836

/-! ## A270053.P16610307842545209764

`A270058(A167614(n+1))+A185284(n)`
-/

namespace A270053.P16610307842545209764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 (A167614 (n + 1)).toNat + A185284 n

end

end A270053.P16610307842545209764

/-! ## A270053.P3898012748795001931

`A270058(A167614(n+1))%A263554(n+1)`
-/

namespace A270053.P3898012748795001931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270058 (A167614 (n + 1)).toNat) (A263554 (n + 1))

end

end A270053.P3898012748795001931

/-!
# A270054: Number of nX4 0..4 arrays with some element plus some horizontally or vertically adjacent neighbor totalling four exactly once.

The programs for A270054, there is no canonical definition to state claims against.
-/

/-! ## A270054.P4990657037748154837

`A270058(A167614(n+2)+1)`
-/

namespace A270054.P4990657037748154837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 (A167614 (n + 2) + 1).toNat

end

end A270054.P4990657037748154837

/-! ## A270054.P17762856696289304565

`A270058(A155212(n+1)-n)`
-/

namespace A270054.P17762856696289304565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 (A155212 (n + 1) - (n : ℤ)).toNat

end

end A270054.P17762856696289304565

/-!
# A270055: Number of nX5 0..4 arrays with some element plus some horizontally or vertically adjacent neighbor totalling four exactly once.

The programs for A270055, there is no canonical definition to state claims against.
-/

/-! ## A270055.P9949647554720043259

`A270058(A374005(n+1))`
-/

namespace A270055.P9949647554720043259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 (A374005 (n + 1)).toNat

end

end A270055.P9949647554720043259

/-! ## A270055.P14200732734518743255

`A270058(A155212(n)+13)`
-/

namespace A270055.P14200732734518743255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 (A155212 n + 13).toNat

end

end A270055.P14200732734518743255

/-! ## A270055.P11163597732640116049

`A270058(A056000(n)+15)`
-/

namespace A270055.P11163597732640116049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 (A056000 n + 15).toNat

end

end A270055.P11163597732640116049

/-! ## A270055.P2281328924798032319

`A270058(A000124(n+6)-(2*n+7))`
-/

namespace A270055.P2281328924798032319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 (A000124 (n + 6) - (2 * n + 7 : ℤ)).toNat

end

end A270055.P2281328924798032319

/-! ## A270055.P12028224942061253271

`A270058(eq[6, A185782(n+1)])`
-/

namespace A270055.P12028224942061253271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270055.P12028224942061253271

/-!
# A270057: 

The programs for A270057, there is no canonical definition to state claims against.
-/

/-! ## A270057.P5259007920208121838

`A270058(A000124(n+6)+6)`
-/

namespace A270057.P5259007920208121838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 (A000124 (n + 6) + 6).toNat

end

end A270057.P5259007920208121838

/-! ## A270057.P11462971311579841638

`A270058(A000217(n+7)-n)`
-/

namespace A270057.P11462971311579841638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270058 (A000217 (n + 7) - (n : ℤ)).toNat

end

end A270057.P11462971311579841638

/-!
# A270058: T(n,k)=Number of nXk 0..4 arrays with some element plus some horizontally or vertically adjacent neighbor totalling four exactly once.

The programs for A270058, there is no canonical definition to state claims against.
-/

/-! ## A270058.P10795202994233752891

`5*A101729(A208709(n+1))`
-/

namespace A270058.P10795202994233752891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A101729 (A208709 (n + 1)).toNat

end

end A270058.P10795202994233752891

/-! ## A270058.P5400104913349197676

`5*A101729(A305523(n+1))`
-/

namespace A270058.P5400104913349197676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A101729 (A305523 (n + 1)).toNat

end

end A270058.P5400104913349197676

/-!
# A270059: Number of distinct digits needed to write n in all bases >= 2.

The programs for A270059, the canonical program `A270059.P625174862705436372` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270059 has offset 0).

The definition of A270059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270059.P625174862705436372

`ogf((1+x^2-2x^4+x^5)/(1-x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270059

/-- `ogf((1+x^2-2x^4+x^5)/(1-x-x^2+x^3))` -/
def P625174862705436372.Spec : Prop :=
  ∀ n, P625174862705436372.a n = A270059 n

theorem P625174862705436372.correct : P625174862705436372.Spec := by
  intro n
  simp only [A270059]

end A270059

/-! ## A270059.P14673317998410896065

`round((sqrt(3)-∑[n])/(ϕ-n))`
-/

namespace A270059.P14673317998410896065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / (Real.goldenRatio - (n : ℝ)))

end

end A270059.P14673317998410896065

namespace A270059

/-- `round((sqrt(3)-∑[n])/(ϕ-n))` -/
def P14673317998410896065.Spec : Prop :=
  ∀ n, P14673317998410896065.a n = A270059 n

end A270059

/-! ## A270059.P8069790687705246396

`a(n-2)+1` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3, a(4)=3`
-/

namespace A270059.P8069790687705246396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 3, 3] fun n a =>
  a (n - 2) + 1

end

end A270059.P8069790687705246396

namespace A270059

/-- `a(n-2)+1` -/
def P8069790687705246396.Spec : Prop :=
  ∀ n, (P8069790687705246396.a n : ℤ) = A270059 n

end A270059

/-! ## A270059.P5034013126956962607

`ceil((acot(n-2)+n+1)/2)`
-/

namespace A270059.P5034013126956962607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.acot ((n : ℤ) - 2 : ℝ) + (n + 1 : ℝ)) / 2⌉

end

end A270059.P5034013126956962607

namespace A270059

/-- `ceil((acot(n-2)+n+1)/2)` -/
def P5034013126956962607.Spec : Prop :=
  ∀ n, P5034013126956962607.a n = A270059 n

end A270059

/-! ## A270059.P12342850953789983779

`floor((acot(n-2)+n+3)/2)`
-/

namespace A270059.P12342850953789983779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.acot ((n : ℤ) - 2 : ℝ) + (n + 3 : ℝ)) / 2⌋

end

end A270059.P12342850953789983779

namespace A270059

/-- `floor((acot(n-2)+n+3)/2)` -/
def P12342850953789983779.Spec : Prop :=
  ∀ n, P12342850953789983779.a n = A270059 n

end A270059

/-! ## A270059.P16025661451343855255

`∑[1-a(n-1)]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=0`
-/

namespace A270059.P16025661451343855255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 0, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270059.P16025661451343855255

namespace A270059

/-- `∑[1-a(n-1)]` -/
def P16025661451343855255.Spec : Prop :=
  ∀ n, P16025661451343855255.a n = A270059 n

end A270059

/-! ## A270059.P9365822914115249114

`2-(a(n-1)-n)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A270059.P9365822914115249114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 3] fun n a =>
  2 - (a (n - 1) - (n : ℤ))

end

end A270059.P9365822914115249114

namespace A270059

/-- `2-(a(n-1)-n)` -/
def P9365822914115249114.Spec : Prop :=
  ∀ n, P9365822914115249114.a n = A270059 n

end A270059

/-! ## A270059.P4875560366664340451

`∑[a((n+1)%2)²]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0`
-/

namespace A270059.P4875560366664340451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 0] fun n f1 =>
  f1 ((n + 1) % 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270059.P4875560366664340451

namespace A270059

/-- `∑[a((n+1)%2)²]` -/
def P4875560366664340451.Spec : Prop :=
  ∀ n, (P4875560366664340451.a n : ℤ) = A270059 n

end A270059

/-! ## A270059.P16306195859333721703

`∑[a(and(1, n+1))²]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0`
-/

namespace A270059.P16306195859333721703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 0] fun n f1 =>
  f1 (Nat.land 1 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270059.P16306195859333721703

namespace A270059

/-- `∑[a(and(1, n+1))²]` -/
def P16306195859333721703.Spec : Prop :=
  ∀ n, (P16306195859333721703.a n : ℤ) = A270059 n

end A270059

/-! ## A270059.P5518130691181790906

`floor(∑[n+1]/(C(n, n²)+n))`
-/

namespace A270059.P5518130691181790906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.choose n (n ^ 2) + n : ℚ)⌋

end

end A270059.P5518130691181790906

namespace A270059

/-- `floor(∑[n+1]/(C(n, n²)+n))` -/
def P5518130691181790906.Spec : Prop :=
  ∀ n, P5518130691181790906.a n = A270059 n

end A270059

/-! ## A270059.P1813281569211631082

`floor(∑[gcd(n+3, n-2)+n]/(n+1))`
-/

namespace A270059.P1813281569211631082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) ((n : ℤ) - 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A270059.P1813281569211631082

namespace A270059

/-- `floor(∑[gcd(n+3, n-2)+n]/(n+1))` -/
def P1813281569211631082.Spec : Prop :=
  ∀ n, P1813281569211631082.a n = A270059 n

end A270059

/-! ## A270059.P4639156855079148790

`floor(n/A000032(C(2, n))+ϕ)`
-/

namespace A270059.P4639156855079148790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / (A000032 (Nat.choose 2 n) : ℚ) : ℝ) + Real.goldenRatio⌋

end

end A270059.P4639156855079148790

namespace A270059

/-- `floor(n/A000032(C(2, n))+ϕ)` -/
def P4639156855079148790.Spec : Prop :=
  ∀ n, P4639156855079148790.a n = A270059 n

end A270059

/-! ## A270059.P14748666614652035925

`A065475(a(n-2))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3, a(4)=3`
-/

namespace A270059.P14748666614652035925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 3, 3] fun n a =>
  A065475 (a (n - 2)).toNat

end

end A270059.P14748666614652035925

namespace A270059

/-- `A065475(a(n-2))` -/
def P14748666614652035925.Spec : Prop :=
  ∀ n, P14748666614652035925.a n = A270059 n

end A270059

/-! ## A270059.P1627320407457914024

`comp[3*n]+char[A004277(n)+1]-n`
-/

namespace A270059.P1627320407457914024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (n : ℤ))

end

end A270059.P1627320407457914024

namespace A270059

/-- `comp[3*n]+char[A004277(n)+1]-n` -/
def P1627320407457914024.Spec : Prop :=
  ∀ n, P1627320407457914024.a n = A270059 n

end A270059

/-! ## A270059.P15229306079856679512

`A008619(n)+char[A004273(n)+2]`
-/

namespace A270059.P15229306079856679512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A270059.P15229306079856679512

namespace A270059

/-- `A008619(n)+char[A004273(n)+2]` -/
def P15229306079856679512.Spec : Prop :=
  ∀ n, P15229306079856679512.a n = A270059 n

end A270059

/-! ## A270059.P17157292496297358370

`2-Δ[A182531(n+1)]+n`
-/

namespace A270059.P17157292496297358370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A270059.P17157292496297358370

namespace A270059

/-- `2-Δ[A182531(n+1)]+n` -/
def P17157292496297358370.Spec : Prop :=
  ∀ n, P17157292496297358370.a n = A270059 n

end A270059

/-! ## A270059.P4189385291168265540

`A029579(A266719(n)+n)`
-/

namespace A270059.P4189385291168265540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A266719 n + (n : ℤ)).toNat

end

end A270059.P4189385291168265540

namespace A270059

/-- `A029579(A266719(n)+n)` -/
def P4189385291168265540.Spec : Prop :=
  ∀ n, P4189385291168265540.a n = A270059 n

end A270059

/-! ## A270059.P8142379150209624419

`A266719(n)+∑[A266719(n+1)]`
-/

namespace A270059.P8142379150209624419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270059.P8142379150209624419

namespace A270059

/-- `A266719(n)+∑[A266719(n+1)]` -/
def P8142379150209624419.Spec : Prop :=
  ∀ n, P8142379150209624419.a n = A270059 n

end A270059

/-! ## A270059.P1325914951895602329

`A158416(n)+A158416(A326178(n))-1`
-/

namespace A270059.P1325914951895602329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n + (A158416 (A326178 n).toNat - 1)

end

end A270059.P1325914951895602329

namespace A270059

/-- `A158416(n)+A158416(A326178(n))-1` -/
def P1325914951895602329.Spec : Prop :=
  ∀ n, P1325914951895602329.a n = A270059 n

end A270059

/-! ## A270059.P16867405126800348096

`A008619(n)+char[A141310(n+1)]`
-/

namespace A270059.P16867405126800348096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A270059.P16867405126800348096

namespace A270059

/-- `A008619(n)+char[A141310(n+1)]` -/
def P16867405126800348096.Spec : Prop :=
  ∀ n, P16867405126800348096.a n = A270059 n

end A270059

/-!
# A270060: Number of incomplete rectangles of area n.

The programs for A270060, there is no canonical definition to state claims against.
-/

/-! ## A270060.P1051590052743374078

`(A002133(n+1)+A100073(n+1))/2`
-/

namespace A270060.P1051590052743374078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002133 (n + 1) + A100073 (n + 1) : ℚ) / 2

end

end A270060.P1051590052743374078

/-! ## A270060.P16866370396342011795

`(A100073(n+1)+∑{d}[n+1, A274108(#)])/2`
-/

namespace A270060.P16866370396342011795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A100073 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A274108 d : ℤ) : ℚ) / 2

end

end A270060.P16866370396342011795

/-! ## A270060.P664968595364216082

`(A100073(n+1)+A059819(n+1)-A000203(n+1))/2`
-/

namespace A270060.P664968595364216082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100073 (n + 1) + (A059819 (n + 1) - A000203 (n + 1)) : ℚ) / 2

end

end A270060.P664968595364216082

/-! ## A270060.P17991103218016693496

`(A100073(n+1)+∑{d}[n+1, A110571(#)/2-#])/2`
-/

namespace A270060.P17991103218016693496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A100073 (n + 1) : ℚ) + ∑ d ∈ Nat.divisors (f1 n), ((A110571 d : ℚ) / 2 - (d : ℚ))) / 2

end

end A270060.P17991103218016693496

/-! ## A270060.P7900217144810226820

`A014682(A100073(n+1)+A002133(n+1))`
-/

namespace A270060.P7900217144810226820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A100073 (n + 1) + A002133 (n + 1)).toNat

end

end A270060.P7900217144810226820

/-! ## A270060.P13682302132950698922

`A004526(A034178(n+1)+A002133(n+1))`
-/

namespace A270060.P13682302132950698922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A034178 (n + 1) + A002133 (n + 1)).toNat

end

end A270060.P13682302132950698922

/-! ## A270060.P17496335839441975271

`A001281(A100073(n+1)+A002133(n+1))`
-/

namespace A270060.P17496335839441975271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A100073 (n + 1) + A002133 (n + 1)).toNat

end

end A270060.P17496335839441975271

/-! ## A270060.P9756630130224430921

`A004525(A100073(n+1)+A002133(n+1))`
-/

namespace A270060.P9756630130224430921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A100073 (n + 1) + A002133 (n + 1)).toNat

end

end A270060.P9756630130224430921

/-! ## A270060.P16856980084487107678

`A004526(A100073(n+1)+A002133(n+1))`
-/

namespace A270060.P16856980084487107678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A100073 (n + 1) + A002133 (n + 1)).toNat

end

end A270060.P16856980084487107678

/-! ## A270060.P6089722238412725181

`A025480(A100073(n+1)+A002133(n+1))`
-/

namespace A270060.P6089722238412725181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A100073 (n + 1) + A002133 (n + 1)).toNat

end

end A270060.P6089722238412725181

/-!
# A270061: Number A(n,k) of tilings of a k X n rectangle using monominoes and trominoes of any shape; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A270061, there is no canonical definition to state claims against.
-/

/-! ## A270061.P6204510931218638497

`A275216(A154984(n))`
-/

namespace A270061.P6204510931218638497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275216 (A154984 n).toNat

end

end A270061.P6204510931218638497

/-! ## A270061.P17328596550668527308

`A352100(A034368(n+2))`
-/

namespace A270061.P17328596550668527308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352100 (A034368 (n + 2)).toNat

end

end A270061.P17328596550668527308

/-! ## A270061.P12058430607975304378

`A238886(A053534(n)^A135661(n+1))`
-/

namespace A270061.P12058430607975304378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238886 (SequenceMachineLib.roundAway ((A053534 n : ℚ) ^ (A135661 (n + 1) : ℤ))).toNat

end

end A270061.P12058430607975304378

/-!
# A270062: Number of tilings of a 2 X n rectangle using monominoes and trominoes of any shape.

The programs for A270062, the canonical program `A270062.P15894643541574603934` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270062 has offset 0).

The definition of A270062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270062.P11236500068973989109

`ogf((1-x^2-x^3)/(1-x-5x^2-5x^3-x^4+x^5+x^6))`
-/

namespace A270062.P11236500068973989109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -1] [1, -1, -5, -5, -1, 1, 1] n

end

end A270062.P11236500068973989109

namespace A270062

/-- `ogf((1-x^2-x^3)/(1-x-5x^2-5x^3-x^4+x^5+x^6))` -/
def P11236500068973989109.Spec : Prop :=
  ∀ n, P11236500068973989109.a n = A270062 n

end A270062

/-! ## A270062.P15894643541574603934

`a(n-1)+5*(a(n-2)+a(n-3))+a(n-4)-a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=14, a(4)=45, a(5)=140`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270062

/-- `a(n-1)+5*(a(n-2)+a(n-3))+a(n-4)-a(n-5)-a(n-6)` -/
def P15894643541574603934.Spec : Prop :=
  ∀ n, P15894643541574603934.a n = A270062 n

theorem P15894643541574603934.correct : P15894643541574603934.Spec := by
  intro n
  simp only [A270062]

end A270062

/-! ## A270062.P3287497554614910379

`A270061(∑[n+3])`
-/

namespace A270062.P3287497554614910379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270062.P3287497554614910379

namespace A270062

/-- `A270061(∑[n+3])` -/
def P3287497554614910379.Spec : Prop :=
  ∀ n, P3287497554614910379.a n = A270062 n

end A270062

/-! ## A270062.P11916545446102827065

`A270061(A133263(n+2))-A000007(n+3)`
-/

namespace A270062.P11916545446102827065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (A133263 (n + 2)).toNat - A000007 (n + 3)

end

end A270062.P11916545446102827065

namespace A270062

/-- `A270061(A133263(n+2))-A000007(n+3)` -/
def P11916545446102827065.Spec : Prop :=
  ∀ n, P11916545446102827065.a n = A270062 n

end A270062

/-! ## A270062.P2301881740504092589

`A270061(A340266(n+1))%A003665(n+3)`
-/

namespace A270062.P2301881740504092589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270061 (A340266 (n + 1)).toNat) (A003665 (n + 3))

end

end A270062.P2301881740504092589

namespace A270062

/-- `A270061(A340266(n+1))%A003665(n+3)` -/
def P2301881740504092589.Spec : Prop :=
  ∀ n, P2301881740504092589.a n = A270062 n

end A270062

/-!
# A270063: Number of tilings of a 3 X n rectangle using monominoes and trominoes of any shape.

The programs for A270063, there is no canonical definition to state claims against.
-/

/-! ## A270063.P7292142271706265123

`A270061(∑[n+3]+n+3)`
-/

namespace A270063.P7292142271706265123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A270063.P7292142271706265123

/-! ## A270063.P1069181841980763877

`record[gcd(A004248(n+4), A270061(n))]`
-/

namespace A270063.P1069181841980763877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004248 (n + 4)) (A270061 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270063.P1069181841980763877

/-! ## A270063.P6121515915433624484

`record[A010054(n+1)*A270061(n+4)]`
-/

namespace A270063.P6121515915433624484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A270061 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270063.P6121515915433624484

/-! ## A270063.P16360910362157358096

`A270061(A167614(n+2))^A019425(2*n)`
-/

namespace A270063.P16360910362157358096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270061 (A167614 (n + 2)).toNat : ℚ) ^ (A019425 (2 * n) : ℤ)

end

end A270063.P16360910362157358096

/-! ## A270063.P17794775632803623902

`A270061(A167614(n+2))%A199128(2*n+3)`
-/

namespace A270063.P17794775632803623902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270061 (A167614 (n + 2)).toNat) (A199128 (2 * n + 3))

end

end A270063.P17794775632803623902

/-!
# A270064: Number of tilings of a 4 X n rectangle using monominoes and trominoes of any shape.

The programs for A270064, there is no canonical definition to state claims against.
-/

/-! ## A270064.P16179920393544060629

`A270061(eq[4, A002262(n)])`
-/

namespace A270064.P16179920393544060629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270064.P16179920393544060629

/-! ## A270064.P3021991927727883112

`A270061(eq[4, A025581(n)])`
-/

namespace A270064.P3021991927727883112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270064.P3021991927727883112

/-! ## A270064.P14635789205355864781

`A270061(eq[8, A193588(n)])`
-/

namespace A270064.P14635789205355864781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270064.P14635789205355864781

/-! ## A270064.P10247810396911951019

`A270061(eq[5, A002260(n+1)])`
-/

namespace A270064.P10247810396911951019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270064.P10247810396911951019

/-! ## A270064.P7998679882394198887

`A270061(eq[5, A004736(n+1)])`
-/

namespace A270064.P7998679882394198887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270064.P7998679882394198887

/-!
# A270065: Number of tilings of a 5 X n rectangle using monominoes and trominoes of any shape.

The programs for A270065, there is no canonical definition to state claims against.
-/

/-! ## A270065.P16046638000600621442

`A270061(eq[5, A002262(n)])`
-/

namespace A270065.P16046638000600621442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270065.P16046638000600621442

/-! ## A270065.P4448050080096758117

`A270061(eq[5, A025581(n)])`
-/

namespace A270065.P4448050080096758117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270065.P4448050080096758117

/-! ## A270065.P2415461189720480405

`A270061(eq[6, A193739(n)])`
-/

namespace A270065.P2415461189720480405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270065.P2415461189720480405

/-! ## A270065.P2630351096356027524

`A270061(Δ[A023551(n+1)])`
-/

namespace A270065.P2630351096356027524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (f1 (n + 1) - f1 n).toNat

end

end A270065.P2630351096356027524

/-! ## A270065.P7636278033201139608

`A270061(eq[5, A130270(n+1)])`
-/

namespace A270065.P7636278033201139608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270065.P7636278033201139608

/-!
# A270066: Number of tilings of a 6 X n rectangle using monominoes and trominoes of any shape.

The programs for A270066, there is no canonical definition to state claims against.
-/

/-! ## A270066.P6761514709651786875

`A270061(eq[6, A002262(n)])`
-/

namespace A270066.P6761514709651786875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270066.P6761514709651786875

/-! ## A270066.P1037558197216705942

`A270061(eq[6, A025581(n)])`
-/

namespace A270066.P1037558197216705942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270066.P1037558197216705942

/-! ## A270066.P15903636708610896109

`A270061(eq[7, A193739(n)])`
-/

namespace A270066.P15903636708610896109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270066.P15903636708610896109

/-! ## A270066.P3718229016242925037

`A270061(eq[4, A104512(n+1)])`
-/

namespace A270066.P3718229016242925037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270066.P3718229016242925037

/-! ## A270066.P9111782736006217420

`A270061(eq[7, A002260(n+1)])`
-/

namespace A270066.P9111782736006217420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270066.P9111782736006217420

/-!
# A270067: Number of tilings of a 7 X n rectangle using monominoes and trominoes of any shape.

The programs for A270067, there is no canonical definition to state claims against.
-/

/-! ## A270067.P16788670154661103215

`A270061(eq[7, A002262(n)])`
-/

namespace A270067.P16788670154661103215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270067.P16788670154661103215

/-! ## A270067.P2803870628139972689

`A270061(eq[7, A025581(n)])`
-/

namespace A270067.P2803870628139972689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270067.P2803870628139972689

/-! ## A270067.P8577168681938235342

`A270061(eq[8, A193739(n)])`
-/

namespace A270067.P8577168681938235342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270067.P8577168681938235342

/-! ## A270067.P17948727837351367429

`A270061(eq[7, A130270(n+1)])`
-/

namespace A270067.P17948727837351367429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270067.P17948727837351367429

/-! ## A270067.P4810327886277791874

`A270061(eq[8, A002260(n+1)])`
-/

namespace A270067.P4810327886277791874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270067.P4810327886277791874

/-!
# A270068: Number of tilings of an 8 X n rectangle using monominoes and trominoes of any shape.

The programs for A270068, there is no canonical definition to state claims against.
-/

/-! ## A270068.P8002185660006065367

`A270061(eq[8, A002262(n)])`
-/

namespace A270068.P8002185660006065367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270068.P8002185660006065367

/-! ## A270068.P8342370305363080962

`A270061(eq[8, A025581(n)])`
-/

namespace A270068.P8342370305363080962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270068.P8342370305363080962

/-! ## A270068.P17646278556998387732

`A270061(eq[9, A193739(n)])`
-/

namespace A270068.P17646278556998387732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270068.P17646278556998387732

/-! ## A270068.P558103470214568139

`A270061(eq[8, A130270(n+1)])`
-/

namespace A270068.P558103470214568139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270068.P558103470214568139

/-! ## A270068.P15976342721844464110

`A270061(eq[9, A002260(n+1)])`
-/

namespace A270068.P15976342721844464110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270068.P15976342721844464110

/-!
# A270069: Number of tilings of a 9 X n rectangle using monominoes and trominoes of any shape.

The programs for A270069, there is no canonical definition to state claims against.
-/

/-! ## A270069.P15301799769119283831

`A270061(eq[9, A002262(n)])`
-/

namespace A270069.P15301799769119283831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270069.P15301799769119283831

/-! ## A270069.P8581351559428876627

`A270061(eq[9, A025581(n)])`
-/

namespace A270069.P8581351559428876627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270069.P8581351559428876627

/-! ## A270069.P17915084340858859027

`A270061(eq[10, A193739(n)])`
-/

namespace A270069.P17915084340858859027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270069.P17915084340858859027

/-! ## A270069.P16735852658840377886

`A270061(eq[9, A130270(n+1)])`
-/

namespace A270069.P16735852658840377886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270069.P16735852658840377886

/-! ## A270069.P16275592478696698067

`A270061(eq[10, A002260(n+1)])`
-/

namespace A270069.P16275592478696698067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270069.P16275592478696698067

/-!
# A270070: Number of tilings of a 10 X n rectangle using monominoes and trominoes of any shape.

The programs for A270070, there is no canonical definition to state claims against.
-/

/-! ## A270070.P13579944635642403397

`A270061(eq[10, A002262(n)])`
-/

namespace A270070.P13579944635642403397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270070.P13579944635642403397

/-!
# A270071: Number of tilings of an n X n square using monominoes and trominoes of any shape.

The programs for A270071, there is no canonical definition to state claims against.
-/

/-! ## A270071.P9799788854452580618

`A270061(∑[4*n])`
-/

namespace A270071.P9799788854452580618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270071.P9799788854452580618

/-! ## A270071.P6614792127371238412

`A270061(A046092(n))+A185037(n)`
-/

namespace A270071.P6614792127371238412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (A046092 n).toNat + A185037 n

end

end A270071.P6614792127371238412

/-! ## A270071.P7410461933676611933

`A270061(A046092(n))+A008683(40*(n+1))`
-/

namespace A270071.P7410461933676611933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270061 (A046092 n).toNat + A008683 (40 * (n + 1))

end

end A270071.P7410461933676611933

/-!
# A270073: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with x*y + 2*z*w a square, where x,y,z are nonnegative integers and w is an integer with x <= y and z >= |w|.

The programs for A270073, there is no canonical definition to state claims against.
-/

/-! ## A270073.P14866304792070995190

`A335294(A066173(n+1))-(floor(acot(n))-1)`
-/

namespace A270073.P14866304792070995190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335294 (A066173 (n + 1)).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A270073.P14866304792070995190

/-! ## A270073.P5279096573923761500

`A335294(A066173(n+1))+A213004(n)`
-/

namespace A270073.P5279096573923761500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335294 (A066173 (n + 1)).toNat + A213004 n

end

end A270073.P5279096573923761500

/-! ## A270073.P6720458605078612222

`A000005(gcd(A103391(n+1), A272253(n)))`
-/

namespace A270073.P6720458605078612222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A103391 (n + 1)) (A272253 n))

end

end A270073.P6720458605078612222

/-! ## A270073.P7764407273692028534

`A317791(A323901(n))+A030190(A323939(n+3))`
-/

namespace A270073.P7764407273692028534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317791 (A323901 n).toNat + A030190 (A323939 (n + 3)).toNat

end

end A270073.P7764407273692028534

/-! ## A270073.P14354820374729512832

`A001221(A206000(n)+A007899(n))`
-/

namespace A270073.P14354820374729512832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A206000 n + A007899 n).toNat

end

end A270073.P14354820374729512832

/-!
# A270075: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 57", based on the 5-celled von Neumann neighborhood.

The programs for A270075, there is no canonical definition to state claims against.
-/

/-! ## A270075.P12100007193244434162

`∑[A270078(abs(1-n))]`
-/

namespace A270075.P12100007193244434162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270078 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270075.P12100007193244434162

/-! ## A270075.P2852742863959250369

`A270078(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270075.P2852742863959250369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270078 (n - 1) + a (n - 1)

end

end A270075.P2852742863959250369

/-! ## A270075.P2202179758232305644

`Δ[A270077(n)]-A270078(n)`
-/

namespace A270075.P2202179758232305644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270078 n

end

end A270075.P2202179758232305644

/-! ## A270075.P1544435721430287457

`∑[A270078(n-A019426(2*n))]-2`
-/

namespace A270075.P1544435721430287457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270078 ((n : ℤ) - A019426 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A270075.P1544435721430287457

/-! ## A270075.P9469368370704288984

`A270077(n+1)-(A270078(n)+A270077(n))`
-/

namespace A270075.P9469368370704288984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270077 (n + 1) - (A270078 n + A270077 n)

end

end A270075.P9469368370704288984

/-!
# A270076: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 57", based on the 5-celled von Neumann neighborhood.

The programs for A270076, there is no canonical definition to state claims against.
-/

/-! ## A270076.P11594827252641246488

`A270075(2^n-1)`
-/

namespace A270076.P11594827252641246488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270075 (2 ^ n - 1)

end

end A270076.P11594827252641246488

/-! ## A270076.P16383808864499693330

`record[A270075(A303763(n))]`
-/

namespace A270076.P16383808864499693330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270075 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270076.P16383808864499693330

/-! ## A270076.P11408518286921613889

`record[A270075(A243071(n+1))]`
-/

namespace A270076.P11408518286921613889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270075 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270076.P11408518286921613889

/-! ## A270076.P12505079269589711448

`record[A270075(A245611(n+1))]`
-/

namespace A270076.P12505079269589711448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270075 (A245611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270076.P12505079269589711448

/-! ## A270076.P3577108987460196469

`record[A270075(A269386(n+1))]`
-/

namespace A270076.P3577108987460196469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270075 (A269386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270076.P3577108987460196469

/-!
# A270077: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 57", based on the 5-celled von Neumann neighborhood.

The programs for A270077, there is no canonical definition to state claims against.
-/

/-! ## A270077.P3111940381313986247

`∑[∑[A270078(abs(1-n))]]`
-/

namespace A270077.P3111940381313986247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270078 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270077.P3111940381313986247

/-! ## A270077.P7776898664740240561

`∑[A270078(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270077.P7776898664740240561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270078 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270077.P7776898664740240561

/-! ## A270077.P15671126653749272565

`∑[A270075(n)]`
-/

namespace A270077.P15671126653749272565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270077.P15671126653749272565

/-! ## A270077.P12274922206272194113

`A270075(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270077.P12274922206272194113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270075 n + a (A023443 n).toNat

end

end A270077.P12274922206272194113

/-! ## A270077.P18006786819247563489

`a(n-1)-A057428(n)*A270075(n)` with `a(0)=1`
-/

namespace A270077.P18006786819247563489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A057428 n * A270075 n

end

end A270077.P18006786819247563489

/-!
# A270078: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 57", based on the 5-celled von Neumann neighborhood.

The programs for A270078, there is no canonical definition to state claims against.
-/

/-! ## A270078.P4098694361763027056

`Δ[A270075(n)]`
-/

namespace A270078.P4098694361763027056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270078.P4098694361763027056

/-! ## A270078.P18026537097570620833

`A270075(n+1)-A270075(n)`
-/

namespace A270078.P18026537097570620833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270075 (n + 1) - A270075 n

end

end A270078.P18026537097570620833

/-! ## A270078.P16924877091025878508

`A269875(n)+A034333(A034332(n))`
-/

namespace A270078.P16924877091025878508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269875 n + A034333 (A034332 n).toNat

end

end A270078.P16924877091025878508

/-! ## A270078.P5345916881430567071

`A034333(A034332(n))+Δ[A269872(n)]`
-/

namespace A270078.P5345916881430567071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034333 (A034332 n).toNat + (f1 (n + 1) - f1 n)

end

end A270078.P5345916881430567071

/-!
# A270079: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 62", based on the 5-celled von Neumann neighborhood.

The programs for A270079, the canonical program `A270079.P681027712921930782` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270079 has offset 0).

The definition of A270079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3768 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270079.P681027712921930782

`ogf((1+4x+6x^2+4x^3+4x^4+6x^6-12x^7-x^8+4x^9+4x^10-4x^12)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270079

/-- `ogf((1+4x+6x^2+4x^3+4x^4+6x^6-12x^7-x^8+4x^9+4x^10-4x^12)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))` -/
def P681027712921930782.Spec : Prop :=
  ∀ n, P681027712921930782.a n = A270079 n

theorem P681027712921930782.correct : P681027712921930782.Spec := by
  intro n
  simp only [A270079]

end A270079

/-! ## A270079.P9411781366078415151

`A270082(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270079.P9411781366078415151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270082 (n - 1) + a (n - 1)

end

end A270079.P9411781366078415151

namespace A270079

/-- `A270082(n-1)+a(n-1)` -/
def P9411781366078415151.Spec : Prop :=
  ∀ n, P9411781366078415151.a n = A270079 n

end A270079

/-! ## A270079.P650375618120619653

`1+∑[A270082(n)]-A270082(n)`
-/

namespace A270079.P650375618120619653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j - A270082 n)

end

end A270079.P650375618120619653

namespace A270079

/-- `1+∑[A270082(n)]-A270082(n)` -/
def P650375618120619653.Spec : Prop :=
  ∀ n, P650375618120619653.a n = A270079 n

end A270079

/-! ## A270079.P6436610168063562613

`∑[A270082(n-A019426(2*n))]-3`
-/

namespace A270079.P6436610168063562613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270082 ((n : ℤ) - A019426 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A270079.P6436610168063562613

namespace A270079

/-- `∑[A270082(n-A019426(2*n))]-3` -/
def P6436610168063562613.Spec : Prop :=
  ∀ n, P6436610168063562613.a n = A270079 n

end A270079

/-! ## A270079.P18042050265089098819

`Δ[A270081(n)]-A270082(n)`
-/

namespace A270079.P18042050265089098819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270082 n

end

end A270079.P18042050265089098819

namespace A270079

/-- `Δ[A270081(n)]-A270082(n)` -/
def P18042050265089098819.Spec : Prop :=
  ∀ n, P18042050265089098819.a n = A270079 n

end A270079

/-! ## A270079.P12598472623206200752

`A270081(n+1)-(A270082(n)+A270081(n))`
-/

namespace A270079.P12598472623206200752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270081 (n + 1) - (A270082 n + A270081 n)

end

end A270079.P12598472623206200752

namespace A270079

/-- `A270081(n+1)-(A270082(n)+A270081(n))` -/
def P12598472623206200752.Spec : Prop :=
  ∀ n, P12598472623206200752.a n = A270079 n

end A270079

/-!
# A270080: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 62", based on the 5-celled von Neumann neighborhood.

The programs for A270080, the canonical program `A270080.P715026606612798424` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270080 has offset 0).

The definition of A270080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270080.P715026606612798424

`ogf((1-2x-x^2-6x^3+16x^4-32x^5)/(1-7x+14x^2-8x^3))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270080

/-- `ogf((1-2x-x^2-6x^3+16x^4-32x^5)/(1-7x+14x^2-8x^3))` -/
def P715026606612798424.Spec : Prop :=
  ∀ n, P715026606612798424.a n = A270080 n

theorem P715026606612798424.correct : P715026606612798424.Spec := by
  intro n
  simp only [A270080]

end A270080

/-! ## A270080.P5823679531338004023

`A270079(2^n-1)`
-/

namespace A270080.P5823679531338004023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270079 (2 ^ n - 1)

end

end A270080.P5823679531338004023

namespace A270080

/-- `A270079(2^n-1)` -/
def P5823679531338004023.Spec : Prop :=
  ∀ n, P5823679531338004023.a n = A270080 n

end A270080

/-! ## A270080.P3819092466454016134

`and(-1, A270079(A000225(n)))`
-/

namespace A270080.P3819092466454016134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A270079 (A000225 n).toNat)

end

end A270080.P3819092466454016134

namespace A270080

/-- `and(-1, A270079(A000225(n)))` -/
def P3819092466454016134.Spec : Prop :=
  ∀ n, P3819092466454016134.a n = A270080 n

end A270080

/-! ## A270080.P6923805757378027880

`record[A270079(A324876(n+1))]`
-/

namespace A270080.P6923805757378027880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270079 (A324876 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270080.P6923805757378027880

namespace A270080

/-- `record[A270079(A324876(n+1))]` -/
def P6923805757378027880.Spec : Prop :=
  ∀ n, P6923805757378027880.a n = A270080 n

end A270080

/-! ## A270080.P15854577852497721515

`record[gcd(A048881(n), A270079(n))]`
-/

namespace A270080.P15854577852497721515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048881 n) (A270079 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270080.P15854577852497721515

namespace A270080

/-- `record[gcd(A048881(n), A270079(n))]` -/
def P15854577852497721515.Spec : Prop :=
  ∀ n, (P15854577852497721515.a n : ℤ) = A270080 n

end A270080

/-!
# A270081: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 62", based on the 5-celled von Neumann neighborhood.

The programs for A270081, the canonical program `A270081.P8653093028297891026` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270081 has offset 0).

The definition of A270081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270081.P8653093028297891026

`ogf((1+4x+6x^2+4x^3+4x^4+6x^6-12x^7-x^8+4x^9+4x^10-4x^12)/(1-2x+2x^3-2x^4+2x^5-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270081

/-- `ogf((1+4x+6x^2+4x^3+4x^4+6x^6-12x^7-x^8+4x^9+4x^10-4x^12)/(1-2x+2x^3-2x^4+2x^5-2x^7+x^8))` -/
def P8653093028297891026.Spec : Prop :=
  ∀ n, P8653093028297891026.a n = A270081 n

theorem P8653093028297891026.correct : P8653093028297891026.Spec := by
  intro n
  simp only [A270081]

end A270081

/-! ## A270081.P11286072182335386265

`∑[A270079(n)]`
-/

namespace A270081.P11286072182335386265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270081.P11286072182335386265

namespace A270081

/-- `∑[A270079(n)]` -/
def P11286072182335386265.Spec : Prop :=
  ∀ n, P11286072182335386265.a n = A270081 n

end A270081

/-! ## A270081.P14630046862482545440

`∑[∑[A270082(n)]+1-A270082(n)]`
-/

namespace A270081.P14630046862482545440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270082 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270082 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270081.P14630046862482545440

namespace A270081

/-- `∑[∑[A270082(n)]+1-A270082(n)]` -/
def P14630046862482545440.Spec : Prop :=
  ∀ n, P14630046862482545440.a n = A270081 n

end A270081

/-! ## A270081.P5341650608354992352

`a(n-1)+lcm(A033999(n), A270079(n))` with `a(0)=1`
-/

namespace A270081.P5341650608354992352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A033999 n) (A270079 n)

end

end A270081.P5341650608354992352

namespace A270081

/-- `a(n-1)+lcm(A033999(n), A270079(n))` -/
def P5341650608354992352.Spec : Prop :=
  ∀ n, (P5341650608354992352.a n : ℤ) = A270081 n

end A270081

/-! ## A270081.P9987582518100768055

`a(n-1)+A270079(n)%A069097(n+2)` with `a(0)=1`
-/

namespace A270081.P9987582518100768055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270079 n) (A069097 (n + 2))

end

end A270081.P9987582518100768055

namespace A270081

/-- `a(n-1)+A270079(n)%A069097(n+2)` -/
def P9987582518100768055.Spec : Prop :=
  ∀ n, P9987582518100768055.a n = A270081 n

end A270081

/-! ## A270081.P14209201045628406574

`a(n-1)+A001222(A053670(n+1))*A270079(n)` with `a(0)=1`
-/

namespace A270081.P14209201045628406574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001222 (A053670 (n + 1)).toNat * A270079 n

end

end A270081.P14209201045628406574

namespace A270081

/-- `a(n-1)+A001222(A053670(n+1))*A270079(n)` -/
def P14209201045628406574.Spec : Prop :=
  ∀ n, P14209201045628406574.a n = A270081 n

end A270081

/-! ## A270081.P15066861989675676093

`A270079(A002264(3*n))+a(n-1)` with `a(0)=1`
-/

namespace A270081.P15066861989675676093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270079 (A002264 (3 * n)).toNat + a (n - 1)

end

end A270081.P15066861989675676093

namespace A270081

/-- `A270079(A002264(3*n))+a(n-1)` -/
def P15066861989675676093.Spec : Prop :=
  ∀ n, P15066861989675676093.a n = A270081 n

end A270081

/-!
# A270082: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 62", based on the 5-celled von Neumann neighborhood.

The programs for A270082, the canonical program `A270082.P18345226345258167517` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270082 has offset 0).

The definition of A270082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3785 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270082.P18345226345258167517

`ogf((4+7x+4x^2+5x^3+5x^5-12x^6-x^7+4x^8+4x^9-4x^11)/(1-x^2-x^4+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270082

/-- `ogf((4+7x+4x^2+5x^3+5x^5-12x^6-x^7+4x^8+4x^9-4x^11)/(1-x^2-x^4+x^6))` -/
def P18345226345258167517.Spec : Prop :=
  ∀ n, P18345226345258167517.a n = A270082 n

theorem P18345226345258167517.correct : P18345226345258167517.Spec := by
  intro n
  simp only [A270082]

end A270082

/-! ## A270082.P8549498884570810842

`Δ[A270079(n)]`
-/

namespace A270082.P8549498884570810842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270082.P8549498884570810842

namespace A270082

/-- `Δ[A270079(n)]` -/
def P8549498884570810842.Spec : Prop :=
  ∀ n, P8549498884570810842.a n = A270082 n

end A270082

/-! ## A270082.P17999540906417754332

`A270079(n+1)-A270079(n)`
-/

namespace A270082.P17999540906417754332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270079 (n + 1) - A270079 n

end

end A270082.P17999540906417754332

namespace A270082

/-- `A270079(n+1)-A270079(n)` -/
def P17999540906417754332.Spec : Prop :=
  ∀ n, P17999540906417754332.a n = A270082 n

end A270082

/-!
# A270083: Near-miss circular primes: Primes p where all but one of the numbers obtained by cyclically permuting the digits of p are prime.

The programs for A270083, there is no canonical definition to state claims against.
-/

/-! ## A270083.P15348874916452945188

`A115060(∪[A286333(n+1), A286415(n+1)])`
-/

namespace A270083.P15348874916452945188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286415 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A270083.P15348874916452945188

/-! ## A270083.P3125186507778353477

`A286333(A077342(n+1))`
-/

namespace A270083.P3125186507778353477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286333 (A077342 (n + 1)).toNat

end

end A270083.P3125186507778353477

/-! ## A270083.P13038101288473642251

`A286333(A242474(n+1))`
-/

namespace A270083.P13038101288473642251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286333 (A242474 (n + 1)).toNat

end

end A270083.P13038101288473642251

/-! ## A270083.P1888066645143619765

`A286333(A351374(n+1))`
-/

namespace A270083.P1888066645143619765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286333 (A351374 (n + 1)).toNat

end

end A270083.P1888066645143619765

/-! ## A270083.P16681076416356120748

`A286333(A151764(n+1))`
-/

namespace A270083.P16681076416356120748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286333 (A151764 (n + 1)).toNat

end

end A270083.P16681076416356120748

/-!
# A270084: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

The programs for A270084, the canonical program `A270084.P14756662907204384475` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270084 has offset 0).

The definition of A270084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270084.P16322308546393577732

`ogf((1-3x+22x^2-16x^3+32x^4)/(1-7x+14x^2-8x^3))`
-/

namespace A270084.P16322308546393577732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 22, -16, 32] [1, -7, 14, -8] n

end

end A270084.P16322308546393577732

namespace A270084

/-- `ogf((1-3x+22x^2-16x^3+32x^4)/(1-7x+14x^2-8x^3))` -/
def P16322308546393577732.Spec : Prop :=
  ∀ n, P16322308546393577732.a n = A270084 n

end A270084

/-! ## A270084.P2245012217076811071

`A271254(n)-char[1]`
-/

namespace A270084.P2245012217076811071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271254 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270084.P2245012217076811071

namespace A270084

/-- `A271254(n)-char[1]` -/
def P2245012217076811071.Spec : Prop :=
  ∀ n, P2245012217076811071.a n = A270084 n

end A270084

/-! ## A270084.P9054760241475296114

`xor(A063524(n), A271254(n))`
-/

namespace A270084.P9054760241475296114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A271254 n)

end

end A270084.P9054760241475296114

namespace A270084

/-- `xor(A063524(n), A271254(n))` -/
def P9054760241475296114.Spec : Prop :=
  ∀ n, P9054760241475296114.a n = A270084 n

end A270084

/-! ## A270084.P3860158530288874630

`and(-A000034(n), A271254(n))`
-/

namespace A270084.P3860158530288874630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000034 n) (A271254 n)

end

end A270084.P3860158530288874630

namespace A270084

/-- `and(-A000034(n), A271254(n))` -/
def P3860158530288874630.Spec : Prop :=
  ∀ n, P3860158530288874630.a n = A270084 n

end A270084

/-! ## A270084.P953976969773052500

`and(-A010702(n), A271254(n))`
-/

namespace A270084.P953976969773052500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A010702 n) (A271254 n)

end

end A270084.P953976969773052500

namespace A270084

/-- `and(-A010702(n), A271254(n))` -/
def P953976969773052500.Spec : Prop :=
  ∀ n, P953976969773052500.a n = A270084 n

end A270084

/-! ## A270084.P5955293736371517333

`xor(char[A016998(n)], A271254(n))`
-/

namespace A270084.P5955293736371517333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016998 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A271254 n)

end

end A270084.P5955293736371517333

namespace A270084

/-- `xor(char[A016998(n)], A271254(n))` -/
def P5955293736371517333.Spec : Prop :=
  ∀ n, P5955293736371517333.a n = A270084 n

end A270084

/-! ## A270084.P6901061270684995885

`xor(char[A053397(n+1)], A271254(n))`
-/

namespace A270084.P6901061270684995885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053397 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A271254 n)

end

end A270084.P6901061270684995885

namespace A270084

/-- `xor(char[A053397(n+1)], A271254(n))` -/
def P6901061270684995885.Spec : Prop :=
  ∀ n, P6901061270684995885.a n = A270084 n

end A270084

/-! ## A270084.P13435758527187619915

`and(-A020639(A105267(n)), A271254(n))`
-/

namespace A270084.P13435758527187619915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A020639 (A105267 n).toNat) (A271254 n)

end

end A270084.P13435758527187619915

namespace A270084

/-- `and(-A020639(A105267(n)), A271254(n))` -/
def P13435758527187619915.Spec : Prop :=
  ∀ n, P13435758527187619915.a n = A270084 n

end A270084

/-! ## A270084.P7350388090301770793

`A269782(n)+A271254(n)-A270569(n)`
-/

namespace A270084.P7350388090301770793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 n + (A271254 n - A270569 n)

end

end A270084.P7350388090301770793

namespace A270084

/-- `A269782(n)+A271254(n)-A270569(n)` -/
def P7350388090301770793.Spec : Prop :=
  ∀ n, P7350388090301770793.a n = A270084 n

end A270084

/-! ## A270084.P14756662907204384475

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=4, a(2)=36, a(3)=188, a(4)=876`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270084

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P14756662907204384475.Spec : Prop :=
  ∀ n, P14756662907204384475.a n = A270084 n

theorem P14756662907204384475.correct : P14756662907204384475.Spec := by
  intro n
  simp only [A270084]

end A270084

/-!
# A270085: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

The programs for A270085, the canonical program `A270085.P11664107092207294004` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270085 has offset 0).

The definition of A270085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270085.P11664107092207294004

`ogf((1+4x+2x^2+24x^3-3x^4+4x^6+4x^7-8x^8+4x^10)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270085

/-- `ogf((1+4x+2x^2+24x^3-3x^4+4x^6+4x^7-8x^8+4x^10)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P11664107092207294004.Spec : Prop :=
  ∀ n, P11664107092207294004.a n = A270085 n

theorem P11664107092207294004.correct : P11664107092207294004.Spec := by
  intro n
  simp only [A270085]

end A270085

/-! ## A270085.P6241898512132725586

`∑[A269782(n)]`
-/

namespace A270085.P6241898512132725586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270085.P6241898512132725586

namespace A270085

/-- `∑[A269782(n)]` -/
def P6241898512132725586.Spec : Prop :=
  ∀ n, P6241898512132725586.a n = A270085 n

end A270085

/-! ## A270085.P11703505439840026919

`∑[∑[A270086(abs(1-n))]]`
-/

namespace A270085.P11703505439840026919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270086 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270085.P11703505439840026919

namespace A270085

/-- `∑[∑[A270086(abs(1-n))]]` -/
def P11703505439840026919.Spec : Prop :=
  ∀ n, P11703505439840026919.a n = A270085 n

end A270085

/-! ## A270085.P8237421076716815189

`A271255(n)+A057428(n)`
-/

namespace A270085.P8237421076716815189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271255 n + A057428 n

end

end A270085.P8237421076716815189

namespace A270085

/-- `A271255(n)+A057428(n)` -/
def P8237421076716815189.Spec : Prop :=
  ∀ n, P8237421076716815189.a n = A270085 n

end A270085

/-! ## A270085.P5896673211616730890

`A271255(n)-A057427(n)`
-/

namespace A270085.P5896673211616730890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271255 n - A057427 n

end

end A270085.P5896673211616730890

namespace A270085

/-- `A271255(n)-A057427(n)` -/
def P5896673211616730890.Spec : Prop :=
  ∀ n, P5896673211616730890.a n = A270085 n

theorem P5896673211616730890.correct : P5896673211616730890.Spec := by
  intro n
  simp only [A270085, Nat.add_sub_cancel, A270085.P5896673211616730890.a, A270085.P11664107092207294004.a, A057427, A057427.P17645173493419391152.a, A271255, A271255.P14886121636550703059.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270085

/-! ## A270085.P10889923601252635042

`A000007(n)+A271255(n)-1`
-/

namespace A270085.P10889923601252635042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A271255 n - 1)

end

end A270085.P10889923601252635042

namespace A270085

/-- `A000007(n)+A271255(n)-1` -/
def P10889923601252635042.Spec : Prop :=
  ∀ n, P10889923601252635042.a n = A270085 n

end A270085

/-! ## A270085.P12325855699693489127

`A271255(n)-A019425(2*n)`
-/

namespace A270085.P12325855699693489127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271255 n - A019425 (2 * n)

end

end A270085.P12325855699693489127

namespace A270085

/-- `A271255(n)-A019425(2*n)` -/
def P12325855699693489127.Spec : Prop :=
  ∀ n, P12325855699693489127.a n = A270085 n

end A270085

/-! ## A270085.P17634722147409387376

`A271255(n)-A019427(2*n)`
-/

namespace A270085.P17634722147409387376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271255 n - A019427 (2 * n)

end

end A270085.P17634722147409387376

namespace A270085

/-- `A271255(n)-A019427(2*n)` -/
def P17634722147409387376.Spec : Prop :=
  ∀ n, P17634722147409387376.a n = A270085 n

end A270085

/-! ## A270085.P7462728435911534248

`A271255(n)-A019430(2*n)`
-/

namespace A270085.P7462728435911534248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271255 n - A019430 (2 * n)

end

end A270085.P7462728435911534248

namespace A270085

/-- `A271255(n)-A019430(2*n)` -/
def P7462728435911534248.Spec : Prop :=
  ∀ n, P7462728435911534248.a n = A270085 n

end A270085

/-! ## A270085.P15903492349753310168

`floor(A271255(n)-n/A269782(n))`
-/

namespace A270085.P15903492349753310168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A271255 n : ℚ) - (n : ℚ) / (A269782 n : ℚ)⌋

end

end A270085.P15903492349753310168

namespace A270085

/-- `floor(A271255(n)-n/A269782(n))` -/
def P15903492349753310168.Spec : Prop :=
  ∀ n, P15903492349753310168.a n = A270085 n

end A270085

/-! ## A270085.P11899167697238080280

`A271255(n)-A001221(A001316(n))`
-/

namespace A270085.P11899167697238080280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271255 n - A001221 (A001316 n).toNat

end

end A270085.P11899167697238080280

namespace A270085

/-- `A271255(n)-A001221(A001316(n))` -/
def P11899167697238080280.Spec : Prop :=
  ∀ n, P11899167697238080280.a n = A270085 n

end A270085

/-! ## A270085.P9024993252188356716

`A271255(n)-A019425(A019425(n))²`
-/

namespace A270085.P9024993252188356716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271255 n - A019425 (A019425 n).toNat ^ 2

end

end A270085.P9024993252188356716

namespace A270085

/-- `A271255(n)-A019425(A019425(n))²` -/
def P9024993252188356716.Spec : Prop :=
  ∀ n, P9024993252188356716.a n = A270085 n

end A270085

/-! ## A270085.P14412112332113954946

`A271255(n)-A271256(n+1)/A270086(n+1)`
-/

namespace A270085.P14412112332113954946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271255 n : ℚ) - (A271256 (n + 1) : ℚ) / (A270086 (n + 1) : ℚ)

end

end A270085.P14412112332113954946

namespace A270085

/-- `A271255(n)-A271256(n+1)/A270086(n+1)` -/
def P14412112332113954946.Spec : Prop :=
  ∀ n, P14412112332113954946.a n = (A270085 n : ℚ)

end A270085

/-! ## A270085.P4495956108500713605

`A271255(n+1)-(A269782(n+1)+1)`
-/

namespace A270085.P4495956108500713605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271255 (n + 1) - (A269782 (n + 1) + 1)

end

end A270085.P4495956108500713605

namespace A270085

/-- `A271255(n+1)-(A269782(n+1)+1)` -/
def P4495956108500713605.Spec : Prop :=
  ∀ n, P4495956108500713605.a n = A270085 n

end A270085

/-! ## A270085.P10736109266897710920

`∑[A270569(n)-char[1]]`
-/

namespace A270085.P10736109266897710920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270569 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270085.P10736109266897710920

namespace A270085

/-- `∑[A270569(n)-char[1]]` -/
def P10736109266897710920.Spec : Prop :=
  ∀ n, P10736109266897710920.a n = A270085 n

end A270085

/-! ## A270085.P17876039307923050294

`∑[A270569(n)]-A057427(n)`
-/

namespace A270085.P17876039307923050294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A270085.P17876039307923050294

namespace A270085

/-- `∑[A270569(n)]-A057427(n)` -/
def P17876039307923050294.Spec : Prop :=
  ∀ n, P17876039307923050294.a n = A270085 n

end A270085

/-! ## A270085.P3171936080969957301

`A000007(n)+∑[A270569(n)]-1`
-/

namespace A270085.P3171936080969957301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A270085.P3171936080969957301

namespace A270085

/-- `A000007(n)+∑[A270569(n)]-1` -/
def P3171936080969957301.Spec : Prop :=
  ∀ n, P3171936080969957301.a n = A270085 n

end A270085

/-! ## A270085.P15194501004680191436

`floor(A271255(n)-n/A270569(n))`
-/

namespace A270085.P15194501004680191436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A271255 n : ℚ) - (n : ℚ) / (A270569 n : ℚ)⌋

end

end A270085.P15194501004680191436

namespace A270085

/-- `floor(A271255(n)-n/A270569(n))` -/
def P15194501004680191436.Spec : Prop :=
  ∀ n, P15194501004680191436.a n = A270085 n

end A270085

/-! ## A270085.P18017319303352901460

`∑[A270569(n)]-and(1, A000040(n+1))`
-/

namespace A270085.P18017319303352901460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.land 1 (A000040 (n + 1))

end

end A270085.P18017319303352901460

namespace A270085

/-- `∑[A270569(n)]-and(1, A000040(n+1))` -/
def P18017319303352901460.Spec : Prop :=
  ∀ n, P18017319303352901460.a n = A270085 n

end A270085

/-!
# A270086: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

The programs for A270086, the canonical program `A270086.P2396481233063048726` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270086 has offset 0).

The definition of A270086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270086.P2396481233063048726

`ogf((3+4x+26x^2-4x^3-x^4+4x^5+4x^6-8x^7+4x^9)/(1+x-2x^2-2x^3+x^4+x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270086

/-- `ogf((3+4x+26x^2-4x^3-x^4+4x^5+4x^6-8x^7+4x^9)/(1+x-2x^2-2x^3+x^4+x^5))` -/
def P2396481233063048726.Spec : Prop :=
  ∀ n, P2396481233063048726.a n = A270086 n

theorem P2396481233063048726.correct : P2396481233063048726.Spec := by
  intro n
  simp only [A270086]

end A270086

/-! ## A270086.P15120257735972061515

`Δ[A269782(n)]`
-/

namespace A270086.P15120257735972061515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270086.P15120257735972061515

namespace A270086

/-- `Δ[A269782(n)]` -/
def P15120257735972061515.Spec : Prop :=
  ∀ n, P15120257735972061515.a n = A270086 n

end A270086

/-! ## A270086.P2069810573889425345

`A271256(n)-A154955(n+1)`
-/

namespace A270086.P2069810573889425345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271256 n - A154955 (n + 1)

end

end A270086.P2069810573889425345

namespace A270086

/-- `A271256(n)-A154955(n+1)` -/
def P2069810573889425345.Spec : Prop :=
  ∀ n, P2069810573889425345.a n = A270086 n

end A270086

/-! ## A270086.P13703533922419369462

`A269782(n+1)-A269782(n)`
-/

namespace A270086.P13703533922419369462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 (n + 1) - A269782 n

end

end A270086.P13703533922419369462

namespace A270086

/-- `A269782(n+1)-A269782(n)` -/
def P13703533922419369462.Spec : Prop :=
  ∀ n, P13703533922419369462.a n = A270086 n

end A270086

/-! ## A270086.P17432374764760065939

`or(1, A271256(n)-A267142(n))`
-/

namespace A270086.P17432374764760065939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A271256 n - A267142 n)

end

end A270086.P17432374764760065939

namespace A270086

/-- `or(1, A271256(n)-A267142(n))` -/
def P17432374764760065939.Spec : Prop :=
  ∀ n, P17432374764760065939.a n = A270086 n

end A270086

/-! ## A270086.P12238064213773437000

`or(1, ∑[A271256(n)]-A269782(n))`
-/

namespace A270086.P12238064213773437000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j - A269782 n)

end

end A270086.P12238064213773437000

namespace A270086

/-- `or(1, ∑[A271256(n)]-A269782(n))` -/
def P12238064213773437000.Spec : Prop :=
  ∀ n, P12238064213773437000.a n = A270086 n

end A270086

/-! ## A270086.P5587496224909343818

`A271256(n)+A008683(A273481(n))`
-/

namespace A270086.P5587496224909343818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271256 n + A008683 (A273481 n).toNat

end

end A270086.P5587496224909343818

namespace A270086

/-- `A271256(n)+A008683(A273481(n))` -/
def P5587496224909343818.Spec : Prop :=
  ∀ n, P5587496224909343818.a n = A270086 n

end A270086

/-! ## A270086.P16892940230789757597

`A271256(n)-A008683(A004166(n))`
-/

namespace A270086.P16892940230789757597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271256 n - A008683 (A004166 n).toNat

end

end A270086.P16892940230789757597

namespace A270086

/-- `A271256(n)-A008683(A004166(n))` -/
def P16892940230789757597.Spec : Prop :=
  ∀ n, P16892940230789757597.a n = A270086 n

end A270086

/-! ## A270086.P13759244912855086660

`A271256(n)-A008683(A062383(n))`
-/

namespace A270086.P13759244912855086660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271256 n - A008683 (A062383 n).toNat

end

end A270086.P13759244912855086660

namespace A270086

/-- `A271256(n)-A008683(A062383(n))` -/
def P13759244912855086660.Spec : Prop :=
  ∀ n, P13759244912855086660.a n = A270086 n

end A270086

/-! ## A270086.P9448569048758480243

`A271256(n)+A008683(2*A004166(n))`
-/

namespace A270086.P9448569048758480243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271256 n + A008683 (2 * A004166 n).toNat

end

end A270086.P9448569048758480243

namespace A270086

/-- `A271256(n)+A008683(2*A004166(n))` -/
def P9448569048758480243.Spec : Prop :=
  ∀ n, P9448569048758480243.a n = A270086 n

end A270086

/-! ## A270086.P7269983157371085435

`A271256(n)-A008683(2*A273481(n))`
-/

namespace A270086.P7269983157371085435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271256 n - A008683 (2 * A273481 n).toNat

end

end A270086.P7269983157371085435

namespace A270086

/-- `A271256(n)-A008683(2*A273481(n))` -/
def P7269983157371085435.Spec : Prop :=
  ∀ n, P7269983157371085435.a n = A270086 n

end A270086

/-! ## A270086.P2797264974059741816

`Δ[A270569(n)-char[1]]`
-/

namespace A270086.P2797264974059741816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270569 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270086.P2797264974059741816

namespace A270086

/-- `Δ[A270569(n)-char[1]]` -/
def P2797264974059741816.Spec : Prop :=
  ∀ n, P2797264974059741816.a n = A270086 n

end A270086

/-! ## A270086.P11541337546215719877

`Δ[and(A000035(n+1)-2, A270569(n))]`
-/

namespace A270086.P11541337546215719877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000035 (n + 1) - 2) (A270569 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270086.P11541337546215719877

namespace A270086

/-- `Δ[and(A000035(n+1)-2, A270569(n))]` -/
def P11541337546215719877.Spec : Prop :=
  ∀ n, P11541337546215719877.a n = A270086 n

end A270086

/-! ## A270086.P8869807155410478242

`A271256(n)-A008683(A270681(n))`
-/

namespace A270086.P8869807155410478242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271256 n - A008683 (A270681 n).toNat

end

end A270086.P8869807155410478242

namespace A270086

/-- `A271256(n)-A008683(A270681(n))` -/
def P8869807155410478242.Spec : Prop :=
  ∀ n, P8869807155410478242.a n = A270086 n

end A270086

/-! ## A270086.P17368581739890239445

`A271256(n)+A008683(2*A270681(n))`
-/

namespace A270086.P17368581739890239445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271256 n + A008683 (2 * A270681 n).toNat

end

end A270086.P17368581739890239445

namespace A270086

/-- `A271256(n)+A008683(2*A270681(n))` -/
def P17368581739890239445.Spec : Prop :=
  ∀ n, P17368581739890239445.a n = A270086 n

end A270086

/-! ## A270086.P11716665825679883071

`Δ[and(A267890(n), A270569(n))]`
-/

namespace A270086.P11716665825679883071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267890 n) (A270569 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270086.P11716665825679883071

namespace A270086

/-- `Δ[and(A267890(n), A270569(n))]` -/
def P11716665825679883071.Spec : Prop :=
  ∀ n, P11716665825679883071.a n = A270086 n

end A270086

/-! ## A270086.P4391816365366162809

`A271256(n)+A103452(A000124(n))`
-/

namespace A270086.P4391816365366162809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271256 n + A103452 (A000124 n).toNat

end

end A270086.P4391816365366162809

namespace A270086

/-- `A271256(n)+A103452(A000124(n))` -/
def P4391816365366162809.Spec : Prop :=
  ∀ n, P4391816365366162809.a n = A270086 n

end A270086

/-!
# A270087: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

The programs for A270087, the canonical program `A270087.P11488874369850582451` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270087 has offset 0).

The definition of A270087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270087.P16429838311302765777

`ogf((1+4x+2x^2+28x^3-12x^4+13x^5+14x^6-22x^7-5x^8+9x^9)/(1-3x^2+3x^4-x^6))`
-/

namespace A270087.P16429838311302765777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 2, 28, -12, 13, 14, -22, -5, 9] [1, 0, -3, 0, 3, 0, -1] n

end

end A270087.P16429838311302765777

namespace A270087

/-- `ogf((1+4x+2x^2+28x^3-12x^4+13x^5+14x^6-22x^7-5x^8+9x^9)/(1-3x^2+3x^4-x^6))` -/
def P16429838311302765777.Spec : Prop :=
  ∀ n, P16429838311302765777.a n = A270087 n

end A270087

/-! ## A270087.P11488874369850582451

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=4, a(2)=5, a(3)=40, a(4)=0, a(5)=121, a(6)=0, a(7)=225, a(8)=0, a(9)=361`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A270087

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P11488874369850582451.Spec : Prop :=
  ∀ n, P11488874369850582451.a n = A270087 n

theorem P11488874369850582451.correct : P11488874369850582451.Spec := by
  intro n
  simp only [A270087]

end A270087

/-! ## A270087.P17954652007684882448

`∑[A270090(abs(1-n))]`
-/

namespace A270087.P17954652007684882448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270090 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270087.P17954652007684882448

namespace A270087

/-- `∑[A270090(abs(1-n))]` -/
def P17954652007684882448.Spec : Prop :=
  ∀ n, P17954652007684882448.a n = A270087 n

end A270087

/-! ## A270087.P7657250045829217874

`A270090(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270087.P7657250045829217874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270090 (n - 1) + a (n - 1)

end

end A270087.P7657250045829217874

namespace A270087

/-- `A270090(n-1)+a(n-1)` -/
def P7657250045829217874.Spec : Prop :=
  ∀ n, P7657250045829217874.a n = A270087 n

end A270087

/-! ## A270087.P7159847944077897361

`and(-A270090(n), ∑[A270090(n)])`
-/

namespace A270087.P7159847944077897361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A270090 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270087.P7159847944077897361

namespace A270087

/-- `and(-A270090(n), ∑[A270090(n)])` -/
def P7159847944077897361.Spec : Prop :=
  ∀ n, P7159847944077897361.a n = A270087 n

end A270087

/-! ## A270087.P1625953201841861214

`A270089(n+1)-(A270090(n)+A270089(n))`
-/

namespace A270087.P1625953201841861214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270089 (n + 1) - (A270090 n + A270089 n)

end

end A270087.P1625953201841861214

namespace A270087

/-- `A270089(n+1)-(A270090(n)+A270089(n))` -/
def P1625953201841861214.Spec : Prop :=
  ∀ n, P1625953201841861214.a n = A270087 n

end A270087

/-! ## A270087.P4942780603683129182

`and(Δ[A297402(n+1)], A270129(n))`
-/

namespace A270087.P4942780603683129182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A270129 n)

end

end A270087.P4942780603683129182

namespace A270087

/-- `and(Δ[A297402(n+1)], A270129(n))` -/
def P4942780603683129182.Spec : Prop :=
  ∀ n, P4942780603683129182.a n = A270087 n

end A270087

/-! ## A270087.P17494558458725154942

`A270129(n)-and(A001787(n), A003099(n))`
-/

namespace A270087.P17494558458725154942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270129 n - Int.land (A001787 n) (A003099 n)

end

end A270087.P17494558458725154942

namespace A270087

/-- `A270129(n)-and(A001787(n), A003099(n))` -/
def P17494558458725154942.Spec : Prop :=
  ∀ n, P17494558458725154942.a n = A270087 n

end A270087

/-! ## A270087.P10470276655652113178

`A270129(n)-and(4, A001815(n))`
-/

namespace A270087.P10470276655652113178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270129 n - Int.land 4 (A001815 n)

end

end A270087.P10470276655652113178

namespace A270087

/-- `A270129(n)-and(4, A001815(n))` -/
def P10470276655652113178.Spec : Prop :=
  ∀ n, P10470276655652113178.a n = A270087 n

end A270087

/-!
# A270088: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

The programs for A270088, the canonical program `A270088.P5283542168159360007` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270088 has offset 0).

The definition of A270088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270088.P1663445406494942358

`ogf((1-3x+26x^2-7x^3-86x^4+72x^5)/(1-7x+14x^2-8x^3))`
-/

namespace A270088.P1663445406494942358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 26, -7, -86, 72] [1, -7, 14, -8] n

end

end A270088.P1663445406494942358

namespace A270088

/-- `ogf((1-3x+26x^2-7x^3-86x^4+72x^5)/(1-7x+14x^2-8x^3))` -/
def P1663445406494942358.Spec : Prop :=
  ∀ n, P1663445406494942358.a n = A270088 n

end A270088

/-! ## A270088.P5283542168159360007

`abs(or(8, -A273767(n)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A270088

/-- `abs(or(8, -A273767(n)))` -/
def P5283542168159360007.Spec : Prop :=
  ∀ n, P5283542168159360007.a n = A270088 n

theorem P5283542168159360007.correct : P5283542168159360007.Spec := by
  intro n
  simp only [A270088]

end A270088

/-! ## A270088.P15839510859210674843

`and(-(2*n+1), A270130(n))`
-/

namespace A270088.P15839510859210674843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(2 * n + 1 : ℤ)) (A270130 n)

end

end A270088.P15839510859210674843

namespace A270088

/-- `and(-(2*n+1), A270130(n))` -/
def P15839510859210674843.Spec : Prop :=
  ∀ n, P15839510859210674843.a n = A270088 n

end A270088

/-! ## A270088.P14468059849269967459

`A270130(n)-4*A185012(n)`
-/

namespace A270088.P14468059849269967459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270130 n - 4 * A185012 n

end

end A270088.P14468059849269967459

namespace A270088

/-- `A270130(n)-4*A185012(n)` -/
def P14468059849269967459.Spec : Prop :=
  ∀ n, P14468059849269967459.a n = A270088 n

end A270088

/-! ## A270088.P8915663991624953850

`and(A270130(n), A280166(Δ[n²]))`
-/

namespace A270088.P8915663991624953850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A270130 n) (A280166 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A270088.P8915663991624953850

namespace A270088

/-- `and(A270130(n), A280166(Δ[n²]))` -/
def P8915663991624953850.Spec : Prop :=
  ∀ n, P8915663991624953850.a n = A270088 n

end A270088

/-! ## A270088.P10580148777572668650

`-or(or(8, -A273767(n)), A000007(n))`
-/

namespace A270088.P10580148777572668650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (Int.lor 8 (-A273767 n)) (A000007 n)

end

end A270088.P10580148777572668650

namespace A270088

/-- `-or(or(8, -A273767(n)), A000007(n))` -/
def P10580148777572668650.Spec : Prop :=
  ∀ n, P10580148777572668650.a n = A270088 n

end A270088

/-! ## A270088.P15315510879736087042

`-or(or(8, -A273767(n)), A008363(n))`
-/

namespace A270088.P15315510879736087042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (Int.lor 8 (-A273767 n)) (A008363 n)

end

end A270088.P15315510879736087042

namespace A270088

/-- `-or(or(8, -A273767(n)), A008363(n))` -/
def P15315510879736087042.Spec : Prop :=
  ∀ n, P15315510879736087042.a n = A270088 n

end A270088

/-! ## A270088.P10633485884199433286

`-or(or(8, -A273767(n)), A011665(n))`
-/

namespace A270088.P10633485884199433286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (Int.lor 8 (-A273767 n)) (A011665 n)

end

end A270088.P10633485884199433286

namespace A270088

/-- `-or(or(8, -A273767(n)), A011665(n))` -/
def P10633485884199433286.Spec : Prop :=
  ∀ n, P10633485884199433286.a n = A270088 n

end A270088

/-! ## A270088.P3181030096847663740

`-or(or(8, -A273767(n)), A005078(n+1))`
-/

namespace A270088.P3181030096847663740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (Int.lor 8 (-A273767 n)) (A005078 (n + 1))

end

end A270088.P3181030096847663740

namespace A270088

/-- `-or(or(8, -A273767(n)), A005078(n+1))` -/
def P3181030096847663740.Spec : Prop :=
  ∀ n, P3181030096847663740.a n = A270088 n

end A270088

/-! ## A270088.P6984745219027822052

`char[A188241(n+1)]-or(8, -A273767(n))`
-/

namespace A270088.P6984745219027822052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188241 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - Int.lor 8 (-A273767 n)

end

end A270088.P6984745219027822052

namespace A270088

/-- `char[A188241(n+1)]-or(8, -A273767(n))` -/
def P6984745219027822052.Spec : Prop :=
  ∀ n, P6984745219027822052.a n = A270088 n

end A270088

/-! ## A270088.P692295631324494601

`A062329(A060826(n+1))-or(8, -A273767(n))`
-/

namespace A270088.P692295631324494601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 (A060826 (n + 1)).toNat - Int.lor 8 (-A273767 n)

end

end A270088.P692295631324494601

namespace A270088

/-- `A062329(A060826(n+1))-or(8, -A273767(n))` -/
def P692295631324494601.Spec : Prop :=
  ∀ n, P692295631324494601.a n = A270088 n

end A270088

/-!
# A270089: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

The programs for A270089, the canonical program `A270089.P2691324095961846394` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270089 has offset 0).

The definition of A270089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270089.P14332578906333733751

`ogf((1+4x+2x^2+28x^3-12x^4+13x^5+14x^6-22x^7-5x^8+9x^9)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A270089.P14332578906333733751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 2, 28, -12, 13, 14, -22, -5, 9] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A270089.P14332578906333733751

namespace A270089

/-- `ogf((1+4x+2x^2+28x^3-12x^4+13x^5+14x^6-22x^7-5x^8+9x^9)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P14332578906333733751.Spec : Prop :=
  ∀ n, P14332578906333733751.a n = A270089 n

end A270089

/-! ## A270089.P13915998867048369883

`A270131(n)-4%A000124(n)`
-/

namespace A270089.P13915998867048369883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270131 n - Int.tmod 4 (A000124 n)

end

end A270089.P13915998867048369883

namespace A270089

/-- `A270131(n)-4%A000124(n)` -/
def P13915998867048369883.Spec : Prop :=
  ∀ n, P13915998867048369883.a n = A270089 n

end A270089

/-! ## A270089.P2691324095961846394

`∑[A270087(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A270089

/-- `∑[A270087(n)]` -/
def P2691324095961846394.Spec : Prop :=
  ∀ n, P2691324095961846394.a n = A270089 n

theorem P2691324095961846394.correct : P2691324095961846394.Spec := by
  intro n
  simp only [A270089]

end A270089

/-! ## A270089.P8623307790591081784

`a(n-1)+A270087(n)%A036689(n+1)` with `a(0)=1`
-/

namespace A270089.P8623307790591081784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270087 n) (A036689 (n + 1))

end

end A270089.P8623307790591081784

namespace A270089

/-- `a(n-1)+A270087(n)%A036689(n+1)` -/
def P8623307790591081784.Spec : Prop :=
  ∀ n, P8623307790591081784.a n = A270089 n

end A270089

/-! ## A270089.P13811129172492598394

`∑[∑[A270090(abs(1-n))]]`
-/

namespace A270089.P13811129172492598394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270090 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270089.P13811129172492598394

namespace A270089

/-- `∑[∑[A270090(abs(1-n))]]` -/
def P13811129172492598394.Spec : Prop :=
  ∀ n, P13811129172492598394.a n = A270089 n

end A270089

/-! ## A270089.P2585780662386217277

`∑[A270090(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270089.P2585780662386217277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270090 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270089.P2585780662386217277

namespace A270089

/-- `∑[A270090(n-1)+a(n-1)]` -/
def P2585780662386217277.Spec : Prop :=
  ∀ n, P2585780662386217277.a n = A270089 n

end A270089

/-! ## A270089.P4085730681950921538

`∑[and(-A270090(n), A270129(n))]`
-/

namespace A270089.P4085730681950921538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A270090 n) (A270129 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270089.P4085730681950921538

namespace A270089

/-- `∑[and(-A270090(n), A270129(n))]` -/
def P4085730681950921538.Spec : Prop :=
  ∀ n, P4085730681950921538.a n = A270089 n

end A270089

/-!
# A270090: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

The programs for A270090, the canonical program `A270090.P15445530473766138656` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270090 has offset 0).

The definition of A270090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270090.P11039235490338166738

`ogf((3+4x+30x^2-13x^3+12x^4+14x^5-22x^6-5x^7+9x^8)/(1+x-2x^2-2x^3+x^4+x^5))`
-/

namespace A270090.P11039235490338166738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 30, -13, 12, 14, -22, -5, 9] [1, 1, -2, -2, 1, 1] n

end

end A270090.P11039235490338166738

namespace A270090

/-- `ogf((3+4x+30x^2-13x^3+12x^4+14x^5-22x^6-5x^7+9x^8)/(1+x-2x^2-2x^3+x^4+x^5))` -/
def P11039235490338166738.Spec : Prop :=
  ∀ n, P11039235490338166738.a n = A270090 n

end A270090

/-! ## A270090.P15445530473766138656

`Δ[A270087(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A270090

/-- `Δ[A270087(n)]` -/
def P15445530473766138656.Spec : Prop :=
  ∀ n, P15445530473766138656.a n = A270090 n

theorem P15445530473766138656.correct : P15445530473766138656.Spec := by
  intro n
  simp only [A270090]

end A270090

/-! ## A270090.P10801297167022801741

`A270087(n+1)-A270087(n)`
-/

namespace A270090.P10801297167022801741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270087 (n + 1) - A270087 n

end

end A270090.P10801297167022801741

namespace A270090

/-- `A270087(n+1)-A270087(n)` -/
def P10801297167022801741.Spec : Prop :=
  ∀ n, P10801297167022801741.a n = A270090 n

theorem P10801297167022801741.correct : P10801297167022801741.Spec := by
  intro n
  simp only [A270090, Nat.add_sub_cancel, A270090.P10801297167022801741.a, A270090.P15445530473766138656.f1, A270090.P15445530473766138656.a, SequenceMachineLib.memo_apply]

end A270090

/-! ## A270090.P16521194807384628051

`Δ[A270129(n)-and(4, A001815(n))]`
-/

namespace A270090.P16521194807384628051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270129 n - Int.land 4 (A001815 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270090.P16521194807384628051

namespace A270090

/-- `Δ[A270129(n)-and(4, A001815(n))]` -/
def P16521194807384628051.Spec : Prop :=
  ∀ n, P16521194807384628051.a n = A270090 n

end A270090

/-!
# A270091: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 78", based on the 5-celled von Neumann neighborhood.

The programs for A270091, there is no canonical definition to state claims against.
-/

/-! ## A270091.P302768478038169341

`A270094(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270091.P302768478038169341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270094 (n - 1) + a (n - 1)

end

end A270091.P302768478038169341

/-! ## A270091.P4335794828789166273

`Δ[A270093(n)]-A270094(n)`
-/

namespace A270091.P4335794828789166273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270094 n

end

end A270091.P4335794828789166273

/-! ## A270091.P13675226751644852625

`A270093(n+1)-(A270094(n)+A270093(n))`
-/

namespace A270091.P13675226751644852625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270093 (n + 1) - (A270094 n + A270093 n)

end

end A270091.P13675226751644852625

/-!
# A270092: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 78", based on the 5-celled von Neumann neighborhood.

The programs for A270092, there is no canonical definition to state claims against.
-/

/-! ## A270092.P268156335205443953

`A270091(2^n-1)`
-/

namespace A270092.P268156335205443953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270091 (2 ^ n - 1)

end

end A270092.P268156335205443953

/-! ## A270092.P4767602794820982843

`record[A270091(A135481(n))]`
-/

namespace A270092.P4767602794820982843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270091 (A135481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270092.P4767602794820982843

/-! ## A270092.P15051083684708029162

`record[A270091(A243071(n+1))]`
-/

namespace A270092.P15051083684708029162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270091 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270092.P15051083684708029162

/-! ## A270092.P3998765624714050194

`record[A270091(A253564(n+1))]`
-/

namespace A270092.P3998765624714050194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270091 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270092.P3998765624714050194

/-! ## A270092.P6742190366510981823

`record[A270091(A269386(n+1))]`
-/

namespace A270092.P6742190366510981823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270091 (A269386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270092.P6742190366510981823

/-!
# A270093: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 78", based on the 5-celled von Neumann neighborhood.

The programs for A270093, there is no canonical definition to state claims against.
-/

/-! ## A270093.P14249952099492358474

`∑[A270091(n)]`
-/

namespace A270093.P14249952099492358474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270093.P14249952099492358474

/-! ## A270093.P4308809894922408044

`a(n-1)+A270091(n)+A000007(n)` with `a(0)=1`
-/

namespace A270093.P4308809894922408044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270091 n + A000007 n)

end

end A270093.P4308809894922408044

/-! ## A270093.P5000266712031558557

`A270091(A005843(n)-n)+a(n-1)` with `a(0)=1`
-/

namespace A270093.P5000266712031558557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270091 (A005843 n - (n : ℤ)).toNat + a (n - 1)

end

end A270093.P5000266712031558557

/-! ## A270093.P1926000604237661664

`A270091(n%A008585(n))+a(n-1)` with `a(0)=1`
-/

namespace A270093.P1926000604237661664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270091 (Int.tmod (n : ℤ) (A008585 n)).toNat + a (n - 1)

end

end A270093.P1926000604237661664

/-! ## A270093.P12844265391271073761

`A270091(gcd(n, A008585(n)))+a(n-1)` with `a(0)=1`
-/

namespace A270093.P12844265391271073761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270091 (Int.gcd (n : ℤ) (A008585 n)) + a (n - 1)

end

end A270093.P12844265391271073761

/-! ## A270093.P17676246331780316877

`∑[∑[A270094(n)]+1-A270094(n)]`
-/

namespace A270093.P17676246331780316877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270094 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270093.P17676246331780316877

/-!
# A270094: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 78", based on the 5-celled von Neumann neighborhood.

The programs for A270094, there is no canonical definition to state claims against.
-/

/-! ## A270094.P2244643062688622599

`Δ[A270091(n)]`
-/

namespace A270094.P2244643062688622599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270094.P2244643062688622599

/-! ## A270094.P4113598402169147005

`A270091(n+1)-A270091(n)`
-/

namespace A270094.P4113598402169147005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270091 (n + 1) - A270091 n

end

end A270094.P4113598402169147005

/-! ## A270094.P3223526122396747813

`A270091(n+1)+A001478(A270091(n)+1)+1`
-/

namespace A270094.P3223526122396747813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270091 (n + 1) + (A001478 (A270091 n + 1).toNat + 1)

end

end A270094.P3223526122396747813

/-! ## A270094.P13662924517243429071

`A270091(n+1)+A001489(A270091(n)+1)+1`
-/

namespace A270094.P13662924517243429071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270091 (n + 1) + A001489 (A270091 n + 1).toNat + 1

end

end A270094.P13662924517243429071

/-! ## A270094.P2684051080661021568

`A270091(A000027(n+1))+A001478(A270091(n))`
-/

namespace A270094.P2684051080661021568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270091 (A000027 (n + 1)).toNat + A001478 (A270091 n).toNat

end

end A270094.P2684051080661021568

/-!
# A270095: Numbers n for which A269233(n) is a record.

The programs for A270095, there is no canonical definition to state claims against.
-/

/-! ## A270095.P2510536786000702494

`eq[A004727(A029304(n)), A342870(n+1)]`
-/

namespace A270095.P2510536786000702494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004727 (A029304 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270095.P2510536786000702494

/-! ## A270095.P11445855613102269905

`eq[A029304(n), A342870(n+1)]`
-/

namespace A270095.P11445855613102269905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270095.P11445855613102269905

/-!
# A270096: Smallest m such that 2^m == 2^n (mod n).

The programs for A270096, there is no canonical definition to state claims against.
-/

/-! ## A270096.P18275756513782191774

`log2(A126646(n)%A204983(n+1)+1)`
-/

namespace A270096.P18275756513782191774
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.tmod (A126646 n) (A204983 (n + 1)) + 1 : ℝ)

end

end A270096.P18275756513782191774

/-! ## A270096.P7004227228192088172

`A000120(A126646(n)%A204983(n+1))`
-/

namespace A270096.P7004227228192088172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A126646 n) (A204983 (n + 1))).toNat

end

end A270096.P7004227228192088172

/-! ## A270096.P6062322422107646409

`A342001(A126646(2*n-n)%A204983(n+1)+1)`
-/

namespace A270096.P6062322422107646409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (Int.tmod (A126646 (2 * n - n)) (A204983 (n + 1)) + 1).toNat

end

end A270096.P6062322422107646409

/-! ## A270096.P4497871638810108618

`A276976(n+1)-A098108(A284075(n+1))`
-/

namespace A270096.P4497871638810108618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (n + 1) - A098108 (A284075 (n + 1)).toNat

end

end A270096.P4497871638810108618

/-! ## A270096.P6661505640991995625

`A276976(n+1)-val(A321838(n+2), A321852(n))`
-/

namespace A270096.P6661505640991995625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (n + 1) - (SequenceMachineLib.valuation (A321838 (n + 2)).toNat (A321852 n).toNat : ℤ)

end

end A270096.P6661505640991995625

/-!
# A270098: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 81", based on the 5-celled von Neumann neighborhood.

The programs for A270098, there is no canonical definition to state claims against.
-/

/-! ## A270098.P14051764701275938638

`∑[A270101(abs(1-n))]`
-/

namespace A270098.P14051764701275938638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270101 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270098.P14051764701275938638

/-! ## A270098.P9170355664557647233

`A270101(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270098.P9170355664557647233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270101 (n - 1) + a (n - 1)

end

end A270098.P9170355664557647233

/-! ## A270098.P16360826856738754653

`∑[A270101(A028310(n)-1)]-2`
-/

namespace A270098.P16360826856738754653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270101 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A270098.P16360826856738754653

/-! ## A270098.P15423697277664040324

`Δ[A270100(n)]-A270101(n)`
-/

namespace A270098.P15423697277664040324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270101 n

end

end A270098.P15423697277664040324

/-! ## A270098.P8812922541677391755

`A270100(n+1)-(A270101(n)+A270100(n))`
-/

namespace A270098.P8812922541677391755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270100 (n + 1) - (A270101 n + A270100 n)

end

end A270098.P8812922541677391755

/-!
# A270099: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 81", based on the 5-celled von Neumann neighborhood.

The programs for A270099, there is no canonical definition to state claims against.
-/

/-! ## A270099.P17567047929947389366

`A270098(2^n-1)`
-/

namespace A270099.P17567047929947389366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270098 (2 ^ n - 1)

end

end A270099.P17567047929947389366

/-! ## A270099.P789814409790547710

`record[A270098(A154438(n))]`
-/

namespace A270099.P789814409790547710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270098 (A154438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270099.P789814409790547710

/-! ## A270099.P7855851931847459886

`record[A270098(A173787(n))]`
-/

namespace A270099.P7855851931847459886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270098 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270099.P7855851931847459886

/-! ## A270099.P7447381822184173717

`record[A270098(A255067(n))]`
-/

namespace A270099.P7447381822184173717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270098 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270099.P7447381822184173717

/-! ## A270099.P17972123701637159172

`and(-3, A270098(A000225(n)))`
-/

namespace A270099.P17972123701637159172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A270098 (A000225 n).toNat)

end

end A270099.P17972123701637159172

