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
import Seq.B000.C014
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A174300: a(n) = ceiling(n!*exp(-n)).

The programs for A174300, the canonical program `A174300.P9251800451030879861` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174300 has offset 0).

The definition of A174300 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n!*exp(-n))` (program `A174300.P9251800451030879861`, by `A174300.P9251800451030879861.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174300.P9251800451030879861

`ceil(n!*exp(-n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174300

/-- `ceil(n!*exp(-n))` -/
def P9251800451030879861.Spec : Prop :=
  ∀ n, P9251800451030879861.a n = A174300 n

theorem P9251800451030879861.correct : P9251800451030879861.Spec := by
  intro n
  simp only [A174300]

end A174300

/-! ## A174300.P5865764819546929438

`ceil(n!/exp(n))`
-/

namespace A174300.P5865764819546929438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℝ) / Real.exp (n : ℝ)⌉

end

end A174300.P5865764819546929438

namespace A174300

/-- `ceil(n!/exp(n))` -/
def P5865764819546929438.Spec : Prop :=
  ∀ n, P5865764819546929438.a n = A174300 n

end A174300

/-! ## A174300.P5583421282970861982

`ceil(A000142(n)/exp(n))`
-/

namespace A174300.P5583421282970861982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000142 n : ℝ) / Real.exp (n : ℝ)⌉

end

end A174300.P5583421282970861982

namespace A174300

/-- `ceil(A000142(n)/exp(n))` -/
def P5583421282970861982.Spec : Prop :=
  ∀ n, P5583421282970861982.a n = A174300 n

end A174300

/-! ## A174300.P4355160959900944772

`A174299(n)+A057427(n)`
-/

namespace A174300.P4355160959900944772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174299 n + A057427 n

end

end A174300.P4355160959900944772

namespace A174300

/-- `A174299(n)+A057427(n)` -/
def P4355160959900944772.Spec : Prop :=
  ∀ n, P4355160959900944772.a n = A174300 n

end A174300

/-! ## A174300.P17711524224763599867

`A178334(n)+A174299(n)`
-/

namespace A174300.P17711524224763599867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A174299 n

end

end A174300.P17711524224763599867

namespace A174300

/-- `A178334(n)+A174299(n)` -/
def P17711524224763599867.Spec : Prop :=
  ∀ n, P17711524224763599867.a n = A174300 n

end A174300

/-!
# A174301: A symmetrical triangle: T(n,k) = binomial(n, k)*if(floor(n/2) greater than or equal to k then 4^k, otherwise 4^(n-k)).

The programs for A174301, the canonical program `A174301.P7482083887196883669` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174301 has offset 0).

The definition of A174301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174301.P7482083887196883669

`A007318(n)*A152716(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A174301

/-- `A007318(n)*A152716(n)` -/
def P7482083887196883669.Spec : Prop :=
  ∀ n, P7482083887196883669.a n = A174301 n

theorem P7482083887196883669.correct : P7482083887196883669.Spec := by
  intro n
  simp only [A174301]

end A174301

/-! ## A174301.P15248739877841492764

`A038208(n)/A116588(n)`
-/

namespace A174301.P15248739877841492764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A116588 n : ℚ)

end

end A174301.P15248739877841492764

namespace A174301

/-- `A038208(n)/A116588(n)` -/
def P15248739877841492764.Spec : Prop :=
  ∀ n, P15248739877841492764.a n = (A174301 n : ℚ)

end A174301

/-! ## A174301.P14169026633784710732

`gcd(A013611(n), A013628(n))`
-/

namespace A174301.P14169026633784710732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013611 n) (A013628 n)

end

end A174301.P14169026633784710732

namespace A174301

/-- `gcd(A013611(n), A013628(n))` -/
def P14169026633784710732.Spec : Prop :=
  ∀ n, (P14169026633784710732.a n : ℤ) = A174301 n

end A174301

/-! ## A174301.P3205048300681365668

`gcd(A038222(n), A038231(n))`
-/

namespace A174301.P3205048300681365668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038222 n) (A038231 n)

end

end A174301.P3205048300681365668

namespace A174301

/-- `gcd(A038222(n), A038231(n))` -/
def P3205048300681365668.Spec : Prop :=
  ∀ n, (P3205048300681365668.a n : ℤ) = A174301 n

end A174301

/-! ## A174301.P15934623113053874584

`gcd(A038233(n), A038246(n))`
-/

namespace A174301.P15934623113053874584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038233 n) (A038246 n)

end

end A174301.P15934623113053874584

namespace A174301

/-- `gcd(A038233(n), A038246(n))` -/
def P15934623113053874584.Spec : Prop :=
  ∀ n, (P15934623113053874584.a n : ℤ) = A174301 n

end A174301

/-! ## A174301.P14534981546787801035

`A144464(n)²*A007318(n)`
-/

namespace A174301.P14534981546787801035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n ^ 2 * A007318 n

end

end A174301.P14534981546787801035

namespace A174301

/-- `A144464(n)²*A007318(n)` -/
def P14534981546787801035.Spec : Prop :=
  ∀ n, P14534981546787801035.a n = A174301 n

end A174301

/-! ## A174301.P7245321799791041523

`4^A004197(n)*A007318(n)`
-/

namespace A174301.P7245321799791041523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A004197 n : ℤ) * (A007318 n : ℚ)

end

end A174301.P7245321799791041523

namespace A174301

/-- `4^A004197(n)*A007318(n)` -/
def P7245321799791041523.Spec : Prop :=
  ∀ n, P7245321799791041523.a n = (A174301 n : ℚ)

end A174301

/-! ## A174301.P4918507435863885951

`A000302(A004197(n))*A007318(n)`
-/

namespace A174301.P4918507435863885951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A004197 n).toNat * A007318 n

end

end A174301.P4918507435863885951

namespace A174301

/-- `A000302(A004197(n))*A007318(n)` -/
def P4918507435863885951.Spec : Prop :=
  ∀ n, P4918507435863885951.a n = A174301 n

end A174301

/-! ## A174301.P3262867840803929864

`A038208(n)/A011782(A143182(n))`
-/

namespace A174301.P3262867840803929864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A011782 (A143182 n).toNat : ℚ)

end

end A174301.P3262867840803929864

namespace A174301

/-- `A038208(n)/A011782(A143182(n))` -/
def P3262867840803929864.Spec : Prop :=
  ∀ n, P3262867840803929864.a n = (A174301 n : ℚ)

end A174301

/-! ## A174301.P330957996967395603

`A007318(n)*A011782(A157454(n+1))`
-/

namespace A174301.P330957996967395603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A011782 (A157454 (n + 1)).toNat

end

end A174301.P330957996967395603

namespace A174301

/-- `A007318(n)*A011782(A157454(n+1))` -/
def P330957996967395603.Spec : Prop :=
  ∀ n, P330957996967395603.a n = A174301 n

end A174301

/-! ## A174301.P7803644430678360858

`A000079(2*A004197(n))*A007318(n)`
-/

namespace A174301.P7803644430678360858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A004197 n).toNat * A007318 n

end

end A174301.P7803644430678360858

namespace A174301

/-- `A000079(2*A004197(n))*A007318(n)` -/
def P7803644430678360858.Spec : Prop :=
  ∀ n, P7803644430678360858.a n = A174301 n

end A174301

/-! ## A174301.P687617543126839578

`gcd(A038239(n), A038270(n))`
-/

namespace A174301.P687617543126839578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038239 n) (A038270 n)

end

end A174301.P687617543126839578

namespace A174301

/-- `gcd(A038239(n), A038270(n))` -/
def P687617543126839578.Spec : Prop :=
  ∀ n, (P687617543126839578.a n : ℤ) = A174301 n

end A174301

/-! ## A174301.P3783272847495067051

`gcd(A038231(n)+A038230(n), A038230(n))`
-/

namespace A174301.P3783272847495067051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038231 n + A038230 n) (A038230 n)

end

end A174301.P3783272847495067051

namespace A174301

/-- `gcd(A038231(n)+A038230(n), A038230(n))` -/
def P3783272847495067051.Spec : Prop :=
  ∀ n, (P3783272847495067051.a n : ℤ) = A174301 n

end A174301

/-! ## A174301.P4204765469297056885

`gcd(A038230(n), A038241(n))`
-/

namespace A174301.P4204765469297056885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038230 n) (A038241 n)

end

end A174301.P4204765469297056885

namespace A174301

/-- `gcd(A038230(n), A038241(n))` -/
def P4204765469297056885.Spec : Prop :=
  ∀ n, (P4204765469297056885.a n : ℤ) = A174301 n

end A174301

/-! ## A174301.P6541723652483330129

`gcd(A038318(n), A038327(n))`
-/

namespace A174301.P6541723652483330129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038318 n) (A038327 n)

end

end A174301.P6541723652483330129

namespace A174301

/-- `gcd(A038318(n), A038327(n))` -/
def P6541723652483330129.Spec : Prop :=
  ∀ n, (P6541723652483330129.a n : ℤ) = A174301 n

end A174301

/-! ## A174301.P2739029078804262168

`gcd(A013611(n)+A013625(n)², A013625(n))`
-/

namespace A174301.P2739029078804262168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013611 n + A013625 n ^ 2) (A013625 n)

end

end A174301.P2739029078804262168

namespace A174301

/-- `gcd(A013611(n)+A013625(n)², A013625(n))` -/
def P2739029078804262168.Spec : Prop :=
  ∀ n, (P2739029078804262168.a n : ℤ) = A174301 n

end A174301

/-!
# A174302: Riordan array ((1-x^2c(x)^2)/(1-xc(x)-x^2c(x)^2),xc(x)), c(x) the g.f. of A000108.

The programs for A174302, there is no canonical definition to state claims against.
-/

/-! ## A174302.P9035833315130768069

`A108074(n)-A220136(A002385(n+5))`
-/

namespace A174302.P9035833315130768069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108074 n - A220136 (A002385 (n + 5)).toNat

end

end A174302.P9035833315130768069

/-! ## A174302.P8217671644388888683

`A065708(A189175(n))`
-/

namespace A174302.P8217671644388888683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065708 (A189175 n).toNat

end

end A174302.P8217671644388888683

/-! ## A174302.P1485837167453776577

`A143824(A117265(n))`
-/

namespace A174302.P1485837167453776577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A117265 n).toNat

end

end A174302.P1485837167453776577

/-! ## A174302.P15333966785352943323

`A111470(A171486(n))`
-/

namespace A174302.P15333966785352943323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111470 (A171486 n).toNat

end

end A174302.P15333966785352943323

/-! ## A174302.P11978984843956067336

`A094531(n)-A377432(A119502(n))`
-/

namespace A174302.P11978984843956067336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 n - A377432 (A119502 n).toNat

end

end A174302.P11978984843956067336

/-!
# A174303: A symmetrical triangle: T(n,k) = A008292(n+1, k) * f(n,k), where f(n,k) = 2^k when floor(n/2) >= k, otherwise 2^(n-k).

The programs for A174303, there is no canonical definition to state claims against.
-/

/-! ## A174303.P3243576099447301455

`A008292(n+1)*A144464(n)`
-/

namespace A174303.P3243576099447301455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A144464 n

end

end A174303.P3243576099447301455

/-! ## A174303.P582934369830433169

`A000079(A004197(n))*A008292(n+1)`
-/

namespace A174303.P582934369830433169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004197 n).toNat * A008292 (n + 1)

end

end A174303.P582934369830433169

/-! ## A174303.P6288361996049695922

`A008292(n+1)*A011782(A003983(n+1))`
-/

namespace A174303.P6288361996049695922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A011782 (A003983 (n + 1)).toNat

end

end A174303.P6288361996049695922

/-! ## A174303.P17748859711421626888

`gcd(A059268(n), A130321(n))*A008292(n+1)`
-/

namespace A174303.P17748859711421626888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A059268 n) (A130321 n) : ℤ) * A008292 (n + 1)

end

end A174303.P17748859711421626888

/-! ## A174303.P4381009000840239990

`gcd(A142075(n+1), A154693(n))`
-/

namespace A174303.P4381009000840239990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A142075 (n + 1)) (A154693 n)

end

end A174303.P4381009000840239990

/-! ## A174303.P466790265290020993

`A008292(n+1)*A252463(A152714(n))`
-/

namespace A174303.P466790265290020993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A252463 (A152714 n).toNat

end

end A174303.P466790265290020993

/-! ## A174303.P14902228361740249897

`A008292(n+1)/A144463(n)*A174301(n)`
-/

namespace A174303.P14902228361740249897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A144463 n : ℚ) * (A174301 n : ℚ)

end

end A174303.P14902228361740249897

/-!
# A174304: 

The programs for A174304, there is no canonical definition to state claims against.
-/

/-! ## A174304.P13541687891494248458

`A086783(n+1)^(n+1)-1`
-/

namespace A174304.P13541687891494248458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086783 (n + 1) ^ (n + 1) - 1

end

end A174304.P13541687891494248458

/-!
# A174305: 

The programs for A174305, there is no canonical definition to state claims against.
-/

/-! ## A174305.P8360308730024868143

`A086783(n+1)^(n+1)+1`
-/

namespace A174305.P8360308730024868143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086783 (n + 1) ^ (n + 1) + 1

end

end A174305.P8360308730024868143

/-!
# A174309: 

The programs for A174309, there is no canonical definition to state claims against.
-/

/-! ## A174309.P6732151423206914414

`A174310(Δ[n²])`
-/

namespace A174309.P6732151423206914414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174310 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A174309.P6732151423206914414

/-!
# A174312: a(n) = 32*n.

The programs for A174312, the canonical program `A174312.P11653571981913251909` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174312 has offset 0).

The definition of A174312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*n` (program `A174312.P11653571981913251909`, by `A174312.P11653571981913251909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174312.P11653571981913251909

`32*n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174312

/-- `32*n` -/
def P11653571981913251909.Spec : Prop :=
  ∀ n, (P11653571981913251909.a n : ℤ) = A174312 n

theorem P11653571981913251909.correct : P11653571981913251909.Spec := by
  intro n
  simp only [A174312]

end A174312

/-!
# A174313: Number of n-step walks on hexagonal lattice (no points repeated, no adjacent points unless consecutive in path).

The programs for A174313, there is no canonical definition to state claims against.
-/

/-! ## A174313.P129100207244293619

`A001394(n+1)/A289131(A034651(n))`
-/

namespace A174313.P129100207244293619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001394 (n + 1) : ℚ) / (A289131 (A034651 n).toNat : ℚ)

end

end A174313.P129100207244293619

/-! ## A174313.P3991270575455981820

`record[A337018(Δ[A202059(n)])]`
-/

namespace A174313.P3991270575455981820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337018 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174313.P3991270575455981820

/-!
# A174314: Sequence given by a(0)=1, a(1)=2 and the recurrence relation: a(n)=a(abs(floor(0.5*n-a(n-2)))) for n>=2.

The programs for A174314, the canonical program `A174314.P7206966931773622237` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174314 has offset 0).

The definition of A174314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174314.P7206966931773622237

`a(abs(a(n-2)-floor(n/2)))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174314

/-- `a(abs(a(n-2)-floor(n/2)))` -/
def P7206966931773622237.Spec : Prop :=
  ∀ n, (P7206966931773622237.a n : ℤ) = A174314 n

theorem P7206966931773622237.correct : P7206966931773622237.Spec := by
  intro n
  simp only [A174314]

end A174314

/-! ## A174314.P14583605784369058581

`a(floor(n/2-a(n-2)))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A174314.P14583605784369058581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2] fun n a =>
  a ⌊(n : ℚ) / 2 - (a (n - 2) : ℚ)⌋.toNat

end

end A174314.P14583605784369058581

namespace A174314

/-- `a(floor(n/2-a(n-2)))` -/
def P14583605784369058581.Spec : Prop :=
  ∀ n, (P14583605784369058581.a n : ℤ) = A174314 n

end A174314

/-! ## A174314.P4738030572711822766

`a(ceil((n-1)/2)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A174314.P4738030572711822766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2] fun n a =>
  a (⌈((n : ℤ) - 1 : ℚ) / 2⌉ - (a (n - 2) : ℤ)).toNat

end

end A174314.P4738030572711822766

namespace A174314

/-- `a(ceil((n-1)/2)-a(n-2))` -/
def P4738030572711822766.Spec : Prop :=
  ∀ n, (P4738030572711822766.a n : ℤ) = A174314 n

end A174314

/-! ## A174314.P894678378001206255

`a(n-a(n-2)-A110654(n))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`
-/

namespace A174314.P894678378001206255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2] fun n a =>
  a ((n : ℤ) - (a (n - 2) : ℤ) - A110654 n).toNat

end

end A174314.P894678378001206255

namespace A174314

/-- `a(n-a(n-2)-A110654(n))` -/
def P894678378001206255.Spec : Prop :=
  ∀ n, (P894678378001206255.a n : ℤ) = A174314 n

end A174314

/-! ## A174314.P13887439217302577540

`A000034(A094343(4*n+5)%A105356(A105356(n+3)))`
-/

namespace A174314.P13887439217302577540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Int.tmod (A094343 (4 * n + 5)) (A105356 (A105356 (n + 3)).toNat)).toNat

end

end A174314.P13887439217302577540

namespace A174314

/-- `A000034(A094343(4*n+5)%A105356(A105356(n+3)))` -/
def P13887439217302577540.Spec : Prop :=
  ∀ n, P13887439217302577540.a n = A174314 n

end A174314

/-!
# A174316: Sequence defined by a(0)=a(1)=a(2)=1, a(3)=2, a(4)=6 and the formula a(n)=2^(n-2)+2 for n>=5.

The programs for A174316, the canonical program `A174316.P2218285264179276703` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174316 has offset 0).

The definition of A174316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174316.P1265653562963340310

`or(round(2^(n-2)), round(atan(n+12)))`
-/

namespace A174316.P1265653562963340310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (SequenceMachineLib.roundAway (Real.arctan (n + 12 : ℝ)))

end

end A174316.P1265653562963340310

namespace A174316

/-- `or(round(2^(n-2)), round(atan(n+12)))` -/
def P1265653562963340310.Spec : Prop :=
  ∀ n, P1265653562963340310.a n = A174316 n

end A174316

/-! ## A174316.P2736844991354840979

`or(ceil(atan(sqrt(n)))!, round(2^(n-2)))`
-/

namespace A174316.P2736844991354840979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial ⌈Real.arctan (Real.sqrt (n : ℝ))⌉.toNat : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)))

end

end A174316.P2736844991354840979

namespace A174316

/-- `or(ceil(atan(sqrt(n)))!, round(2^(n-2)))` -/
def P2736844991354840979.Spec : Prop :=
  ∀ n, P2736844991354840979.a n = A174316 n

end A174316

/-! ## A174316.P2218285264179276703

`2*(a(n-1)-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174316

/-- `2*(a(n-1)-1)` -/
def P2218285264179276703.Spec : Prop :=
  ∀ n, P2218285264179276703.a n = A174316 n

theorem P2218285264179276703.correct : P2218285264179276703.Spec := by
  intro n
  simp only [A174316]

end A174316

/-! ## A174316.P14495659631757018736

`or(ceil(atan(sqrt(n))), Δ[round(2^(n-2))])`
-/

namespace A174316.P14495659631757018736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈Real.arctan (Real.sqrt (n : ℝ))⌉ (f1 (n + 1) - f1 n)

end

end A174316.P14495659631757018736

namespace A174316

/-- `or(ceil(atan(sqrt(n))), Δ[round(2^(n-2))])` -/
def P14495659631757018736.Spec : Prop :=
  ∀ n, P14495659631757018736.a n = A174316 n

end A174316

/-!
# A174317: a(0)=1, a(1)=2, a(2)=1; for n>2, a(n) = 7*2^(n-3)-2.

The programs for A174317, the canonical program `A174317.P12239742317725739274` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174317 has offset 0).

The definition of A174317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174317.P12239742317725739274

`2*(a(n-1)+1)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174317

/-- `2*(a(n-1)+1)` -/
def P12239742317725739274.Spec : Prop :=
  ∀ n, (P12239742317725739274.a n : ℤ) = A174317 n

theorem P12239742317725739274.correct : P12239742317725739274.Spec := by
  intro n
  simp only [A174317]

end A174317

/-! ## A174317.P11831689954143120709

`lcm(2, a(n-1)+1)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=5, a(4)=12`
-/

namespace A174317.P11831689954143120709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 5, 12] fun n a =>
  Nat.lcm 2 (a (n - 1) + 1)

end

end A174317.P11831689954143120709

namespace A174317

/-- `lcm(2, a(n-1)+1)` -/
def P11831689954143120709.Spec : Prop :=
  ∀ n, (P11831689954143120709.a n : ℤ) = A174317 n

end A174317

/-! ## A174317.P8504218268200155619

`4-2*(1-a(n-1))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=5`
-/

namespace A174317.P8504218268200155619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 5] fun n a =>
  4 - 2 * (1 - a (n - 1))

end

end A174317.P8504218268200155619

namespace A174317

/-- `4-2*(1-a(n-1))` -/
def P8504218268200155619.Spec : Prop :=
  ∀ n, P8504218268200155619.a n = A174317 n

end A174317

/-! ## A174317.P12030131221869390872

`a(n-1)+a(n-1)+2` with `a(0)=1, a(1)=2, a(2)=1, a(3)=5`
-/

namespace A174317.P12030131221869390872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 5] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A174317.P12030131221869390872

namespace A174317

/-- `a(n-1)+a(n-1)+2` -/
def P12030131221869390872.Spec : Prop :=
  ∀ n, (P12030131221869390872.a n : ℤ) = A174317 n

theorem P12030131221869390872.correct : P12030131221869390872.Spec := by
  intro n
  simp only [A174317, Nat.add_sub_cancel, A174317.P12030131221869390872.a, A174317.P12239742317725739274.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A174317

/-! ## A174317.P5518784355633187006

`a(n-1)-floor(n/(2-n)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A174317.P5518784355633187006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (n - 1) - ⌊(n : ℚ) / (2 - (n : ℤ) : ℚ) - (a (n - 1) : ℚ)⌋

end

end A174317.P5518784355633187006

namespace A174317

/-- `a(n-1)-floor(n/(2-n)-a(n-1))` -/
def P5518784355633187006.Spec : Prop :=
  ∀ n, P5518784355633187006.a n = A174317 n

end A174317

/-! ## A174317.P17054240643692254975

`A247188(n)+A002260(A027379(n))`
-/

namespace A174317.P17054240643692254975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247188 n + A002260 (A027379 n).toNat

end

end A174317.P17054240643692254975

namespace A174317

/-- `A247188(n)+A002260(A027379(n))` -/
def P17054240643692254975.Spec : Prop :=
  ∀ n, P17054240643692254975.a n = A174317 n

end A174317

/-!
# A174318: a(n) = ceiling(n!/e) with e = A001113 = exp(1).

The programs for A174318, the canonical program `A174318.P5722969084882067827` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174318 has offset 0).

The definition of A174318 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n!/e)` (program `A174318.P5722969084882067827`, by `A174318.P5722969084882067827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174318.P5722969084882067827

`ceil(n!/e)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174318

/-- `ceil(n!/e)` -/
def P5722969084882067827.Spec : Prop :=
  ∀ n, P5722969084882067827.a n = A174318 n

theorem P5722969084882067827.correct : P5722969084882067827.Spec := by
  intro n
  simp only [A174318]

end A174318

/-! ## A174318.P3978354808315081935

`ceil(n!*exp(-1))`
-/

namespace A174318.P3978354808315081935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℝ) * Real.exp (-1 : ℝ)⌉

end

end A174318.P3978354808315081935

namespace A174318

/-- `ceil(n!*exp(-1))` -/
def P3978354808315081935.Spec : Prop :=
  ∀ n, P3978354808315081935.a n = A174318 n

end A174318

/-! ## A174318.P12533326922498799154

`n*a(n-1)+1-gcd(n, n%2)` with `a(0)=1`
-/

namespace A174318.P12533326922498799154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + (1 - (Nat.gcd n (n % 2) : ℤ))

end

end A174318.P12533326922498799154

namespace A174318

/-- `n*a(n-1)+1-gcd(n, n%2)` -/
def P12533326922498799154.Spec : Prop :=
  ∀ n, P12533326922498799154.a n = A174318 n

end A174318

/-! ## A174318.P4881590278864178973

`or(1, A000166(n))`
-/

namespace A174318.P4881590278864178973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000166 n)

end

end A174318.P4881590278864178973

namespace A174318

/-- `or(1, A000166(n))` -/
def P4881590278864178973.Spec : Prop :=
  ∀ n, P4881590278864178973.a n = A174318 n

end A174318

/-! ## A174318.P1475190751864145155

`or(1, abs(A182386(n)))`
-/

namespace A174318.P1475190751864145155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 |A182386 n|

end

end A174318.P1475190751864145155

namespace A174318

/-- `or(1, abs(A182386(n)))` -/
def P1475190751864145155.Spec : Prop :=
  ∀ n, P1475190751864145155.a n = A174318 n

end A174318

/-! ## A174318.P509212332848751153

`or(1, A008290(∑[n]))`
-/

namespace A174318.P509212332848751153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008290 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A174318.P509212332848751153

namespace A174318

/-- `or(1, A008290(∑[n]))` -/
def P509212332848751153.Spec : Prop :=
  ∀ n, P509212332848751153.a n = A174318 n

end A174318

/-! ## A174318.P18190689282146753455

`or(1, A068106(∑[n]))`
-/

namespace A174318.P18190689282146753455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A068106 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A174318.P18190689282146753455

namespace A174318

/-- `or(1, A068106(∑[n]))` -/
def P18190689282146753455.Spec : Prop :=
  ∀ n, P18190689282146753455.a n = A174318 n

end A174318

/-! ## A174318.P5746618153469486850

`(A212291(n)+1)/2`
-/

namespace A174318.P5746618153469486850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212291 n + 1 : ℚ) / 2

end

end A174318.P5746618153469486850

namespace A174318

/-- `(A212291(n)+1)/2` -/
def P5746618153469486850.Spec : Prop :=
  ∀ n, P5746618153469486850.a n = (A174318 n : ℚ)

end A174318

/-! ## A174318.P2550299304895177627

`A008290(A084263(n))+1`
-/

namespace A174318.P2550299304895177627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A084263 n).toNat + 1

end

end A174318.P2550299304895177627

namespace A174318

/-- `A008290(A084263(n))+1` -/
def P2550299304895177627.Spec : Prop :=
  ∀ n, P2550299304895177627.a n = A174318 n

end A174318

/-! ## A174318.P18224021300972196332

`A098825(A084265(n)-1)`
-/

namespace A174318.P18224021300972196332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A084265 n - 1).toNat

end

end A174318.P18224021300972196332

namespace A174318

/-- `A098825(A084265(n)-1)` -/
def P18224021300972196332.Spec : Prop :=
  ∀ n, P18224021300972196332.a n = A174318 n

end A174318

/-!
# A174319: Number of n-step walks on cubic lattice (no points repeated, no adjacent points unless consecutive in path).

The programs for A174319, there is no canonical definition to state claims against.
-/

/-! ## A174319.P5822850473712912192

`A108248(n)*A118339(n+1)`
-/

namespace A174319.P5822850473712912192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108248 n * A118339 (n + 1)

end

end A174319.P5822850473712912192

/-! ## A174319.P826313898134552099

`A036452(n+1)*A118339(n+1)`
-/

namespace A174319.P826313898134552099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A118339 (n + 1)

end

end A174319.P826313898134552099

/-! ## A174319.P8849339473280136348

`(A057427(n)+1)*A118339(n+1)`
-/

namespace A174319.P8849339473280136348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A118339 (n + 1)

end

end A174319.P8849339473280136348

/-! ## A174319.P16975952898052299541

`A000005(A006530(n+1))*A118339(n+1)`
-/

namespace A174319.P16975952898052299541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006530 (n + 1)).toNat * A118339 (n + 1)

end

end A174319.P16975952898052299541

/-!
# A174320: A determinant sequence of a matrix recursion: x(n)=x(n-1).(2*I-A.x(n-1)).

The programs for A174320, there is no canonical definition to state claims against.
-/

/-! ## A174320.P9301195229125585607

`A001945(A146541(n))`
-/

namespace A174320.P9301195229125585607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 (A146541 n).toNat

end

end A174320.P9301195229125585607

/-! ## A174320.P6042024962035863681

`A001945(A000079(comp[C(3*n, n)]))`
-/

namespace A174320.P6042024962035863681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 (A000079 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A174320.P6042024962035863681

/-!
# A174321: Index of the smallest prime greater than (6n+1)^2.

The programs for A174321, the canonical program `A174321.P612213315116284694` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174321 has offset 0).

The definition of A174321 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A174321.P612213315116284694

`A000720(A151800(A016922(n)))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A174321

/-- `A000720(A151800(A016922(n)))` -/
def P612213315116284694.Spec : Prop :=
  ∀ n, P612213315116284694.a n = A174321 n

theorem P612213315116284694.correct : P612213315116284694.Spec := by
  intro n
  simp only [A174321]

end A174321

/-! ## A174321.P10250397153341245882

`A038107(6*n+1)+1`
-/

namespace A174321.P10250397153341245882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (6 * n + 1) + 1

end

end A174321.P10250397153341245882

namespace A174321

/-- `A038107(6*n+1)+1` -/
def P10250397153341245882.Spec : Prop :=
  ∀ n, P10250397153341245882.a n = A174321 n

end A174321

/-! ## A174321.P2913750218684960687

`1+A000720((6*n+1)²)`
-/

namespace A174321.P2913750218684960687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000720 ((6 * n + 1) ^ 2)

end

end A174321.P2913750218684960687

namespace A174321

/-- `1+A000720((6*n+1)²)` -/
def P2913750218684960687.Spec : Prop :=
  ∀ n, P2913750218684960687.a n = A174321 n

end A174321

/-! ## A174321.P16616069479220153231

`A000720(record[(gcd(6, 1-n)+n)²])+1`
-/

namespace A174321.P16616069479220153231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (1 - (n : ℤ)) + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 1

end

end A174321.P16616069479220153231

namespace A174321

/-- `A000720(record[(gcd(6, 1-n)+n)²])+1` -/
def P16616069479220153231.Spec : Prop :=
  ∀ n, P16616069479220153231.a n = A174321 n

end A174321

/-! ## A174321.P4615042584492351418

`A000720(record[(lcm(4, n+1)-(n+3))²])+1`
-/

namespace A174321.P4615042584492351418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n + 3 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A174321.P4615042584492351418

namespace A174321

/-- `A000720(record[(lcm(4, n+1)-(n+3))²])+1` -/
def P4615042584492351418.Spec : Prop :=
  ∀ n, P4615042584492351418.a n = A174321 n

end A174321

/-!
# A174322: a(n) is the smallest n-digit number with exactly 4 divisors.

The programs for A174322, there is no canonical definition to state claims against.
-/

/-! ## A174322.P10784673280438037521

`A098449(n+1)+A000038(n)`
-/

namespace A174322.P10784673280438037521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098449 (n + 1) + A000038 n

end

end A174322.P10784673280438037521

/-! ## A174322.P11078522220993234372

`A098449(n+1)+2*A151934(n)`
-/

namespace A174322.P11078522220993234372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098449 (n + 1) + 2 * A151934 n

end

end A174322.P11078522220993234372

/-! ## A174322.P7279243184506635690

`A098449(n+1)+A048298(n²+2)`
-/

namespace A174322.P7279243184506635690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098449 (n + 1) + A048298 (n ^ 2 + 2)

end

end A174322.P7279243184506635690

/-! ## A174322.P11745182299398605779

`A098449(n+1)+A002088(C(2, 2*n+1))`
-/

namespace A174322.P11745182299398605779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098449 (n + 1) + A002088 (Nat.choose 2 (2 * n + 1))

end

end A174322.P11745182299398605779

/-! ## A174322.P5712369243235875173

`A098449(n+1)+A030107(C(2, 2*n+1))`
-/

namespace A174322.P5712369243235875173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098449 (n + 1) + A030107 (Nat.choose 2 (2 * n + 1))

end

end A174322.P5712369243235875173

/-! ## A174322.P10764492464513710591

`A098449(n+1)+A001105(A151934(n))`
-/

namespace A174322.P10764492464513710591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098449 (n + 1) + A001105 (A151934 n).toNat

end

end A174322.P10764492464513710591

/-! ## A174322.P10691481623830515843

`A340219(A046092(n))+A098449(n+1)`
-/

namespace A174322.P10691481623830515843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340219 (A046092 n).toNat + A098449 (n + 1)

end

end A174322.P10691481623830515843

/-! ## A174322.P14321351431565452464

`A098449(n+1)+2*A008683(A234275(n))`
-/

namespace A174322.P14321351431565452464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098449 (n + 1) + 2 * A008683 (A234275 n).toNat

end

end A174322.P14321351431565452464

/-!
# A174323: Numbers n such that omega(Fibonacci(n)) is a square.

The programs for A174323, there is no canonical definition to state claims against.
-/

/-! ## A174323.P17353289196425750319

`eq[A000007(n), A053186(A022307(n))]`
-/

namespace A174323.P17353289196425750319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174323.P17353289196425750319

/-! ## A174323.P13055035631148456324

`eq[A000038(n), A053186(A022307(n))]`
-/

namespace A174323.P13055035631148456324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174323.P13055035631148456324

/-! ## A174323.P4703365336773001386

`eq[A010052(A022307(n)), A057427(n)]`
-/

namespace A174323.P4703365336773001386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A022307 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174323.P4703365336773001386

/-! ## A174323.P829860436114921964

`eq[A038573(n)%2, A010052(A022307(n))]`
-/

namespace A174323.P829860436114921964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038573 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174323.P829860436114921964

/-! ## A174323.P15849717528487000596

`eq[A175298(n)%2, A010052(A022307(n))]`
-/

namespace A174323.P15849717528487000596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175298 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174323.P15849717528487000596

/-! ## A174323.P4394938610371959247

`eq[A014963(43*(n+1)), A010052(A022307(n))]`
-/

namespace A174323.P4394938610371959247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (43 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A022307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174323.P4394938610371959247

/-!
# A174324: a(n) = 3F0(-n,-n+1,-n+2;;-1/2) = n!*(n-1)!*2^(1-n)* 1F2(-n+2;2,3;-2), where nFm(;;) are generalized hypergeometric series.

The programs for A174324, there is no canonical definition to state claims against.
-/

/-! ## A174324.P6705829066656981999

`A113232(A332669(3*n+2)+1)`
-/

namespace A174324.P6705829066656981999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113232 (A332669 (3 * n + 2) + 1).toNat

end

end A174324.P6705829066656981999

/-!
# A174325: Trisection A061037(3*n-2) of the Balmer spectrum numerators extended to negative indices.

The programs for A174325, the canonical program `A174325.P14171404086078609093` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174325 has offset 0).

The definition of A174325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174325.P14171404086078609093

`A181318(3*n)-A188134(3*n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174325

/-- `A181318(3*n)-A188134(3*n)` -/
def P14171404086078609093.Spec : Prop :=
  ∀ n, P14171404086078609093.a n = A174325 n

theorem P14171404086078609093.correct : P14171404086078609093.Spec := by
  intro n
  simp only [A174325]

end A174325

/-! ## A174325.P16761840866174422460

`A061037(3*n+2)-6*A188134(n)`
-/

namespace A174325.P16761840866174422460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (3 * n + 2) - 6 * A188134 n

end

end A174325.P16761840866174422460

namespace A174325

/-- `A061037(3*n+2)-6*A188134(n)` -/
def P16761840866174422460.Spec : Prop :=
  ∀ n, P16761840866174422460.a n = A174325 n

end A174325

/-! ## A174325.P15363340137755522792

`2*A181318(3*n)-A061037(3*n+2)`
-/

namespace A174325.P15363340137755522792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181318 (3 * n) - A061037 (3 * n + 2)

end

end A174325.P15363340137755522792

namespace A174325

/-- `2*A181318(3*n)-A061037(3*n+2)` -/
def P15363340137755522792.Spec : Prop :=
  ∀ n, P15363340137755522792.a n = A174325 n

end A174325

/-! ## A174325.P16707407366410876956

`A026741(A026741(3*n))²-A188134(3*n)`
-/

namespace A174325.P16707407366410876956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (3 * n)).toNat ^ 2 - A188134 (3 * n)

end

end A174325.P16707407366410876956

namespace A174325

/-- `A026741(A026741(3*n))²-A188134(3*n)` -/
def P16707407366410876956.Spec : Prop :=
  ∀ n, P16707407366410876956.a n = A174325 n

end A174325

/-!
# A174326: Exactly one of 3^n +- 2^n is prime.

The programs for A174326, there is no canonical definition to state claims against.
-/

/-! ## A174326.P3025677939539477113

`A283653(n+1)-char[1]`
-/

namespace A174326.P3025677939539477113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283653 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A174326.P3025677939539477113

/-! ## A174326.P14269594964543892848

`A283653(n+1)/A141044(n)`
-/

namespace A174326.P14269594964543892848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283653 (n + 1) : ℚ) / (A141044 n : ℚ)

end

end A174326.P14269594964543892848

/-! ## A174326.P1208727298268340009

`A283653(n+1)/A373565(n)`
-/

namespace A174326.P1208727298268340009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283653 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A174326.P1208727298268340009

/-! ## A174326.P11625411735853956673

`gcd(A283653(n+1), A326168(n))`
-/

namespace A174326.P11625411735853956673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A283653 (n + 1)) (A326168 n)

end

end A174326.P11625411735853956673

/-! ## A174326.P4355944376897032207

`abs(A283653(n+1)+A159075(n))`
-/

namespace A174326.P4355944376897032207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A283653 (n + 1) + A159075 n|

end

end A174326.P4355944376897032207

/-!
# A174327: Conjecturally, even numbers n such that every even number greater than n has more decompositions as the sum of two primes.

The programs for A174327, there is no canonical definition to state claims against.
-/

/-! ## A174327.P18109932869534511980

`record[2*A135733(A331301(n+1))]`
-/

namespace A174327.P18109932869534511980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135733 (A331301 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174327.P18109932869534511980

/-! ## A174327.P3656460768613252212

`record[A000954(n)]`
-/

namespace A174327.P3656460768613252212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174327.P3656460768613252212

/-! ## A174327.P17264283846054404121

`A000954(A174328(n+1))`
-/

namespace A174327.P17264283846054404121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 (A174328 (n + 1)).toNat

end

end A174327.P17264283846054404121

/-! ## A174327.P4501504483464093358

`A000954(eq[2*A135733(n+1), A000954(n)])`
-/

namespace A174327.P4501504483464093358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A174327.P4501504483464093358

/-! ## A174327.P17539435603871925437

`A000954(eq[2, A000954(n)/A135733(n+1)])`
-/

namespace A174327.P17539435603871925437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000954 n : ℚ) / (A135733 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A174327.P17539435603871925437

/-! ## A174327.P15937389398436257080

`A000954(eq[A000954(n), A056636(n)])`
-/

namespace A174327.P15937389398436257080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A174327.P15937389398436257080

/-! ## A174327.P11395005288982688840

`A056636(A174328(n+2)-1)`
-/

namespace A174327.P11395005288982688840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056636 (A174328 (n + 2) - 1).toNat

end

end A174327.P11395005288982688840

/-! ## A174327.P5422852786040670250

`record[A056636(n)%A056636(n+2)]`
-/

namespace A174327.P5422852786040670250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056636 n) (A056636 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174327.P5422852786040670250

/-!
# A174328: The number of decompositions into the sum of two primes for the numbers in A174327.

The programs for A174328, there is no canonical definition to state claims against.
-/

/-! ## A174328.P3622638869686880799

`eq[2*A135733(n+1), A000954(n)]`
-/

namespace A174328.P3622638869686880799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174328.P3622638869686880799

/-! ## A174328.P4144809839218662196

`eq[A000954(n), A056636(n)]`
-/

namespace A174328.P4144809839218662196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056636 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174328.P4144809839218662196

/-! ## A174328.P114068738158456984

`eq[1, A005897(A056636(n)%A352298(n))]`
-/

namespace A174328.P114068738158456984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (Int.tmod (A056636 n) (A352298 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174328.P114068738158456984

/-! ## A174328.P7052817462509576587

`A045917(record[A000954(n)/2])`
-/

namespace A174328.P7052817462509576587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000954 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A174328.P7052817462509576587

/-! ## A174328.P1602469629917970286

`A045917(A174327(n+1)/2)`
-/

namespace A174328.P1602469629917970286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (SequenceMachineLib.roundAway ((A174327 (n + 1) : ℚ) / 2)).toNat

end

end A174328.P1602469629917970286

/-! ## A174328.P18202889139726536352

`A190353(record[A000954(n)])`
-/

namespace A174328.P18202889139726536352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A174328.P18202889139726536352

/-! ## A174328.P10726895402017245420

`A190353(A174327(n+1))`
-/

namespace A174328.P10726895402017245420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (A174327 (n + 1)).toNat

end

end A174328.P10726895402017245420

/-!
# A174331: n such that tau(Fibonacci(n)) is a perfect square.

The programs for A174331, there is no canonical definition to state claims against.
-/

/-! ## A174331.P14951654558454304360

`eq[1, A000005(A063375(n+1))%2]+1`
-/

namespace A174331.P14951654558454304360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A063375 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174331.P14951654558454304360

/-! ## A174331.P12652009351054319336

`eq[2, gcd(2, A105307(n+1))]+1`
-/

namespace A174331.P12652009351054319336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A105307 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A174331.P12652009351054319336

/-! ## A174331.P5836570089113275570

`eq[1, A010052(A063375(n+1))]+1`
-/

namespace A174331.P5836570089113275570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A063375 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174331.P5836570089113275570

/-! ## A174331.P873732826469213358

`record[A000027(n+1)*A010052(A063375(n+1))]`
-/

namespace A174331.P873732826469213358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A010052 (A063375 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174331.P873732826469213358

/-! ## A174331.P13121255102367383948

`record[A010052(A063375(n+1))*A028242(2*n)]`
-/

namespace A174331.P13121255102367383948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A063375 (n + 1)).toNat * A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174331.P13121255102367383948

/-!
# A174332: Least prime q of which prime(n) is a proper binary substring.

The programs for A174332, there is no canonical definition to state claims against.
-/

/-! ## A174332.P16009839089482571461

`A208238(A000040(n+1))`
-/

namespace A174332.P16009839089482571461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208238 (A000040 (n + 1)).toNat

end

end A174332.P16009839089482571461

/-! ## A174332.P943243170570874287

`A208238(A008578(n+2))`
-/

namespace A174332.P943243170570874287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208238 (A008578 (n + 2)).toNat

end

end A174332.P943243170570874287

/-! ## A174332.P849630530921507855

`A208238(A182986(n+2))`
-/

namespace A174332.P849630530921507855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208238 (A182986 (n + 2)).toNat

end

end A174332.P849630530921507855

/-! ## A174332.P17711878092873200821

`A208238(record[A006530(n+2)])`
-/

namespace A174332.P17711878092873200821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A174332.P17711878092873200821

/-! ## A174332.P12735263687711719746

`A208238(record[A014963(n+2)])`
-/

namespace A174332.P12735263687711719746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A174332.P12735263687711719746

/-! ## A174332.P9180953297986208199

`A208238(record[A020639(n+2)])`
-/

namespace A174332.P9180953297986208199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A174332.P9180953297986208199

/-! ## A174332.P15753974373263860479

`A208238(A294994(A303595(n+1)))`
-/

namespace A174332.P15753974373263860479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208238 (A294994 (A303595 (n + 1)).toNat).toNat

end

end A174332.P15753974373263860479

/-! ## A174332.P17308413042322893565

`A208238(A262365(∑[n+1]))`
-/

namespace A174332.P17308413042322893565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208238 (A262365 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A174332.P17308413042322893565

/-!
# A174333: a(n) = 61*n^2.

The programs for A174333, the canonical program `A174333.P12370012609681175695` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174333 has offset 0).

The definition of A174333 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `61*n²` (program `A174333.P12370012609681175695`, by `A174333.P12370012609681175695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174333.P12370012609681175695

`61*n²`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174333

/-- `61*n²` -/
def P12370012609681175695.Spec : Prop :=
  ∀ n, (P12370012609681175695.a n : ℤ) = A174333 n

theorem P12370012609681175695.correct : P12370012609681175695.Spec := by
  intro n
  simp only [A174333]

end A174333

/-!
# A174334: a(n) = 73*n^2.

The programs for A174334, the canonical program `A174334.P6456733787142349074` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174334 has offset 0).

The definition of A174334 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `73*n²` (program `A174334.P6456733787142349074`, by `A174334.P6456733787142349074.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174334.P6456733787142349074

`73*n²`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174334

/-- `73*n²` -/
def P6456733787142349074.Spec : Prop :=
  ∀ n, (P6456733787142349074.a n : ℤ) = A174334 n

theorem P6456733787142349074.correct : P6456733787142349074.Spec := by
  intro n
  simp only [A174334]

end A174334

/-!
# A174335: Upper bound in enumerating what majority decisions are possible with possible abstaining.

The programs for A174335, the canonical program `A174335.P16590720201833097122` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174335 has offset 0).

The definition of A174335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174335.P16590720201833097122

`16*n^3*n!`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174335

/-- `16*n^3*n!` -/
def P16590720201833097122.Spec : Prop :=
  ∀ n, (P16590720201833097122.a n : ℤ) = A174335 n

theorem P16590720201833097122.correct : P16590720201833097122.Spec := by
  intro n
  simp only [A174335]

end A174335

/-! ## A174335.P4335634380743567710

`16*A091363(n)`
-/

namespace A174335.P4335634380743567710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A091363 n

end

end A174335.P4335634380743567710

namespace A174335

/-- `16*A091363(n)` -/
def P4335634380743567710.Spec : Prop :=
  ∀ n, P4335634380743567710.a n = A174335 n

end A174335

/-! ## A174335.P6870499719536251603

`16*A000578(n)*A000142(n)`
-/

namespace A174335.P6870499719536251603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000578 n * A000142 n

end

end A174335.P6870499719536251603

namespace A174335

/-- `16*A000578(n)*A000142(n)` -/
def P6870499719536251603.Spec : Prop :=
  ∀ n, P6870499719536251603.a n = A174335 n

end A174335

/-! ## A174335.P14626782372164268418

`(4*n)²*Δ[n!]`
-/

namespace A174335.P14626782372164268418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n) ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A174335.P14626782372164268418

namespace A174335

/-- `(4*n)²*Δ[n!]` -/
def P14626782372164268418.Spec : Prop :=
  ∀ n, P14626782372164268418.a n = A174335 n

theorem P14626782372164268418.correct : P14626782372164268418.Spec := by
  intro n
  simp only [A174335, Nat.add_sub_cancel, A174335.P14626782372164268418.f1, A174335.P14626782372164268418.a, A174335.P16590720201833097122.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A174335

/-! ## A174335.P13423466849221779073

`n*(4*n)²*n!`
-/

namespace A174335.P13423466849221779073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (4 * n) ^ 2 * Nat.factorial n

end

end A174335.P13423466849221779073

namespace A174335

/-- `n*(4*n)²*n!` -/
def P13423466849221779073.Spec : Prop :=
  ∀ n, (P13423466849221779073.a n : ℤ) = A174335 n

theorem P13423466849221779073.correct : P13423466849221779073.Spec := by
  intro n
  simp only [A174335, Nat.add_sub_cancel, A174335.P13423466849221779073.a, A174335.P16590720201833097122.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A174335

/-! ## A174335.P10037085749105122657

`(2*n)²*Δ[n*a(n-1)]` with `a(0)=4`
-/

namespace A174335.P10037085749105122657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A174335.P10037085749105122657

namespace A174335

/-- `(2*n)²*Δ[n*a(n-1)]` -/
def P10037085749105122657.Spec : Prop :=
  ∀ n, P10037085749105122657.a n = A174335 n

end A174335

/-! ## A174335.P8716115929298436275

`2*A000142(n)*A016743(n)`
-/

namespace A174335.P8716115929298436275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000142 n * A016743 n)

end

end A174335.P8716115929298436275

namespace A174335

/-- `2*A000142(n)*A016743(n)` -/
def P8716115929298436275.Spec : Prop :=
  ∀ n, P8716115929298436275.a n = A174335 n

end A174335

/-! ## A174335.P9441991284407304985

`A000142(n)*A033431(2*n)`
-/

namespace A174335.P9441991284407304985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A033431 (2 * n)

end

end A174335.P9441991284407304985

namespace A174335

/-- `A000142(n)*A033431(2*n)` -/
def P9441991284407304985.Spec : Prop :=
  ∀ n, P9441991284407304985.a n = A174335 n

end A174335

/-! ## A174335.P1849294203829971006

`A005843(n)²²*A104150(n)`
-/

namespace A174335.P1849294203829971006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 n ^ 2) ^ 2 * A104150 n

end

end A174335.P1849294203829971006

namespace A174335

/-- `A005843(n)²²*A104150(n)` -/
def P1849294203829971006.Spec : Prop :=
  ∀ n, P1849294203829971006.a n = A174335 n

end A174335

/-!
# A174336: a(n) = the smallest n-digit number with exactly 5 divisors, or 0 if no such number exists.

The programs for A174336, there is no canonical definition to state claims against.
-/

/-! ## A174336.P11834476650541933891

`record[A090482(A334299(n))²²]`
-/

namespace A174336.P11834476650541933891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090482 (A334299 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174336.P11834476650541933891

/-! ## A174336.P7017723273820321769

`record[A297934(A001748(n+1))²²]`
-/

namespace A174336.P7017723273820321769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A297934 (A001748 (n + 1)).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174336.P7017723273820321769

/-!
# A174337: a(n) = 94*n^2.

The programs for A174337, the canonical program `A174337.P12878813934606119776` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174337 has offset 0).

The definition of A174337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `94*n²` (program `A174337.P12878813934606119776`, by `A174337.P12878813934606119776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174337.P12878813934606119776

`94*n²`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174337

/-- `94*n²` -/
def P12878813934606119776.Spec : Prop :=
  ∀ n, (P12878813934606119776.a n : ℤ) = A174337 n

theorem P12878813934606119776.correct : P12878813934606119776.Spec := by
  intro n
  simp only [A174337]

end A174337

/-!
# A174338: a(n) = 97*n^2.

The programs for A174338, the canonical program `A174338.P726745204243272927` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174338 has offset 0).

The definition of A174338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `97*n²` (program `A174338.P726745204243272927`, by `A174338.P726745204243272927.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174338.P726745204243272927

`97*n²`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174338

/-- `97*n²` -/
def P726745204243272927.Spec : Prop :=
  ∀ n, (P726745204243272927.a n : ℤ) = A174338 n

theorem P726745204243272927.correct : P726745204243272927.Spec := by
  intro n
  simp only [A174338]

end A174338

/-!
# A174339: a(n) = 109*n^2.

The programs for A174339, the canonical program `A174339.P4398183822078760161` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174339 has offset 0).

The definition of A174339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `109*n²` (program `A174339.P4398183822078760161`, by `A174339.P4398183822078760161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174339.P4398183822078760161

`109*n²`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174339

/-- `109*n²` -/
def P4398183822078760161.Spec : Prop :=
  ∀ n, (P4398183822078760161.a n : ℤ) = A174339 n

theorem P4398183822078760161.correct : P4398183822078760161.Spec := by
  intro n
  simp only [A174339]

end A174339

/-!
# A174340: a(n) = mu(Fibonacci(n)), where mu is the Moebius function A008683, n >=1.

The programs for A174340, there is no canonical definition to state claims against.
-/

/-! ## A174340.P3098254597955756650

`A008683(A278245(n+1)%∑[98*n+47])`
-/

namespace A174340.P3098254597955756650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  98 * n + 47

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.tmod (A278245 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A174340.P3098254597955756650

/-! ## A174340.P12718970289538208103

`A008683(A278245(n+1))`
-/

namespace A174340.P12718970289538208103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278245 (n + 1)).toNat

end

end A174340.P12718970289538208103

/-! ## A174340.P10309337712059473718

`round(acot(∏{e}[A000045(n+1), -#]))`
-/

namespace A174340.P10309337712059473718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorization (f1 n).natAbs p : ℤ)) : ℤ) : ℝ))

end

end A174340.P10309337712059473718

/-! ## A174340.P10773789968881240010

`∏{e}[Δ[A000045(n+2)], -floor(1/#)]`
-/

namespace A174340.P10773789968881240010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-⌊1 / (Nat.factorization (f1 n).natAbs p : ℚ)⌋)

end

end A174340.P10773789968881240010

/-!
# A174342: Denominator of ( A164555(n)/A027642(n) + 1/(n+1) ).

The programs for A174342, there is no canonical definition to state claims against.
-/

/-! ## A174342.P12776701951170447363

`A309132(n+1)/(n+1)*A027642(n)`
-/

namespace A174342.P12776701951170447363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309132 (n + 1) : ℚ) / (n + 1 : ℚ) * (A027642 n : ℚ)

end

end A174342.P12776701951170447363

/-! ## A174342.P1099182733907314362

`gcd(n+1, A309132(n+1))*A050932(n)`
-/

namespace A174342.P1099182733907314362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A309132 (n + 1)) : ℤ) * A050932 n

end

end A174342.P1099182733907314362

/-! ## A174342.P8741999154005444494

`A019554(A309132(n+1))*A050932(n)`
-/

namespace A174342.P8741999154005444494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A309132 (n + 1)).toNat * A050932 n

end

end A174342.P8741999154005444494

/-! ## A174342.P16297958149982459222

`A019554(lcm(A050932(n), A309132(n+1)))`
-/

namespace A174342.P16297958149982459222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (Int.lcm (A050932 n) (A309132 (n + 1)))

end

end A174342.P16297958149982459222

/-! ## A174342.P2924454424118650727

`A019554(A166120(n+1)*A309132(n+1))`
-/

namespace A174342.P2924454424118650727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A166120 (n + 1) * A309132 (n + 1)).toNat

end

end A174342.P2924454424118650727

/-!
# A174343: Primes p such that p^3+p^2+15*p+18 is also prime.

The programs for A174343, there is no canonical definition to state claims against.
-/

/-! ## A174343.P15010805164803599826

`A007645(∩[A139063(n+1), A007091(n)])`
-/

namespace A174343.P15010805164803599826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A174343.P15010805164803599826

/-! ## A174343.P70859540985294580

`A176180(A032805(n+1))`
-/

namespace A174343.P70859540985294580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176180 (A032805 (n + 1)).toNat

end

end A174343.P70859540985294580

/-!
# A174344: List of x-coordinates of point moving in clockwise square spiral.

The programs for A174344, the canonical program `A174344.P13859978048200465052` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174344 has offset 1).

The definition of A174344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174344.P4755132043974982476

`A296030(Δ[n²])`
-/

namespace A174344.P4755132043974982476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A174344.P4755132043974982476

namespace A174344

/-- `A296030(Δ[n²])` -/
def P4755132043974982476.Spec : Prop :=
  ∀ n, P4755132043974982476.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P11142256081605177681

`A296030(2*n+1)%(n+1)`
-/

namespace A174344.P11142256081605177681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296030 (2 * n + 1)) (n + 1 : ℤ)

end

end A174344.P11142256081605177681

namespace A174344

/-- `A296030(2*n+1)%(n+1)` -/
def P11142256081605177681.Spec : Prop :=
  ∀ n, P11142256081605177681.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P10810854714658646099

`A274923(A020703(n+1))`
-/

namespace A174344.P10810854714658646099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A020703 (n + 1)).toNat

end

end A174344.P10810854714658646099

namespace A174344

/-- `A274923(A020703(n+1))` -/
def P10810854714658646099.Spec : Prop :=
  ∀ n, P10810854714658646099.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P7389988093955168830

`A305575(A308081(n+1))`
-/

namespace A174344.P7389988093955168830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (A308081 (n + 1)).toNat

end

end A174344.P7389988093955168830

namespace A174344

/-- `A305575(A308081(n+1))` -/
def P7389988093955168830.Spec : Prop :=
  ∀ n, P7389988093955168830.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P392352648242082809

`A268038(n+1)+A180714(n)`
-/

namespace A174344.P392352648242082809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (n + 1) + A180714 n

end

end A174344.P392352648242082809

namespace A174344

/-- `A268038(n+1)+A180714(n)` -/
def P392352648242082809.Spec : Prop :=
  ∀ n, P392352648242082809.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P18046526541379380442

`A329116(n)+A274923(n+1)`
-/

namespace A174344.P18046526541379380442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n + A274923 (n + 1)

end

end A174344.P18046526541379380442

namespace A174344

/-- `A329116(n)+A274923(n+1)` -/
def P18046526541379380442.Spec : Prop :=
  ∀ n, P18046526541379380442.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P12068156758275506660

`A180714(n)-A274923(n+1)`
-/

namespace A174344.P12068156758275506660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 n - A274923 (n + 1)

end

end A174344.P12068156758275506660

namespace A174344

/-- `A180714(n)-A274923(n+1)` -/
def P12068156758275506660.Spec : Prop :=
  ∀ n, P12068156758275506660.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P2472100183830118143

`A329116(n)-A268038(n+1)`
-/

namespace A174344.P2472100183830118143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n - A268038 (n + 1)

end

end A174344.P2472100183830118143

namespace A174344

/-- `A329116(n)-A268038(n+1)` -/
def P2472100183830118143.Spec : Prop :=
  ∀ n, P2472100183830118143.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P13859978048200465052

`(A329116(n)+A180714(n))/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A174344

/-- `(A329116(n)+A180714(n))/2` -/
def P13859978048200465052.Spec : Prop :=
  ∀ n, P13859978048200465052.a n = (A174344 (n + 1) : ℚ)

end A174344

/-! ## A174344.P12468933503550687324

`A180714(n)-A296030(2*(n+1))`
-/

namespace A174344.P12468933503550687324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 n - A296030 (2 * (n + 1))

end

end A174344.P12468933503550687324

namespace A174344

/-- `A180714(n)-A296030(2*(n+1))` -/
def P12468933503550687324.Spec : Prop :=
  ∀ n, P12468933503550687324.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P6590661965718205005

`A010751(n-∑[char[A004202(n+1)]])`
-/

namespace A174344.P6590661965718205005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174344.P6590661965718205005

namespace A174344

/-- `A010751(n-∑[char[A004202(n+1)]])` -/
def P6590661965718205005.Spec : Prop :=
  ∀ n, P6590661965718205005.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P386019642983904991

`A180714(A053615(n)+n)/2`
-/

namespace A174344.P386019642983904991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180714 (A053615 n + (n : ℤ)).toNat : ℚ) / 2

end

end A174344.P386019642983904991

namespace A174344

/-- `A180714(A053615(n)+n)/2` -/
def P386019642983904991.Spec : Prop :=
  ∀ n, P386019642983904991.a n = (A174344 (n + 1) : ℚ)

end A174344

/-! ## A174344.P90085037112137894

`A274923(A164386(n+1))`
-/

namespace A174344.P90085037112137894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A164386 (n + 1)).toNat

end

end A174344.P90085037112137894

namespace A174344

/-- `A274923(A164386(n+1))` -/
def P90085037112137894.Spec : Prop :=
  ∀ n, P90085037112137894.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P2329935175871467160

`A274923(A000194(n)+1+n)`
-/

namespace A174344.P2329935175871467160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A000194 n + 1 + (n : ℤ)).toNat

end

end A174344.P2329935175871467160

namespace A174344

/-- `A274923(A000194(n)+1+n)` -/
def P2329935175871467160.Spec : Prop :=
  ∀ n, P2329935175871467160.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P13423176499259428595

`A274923(comp[n²])`
-/

namespace A174344.P13423176499259428595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A174344.P13423176499259428595

namespace A174344

/-- `A274923(comp[n²])` -/
def P13423176499259428595.Spec : Prop :=
  ∀ n, P13423176499259428595.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P7783378301179740685

`A359216(2*n)+A274923(n+1)`
-/

namespace A174344.P7783378301179740685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359216 (2 * n) + A274923 (n + 1)

end

end A174344.P7783378301179740685

namespace A174344

/-- `A359216(2*n)+A274923(n+1)` -/
def P7783378301179740685.Spec : Prop :=
  ∀ n, P7783378301179740685.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P3647789224450793370

`A359217(2*n)-A296030(2*(n+1))`
-/

namespace A174344.P3647789224450793370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359217 (2 * n) - A296030 (2 * (n + 1))

end

end A174344.P3647789224450793370

namespace A174344

/-- `A359217(2*n)-A296030(2*(n+1))` -/
def P3647789224450793370.Spec : Prop :=
  ∀ n, P3647789224450793370.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P4511363925973622198

`ceil(A340172(2*n)/2)`
-/

namespace A174344.P4511363925973622198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A340172 (2 * n) : ℚ) / 2⌉

end

end A174344.P4511363925973622198

namespace A174344

/-- `ceil(A340172(2*n)/2)` -/
def P4511363925973622198.Spec : Prop :=
  ∀ n, P4511363925973622198.a n = A174344 (n + 1)

end A174344

/-! ## A174344.P14263059053297163464

`A274923(n+1)+A274923(A316884(n+1))`
-/

namespace A174344.P14263059053297163464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (n + 1) + A274923 (A316884 (n + 1)).toNat

end

end A174344.P14263059053297163464

namespace A174344

/-- `A274923(n+1)+A274923(A316884(n+1))` -/
def P14263059053297163464.Spec : Prop :=
  ∀ n, P14263059053297163464.a n = A174344 (n + 1)

end A174344

/-!
# A174345: Triangle T(n, k) = (1/k)*binomial(n-1, k-1)*binomial(n, k-1)*2^(k-1) if floor(n/2) >= k, otherwise (1/k)*binomial(n-1, k-1)*binomial(n, k-1)*2^(n-k), read by rows.

The programs for A174345, the canonical program `A174345.P17813268543818812090` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174345 has offset 1).

The definition of A174345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174345.P17813268543818812090

`A001263(n+1)*A144464(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A174345

/-- `A001263(n+1)*A144464(n)` -/
def P17813268543818812090.Spec : Prop :=
  ∀ n, P17813268543818812090.a n = A174345 (n + 1)

theorem P17813268543818812090.correct : P17813268543818812090.Spec := by
  intro n
  simp only [A174345, Nat.add_sub_cancel]

end A174345

/-! ## A174345.P17538586692484212269

`gcd(A114656(n+1), A114687(n+1))`
-/

namespace A174345.P17538586692484212269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114656 (n + 1)) (A114687 (n + 1))

end

end A174345.P17538586692484212269

namespace A174345

/-- `gcd(A114656(n+1), A114687(n+1))` -/
def P17538586692484212269.Spec : Prop :=
  ∀ n, (P17538586692484212269.a n : ℤ) = A174345 (n + 1)

end A174345

/-! ## A174345.P2034586882773643962

`A000079(A004197(n))*A001263(n+1)`
-/

namespace A174345.P2034586882773643962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004197 n).toNat * A001263 (n + 1)

end

end A174345.P2034586882773643962

namespace A174345

/-- `A000079(A004197(n))*A001263(n+1)` -/
def P2034586882773643962.Spec : Prop :=
  ∀ n, P2034586882773643962.a n = A174345 (n + 1)

end A174345

/-! ## A174345.P18147753769315251343

`A001263(n+1)*A130321(A286150(n))`
-/

namespace A174345.P18147753769315251343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A130321 (A286150 n).toNat

end

end A174345.P18147753769315251343

namespace A174345

/-- `A001263(n+1)*A130321(A286150(n))` -/
def P18147753769315251343.Spec : Prop :=
  ∀ n, P18147753769315251343.a n = A174345 (n + 1)

end A174345

/-! ## A174345.P2692136480732895333

`A001263(n+1)*A131577(A003983(n+1))`
-/

namespace A174345.P2692136480732895333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A131577 (A003983 (n + 1)).toNat

end

end A174345.P2692136480732895333

namespace A174345

/-- `A001263(n+1)*A131577(A003983(n+1))` -/
def P2692136480732895333.Spec : Prop :=
  ∀ n, P2692136480732895333.a n = A174345 (n + 1)

end A174345

/-! ## A174345.P11098904121255458430

`A001263(n+1)*A016116(A157454(n+1))`
-/

namespace A174345.P11098904121255458430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A016116 (A157454 (n + 1)).toNat

end

end A174345.P11098904121255458430

namespace A174345

/-- `A001263(n+1)*A016116(A157454(n+1))` -/
def P11098904121255458430.Spec : Prop :=
  ∀ n, P11098904121255458430.a n = A174345 (n + 1)

end A174345

/-! ## A174345.P2260290769240621155

`A001263(n+1)*A130321(A168281(n+1))`
-/

namespace A174345.P2260290769240621155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A130321 (A168281 (n + 1)).toNat

end

end A174345.P2260290769240621155

namespace A174345

/-- `A001263(n+1)*A130321(A168281(n+1))` -/
def P2260290769240621155.Spec : Prop :=
  ∀ n, P2260290769240621155.a n = A174345 (n + 1)

end A174345

/-! ## A174345.P3323698935857564714

`A001263(n+1)*A046523(A152714(n))`
-/

namespace A174345.P3323698935857564714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A046523 (A152714 n).toNat

end

end A174345.P3323698935857564714

namespace A174345

/-- `A001263(n+1)*A046523(A152714(n))` -/
def P3323698935857564714.Spec : Prop :=
  ∀ n, P3323698935857564714.a n = A174345 (n + 1)

end A174345

/-! ## A174345.P10315727345164790008

`A001263(n+1)*A072504(A152716(n))`
-/

namespace A174345.P10315727345164790008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A072504 (A152716 n).toNat

end

end A174345.P10315727345164790008

namespace A174345

/-- `A001263(n+1)*A072504(A152716(n))` -/
def P10315727345164790008.Spec : Prop :=
  ∀ n, P10315727345164790008.a n = A174345 (n + 1)

end A174345

/-!
# A174346: Triangle T(n, k) = (binomial(n-1, k-1)*binomial(n, k-1)/k) * ( 3^(k-1) if floor(n/2) >= k, otherwise 3^(n-k) ), read by rows.

The programs for A174346, the canonical program `A174346.P7160207387217513728` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174346 has offset 1).

The definition of A174346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174346.P7160207387217513728

`A001263(n+1)*A152714(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A174346

/-- `A001263(n+1)*A152714(n)` -/
def P7160207387217513728.Spec : Prop :=
  ∀ n, P7160207387217513728.a n = A174346 (n + 1)

theorem P7160207387217513728.correct : P7160207387217513728.Spec := by
  intro n
  simp only [A174346, Nat.add_sub_cancel]

end A174346

/-! ## A174346.P5652877020660589304

`sqrt(A174158(n+1))*A152714(n)`
-/

namespace A174346.P5652877020660589304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A174158 (n + 1) : ℝ) * (A152714 n : ℝ)

end

end A174346.P5652877020660589304

namespace A174346

/-- `sqrt(A174158(n+1))*A152714(n)` -/
def P5652877020660589304.Spec : Prop :=
  ∀ n, P5652877020660589304.a n = (A174346 (n + 1) : ℝ)

end A174346

/-! ## A174346.P2057970750351608493

`A000244(A004197(n))*A001263(n+1)`
-/

namespace A174346.P2057970750351608493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004197 n).toNat * A001263 (n + 1)

end

end A174346.P2057970750351608493

namespace A174346

/-- `A000244(A004197(n))*A001263(n+1)` -/
def P2057970750351608493.Spec : Prop :=
  ∀ n, P2057970750351608493.a n = A174346 (n + 1)

end A174346

/-! ## A174346.P10400339812889537672

`A090181(A014132(n+1))*A152714(n)`
-/

namespace A174346.P10400339812889537672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A014132 (n + 1)).toNat * A152714 n

end

end A174346.P10400339812889537672

namespace A174346

/-- `A090181(A014132(n+1))*A152714(n)` -/
def P10400339812889537672.Spec : Prop :=
  ∀ n, P10400339812889537672.a n = A174346 (n + 1)

end A174346

/-! ## A174346.P6236408816396844752

`(A132789(n+1)-A014473(n))*A152714(n)`
-/

namespace A174346.P6236408816396844752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132789 (n + 1) - A014473 n) * A152714 n

end

end A174346.P6236408816396844752

namespace A174346

/-- `(A132789(n+1)-A014473(n))*A152714(n)` -/
def P6236408816396844752.Spec : Prop :=
  ∀ n, P6236408816396844752.a n = A174346 (n + 1)

end A174346

/-! ## A174346.P18392371754873973053

`(A108838(n+2)-A119308(n))*A152714(n)`
-/

namespace A174346.P18392371754873973053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108838 (n + 2) - A119308 n) * A152714 n

end

end A174346.P18392371754873973053

namespace A174346

/-- `(A108838(n+2)-A119308(n))*A152714(n)` -/
def P18392371754873973053.Spec : Prop :=
  ∀ n, P18392371754873973053.a n = A174346 (n + 1)

end A174346

/-! ## A174346.P926218194453998845

`A114656(n+1)/A130321(n)*A152714(n)`
-/

namespace A174346.P926218194453998845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114656 (n + 1) : ℚ) / (A130321 n : ℚ) * (A152714 n : ℚ)

end

end A174346.P926218194453998845

namespace A174346

/-- `A114656(n+1)/A130321(n)*A152714(n)` -/
def P926218194453998845.Spec : Prop :=
  ∀ n, P926218194453998845.a n = (A174346 (n + 1) : ℚ)

end A174346

/-! ## A174346.P5678914526939814117

`gcd(A155537(n+1), A174124(n))*A152714(n)`
-/

namespace A174346.P5678914526939814117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A155537 (n + 1)) (A174124 n) : ℤ) * A152714 n

end

end A174346.P5678914526939814117

namespace A174346

/-- `gcd(A155537(n+1), A174124(n))*A152714(n)` -/
def P5678914526939814117.Spec : Prop :=
  ∀ n, P5678914526939814117.a n = A174346 (n + 1)

end A174346

/-! ## A174346.P12551005241205177434

`A132812(n+1)/A002024(n+1)*A152714(n)`
-/

namespace A174346.P12551005241205177434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132812 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A152714 n : ℚ)

end

end A174346.P12551005241205177434

namespace A174346

/-- `A132812(n+1)/A002024(n+1)*A152714(n)` -/
def P12551005241205177434.Spec : Prop :=
  ∀ n, P12551005241205177434.a n = (A174346 (n + 1) : ℚ)

end A174346

/-!
# A174347: Expansion of (1 - 2*x - sqrt(1 - 8*x + 8*x^2))/(2*x*(1-x)).

The programs for A174347, there is no canonical definition to state claims against.
-/

/-! ## A174347.P7088539717223068027

`∑[A166229(n)]`
-/

namespace A174347.P7088539717223068027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174347.P7088539717223068027

/-! ## A174347.P7129750103342191094

`∑[2*A068764(n)]-1`
-/

namespace A174347.P7129750103342191094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A174347.P7129750103342191094

/-! ## A174347.P3468504224958052756

`2*A118376(n+1)-1`
-/

namespace A174347.P3468504224958052756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118376 (n + 1) - 1

end

end A174347.P3468504224958052756

/-! ## A174347.P767281677841594942

`∑[A036453(n+1)*A068764(n)]`
-/

namespace A174347.P767281677841594942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A068764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174347.P767281677841594942

/-! ## A174347.P16083111825125451579

`∑[A020639(A000118(n))*A068764(n)]`
-/

namespace A174347.P16083111825125451579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 n).toNat * A068764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174347.P16083111825125451579

/-! ## A174347.P11451167511034203506

`∑[A020639(A001316(n))*A068764(n)]`
-/

namespace A174347.P11451167511034203506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A068764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174347.P11451167511034203506

/-! ## A174347.P17356213075416981510

`∑[A020639(A008458(n))*A068764(n)]`
-/

namespace A174347.P17356213075416981510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A068764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174347.P17356213075416981510

/-! ## A174347.P16983695140484455824

`∑[A068764(n)+A068764(n)-A000007(n)]`
-/

namespace A174347.P16983695140484455824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068764 n + (A068764 n - A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174347.P16983695140484455824

/-!
# A174348: Alternately multiply and divide, with a(1)=3 and a(1)=7.

The programs for A174348, there is no canonical definition to state claims against.
-/

/-! ## A174348.P2398418649044098537

`a(n-2)*a(n-4)` with `a(0)=3, a(1)=7, a(2)=21, a(3)=3`
-/

namespace A174348.P2398418649044098537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 21, 3] fun n a =>
  a (n - 2) * a (n - 4)

end

end A174348.P2398418649044098537

/-! ## A174348.P14063029615864327392

`A297002(A115033(n+1))`
-/

namespace A174348.P14063029615864327392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (A115033 (n + 1)).toNat

end

end A174348.P14063029615864327392

/-!
# A174349: Square array: row n gives the indices i for which prime(i+1) = prime(i) + 2n; read by falling antidiagonals.

The programs for A174349, there is no canonical definition to state claims against.
-/

/-! ## A174349.P15976853933881409195

`A000720(A174350(n+1)+1)`
-/

namespace A174349.P15976853933881409195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A174350 (n + 1) + 1).toNat

end

end A174349.P15976853933881409195

/-! ## A174349.P5699465620586056971

`A000720(A174350(n+1))`
-/

namespace A174349.P5699465620586056971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A174350 (n + 1)).toNat

end

end A174349.P5699465620586056971

/-! ## A174349.P5570601648154149558

`A061395(p?[A174350(n+1)])`
-/

namespace A174349.P5570601648154149558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174349.P5570601648154149558

/-! ## A174349.P12234033157112202365

`∑{d}[A174350(n+1), A061395(#)]`
-/

namespace A174349.P12234033157112202365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A174349.P12234033157112202365

/-! ## A174349.P14007885644464904213

`A061395(∏{p}[A174350(n+1), #])`
-/

namespace A174349.P14007885644464904213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A174349.P14007885644464904213

/-! ## A174349.P10813269277668868298

`A061395(2*A174350(n+1))`
-/

namespace A174349.P10813269277668868298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A174350 (n + 1)).toNat

end

end A174349.P10813269277668868298

/-! ## A174349.P8805198457388973987

`A061395(lcm(2, A174350(n+1)))`
-/

namespace A174349.P8805198457388973987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A174350 (n + 1)))

end

end A174349.P8805198457388973987

/-! ## A174349.P8847877745805822320

`A277322(p?[A174350(n+1)])+1`
-/

namespace A174349.P8847877745805822320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A174349.P8847877745805822320

/-! ## A174349.P10065868407680439081

`A079067(p?[A174350(n+1)])+1`
-/

namespace A174349.P10065868407680439081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A174349.P10065868407680439081

/-! ## A174349.P6760051931264554361

`A082460(p?[A174350(n+1)])+1`
-/

namespace A174349.P6760051931264554361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A174349.P6760051931264554361

/-! ## A174349.P16899364318926760621

`A082460(A174350(n+1)-2)+2`
-/

namespace A174349.P16899364318926760621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (A174350 (n + 1) - 2).toNat + 2

end

end A174349.P16899364318926760621

/-! ## A174349.P10341059172134766948

`A230980(p?[A174350(n+1)])`
-/

namespace A174349.P10341059172134766948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174349.P10341059172134766948

/-! ## A174349.P17233846318311743857

`A230980(A174350(n+1)+1)`
-/

namespace A174349.P17233846318311743857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A174350 (n + 1) + 1).toNat

end

end A174349.P17233846318311743857

/-! ## A174349.P2243089812864556800

`A036234(A174350(n+1)-1)`
-/

namespace A174349.P2243089812864556800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A174350 (n + 1) - 1).toNat

end

end A174349.P2243089812864556800

/-! ## A174349.P18372213833595789797

`∑{d}[A174350(n+1), A055396(#)]`
-/

namespace A174349.P18372213833595789797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A174349.P18372213833595789797

/-! ## A174349.P15004205738097236625

`A252464(∏{p}[A174350(n+1), #])`
-/

namespace A174349.P15004205738097236625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A174349.P15004205738097236625

/-! ## A174349.P13999543786990499503

`A048865(p?[A174350(n+1)])+1`
-/

namespace A174349.P13999543786990499503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A174349.P13999543786990499503

/-! ## A174349.P17585539614978153232

`A247815(p?[A174350(n+1)])+1`
-/

namespace A174349.P17585539614978153232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247815 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A174349.P17585539614978153232

/-! ## A174349.P1125840937285298807

`A297167(p?[A174350(n+1)])+1`
-/

namespace A174349.P1125840937285298807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A174349.P1125840937285298807

/-! ## A174349.P3842889837701865582

`A079067(2*A174350(n+1))+2`
-/

namespace A174349.P3842889837701865582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (2 * A174350 (n + 1)).toNat + 2

end

end A174349.P3842889837701865582

/-!
# A174350: Square array: row n >= 1 lists the primes p for which the next prime is p+2n; read by antidiagonals.

The programs for A174350, there is no canonical definition to state claims against.
-/

/-! ## A174350.P5427533304701415937

`A231609(A038722(n+1))`
-/

namespace A174350.P5427533304701415937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (A038722 (n + 1)).toNat

end

end A174350.P5427533304701415937

/-! ## A174350.P12847441500087481297

`A231609(A061579(n)+1)`
-/

namespace A174350.P12847441500087481297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (A061579 n + 1).toNat

end

end A174350.P12847441500087481297

/-! ## A174350.P17025970897909600417

`A000040(A174349(n+1))`
-/

namespace A174350.P17025970897909600417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A174349 (n + 1)).toNat

end

end A174350.P17025970897909600417

/-! ## A174350.P2997973597324296889

`A008578(A174349(n+1)+1)`
-/

namespace A174350.P2997973597324296889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A174349 (n + 1) + 1).toNat

end

end A174350.P2997973597324296889

/-! ## A174350.P16673924170398945870

`A065091(A174349(n+1)-1)`
-/

namespace A174350.P16673924170398945870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A174349 (n + 1) - 1).toNat

end

end A174350.P16673924170398945870

/-! ## A174350.P18280841037518943858

`A065091(A146941(n+1))`
-/

namespace A174350.P18280841037518943858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A146941 (n + 1)).toNat

end

end A174350.P18280841037518943858

/-! ## A174350.P11462292233243845903

`A000040(A146941(n+1)+1)`
-/

namespace A174350.P11462292233243845903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A146941 (n + 1) + 1).toNat

end

end A174350.P11462292233243845903

/-!
# A174351: a(n) = lambda(Fibonacci(n)).

The programs for A174351, there is no canonical definition to state claims against.
-/

/-! ## A174351.P6301259059360447342

`(-1)^A038575(n+1)`
-/

namespace A174351.P6301259059360447342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A038575 (n + 1) : ℤ)

end

end A174351.P6301259059360447342

/-! ## A174351.P9795291462805860712

`A033999(A038575(n+1))`
-/

namespace A174351.P9795291462805860712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A038575 (n + 1)).toNat

end

end A174351.P9795291462805860712

/-! ## A174351.P14587984259410900169

`A087960(A038575(n+1)²)`
-/

namespace A174351.P14587984259410900169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A038575 (n + 1) ^ 2).toNat

end

end A174351.P14587984259410900169

/-! ## A174351.P9266311060939031473

`A219977(A038575(n+1)²)`
-/

namespace A174351.P9266311060939031473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A038575 (n + 1) ^ 2).toNat

end

end A174351.P9266311060939031473

/-! ## A174351.P2946808197005661171

`A087960(2*A038575(n+1))`
-/

namespace A174351.P2946808197005661171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * A038575 (n + 1)).toNat

end

end A174351.P2946808197005661171

/-!
# A174353: a(0)=1, a(1)=2, a(2)=1, and a(n)=a(abs(floor((1/4)*n-a(n-2)))) for n>=3.

The programs for A174353, the canonical program `A174353.P10568383364111855995` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174353 has offset 0).

The definition of A174353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(abs(floor(1/4*n-a(n-2))))` (program `A174353.P10568383364111855995`, by `A174353.P10568383364111855995.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174353.P10568383364111855995

`a(abs(floor(1/4*n-a(n-2))))` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174353

/-- `a(abs(floor(1/4*n-a(n-2))))` -/
def P10568383364111855995.Spec : Prop :=
  ∀ n, (P10568383364111855995.a n : ℤ) = A174353 n

theorem P10568383364111855995.correct : P10568383364111855995.Spec := by
  intro n
  simp only [A174353]

end A174353

/-! ## A174353.P10413274470554103534

`a(floor(n/4-a(n-2)))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A174353.P10413274470554103534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1] fun n a =>
  a ⌊(n : ℚ) / 4 - (a (n - 2) : ℚ)⌋.toNat

end

end A174353.P10413274470554103534

namespace A174353

/-- `a(floor(n/4-a(n-2)))` -/
def P10413274470554103534.Spec : Prop :=
  ∀ n, (P10413274470554103534.a n : ℤ) = A174353 n

end A174353

/-! ## A174353.P9546202182845840138

`a(A002265(n)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A174353.P9546202182845840138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1] fun n a =>
  a (A002265 n - (a (n - 2) : ℤ)).toNat

end

end A174353.P9546202182845840138

namespace A174353

/-- `a(A002265(n)-a(n-2))` -/
def P9546202182845840138.Spec : Prop :=
  ∀ n, (P9546202182845840138.a n : ℤ) = A174353 n

end A174353

/-! ## A174353.P8318744766190620138

`gcd(A177754(n+1), A235032(A025065(n)))`
-/

namespace A174353.P8318744766190620138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A177754 (n + 1)) (A235032 (A025065 n).toNat)

end

end A174353.P8318744766190620138

namespace A174353

/-- `gcd(A177754(n+1), A235032(A025065(n)))` -/
def P8318744766190620138.Spec : Prop :=
  ∀ n, (P8318744766190620138.a n : ℤ) = A174353 n

end A174353

/-! ## A174353.P10489879521365914426

`A053164(A007674(n+1)*A342818(3*n+4))`
-/

namespace A174353.P10489879521365914426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A007674 (n + 1) * A342818 (3 * n + 4)).toNat

end

end A174353.P10489879521365914426

namespace A174353

/-- `A053164(A007674(n+1)*A342818(3*n+4))` -/
def P10489879521365914426.Spec : Prop :=
  ∀ n, P10489879521365914426.a n = A174353 n

end A174353

/-!
# A174354: a(0)=1, a(1)=a(2)=2, a(3)=8 and for n >= 4: if n == 0 (mod 4), a(n)=2, if n == 1 (mod 4), a(n)=8, if n == 2 (mod 4), a(n)=2, if n == 3 (mod 8), a(n)=32, if n = 16k + 15, a(n) = 128*4^k, and if n = 16k+7, a(n) = 128*4^(k-1).

The programs for A174354, there is no canonical definition to state claims against.
-/

/-! ## A174354.P9109056668204427225

`A081294(A091090(n)%A002956(n+1))`
-/

namespace A174354.P9109056668204427225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (Int.tmod (A091090 n) (A002956 (n + 1))).toNat

end

end A174354.P9109056668204427225

/-! ## A174354.P5071840417478518620

`A002618(gcd(A001316(n), A102062(n+1)))`
-/

namespace A174354.P5071840417478518620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (Int.gcd (A001316 n) (A102062 (n + 1)))

end

end A174354.P5071840417478518620

/-! ## A174354.P14601879749276512868

`gcd(A131136(A000292(n)), A163102(2*n+1))`
-/

namespace A174354.P14601879749276512868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131136 (A000292 n).toNat) (A163102 (2 * n + 1))

end

end A174354.P14601879749276512868

/-! ## A174354.P10232702368046727949

`A060632(A242585(n%2*a(floor(n/2))+2))` with `a(0)=1`
-/

namespace A174354.P10232702368046727949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060632 (A242585 (((n % 2 : ℕ) : ℤ) * a ⌊(n : ℚ) / 2⌋.toNat + 2).toNat).toNat

end

end A174354.P10232702368046727949

/-! ## A174354.P12854636226429992699

`A006519(A304588(2*(n+1))*A304588(n+1))`
-/

namespace A174354.P12854636226429992699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A304588 (2 * (n + 1)) * A304588 (n + 1)).toNat

end

end A174354.P12854636226429992699

/-!
# A174355: Natural numbers n such that the concatenations n//1331 and 1331//n are prime numbers.

The programs for A174355, there is no canonical definition to state claims against.
-/

/-! ## A174355.P16652011994304955781

`∩[A173579(n+1), A174213(n+1)]`
-/

namespace A174355.P16652011994304955781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174355.P16652011994304955781

/-!
# A174356: (-1)^(n+1)*n*A174276(n).

The programs for A174356, there is no canonical definition to state claims against.
-/

/-! ## A174356.P10812403629104152240

`(-1)^(n+1)*n*A174276(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174356.P10812403629104152240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * ((n : ℤ) * A174276 n)

end

end A174356.P10812403629104152240

/-! ## A174356.P2939440223373761308

`A174276(n)*A181983(n)`
-/

namespace A174356.P2939440223373761308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174276 n * A181983 n

end

end A174356.P2939440223373761308

/-! ## A174356.P8988314128505961921

`-A038608(n)*A174276(n)`
-/

namespace A174356.P8988314128505961921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A038608 n * A174276 n)

end

end A174356.P8988314128505961921

/-! ## A174356.P11768260542995401324

`-n*A174276(n)*A033999(n)`
-/

namespace A174356.P11768260542995401324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * A174276 n * A033999 n)

end

end A174356.P11768260542995401324

/-! ## A174356.P3674605322920872407

`A174289(n)-A174290(n)`
-/

namespace A174356.P3674605322920872407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174289 n - A174290 n

end

end A174356.P3674605322920872407

/-!
# A174357: Primes p such that 2*p^2+-9 are also prime.

The programs for A174357, there is no canonical definition to state claims against.
-/

/-! ## A174357.P8405467888446688872

`filter[A000978(n+2), A165191(#)]`
-/

namespace A174357.P8405467888446688872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165191 (f1 j).toNat = 1) n)

end

end A174357.P8405467888446688872

/-! ## A174357.P15859499922925611517

`filter[A107036(n+2), A165191(#)]`
-/

namespace A174357.P15859499922925611517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107036 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165191 (f1 j).toNat = 1) n)

end

end A174357.P15859499922925611517

/-! ## A174357.P6054165185894466277

`∩[A000978(n+1), A024910(n+1)]`
-/

namespace A174357.P6054165185894466277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174357.P6054165185894466277

/-! ## A174357.P13064563862983936190

`∩[A024910(n+1), A107036(n+1)]`
-/

namespace A174357.P13064563862983936190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174357.P13064563862983936190

/-!
# A174359: Numbers n such that 6n-1, 6n+1, and 6n+5 are prime.

The programs for A174359, there is no canonical definition to state claims against.
-/

/-! ## A174359.P9829414694496532461

`floor(A073648(n+1)/6)`
-/

namespace A174359.P9829414694496532461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073648 (n + 1) : ℚ) / 6⌋

end

end A174359.P9829414694496532461

/-! ## A174359.P7916567150835979578

`floor(A098412(n+1)/6)`
-/

namespace A174359.P7916567150835979578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098412 (n + 1) : ℚ) / 6⌋

end

end A174359.P7916567150835979578

/-! ## A174359.P12886827231796662016

`ceil(A022004(n+1)/6)`
-/

namespace A174359.P12886827231796662016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022004 (n + 1) : ℚ) / 6⌉

end

end A174359.P12886827231796662016

/-! ## A174359.P7218853848417440678

`floor(A163635(n+1)/18)`
-/

namespace A174359.P7218853848417440678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163635 (n + 1) : ℚ) / 18⌋

end

end A174359.P7218853848417440678

/-! ## A174359.P7087816538842648530

`∩[A002822(n+1), A056956(n+1)]`
-/

namespace A174359.P7087816538842648530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174359.P7087816538842648530

/-! ## A174359.P7692668223184088088

`∩[A002822(n+1), A307561(n+1)]`
-/

namespace A174359.P7692668223184088088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174359.P7692668223184088088

/-! ## A174359.P827769856255250882

`∩[A056956(n+1), A307561(n+1)]`
-/

namespace A174359.P827769856255250882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174359.P827769856255250882

/-! ## A174359.P3845083152766003131

`floor(p?[A007529(n+1)+2]/6)`
-/

namespace A174359.P3845083152766003131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌋

end

end A174359.P3845083152766003131

/-! ## A174359.P15344940705251986328

`ceil(p?[A029710(n+1)-2]/6)`
-/

namespace A174359.P15344940705251986328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌉

end

end A174359.P15344940705251986328

/-! ## A174359.P280677929190447257

`ceil(p?[A056772(n+1)-2]/6)`
-/

namespace A174359.P280677929190447257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌉

end

end A174359.P280677929190447257

/-! ## A174359.P9693577068030880190

`∩[A056956(n+1), A392114(n+1)]`
-/

namespace A174359.P9693577068030880190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174359.P9693577068030880190

/-! ## A174359.P3630907844722235843

`∩[A307561(n+1), A392114(n+1)]`
-/

namespace A174359.P3630907844722235843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174359.P3630907844722235843

/-! ## A174359.P13283583247410790158

`∩[A024899(n+1), A307561(n+1)]`
-/

namespace A174359.P13283583247410790158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174359.P13283583247410790158

/-! ## A174359.P5271915667712883136

`∩[A002822(n+1), A059325(n+1)]`
-/

namespace A174359.P5271915667712883136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174359.P5271915667712883136

/-! ## A174359.P16913773088861185818

`∩[A024898(n+1), A056956(n+1)]`
-/

namespace A174359.P16913773088861185818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174359.P16913773088861185818

/-! ## A174359.P12995220788470902670

`∩[A056956(n+1), A153196(n+1)+1]`
-/

namespace A174359.P12995220788470902670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174359.P12995220788470902670

/-! ## A174359.P6654644188485894429

`∩[A107746(n+1), A307561(n+1)]`
-/

namespace A174359.P6654644188485894429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174359.P6654644188485894429

/-! ## A174359.P9432520237653210282

`A000010(A022004(n+1)+2)/6`
-/

namespace A174359.P9432520237653210282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A022004 (n + 1) + 2).toNat : ℚ) / 6

end

end A174359.P9432520237653210282

/-! ## A174359.P6831873264842086714

`A000203(A073648(n+1)-2)/6`
-/

namespace A174359.P6831873264842086714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A073648 (n + 1) - 2).toNat : ℚ) / 6

end

end A174359.P6831873264842086714

/-! ## A174359.P14935645883750576257

`filter[A056956(n+1), A100923(#)]`
-/

namespace A174359.P14935645883750576257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100923 (f1 j).toNat = 1) n)

end

end A174359.P14935645883750576257

/-!
# A174360: Primes p such that 2*p^2-+15 are also prime.

The programs for A174360, there is no canonical definition to state claims against.
-/

/-! ## A174360.P4921828599349605759

`A117743(A086625(n))`
-/

namespace A174360.P4921828599349605759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117743 (A086625 n).toNat

end

end A174360.P4921828599349605759

/-! ## A174360.P16260016695809959903

`A020602(A267372(n))`
-/

namespace A174360.P16260016695809959903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020602 (A267372 n).toNat

end

end A174360.P16260016695809959903

/-!
# A174362: Odd primes such that 2*p^2-+39 are also prime.

The programs for A174362, there is no canonical definition to state claims against.
-/

/-! ## A174362.P833336104585884091

`p?[A126440(n+1)+A096676(n+1)]`
-/

namespace A174362.P833336104585884091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126440 (n + 1) + A096676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174362.P833336104585884091

/-! ## A174362.P9155551083232156697

`∩[A233043(n+2), A288315(n+2)+2]`
-/

namespace A174362.P9155551083232156697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233043 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288315 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174362.P9155551083232156697

/-!
# A174363: Primes p such that 2*p^3 -+ 3 are also prime.

The programs for A174363, there is no canonical definition to state claims against.
-/

/-! ## A174363.P936417642132569161

`∩[A153507(n+1), A243630(n+1)]`
-/

namespace A174363.P936417642132569161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174363.P936417642132569161

/-!
# A174366: Primes p such that 2*p^4-+15 are also prime.

The programs for A174366, there is no canonical definition to state claims against.
-/

/-! ## A174366.P14819646747458800562

`p?[∑[xor(n², A293937(n))]]`
-/

namespace A174366.P14819646747458800562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n ^ 2 : ℤ) (A293937 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174366.P14819646747458800562

/-!
# A174370: Lesser member p of a twin prime pair (p, p + 2) such that 2p + 3(p + 2) is a perfect square.

The programs for A174370, there is no canonical definition to state claims against.
-/

/-! ## A174370.P6087001074871581749

`∩[A071698(n+1), A154619(n+1)]`
-/

namespace A174370.P6087001074871581749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174370.P6087001074871581749

/-! ## A174370.P3090577618881346239

`∩[A061368(n+1), A154619(n+1)]`
-/

namespace A174370.P3090577618881346239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174370.P3090577618881346239

/-! ## A174370.P7581146558244526855

`p?[p?[floor(n/2)²+(1-n)²+n]-2]`
-/

namespace A174370.P7581146558244526855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ 2 + ((1 - (n : ℤ)) ^ 2 + (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174370.P7581146558244526855

/-! ## A174370.P13197198149104289493

`p?[A245042(n+1)-2]`
-/

namespace A174370.P13197198149104289493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245042 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174370.P13197198149104289493

/-! ## A174370.P10736714183169715932

`p?[or(1, p?[A298950(n+1)])-2]`
-/

namespace A174370.P10736714183169715932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174370.P10736714183169715932

/-!
# A174371: a(n) = (6*n-1)^2.

The programs for A174371, the canonical program `A174371.P17431519558292009846` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174371 has offset 0).

The definition of A174371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n-1)²` (program `A174371.P17431519558292009846`, by `A174371.P17431519558292009846.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174371.P17431519558292009846

`(6*n-1)²`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174371

/-- `(6*n-1)²` -/
def P17431519558292009846.Spec : Prop :=
  ∀ n, P17431519558292009846.a n = A174371 n

theorem P17431519558292009846.correct : P17431519558292009846.Spec := by
  intro n
  simp only [A174371]

end A174371

/-! ## A174371.P4879344135178678568

`6*A033579(n)+1`
-/

namespace A174371.P4879344135178678568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A033579 n + 1

end

end A174371.P4879344135178678568

namespace A174371

/-- `6*A033579(n)+1` -/
def P4879344135178678568.Spec : Prop :=
  ∀ n, P4879344135178678568.a n = A174371 n

end A174371

/-! ## A174371.P17367233408849853030

`8*C(3*n, 2)+1`
-/

namespace A174371.P17367233408849853030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (3 * n) 2 + 1

end

end A174371.P17367233408849853030

namespace A174371

/-- `8*C(3*n, 2)+1` -/
def P17367233408849853030.Spec : Prop :=
  ∀ n, (P17367233408849853030.a n : ℤ) = A174371 n

end A174371

/-! ## A174371.P11444271938467216080

`or(1, 8*C(3*n, 2))`
-/

namespace A174371.P11444271938467216080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * Nat.choose (3 * n) 2)

end

end A174371.P11444271938467216080

namespace A174371

/-- `or(1, 8*C(3*n, 2))` -/
def P11444271938467216080.Spec : Prop :=
  ∀ n, (P11444271938467216080.a n : ℤ) = A174371 n

end A174371

/-! ## A174371.P903609347344777386

`record[(lcm(2, 3*n+2)/2)²]`
-/

namespace A174371.P903609347344777386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (3 * n + 2) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174371.P903609347344777386

namespace A174371

/-- `record[(lcm(2, 3*n+2)/2)²]` -/
def P903609347344777386.Spec : Prop :=
  ∀ n, P903609347344777386.a n = (A174371 n : ℚ)

end A174371

/-! ## A174371.P7600813850198987301

`record[(gcd(6, 1-n)+n-2)²]`
-/

namespace A174371.P7600813850198987301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.gcd 6 (1 - (n : ℤ)) : ℤ) + ((n : ℤ) - 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174371.P7600813850198987301

namespace A174371

/-- `record[(gcd(6, 1-n)+n-2)²]` -/
def P7600813850198987301.Spec : Prop :=
  ∀ n, P7600813850198987301.a n = A174371 n

end A174371

/-! ## A174371.P16059111208056452376

`record[((3*n+2)/gcd(2, n))²]`
-/

namespace A174371.P16059111208056452376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 2 : ℚ) / (Nat.gcd 2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174371.P16059111208056452376

namespace A174371

/-- `record[((3*n+2)/gcd(2, n))²]` -/
def P16059111208056452376.Spec : Prop :=
  ∀ n, P16059111208056452376.a n = (A174371 n : ℚ)

end A174371

/-! ## A174371.P9123987398042192804

`record[(-(2*n+1))^(n%3)]`
-/

namespace A174371.P9123987398042192804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(2 * n + 1 : ℤ)) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174371.P9123987398042192804

namespace A174371

/-- `record[(-(2*n+1))^(n%3)]` -/
def P9123987398042192804.Spec : Prop :=
  ∀ n, P9123987398042192804.a n = A174371 n

end A174371

/-! ## A174371.P14477203094910256102

`record[(3*n+2)^(2*and(1, n))]`
-/

namespace A174371.P14477203094910256102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 2) ^ (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174371.P14477203094910256102

namespace A174371

/-- `record[(3*n+2)^(2*and(1, n))]` -/
def P14477203094910256102.Spec : Prop :=
  ∀ n, (P14477203094910256102.a n : ℤ) = A174371 n

end A174371

/-! ## A174371.P18061615354196922242

`2*∑[a(n-1)+36]-1` with `a(0)=1, a(1)=12`
-/

namespace A174371.P18061615354196922242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A174371.P18061615354196922242

namespace A174371

/-- `2*∑[a(n-1)+36]-1` -/
def P18061615354196922242.Spec : Prop :=
  ∀ n, P18061615354196922242.a n = A174371 n

end A174371

/-! ## A174371.P17016097944859845122

`record[(2*n+1)^(gcd(3, n+1)-1)]`
-/

namespace A174371.P17016097944859845122
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((Nat.gcd 3 (n + 1) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174371.P17016097944859845122

namespace A174371

/-- `record[(2*n+1)^(gcd(3, n+1)-1)]` -/
def P17016097944859845122.Spec : Prop :=
  ∀ n, P17016097944859845122.a n = (A174371 n : ℚ)

end A174371

/-! ## A174371.P15398869581797708780

`record[(2*n+1)^(n-lcm(3, 2-n))]`
-/

namespace A174371.P15398869581797708780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((n : ℤ) - (Int.lcm 3 (2 - (n : ℤ)) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174371.P15398869581797708780

namespace A174371

/-- `record[(2*n+1)^(n-lcm(3, 2-n))]` -/
def P15398869581797708780.Spec : Prop :=
  ∀ n, P15398869581797708780.a n = (A174371 n : ℚ)

end A174371

/-! ## A174371.P3037048173718714330

`record[(2*n+1)^dr((2*n+1)%3)]`
-/

namespace A174371.P3037048173718714330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ SequenceMachineLib.digitalRoot (((2 * n + 1) % 3 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174371.P3037048173718714330

namespace A174371

/-- `record[(2*n+1)^dr((2*n+1)%3)]` -/
def P3037048173718714330.Spec : Prop :=
  ∀ n, (P3037048173718714330.a n : ℤ) = A174371 n

end A174371

/-! ## A174371.P1852175023094219922

`2*A153792(n)+1`
-/

namespace A174371.P1852175023094219922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153792 n + 1

end

end A174371.P1852175023094219922

namespace A174371

/-- `2*A153792(n)+1` -/
def P1852175023094219922.Spec : Prop :=
  ∀ n, P1852175023094219922.a n = A174371 n

end A174371

/-! ## A174371.P15674693075116830987

`3*A014642(n)+1`
-/

namespace A174371.P15674693075116830987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014642 n + 1

end

end A174371.P15674693075116830987

namespace A174371

/-- `3*A014642(n)+1` -/
def P15674693075116830987.Spec : Prop :=
  ∀ n, P15674693075116830987.a n = A174371 n

end A174371

/-! ## A174371.P17626028436885971106

`2*A081589(n)-1`
-/

namespace A174371.P17626028436885971106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081589 n - 1

end

end A174371.P17626028436885971106

namespace A174371

/-- `2*A081589(n)-1` -/
def P17626028436885971106.Spec : Prop :=
  ∀ n, P17626028436885971106.a n = A174371 n

end A174371

/-! ## A174371.P14096978972552752498

`4*A152743(n)+1`
-/

namespace A174371.P14096978972552752498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A152743 n + 1

end

end A174371.P14096978972552752498

namespace A174371

/-- `4*A152743(n)+1` -/
def P14096978972552752498.Spec : Prop :=
  ∀ n, P14096978972552752498.a n = A174371 n

end A174371

/-! ## A174371.P16359944869618316574

`xor(1, (4-A016945(n))²)+1`
-/

namespace A174371.P16359944869618316574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((4 - A016945 n) ^ 2) + 1

end

end A174371.P16359944869618316574

namespace A174371

/-- `xor(1, (4-A016945(n))²)+1` -/
def P16359944869618316574.Spec : Prop :=
  ∀ n, P16359944869618316574.a n = A174371 n

end A174371

/-! ## A174371.P10600440573864573046

`4*(A016777(n)-2)*3*n+1`
-/

namespace A174371.P10600440573864573046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((A016777 n - 2) * (3 * n : ℤ)) + 1

end

end A174371.P10600440573864573046

namespace A174371

/-- `4*(A016777(n)-2)*3*n+1` -/
def P10600440573864573046.Spec : Prop :=
  ∀ n, P10600440573864573046.a n = A174371 n

end A174371

/-! ## A174371.P13866361814896593096

`(6*n-1)^(2%A347634(n+1))`
-/

namespace A174371.P13866361814896593096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n : ℤ) - 1 : ℚ) ^ (Int.tmod 2 (A347634 (n + 1)) : ℤ)

end

end A174371.P13866361814896593096

namespace A174371

/-- `(6*n-1)^(2%A347634(n+1))` -/
def P13866361814896593096.Spec : Prop :=
  ∀ n, P13866361814896593096.a n = (A174371 n : ℚ)

end A174371

/-!
# A174372: Numbers k such that 12*k - 5, 12*k - 1, 12*k + 1, and 12*k + 5 are primes.

The programs for A174372, there is no canonical definition to state claims against.
-/

/-! ## A174372.P4651435163501490898

`A003987(A224270(n)+A224269(n+1))`
-/

namespace A174372.P4651435163501490898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A224270 n + A224269 (n + 1)).toNat

end

end A174372.P4651435163501490898

/-!
# A174373: Triangle T(n,m) = nextprime(binomial(n,m)) read by rows.

The programs for A174373, the canonical program `A174373.P18021089655363768877` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174373 has offset 0).

The definition of A174373 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A174373.P18021089655363768877

`A007918(A007318(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A174373

/-- `A007918(A007318(n))` -/
def P18021089655363768877.Spec : Prop :=
  ∀ n, P18021089655363768877.a n = A174373 n

theorem P18021089655363768877.correct : P18021089655363768877.Spec := by
  intro n
  simp only [A174373]

end A174373

/-! ## A174373.P2321362385506974487

`A151800(A014473(n))`
-/

namespace A174373.P2321362385506974487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A014473 n).toNat

end

end A174373.P2321362385506974487

namespace A174373

/-- `A151800(A014473(n))` -/
def P2321362385506974487.Spec : Prop :=
  ∀ n, P2321362385506974487.a n = A174373 n

end A174373

/-! ## A174373.P5973000848211623747

`A151800(A132044(n))`
-/

namespace A174373.P5973000848211623747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A132044 n).toNat

end

end A174373.P5973000848211623747

namespace A174373

/-- `A151800(A132044(n))` -/
def P5973000848211623747.Spec : Prop :=
  ∀ n, P5973000848211623747.a n = A174373 n

end A174373

/-! ## A174373.P11617238416405041181

`A151800(A007318(n)-1)`
-/

namespace A174373.P11617238416405041181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A007318 n - 1).toNat

end

end A174373.P11617238416405041181

namespace A174373

/-- `A151800(A007318(n)-1)` -/
def P11617238416405041181.Spec : Prop :=
  ∀ n, P11617238416405041181.a n = A174373 n

end A174373

/-! ## A174373.P18058904329722275606

`A151800(A132749(n)-1)`
-/

namespace A174373.P18058904329722275606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A132749 n - 1).toNat

end

end A174373.P18058904329722275606

namespace A174373

/-- `A151800(A132749(n)-1)` -/
def P18058904329722275606.Spec : Prop :=
  ∀ n, P18058904329722275606.a n = A174373 n

end A174373

/-! ## A174373.P15227951622513934250

`A151800(abs(A108086(n))-1)`
-/

namespace A174373.P15227951622513934250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (|A108086 n| - 1).toNat

end

end A174373.P15227951622513934250

namespace A174373

/-- `A151800(abs(A108086(n))-1)` -/
def P15227951622513934250.Spec : Prop :=
  ∀ n, P15227951622513934250.a n = A174373 n

end A174373

/-! ## A174373.P618745540082491914

`A007918(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))`
-/

namespace A174373.P618745540082491914
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat)

end

end A174373.P618745540082491914

namespace A174373

/-- `A007918(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))` -/
def P618745540082491914.Spec : Prop :=
  ∀ n, P618745540082491914.a n = A174373 n

end A174373

/-! ## A174373.P8559181162658016472

`A007918(A132749(n))`
-/

namespace A174373.P8559181162658016472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A132749 n).toNat

end

end A174373.P8559181162658016472

namespace A174373

/-- `A007918(A132749(n))` -/
def P8559181162658016472.Spec : Prop :=
  ∀ n, P8559181162658016472.a n = A174373 n

end A174373

/-! ## A174373.P5010995066945381515

`A007918(A206735(n))`
-/

namespace A174373.P5010995066945381515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A206735 n).toNat

end

end A174373.P5010995066945381515

namespace A174373

/-- `A007918(A206735(n))` -/
def P5010995066945381515.Spec : Prop :=
  ∀ n, P5010995066945381515.a n = A174373 n

end A174373

/-! ## A174373.P13037243402879109452

`A007918(A255935(n))`
-/

namespace A174373.P13037243402879109452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A255935 n).toNat

end

end A174373.P13037243402879109452

namespace A174373

/-- `A007918(A255935(n))` -/
def P13037243402879109452.Spec : Prop :=
  ∀ n, P13037243402879109452.a n = A174373 n

end A174373

/-! ## A174373.P7173389122264950089

`A007918(A198321(n+1))`
-/

namespace A174373.P7173389122264950089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A198321 (n + 1)).toNat

end

end A174373.P7173389122264950089

namespace A174373

/-- `A007918(A198321(n+1))` -/
def P7173389122264950089.Spec : Prop :=
  ∀ n, P7173389122264950089.a n = A174373 n

end A174373

/-! ## A174373.P1014127228117123110

`A308052(A028326(n))`
-/

namespace A174373.P1014127228117123110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A028326 n).toNat

end

end A174373.P1014127228117123110

namespace A174373

/-- `A308052(A028326(n))` -/
def P1014127228117123110.Spec : Prop :=
  ∀ n, P1014127228117123110.a n = A174373 n

end A174373

/-! ## A174373.P8239114392830158804

`A308052(A109128(n))`
-/

namespace A174373.P8239114392830158804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A109128 n).toNat

end

end A174373.P8239114392830158804

namespace A174373

/-- `A308052(A109128(n))` -/
def P8239114392830158804.Spec : Prop :=
  ∀ n, P8239114392830158804.a n = A174373 n

end A174373

/-! ## A174373.P16411186326231803422

`A308052(A124927(n))`
-/

namespace A174373.P16411186326231803422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A124927 n).toNat

end

end A174373.P16411186326231803422

namespace A174373

/-- `A308052(A124927(n))` -/
def P16411186326231803422.Spec : Prop :=
  ∀ n, P16411186326231803422.a n = A174373 n

end A174373

/-! ## A174373.P11440695891325554867

`A308052(A129994(n))`
-/

namespace A174373.P11440695891325554867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A129994 n).toNat

end

end A174373.P11440695891325554867

namespace A174373

/-- `A308052(A129994(n))` -/
def P11440695891325554867.Spec : Prop :=
  ∀ n, P11440695891325554867.a n = A174373 n

end A174373

/-! ## A174373.P5272105074129090830

`A308052(A131087(n))`
-/

namespace A174373.P5272105074129090830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A131087 n).toNat

end

end A174373.P5272105074129090830

namespace A174373

/-- `A308052(A131087(n))` -/
def P5272105074129090830.Spec : Prop :=
  ∀ n, P5272105074129090830.a n = A174373 n

end A174373

/-! ## A174373.P11808656470361342095

`A308052(A131108(n))`
-/

namespace A174373.P11808656470361342095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A131108 n).toNat

end

end A174373.P11808656470361342095

namespace A174373

/-- `A308052(A131108(n))` -/
def P11808656470361342095.Spec : Prop :=
  ∀ n, P11808656470361342095.a n = A174373 n

end A174373

/-! ## A174373.P14001279921697739432

`A308052(A132046(n))`
-/

namespace A174373.P14001279921697739432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A132046 n).toNat

end

end A174373.P14001279921697739432

namespace A174373

/-- `A308052(A132046(n))` -/
def P14001279921697739432.Spec : Prop :=
  ∀ n, P14001279921697739432.a n = A174373 n

end A174373

/-! ## A174373.P337195879835404783

`A308052(A132752(n))`
-/

namespace A174373.P337195879835404783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A132752 n).toNat

end

end A174373.P337195879835404783

namespace A174373

/-- `A308052(A132752(n))` -/
def P337195879835404783.Spec : Prop :=
  ∀ n, P337195879835404783.a n = A174373 n

end A174373

/-! ## A174373.P11003512298761805158

`A308052(A134058(n))`
-/

namespace A174373.P11003512298761805158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A134058 n).toNat

end

end A174373.P11003512298761805158

namespace A174373

/-- `A308052(A134058(n))` -/
def P11003512298761805158.Spec : Prop :=
  ∀ n, P11003512298761805158.a n = A174373 n

end A174373

/-!
# A174374: Derivative Pascal's triangle (version 2) read by rows: smallest prime(n)>C(m,k)=binomial(m,k)=m!/(k!*(m-k)!), 0<=k<=m.

The programs for A174374, there is no canonical definition to state claims against.
-/

/-! ## A174374.P3290172029128081970

`A081417(n)+1`
-/

namespace A174374.P3290172029128081970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081417 n + 1

end

end A174374.P3290172029128081970

/-! ## A174374.P13640023865446228467

`A036234(A007318(n))`
-/

namespace A174374.P13640023865446228467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A007318 n).toNat

end

end A174374.P13640023865446228467

/-! ## A174374.P10423753120993864813

`A036234(abs(A108086(n)))`
-/

namespace A174374.P10423753120993864813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 |A108086 n|.toNat

end

end A174374.P10423753120993864813

/-! ## A174374.P11330808226365343076

`A036234(abs(A117440(n)))`
-/

namespace A174374.P11330808226365343076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 |A117440 n|.toNat

end

end A174374.P11330808226365343076

/-! ## A174374.P4654916106185891063

`A036234(abs(A130595(n)))`
-/

namespace A174374.P4654916106185891063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 |A130595 n|.toNat

end

end A174374.P4654916106185891063

/-! ## A174374.P10635890511489816049

`A036234(A014473(n)+1)`
-/

namespace A174374.P10635890511489816049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A014473 n + 1).toNat

end

end A174374.P10635890511489816049

/-! ## A174374.P12062646948768433003

`A055679(A028326(n))+1`
-/

namespace A174374.P12062646948768433003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A028326 n).toNat + 1

end

end A174374.P12062646948768433003

/-! ## A174374.P4434611954613121973

`A055679(A124927(n))+1`
-/

namespace A174374.P4434611954613121973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A124927 n).toNat + 1

end

end A174374.P4434611954613121973

/-! ## A174374.P14384114520655717625

`A056172(A131127(n))+1`
-/

namespace A174374.P14384114520655717625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A131127 n).toNat + 1

end

end A174374.P14384114520655717625

/-! ## A174374.P12150070213488102482

`A055679(A132046(n))+1`
-/

namespace A174374.P12150070213488102482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A132046 n).toNat + 1

end

end A174374.P12150070213488102482

/-!
# A174375: a(n) = n^2 - XOR(n^2, n).

The programs for A174375, the canonical program `A174375.P956534633747713161` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174375 has offset 0).

The definition of A174375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-xor(n, n²)` (program `A174375.P956534633747713161`, by `A174375.P956534633747713161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174375.P956534633747713161

`n²-xor(n, n²)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174375

/-- `n²-xor(n, n²)` -/
def P956534633747713161.Spec : Prop :=
  ∀ n, P956534633747713161.a n = A174375 n

theorem P956534633747713161.correct : P956534633747713161.Spec := by
  intro n
  simp only [A174375]

end A174375

/-! ## A174375.P3984438551653981456

`n²-A169810(n)`
-/

namespace A174375.P3984438551653981456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A169810 n

end

end A174375.P3984438551653981456

namespace A174375

/-- `n²-A169810(n)` -/
def P3984438551653981456.Spec : Prop :=
  ∀ n, P3984438551653981456.a n = A174375 n

end A174375

/-! ## A174375.P5945111291618644739

`2*and(n, n²)-n`
-/

namespace A174375.P5945111291618644739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land n (n ^ 2) : ℤ) - (n : ℤ)

end

end A174375.P5945111291618644739

namespace A174375

/-- `2*and(n, n²)-n` -/
def P5945111291618644739.Spec : Prop :=
  ∀ n, P5945111291618644739.a n = A174375 n

end A174375

/-! ## A174375.P7663502169352999086

`and(2*n, n*2*n)-n`
-/

namespace A174375.P7663502169352999086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land (2 * n) (n * (2 * n)) : ℤ) - (n : ℤ)

end

end A174375.P7663502169352999086

namespace A174375

/-- `and(2*n, n*2*n)-n` -/
def P7663502169352999086.Spec : Prop :=
  ∀ n, P7663502169352999086.a n = A174375 n

end A174375

/-! ## A174375.P6576207953530545602

`or(2*n², -(2*n+1))+n+1`
-/

namespace A174375.P6576207953530545602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n ^ 2 : ℤ) (-(2 * n + 1 : ℤ)) + (n + 1 : ℤ)

end

end A174375.P6576207953530545602

namespace A174375

/-- `or(2*n², -(2*n+1))+n+1` -/
def P6576207953530545602.Spec : Prop :=
  ∀ n, P6576207953530545602.a n = A174375 n

end A174375

/-! ## A174375.P4247638583943136186

`2*A213541(n)-n`
-/

namespace A174375.P4247638583943136186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213541 n - (n : ℤ)

end

end A174375.P4247638583943136186

namespace A174375

/-- `2*A213541(n)-n` -/
def P4247638583943136186.Spec : Prop :=
  ∀ n, P4247638583943136186.a n = A174375 n

end A174375

/-! ## A174375.P8193339807383604655

`n-2*A396237(n)`
-/

namespace A174375.P8193339807383604655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A396237 n

end

end A174375.P8193339807383604655

namespace A174375

/-- `n-2*A396237(n)` -/
def P8193339807383604655.Spec : Prop :=
  ∀ n, P8193339807383604655.a n = A174375 n

end A174375

/-! ## A174375.P16282712262283950636

`A005843(and(n, n²))-n`
-/

namespace A174375.P16282712262283950636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Nat.land n (n ^ 2)) - (n : ℤ)

end

end A174375.P16282712262283950636

namespace A174375

/-- `A005843(and(n, n²))-n` -/
def P16282712262283950636.Spec : Prop :=
  ∀ n, P16282712262283950636.a n = A174375 n

end A174375

/-! ## A174375.P16667438368726028361

`A213541(n)-A396237(n)`
-/

namespace A174375.P16667438368726028361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213541 n - A396237 n

end

end A174375.P16667438368726028361

namespace A174375

/-- `A213541(n)-A396237(n)` -/
def P16667438368726028361.Spec : Prop :=
  ∀ n, P16667438368726028361.a n = A174375 n

end A174375

/-! ## A174375.P16616764040973976317

`A213541(n)+A396236(n)-A169810(n)`
-/

namespace A174375.P16616764040973976317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213541 n + (A396236 n - A169810 n)

end

end A174375.P16616764040973976317

namespace A174375

/-- `A213541(n)+A396236(n)-A169810(n)` -/
def P16616764040973976317.Spec : Prop :=
  ∀ n, P16616764040973976317.a n = A174375 n

end A174375

/-! ## A174375.P15705369162617902342

`A000290(n)-A245092(xor(n, A000290(n)))`
-/

namespace A174375.P15705369162617902342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - A245092 (Int.xor (n : ℤ) (A000290 n)).toNat

end

end A174375.P15705369162617902342

namespace A174375

/-- `A000290(n)-A245092(xor(n, A000290(n)))` -/
def P15705369162617902342.Spec : Prop :=
  ∀ n, P15705369162617902342.a n = A174375 n

end A174375

/-! ## A174375.P14659423129993644044

`A000290(n)-A059029(xor(n, A000290(n)))`
-/

namespace A174375.P14659423129993644044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - A059029 (Int.xor (n : ℤ) (A000290 n)).toNat

end

end A174375.P14659423129993644044

namespace A174375

/-- `A000290(n)-A059029(xor(n, A000290(n)))` -/
def P14659423129993644044.Spec : Prop :=
  ∀ n, P14659423129993644044.a n = A174375 n

end A174375

/-! ## A174375.P863371587417193385

`A000290(n)-A153733(xor(n, A000290(n)))`
-/

namespace A174375.P863371587417193385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - A153733 (Int.xor (n : ℤ) (A000290 n)).toNat

end

end A174375.P863371587417193385

namespace A174375

/-- `A000290(n)-A153733(xor(n, A000290(n)))` -/
def P863371587417193385.Spec : Prop :=
  ∀ n, P863371587417193385.a n = A174375 n

end A174375

/-!
# A174376: Triangle T(n, k) = n!*q^k/(n-k)! if floor(n/2) > k-1 otherwise n!*q^(n-k)/k!, with q = 2, read by rows.

The programs for A174376, the canonical program `A174376.P921593247632662995` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174376 has offset 0).

The definition of A174376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174376.P15458445093469640776

`A144464(n)*A159623(n)`
-/

namespace A174376.P15458445093469640776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n * A159623 n

end

end A174376.P15458445093469640776

namespace A174376

/-- `A144464(n)*A159623(n)` -/
def P15458445093469640776.Spec : Prop :=
  ∀ n, P15458445093469640776.a n = A174376 n

end A174376

/-! ## A174376.P7544359313683770002

`A174378(n)/A144464(n)`
-/

namespace A174376.P7544359313683770002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174378 n : ℚ) / (A144464 n : ℚ)

end

end A174376.P7544359313683770002

namespace A174376

/-- `A174378(n)/A144464(n)` -/
def P7544359313683770002.Spec : Prop :=
  ∀ n, P7544359313683770002.a n = (A174376 n : ℚ)

end A174376

/-! ## A174376.P13796323920952238194

`sqrt(A159623(n)*A174378(n))`
-/

namespace A174376.P13796323920952238194
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A159623 n * A174378 n : ℝ)

end

end A174376.P13796323920952238194

namespace A174376

/-- `sqrt(A159623(n)*A174378(n))` -/
def P13796323920952238194.Spec : Prop :=
  ∀ n, P13796323920952238194.a n = (A174376 n : ℝ)

end A174376

/-! ## A174376.P1113612550908864243

`A000079(A004197(n))*A159623(n)`
-/

namespace A174376.P1113612550908864243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004197 n).toNat * A159623 n

end

end A174376.P1113612550908864243

namespace A174376

/-- `A000079(A004197(n))*A159623(n)` -/
def P1113612550908864243.Spec : Prop :=
  ∀ n, P1113612550908864243.a n = A174376 n

end A174376

/-! ## A174376.P17545234192758788770

`A174378(n)/A000079(A004197(n))`
-/

namespace A174376.P17545234192758788770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174378 n : ℚ) / (A000079 (A004197 n).toNat : ℚ)

end

end A174376.P17545234192758788770

namespace A174376

/-- `A174378(n)/A000079(A004197(n))` -/
def P17545234192758788770.Spec : Prop :=
  ∀ n, P17545234192758788770.a n = (A174376 n : ℚ)

end A174376

/-! ## A174376.P4163129623547432408

`A011782(A003983(n+1))*A159623(n)`
-/

namespace A174376.P4163129623547432408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003983 (n + 1)).toNat * A159623 n

end

end A174376.P4163129623547432408

namespace A174376

/-- `A011782(A003983(n+1))*A159623(n)` -/
def P4163129623547432408.Spec : Prop :=
  ∀ n, P4163129623547432408.a n = A174376 n

end A174376

/-! ## A174376.P921593247632662995

`A016116(A157454(n+1))*A159623(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A174376

/-- `A016116(A157454(n+1))*A159623(n)` -/
def P921593247632662995.Spec : Prop :=
  ∀ n, P921593247632662995.a n = A174376 n

theorem P921593247632662995.correct : P921593247632662995.Spec := by
  intro n
  simp only [A174376]

end A174376

/-! ## A174376.P1817382821008276030

`A174378(n)/A016116(A157454(n+1))`
-/

namespace A174376.P1817382821008276030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174378 n : ℚ) / (A016116 (A157454 (n + 1)).toNat : ℚ)

end

end A174376.P1817382821008276030

namespace A174376

/-- `A174378(n)/A016116(A157454(n+1))` -/
def P1817382821008276030.Spec : Prop :=
  ∀ n, P1817382821008276030.a n = (A174376 n : ℚ)

end A174376

/-! ## A174376.P11506579981290180104

`A140356(n)*A144463(n)`
-/

namespace A174376.P11506579981290180104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 n * A144463 n

end

end A174376.P11506579981290180104

namespace A174376

/-- `A140356(n)*A144463(n)` -/
def P11506579981290180104.Spec : Prop :=
  ∀ n, P11506579981290180104.a n = A174376 n

end A174376

/-! ## A174376.P6724925122983848274

`A004197(n)!*A144463(n)`
-/

namespace A174376.P6724925122983848274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004197 n).toNat : ℤ) * A144463 n

end

end A174376.P6724925122983848274

namespace A174376

/-- `A004197(n)!*A144463(n)` -/
def P6724925122983848274.Spec : Prop :=
  ∀ n, P6724925122983848274.a n = A174376 n

end A174376

/-!
# A174377: Triangle T(n, k) = n!*q^k/(n-k)! if floor(n/2) > k-1 otherwise n!*q^(n-k)/k!, with q = 3, read by rows.

The programs for A174377, the canonical program `A174377.P13587580538317066246` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174377 has offset 0).

The definition of A174377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174377.P14539517183568574434

`A152714(n)*A159623(n)`
-/

namespace A174377.P14539517183568574434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152714 n * A159623 n

end

end A174377.P14539517183568574434

namespace A174377

/-- `A152714(n)*A159623(n)` -/
def P14539517183568574434.Spec : Prop :=
  ∀ n, P14539517183568574434.a n = A174377 n

end A174377

/-! ## A174377.P1998397177449489686

`A000244(A004197(n))*A159623(n)`
-/

namespace A174377.P1998397177449489686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004197 n).toNat * A159623 n

end

end A174377.P1998397177449489686

namespace A174377

/-- `A000244(A004197(n))*A159623(n)` -/
def P1998397177449489686.Spec : Prop :=
  ∀ n, P1998397177449489686.a n = A174377 n

end A174377

/-! ## A174377.P13587580538317066246

`A108411(A157458(n))*A159623(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A174377

/-- `A108411(A157458(n))*A159623(n)` -/
def P13587580538317066246.Spec : Prop :=
  ∀ n, P13587580538317066246.a n = A174377 n

theorem P13587580538317066246.correct : P13587580538317066246.Spec := by
  intro n
  simp only [A174377]

end A174377

/-! ## A174377.P17701424656836621291

`A090880(A138139(n+1))*A159623(n)`
-/

namespace A174377.P17701424656836621291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090880 (A138139 (n + 1)).toNat * A159623 n

end

end A174377.P17701424656836621291

namespace A174377

/-- `A090880(A138139(n+1))*A159623(n)` -/
def P17701424656836621291.Spec : Prop :=
  ∀ n, P17701424656836621291.a n = A174377 n

end A174377

/-! ## A174377.P1409127119259631249

`A074324(A157454(n+1))*A159623(n)`
-/

namespace A174377.P1409127119259631249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A157454 (n + 1)).toNat * A159623 n

end

end A174377.P1409127119259631249

namespace A174377

/-- `A074324(A157454(n+1))*A159623(n)` -/
def P1409127119259631249.Spec : Prop :=
  ∀ n, P1409127119259631249.a n = A174377 n

end A174377

/-! ## A174377.P2447536480463465618

`A174346(n+1)/A174345(n+1)*A174376(n)`
-/

namespace A174377.P2447536480463465618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174346 (n + 1) : ℚ) / (A174345 (n + 1) : ℚ) * (A174376 n : ℚ)

end

end A174377.P2447536480463465618

namespace A174377

/-- `A174346(n+1)/A174345(n+1)*A174376(n)` -/
def P2447536480463465618.Spec : Prop :=
  ∀ n, P2447536480463465618.a n = (A174377 n : ℚ)

end A174377

/-! ## A174377.P3001526813542756988

`A003959(A144464(n))*A159623(n)`
-/

namespace A174377.P3001526813542756988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A144464 n).toNat * A159623 n

end

end A174377.P3001526813542756988

namespace A174377

/-- `A003959(A144464(n))*A159623(n)` -/
def P3001526813542756988.Spec : Prop :=
  ∀ n, P3001526813542756988.a n = A174377 n

end A174377

/-! ## A174377.P682417159297139510

`A140356(n)*A144470(n)`
-/

namespace A174377.P682417159297139510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 n * A144470 n

end

end A174377.P682417159297139510

namespace A174377

/-- `A140356(n)*A144470(n)` -/
def P682417159297139510.Spec : Prop :=
  ∀ n, P682417159297139510.a n = A174377 n

end A174377

/-! ## A174377.P2237631758206418773

`A004197(n)!*A144470(n)`
-/

namespace A174377.P2237631758206418773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004197 n).toNat : ℤ) * A144470 n

end

end A174377.P2237631758206418773

namespace A174377

/-- `A004197(n)!*A144470(n)` -/
def P2237631758206418773.Spec : Prop :=
  ∀ n, P2237631758206418773.a n = A174377 n

end A174377

/-! ## A174377.P13318518852265758261

`A144470(n)/A174301(n)*A174378(n)`
-/

namespace A174377.P13318518852265758261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144470 n : ℚ) / (A174301 n : ℚ) * (A174378 n : ℚ)

end

end A174377.P13318518852265758261

namespace A174377

/-- `A144470(n)/A174301(n)*A174378(n)` -/
def P13318518852265758261.Spec : Prop :=
  ∀ n, P13318518852265758261.a n = (A174377 n : ℚ)

end A174377

/-!
# A174378: Triangle T(n, k) = n!*q^k/(n-k)! if floor(n/2) > k-1 otherwise n!*q^(n-k)/k!, with q = 4, read by rows.

The programs for A174378, the canonical program `A174378.P1780650614204798079` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174378 has offset 0).

The definition of A174378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174378.P10743287127915605109

`A152716(n)*A159623(n)`
-/

namespace A174378.P10743287127915605109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152716 n * A159623 n

end

end A174378.P10743287127915605109

namespace A174378

/-- `A152716(n)*A159623(n)` -/
def P10743287127915605109.Spec : Prop :=
  ∀ n, P10743287127915605109.a n = A174378 n

end A174378

/-! ## A174378.P14869969152890085358

`A144464(n)*A174376(n)`
-/

namespace A174378.P14869969152890085358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n * A174376 n

end

end A174378.P14869969152890085358

namespace A174378

/-- `A144464(n)*A174376(n)` -/
def P14869969152890085358.Spec : Prop :=
  ∀ n, P14869969152890085358.a n = A174378 n

end A174378

/-! ## A174378.P5044922036842316100

`A144464(n)²*A159623(n)`
-/

namespace A174378.P5044922036842316100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n ^ 2 * A159623 n

end

end A174378.P5044922036842316100

namespace A174378

/-- `A144464(n)²*A159623(n)` -/
def P5044922036842316100.Spec : Prop :=
  ∀ n, P5044922036842316100.a n = A174378 n

end A174378

/-! ## A174378.P10829774897523449344

`A174376(n)²/A159623(n)`
-/

namespace A174378.P10829774897523449344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174376 n ^ 2 : ℚ) / (A159623 n : ℚ)

end

end A174378.P10829774897523449344

namespace A174378

/-- `A174376(n)²/A159623(n)` -/
def P10829774897523449344.Spec : Prop :=
  ∀ n, P10829774897523449344.a n = (A174378 n : ℚ)

end A174378

/-! ## A174378.P13030124823531142419

`A004197(n)!*A174301(n)`
-/

namespace A174378.P13030124823531142419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004197 n).toNat : ℤ) * A174301 n

end

end A174378.P13030124823531142419

namespace A174378

/-- `A004197(n)!*A174301(n)` -/
def P13030124823531142419.Spec : Prop :=
  ∀ n, P13030124823531142419.a n = A174378 n

end A174378

/-! ## A174378.P5290054817398611270

`A000079(A004197(n))*A174376(n)`
-/

namespace A174378.P5290054817398611270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004197 n).toNat * A174376 n

end

end A174378.P5290054817398611270

namespace A174378

/-- `A000079(A004197(n))*A174376(n)` -/
def P5290054817398611270.Spec : Prop :=
  ∀ n, P5290054817398611270.a n = A174378 n

end A174378

/-! ## A174378.P16721450048602079069

`A000079(A004197(n))²*A159623(n)`
-/

namespace A174378.P16721450048602079069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004197 n).toNat ^ 2 * A159623 n

end

end A174378.P16721450048602079069

namespace A174378

/-- `A000079(A004197(n))²*A159623(n)` -/
def P16721450048602079069.Spec : Prop :=
  ∀ n, P16721450048602079069.a n = A174378 n

end A174378

/-! ## A174378.P2611978047470298267

`A011782(A003983(n+1))*A174376(n)`
-/

namespace A174378.P2611978047470298267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003983 (n + 1)).toNat * A174376 n

end

end A174378.P2611978047470298267

namespace A174378

/-- `A011782(A003983(n+1))*A174376(n)` -/
def P2611978047470298267.Spec : Prop :=
  ∀ n, P2611978047470298267.a n = A174378 n

end A174378

/-! ## A174378.P6731587522379393078

`A000079(2*A004197(n))*A159623(n)`
-/

namespace A174378.P6731587522379393078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A004197 n).toNat * A159623 n

end

end A174378.P6731587522379393078

namespace A174378

/-- `A000079(2*A004197(n))*A159623(n)` -/
def P6731587522379393078.Spec : Prop :=
  ∀ n, P6731587522379393078.a n = A174378 n

end A174378

/-! ## A174378.P13198844020207294128

`A011782(A003983(n+1))²*A159623(n)`
-/

namespace A174378.P13198844020207294128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003983 (n + 1)).toNat ^ 2 * A159623 n

end

end A174378.P13198844020207294128

namespace A174378

/-- `A011782(A003983(n+1))²*A159623(n)` -/
def P13198844020207294128.Spec : Prop :=
  ∀ n, P13198844020207294128.a n = A174378 n

end A174378

/-! ## A174378.P1780650614204798079

`A016116(A157454(n+1))²*A159623(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A174378

/-- `A016116(A157454(n+1))²*A159623(n)` -/
def P1780650614204798079.Spec : Prop :=
  ∀ n, P1780650614204798079.a n = A174378 n

theorem P1780650614204798079.correct : P1780650614204798079.Spec := by
  intro n
  simp only [A174378]

end A174378

/-! ## A174378.P12423420566229753972

`A174376(n)²/gcd(A174376(n), A174377(n))`
-/

namespace A174378.P12423420566229753972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174376 n ^ 2 : ℚ) / (Int.gcd (A174376 n) (A174377 n) : ℚ)

end

end A174378.P12423420566229753972

namespace A174378

/-- `A174376(n)²/gcd(A174376(n), A174377(n))` -/
def P12423420566229753972.Spec : Prop :=
  ∀ n, P12423420566229753972.a n = (A174378 n : ℚ)

end A174378

/-!
# A174381: Triangle for denominators of half extended Rydberg-Ritz spectrum of the hydrogenic spectra. a(n) is an antidiagonal writing of array in A171522 without first column.

The programs for A174381, there is no canonical definition to state claims against.
-/

/-! ## A174381.P17026288087351090341

`(A002262(n)*A277227(A187829(n+1)))²`
-/

namespace A174381.P17026288087351090341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n * A277227 (A187829 (n + 1)).toNat) ^ 2

end

end A174381.P17026288087351090341

/-! ## A174381.P13336612335079189744

`(A002262(n)*A005087(A320917(n+1)))²`
-/

namespace A174381.P13336612335079189744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n * A005087 (A320917 (n + 1)).toNat) ^ 2

end

end A174381.P13336612335079189744

/-! ## A174381.P16082468948073895199

`A001222(A036035(n)^A339677(n+1))²`
-/

namespace A174381.P16082468948073895199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A036035 n : ℚ) ^ (A339677 (n + 1) : ℤ))).toNat ^ 2

end

end A174381.P16082468948073895199

/-!
# A174383: Product of two consecutive odd numbers k, k+2 such that (k*(k+2))+-2 are primes.

The programs for A174383, there is no canonical definition to state claims against.
-/

/-! ## A174383.P3057510313273915436

`A114335(n+1)²-1`
-/

namespace A174383.P3057510313273915436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114335 (n + 1) ^ 2 - 1

end

end A174383.P3057510313273915436

/-! ## A174383.P14640969153562057156

`A056928(A114335(n+1))`
-/

namespace A174383.P14640969153562057156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (A114335 (n + 1)).toNat

end

end A174383.P14640969153562057156

/-! ## A174383.P12191705879895670378

`A067998(A114335(n+1)+1)`
-/

namespace A174383.P12191705879895670378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A114335 (n + 1) + 1).toNat

end

end A174383.P12191705879895670378

/-! ## A174383.P8439750573901119445

`A106230(A114335(n+1)+1)`
-/

namespace A174383.P8439750573901119445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106230 (A114335 (n + 1) + 1).toNat

end

end A174383.P8439750573901119445

/-! ## A174383.P3866794584096383378

`A005563(A114335(n+1)-1)`
-/

namespace A174383.P3866794584096383378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A114335 (n + 1) - 1).toNat

end

end A174383.P3866794584096383378

/-!
# A174385: Product of 3 consecutive odd numbers n such that n+-2 are primes.

The programs for A174385, there is no canonical definition to state claims against.
-/

/-! ## A174385.P16772480049240298917

`A061550(∑[A298280(2^n)])`
-/

namespace A174385.P16772480049240298917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061550 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174385.P16772480049240298917

/-!
# A174386: Smallest possible area for a perfect isosceles right triangled square of order n; or 0 if no such square exists.

The programs for A174386, there is no canonical definition to state claims against.
-/

/-! ## A174386.P15851138160032047651

`A177083(A300157(n+2))*A376989(n+1)`
-/

namespace A174386.P15851138160032047651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177083 (A300157 (n + 2)).toNat * A376989 (n + 1)

end

end A174386.P15851138160032047651

/-! ## A174386.P5423207933466455802

`A090093(A078858(n+1))*A219055(2*(n+2))`
-/

namespace A174386.P5423207933466455802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090093 (A078858 (n + 1)).toNat * A219055 (2 * (n + 2))

end

end A174386.P5423207933466455802

/-!
# A174387: Triangle T(n, k) = c(n, q)/c(k, q) if k <= floor(n/2), otherwise c(n, q)/c(n-k, q), where c(n, q) = Product_{j=1..n} (1 - q^j) and q = 2, read by rows.

The programs for A174387, there is no canonical definition to state claims against.
-/

/-! ## A174387.P15501303913928832137

`A000265(A296548(n))*A204020(A204026(n+1))`
-/

namespace A174387.P15501303913928832137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A296548 n).toNat * A204020 (A204026 (n + 1)).toNat

end

end A174387.P15501303913928832137

/-!
# A174388: Triangle T(n, k) = c(n, q)/c(k, q) if k <= floor(n/2), otherwise c(n, q)/c(n-k, q), where c(n, q) = Product_{j=1..n} (1 - q^j) and q = 3, read by rows.

The programs for A174388, there is no canonical definition to state claims against.
-/

/-! ## A174388.P8915357304026992402

`2-A176552(A176468(n))`
-/

namespace A174388.P8915357304026992402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A176552 (A176468 n).toNat

end

end A174388.P8915357304026992402

/-! ## A174388.P2841378802796670465

`3-A086339(A008459(n))`
-/

namespace A174388.P2841378802796670465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A086339 (A008459 n).toNat

end

end A174388.P2841378802796670465

/-! ## A174388.P6688361722228620861

`3-A270097(A060187(n+1))`
-/

namespace A174388.P6688361722228620861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A270097 (A060187 (n + 1)).toNat

end

end A174388.P6688361722228620861

/-! ## A174388.P16328003639378370321

`3-A342566(A137754(n+1))`
-/

namespace A174388.P16328003639378370321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A342566 (A137754 (n + 1)).toNat

end

end A174388.P16328003639378370321

/-! ## A174388.P12724161128554031379

`A328929(A173047(n))-A173047(n)`
-/

namespace A174388.P12724161128554031379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328929 (A173047 n).toNat - A173047 n

end

end A174388.P12724161128554031379

/-!
# A174389: Triangle T(n, k) = c(n, q)/c(k, q) if k <= floor(n/2), otherwise c(n, q)/c(n-k, q), where c(n, q) = Product_{j=1..n} (1 - q^j) and q = 4, read by rows.

The programs for A174389, there is no canonical definition to state claims against.
-/

/-! ## A174389.P15671395122648219856

`A143348(A144464(n)^A004396(n))`
-/

namespace A174389.P15671395122648219856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (SequenceMachineLib.roundAway ((A144464 n : ℚ) ^ (A004396 n : ℤ))).toNat

end

end A174389.P15671395122648219856

/-! ## A174389.P8280730395894799902

`A143348(A144464(n)^A008288(n))`
-/

namespace A174389.P8280730395894799902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (SequenceMachineLib.roundAway ((A144464 n : ℚ) ^ (A008288 n : ℤ))).toNat

end

end A174389.P8280730395894799902

/-! ## A174389.P10969866087308889438

`A143348(A174545(n)^A004396(n))`
-/

namespace A174389.P10969866087308889438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (SequenceMachineLib.roundAway ((A174545 n : ℚ) ^ (A004396 n : ℤ))).toNat

end

end A174389.P10969866087308889438

/-! ## A174389.P15425889708511498363

`A143348(A174545(n)^A008288(n))`
-/

namespace A174389.P15425889708511498363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (SequenceMachineLib.roundAway ((A174545 n : ℚ) ^ (A008288 n : ℤ))).toNat

end

end A174389.P15425889708511498363

/-! ## A174389.P5182905714003194867

`A143348(A144464(n)^A086620(n))`
-/

namespace A174389.P5182905714003194867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (SequenceMachineLib.roundAway ((A144464 n : ℚ) ^ (A086620 n : ℤ))).toNat

end

end A174389.P5182905714003194867

/-!
# A174390: a(2n) = -n, a(2n+1) = 2*n+4.

The programs for A174390, the canonical program `A174390.P10967133255524097014` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174390 has offset 0).

The definition of A174390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174390.P10967133255524097014

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=-1, a(3)=6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174390

/-- `2*a(n-2)-a(n-4)` -/
def P10967133255524097014.Spec : Prop :=
  ∀ n, P10967133255524097014.a n = A174390 n

theorem P10967133255524097014.correct : P10967133255524097014.Spec := by
  intro n
  simp only [A174390]

end A174390

/-! ## A174390.P16679172300925023554

`Δ[lcm(2, n+1)]/gcd(2, n)`
-/

namespace A174390.P16679172300925023554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A174390.P16679172300925023554

namespace A174390

/-- `Δ[lcm(2, n+1)]/gcd(2, n)` -/
def P16679172300925023554.Spec : Prop :=
  ∀ n, P16679172300925023554.a n = (A174390 n : ℚ)

end A174390

/-! ## A174390.P5845008420771699487

`(n+2)/(2-gcd(4, n²))+1`
-/

namespace A174390.P5845008420771699487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (2 - (Nat.gcd 4 (n ^ 2) : ℤ) : ℚ) + 1

end

end A174390.P5845008420771699487

namespace A174390

/-- `(n+2)/(2-gcd(4, n²))+1` -/
def P5845008420771699487.Spec : Prop :=
  ∀ n, P5845008420771699487.a n = (A174390 n : ℚ)

end A174390

/-! ## A174390.P16490444697701096503

`(n+2)/(3*n%2-2)+1`
-/

namespace A174390.P16490444697701096503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (((3 * (n % 2) : ℕ) : ℤ) - 2 : ℚ) + 1

end

end A174390.P16490444697701096503

namespace A174390

/-- `(n+2)/(3*n%2-2)+1` -/
def P16490444697701096503.Spec : Prop :=
  ∀ n, P16490444697701096503.a n = (A174390 n : ℚ)

end A174390

/-! ## A174390.P6969978814282403620

`(n+2)/(3*and(1, n)-2)+1`
-/

namespace A174390.P6969978814282403620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / ((3 * Nat.land 1 n : ℤ) - 2 : ℚ) + 1

end

end A174390.P6969978814282403620

namespace A174390

/-- `(n+2)/(3*and(1, n)-2)+1` -/
def P6969978814282403620.Spec : Prop :=
  ∀ n, P6969978814282403620.a n = (A174390 n : ℚ)

end A174390

/-! ## A174390.P6717282530437606411

`a(n-2)-(-2)^and(1, n)` with `a(0)=0, a(1)=4`
-/

namespace A174390.P6717282530437606411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) - (-2) ^ Nat.land 1 n

end

end A174390.P6717282530437606411

namespace A174390

/-- `a(n-2)-(-2)^and(1, n)` -/
def P6717282530437606411.Spec : Prop :=
  ∀ n, P6717282530437606411.a n = A174390 n

end A174390

/-! ## A174390.P16477687709333869675

`(2-a(n-1))/2^(-1)^n` with `a(0)=0`
-/

namespace A174390.P16477687709333869675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 - a (n - 1)) / (2 : ℚ) ^ ((-1) ^ n : ℤ)

end

end A174390.P16477687709333869675

namespace A174390

/-- `(2-a(n-1))/2^(-1)^n` -/
def P16477687709333869675.Spec : Prop :=
  ∀ n, P16477687709333869675.a n = (A174390 n : ℚ)

end A174390

/-! ## A174390.P1855532696837351429

`(n+2)/2^(-1)^n-(n+1)`
-/

namespace A174390.P1855532696837351429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (2 : ℚ) ^ ((-1) ^ n : ℤ) - (n + 1 : ℚ)

end

end A174390.P1855532696837351429

namespace A174390

/-- `(n+2)/2^(-1)^n-(n+1)` -/
def P1855532696837351429.Spec : Prop :=
  ∀ n, P1855532696837351429.a n = (A174390 n : ℚ)

end A174390

/-! ## A174390.P16628063739598757692

`((n+2)*a(n-2)-2)/n` with `a(0)=0, a(1)=4`
-/

namespace A174390.P16628063739598757692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  ((n + 2 : ℚ) * a (n - 2) - 2) / (n : ℚ)

end

end A174390.P16628063739598757692

namespace A174390

/-- `((n+2)*a(n-2)-2)/n` -/
def P16628063739598757692.Spec : Prop :=
  ∀ n, P16628063739598757692.a n = (A174390 n : ℚ)

end A174390

/-! ## A174390.P4501520754410015064

`floor(a(n-2)+(1-n)/a(n-1))` with `a(0)=0, a(1)=4`
-/

namespace A174390.P4501520754410015064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  ⌊(a (n - 2) : ℚ) + (1 - (n : ℤ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A174390.P4501520754410015064

namespace A174390

/-- `floor(a(n-2)+(1-n)/a(n-1))` -/
def P4501520754410015064.Spec : Prop :=
  ∀ n, P4501520754410015064.a n = A174390 n

end A174390

/-! ## A174390.P121285322607341153

`(1-A280193(n))*A030451(n)`
-/

namespace A174390.P121285322607341153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A280193 n) * A030451 n

end

end A174390.P121285322607341153

namespace A174390

/-- `(1-A280193(n))*A030451(n)` -/
def P121285322607341153.Spec : Prop :=
  ∀ n, P121285322607341153.a n = A174390 n

end A174390

/-! ## A174390.P14007186132597131668

`(A000034(n)²-2)*A030451(n)`
-/

namespace A174390.P14007186132597131668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n ^ 2 - 2) * A030451 n

end

end A174390.P14007186132597131668

namespace A174390

/-- `(A000034(n)²-2)*A030451(n)` -/
def P14007186132597131668.Spec : Prop :=
  ∀ n, P14007186132597131668.a n = A174390 n

end A174390

/-! ## A174390.P7213530478920406704

`(1-A168361(n+1))*A030451(n)`
-/

namespace A174390.P7213530478920406704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A168361 (n + 1)) * A030451 n

end

end A174390.P7213530478920406704

namespace A174390

/-- `(1-A168361(n+1))*A030451(n)` -/
def P7213530478920406704.Spec : Prop :=
  ∀ n, P7213530478920406704.a n = A174390 n

end A174390

/-! ## A174390.P5788899029500341541

`(∑[A327767(n+1)]-1)*A327767(n+1)`
-/

namespace A174390.P5788899029500341541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) * A327767 (n + 1)

end

end A174390.P5788899029500341541

namespace A174390

/-- `(∑[A327767(n+1)]-1)*A327767(n+1)` -/
def P5788899029500341541.Spec : Prop :=
  ∀ n, P5788899029500341541.a n = A174390 n

end A174390

/-! ## A174390.P10520034725227055702

`(A030451(n)-A028242(n))*A030451(n)`
-/

namespace A174390.P10520034725227055702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030451 n - A028242 n) * A030451 n

end

end A174390.P10520034725227055702

namespace A174390

/-- `(A030451(n)-A028242(n))*A030451(n)` -/
def P10520034725227055702.Spec : Prop :=
  ∀ n, P10520034725227055702.a n = A174390 n

end A174390

/-! ## A174390.P13451524186611890638

`(A145051(n+1)-A026741(n+1))*A000034(n)`
-/

namespace A174390.P13451524186611890638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145051 (n + 1) - A026741 (n + 1)) * A000034 n

end

end A174390.P13451524186611890638

namespace A174390

/-- `(A145051(n+1)-A026741(n+1))*A000034(n)` -/
def P13451524186611890638.Spec : Prop :=
  ∀ n, P13451524186611890638.a n = A174390 n

end A174390

/-! ## A174390.P3841195283756264437

`A030451(n)*A280193(n+1)`
-/

namespace A174390.P3841195283756264437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 n * A280193 (n + 1)

end

end A174390.P3841195283756264437

namespace A174390

/-- `A030451(n)*A280193(n+1)` -/
def P3841195283756264437.Spec : Prop :=
  ∀ n, P3841195283756264437.a n = A174390 n

end A174390

/-! ## A174390.P10372938872319910230

`A168361(n+2)*A030451(n)`
-/

namespace A174390.P10372938872319910230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (n + 2) * A030451 n

end

end A174390.P10372938872319910230

namespace A174390

/-- `A168361(n+2)*A030451(n)` -/
def P10372938872319910230.Spec : Prop :=
  ∀ n, P10372938872319910230.a n = A174390 n

end A174390

/-! ## A174390.P14836889919186008884

`A028242(n+1)*A280193(n+1)`
-/

namespace A174390.P14836889919186008884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (n + 1) * A280193 (n + 1)

end

end A174390.P14836889919186008884

namespace A174390

/-- `A028242(n+1)*A280193(n+1)` -/
def P14836889919186008884.Spec : Prop :=
  ∀ n, P14836889919186008884.a n = A174390 n

end A174390

/-!
# A174391: Triangle, read by row, of constant term of X^k modulo n-th cyclotomic polynomial.

The programs for A174391, there is no canonical definition to state claims against.
-/

/-! ## A174391.P6736985284488887277

`A333248(∑[char[∑[n]]]²+1-n)`
-/

namespace A174391.P6736985284488887277
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333248 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 - n)

end

end A174391.P6736985284488887277

/-! ## A174391.P3355726917414077252

`A333248(∑[2*n]%comp[∑[n]]+2)%6`
-/

namespace A174391.P3355726917414077252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333248 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 2)) 6

end

end A174391.P3355726917414077252

/-! ## A174391.P6644648688225628089

`A014149(A230044(n+1)*A230049(n))`
-/

namespace A174391.P6644648688225628089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014149 (A230044 (n + 1) * A230049 n).toNat

end

end A174391.P6644648688225628089

/-! ## A174391.P5888226998950644703

`A010815(A155864(3*n+4)*A180662(n))`
-/

namespace A174391.P5888226998950644703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A155864 (3 * n + 4) * A180662 n).toNat

end

end A174391.P5888226998950644703

/-! ## A174391.P3093692079325100034

`A121454(A308569(n+1))`
-/

namespace A174391.P3093692079325100034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121454 (A308569 (n + 1)).toNat

end

end A174391.P3093692079325100034

/-!
# A174392: Neither n-1 nor n+1 is prime.

The programs for A174392, there is no canonical definition to state claims against.
-/

/-! ## A174392.P18041756371367114156

`comp[p?[floor(n/2)]+(-1)^n]`
-/

namespace A174392.P18041756371367114156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + (-1) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174392.P18041756371367114156

/-! ## A174392.P2570758110812354723

`comp[abs(p?[floor(n/2)]-(-1)^n)]`
-/

namespace A174392.P2570758110812354723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - (-1) ^ n|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174392.P2570758110812354723

/-! ## A174392.P3114481652913788210

`comp[A045718(n)]`
-/

namespace A174392.P3114481652913788210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174392.P3114481652913788210

/-! ## A174392.P15725967913273191138

`lt[1, A051700(n)]`
-/

namespace A174392.P15725967913273191138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174392.P15725967913273191138

/-! ## A174392.P7050663470307945563

`lt[1, abs(n-A051698(n))]`
-/

namespace A174392.P7050663470307945563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A051698 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174392.P7050663470307945563

/-! ## A174392.P1574721425148178488

`comp[A013634(xor(1, n))-n]`
-/

namespace A174392.P1574721425148178488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (Nat.xor 1 n) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174392.P1574721425148178488

/-! ## A174392.P5453088911215605313

`comp[A006530(n+1)+1-and(2, n)]`
-/

namespace A174392.P5453088911215605313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + (1 - (Nat.land 2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174392.P5453088911215605313

/-! ## A174392.P17473110572276983153

`comp[A006530(2*(n+1))+(-1)^n]`
-/

namespace A174392.P17473110572276983153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) + (-1) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174392.P17473110572276983153

/-! ## A174392.P2860989810536459344

`comp[A020639(floor(n/2)+2)-(-1)^n]`
-/

namespace A174392.P2860989810536459344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊(n : ℚ) / 2⌋ + 2).toNat - (-1) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174392.P2860989810536459344

/-! ## A174392.P5227571350700383889

`comp[A000040(ceil(lcm(2, n+1)/4))+(-1)^n]`
-/

namespace A174392.P5227571350700383889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈(Nat.lcm 2 (n + 1) : ℚ) / 4⌉.toNat + (-1) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174392.P5227571350700383889

/-!
# A174394: Fourth root of largest n-digit number with exactly five divisors.

The programs for A174394, there is no canonical definition to state claims against.
-/

/-! ## A174394.P10928313959763263812

`sqrt(sqrt(A182647(n+2)))`
-/

namespace A174394.P10928313959763263812
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A182647 (n + 2) : ℝ))

end

end A174394.P10928313959763263812

/-! ## A174394.P4690962135170836315

`A000040(A210518(n+2))`
-/

namespace A174394.P4690962135170836315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A210518 (n + 2)).toNat

end

end A174394.P4690962135170836315

/-! ## A174394.P6505165974580496726

`A008578(A210518(n+2)+1)`
-/

namespace A174394.P6505165974580496726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A210518 (n + 2) + 1).toNat

end

end A174394.P6505165974580496726

/-! ## A174394.P16008767438891855693

`A065091(A210518(n+2)-1)`
-/

namespace A174394.P16008767438891855693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A210518 (n + 2) - 1).toNat

end

end A174394.P16008767438891855693

/-!
# A174395: The number of different 4-colorings for the vertices of all triangulated planar polygons on a base with n vertices if the colors of two adjacent boundary vertices are fixed.

The programs for A174395, the canonical program `A174395.P6344206987944996349` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174395 has offset 3).

The definition of A174395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174395.P6344206987944996349

`5*a(n-1)-5*a(n-2)-5*a(n-3)+6*a(n-4)` with `a(0)=0, a(1)=2, a(2)=10, a(3)=40`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174395

/-- `5*a(n-1)-5*a(n-2)-5*a(n-3)+6*a(n-4)` -/
def P6344206987944996349.Spec : Prop :=
  ∀ n, P6344206987944996349.a n = A174395 (n + 3)

theorem P6344206987944996349.correct : P6344206987944996349.Spec := by
  intro n
  simp only [A174395, Nat.add_sub_cancel]

end A174395

/-! ## A174395.P16856757455247956022

`2*∑[3^n-(a(n-1)+2^n)]` with `a(0)=0`
-/

namespace A174395.P16856757455247956022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (3 ^ n : ℤ) - (f1 (n - 1) + (2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174395.P16856757455247956022

namespace A174395

/-- `2*∑[3^n-(a(n-1)+2^n)]` -/
def P16856757455247956022.Spec : Prop :=
  ∀ n, P16856757455247956022.a n = A174395 (n + 3)

end A174395

/-! ## A174395.P13545686069185954676

`ceil((3/2)²*3^n-2^n)-round(5*2^n/3)`
-/

namespace A174395.P13545686069185954676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 : ℚ) / 2) ^ 2 * (3 ^ n : ℚ) - (2 ^ n : ℚ)⌉ - SequenceMachineLib.roundAway (5 * ((2 ^ n : ℚ) / 3))

end

end A174395.P13545686069185954676

namespace A174395

/-- `ceil((3/2)²*3^n-2^n)-round(5*2^n/3)` -/
def P13545686069185954676.Spec : Prop :=
  ∀ n, P13545686069185954676.a n = A174395 (n + 3)

end A174395

/-! ## A174395.P4383564249250224215

`∑[2*A094705(n)]`
-/

namespace A174395.P4383564249250224215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174395.P4383564249250224215

namespace A174395

/-- `∑[2*A094705(n)]` -/
def P4383564249250224215.Spec : Prop :=
  ∀ n, P4383564249250224215.a n = A174395 (n + 3)

end A174395

/-! ## A174395.P18226222182334693961

`∑[∑[3^n]-A000975(n+1)]`
-/

namespace A174395.P18226222182334693961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A000975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174395.P18226222182334693961

namespace A174395

/-- `∑[∑[3^n]-A000975(n+1)]` -/
def P18226222182334693961.Spec : Prop :=
  ∀ n, P18226222182334693961.a n = A174395 (n + 3)

end A174395

/-! ## A174395.P4269287355016406915

`∑[∑[3^n-A001045(n+1)]]`
-/

namespace A174395.P4269287355016406915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A001045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174395.P4269287355016406915

namespace A174395

/-- `∑[∑[3^n-A001045(n+1)]]` -/
def P4269287355016406915.Spec : Prop :=
  ∀ n, P4269287355016406915.a n = A174395 (n + 3)

end A174395

/-! ## A174395.P5768450809996109337

`∑[round((∑[A001047(n+1)]-1)/3)]`
-/

namespace A174395.P5768450809996109337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j - 1 : ℤ) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174395.P5768450809996109337

namespace A174395

/-- `∑[round((∑[A001047(n+1)]-1)/3)]` -/
def P5768450809996109337.Spec : Prop :=
  ∀ n, P5768450809996109337.a n = A174395 (n + 3)

end A174395

/-! ## A174395.P7031958885920629970

`∑[∑[A004054(n)-A046717(n)]]`
-/

namespace A174395.P7031958885920629970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004054 n - A046717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174395.P7031958885920629970

namespace A174395

/-- `∑[∑[A004054(n)-A046717(n)]]` -/
def P7031958885920629970.Spec : Prop :=
  ∀ n, P7031958885920629970.a n = A174395 (n + 3)

end A174395

/-! ## A174395.P7663233231216300285

`∑[A053156(n+1)-A005578(n)]`
-/

namespace A174395.P7663233231216300285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053156 (n + 1) - A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174395.P7663233231216300285

namespace A174395

/-- `∑[A053156(n+1)-A005578(n)]` -/
def P7663233231216300285.Spec : Prop :=
  ∀ n, P7663233231216300285.a n = A174395 (n + 3)

end A174395

/-! ## A174395.P1743814438755482554

`∑[A029858(n+1)-A084639(n)]`
-/

namespace A174395.P1743814438755482554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) - A084639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174395.P1743814438755482554

namespace A174395

/-- `∑[A029858(n+1)-A084639(n)]` -/
def P1743814438755482554.Spec : Prop :=
  ∀ n, P1743814438755482554.a n = A174395 (n + 3)

end A174395

/-! ## A174395.P17621857913623697845

`Δ[A033113(n+1)-A011377(n)]`
-/

namespace A174395.P17621857913623697845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033113 (n + 1) - A011377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174395.P17621857913623697845

namespace A174395

/-- `Δ[A033113(n+1)-A011377(n)]` -/
def P17621857913623697845.Spec : Prop :=
  ∀ n, P17621857913623697845.a n = A174395 (n + 3)

end A174395

/-!
# A174396: Numbers congruent to {1,4,5,8} mod 9.

The programs for A174396, the canonical program `A174396.P8242938457203770348` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174396 has offset 1).

The definition of A174396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174396.P8242938457203770348

`3*(n-floor(n/4))+(-1)^floor(n/2)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174396

/-- `3*(n-floor(n/4))+(-1)^floor(n/2)` -/
def P8242938457203770348.Spec : Prop :=
  ∀ n, P8242938457203770348.a n = (A174396 (n + 1) : ℚ)

end A174396

/-! ## A174396.P8381609357487645029

`eq[1, val(n²+5, 3)]`
-/

namespace A174396.P8381609357487645029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 5) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174396.P8381609357487645029

namespace A174396

/-- `eq[1, val(n²+5, 3)]` -/
def P8381609357487645029.Spec : Prop :=
  ∀ n, (P8381609357487645029.a n : ℤ) = A174396 (n + 1)

end A174396

/-! ## A174396.P2242738755101117634

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=3, a(4)=2`
-/

namespace A174396.P2242738755101117634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174396.P2242738755101117634

namespace A174396

/-- `∑[abs(a(n-4))]` -/
def P2242738755101117634.Spec : Prop :=
  ∀ n, (P2242738755101117634.a n : ℤ) = A174396 (n + 1)

end A174396

/-! ## A174396.P9487533887092509584

`∑[dr(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=3, a(4)=2`
-/

namespace A174396.P9487533887092509584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 3, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174396.P9487533887092509584

namespace A174396

/-- `∑[dr(a(n-4))]` -/
def P9487533887092509584.Spec : Prop :=
  ∀ n, (P9487533887092509584.a n : ℤ) = A174396 (n + 1)

end A174396

/-! ## A174396.P16241817184241968079

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=3, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A174396.P16241817184241968079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174396.P16241817184241968079

namespace A174396

/-- `∑[floor(a(n-4))]` -/
def P16241817184241968079.Spec : Prop :=
  ∀ n, (P16241817184241968079.a n : ℤ) = A174396 (n + 1)

end A174396

/-! ## A174396.P554153579665718612

`∑[ceil(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=3, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A174396.P554153579665718612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174396.P554153579665718612

namespace A174396

/-- `∑[ceil(a(n-4))]` -/
def P554153579665718612.Spec : Prop :=
  ∀ n, (P554153579665718612.a n : ℤ) = A174396 (n + 1)

end A174396

/-! ## A174396.P5990534477236220007

`∑[round(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=3, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A174396.P5990534477236220007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174396.P5990534477236220007

namespace A174396

/-- `∑[round(a(n-4))]` -/
def P5990534477236220007.Spec : Prop :=
  ∀ n, (P5990534477236220007.a n : ℤ) = A174396 (n + 1)

end A174396

/-! ## A174396.P4832700238123346025

`∑[a(n-4)%4]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=3, a(4)=2`
-/

namespace A174396.P4832700238123346025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 3, 2] fun n f1 =>
  f1 (n - 4) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174396.P4832700238123346025

namespace A174396

/-- `∑[a(n-4)%4]` -/
def P4832700238123346025.Spec : Prop :=
  ∀ n, (P4832700238123346025.a n : ℤ) = A174396 (n + 1)

end A174396

/-! ## A174396.P8178333807302921286

`∑[gcd(6, a(n-4))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=3, a(4)=2`
-/

namespace A174396.P8178333807302921286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 3, 2] fun n f1 =>
  Nat.gcd 6 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174396.P8178333807302921286

namespace A174396

/-- `∑[gcd(6, a(n-4))]` -/
def P8178333807302921286.Spec : Prop :=
  ∀ n, (P8178333807302921286.a n : ℤ) = A174396 (n + 1)

end A174396

/-! ## A174396.P10084728429874888930

`ceil(xor(1, n+3)/4+2*n)`
-/

namespace A174396.P10084728429874888930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n + 3) : ℚ) / 4 + (2 * n : ℚ)⌉

end

end A174396.P10084728429874888930

namespace A174396

/-- `ceil(xor(1, n+3)/4+2*n)` -/
def P10084728429874888930.Spec : Prop :=
  ∀ n, P10084728429874888930.a n = A174396 (n + 1)

end A174396

/-! ## A174396.P16336270511626762559

`∑[∑[2/a(n-2)]]` with `a(0)=1, a(1)=2, a(2)=-2, a(3)=2`
-/

namespace A174396.P16336270511626762559
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, -2, 2] fun n f2 =>
  2 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174396.P16336270511626762559

namespace A174396

/-- `∑[∑[2/a(n-2)]]` -/
def P16336270511626762559.Spec : Prop :=
  ∀ n, P16336270511626762559.a n = (A174396 (n + 1) : ℚ)

end A174396

/-! ## A174396.P10933261544396284728

`record[n+2-dr(2*n+1)%5]`
-/

namespace A174396.P10933261544396284728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((SequenceMachineLib.digitalRoot (2 * n + 1 : ℤ) % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174396.P10933261544396284728

namespace A174396

/-- `record[n+2-dr(2*n+1)%5]` -/
def P10933261544396284728.Spec : Prop :=
  ∀ n, P10933261544396284728.a n = A174396 (n + 1)

end A174396

/-! ## A174396.P12191419519144413753

`∑[dr(A040770(n))]`
-/

namespace A174396.P12191419519144413753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040770 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174396.P12191419519144413753

namespace A174396

/-- `∑[dr(A040770(n))]` -/
def P12191419519144413753.Spec : Prop :=
  ∀ n, (P12191419519144413753.a n : ℤ) = A174396 (n + 1)

end A174396

/-! ## A174396.P2945726917132371890

`Δ[A001971(n)+n²]`
-/

namespace A174396.P2945726917132371890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174396.P2945726917132371890

namespace A174396

/-- `Δ[A001971(n)+n²]` -/
def P2945726917132371890.Spec : Prop :=
  ∀ n, P2945726917132371890.a n = A174396 (n + 1)

end A174396

/-! ## A174396.P701127657716667727

`∪[A056020(n+1), A156638(n+1)]`
-/

namespace A174396.P701127657716667727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174396.P701127657716667727

namespace A174396

/-- `∪[A056020(n+1), A156638(n+1)]` -/
def P701127657716667727.Spec : Prop :=
  ∀ n, (P701127657716667727.a n : ℤ) = A174396 (n + 1)

end A174396

/-! ## A174396.P12060054249369920683

`∪[A087444(n+1), A253195(n+1)]`
-/

namespace A174396.P12060054249369920683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174396.P12060054249369920683

namespace A174396

/-- `∪[A087444(n+1), A253195(n+1)]` -/
def P12060054249369920683.Spec : Prop :=
  ∀ n, (P12060054249369920683.a n : ℤ) = A174396 (n + 1)

end A174396

/-! ## A174396.P9959361545646992260

`A074232(A047298(n+1))`
-/

namespace A174396.P9959361545646992260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (A047298 (n + 1)).toNat

end

end A174396.P9959361545646992260

namespace A174396

/-- `A074232(A047298(n+1))` -/
def P9959361545646992260.Spec : Prop :=
  ∀ n, P9959361545646992260.a n = A174396 (n + 1)

end A174396

/-! ## A174396.P1936298352265225516

`A001651(A007494(n)+1)`
-/

namespace A174396.P1936298352265225516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A007494 n + 1).toNat

end

end A174396.P1936298352265225516

namespace A174396

/-- `A001651(A007494(n)+1)` -/
def P1936298352265225516.Spec : Prop :=
  ∀ n, P1936298352265225516.a n = A174396 (n + 1)

end A174396

/-! ## A174396.P4925626455911284178

`A001651(A032766(n+1))`
-/

namespace A174396.P4925626455911284178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A032766 (n + 1)).toNat

end

end A174396.P4925626455911284178

namespace A174396

/-- `A001651(A032766(n+1))` -/
def P4925626455911284178.Spec : Prop :=
  ∀ n, P4925626455911284178.a n = A174396 (n + 1)

end A174396

/-! ## A174396.P9558058388986333400

`A001651(A001651(n+2)-1)`
-/

namespace A174396.P9558058388986333400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A001651 (n + 2) - 1).toNat

end

end A174396.P9558058388986333400

namespace A174396

/-- `A001651(A001651(n+2)-1)` -/
def P9558058388986333400.Spec : Prop :=
  ∀ n, P9558058388986333400.a n = A174396 (n + 1)

end A174396

/-!
# A174397: Sum of any three adjacent digits of n^2 is a square.

The programs for A174397, there is no canonical definition to state claims against.
-/

/-! ## A174397.P11733041030719347448

`A061910(n+6)%A242323(n)`
-/

namespace A174397.P11733041030719347448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061910 (n + 6)) (A242323 (n + 36))

end

end A174397.P11733041030719347448

/-! ## A174397.P7229278718923362078

`lt[A051801(n), A338881(A219209(n))]`
-/

namespace A174397.P7229278718923362078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338881 (A219209 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174397.P7229278718923362078

/-! ## A174397.P11775334864343131307

`lt[A325680(A007954(n)), A319656(n)]`
-/

namespace A174397.P11775334864343131307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325680 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174397.P11775334864343131307

/-! ## A174397.P1914643837104292226

`lt[A325680(A051801(n)), A319656(n)]`
-/

namespace A174397.P1914643837104292226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325680 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174397.P1914643837104292226

/-! ## A174397.P7272201771326542700

`eq[A000122(A004159(n)), A111891(n+1)]`
-/

namespace A174397.P7272201771326542700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A004159 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111891 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174397.P7272201771326542700

/-!
# A174398: Numbers that are congruent to {1, 4, 5, 8} mod 12.

The programs for A174398, the canonical program `A174398.P18375947674406659080` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174398 has offset 1).

The definition of A174398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174398.P18375947674406659080

`3*n+(-1)^floor(n/2)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A174398

/-- `3*n+(-1)^floor(n/2)` -/
def P18375947674406659080.Spec : Prop :=
  ∀ n, P18375947674406659080.a n = (A174398 (n + 1) : ℚ)

end A174398

/-! ## A174398.P5538516323598417195

`and(3*n+1, -3)`
-/

namespace A174398.P5538516323598417195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n + 1 : ℤ) (-3)

end

end A174398.P5538516323598417195

namespace A174398

/-- `and(3*n+1, -3)` -/
def P5538516323598417195.Spec : Prop :=
  ∀ n, P5538516323598417195.a n = A174398 (n + 1)

end A174398

/-! ## A174398.P948336558626800778

`round(xor(2, 9*n)/3)`
-/

namespace A174398.P948336558626800778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (9 * n) : ℚ) / 3)

end

end A174398.P948336558626800778

namespace A174398

/-- `round(xor(2, 9*n)/3)` -/
def P948336558626800778.Spec : Prop :=
  ∀ n, P948336558626800778.a n = A174398 (n + 1)

end A174398

/-! ## A174398.P14986833849638518917

`xor(2, or(2, 3*n+1))`
-/

namespace A174398.P14986833849638518917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 2 (3 * n + 1))

end

end A174398.P14986833849638518917

namespace A174398

/-- `xor(2, or(2, 3*n+1))` -/
def P14986833849638518917.Spec : Prop :=
  ∀ n, (P14986833849638518917.a n : ℤ) = A174398 (n + 1)

end A174398

/-! ## A174398.P14133178890417789400

`∑[6-a(n-2)]` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A174398.P14133178890417789400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174398.P14133178890417789400

namespace A174398

/-- `∑[6-a(n-2)]` -/
def P14133178890417789400.Spec : Prop :=
  ∀ n, P14133178890417789400.a n = A174398 (n + 1)

end A174398

/-! ## A174398.P6092341068200841212

`lt[xor(n, n+2), (2*n+1)%6]`
-/

namespace A174398.P6092341068200841212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174398.P6092341068200841212

namespace A174398

/-- `lt[xor(n, n+2), (2*n+1)%6]` -/
def P6092341068200841212.Spec : Prop :=
  ∀ n, (P6092341068200841212.a n : ℤ) = A174398 (n + 1)

end A174398

/-! ## A174398.P4356113631614392615

`eq[n+3, gcd(2*(n+3), C(n+3, 3))]`
-/

namespace A174398.P4356113631614392615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * (n + 3)) (Nat.choose (n + 3) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174398.P4356113631614392615

namespace A174398

/-- `eq[n+3, gcd(2*(n+3), C(n+3, 3))]` -/
def P4356113631614392615.Spec : Prop :=
  ∀ n, (P4356113631614392615.a n : ℤ) = A174398 (n + 1)

end A174398

/-! ## A174398.P12327356093700198749

`(A269819(n+1)-3)/2`
-/

namespace A174398.P12327356093700198749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269819 (n + 1) - 3 : ℚ) / 2

end

end A174398.P12327356093700198749

namespace A174398

/-- `(A269819(n+1)-3)/2` -/
def P12327356093700198749.Spec : Prop :=
  ∀ n, P12327356093700198749.a n = (A174398 (n + 1) : ℚ)

end A174398

/-! ## A174398.P6928148190834546091

`xor(A007310(n+1), A010873(n))`
-/

namespace A174398.P6928148190834546091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007310 (n + 1)) (A010873 n)

end

end A174398.P6928148190834546091

namespace A174398

/-- `xor(A007310(n+1), A010873(n))` -/
def P6928148190834546091.Spec : Prop :=
  ∀ n, P6928148190834546091.a n = A174398 (n + 1)

end A174398

/-! ## A174398.P5027295116360694977

`A195316(n+1)%A269819(n+1)`
-/

namespace A174398.P5027295116360694977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195316 (n + 1)) (A269819 (n + 1))

end

end A174398.P5027295116360694977

namespace A174398

/-- `A195316(n+1)%A269819(n+1)` -/
def P5027295116360694977.Spec : Prop :=
  ∀ n, P5027295116360694977.a n = A174398 (n + 1)

end A174398

/-! ## A174398.P13698871059118547152

`∪[A087445(n+1), A092259(n+1)]`
-/

namespace A174398.P13698871059118547152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174398.P13698871059118547152

namespace A174398

/-- `∪[A087445(n+1), A092259(n+1)]` -/
def P13698871059118547152.Spec : Prop :=
  ∀ n, (P13698871059118547152.a n : ℤ) = A174398 (n + 1)

end A174398

/-! ## A174398.P2830096470213662016

`A042948(A047227(n+1))`
-/

namespace A174398.P2830096470213662016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A047227 (n + 1)).toNat

end

end A174398.P2830096470213662016

namespace A174398

/-- `A042948(A047227(n+1))` -/
def P2830096470213662016.Spec : Prop :=
  ∀ n, P2830096470213662016.a n = A174398 (n + 1)

end A174398

/-! ## A174398.P6214749992949910322

`A042948(A047246(n+1)+1)`
-/

namespace A174398.P6214749992949910322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A047246 (n + 1) + 1).toNat

end

end A174398.P6214749992949910322

namespace A174398

/-- `A042948(A047246(n+1)+1)` -/
def P6214749992949910322.Spec : Prop :=
  ∀ n, P6214749992949910322.a n = A174398 (n + 1)

end A174398

/-! ## A174398.P8838871264386730577

`filter[A042948(n+1), A187074(#)]`
-/

namespace A174398.P8838871264386730577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A174398.P8838871264386730577

namespace A174398

/-- `filter[A042948(n+1), A187074(#)]` -/
def P8838871264386730577.Spec : Prop :=
  ∀ n, P8838871264386730577.a n = A174398 (n + 1)

end A174398

/-! ## A174398.P17055929928156607831

`A359380(A047255(n+1))`
-/

namespace A174398.P17055929928156607831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (A047255 (n + 1)).toNat

end

end A174398.P17055929928156607831

namespace A174398

/-- `A359380(A047255(n+1))` -/
def P17055929928156607831.Spec : Prop :=
  ∀ n, P17055929928156607831.a n = A174398 (n + 1)

end A174398

/-! ## A174398.P678225926768163819

`∩[A359380(n+1), A042948(n)]`
-/

namespace A174398.P678225926768163819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174398.P678225926768163819

namespace A174398

/-- `∩[A359380(n+1), A042948(n)]` -/
def P678225926768163819.Spec : Prop :=
  ∀ n, (P678225926768163819.a n : ℤ) = A174398 (n + 1)

end A174398

/-! ## A174398.P8483730471858071185

`A191276(A047300(n+1))`
-/

namespace A174398.P8483730471858071185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (A047300 (n + 1)).toNat

end

end A174398.P8483730471858071185

namespace A174398

/-- `A191276(A047300(n+1))` -/
def P8483730471858071185.Spec : Prop :=
  ∀ n, P8483730471858071185.a n = A174398 (n + 1)

end A174398

/-! ## A174398.P15545259469946509424

`filter[A047432(n+2), A187074(#)]`
-/

namespace A174398.P15545259469946509424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047432 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A174398.P15545259469946509424

namespace A174398

/-- `filter[A047432(n+2), A187074(#)]` -/
def P15545259469946509424.Spec : Prop :=
  ∀ n, P15545259469946509424.a n = A174398 (n + 1)

end A174398

/-! ## A174398.P2546804178278882361

`filter[A047614(n+2), A187074(#)]`
-/

namespace A174398.P2546804178278882361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A174398.P2546804178278882361

namespace A174398

/-- `filter[A047614(n+2), A187074(#)]` -/
def P2546804178278882361.Spec : Prop :=
  ∀ n, P2546804178278882361.a n = A174398 (n + 1)

end A174398

