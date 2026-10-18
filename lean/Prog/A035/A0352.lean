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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B004.C002
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
# A035200: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 18.

The programs for A035200, the canonical program `A035200.P11648274898513142306` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035200 has offset 1).

The definition of A035200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035200.P11952404897772917110

`A035185(A038502(n+1))`
-/

namespace A035200.P11952404897772917110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A038502 (n + 1)).toNat

end

end A035200.P11952404897772917110

namespace A035200

/-- `A035185(A038502(n+1))` -/
def P11952404897772917110.Spec : Prop :=
  ∀ n, P11952404897772917110.a n = A035200 (n + 1)

end A035200

/-! ## A035200.P12071301704034750126

`A035185(A065330(n+1))`
-/

namespace A035200.P12071301704034750126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A065330 (n + 1)).toNat

end

end A035200.P12071301704034750126

namespace A035200

/-- `A035185(A065330(n+1))` -/
def P12071301704034750126.Spec : Prop :=
  ∀ n, P12071301704034750126.a n = A035200 (n + 1)

end A035200

/-! ## A035200.P16687034952852074073

`∑{d}[A065330(n+1), A091337(#)]`
-/

namespace A035200.P16687034952852074073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A091337 d

end

end A035200.P16687034952852074073

namespace A035200

/-- `∑{d}[A065330(n+1), A091337(#)]` -/
def P16687034952852074073.Spec : Prop :=
  ∀ n, P16687034952852074073.a n = A035200 (n + 1)

end A035200

/-! ## A035200.P11648274898513142306

`A035185((n+1)/A038500(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A035200

/-- `A035185((n+1)/A038500(n+1))` -/
def P11648274898513142306.Spec : Prop :=
  ∀ n, P11648274898513142306.a n = A035200 (n + 1)

theorem P11648274898513142306.correct : P11648274898513142306.Spec := by
  intro n
  simp only [A035200, Nat.add_sub_cancel]

end A035200

/-! ## A035200.P13540777602748185840

`∑{d}[n+1, A035185(#)*A154272((n+1)/#)]`
-/

namespace A035200.P13540777602748185840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035185 d * A154272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035200.P13540777602748185840

namespace A035200

/-- `∑{d}[n+1, A035185(#)*A154272((n+1)/#)]` -/
def P13540777602748185840.Spec : Prop :=
  ∀ n, P13540777602748185840.a n = A035200 (n + 1)

end A035200

/-! ## A035200.P6250688299393048320

`∑{d}[n+1, A087780(#)*A145377((n+1)/#)]`
-/

namespace A035200.P6250688299393048320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087780 d * A145377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035200.P6250688299393048320

namespace A035200

/-- `∑{d}[n+1, A087780(#)*A145377((n+1)/#)]` -/
def P6250688299393048320.Spec : Prop :=
  ∀ n, P6250688299393048320.a n = A035200 (n + 1)

end A035200

/-! ## A035200.P17663147939587854896

`∑{d}[n+1, A091337(#)*A177702((n+1)/#-1)]`
-/

namespace A035200.P17663147939587854896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091337 d * A177702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035200.P17663147939587854896

namespace A035200

/-- `∑{d}[n+1, A091337(#)*A177702((n+1)/#-1)]` -/
def P17663147939587854896.Spec : Prop :=
  ∀ n, P17663147939587854896.a n = A035200 (n + 1)

end A035200

/-! ## A035200.P16198297672089264370

`A035185(3*(n+1))+A035185(n+1)`
-/

namespace A035200.P16198297672089264370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (3 * (n + 1)) + A035185 (n + 1)

end

end A035200.P16198297672089264370

namespace A035200

/-- `A035185(3*(n+1))+A035185(n+1)` -/
def P16198297672089264370.Spec : Prop :=
  ∀ n, P16198297672089264370.a n = A035200 (n + 1)

end A035200

/-! ## A035200.P17700360536053045256

`A259829(4*A065330(n+1))`
-/

namespace A035200.P17700360536053045256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259829 (4 * A065330 (n + 1)).toNat

end

end A035200.P17700360536053045256

namespace A035200

/-- `A259829(4*A065330(n+1))` -/
def P17700360536053045256.Spec : Prop :=
  ∀ n, P17700360536053045256.a n = A035200 (n + 1)

end A035200

/-! ## A035200.P4193253515614513891

`A035185(A370565(n+1))`
-/

namespace A035200.P4193253515614513891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A370565 (n + 1)).toNat

end

end A035200.P4193253515614513891

namespace A035200

/-- `A035185(A370565(n+1))` -/
def P4193253515614513891.Spec : Prop :=
  ∀ n, P4193253515614513891.a n = A035200 (n + 1)

end A035200

/-! ## A035200.P832814904910465850

`A035185((n+1)*A038500(n+1))`
-/

namespace A035200.P832814904910465850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 ((n + 1 : ℤ) * A038500 (n + 1)).toNat

end

end A035200.P832814904910465850

namespace A035200

/-- `A035185((n+1)*A038500(n+1))` -/
def P832814904910465850.Spec : Prop :=
  ∀ n, P832814904910465850.a n = A035200 (n + 1)

end A035200

/-! ## A035200.P10074471844894682742

`A035185(lcm(81, n+1))`
-/

namespace A035200.P10074471844894682742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (Nat.lcm 81 (n + 1))

end

end A035200.P10074471844894682742

namespace A035200

/-- `A035185(lcm(81, n+1))` -/
def P10074471844894682742.Spec : Prop :=
  ∀ n, P10074471844894682742.a n = A035200 (n + 1)

end A035200

/-!
# A035201: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 19.

The programs for A035201, there is no canonical definition to state claims against.
-/

/-! ## A035201.P7681516653019236166

`and(∏{e}[n+1, #+1], A121871(A157751(n)))`
-/

namespace A035201.P7681516653019236166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A121871 (A157751 n).toNat)

end

end A035201.P7681516653019236166

/-! ## A035201.P15839130734636786912

`and(A112329(n+1), A123084(A006955(n)))`
-/

namespace A035201.P15839130734636786912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112329 (n + 1)) (A123084 (A006955 n).toNat)

end

end A035201.P15839130734636786912

/-! ## A035201.P16805695158455129090

`and(A000566(A121326(n+1)), A112329(n+1))`
-/

namespace A035201.P16805695158455129090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000566 (A121326 (n + 1)).toNat) (A112329 (n + 1))

end

end A035201.P16805695158455129090

/-! ## A035201.P9998999378957014563

`and(A112329(n+1), A112418(A112323(n+1)))`
-/

namespace A035201.P9998999378957014563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112329 (n + 1)) (A112418 (A112323 (n + 1)).toNat)

end

end A035201.P9998999378957014563

/-! ## A035201.P6020625780941130268

`A035159(A003961(n+1)%A233552(2*n+5))`
-/

namespace A035201.P6020625780941130268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035159 (Int.tmod (A003961 (n + 1)) (A233552 (2 * n + 5))).toNat

end

end A035201.P6020625780941130268

/-!
# A035202: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 20.

The programs for A035202, the canonical program `A035202.P10068291810367777291` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035202 has offset 1).

The definition of A035202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035202.P18084785222718238774

`A035187((n+1)/2^val(n+1, 2))`
-/

namespace A035202.P18084785222718238774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A035202.P18084785222718238774

namespace A035202

/-- `A035187((n+1)/2^val(n+1, 2))` -/
def P18084785222718238774.Spec : Prop :=
  ∀ n, P18084785222718238774.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P8145703281428689925

`A035187(A000265(n+1))`
-/

namespace A035202.P8145703281428689925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A000265 (n + 1)).toNat

end

end A035202.P8145703281428689925

namespace A035202

/-- `A035187(A000265(n+1))` -/
def P8145703281428689925.Spec : Prop :=
  ∀ n, P8145703281428689925.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P4376994792485101985

`A035187(A132740(n+1))`
-/

namespace A035202.P4376994792485101985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A132740 (n + 1)).toNat

end

end A035202.P4376994792485101985

namespace A035202

/-- `A035187(A132740(n+1))` -/
def P4376994792485101985.Spec : Prop :=
  ∀ n, P4376994792485101985.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P2279247585305744168

`A035187(A153733(n)+1)`
-/

namespace A035202.P2279247585305744168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A153733 n + 1).toNat

end

end A035202.P2279247585305744168

namespace A035202

/-- `A035187(A153733(n)+1)` -/
def P2279247585305744168.Spec : Prop :=
  ∀ n, P2279247585305744168.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P10068291810367777291

`A035187(A214682(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A035202

/-- `A035187(A214682(n+1))` -/
def P10068291810367777291.Spec : Prop :=
  ∀ n, P10068291810367777291.a n = A035202 (n + 1)

theorem P10068291810367777291.correct : P10068291810367777291.Spec := by
  intro n
  simp only [A035202, Nat.add_sub_cancel]

end A035202

/-! ## A035202.P14415217045825058161

`A035187(2*A025480(n)+1)`
-/

namespace A035202.P14415217045825058161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (2 * A025480 n + 1).toNat

end

end A035202.P14415217045825058161

namespace A035202

/-- `A035187(2*A025480(n)+1)` -/
def P14415217045825058161.Spec : Prop :=
  ∀ n, P14415217045825058161.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P10943062038879965690

`∑{d}[n+1, A019590(#)*A035187((n+1)/#)]`
-/

namespace A035202.P10943062038879965690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A035187 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035202.P10943062038879965690

namespace A035202

/-- `∑{d}[n+1, A019590(#)*A035187((n+1)/#)]` -/
def P10943062038879965690.Spec : Prop :=
  ∀ n, P10943062038879965690.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P677801550184086325

`∑{d}[n+1, A053866(#)*A087781((n+1)/#)]`
-/

namespace A035202.P677801550184086325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A087781 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035202.P677801550184086325

namespace A035202

/-- `∑{d}[n+1, A053866(#)*A087781((n+1)/#)]` -/
def P677801550184086325.Spec : Prop :=
  ∀ n, P677801550184086325.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P12632771145604723575

`∑{d}[n+1, A023900(#)*A129303((n+1)/#)]`
-/

namespace A035202.P12632771145604723575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A129303 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035202.P12632771145604723575

namespace A035202

/-- `∑{d}[n+1, A023900(#)*A129303((n+1)/#)]` -/
def P12632771145604723575.Spec : Prop :=
  ∀ n, P12632771145604723575.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P17026517539547922197

`∑{d}[n+1, A087781(#)*A093709((n+1)/#)]`
-/

namespace A035202.P17026517539547922197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087781 d * A093709 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035202.P17026517539547922197

namespace A035202

/-- `∑{d}[n+1, A087781(#)*A093709((n+1)/#)]` -/
def P17026517539547922197.Spec : Prop :=
  ∀ n, P17026517539547922197.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P9668079889329560303

`∑{d}[n+1, A259030(#)*A268361((n+1)/#)]`
-/

namespace A035202.P9668079889329560303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A259030 d * A268361 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035202.P9668079889329560303

namespace A035202

/-- `∑{d}[n+1, A259030(#)*A268361((n+1)/#)]` -/
def P9668079889329560303.Spec : Prop :=
  ∀ n, P9668079889329560303.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P4375159628129436500

`A035187(A005408(A025480(n)))`
-/

namespace A035202.P4375159628129436500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A005408 (A025480 n).toNat).toNat

end

end A035202.P4375159628129436500

namespace A035202

/-- `A035187(A005408(A025480(n)))` -/
def P4375159628129436500.Spec : Prop :=
  ∀ n, P4375159628129436500.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P16406541418166415200

`A035187(A025480(n)+A025480(n)+1)`
-/

namespace A035202.P16406541418166415200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A025480 n + (A025480 n + 1)).toNat

end

end A035202.P16406541418166415200

namespace A035202

/-- `A035187(A025480(n)+A025480(n)+1)` -/
def P16406541418166415200.Spec : Prop :=
  ∀ n, P16406541418166415200.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P17578277853180326572

`A035227(A357872(n+1))`
-/

namespace A035202.P17578277853180326572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035227 (A357872 (n + 1)).toNat

end

end A035202.P17578277853180326572

namespace A035202

/-- `A035227(A357872(n+1))` -/
def P17578277853180326572.Spec : Prop :=
  ∀ n, P17578277853180326572.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P1819842751647842717

`A035187(2*(n+1))+A035187(n+1)`
-/

namespace A035202.P1819842751647842717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (2 * (n + 1)) + A035187 (n + 1)

end

end A035202.P1819842751647842717

namespace A035202

/-- `A035187(2*(n+1))+A035187(n+1)` -/
def P1819842751647842717.Spec : Prop :=
  ∀ n, P1819842751647842717.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P18063906382632818268

`A050999(A091574(n))%5`
-/

namespace A035202.P18063906382632818268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050999 (A091574 n).toNat) 5

end

end A035202.P18063906382632818268

namespace A035202

/-- `A050999(A091574(n))%5` -/
def P18063906382632818268.Spec : Prop :=
  ∀ n, P18063906382632818268.a n = A035202 (n + 1)

end A035202

/-! ## A035202.P5108575770297952166

`A035227(A064614(n+1))`
-/

namespace A035202.P5108575770297952166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035227 (A064614 (n + 1)).toNat

end

end A035202.P5108575770297952166

namespace A035202

/-- `A035227(A064614(n+1))` -/
def P5108575770297952166.Spec : Prop :=
  ∀ n, P5108575770297952166.a n = A035202 (n + 1)

end A035202

/-!
# A035203: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 21.

The programs for A035203, the canonical program `A035203.P12856241678771434086` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035203 has offset 1).

The definition of A035203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035203.P12856241678771434086

`∑{d}[n+1, A322829(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035203

/-- `∑{d}[n+1, A322829(#)]` -/
def P12856241678771434086.Spec : Prop :=
  ∀ n, P12856241678771434086.a n = A035203 (n + 1)

theorem P12856241678771434086.correct : P12856241678771434086.Spec := by
  intro n
  simp only [A035203, Nat.add_sub_cancel]

end A035203

/-! ## A035203.P5214093903879137979

`and(A001845(A349409(n+1)), A035169(n+1))`
-/

namespace A035203.P5214093903879137979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001845 (A349409 (n + 1)).toNat) (A035169 (n + 1))

end

end A035203.P5214093903879137979

namespace A035203

/-- `and(A001845(A349409(n+1)), A035169(n+1))` -/
def P5214093903879137979.Spec : Prop :=
  ∀ n, P5214093903879137979.a n = A035203 (n + 1)

end A035203

/-! ## A035203.P6870062729409853260

`and(A035169(n+1), A120032(n))`
-/

namespace A035203.P6870062729409853260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035169 (n + 1)) (A120032 n)

end

end A035203.P6870062729409853260

namespace A035203

/-- `and(A035169(n+1), A120032(n))` -/
def P6870062729409853260.Spec : Prop :=
  ∀ n, P6870062729409853260.a n = A035203 (n + 1)

end A035203

/-! ## A035203.P16530569665411192853

`and(A035169(n+1), A180403(n+1))`
-/

namespace A035203.P16530569665411192853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035169 (n + 1)) (A180403 (n + 1))

end

end A035203.P16530569665411192853

namespace A035203

/-- `and(A035169(n+1), A180403(n+1))` -/
def P16530569665411192853.Spec : Prop :=
  ∀ n, P16530569665411192853.a n = A035203 (n + 1)

end A035203

/-! ## A035203.P1993910255184897706

`A270641(A323866(n))%A005679(n+1)`
-/

namespace A035203.P1993910255184897706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270641 (A323866 n).toNat) (A005679 (n + 1))

end

end A035203.P1993910255184897706

namespace A035203

/-- `A270641(A323866(n))%A005679(n+1)` -/
def P1993910255184897706.Spec : Prop :=
  ∀ n, P1993910255184897706.a n = A035203 (n + 1)

end A035203

/-!
# A035204: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 22.

The programs for A035204, there is no canonical definition to state claims against.
-/

/-! ## A035204.P1664723489741632427

`A035151(A061898(n+1)%A173700(2*n+5))`
-/

namespace A035204.P1664723489741632427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035151 (Int.tmod (A061898 (n + 1)) (A173700 (2 * n + 5))).toNat

end

end A035204.P1664723489741632427

/-! ## A035204.P5912786586327297441

`A035151(A061898(n+1))%A135146(A088932(n))`
-/

namespace A035204.P5912786586327297441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035151 (A061898 (n + 1)).toNat) (A135146 (A088932 n).toNat)

end

end A035204.P5912786586327297441

/-! ## A035204.P10171176425933751768

`A030373(A343498(floor(n/(xor(n, n+1)+1))+1))`
-/

namespace A035204.P10171176425933751768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (A343498 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat).toNat

end

end A035204.P10171176425933751768

/-! ## A035204.P4684229007339561842

`or(A055641(A007588(n)), A255648(n+1))`
-/

namespace A035204.P4684229007339561842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A007588 n).toNat) (A255648 (n + 1))

end

end A035204.P4684229007339561842

/-! ## A035204.P12912564075091532564

`A035151(A061898(n+1))^A001221(A011782(n))`
-/

namespace A035204.P12912564075091532564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035151 (A061898 (n + 1)).toNat : ℚ) ^ (A001221 (A011782 n).toNat : ℤ)

end

end A035204.P12912564075091532564

/-!
# A035205: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 23.

The programs for A035205, there is no canonical definition to state claims against.
-/

/-! ## A035205.P14474061000405734823

`Δ[A006218(n)]%A114695(A323626(n+1))`
-/

namespace A035205.P14474061000405734823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A114695 (A323626 (n + 1)).toNat)

end

end A035205.P14474061000405734823

/-! ## A035205.P16697949643495547636

`A000005(n+1)%A114695(A323626(n+1))`
-/

namespace A035205.P16697949643495547636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) (A114695 (A323626 (n + 1)).toNat)

end

end A035205.P16697949643495547636

/-! ## A035205.P1840543992450280651

`A359586(n+1)+A014682(A185284(2*n+1))`
-/

namespace A035205.P1840543992450280651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359586 (n + 1) + A014682 (A185284 (2 * n + 1)).toNat

end

end A035205.P1840543992450280651

/-! ## A035205.P11627171487350300031

`A359586(n+1)%A095416(n)`
-/

namespace A035205.P11627171487350300031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359586 (n + 1)) (A095416 n)

end

end A035205.P11627171487350300031

/-!
# A035206: Number of multisets associated with least integer of each prime signature.

The programs for A035206, there is no canonical definition to state claims against.
-/

/-! ## A035206.P7136530203566132672

`A049009(n)/A036038(A028310(n))`
-/

namespace A035206.P7136530203566132672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 n : ℚ) / (A036038 (A028310 n).toNat : ℚ)

end

end A035206.P7136530203566132672

/-! ## A035206.P12709711526672236303

`A049009(n)/A036038(A000007(n)+n)`
-/

namespace A035206.P12709711526672236303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 n : ℚ) / (A036038 (A000007 n + (n : ℤ)).toNat : ℚ)

end

end A035206.P12709711526672236303

/-! ## A035206.P1375895121227414163

`A049009(n)/A036038(A065033(n)+A004526(n))`
-/

namespace A035206.P1375895121227414163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 n : ℚ) / (A036038 (A065033 n + A004526 n).toNat : ℚ)

end

end A035206.P1375895121227414163

/-! ## A035206.P18127700599695141319

`A049009(n)/A036038(A065033(2*n))`
-/

namespace A035206.P18127700599695141319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 n : ℚ) / (A036038 (A065033 (2 * n)).toNat : ℚ)

end

end A035206.P18127700599695141319

/-! ## A035206.P9541926474513279862

`A049009(n)/A036038(A101279(2*n+1))`
-/

namespace A035206.P9541926474513279862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 n : ℚ) / (A036038 (A101279 (2 * n + 1)).toNat : ℚ)

end

end A035206.P9541926474513279862

/-! ## A035206.P17626971847336856953

`A048996(n)*A098546(n)`
-/

namespace A035206.P17626971847336856953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n * A098546 n

end

end A035206.P17626971847336856953

/-! ## A035206.P6564205125681748854

`A178888(n)/A096162(n)`
-/

namespace A035206.P6564205125681748854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178888 n : ℚ) / (A096162 n : ℚ)

end

end A035206.P6564205125681748854

/-! ## A035206.P13769550556063942930

`A130561(n)/A179972(n)`
-/

namespace A035206.P13769550556063942930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130561 n : ℚ) / (A179972 n : ℚ)

end

end A035206.P13769550556063942930

/-! ## A035206.P12522706244250420276

`A049009(n)/A036038(A233583(n+1))`
-/

namespace A035206.P12522706244250420276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 n : ℚ) / (A036038 (A233583 (n + 1)).toNat : ℚ)

end

end A035206.P12522706244250420276

/-! ## A035206.P13066030263546531049

`A049009(n)/A318762(A185974(n))`
-/

namespace A035206.P13066030263546531049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 n : ℚ) / (A318762 (A185974 n).toNat : ℚ)

end

end A035206.P13066030263546531049

/-! ## A035206.P12907847151117568882

`A048996(eq[2*A036043(n), A036042(n)])`
-/

namespace A035206.P12907847151117568882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A035206.P12907847151117568882

/-! ## A035206.P18058964745116959579

`A048996(eq[A036042(n)/2, A036043(n)])`
-/

namespace A035206.P18058964745116959579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036042 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A035206.P18058964745116959579

/-!
# A035207: Coefficients in expansion of Dirichlet series Product_p (1 - (Kronecker(m,p) + 1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = 25.

The programs for A035207, the canonical program `A035207.P10727660904330880989` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035207 has offset 1).

The definition of A035207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035207.P10727660904330880989

`∑{d}[n+1, (#^4)%5]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035207

/-- `∑{d}[n+1, (#^4)%5]` -/
def P10727660904330880989.Spec : Prop :=
  ∀ n, (P10727660904330880989.a n : ℤ) = A035207 (n + 1)

theorem P10727660904330880989.correct : P10727660904330880989.Spec := by
  intro n
  simp only [A035207, Nat.add_sub_cancel]

end A035207

/-! ## A035207.P7467751968222183540

`∑{d}[n+1, A011558(#)]`
-/

namespace A035207.P7467751968222183540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011558 d

end

end A035207.P7467751968222183540

namespace A035207

/-- `∑{d}[n+1, A011558(#)]` -/
def P7467751968222183540.Spec : Prop :=
  ∀ n, P7467751968222183540.a n = A035207 (n + 1)

end A035207

/-! ## A035207.P2382280572007684722

`Δ[A006218(n)]/(val(n+1, 5)+1)`
-/

namespace A035207.P2382280572007684722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (SequenceMachineLib.valuation (n + 1) 5 + 1 : ℚ)

end

end A035207.P2382280572007684722

namespace A035207

/-- `Δ[A006218(n)]/(val(n+1, 5)+1)` -/
def P2382280572007684722.Spec : Prop :=
  ∀ n, P2382280572007684722.a n = (A035207 (n + 1) : ℚ)

end A035207

/-! ## A035207.P8679318571004277185

`A000005(n+1)/(val(n+1, 5)+1)`
-/

namespace A035207.P8679318571004277185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (SequenceMachineLib.valuation (n + 1) 5 + 1 : ℚ)

end

end A035207.P8679318571004277185

namespace A035207

/-- `A000005(n+1)/(val(n+1, 5)+1)` -/
def P8679318571004277185.Spec : Prop :=
  ∀ n, P8679318571004277185.a n = (A035207 (n + 1) : ℚ)

end A035207

/-! ## A035207.P7037795045334005276

`A000005(A132739(n+1))`
-/

namespace A035207.P7037795045334005276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A132739 (n + 1)).toNat

end

end A035207.P7037795045334005276

namespace A035207

/-- `A000005(A132739(n+1))` -/
def P7037795045334005276.Spec : Prop :=
  ∀ n, P7037795045334005276.a n = A035207 (n + 1)

end A035207

/-! ## A035207.P14331063604526745270

`A372785(n+1)-A000005(n+1)`
-/

namespace A035207.P14331063604526745270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372785 (n + 1) - A000005 (n + 1)

end

end A035207.P14331063604526745270

namespace A035207

/-- `A372785(n+1)-A000005(n+1)` -/
def P14331063604526745270.Spec : Prop :=
  ∀ n, P14331063604526745270.a n = A035207 (n + 1)

end A035207

/-! ## A035207.P12675609177381543399

`A000005(n+1)/A055457(n+1)`
-/

namespace A035207.P12675609177381543399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A055457 (n + 1) : ℚ)

end

end A035207.P12675609177381543399

namespace A035207

/-- `A000005(n+1)/A055457(n+1)` -/
def P12675609177381543399.Spec : Prop :=
  ∀ n, P12675609177381543399.a n = (A035207 (n + 1) : ℚ)

end A035207

/-! ## A035207.P6134999993076756636

`A038040(n+1)/A364223(n+1)`
-/

namespace A035207.P6134999993076756636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A364223 (n + 1) : ℚ)

end

end A035207.P6134999993076756636

namespace A035207

/-- `A038040(n+1)/A364223(n+1)` -/
def P6134999993076756636.Spec : Prop :=
  ∀ n, P6134999993076756636.a n = (A035207 (n + 1) : ℚ)

end A035207

/-! ## A035207.P2764972263538470154

`∑{d}[A132739(n+1), #/A132739(#)]`
-/

namespace A035207.P2764972263538470154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A132739 d : ℚ)

end

end A035207.P2764972263538470154

namespace A035207

/-- `∑{d}[A132739(n+1), #/A132739(#)]` -/
def P2764972263538470154.Spec : Prop :=
  ∀ n, P2764972263538470154.a n = (A035207 (n + 1) : ℚ)

end A035207

/-! ## A035207.P8879406082832176901

`A000005(n+1)/(A112765(n+1)+1)`
-/

namespace A035207.P8879406082832176901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A112765 (n + 1) + 1 : ℚ)

end

end A035207.P8879406082832176901

namespace A035207

/-- `A000005(n+1)/(A112765(n+1)+1)` -/
def P8879406082832176901.Spec : Prop :=
  ∀ n, P8879406082832176901.a n = (A035207 (n + 1) : ℚ)

end A035207

/-! ## A035207.P10094144340329401523

`A000005(5*(n+1))-A000005(n+1)`
-/

namespace A035207.P10094144340329401523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 1)) - A000005 (n + 1)

end

end A035207.P10094144340329401523

namespace A035207

/-- `A000005(5*(n+1))-A000005(n+1)` -/
def P10094144340329401523.Spec : Prop :=
  ∀ n, P10094144340329401523.a n = A035207 (n + 1)

end A035207

/-! ## A035207.P6402169953521741408

`∑{d}[n+1, A072078(#)*A162289((n+1)/#)]`
-/

namespace A035207.P6402169953521741408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072078 d * A162289 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035207.P6402169953521741408

namespace A035207

/-- `∑{d}[n+1, A072078(#)*A162289((n+1)/#)]` -/
def P6402169953521741408.Spec : Prop :=
  ∀ n, P6402169953521741408.a n = A035207 (n + 1)

end A035207

/-! ## A035207.P17611746633740439996

`∑{d}[n+1, A034444(#)*A214293((n+1)/#)]`
-/

namespace A035207.P17611746633740439996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A214293 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035207.P17611746633740439996

namespace A035207

/-- `∑{d}[n+1, A034444(#)*A214293((n+1)/#)]` -/
def P17611746633740439996.Spec : Prop :=
  ∀ n, P17611746633740439996.a n = A035207 (n + 1)

end A035207

/-! ## A035207.P16784027389372520225

`∑{d}[n+1, A063453(#)*A226333((n+1)/#)]`
-/

namespace A035207.P16784027389372520225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063453 d * A226333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035207.P16784027389372520225

namespace A035207

/-- `∑{d}[n+1, A063453(#)*A226333((n+1)/#)]` -/
def P16784027389372520225.Spec : Prop :=
  ∀ n, P16784027389372520225.a n = A035207 (n + 1)

end A035207

/-! ## A035207.P1234361910186197282

`∑{d}[n+1, A023900(#)*A285896((n+1)/#)]`
-/

namespace A035207.P1234361910186197282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A285896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035207.P1234361910186197282

namespace A035207

/-- `∑{d}[n+1, A023900(#)*A285896((n+1)/#)]` -/
def P1234361910186197282.Spec : Prop :=
  ∀ n, P1234361910186197282.a n = A035207 (n + 1)

end A035207

/-! ## A035207.P17790396249186164020

`∑{d}[n+1, A053694(#-1)*A374366((n+1)/#)]`
-/

namespace A035207.P17790396249186164020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053694 (d - 1) * A374366 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035207.P17790396249186164020

namespace A035207

/-- `∑{d}[n+1, A053694(#-1)*A374366((n+1)/#)]` -/
def P17790396249186164020.Spec : Prop :=
  ∀ n, P17790396249186164020.a n = A035207 (n + 1)

end A035207

/-! ## A035207.P17341287076254022442

`gcd(A000005(2*(2*n+1)+n+3), A000005(n+1))`
-/

namespace A035207.P17341287076254022442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (2 * (2 * n + 1) + (n + 3))) (A000005 (n + 1))

end

end A035207.P17341287076254022442

namespace A035207

/-- `gcd(A000005(2*(2*n+1)+n+3), A000005(n+1))` -/
def P17341287076254022442.Spec : Prop :=
  ∀ n, (P17341287076254022442.a n : ℤ) = A035207 (n + 1)

end A035207

/-! ## A035207.P16531834009674517985

`A001227(n+1)+A372785(n+1)-A099777(n+1)`
-/

namespace A035207.P16531834009674517985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A372785 (n + 1) - A099777 (n + 1))

end

end A035207.P16531834009674517985

namespace A035207

/-- `A001227(n+1)+A372785(n+1)-A099777(n+1)` -/
def P16531834009674517985.Spec : Prop :=
  ∀ n, P16531834009674517985.a n = A035207 (n + 1)

end A035207

/-! ## A035207.P4885810577859313015

`A000005(n+1)*A072078(n+1)/A355583(n+1)`
-/

namespace A035207.P4885810577859313015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A072078 (n + 1) : ℚ) / (A355583 (n + 1) : ℚ)

end

end A035207.P4885810577859313015

namespace A035207

/-- `A000005(n+1)*A072078(n+1)/A355583(n+1)` -/
def P4885810577859313015.Spec : Prop :=
  ∀ n, P4885810577859313015.a n = (A035207 (n + 1) : ℚ)

end A035207

/-! ## A035207.P3258185654568727919

`∑{d}[n+1, A163812(#)²]`
-/

namespace A035207.P3258185654568727919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A163812 d ^ 2

end

end A035207.P3258185654568727919

namespace A035207

/-- `∑{d}[n+1, A163812(#)²]` -/
def P3258185654568727919.Spec : Prop :=
  ∀ n, P3258185654568727919.a n = A035207 (n + 1)

end A035207

/-!
# A035208: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 26.

The programs for A035208, there is no canonical definition to state claims against.
-/

/-! ## A035208.P11727096380149120457

`A285724(A051000(n+1))%4`
-/

namespace A035208.P11727096380149120457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285724 (A051000 (n + 1)).toNat) 4

end

end A035208.P11727096380149120457

/-! ## A035208.P14590239789740454634

`A168214(∑{d}[n+1, #*#%2])%3`
-/

namespace A035208.P14590239789740454634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168214 (∑ d ∈ Nat.divisors (f1 n), d * (d % 2))) 3

end

end A035208.P14590239789740454634

/-! ## A035208.P14149605045411947685

`A168214(A000593(n+1))%3`
-/

namespace A035208.P14149605045411947685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168214 (A000593 (n + 1)).toNat) 3

end

end A035208.P14149605045411947685

/-! ## A035208.P3452549542641132616

`A306950(A192066(n+1))%3`
-/

namespace A035208.P3452549542641132616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306950 (A192066 (n + 1)).toNat) 3

end

end A035208.P3452549542641132616

/-! ## A035208.P7803328280676407880

`gcd(A035144(A020473(n+1)), A035144(n+1))`
-/

namespace A035208.P7803328280676407880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035144 (A020473 (n + 1)).toNat) (A035144 (n + 1))

end

end A035208.P7803328280676407880

/-!
# A035210: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 28.

The programs for A035210, the canonical program `A035210.P6951438946819583816` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035210 has offset 1).

The definition of A035210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035210.P393275414644430090

`∑{d}[n+1, A390615(#)]`
-/

namespace A035210.P393275414644430090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A390615 d

end

end A035210.P393275414644430090

namespace A035210

/-- `∑{d}[n+1, A390615(#)]` -/
def P393275414644430090.Spec : Prop :=
  ∀ n, P393275414644430090.a n = A035210 (n + 1)

end A035210

/-! ## A035210.P5518013098322979203

`A035189((n+1)/2^val(n+1, 2))`
-/

namespace A035210.P5518013098322979203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A035210.P5518013098322979203

namespace A035210

/-- `A035189((n+1)/2^val(n+1, 2))` -/
def P5518013098322979203.Spec : Prop :=
  ∀ n, P5518013098322979203.a n = A035210 (n + 1)

end A035210

/-! ## A035210.P6951438946819583816

`A035189(A000265(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A035210

/-- `A035189(A000265(n+1))` -/
def P6951438946819583816.Spec : Prop :=
  ∀ n, P6951438946819583816.a n = A035210 (n + 1)

theorem P6951438946819583816.correct : P6951438946819583816.Spec := by
  intro n
  simp only [A035210, Nat.add_sub_cancel]

end A035210

/-! ## A035210.P842047487587898897

`A035189(A153733(n)+1)`
-/

namespace A035210.P842047487587898897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (A153733 n + 1).toNat

end

end A035210.P842047487587898897

namespace A035210

/-- `A035189(A153733(n)+1)` -/
def P842047487587898897.Spec : Prop :=
  ∀ n, P842047487587898897.a n = A035210 (n + 1)

end A035210

/-! ## A035210.P1864648942272544997

`A035189(or(1, A153733(n)))`
-/

namespace A035210.P1864648942272544997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (Int.lor 1 (A153733 n)).toNat

end

end A035210.P1864648942272544997

namespace A035210

/-- `A035189(or(1, A153733(n)))` -/
def P1864648942272544997.Spec : Prop :=
  ∀ n, P1864648942272544997.a n = A035210 (n + 1)

end A035210

/-! ## A035210.P1046403344183476354

`A035189(xor(1, A153733(n)))`
-/

namespace A035210.P1046403344183476354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (Int.xor 1 (A153733 n)).toNat

end

end A035210.P1046403344183476354

namespace A035210

/-- `A035189(xor(1, A153733(n)))` -/
def P1046403344183476354.Spec : Prop :=
  ∀ n, P1046403344183476354.a n = A035210 (n + 1)

end A035210

/-! ## A035210.P13237901812642071536

`A035189(n+1)/Δ[A005187(n)]`
-/

namespace A035210.P13237901812642071536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035189 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A035210.P13237901812642071536

namespace A035210

/-- `A035189(n+1)/Δ[A005187(n)]` -/
def P13237901812642071536.Spec : Prop :=
  ∀ n, P13237901812642071536.a n = (A035210 (n + 1) : ℚ)

end A035210

/-! ## A035210.P2258892436043871898

`A035189(n+1)/A001511(n+1)`
-/

namespace A035210.P2258892436043871898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035189 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A035210.P2258892436043871898

namespace A035210

/-- `A035189(n+1)/A001511(n+1)` -/
def P2258892436043871898.Spec : Prop :=
  ∀ n, P2258892436043871898.a n = (A035210 (n + 1) : ℚ)

end A035210

/-! ## A035210.P8129344334635928189

`A035189((n+1)/A006519(n+1))`
-/

namespace A035210.P8129344334635928189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A035210.P8129344334635928189

namespace A035210

/-- `A035189((n+1)/A006519(n+1))` -/
def P8129344334635928189.Spec : Prop :=
  ∀ n, P8129344334635928189.a n = A035210 (n + 1)

end A035210

/-! ## A035210.P12760472036906763534

`A035189(n+1)/(A007814(n+1)+1)`
-/

namespace A035210.P12760472036906763534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035189 (n + 1) : ℚ) / (A007814 (n + 1) + 1 : ℚ)

end

end A035210.P12760472036906763534

namespace A035210

/-- `A035189(n+1)/(A007814(n+1)+1)` -/
def P12760472036906763534.Spec : Prop :=
  ∀ n, P12760472036906763534.a n = (A035210 (n + 1) : ℚ)

end A035210

/-! ## A035210.P13419590041674995969

`∑{d}[n+1, A035189(#)*A154955((n+1)/#)]`
-/

namespace A035210.P13419590041674995969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035189 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035210.P13419590041674995969

namespace A035210

/-- `∑{d}[n+1, A035189(#)*A154955((n+1)/#)]` -/
def P13419590041674995969.Spec : Prop :=
  ∀ n, P13419590041674995969.a n = A035210 (n + 1)

end A035210

/-! ## A035210.P18163897443520496190

`∑{d}[n+1, A059841(#-1)*A089509((n+1)/#)]`
-/

namespace A035210.P18163897443520496190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A089509 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035210.P18163897443520496190

namespace A035210

/-- `∑{d}[n+1, A059841(#-1)*A089509((n+1)/#)]` -/
def P18163897443520496190.Spec : Prop :=
  ∀ n, P18163897443520496190.a n = A035210 (n + 1)

end A035210

/-! ## A035210.P16395020810289074669

`A035189(2*(n+1))-A035189(n+1)`
-/

namespace A035210.P16395020810289074669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (2 * (n + 1)) - A035189 (n + 1)

end

end A035210.P16395020810289074669

namespace A035210

/-- `A035189(2*(n+1))-A035189(n+1)` -/
def P16395020810289074669.Spec : Prop :=
  ∀ n, P16395020810289074669.a n = A035210 (n + 1)

end A035210

/-!
# A035211: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 29.

The programs for A035211, the canonical program `A035211.P5155710519321875222` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035211 has offset 1).

The definition of A035211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035211.P5155710519321875222

`∑{d}[n+1, A011587(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035211

/-- `∑{d}[n+1, A011587(#)]` -/
def P5155710519321875222.Spec : Prop :=
  ∀ n, P5155710519321875222.a n = A035211 (n + 1)

theorem P5155710519321875222.correct : P5155710519321875222.Spec := by
  intro n
  simp only [A035211, Nat.add_sub_cancel]

end A035211

/-! ## A035211.P10193644833787801670

`A352558(n+1)-A352558(A279625(n))`
-/

namespace A035211.P10193644833787801670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352558 (n + 1) - A352558 (A279625 n).toNat

end

end A035211.P10193644833787801670

namespace A035211

/-- `A352558(n+1)-A352558(A279625(n))` -/
def P10193644833787801670.Spec : Prop :=
  ∀ n, P10193644833787801670.a n = A035211 (n + 1)

end A035211

/-! ## A035211.P13438708670907220553

`and(∏{e}[n+1, #+1], A211557(A352558(n+1)!))`
-/

namespace A035211.P13438708670907220553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A211557 (Nat.factorial (A352558 (n + 1)).toNat))

end

end A035211.P13438708670907220553

namespace A035211

/-- `and(∏{e}[n+1, #+1], A211557(A352558(n+1)!))` -/
def P13438708670907220553.Spec : Prop :=
  ∀ n, P13438708670907220553.a n = A035211 (n + 1)

end A035211

/-! ## A035211.P17220249589473974837

`and(A000005(n+1), A333769(A182181(n+1)))`
-/

namespace A035211.P17220249589473974837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (n + 1)) (A333769 (A182181 (n + 1)).toNat)

end

end A035211.P17220249589473974837

namespace A035211

/-- `and(A000005(n+1), A333769(A182181(n+1)))` -/
def P17220249589473974837.Spec : Prop :=
  ∀ n, P17220249589473974837.a n = A035211 (n + 1)

end A035211

/-! ## A035211.P2078461490755009207

`and(A000002(A319056(n+2)), A000005(n+1))`
-/

namespace A035211.P2078461490755009207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000002 (A319056 (n + 2)).toNat) (A000005 (n + 1))

end

end A035211.P2078461490755009207

namespace A035211

/-- `and(A000002(A319056(n+2)), A000005(n+1))` -/
def P2078461490755009207.Spec : Prop :=
  ∀ n, P2078461490755009207.a n = A035211 (n + 1)

end A035211

/-!
# A035212: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 30.

The programs for A035212, there is no canonical definition to state claims against.
-/

/-! ## A035212.P8086886450776055223

`A087787(A323695(A122777(n+1)²))`
-/

namespace A035212.P8086886450776055223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (A323695 (A122777 (n + 1) ^ 2).toNat).toNat

end

end A035212.P8086886450776055223

/-! ## A035212.P4559926919521805654

`A143582(A214685(n+1))%3`
-/

namespace A035212.P4559926919521805654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143582 (A214685 (n + 1)).toNat) 3

end

end A035212.P4559926919521805654

/-! ## A035212.P16439176282735851538

`A139063(A006530(2*(n+1)))%3`
-/

namespace A035212.P16439176282735851538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139063 (A006530 (2 * (n + 1))).toNat) 3

end

end A035212.P16439176282735851538

/-! ## A035212.P6685613231278915400

`C(2, A057021(A355532(3*(n+1))))`
-/

namespace A035212.P6685613231278915400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A057021 (A355532 (3 * (n + 1))).toNat).toNat

end

end A035212.P6685613231278915400

/-! ## A035212.P2790707999940508666

`and(A159004(n+1), A366643(n+1))`
-/

namespace A035212.P2790707999940508666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159004 (n + 1)) (A366643 (n + 1))

end

end A035212.P2790707999940508666

/-!
# A035213: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 31.

The programs for A035213, there is no canonical definition to state claims against.
-/

/-! ## A035213.P1211685880118231988

`lcm(A000005(A257538(n+1)), A035146(n+1))`
-/

namespace A035213.P1211685880118231988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A257538 (n + 1)).toNat) (A035146 (n + 1))

end

end A035213.P1211685880118231988

/-! ## A035213.P17551718712176836631

`and(∏{e}[n+1, #+1], A074714(A006530(n+1)))`
-/

namespace A035213.P17551718712176836631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A074714 (A006530 (n + 1)).toNat)

end

end A035213.P17551718712176836631

/-! ## A035213.P6589342490947124434

`A000005(n+1)*A373851(A002843(n))`
-/

namespace A035213.P6589342490947124434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A373851 (A002843 n).toNat

end

end A035213.P6589342490947124434

/-! ## A035213.P3816585582493069365

`C(A035161(A257538(n+1)), A331927(n))`
-/

namespace A035213.P3816585582493069365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035161 (A257538 (n + 1)).toNat).toNat (A331927 n).toNat

end

end A035213.P3816585582493069365

/-! ## A035213.P2403122939084714895

`A035161(or(A064988(n+1), A172486(n)))`
-/

namespace A035213.P2403122939084714895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035161 (Int.lor (A064988 (n + 1)) (A172486 n)).toNat

end

end A035213.P2403122939084714895

/-!
# A035214: 2 followed by a run of n 1's.

The programs for A035214, the canonical program `A035214.P16301326444238280714` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035214 has offset 0).

The definition of A035214 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035214.P4200713985070033183

`floor((3-cos(π*sqrt(8*n+1)))/2)`
-/

namespace A035214.P4200713985070033183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 - Real.cos (Real.pi * Real.sqrt (8 * n + 1 : ℝ))) / 2⌋

end

end A035214.P4200713985070033183

namespace A035214

/-- `floor((3-cos(π*sqrt(8*n+1)))/2)` -/
def P4200713985070033183.Spec : Prop :=
  ∀ n, P4200713985070033183.a n = A035214 n

end A035214

/-! ## A035214.P16301326444238280714

`A010054(n)+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035214

/-- `A010054(n)+1` -/
def P16301326444238280714.Spec : Prop :=
  ∀ n, P16301326444238280714.a n = A035214 n

theorem P16301326444238280714.correct : P16301326444238280714.Spec := by
  intro n
  simp only [A035214]

end A035214

/-! ## A035214.P5137580168943000263

`char[∑[n]]+1`
-/

namespace A035214.P5137580168943000263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A035214.P5137580168943000263

namespace A035214

/-- `char[∑[n]]+1` -/
def P5137580168943000263.Spec : Prop :=
  ∀ n, (P5137580168943000263.a n : ℤ) = A035214 n

end A035214

/-! ## A035214.P1235668657582889482

`ceil(cosh(char[∑[n]]))`
-/

namespace A035214.P1235668657582889482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A035214.P1235668657582889482

namespace A035214

/-- `ceil(cosh(char[∑[n]]))` -/
def P1235668657582889482.Spec : Prop :=
  ∀ n, P1235668657582889482.a n = A035214 n

end A035214

/-! ## A035214.P14145090517302073391

`round(cosh(char[∑[n]]))`
-/

namespace A035214.P14145090517302073391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A035214.P14145090517302073391

namespace A035214

/-- `round(cosh(char[∑[n]]))` -/
def P14145090517302073391.Spec : Prop :=
  ∀ n, P14145090517302073391.a n = A035214 n

end A035214

/-! ## A035214.P8366259352270558889

`(2*char[∑[n]])!`
-/

namespace A035214.P8366259352270558889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * (if ∃ j, f1 j = n then 1 else 0))

end

end A035214.P8366259352270558889

namespace A035214

/-- `(2*char[∑[n]])!` -/
def P8366259352270558889.Spec : Prop :=
  ∀ n, (P8366259352270558889.a n : ℤ) = A035214 n

end A035214

/-! ## A035214.P1056605848623941567

`dr(or(10, char[∑[n]]))`
-/

namespace A035214.P1056605848623941567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.lor 10 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A035214.P1056605848623941567

namespace A035214

/-- `dr(or(10, char[∑[n]]))` -/
def P1056605848623941567.Spec : Prop :=
  ∀ n, (P1056605848623941567.a n : ℤ) = A035214 n

end A035214

/-! ## A035214.P14464313229138743783

`dr(xor(10, char[∑[n]]))`
-/

namespace A035214.P14464313229138743783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.xor 10 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A035214.P14464313229138743783

namespace A035214

/-- `dr(xor(10, char[∑[n]]))` -/
def P14464313229138743783.Spec : Prop :=
  ∀ n, (P14464313229138743783.a n : ℤ) = A035214 n

end A035214

/-! ## A035214.P13145783380902655626

`floor(exp(sin(char[∑[n]])))`
-/

namespace A035214.P13145783380902655626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌋

end

end A035214.P13145783380902655626

namespace A035214

/-- `floor(exp(sin(char[∑[n]])))` -/
def P13145783380902655626.Spec : Prop :=
  ∀ n, P13145783380902655626.a n = A035214 n

end A035214

/-! ## A035214.P9793621773609138993

`floor(cosh(char[∑[n]])²)`
-/

namespace A035214.P9793621773609138993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) ^ 2⌋

end

end A035214.P9793621773609138993

namespace A035214

/-- `floor(cosh(char[∑[n]])²)` -/
def P9793621773609138993.Spec : Prop :=
  ∀ n, P9793621773609138993.a n = A035214 n

end A035214

/-! ## A035214.P4682848623797627232

`round(exp(sin(char[∑[n]])))`
-/

namespace A035214.P4682848623797627232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A035214.P4682848623797627232

namespace A035214

/-- `round(exp(sin(char[∑[n]])))` -/
def P4682848623797627232.Spec : Prop :=
  ∀ n, P4682848623797627232.a n = A035214 n

end A035214

/-! ## A035214.P7763402090850319138

`floor(exp(atan(char[∑[n]])))`
-/

namespace A035214.P7763402090850319138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌋

end

end A035214.P7763402090850319138

namespace A035214

/-- `floor(exp(atan(char[∑[n]])))` -/
def P7763402090850319138.Spec : Prop :=
  ∀ n, P7763402090850319138.a n = A035214 n

end A035214

/-! ## A035214.P9732080984442753382

`round(exp(atan(char[∑[n]])))`
-/

namespace A035214.P9732080984442753382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A035214.P9732080984442753382

namespace A035214

/-- `round(exp(atan(char[∑[n]])))` -/
def P9732080984442753382.Spec : Prop :=
  ∀ n, P9732080984442753382.a n = A035214 n

end A035214

/-! ## A035214.P17912367344303760685

`floor(exp(tanh(char[∑[n]])))`
-/

namespace A035214.P17912367344303760685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌋

end

end A035214.P17912367344303760685

namespace A035214

/-- `floor(exp(tanh(char[∑[n]])))` -/
def P17912367344303760685.Spec : Prop :=
  ∀ n, P17912367344303760685.a n = A035214 n

end A035214

/-! ## A035214.P8694032330381967800

`round(exp(tanh(char[∑[n]])))`
-/

namespace A035214.P8694032330381967800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A035214.P8694032330381967800

namespace A035214

/-- `round(exp(tanh(char[∑[n]])))` -/
def P8694032330381967800.Spec : Prop :=
  ∀ n, P8694032330381967800.a n = A035214 n

end A035214

/-! ## A035214.P8164105015900384855

`ceil(acot(char[comp[∑[n]]]))`
-/

namespace A035214.P8164105015900384855
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A035214.P8164105015900384855

namespace A035214

/-- `ceil(acot(char[comp[∑[n]]]))` -/
def P8164105015900384855.Spec : Prop :=
  ∀ n, P8164105015900384855.a n = A035214 n

end A035214

/-! ## A035214.P9245815862349200256

`round(acot(char[comp[∑[n]]]))`
-/

namespace A035214.P9245815862349200256
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A035214.P9245815862349200256

namespace A035214

/-- `round(acot(char[comp[∑[n]]]))` -/
def P9245815862349200256.Spec : Prop :=
  ∀ n, P9245815862349200256.a n = A035214 n

end A035214

/-! ## A035214.P10671558717819376113

`floor(cosh(tan(char[∑[n]])))`
-/

namespace A035214.P10671558717819376113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌋

end

end A035214.P10671558717819376113

namespace A035214

/-- `floor(cosh(tan(char[∑[n]])))` -/
def P10671558717819376113.Spec : Prop :=
  ∀ n, P10671558717819376113.a n = A035214 n

end A035214

/-! ## A035214.P5052574115967615948

`ceil(cot(cos(char[∑[n]])))`
-/

namespace A035214.P5052574115967615948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A035214.P5052574115967615948

namespace A035214

/-- `ceil(cot(cos(char[∑[n]])))` -/
def P5052574115967615948.Spec : Prop :=
  ∀ n, P5052574115967615948.a n = A035214 n

end A035214

/-! ## A035214.P12920883848307196276

`floor(cosh(asin(char[∑[n]])))`
-/

namespace A035214.P12920883848307196276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌋

end

end A035214.P12920883848307196276

namespace A035214

/-- `floor(cosh(asin(char[∑[n]])))` -/
def P12920883848307196276.Spec : Prop :=
  ∀ n, P12920883848307196276.a n = A035214 n

end A035214

/-!
# A035215: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 33.

The programs for A035215, the canonical program `A035215.P18060281936179550698` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035215 has offset 1).

The definition of A035215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035215.P18060281936179550698

`∑{d}[n+1, A391502(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035215

/-- `∑{d}[n+1, A391502(#)]` -/
def P18060281936179550698.Spec : Prop :=
  ∀ n, P18060281936179550698.a n = A035215 (n + 1)

theorem P18060281936179550698.correct : P18060281936179550698.Spec := by
  intro n
  simp only [A035215, Nat.add_sub_cancel]

end A035215

/-! ## A035215.P8141365788772642534

`A035157(n+1)*A136522(A002778(n+1))`
-/

namespace A035215.P8141365788772642534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035157 (n + 1) * A136522 (A002778 (n + 1)).toNat

end

end A035215.P8141365788772642534

namespace A035215

/-- `A035157(n+1)*A136522(A002778(n+1))` -/
def P8141365788772642534.Spec : Prop :=
  ∀ n, P8141365788772642534.a n = A035215 (n + 1)

end A035215

/-! ## A035215.P145177442431343690

`A035157(n+1)*A267525(A104014(n+1))`
-/

namespace A035215.P145177442431343690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035157 (n + 1) * A267525 (A104014 (n + 1)).toNat

end

end A035215.P145177442431343690

namespace A035215

/-- `A035157(n+1)*A267525(A104014(n+1))` -/
def P145177442431343690.Spec : Prop :=
  ∀ n, P145177442431343690.a n = A035215 (n + 1)

end A035215

/-! ## A035215.P12894666858582222998

`and(A035157(n+1), A349294(2*n+1))`
-/

namespace A035215.P12894666858582222998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035157 (n + 1)) (A349294 (2 * n + 1))

end

end A035215.P12894666858582222998

namespace A035215

/-- `and(A035157(n+1), A349294(2*n+1))` -/
def P12894666858582222998.Spec : Prop :=
  ∀ n, P12894666858582222998.a n = A035215 (n + 1)

end A035215

/-! ## A035215.P3322059895829593623

`A035157(n+1)%A242104(A287001(n+1))`
-/

namespace A035215.P3322059895829593623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035157 (n + 1)) (A242104 (A287001 (n + 1)).toNat)

end

end A035215.P3322059895829593623

namespace A035215

/-- `A035157(n+1)%A242104(A287001(n+1))` -/
def P3322059895829593623.Spec : Prop :=
  ∀ n, P3322059895829593623.a n = A035215 (n + 1)

end A035215

/-!
# A035216: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 34.

The programs for A035216, there is no canonical definition to state claims against.
-/

/-! ## A035216.P14046244883489231097

`A175337(A228128(A107235(n)))+A035146(n+1)`
-/

namespace A035216.P14046244883489231097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175337 (A228128 (A107235 n).toNat).toNat + A035146 (n + 1)

end

end A035216.P14046244883489231097

/-! ## A035216.P8153887760819322420

`A083893(A185341(n+1))+A035146(n+1)`
-/

namespace A035216.P8153887760819322420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (A185341 (n + 1)).toNat + A035146 (n + 1)

end

end A035216.P8153887760819322420

/-! ## A035216.P5484739521587485664

`A035152(A072026(n+1))%p?[A107235(n)]`
-/

namespace A035216.P5484739521587485664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035152 (A072026 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A035216.P5484739521587485664

/-! ## A035216.P18311403504360953195

`A035221(A072087(n+1))`
-/

namespace A035216.P18311403504360953195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035221 (A072087 (n + 1)).toNat

end

end A035216.P18311403504360953195

/-! ## A035216.P9484840559314229251

`A035152(A325709(n+1))`
-/

namespace A035216.P9484840559314229251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035152 (A325709 (n + 1)).toNat

end

end A035216.P9484840559314229251

/-!
# A035217: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 35.

The programs for A035217, there is no canonical definition to state claims against.
-/

/-! ## A035217.P7792692746095641794

`C(floor(n^(1/3)), A318458(n+1)+A234434(3*(n+2)))`
-/

namespace A035217.P7792692746095641794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋.toNat (A318458 (n + 1) + A234434 (3 * (n + 2))).toNat

end

end A035217.P7792692746095641794

/-! ## A035217.P2169663159244264515

`A001221(gcd(A002530(n), A078769(n)))`
-/

namespace A035217.P2169663159244264515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A002530 n) (A078769 n))

end

end A035217.P2169663159244264515

/-! ## A035217.P17559984697291769841

`A119270(A275490(n+2))%A040198(n)`
-/

namespace A035217.P17559984697291769841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119270 (A275490 (n + 2)).toNat) (A040198 n)

end

end A035217.P17559984697291769841

/-! ## A035217.P8418119914030527113

`(A001511(A000048(n))+A000096(n))%3`
-/

namespace A035217.P8418119914030527113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001511 (A000048 n).toNat + A000096 n) 3

end

end A035217.P8418119914030527113

/-! ## A035217.P999141948646173957

`and(A136868(A323748(n+2)), A138107(n))`
-/

namespace A035217.P999141948646173957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136868 (A323748 (n + 2)).toNat) (A138107 n)

end

end A035217.P999141948646173957

/-!
# A035218: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 36.

The programs for A035218, the canonical program `A035218.P251444375763395184` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035218 has offset 1).

The definition of A035218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035218.P14197947234963299366

`A279060(n+1)+A319995(n+1)`
-/

namespace A035218.P14197947234963299366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (n + 1) + A319995 (n + 1)

end

end A035218.P14197947234963299366

namespace A035218

/-- `A279060(n+1)+A319995(n+1)` -/
def P14197947234963299366.Spec : Prop :=
  ∀ n, P14197947234963299366.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P4255779639662018457

`A320015(2*(n+1))`
-/

namespace A035218.P4255779639662018457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 (2 * (n + 1))

end

end A035218.P4255779639662018457

namespace A035218

/-- `A320015(2*(n+1))` -/
def P4255779639662018457.Spec : Prop :=
  ∀ n, P4255779639662018457.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P17843570124499809456

`∑{d}[n+1, A354354(#)]`
-/

namespace A035218.P17843570124499809456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A354354 d

end

end A035218.P17843570124499809456

namespace A035218

/-- `∑{d}[n+1, A354354(#)]` -/
def P17843570124499809456.Spec : Prop :=
  ∀ n, P17843570124499809456.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P251444375763395184

`∑{d}[n+1, A232991(#-1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035218

/-- `∑{d}[n+1, A232991(#-1)]` -/
def P251444375763395184.Spec : Prop :=
  ∀ n, P251444375763395184.a n = A035218 (n + 1)

theorem P251444375763395184.correct : P251444375763395184.Spec := by
  intro n
  simp only [A035218, Nat.add_sub_cancel]

end A035218

/-! ## A035218.P9365452153533226266

`∑{d}[A064989(n+1), and(1, #)]`
-/

namespace A035218.P9365452153533226266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d

end

end A035218.P9365452153533226266

namespace A035218

/-- `∑{d}[A064989(n+1), and(1, #)]` -/
def P9365452153533226266.Spec : Prop :=
  ∀ n, (P9365452153533226266.a n : ℤ) = A035218 (n + 1)

end A035218

/-! ## A035218.P6993400481208836047

`A035191((n+1)/2^val(n+1, 2))`
-/

namespace A035218.P6993400481208836047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A035218.P6993400481208836047

namespace A035218

/-- `A035191((n+1)/2^val(n+1, 2))` -/
def P6993400481208836047.Spec : Prop :=
  ∀ n, P6993400481208836047.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P4023419795072127043

`A001227((n+1)/3^val(n+1, 3))`
-/

namespace A035218.P4023419795072127043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A035218.P4023419795072127043

namespace A035218

/-- `A001227((n+1)/3^val(n+1, 3))` -/
def P4023419795072127043.Spec : Prop :=
  ∀ n, P4023419795072127043.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P11748177106418426465

`A320107((n+1)/and(n+1, -(n+1)))`
-/

namespace A035218.P11748177106418426465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A035218.P11748177106418426465

namespace A035218

/-- `A320107((n+1)/and(n+1, -(n+1)))` -/
def P11748177106418426465.Spec : Prop :=
  ∀ n, P11748177106418426465.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P13587332213336724874

`gcd(A000005(3*(n+1)/and(n+1, -(n+1))), ∑{d}[n+1, #%2])`
-/

namespace A035218.P13587332213336724874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))).toNat) ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A035218.P13587332213336724874

namespace A035218

/-- `gcd(A000005(3*(n+1)/and(n+1, -(n+1))), ∑{d}[n+1, #%2])` -/
def P13587332213336724874.Spec : Prop :=
  ∀ n, (P13587332213336724874.a n : ℤ) = A035218 (n + 1)

end A035218

/-! ## A035218.P5424429222103272668

`A000005(gcd((n+1)/3^val(n+1, 3), (n+1)/2^val(n+1, 2)))`
-/

namespace A035218.P5424429222103272668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))))

end

end A035218.P5424429222103272668

namespace A035218

/-- `A000005(gcd((n+1)/3^val(n+1, 3), (n+1)/2^val(n+1, 2)))` -/
def P5424429222103272668.Spec : Prop :=
  ∀ n, P5424429222103272668.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P14713765222286598560

`A000005(3*(n+1)/and(n+1, -(n+1))/3^(val(n+1, 3)+1))`
-/

namespace A035218.P14713765222286598560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)) / (3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℚ))).toNat

end

end A035218.P14713765222286598560

namespace A035218

/-- `A000005(3*(n+1)/and(n+1, -(n+1))/3^(val(n+1, 3)+1))` -/
def P14713765222286598560.Spec : Prop :=
  ∀ n, P14713765222286598560.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P16926122402729524186

`A035191(A000265(n+1))`
-/

namespace A035218.P16926122402729524186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (A000265 (n + 1)).toNat

end

end A035218.P16926122402729524186

namespace A035218

/-- `A035191(A000265(n+1))` -/
def P16926122402729524186.Spec : Prop :=
  ∀ n, P16926122402729524186.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P7052868154351779432

`A001227(A038502(n+1))`
-/

namespace A035218.P7052868154351779432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A038502 (n + 1)).toNat

end

end A035218.P7052868154351779432

namespace A035218

/-- `A001227(A038502(n+1))` -/
def P7052868154351779432.Spec : Prop :=
  ∀ n, P7052868154351779432.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P13352133481720556204

`A000005(A065330(n+1))`
-/

namespace A035218.P13352133481720556204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065330 (n + 1)).toNat

end

end A035218.P13352133481720556204

namespace A035218

/-- `A000005(A065330(n+1))` -/
def P13352133481720556204.Spec : Prop :=
  ∀ n, P13352133481720556204.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P14812703778138714321

`A001227(A064989(n+1))`
-/

namespace A035218.P14812703778138714321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A064989 (n + 1)).toNat

end

end A035218.P14812703778138714321

namespace A035218

/-- `A001227(A064989(n+1))` -/
def P14812703778138714321.Spec : Prop :=
  ∀ n, P14812703778138714321.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P1343552591582087088

`A001227(A079707(n+1))`
-/

namespace A035218.P1343552591582087088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A079707 (n + 1)).toNat

end

end A035218.P1343552591582087088

namespace A035218

/-- `A001227(A079707(n+1))` -/
def P1343552591582087088.Spec : Prop :=
  ∀ n, P1343552591582087088.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P14881694148069114586

`A366441(A126760(n+1))`
-/

namespace A035218.P14881694148069114586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366441 (A126760 (n + 1)).toNat

end

end A035218.P14881694148069114586

namespace A035218

/-- `A366441(A126760(n+1))` -/
def P14881694148069114586.Spec : Prop :=
  ∀ n, P14881694148069114586.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P8699037524681655353

`A320107(A000265(2*(n+1)))`
-/

namespace A035218.P8699037524681655353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320107 (A000265 (2 * (n + 1))).toNat

end

end A035218.P8699037524681655353

namespace A035218

/-- `A320107(A000265(2*(n+1)))` -/
def P8699037524681655353.Spec : Prop :=
  ∀ n, P8699037524681655353.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P14394989328393418176

`A320015(n+1)+A232991(n)`
-/

namespace A035218.P14394989328393418176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 (n + 1) + A232991 n

end

end A035218.P14394989328393418176

namespace A035218

/-- `A320015(n+1)+A232991(n)` -/
def P14394989328393418176.Spec : Prop :=
  ∀ n, P14394989328393418176.a n = A035218 (n + 1)

end A035218

/-! ## A035218.P4808936312471482841

`∑{d}[A065330(n+1), A038500(#)]`
-/

namespace A035218.P4808936312471482841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A038500 d

end

end A035218.P4808936312471482841

namespace A035218

/-- `∑{d}[A065330(n+1), A038500(#)]` -/
def P4808936312471482841.Spec : Prop :=
  ∀ n, P4808936312471482841.a n = A035218 (n + 1)

end A035218

/-!
# A035219: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 37.

The programs for A035219, there is no canonical definition to state claims against.
-/

/-! ## A035219.P12424261200657408769

`∑{d}[n+1, A011589(#)]`
-/

namespace A035219.P12424261200657408769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011589 d

end

end A035219.P12424261200657408769

/-! ## A035219.P12741377697380182850

`A327785(Δ[A000292(n+36)]+n+1)`
-/

namespace A035219.P12741377697380182850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 36)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327785 (f1 (n + 1) - f1 n + (n : ℤ) + 1).toNat

end

end A035219.P12741377697380182850

/-! ## A035219.P9080625083576153140

`A338690(lcm(A123352(n), A332818(n+1)))`
-/

namespace A035219.P9080625083576153140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338690 (Int.lcm (A123352 n) (A332818 (n + 1)))

end

end A035219.P9080625083576153140

/-! ## A035219.P13267101941302129200

`A035171(A257538(n+1))`
-/

namespace A035219.P13267101941302129200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035171 (A257538 (n + 1)).toNat

end

end A035219.P13267101941302129200

/-! ## A035219.P8631109141107004134

`and(A113652(A332818(n+1)), A329559(3*n+1))`
-/

namespace A035219.P8631109141107004134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113652 (A332818 (n + 1)).toNat) (A329559 (3 * n + 1))

end

end A035219.P8631109141107004134

/-!
# A035220: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 38.

The programs for A035220, there is no canonical definition to state claims against.
-/

/-! ## A035220.P1372650982320664

`A035147(A162742(n+1)%A139539(n+4))`
-/

namespace A035220.P1372650982320664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035147 (Int.tmod (A162742 (n + 1)) (A139539 (n + 4))).toNat

end

end A035220.P1372650982320664

/-! ## A035220.P699806979264034323

`A292323(and(A292377(2*(n+1)), A292538(n+2)))`
-/

namespace A035220.P699806979264034323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292323 (Int.land (A292377 (2 * (n + 1))) (A292538 (n + 2))).toNat

end

end A035220.P699806979264034323

/-! ## A035220.P3656648708077619827

`A292323(A292377(n+1)%A139539(2*n+1))`
-/

namespace A035220.P3656648708077619827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292323 (Int.tmod (A292377 (n + 1)) (A139539 (2 * n + 1))).toNat

end

end A035220.P3656648708077619827

/-! ## A035220.P2802747671084868511

`A030341(9^A292377(n+1))`
-/

namespace A035220.P2802747671084868511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A292377 (n + 1) : ℤ))).toNat

end

end A035220.P2802747671084868511

/-! ## A035220.P10767342830331281242

`A001227(n+1)%A132747(A356843(3*n+2))`
-/

namespace A035220.P10767342830331281242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001227 (n + 1)) (A132747 (A356843 (3 * n + 2)).toNat)

end

end A035220.P10767342830331281242

/-!
# A035221: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 39.

The programs for A035221, there is no canonical definition to state claims against.
-/

/-! ## A035221.P13842993869417581138

`A192006(A297002(n+1)^A215561(n))`
-/

namespace A035221.P13842993869417581138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 (SequenceMachineLib.roundAway ((A297002 (n + 1) : ℚ) ^ (A215561 n : ℤ))).toNat

end

end A035221.P13842993869417581138

/-! ## A035221.P5905113238664197881

`∑{d}[n+1, #²%3]%A157405(3*n+2)`
-/

namespace A035221.P5905113238664197881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 % 3 : ℕ) : ℤ) (A157405 (3 * n + 2))

end

end A035221.P5905113238664197881

/-! ## A035221.P11914116790262754806

`A035189(A355732(n+1))`
-/

namespace A035221.P11914116790262754806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (A355732 (n + 1)).toNat

end

end A035221.P11914116790262754806

/-! ## A035221.P11367470079199837785

`A035181(3*A325709(n+1))`
-/

namespace A035221.P11367470079199837785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (3 * A325709 (n + 1)).toNat

end

end A035221.P11367470079199837785

/-! ## A035221.P10302182415862337237

`A035181(lcm(3, A325709(n+1)))`
-/

namespace A035221.P10302182415862337237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (Int.lcm 3 (A325709 (n + 1)))

end

end A035221.P10302182415862337237

/-!
# A035222: Number of squares that appear as substrings in n.

The programs for A035222, there is no canonical definition to state claims against.
-/

/-! ## A035222.P4373273888487025899

`A216577(A008554(n+1))+A059995(n)`
-/

namespace A035222.P4373273888487025899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216577 (A008554 (n + 1)).toNat + A059995 n

end

end A035222.P4373273888487025899

/-! ## A035222.P4244140735469653002

`A000120(A317641(n)+A059995(n)^A003052(n+1))`
-/

namespace A035222.P4244140735469653002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A317641 n : ℚ) + (A059995 n : ℚ) ^ (A003052 (n + 1) : ℤ))).toNat

end

end A035222.P4244140735469653002

/-! ## A035222.P5900415397589919782

`A062893(C(A062890(n), A062869(n+1)²)+n)`
-/

namespace A035222.P5900415397589919782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062893 (Nat.choose (A062890 n).toNat (A062869 (n + 1) ^ 2).toNat + n)

end

end A035222.P5900415397589919782

/-! ## A035222.P4138510253612292558

`A216577(n)+A090173(3^floor(n/2))`
-/

namespace A035222.P4138510253612292558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216577 n + A090173 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A035222.P4138510253612292558

/-! ## A035222.P2355378927934532644

`A009195(A190783(n))*A062893(n)`
-/

namespace A035222.P2355378927934532644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A190783 n).toNat * A062893 n

end

end A035222.P2355378927934532644

/-!
# A035223: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 41.

The programs for A035223, there is no canonical definition to state claims against.
-/

/-! ## A035223.P17447253232684538460

`∑{d}[n+1, A011590(#)]`
-/

namespace A035223.P17447253232684538460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011590 d

end

end A035223.P17447253232684538460

/-! ## A035223.P18147010694367880938

`A035171(A324900(n+1))`
-/

namespace A035223.P18147010694367880938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035171 (A324900 (n + 1)).toNat

end

end A035223.P18147010694367880938

/-! ## A035223.P12271598051768779272

`A035170(A113176(n+1))*A035184(n+1)`
-/

namespace A035223.P12271598051768779272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (A113176 (n + 1)).toNat * A035184 (n + 1)

end

end A035223.P12271598051768779272

/-! ## A035223.P14238407638940390815

`A035167(A257538(n+1)%A131072(2*n+1))`
-/

namespace A035223.P14238407638940390815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035167 (Int.tmod (A257538 (n + 1)) (A131072 (2 * n + 1))).toNat

end

end A035223.P14238407638940390815

/-! ## A035223.P12681037858112669534

`A001511(n+1)*A002654(n+1)*A035170(A113176(n+1))`
-/

namespace A035223.P12681037858112669534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A002654 (n + 1) * A035170 (A113176 (n + 1)).toNat

end

end A035223.P12681037858112669534

/-!
# A035224: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = 42.

The programs for A035224, there is no canonical definition to state claims against.
-/

/-! ## A035224.P3112489310375615840

`A328870(2*A065330(n+1))%3`
-/

namespace A035224.P3112489310375615840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328870 (2 * A065330 (n + 1)).toNat) 3

end

end A035224.P3112489310375615840

/-! ## A035224.P1814999447688192330

`A067471(A065330(n+1))%7`
-/

namespace A035224.P1814999447688192330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067471 (A065330 (n + 1)).toNat) 7

end

end A035224.P1814999447688192330

/-! ## A035224.P15659605858039403544

`A067471(A140215(n+1))%7`
-/

namespace A035224.P15659605858039403544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067471 (A140215 (n + 1)).toNat) 7

end

end A035224.P15659605858039403544

/-! ## A035224.P3863390623312689477

`A129680(or(17, A252735(n+1)!))`
-/

namespace A035224.P3863390623312689477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129680 (Nat.lor 17 (Nat.factorial (A252735 (n + 1)).toNat))

end

end A035224.P3863390623312689477

/-! ## A035224.P3212841942673963140

`A209302(A006530(n+1)^3)%3`
-/

namespace A035224.P3212841942673963140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209302 (A006530 (n + 1) ^ 3).toNat) 3

end

end A035224.P3212841942673963140

/-!
# A035225: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = 43.

The programs for A035225, there is no canonical definition to state claims against.
-/

/-! ## A035225.P11069071821150617421

`A035193(A297002(n+1))*A168046(A124496(n+1))`
-/

namespace A035225.P11069071821150617421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (A297002 (n + 1)).toNat * A168046 (A124496 (n + 1)).toNat

end

end A035225.P11069071821150617421

/-! ## A035225.P7881964358982442435

`A035193(A297002(n+1))*A132138(A034461(n+1)!)`
-/

namespace A035225.P7881964358982442435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (A297002 (n + 1)).toNat * A132138 (Nat.factorial (A034461 (n + 1)).toNat)

end

end A035225.P7881964358982442435

/-! ## A035225.P16708613813387398285

`A035193(A297002(n+1)%A095811(n+1))`
-/

namespace A035225.P16708613813387398285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (Int.tmod (A297002 (n + 1)) (A095811 (n + 1))).toNat

end

end A035225.P16708613813387398285

/-! ## A035225.P12353066690845772516

`A001222(A000043(n+1))*A035193(A297002(n+1))`
-/

namespace A035225.P12353066690845772516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A035193 (A297002 (n + 1)).toNat

end

end A035225.P12353066690845772516

/-! ## A035225.P17718187874146006114

`A321833(n+1)%A008777(A094563(n+1))`
-/

namespace A035225.P17718187874146006114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321833 (n + 1)) (A008777 (A094563 (n + 1)).toNat)

end

end A035225.P17718187874146006114

/-!
# A035226: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = 44.

The programs for A035226, there is no canonical definition to state claims against.
-/

/-! ## A035226.P15863021742817749151

`A035193(A000265(n+1))`
-/

namespace A035226.P15863021742817749151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (A000265 (n + 1)).toNat

end

end A035226.P15863021742817749151

/-! ## A035226.P13417522745911394178

`A035193(A153733(n)+1)`
-/

namespace A035226.P13417522745911394178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (A153733 n + 1).toNat

end

end A035226.P13417522745911394178

/-! ## A035226.P13776017753366339976

`A035193(A214682(n+1))`
-/

namespace A035226.P13776017753366339976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (A214682 (n + 1)).toNat

end

end A035226.P13776017753366339976

/-! ## A035226.P510869561197953662

`A035193(or(1, A153733(n)))`
-/

namespace A035226.P510869561197953662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (Int.lor 1 (A153733 n)).toNat

end

end A035226.P510869561197953662

/-! ## A035226.P4713275574832696166

`A035193(xor(1, A153733(n)))`
-/

namespace A035226.P4713275574832696166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (Int.xor 1 (A153733 n)).toNat

end

end A035226.P4713275574832696166

/-! ## A035226.P10244429599680110546

`A035193(2*A025480(n)+1)`
-/

namespace A035226.P10244429599680110546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (2 * A025480 n + 1).toNat

end

end A035226.P10244429599680110546

/-! ## A035226.P1475659837655804617

`∑{d}[n+1, A019590(#)*A035193((n+1)/#)]`
-/

namespace A035226.P1475659837655804617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A035193 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035226.P1475659837655804617

/-! ## A035226.P4010369732336370654

`A035193(A005408(A025480(n)))`
-/

namespace A035226.P4010369732336370654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (A005408 (A025480 n).toNat).toNat

end

end A035226.P4010369732336370654

/-! ## A035226.P10356215553530300327

`A035193(A025480(n)+A025480(n)+1)`
-/

namespace A035226.P10356215553530300327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (A025480 n + (A025480 n + 1)).toNat

end

end A035226.P10356215553530300327

/-! ## A035226.P14298819392540222796

`A035193(A161151(2*n+1))`
-/

namespace A035226.P14298819392540222796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (A161151 (2 * n + 1)).toNat

end

end A035226.P14298819392540222796

/-! ## A035226.P3352013039837569528

`A035193((n+1)*Δ[A197911(n)])`
-/

namespace A035226.P3352013039837569528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 ((n + 1 : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A035226.P3352013039837569528

/-! ## A035226.P14902838769392136716

`A035193(2*(n+1))+A035193(n+1)`
-/

namespace A035226.P14902838769392136716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (2 * (n + 1)) + A035193 (n + 1)

end

end A035226.P14902838769392136716

/-! ## A035226.P3048493822504331849

`A035193(gcd((n+1)², A123667(n+1)))`
-/

namespace A035226.P3048493822504331849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (Int.gcd ((n + 1) ^ 2 : ℤ) (A123667 (n + 1)))

end

end A035226.P3048493822504331849

/-!
# A035227: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 45.

The programs for A035227, the canonical program `A035227.P12722226152063359411` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035227 has offset 1).

The definition of A035227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035227.P238725771928322337

`A035187((n+1)/3^val(n+1, 3))`
-/

namespace A035227.P238725771928322337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A035227.P238725771928322337

namespace A035227

/-- `A035187((n+1)/3^val(n+1, 3))` -/
def P238725771928322337.Spec : Prop :=
  ∀ n, P238725771928322337.a n = A035227 (n + 1)

end A035227

/-! ## A035227.P9730152230957894909

`A035187(A038502(n+1))`
-/

namespace A035227.P9730152230957894909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A038502 (n + 1)).toNat

end

end A035227.P9730152230957894909

namespace A035227

/-- `A035187(A038502(n+1))` -/
def P9730152230957894909.Spec : Prop :=
  ∀ n, P9730152230957894909.a n = A035227 (n + 1)

end A035227

/-! ## A035227.P12722226152063359411

`A035187((n+1)/A038500(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035227

/-- `A035187((n+1)/A038500(n+1))` -/
def P12722226152063359411.Spec : Prop :=
  ∀ n, P12722226152063359411.a n = A035227 (n + 1)

theorem P12722226152063359411.correct : P12722226152063359411.Spec := by
  intro n
  simp only [A035227, Nat.add_sub_cancel]

end A035227

/-! ## A035227.P640464248439587958

`∑{d}[n+1, A035187(#)*A154272((n+1)/#)]`
-/

namespace A035227.P640464248439587958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035187 d * A154272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035227.P640464248439587958

namespace A035227

/-- `∑{d}[n+1, A035187(#)*A154272((n+1)/#)]` -/
def P640464248439587958.Spec : Prop :=
  ∀ n, P640464248439587958.a n = A035227 (n + 1)

end A035227

/-! ## A035227.P2458479710180244540

`∑{d}[n+1, A087781(#)*A145377((n+1)/#)]`
-/

namespace A035227.P2458479710180244540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087781 d * A145377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035227.P2458479710180244540

namespace A035227

/-- `∑{d}[n+1, A087781(#)*A145377((n+1)/#)]` -/
def P2458479710180244540.Spec : Prop :=
  ∀ n, P2458479710180244540.a n = A035227 (n + 1)

end A035227

/-! ## A035227.P12642271637189538697

`A035202(A357872(n+1))`
-/

namespace A035227.P12642271637189538697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035202 (A357872 (n + 1)).toNat

end

end A035227.P12642271637189538697

namespace A035227

/-- `A035202(A357872(n+1))` -/
def P12642271637189538697.Spec : Prop :=
  ∀ n, P12642271637189538697.a n = A035227 (n + 1)

end A035227

/-! ## A035227.P12025402412127888869

`A035187(3*(n+1))+A035187(n+1)`
-/

namespace A035227.P12025402412127888869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (3 * (n + 1)) + A035187 (n + 1)

end

end A035227.P12025402412127888869

namespace A035227

/-- `A035187(3*(n+1))+A035187(n+1)` -/
def P12025402412127888869.Spec : Prop :=
  ∀ n, P12025402412127888869.a n = A035227 (n + 1)

end A035227

/-! ## A035227.P12669201247953889211

`A035202(A064614(n+1))`
-/

namespace A035227.P12669201247953889211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035202 (A064614 (n + 1)).toNat

end

end A035227.P12669201247953889211

namespace A035227

/-- `A035202(A064614(n+1))` -/
def P12669201247953889211.Spec : Prop :=
  ∀ n, P12669201247953889211.a n = A035227 (n + 1)

end A035227

/-! ## A035227.P9111518944191745244

`A035202(A387377(n+1))`
-/

namespace A035227.P9111518944191745244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035202 (A387377 (n + 1)).toNat

end

end A035227.P9111518944191745244

namespace A035227

/-- `A035202(A387377(n+1))` -/
def P9111518944191745244.Spec : Prop :=
  ∀ n, P9111518944191745244.a n = A035227 (n + 1)

end A035227

/-! ## A035227.P7444268619730734656

`A035187((n+1)*A038500(n+1))`
-/

namespace A035227.P7444268619730734656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 ((n + 1 : ℤ) * A038500 (n + 1)).toNat

end

end A035227.P7444268619730734656

namespace A035227

/-- `A035187((n+1)*A038500(n+1))` -/
def P7444268619730734656.Spec : Prop :=
  ∀ n, P7444268619730734656.a n = A035227 (n + 1)

end A035227

/-!
# A035228: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 46.

The programs for A035228, there is no canonical definition to state claims against.
-/

/-! ## A035228.P16165867954831237970

`A384230(lcm(4, n+1))`
-/

namespace A035228.P16165867954831237970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384230 (Nat.lcm 4 (n + 1))

end

end A035228.P16165867954831237970

/-! ## A035228.P4447117030815099155

`A384230(4*(n+1)/2^val(n+1, 2))`
-/

namespace A035228.P4447117030815099155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384230 (SequenceMachineLib.roundAway (4 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

end

end A035228.P4447117030815099155

/-! ## A035228.P18179613151389698915

`A384230(A084351(n+1))`
-/

namespace A035228.P18179613151389698915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384230 (A084351 (n + 1)).toNat

end

end A035228.P18179613151389698915

/-! ## A035228.P10015664094172326726

`A384230(A109045(n+1))`
-/

namespace A035228.P10015664094172326726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384230 (A109045 (n + 1)).toNat

end

end A035228.P10015664094172326726

/-! ## A035228.P14892987479482210124

`A384230(A382154(n+1))`
-/

namespace A035228.P14892987479482210124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384230 (A382154 (n + 1)).toNat

end

end A035228.P14892987479482210124

/-!
# A035229: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = 47.

The programs for A035229, there is no canonical definition to state claims against.
-/

/-! ## A035229.P5080806976856665425

`and(∏{e}[n+1, #+1], A038712(A306360(n+1)))`
-/

namespace A035229.P5080806976856665425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A038712 (A306360 (n + 1)).toNat)

end

end A035229.P5080806976856665425

/-! ## A035229.P474493548451248218

`and(∏{e}[n+1, #+1], A034961(A085957(n+5)))`
-/

namespace A035229.P474493548451248218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A034961 (A085957 (n + 5)).toNat)

end

end A035229.P474493548451248218

/-! ## A035229.P10108200358220191871

`and(A000005(n+1), A102732(A236914(n+1)))`
-/

namespace A035229.P10108200358220191871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (n + 1)) (A102732 (A236914 (n + 1)).toNat)

end

end A035229.P10108200358220191871

/-! ## A035229.P14066656286001250141

`and(A000005(n+1), A038712(A306360(n+1)))`
-/

namespace A035229.P14066656286001250141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (n + 1)) (A038712 (A306360 (n + 1)).toNat)

end

end A035229.P14066656286001250141

/-! ## A035229.P9677485972136235969

`and(A001511(A306360(n+1)), A084302(n+1))`
-/

namespace A035229.P9677485972136235969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001511 (A306360 (n + 1)).toNat) (A084302 (n + 1))

end

end A035229.P9677485972136235969

/-!
# A035230: Fourier coefficients of T_0.

The programs for A035230, there is no canonical definition to state claims against.
-/

/-! ## A035230.P6686441869476369724

`(1-n)*A289063(n)`
-/

namespace A035230.P6686441869476369724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A289063 n

end

end A035230.P6686441869476369724

/-!
# A035231: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -46.

The programs for A035231, there is no canonical definition to state claims against.
-/

/-! ## A035231.P2119836887011792783

`eq[1, A000009(a(A035144(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035231.P2119836887011792783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000009 (f2 (A035144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035231.P2119836887011792783

/-! ## A035231.P15400900091873750976

`eq[1, A000010(a(A035144(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035231.P15400900091873750976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000010 (f2 (A035144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035231.P15400900091873750976

/-! ## A035231.P9674171747787331681

`eq[1, A000045(a(A035144(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035231.P9674171747787331681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000045 (f2 (A035144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035231.P9674171747787331681

/-! ## A035231.P5215536696509094719

`eq[1, A000119(a(A035144(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035231.P5215536696509094719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000119 (f2 (A035144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035231.P5215536696509094719

/-! ## A035231.P18331687871432765924

`eq[1, A000120(a(A035144(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035231.P18331687871432765924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000120 (f2 (A035144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035231.P18331687871432765924

/-! ## A035231.P5369963324321433081

`eq[1, A001176(a(A035144(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035231.P5369963324321433081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A001176 (f2 (A035144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035231.P5369963324321433081

/-! ## A035231.P8799306294679491777

`eq[1, A002260(a(A035144(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035231.P8799306294679491777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A002260 (f2 (A035144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035231.P8799306294679491777

/-! ## A035231.P383924197076470900

`eq[1, A002325(a(A035144(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035231.P383924197076470900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A002325 (f2 (A035144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035231.P383924197076470900

/-! ## A035231.P12849894687636854439

`eq[1, A007318(a(A035144(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A035231.P12849894687636854439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A007318 (f2 (A035144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035231.P12849894687636854439

/-! ## A035231.P7065360394235165423

`eq[1, A014963(a(A035144(n)))!]` with `a(0)=3, a(1)=1`
-/

namespace A035231.P7065360394235165423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  Nat.factorial (A014963 (f2 (A035144 n).toNat)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035231.P7065360394235165423

/-!
# A035232: Number of substrings of n which are primes (counted with multiplicity).

The programs for A035232, there is no canonical definition to state claims against.
-/

/-! ## A035232.P16596831776079140334

`A001055(A194436(2*(n+1)))*A039995(n+1)`
-/

namespace A035232.P16596831776079140334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A194436 (2 * (n + 1))).toNat * A039995 (n + 1)

end

end A035232.P16596831776079140334

/-! ## A035232.P11626059392379391631

`A039997(n+1)+val(A268236(2*(n+2))+1, 2)`
-/

namespace A035232.P11626059392379391631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 1) + (SequenceMachineLib.valuation (A268236 (2 * (n + 2)) + 1).toNat 2 : ℤ)

end

end A035232.P11626059392379391631

/-! ## A035232.P8509620497567229826

`A039997(n+1)*A375736(A166527(2*n+1))`
-/

namespace A035232.P8509620497567229826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 1) * A375736 (A166527 (2 * n + 1)).toNat

end

end A035232.P8509620497567229826

/-! ## A035232.P12928351262417660208

`A039995(n+1)*A333769(A360289(3*n+2))`
-/

namespace A035232.P12928351262417660208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (n + 1) * A333769 (A360289 (3 * n + 2)).toNat

end

end A035232.P12928351262417660208

/-! ## A035232.P7216252870333242569

`A039995(n+1)%∑[A353430(n)]`
-/

namespace A035232.P7216252870333242569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039995 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035232.P7216252870333242569

/-!
# A035233: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -43.

The programs for A035233, there is no canonical definition to state claims against.
-/

/-! ## A035233.P487893476516160797

`lt[1, A138811(n)]`
-/

namespace A035233.P487893476516160797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035233.P487893476516160797

/-! ## A035233.P222454869488148382

`eq[0, A010815(A138811(n)²)]`
-/

namespace A035233.P222454869488148382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A138811 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035233.P222454869488148382

/-! ## A035233.P1873603706356495626

`eq[0, A121373(A138811(n)²)]`
-/

namespace A035233.P1873603706356495626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A138811 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035233.P1873603706356495626

/-! ## A035233.P16660649425028393408

`eq[2, A040001(A138811(n)²)]`
-/

namespace A035233.P16660649425028393408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A138811 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035233.P16660649425028393408

/-! ## A035233.P16432656312854438037

`eq[2, A134451(A138811(n)²)]`
-/

namespace A035233.P16432656312854438037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A138811 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035233.P16432656312854438037

/-! ## A035233.P4965077368344918163

`eq[3, A261922(A138811(n)²)]`
-/

namespace A035233.P4965077368344918163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261922 (A138811 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035233.P4965077368344918163

/-! ## A035233.P1178964854788556523

`eq[10, A010130(A138811(n)²)]`
-/

namespace A035233.P1178964854788556523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 (A138811 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035233.P1178964854788556523

/-! ## A035233.P7125864056793525217

`eq[1, A054868(A054868(n)*A138811(n))]`
-/

namespace A035233.P7125864056793525217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (A054868 n * A138811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035233.P7125864056793525217

/-! ## A035233.P17771526118288734628

`eq[2, A040001(A040001(n)*A138811(n))]`
-/

namespace A035233.P17771526118288734628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A040001 n * A138811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035233.P17771526118288734628

/-! ## A035233.P567439529406253409

`eq[A134451(2*n), A134451(A138811(n))]`
-/

namespace A035233.P567439529406253409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A138811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035233.P567439529406253409

/-! ## A035233.P4407980814278046984

`eq[A000007(n), A000007(A138811(n))]`
-/

namespace A035233.P4407980814278046984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A138811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035233.P4407980814278046984

/-! ## A035233.P12795341579209689974

`lt[1, A033755(2*n)]/2`
-/

namespace A035233.P12795341579209689974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033755 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A035233.P12795341579209689974

/-! ## A035233.P15317181173690347309

`eq[2, A040001(n*A138811(n))]`
-/

namespace A035233.P15317181173690347309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 ((n : ℤ) * A138811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035233.P15317181173690347309

/-! ## A035233.P7790266025450972338

`eq[2, A134451(n*A138811(n))]`
-/

namespace A035233.P7790266025450972338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 ((n : ℤ) * A138811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035233.P7790266025450972338

/-! ## A035233.P17639645629360475165

`eq[2, A020639(A138811(n)!)]`
-/

namespace A035233.P17639645629360475165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A138811 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035233.P17639645629360475165

/-!
# A035234: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -37.

The programs for A035234, there is no canonical definition to state claims against.
-/

/-! ## A035234.P14925911449042890909

`lt[0, A035153(n+1)]+1`
-/

namespace A035234.P14925911449042890909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035234.P14925911449042890909

/-! ## A035234.P14712681449797507848

`lt[acot(n), A035153(A028310(n))]`
-/

namespace A035234.P14712681449797507848
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035153 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A035234.P14712681449797507848

/-! ## A035234.P14876106931430622237

`lt[1, A004277(n)*A035153(A028310(n))]`
-/

namespace A035234.P14876106931430622237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A035153 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035234.P14876106931430622237

/-! ## A035234.P12524478931545524608

`lt[1, A035153(A028310(n))*A278222(n)]`
-/

namespace A035234.P12524478931545524608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035153 (A028310 n).toNat * A278222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035234.P12524478931545524608

/-! ## A035234.P2100534873270084191

`lt[A053186(n), A053186(A216765(3*n+2))]`
-/

namespace A035234.P2100534873270084191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A216765 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035234.P2100534873270084191

/-!
# A035235: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -31.

The programs for A035235, there is no canonical definition to state claims against.
-/

/-! ## A035235.P4638885024659296065

`lt[A000038(A035159(n+1)), 1]+1`
-/

namespace A035235.P4638885024659296065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A035159 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A035235.P4638885024659296065

/-! ## A035235.P4595773691015684938

`lt[A000038(n), A035159(A028310(n))]`
-/

namespace A035235.P4595773691015684938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035159 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035235.P4595773691015684938

/-! ## A035235.P15132739847643706255

`lt[1, A035159(2*(n+1))]+1`
-/

namespace A035235.P15132739847643706255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035159 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035235.P15132739847643706255

/-! ## A035235.P1358919133629971384

`lt[1, A035159(A028310(2*n))]`
-/

namespace A035235.P1358919133629971384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035159 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035235.P1358919133629971384

/-! ## A035235.P10913992449292700938

`lt[1, A035159(A028310(n)+n)]`
-/

namespace A035235.P10913992449292700938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035159 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035235.P10913992449292700938

/-! ## A035235.P1194133950261008228

`lt[1, A123063(2*n)]`
-/

namespace A035235.P1194133950261008228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035235.P1194133950261008228

/-! ## A035235.P7272506280707821205

`lt[A057979(n), A123063(n)]/2`
-/

namespace A035235.P7272506280707821205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2

end

end A035235.P7272506280707821205

/-! ## A035235.P1982510060578666564

`eq[2, A130130(A123063(2*n)²)]`
-/

namespace A035235.P1982510060578666564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A123063 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035235.P1982510060578666564

/-! ## A035235.P8044344879921958774

`A001281(lt[A057979(n), A123063(n)])`
-/

namespace A035235.P8044344879921958774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035235.P8044344879921958774

/-! ## A035235.P15035084215803206741

`A078898(lt[A057979(n), A123063(n)])`
-/

namespace A035235.P15035084215803206741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035235.P15035084215803206741

/-! ## A035235.P1499263469208160100

`A142150(lt[A057979(n), A123063(n)])`
-/

namespace A035235.P1499263469208160100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035235.P1499263469208160100

/-! ## A035235.P5504128467854502343

`A057979(lt[A057979(n), A123063(n)]+1)`
-/

namespace A035235.P5504128467854502343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A035235.P5504128467854502343

/-! ## A035235.P18439497247915908457

`eq[A000038(A123063(2*n)), A000038(n)]`
-/

namespace A035235.P18439497247915908457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A123063 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035235.P18439497247915908457

/-! ## A035235.P1072426709701058528

`eq[A130130(A123063(2*n)), A130130(2*n)]`
-/

namespace A035235.P1072426709701058528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A123063 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035235.P1072426709701058528

/-! ## A035235.P13388503782310573578

`lt[1, A033743(16*n)]`
-/

namespace A035235.P13388503782310573578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033743 (16 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035235.P13388503782310573578

/-!
# A035236: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -29.

The programs for A035236, there is no canonical definition to state claims against.
-/

/-! ## A035236.P10104271327287930585

`eq[1, A000010(a(A035161(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035236.P10104271327287930585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000010 (f2 (A035161 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035236.P10104271327287930585

/-! ## A035236.P5392470589963506155

`eq[1, A000045(a(A035161(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035236.P5392470589963506155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000045 (f2 (A035161 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035236.P5392470589963506155

/-! ## A035236.P9290216723318248104

`eq[1, A000081(a(A035161(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035236.P9290216723318248104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000081 (f2 (A035161 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035236.P9290216723318248104

/-! ## A035236.P11283139091373982721

`eq[1, A000120(a(A035161(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035236.P11283139091373982721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000120 (f2 (A035161 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035236.P11283139091373982721

/-! ## A035236.P3118118837749738199

`eq[1, A007318(a(A035161(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A035236.P3118118837749738199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A007318 (f2 (A035161 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035236.P3118118837749738199

/-!
# A035239: Smallest number that contains the numbers from 1 to n as substrings.

The programs for A035239, there is no canonical definition to state claims against.
-/

/-! ## A035239.P9456581205207332408

`A344183(A055649(n)+1)`
-/

namespace A035239.P9456581205207332408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344183 (A055649 n + 1).toNat

end

end A035239.P9456581205207332408

/-! ## A035239.P6874615554423919959

`A344183(A062399(n)+1)`
-/

namespace A035239.P6874615554423919959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344183 (A062399 n + 1).toNat

end

end A035239.P6874615554423919959

/-! ## A035239.P11205867374961650932

`A344183(A120126(n)+1)`
-/

namespace A035239.P11205867374961650932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344183 (A120126 n + 1).toNat

end

end A035239.P11205867374961650932

/-! ## A035239.P14064041118261093520

`A344183(A188649(n+1))`
-/

namespace A035239.P14064041118261093520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344183 (A188649 (n + 1)).toNat

end

end A035239.P14064041118261093520

/-! ## A035239.P7924349836400568610

`A344183(A004872(n+1)+1)`
-/

namespace A035239.P7924349836400568610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344183 (A004872 (n + 1) + 1).toNat

end

end A035239.P7924349836400568610

/-!
# A035240: Indices of nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -23 (A035167).

The programs for A035240, there is no canonical definition to state claims against.
-/

/-! ## A035240.P5743474807950837225

`lt[1, A028930(n)+A028930(A028959(n))]`
-/

namespace A035240.P5743474807950837225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n + A028930 (A028959 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035240.P5743474807950837225

/-! ## A035240.P4848728344331089974

`lt[1, A028930(2*n)]`
-/

namespace A035240.P4848728344331089974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035240.P4848728344331089974

/-! ## A035240.P17646405975031820764

`eq[2, A158478(A028930(2*n)²)]`
-/

namespace A035240.P17646405975031820764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A028930 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035240.P17646405975031820764

/-! ## A035240.P841515913047700361

`eq[A000007(A028930(2*n)), A000007(n)]`
-/

namespace A035240.P841515913047700361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A028930 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035240.P841515913047700361

/-! ## A035240.P15291799470123913735

`eq[A040002(A028930(2*n)), A040002(n)]`
-/

namespace A035240.P15291799470123913735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A028930 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035240.P15291799470123913735

/-! ## A035240.P9008579414442505414

`eq[A057427(A028930(2*n)), A057427(n)]`
-/

namespace A035240.P9008579414442505414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A028930 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035240.P9008579414442505414

/-! ## A035240.P11402252382008485474

`eq[A158478(A028930(n)), A158478(n)]/2`
-/

namespace A035240.P11402252382008485474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A028930 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A035240.P11402252382008485474

/-! ## A035240.P12498553354491507496

`eq[A158478(A028930(2*n)), A158478(2*n)]`
-/

namespace A035240.P12498553354491507496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A028930 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035240.P12498553354491507496

/-! ## A035240.P3256646513446774900

`eq[2, A158478(A028930(3*n))]`
-/

namespace A035240.P3256646513446774900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A028930 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035240.P3256646513446774900

/-! ## A035240.P984110528175996397

`lt[1, A028959(4*n)]`
-/

namespace A035240.P984110528175996397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035240.P984110528175996397

/-! ## A035240.P7518123937821096380

`eq[1, A019426(A028961(8*n))]`
-/

namespace A035240.P7518123937821096380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A028961 (8 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035240.P7518123937821096380

/-!
# A035241: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -22.

The programs for A035241, there is no canonical definition to state claims against.
-/

/-! ## A035241.P3910238687802750878

`eq[0, A000038(n)^A255647(n)]`
-/

namespace A035241.P3910238687802750878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A255647 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A035241.P3910238687802750878

/-! ## A035241.P7320145946740108410

`eq[1, A000010(a(A035168(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035241.P7320145946740108410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000010 (f2 (A035168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035241.P7320145946740108410

/-! ## A035241.P13897006888917227966

`eq[1, A000045(a(A035168(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035241.P13897006888917227966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000045 (f2 (A035168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035241.P13897006888917227966

/-! ## A035241.P4442872445272014705

`eq[1, A005374(a(A035168(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035241.P4442872445272014705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A005374 (f2 (A035168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035241.P4442872445272014705

/-! ## A035241.P6000169576910003847

`eq[1, A265441(a(A035168(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035241.P6000169576910003847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A265441 (f2 (A035168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035241.P6000169576910003847

/-! ## A035241.P3374015624361580889

`eq[1, A000009(a(A035168(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A035241.P3374015624361580889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A000009 (f2 (A035168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035241.P3374015624361580889

/-! ## A035241.P17982741177385001015

`eq[1, A000194(a(A035168(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A035241.P17982741177385001015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A000194 (f2 (A035168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035241.P17982741177385001015

/-! ## A035241.P171686939679957073

`eq[1, A001498(a(A035168(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A035241.P171686939679957073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A001498 (f2 (A035168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035241.P171686939679957073

/-! ## A035241.P7684415713007090585

`eq[1, A007318(a(A035168(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A035241.P7684415713007090585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A007318 (f2 (A035168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035241.P7684415713007090585

/-! ## A035241.P15332388220261141813

`eq[1, A026769(a(A035168(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A035241.P15332388220261141813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A026769 (f2 (A035168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035241.P15332388220261141813

/-! ## A035241.P2549525120811524456

`eq[1, A072504(a(A035168(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A035241.P2549525120811524456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A072504 (f2 (A035168 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035241.P2549525120811524456

/-! ## A035241.P11771992517364261187

`eq[1, A080426(a(A035168(n))²)]` with `a(0)=4, a(1)=1`
-/

namespace A035241.P11771992517364261187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A080426 (f2 (A035168 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035241.P11771992517364261187

/-! ## A035241.P3665759577531688926

`eq[1, A172353(a(A035168(n))²)]` with `a(0)=4, a(1)=1`
-/

namespace A035241.P3665759577531688926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A172353 (f2 (A035168 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035241.P3665759577531688926

/-!
# A035242: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -21.

The programs for A035242, there is no canonical definition to state claims against.
-/

/-! ## A035242.P929383057389845961

`lt[0, A035169(n+1)]+1`
-/

namespace A035242.P929383057389845961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035242.P929383057389845961

/-! ## A035242.P16044367124119257464

`record[A302792(A322847(n+1))]`
-/

namespace A035242.P16044367124119257464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (A322847 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035242.P16044367124119257464

/-! ## A035242.P15956886734142485462

`∩[A036554(n+1), A322847(n+1)]/2`
-/

namespace A035242.P15956886734142485462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A035242.P15956886734142485462

/-! ## A035242.P9068584617544287338

`A122906(record[A131469(A059555(n+1))])`
-/

namespace A035242.P9068584617544287338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (A059555 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122906 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035242.P9068584617544287338

/-! ## A035242.P14841952016083940520

`eq[A004016(A334031(n)), A334040(n+1)]`
-/

namespace A035242.P14841952016083940520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A334031 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035242.P14841952016083940520

/-!
# A035243: Positive numbers of the form x^2+xy+5y^2 (discriminant -19).

The programs for A035243, there is no canonical definition to state claims against.
-/

/-! ## A035243.P1339175322849305524

`lt[1, A028641(n)]`
-/

namespace A035243.P1339175322849305524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035243.P1339175322849305524

/-! ## A035243.P6143608510291132031

`eq[1, A019433(A028641(n)²)]`
-/

namespace A035243.P6143608510291132031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 (A028641 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035243.P6143608510291132031

/-! ## A035243.P18007231219742790504

`eq[2, A002448(A028641(n)²)]`
-/

namespace A035243.P18007231219742790504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A028641 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035243.P18007231219742790504

/-! ## A035243.P3855088032078359871

`eq[2, A040001(A028641(n)²)]`
-/

namespace A035243.P3855088032078359871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A028641 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035243.P3855088032078359871

/-! ## A035243.P12162871761349748565

`eq[2, A043529(A028641(n)²)]`
-/

namespace A035243.P12162871761349748565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A028641 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035243.P12162871761349748565

/-! ## A035243.P12115879418170024436

`eq[2, A040001(A028641(n)*A040001(n))]`
-/

namespace A035243.P12115879418170024436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A028641 n * A040001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035243.P12115879418170024436

/-! ## A035243.P12210458913682495021

`eq[2, A043529(A028641(n)*A043529(n))]`
-/

namespace A035243.P12210458913682495021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A028641 n * A043529 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035243.P12210458913682495021

/-! ## A035243.P2343175214676650300

`eq[1, A019433(n*A028641(n))]`
-/

namespace A035243.P2343175214676650300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 ((n : ℤ) * A028641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035243.P2343175214676650300

/-! ## A035243.P15912789790592335399

`eq[2, A040001(n*A028641(n))]`
-/

namespace A035243.P15912789790592335399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 ((n : ℤ) * A028641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035243.P15912789790592335399

/-! ## A035243.P8717092724362158212

`eq[2, A043529(n*A028641(n))]`
-/

namespace A035243.P8717092724362158212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 ((n : ℤ) * A028641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035243.P8717092724362158212

/-!
# A035244: Smallest number with exactly n prime substrings.

The programs for A035244, there is no canonical definition to state claims against.
-/

/-! ## A035244.P10544322010968867366

`A213321(n*a(A059592(n)-1))` with `a(0)=1`
-/

namespace A035244.P10544322010968867366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213321 ((n : ℤ) * a (A059592 n - 1).toNat).toNat

end

end A035244.P10544322010968867366

/-! ## A035244.P3665697675310658040

`A213321(A318909(n+1))-A096740(n)`
-/

namespace A035244.P3665697675310658040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213321 (A318909 (n + 1)).toNat - A096740 n

end

end A035244.P3665697675310658040

/-! ## A035244.P1255534206186987017

`A213321(A318909(n+1))/A054977(n)`
-/

namespace A035244.P1255534206186987017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213321 (A318909 (n + 1)).toNat : ℚ) / (A054977 n : ℚ)

end

end A035244.P1255534206186987017

/-!
# A035245: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -13.

The programs for A035245, there is no canonical definition to state claims against.
-/

/-! ## A035245.P18344614274216012037

`eq[0, A000212(a(A035177(n)))]` with `a(0)=2, a(1)=0`
-/

namespace A035245.P18344614274216012037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A000212 (f2 (A035177 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035245.P18344614274216012037

/-! ## A035245.P13499665510387210331

`eq[0, A000677(a(A035177(n)))]` with `a(0)=2, a(1)=0`
-/

namespace A035245.P13499665510387210331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A000677 (f2 (A035177 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035245.P13499665510387210331

/-! ## A035245.P4118770115797607257

`eq[0, A002262(a(A035177(n)))]` with `a(0)=2, a(1)=0`
-/

namespace A035245.P4118770115797607257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A002262 (f2 (A035177 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035245.P4118770115797607257

/-! ## A035245.P5779792937057015950

`eq[0, A003415(a(A035177(n)))]` with `a(0)=2, a(1)=0`
-/

namespace A035245.P5779792937057015950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A003415 (f2 (A035177 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035245.P5779792937057015950

/-! ## A035245.P2344778977011767580

`eq[0, A004526(a(A035177(n)))]` with `a(0)=2, a(1)=0`
-/

namespace A035245.P2344778977011767580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A004526 (f2 (A035177 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035245.P2344778977011767580

/-! ## A035245.P8734607496992038802

`eq[0, A008615(a(A035177(n)))]` with `a(0)=2, a(1)=0`
-/

namespace A035245.P8734607496992038802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A008615 (f2 (A035177 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035245.P8734607496992038802

/-!
# A035246: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -12.

The programs for A035246, the canonical program `A035246.P14637985280883244222` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035246 has offset 1).

The definition of A035246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035246.P14637985280883244222

`∪[2*A003136(n+2), A003136(n+2)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A035246

/-- `∪[2*A003136(n+2), A003136(n+2)]` -/
def P14637985280883244222.Spec : Prop :=
  ∀ n, (P14637985280883244222.a n : ℤ) = A035246 (n + 1)

theorem P14637985280883244222.correct : P14637985280883244222.Spec := by
  intro n
  simp only [A035246, Nat.add_sub_cancel]

end A035246

/-! ## A035246.P15217932054543208528

`lt[1, abs(A113447(n+1))+1]+1`
-/

namespace A035246.P15217932054543208528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113447 (n + 1)| + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035246.P15217932054543208528

namespace A035246

/-- `lt[1, abs(A113447(n+1))+1]+1` -/
def P15217932054543208528.Spec : Prop :=
  ∀ n, (P15217932054543208528.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P3360390532475631485

`lt[1, A004016(A166466(n+1)/3)]+1`
-/

namespace A035246.P3360390532475631485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035246.P3360390532475631485

namespace A035246

/-- `lt[1, A004016(A166466(n+1)/3)]+1` -/
def P3360390532475631485.Spec : Prop :=
  ∀ n, (P3360390532475631485.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P12252258496023197551

`lt[1, A107760(n)]`
-/

namespace A035246.P12252258496023197551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035246.P12252258496023197551

namespace A035246

/-- `lt[1, A107760(n)]` -/
def P12252258496023197551.Spec : Prop :=
  ∀ n, (P12252258496023197551.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P16887917444614130715

`lt[1, A123330(n)]`
-/

namespace A035246.P16887917444614130715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035246.P16887917444614130715

namespace A035246

/-- `lt[1, A123330(n)]` -/
def P16887917444614130715.Spec : Prop :=
  ∀ n, (P16887917444614130715.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P3789380872352622978

`lt[1, abs(A122859(n))]`
-/

namespace A035246.P3789380872352622978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122859 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035246.P3789380872352622978

namespace A035246

/-- `lt[1, abs(A122859(n))]` -/
def P3789380872352622978.Spec : Prop :=
  ∀ n, (P3789380872352622978.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P6861100253891644286

`lt[1, abs(A132973(n))]`
-/

namespace A035246.P6861100253891644286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132973 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035246.P6861100253891644286

namespace A035246

/-- `lt[1, abs(A132973(n))]` -/
def P6861100253891644286.Spec : Prop :=
  ∀ n, (P6861100253891644286.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P7057677058210465353

`lt[1, A113660(n)²]`
-/

namespace A035246.P7057677058210465353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113660 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035246.P7057677058210465353

namespace A035246

/-- `lt[1, A113660(n)²]` -/
def P7057677058210465353.Spec : Prop :=
  ∀ n, (P7057677058210465353.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P8113454556530055959

`lt[1, A113973(n)²]`
-/

namespace A035246.P8113454556530055959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113973 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035246.P8113454556530055959

namespace A035246

/-- `lt[1, A113973(n)²]` -/
def P8113454556530055959.Spec : Prop :=
  ∀ n, (P8113454556530055959.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P2340273586725617813

`lt[1, A193514(n)²]`
-/

namespace A035246.P2340273586725617813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193514 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035246.P2340273586725617813

namespace A035246

/-- `lt[1, A193514(n)²]` -/
def P2340273586725617813.Spec : Prop :=
  ∀ n, (P2340273586725617813.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P16372971840260045425

`lt[1, A000700(A122859(n)²)]`
-/

namespace A035246.P16372971840260045425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A122859 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035246.P16372971840260045425

namespace A035246

/-- `lt[1, A000700(A122859(n)²)]` -/
def P16372971840260045425.Spec : Prop :=
  ∀ n, (P16372971840260045425.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P12038815187175676301

`eq[2, A113973(A113973(n)²)]`
-/

namespace A035246.P12038815187175676301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113973 (A113973 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035246.P12038815187175676301

namespace A035246

/-- `eq[2, A113973(A113973(n)²)]` -/
def P12038815187175676301.Spec : Prop :=
  ∀ n, (P12038815187175676301.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P9911440838676187365

`lt[1, A217219(n)+A193514(n)]`
-/

namespace A035246.P9911440838676187365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217219 n + A193514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035246.P9911440838676187365

namespace A035246

/-- `lt[1, A217219(n)+A193514(n)]` -/
def P9911440838676187365.Spec : Prop :=
  ∀ n, (P9911440838676187365.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P11960249009648903862

`lt[2, A113973(n)+A004016(n)]`
-/

namespace A035246.P11960249009648903862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113973 n + A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035246.P11960249009648903862

namespace A035246

/-- `lt[2, A113973(n)+A004016(n)]` -/
def P11960249009648903862.Spec : Prop :=
  ∀ n, (P11960249009648903862.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P5109509117085841624

`lt[n/A253582(A253626(n)), n]`
-/

namespace A035246.P5109509117085841624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A253582 (A253626 n).toNat : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A035246.P5109509117085841624

namespace A035246

/-- `lt[n/A253582(A253626(n)), n]` -/
def P5109509117085841624.Spec : Prop :=
  ∀ n, (P5109509117085841624.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P17783508005931683189

`lt[1, (A005928(n)-A253623(n))²]`
-/

namespace A035246.P17783508005931683189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005928 n - A253623 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035246.P17783508005931683189

namespace A035246

/-- `lt[1, (A005928(n)-A253623(n))²]` -/
def P17783508005931683189.Spec : Prop :=
  ∀ n, (P17783508005931683189.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P13644279701274281982

`lt[A000688(n+1), A122859(n)²²]`
-/

namespace A035246.P13644279701274281982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122859 n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035246.P13644279701274281982

namespace A035246

/-- `lt[A000688(n+1), A122859(n)²²]` -/
def P13644279701274281982.Spec : Prop :=
  ∀ n, (P13644279701274281982.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P15953616525105417572

`eq[A000007(n), A000007(A107760(n))]`
-/

namespace A035246.P15953616525105417572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A107760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035246.P15953616525105417572

namespace A035246

/-- `eq[A000007(n), A000007(A107760(n))]` -/
def P15953616525105417572.Spec : Prop :=
  ∀ n, (P15953616525105417572.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P9496440840795138635

`eq[A000038(n), A000038(A107760(n))]`
-/

namespace A035246.P9496440840795138635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A107760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035246.P9496440840795138635

namespace A035246

/-- `eq[A000038(n), A000038(A107760(n))]` -/
def P9496440840795138635.Spec : Prop :=
  ∀ n, (P9496440840795138635.a n : ℤ) = A035246 (n + 1)

end A035246

/-! ## A035246.P11801774148700695925

`lt[1, A193514(3*n)]`
-/

namespace A035246.P11801774148700695925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193514 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035246.P11801774148700695925

namespace A035246

/-- `lt[1, A193514(3*n)]` -/
def P11801774148700695925.Spec : Prop :=
  ∀ n, (P11801774148700695925.a n : ℤ) = A035246 (n + 1)

end A035246

/-!
# A035247: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -11.

The programs for A035247, the canonical program `A035247.P10025815083580016986` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035247 has offset 1).

The definition of A035247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035247.P10025815083580016986

`record[A028954(n+2)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A035247

/-- `record[A028954(n+2)]` -/
def P10025815083580016986.Spec : Prop :=
  ∀ n, P10025815083580016986.a n = A035247 (n + 1)

theorem P10025815083580016986.correct : P10025815083580016986.Spec := by
  intro n
  simp only [A035247, Nat.add_sub_cancel]

end A035247

/-! ## A035247.P1357919085866911511

`eq[2, gcd(22, A013973(n))]`
-/

namespace A035247.P1357919085866911511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 22 (A013973 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035247.P1357919085866911511

namespace A035247

/-- `eq[2, gcd(22, A013973(n))]` -/
def P1357919085866911511.Spec : Prop :=
  ∀ n, (P1357919085866911511.a n : ℤ) = A035247 (n + 1)

end A035247

/-! ## A035247.P18315740934382975179

`lt[0, A035179(n+1)]+1`
-/

namespace A035247.P18315740934382975179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035247.P18315740934382975179

namespace A035247

/-- `lt[0, A035179(n+1)]+1` -/
def P18315740934382975179.Spec : Prop :=
  ∀ n, (P18315740934382975179.a n : ℤ) = A035247 (n + 1)

end A035247

/-! ## A035247.P17592875267771029116

`record[gcd(n+1, val(A001160(n+1), 11))]`
-/

namespace A035247.P17592875267771029116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (SequenceMachineLib.valuation (A001160 (n + 1)).toNat 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035247.P17592875267771029116

namespace A035247

/-- `record[gcd(n+1, val(A001160(n+1), 11))]` -/
def P17592875267771029116.Spec : Prop :=
  ∀ n, (P17592875267771029116.a n : ℤ) = A035247 (n + 1)

end A035247

/-! ## A035247.P537631571910800839

`lt[1, A028609(n)]`
-/

namespace A035247.P537631571910800839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035247.P537631571910800839

namespace A035247

/-- `lt[1, A028609(n)]` -/
def P537631571910800839.Spec : Prop :=
  ∀ n, (P537631571910800839.a n : ℤ) = A035247 (n + 1)

end A035247

/-! ## A035247.P2766813622851849078

`eq[1, A019431(A028609(n)²)]`
-/

namespace A035247.P2766813622851849078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (A028609 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035247.P2766813622851849078

namespace A035247

/-- `eq[1, A019431(A028609(n)²)]` -/
def P2766813622851849078.Spec : Prop :=
  ∀ n, (P2766813622851849078.a n : ℤ) = A035247 (n + 1)

end A035247

/-! ## A035247.P12096881335534205142

`eq[1, A043545(A028609(n)²)]`
-/

namespace A035247.P12096881335534205142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A028609 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035247.P12096881335534205142

namespace A035247

/-- `eq[1, A043545(A028609(n)²)]` -/
def P12096881335534205142.Spec : Prop :=
  ∀ n, (P12096881335534205142.a n : ℤ) = A035247 (n + 1)

end A035247

/-! ## A035247.P9631444769186122093

`eq[2, A271419(A028609(n)+2)]`
-/

namespace A035247.P9631444769186122093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (A028609 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035247.P9631444769186122093

namespace A035247

/-- `eq[2, A271419(A028609(n)+2)]` -/
def P9631444769186122093.Spec : Prop :=
  ∀ n, (P9631444769186122093.a n : ℤ) = A035247 (n + 1)

end A035247

/-! ## A035247.P14631496199846862701

`eq[A000007(n), A000007(A028609(n))]`
-/

namespace A035247.P14631496199846862701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A028609 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035247.P14631496199846862701

namespace A035247

/-- `eq[A000007(n), A000007(A028609(n))]` -/
def P14631496199846862701.Spec : Prop :=
  ∀ n, (P14631496199846862701.a n : ℤ) = A035247 (n + 1)

end A035247

/-! ## A035247.P6323942705947755871

`eq[A000038(n), A000038(A028609(n))]`
-/

namespace A035247.P6323942705947755871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A028609 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035247.P6323942705947755871

namespace A035247

/-- `eq[A000038(n), A000038(A028609(n))]` -/
def P6323942705947755871.Spec : Prop :=
  ∀ n, (P6323942705947755871.a n : ℤ) = A035247 (n + 1)

end A035247

/-! ## A035247.P11928122421736107958

`eq[A019431(A028609(n)), A057427(n)]`
-/

namespace A035247.P11928122421736107958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (A028609 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035247.P11928122421736107958

namespace A035247

/-- `eq[A019431(A028609(n)), A057427(n)]` -/
def P11928122421736107958.Spec : Prop :=
  ∀ n, (P11928122421736107958.a n : ℤ) = A035247 (n + 1)

end A035247

/-! ## A035247.P8755920748542085819

`lt[1, A028953(2*n)]/2`
-/

namespace A035247.P8755920748542085819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A035247.P8755920748542085819

namespace A035247

/-- `lt[1, A028953(2*n)]/2` -/
def P8755920748542085819.Spec : Prop :=
  ∀ n, P8755920748542085819.a n = (A035247 (n + 1) : ℚ)

end A035247

/-! ## A035247.P15008064079503128503

`lt[1, A033723(2*n)]/2`
-/

namespace A035247.P15008064079503128503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033723 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A035247.P15008064079503128503

namespace A035247

/-- `lt[1, A033723(2*n)]/2` -/
def P15008064079503128503.Spec : Prop :=
  ∀ n, P15008064079503128503.a n = (A035247 (n + 1) : ℚ)

end A035247

/-! ## A035247.P1986023416067495381

`lt[0, A028953(A008574(n))]`
-/

namespace A035247.P1986023416067495381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035247.P1986023416067495381

namespace A035247

/-- `lt[0, A028953(A008574(n))]` -/
def P1986023416067495381.Spec : Prop :=
  ∀ n, (P1986023416067495381.a n : ℤ) = A035247 (n + 1)

end A035247

/-! ## A035247.P10135120461214539001

`eq[1, A019431(n*A028609(n))]`
-/

namespace A035247.P10135120461214539001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 ((n : ℤ) * A028609 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035247.P10135120461214539001

namespace A035247

/-- `eq[1, A019431(n*A028609(n))]` -/
def P10135120461214539001.Spec : Prop :=
  ∀ n, (P10135120461214539001.a n : ℤ) = A035247 (n + 1)

end A035247

/-! ## A035247.P16149987788773174884

`eq[1, A043545(n*A028609(n))]`
-/

namespace A035247.P16149987788773174884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 ((n : ℤ) * A028609 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035247.P16149987788773174884

namespace A035247

/-- `eq[1, A043545(n*A028609(n))]` -/
def P16149987788773174884.Spec : Prop :=
  ∀ n, (P16149987788773174884.a n : ℤ) = A035247 (n + 1)

end A035247

/-! ## A035247.P469678794106350801

`eq[1, A057427(n*A028609(n))]`
-/

namespace A035247.P469678794106350801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) * A028609 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035247.P469678794106350801

namespace A035247

/-- `eq[1, A057427(n*A028609(n))]` -/
def P469678794106350801.Spec : Prop :=
  ∀ n, (P469678794106350801.a n : ℤ) = A035247 (n + 1)

end A035247

/-!
# A035248: Indices of nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -7 (A035182).

The programs for A035248, there is no canonical definition to state claims against.
-/

/-! ## A035248.P9701766772561602399

`record[A028951(n+2)]`
-/

namespace A035248.P9701766772561602399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028951 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035248.P9701766772561602399

/-! ## A035248.P2497487219157401889

`lt[0, A035162(n+1)]+1`
-/

namespace A035248.P2497487219157401889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035248.P2497487219157401889

/-! ## A035248.P7265160589096235269

`lt[0, A035182(n+1)]+1`
-/

namespace A035248.P7265160589096235269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035248.P7265160589096235269

/-! ## A035248.P15823721333151193454

`lt[0, A352563(n+1)]+1`
-/

namespace A035248.P15823721333151193454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352563 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035248.P15823721333151193454

/-! ## A035248.P5085398968514776898

`lt[1, A002652(n)]`
-/

namespace A035248.P5085398968514776898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035248.P5085398968514776898

/-! ## A035248.P11615654359813464791

`eq[1, A019428(A002652(n)²)]`
-/

namespace A035248.P11615654359813464791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A002652 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035248.P11615654359813464791

/-! ## A035248.P5857157338804554444

`eq[1, A019429(A002652(n)²)]`
-/

namespace A035248.P5857157338804554444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A002652 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035248.P5857157338804554444

/-! ## A035248.P3552994075848418599

`eq[1, A043545(A002652(n)²)]`
-/

namespace A035248.P3552994075848418599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A002652 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035248.P3552994075848418599

/-! ## A035248.P4433001783811656562

`eq[1, A208645(A002652(n)²)]`
-/

namespace A035248.P4433001783811656562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A002652 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035248.P4433001783811656562

/-! ## A035248.P13566679581058689790

`eq[2, A002448(A002652(n)²)]`
-/

namespace A035248.P13566679581058689790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A002652 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035248.P13566679581058689790

/-! ## A035248.P10987627982809716429

`eq[2, A107279(A002652(n)²)]`
-/

namespace A035248.P10987627982809716429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A002652 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035248.P10987627982809716429

/-! ## A035248.P5706417704870540275

`eq[1, A208645(3*A002652(n))]`
-/

namespace A035248.P5706417704870540275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (3 * A002652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035248.P5706417704870540275

/-! ## A035248.P2704589282468529029

`eq[A019428(A002652(n)), A019428(2*n)]`
-/

namespace A035248.P2704589282468529029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A002652 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035248.P2704589282468529029

/-! ## A035248.P7309819584279104909

`eq[A019429(A002652(n)), A019429(2*n)]`
-/

namespace A035248.P7309819584279104909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A002652 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035248.P7309819584279104909

/-! ## A035248.P3980977555721705653

`eq[A019428(A002652(n)), A019428(n)]/2`
-/

namespace A035248.P3980977555721705653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A002652 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A035248.P3980977555721705653

/-! ## A035248.P9494934061703331376

`eq[A019429(A002652(n)), A019429(n)]/2`
-/

namespace A035248.P9494934061703331376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A002652 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A035248.P9494934061703331376

/-! ## A035248.P11644159675337846234

`lt[1, A033719(2*n)]/2`
-/

namespace A035248.P11644159675337846234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A035248.P11644159675337846234

/-! ## A035248.P10741818633090127259

`record[A032742(A188112(n+2))]`
-/

namespace A035248.P10741818633090127259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A188112 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035248.P10741818633090127259

/-! ## A035248.P8283263976390404202

`eq[1, gcd(7, A002408(n))]`
-/

namespace A035248.P8283263976390404202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A002408 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035248.P8283263976390404202

/-! ## A035248.P7506006093422979636

`eq[1, A019428(n*A002652(n))]`
-/

namespace A035248.P7506006093422979636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 ((n : ℤ) * A002652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035248.P7506006093422979636

/-!
# A035249: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -5.

The programs for A035249, the canonical program `A035249.P5089818469351572190` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035249 has offset 1).

The definition of A035249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035249.P12052100842729124060

`lt[0, A035145(n+1)]+1`
-/

namespace A035249.P12052100842729124060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035145 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035249.P12052100842729124060

namespace A035249

/-- `lt[0, A035145(n+1)]+1` -/
def P12052100842729124060.Spec : Prop :=
  ∀ n, (P12052100842729124060.a n : ℤ) = A035249 (n + 1)

end A035249

/-! ## A035249.P5089818469351572190

`lt[0, A035183(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A035249

/-- `lt[0, A035183(n+1)]+1` -/
def P5089818469351572190.Spec : Prop :=
  ∀ n, (P5089818469351572190.a n : ℤ) = A035249 (n + 1)

theorem P5089818469351572190.correct : P5089818469351572190.Spec := by
  intro n
  simp only [A035249, Nat.add_sub_cancel]

end A035249

/-! ## A035249.P7635745633975419458

`lt[0, A035183(A000038(n)+n)]`
-/

namespace A035249.P7635745633975419458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035249.P7635745633975419458

namespace A035249

/-- `lt[0, A035183(A000038(n)+n)]` -/
def P7635745633975419458.Spec : Prop :=
  ∀ n, (P7635745633975419458.a n : ℤ) = A035249 (n + 1)

end A035249

/-! ## A035249.P280975781495834693

`lt[0, A035183(abs(n-A000038(n)))]`
-/

namespace A035249.P280975781495834693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035249.P280975781495834693

namespace A035249

/-- `lt[0, A035183(abs(n-A000038(n)))]` -/
def P280975781495834693.Spec : Prop :=
  ∀ n, (P280975781495834693.a n : ℤ) = A035249 (n + 1)

end A035249

/-! ## A035249.P14856304074120048662

`lt[0, (lcm(A089045(n+1), A143323(n+1))/2)²]+1`
-/

namespace A035249.P14856304074120048662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm (A089045 (n + 1)) (A143323 (n + 1)) : ℚ) / 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A035249.P14856304074120048662

namespace A035249

/-- `lt[0, (lcm(A089045(n+1), A143323(n+1))/2)²]+1` -/
def P14856304074120048662.Spec : Prop :=
  ∀ n, (P14856304074120048662.a n : ℤ) = A035249 (n + 1)

end A035249

/-!
# A035250: Number of primes between n and 2n (inclusive).

The programs for A035250, the canonical program `A035250.P17429527738898511012` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035250 has offset 1).

The definition of A035250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035250.P17429527738898511012

`1-A307989(n+1)+n`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035250

/-- `1-A307989(n+1)+n` -/
def P17429527738898511012.Spec : Prop :=
  ∀ n, P17429527738898511012.a n = A035250 (n + 1)

theorem P17429527738898511012.correct : P17429527738898511012.Spec := by
  intro n
  simp only [A035250, Nat.add_sub_cancel]

end A035250

/-! ## A035250.P4727990376131543888

`A056171(comp[2*(n+1)]+2)`
-/

namespace A035250.P4727990376131543888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A035250.P4727990376131543888

namespace A035250

/-- `A056171(comp[2*(n+1)]+2)` -/
def P4727990376131543888.Spec : Prop :=
  ∀ n, P4727990376131543888.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P17047498814680418747

`A028310(A056171(2*n+1))`
-/

namespace A035250.P17047498814680418747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A056171 (2 * n + 1)).toNat

end

end A035250.P17047498814680418747

namespace A035250

/-- `A028310(A056171(2*n+1))` -/
def P17047498814680418747.Spec : Prop :=
  ∀ n, P17047498814680418747.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P7684827548573802786

`A008619(n)-A226983(n+1)`
-/

namespace A035250.P7684827548573802786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A226983 (n + 1)

end

end A035250.P7684827548573802786

namespace A035250

/-- `A008619(n)-A226983(n+1)` -/
def P7684827548573802786.Spec : Prop :=
  ∀ n, P7684827548573802786.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P11475573369484522752

`A099802(n+1)-A230980(n)`
-/

namespace A035250.P11475573369484522752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) - A230980 n

end

end A035250.P11475573369484522752

namespace A035250

/-- `A099802(n+1)-A230980(n)` -/
def P11475573369484522752.Spec : Prop :=
  ∀ n, P11475573369484522752.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P3307557265857479001

`∑[A101264(n)+1]-A095117(n)`
-/

namespace A035250.P3307557265857479001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A095117 n

end

end A035250.P3307557265857479001

namespace A035250

/-- `∑[A101264(n)+1]-A095117(n)` -/
def P3307557265857479001.Spec : Prop :=
  ∀ n, P3307557265857479001.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P10701895323436757819

`A108954(n+1)+A010051(n+1)`
-/

namespace A035250.P10701895323436757819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) + A010051 (n + 1)

end

end A035250.P10701895323436757819

namespace A035250

/-- `A108954(n+1)+A010051(n+1)` -/
def P10701895323436757819.Spec : Prop :=
  ∀ n, P10701895323436757819.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P13915503138681739619

`A080339(n+1)+A060715(n+1)`
-/

namespace A035250.P13915503138681739619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) + A060715 (n + 1)

end

end A035250.P13915503138681739619

namespace A035250

/-- `A080339(n+1)+A060715(n+1)` -/
def P13915503138681739619.Spec : Prop :=
  ∀ n, P13915503138681739619.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P15722444829527738680

`A065475(n+1)-A075084(n+1)`
-/

namespace A035250.P15722444829527738680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) - A075084 (n + 1)

end

end A035250.P15722444829527738680

namespace A035250

/-- `A065475(n+1)-A075084(n+1)` -/
def P15722444829527738680.Spec : Prop :=
  ∀ n, P15722444829527738680.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P3811457617973955044

`A004526(n)+1-A226983(n+1)`
-/

namespace A035250.P3811457617973955044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (1 - A226983 (n + 1))

end

end A035250.P3811457617973955044

namespace A035250

/-- `A004526(n)+1-A226983(n+1)` -/
def P3811457617973955044.Spec : Prop :=
  ∀ n, P3811457617973955044.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P17144248209434113838

`A086936(n+1)-A210469(n+1)`
-/

namespace A035250.P17144248209434113838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086936 (n + 1) - A210469 (n + 1)

end

end A035250.P17144248209434113838

namespace A035250

/-- `A086936(n+1)-A210469(n+1)` -/
def P17144248209434113838.Spec : Prop :=
  ∀ n, P17144248209434113838.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P10954296280183693701

`A014683(n+1)-A376759(n+1)`
-/

namespace A035250.P10954296280183693701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (n + 1) - A376759 (n + 1)

end

end A035250.P10954296280183693701

namespace A035250

/-- `A014683(n+1)-A376759(n+1)` -/
def P10954296280183693701.Spec : Prop :=
  ∀ n, P10954296280183693701.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P12564959224493025074

`A056171(2*n+1)+A000007(n)`
-/

namespace A035250.P12564959224493025074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * n + 1) + A000007 n

end

end A035250.P12564959224493025074

namespace A035250

/-- `A056171(2*n+1)+A000007(n)` -/
def P12564959224493025074.Spec : Prop :=
  ∀ n, P12564959224493025074.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P13027202271674194020

`A000720(2*(n+1))-A230980(n)`
-/

namespace A035250.P13027202271674194020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) - A230980 n

end

end A035250.P13027202271674194020

namespace A035250

/-- `A000720(2*(n+1))-A230980(n)` -/
def P13027202271674194020.Spec : Prop :=
  ∀ n, P13027202271674194020.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P1734951702157216094

`A056171(2*(n+1))+A010051(n+1)`
-/

namespace A035250.P1734951702157216094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * (n + 1)) + A010051 (n + 1)

end

end A035250.P1734951702157216094

namespace A035250

/-- `A056171(2*(n+1))+A010051(n+1)` -/
def P1734951702157216094.Spec : Prop :=
  ∀ n, P1734951702157216094.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P8795590947570787856

`A099802(n+1)-∑[char[A000040(n+1)]]`
-/

namespace A035250.P8795590947570787856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A035250.P8795590947570787856

namespace A035250

/-- `A099802(n+1)-∑[char[A000040(n+1)]]` -/
def P8795590947570787856.Spec : Prop :=
  ∀ n, P8795590947570787856.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P11142859698124998214

`A108954(n+1)+char[A000040(n+1)-1]`
-/

namespace A035250.P11142859698124998214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A035250.P11142859698124998214

namespace A035250

/-- `A108954(n+1)+char[A000040(n+1)-1]` -/
def P11142859698124998214.Spec : Prop :=
  ∀ n, P11142859698124998214.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P14717219130254464217

`A000720(2*(n+1))-∑[char[A006530(n+2)]]`
-/

namespace A035250.P14717219130254464217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A035250.P14717219130254464217

namespace A035250

/-- `A000720(2*(n+1))-∑[char[A006530(n+2)]]` -/
def P14717219130254464217.Spec : Prop :=
  ∀ n, P14717219130254464217.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P7004030399783951745

`A000720(2*(n+1))-∑[char[A020639(n+2)]]`
-/

namespace A035250.P7004030399783951745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A035250.P7004030399783951745

namespace A035250

/-- `A000720(2*(n+1))-∑[char[A020639(n+2)]]` -/
def P7004030399783951745.Spec : Prop :=
  ∀ n, P7004030399783951745.a n = A035250 (n + 1)

end A035250

/-! ## A035250.P3476422760072728276

`A000720(n+1)+A108954(n+1)-A230980(n)`
-/

namespace A035250.P3476422760072728276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A108954 (n + 1) - A230980 n)

end

end A035250.P3476422760072728276

namespace A035250

/-- `A000720(n+1)+A108954(n+1)-A230980(n)` -/
def P3476422760072728276.Spec : Prop :=
  ∀ n, P3476422760072728276.a n = A035250 (n + 1)

end A035250

/-!
# A035251: Positive numbers of the form x^2 - 2y^2 with integers x, y.

The programs for A035251, the canonical program `A035251.P7268071419077795163` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035251 has offset 1).

The definition of A035251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035251.P7268071419077795163

`record[(n+1)%(A139608(n)^A035185(n+1))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A035251

/-- `record[(n+1)%(A139608(n)^A035185(n+1))]` -/
def P7268071419077795163.Spec : Prop :=
  ∀ n, P7268071419077795163.a n = A035251 (n + 1)

theorem P7268071419077795163.correct : P7268071419077795163.Spec := by
  intro n
  simp only [A035251, Nat.add_sub_cancel]

end A035251

/-! ## A035251.P14124751305985675734

`eq[1, char[A082532(n+1)]]`
-/

namespace A035251.P14124751305985675734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035251.P14124751305985675734

namespace A035251

/-- `eq[1, char[A082532(n+1)]]` -/
def P14124751305985675734.Spec : Prop :=
  ∀ n, (P14124751305985675734.a n : ℤ) = A035251 (n + 1)

end A035251

/-! ## A035251.P7068331214647595815

`lt[n*char[A232531(n+1)], n]`
-/

namespace A035251.P7068331214647595815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232531 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A035251.P7068331214647595815

namespace A035251

/-- `lt[n*char[A232531(n+1)], n]` -/
def P7068331214647595815.Spec : Prop :=
  ∀ n, (P7068331214647595815.a n : ℤ) = A035251 (n + 1)

end A035251

/-! ## A035251.P10497945945831549532

`lt[A000007(n), A035185(A000007(n)+n)]`
-/

namespace A035251.P10497945945831549532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035251.P10497945945831549532

namespace A035251

/-- `lt[A000007(n), A035185(A000007(n)+n)]` -/
def P10497945945831549532.Spec : Prop :=
  ∀ n, (P10497945945831549532.a n : ℤ) = A035251 (n + 1)

end A035251

/-! ## A035251.P15911504082706594091

`lt[A000007(n), A035185(A004277(n)-n)]`
-/

namespace A035251.P15911504082706594091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035251.P15911504082706594091

namespace A035251

/-- `lt[A000007(n), A035185(A004277(n)-n)]` -/
def P15911504082706594091.Spec : Prop :=
  ∀ n, (P15911504082706594091.a n : ℤ) = A035251 (n + 1)

end A035251

/-! ## A035251.P17221086560235101985

`lt[A000007(n), A035185(A004277(n))]`
-/

namespace A035251.P17221086560235101985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035251.P17221086560235101985

namespace A035251

/-- `lt[A000007(n), A035185(A004277(n))]` -/
def P17221086560235101985.Spec : Prop :=
  ∀ n, (P17221086560235101985.a n : ℤ) = A035251 (n + 1)

end A035251

/-! ## A035251.P7195689034306853377

`record[A054576(A242663(n+2))]`
-/

namespace A035251.P7195689034306853377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A242663 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035251.P7195689034306853377

namespace A035251

/-- `record[A054576(A242663(n+2))]` -/
def P7195689034306853377.Spec : Prop :=
  ∀ n, P7195689034306853377.a n = A035251 (n + 1)

end A035251

/-! ## A035251.P2442488162789463543

`record[A032742(A065033(A242663(n+1)))]`
-/

namespace A035251.P2442488162789463543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A065033 (A242663 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035251.P2442488162789463543

namespace A035251

/-- `record[A032742(A065033(A242663(n+1)))]` -/
def P2442488162789463543.Spec : Prop :=
  ∀ n, P2442488162789463543.a n = A035251 (n + 1)

end A035251

/-!
# A035252: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 3.

The programs for A035252, the canonical program `A035252.P13797268032333054032` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035252 has offset 1).

The definition of A035252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035252.P13797268032333054032

`lt[0, A035186(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A035252

/-- `lt[0, A035186(n+1)]+1` -/
def P13797268032333054032.Spec : Prop :=
  ∀ n, (P13797268032333054032.a n : ℤ) = A035252 (n + 1)

theorem P13797268032333054032.correct : P13797268032333054032.Spec := by
  intro n
  simp only [A035252, Nat.add_sub_cancel]

end A035252

/-! ## A035252.P2942093797895951789

`lt[0, A035186(A000038(n)+n)]`
-/

namespace A035252.P2942093797895951789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035252.P2942093797895951789

namespace A035252

/-- `lt[0, A035186(A000038(n)+n)]` -/
def P2942093797895951789.Spec : Prop :=
  ∀ n, (P2942093797895951789.a n : ℤ) = A035252 (n + 1)

end A035252

/-! ## A035252.P9682688780692157927

`lt[1/2, ∑{d}[n, A091338(#)]]`
-/

namespace A035252.P9682688780692157927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A091338 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A035252.P9682688780692157927

namespace A035252

/-- `lt[1/2, ∑{d}[n, A091338(#)]]` -/
def P9682688780692157927.Spec : Prop :=
  ∀ n, (P9682688780692157927.a n : ℤ) = A035252 (n + 1)

end A035252

/-! ## A035252.P7457155293849585066

`lt[1, A085079(∑{d}[n, A091338(#)]+1)]`
-/

namespace A035252.P7457155293849585066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (∑ d ∈ Nat.divisors (f3 n), A091338 d + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035252.P7457155293849585066

namespace A035252

/-- `lt[1, A085079(∑{d}[n, A091338(#)]+1)]` -/
def P7457155293849585066.Spec : Prop :=
  ∀ n, (P7457155293849585066.a n : ℤ) = A035252 (n + 1)

end A035252

/-! ## A035252.P15825436101309705297

`eq[1, A000040(∑{d}[n, A091338(#)]+1)%2]`
-/

namespace A035252.P15825436101309705297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (∑ d ∈ Nat.divisors (f3 n), A091338 d + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035252.P15825436101309705297

namespace A035252

/-- `eq[1, A000040(∑{d}[n, A091338(#)]+1)%2]` -/
def P15825436101309705297.Spec : Prop :=
  ∀ n, (P15825436101309705297.a n : ℤ) = A035252 (n + 1)

end A035252

/-!
# A035253: Second differences are 2,2,1,2,1,1,2,1,1,1,2,1,1,1,1,2,1,1,1,1,1,2,.. (A035214).

The programs for A035253, the canonical program `A035253.P11915159649385761388` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035253 has offset 0).

The definition of A035253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035253.P11915159649385761388

`A035254(n-1)+a(n-1)` with `a(0)=4`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A035253

/-- `A035254(n-1)+a(n-1)` -/
def P11915159649385761388.Spec : Prop :=
  ∀ n, P11915159649385761388.a n = A035253 n

theorem P11915159649385761388.correct : P11915159649385761388.Spec := by
  intro n
  simp only [A035253]

end A035253

/-! ## A035253.P10321928027275673812

`comp[A000124(n+1)]+a(n-1)-4` with `a(0)=4`
-/

namespace A035253.P10321928027275673812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (a (n - 1) - 4)

end

end A035253.P10321928027275673812

namespace A035253

/-- `comp[A000124(n+1)]+a(n-1)-4` -/
def P10321928027275673812.Spec : Prop :=
  ∀ n, P10321928027275673812.a n = A035253 n

end A035253

/-!
# A035254: First differences of A035253.

The programs for A035254, the canonical program `A035254.P2200993960505381021` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035254 has offset 0).

The definition of A035254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035254.P9802601379500453569

`comp[∑[n+1]]-3`
-/

namespace A035254.P9802601379500453569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 3

end

end A035254.P9802601379500453569

namespace A035254

/-- `comp[∑[n+1]]-3` -/
def P9802601379500453569.Spec : Prop :=
  ∀ n, P9802601379500453569.a n = A035254 n

end A035254

/-! ## A035254.P7454189358507918102

`round(sqrt(2*n)+gcd(n, 2*n)-3)`
-/

namespace A035254.P7454189358507918102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ) + ((Nat.gcd n (2 * n) : ℤ) - 3 : ℝ))

end

end A035254.P7454189358507918102

namespace A035254

/-- `round(sqrt(2*n)+gcd(n, 2*n)-3)` -/
def P7454189358507918102.Spec : Prop :=
  ∀ n, P7454189358507918102.a n = A035254 n

end A035254

/-! ## A035254.P2200993960505381021

`record[n-(A127648(n)+2)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035254

/-- `record[n-(A127648(n)+2)]` -/
def P2200993960505381021.Spec : Prop :=
  ∀ n, P2200993960505381021.a n = A035254 n

theorem P2200993960505381021.correct : P2200993960505381021.Spec := by
  intro n
  simp only [A035254]

end A035254

/-! ## A035254.P2682058901117457227

`record[n-(A131431(n)+2)]`
-/

namespace A035254.P2682058901117457227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A131431 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P2682058901117457227

namespace A035254

/-- `record[n-(A131431(n)+2)]` -/
def P2682058901117457227.Spec : Prop :=
  ∀ n, P2682058901117457227.a n = A035254 n

end A035254

/-! ## A035254.P12880689947440745901

`record[n-(A174712(n)+2)]`
-/

namespace A035254.P12880689947440745901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A174712 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P12880689947440745901

namespace A035254

/-- `record[n-(A174712(n)+2)]` -/
def P12880689947440745901.Spec : Prop :=
  ∀ n, P12880689947440745901.a n = A035254 n

end A035254

/-! ## A035254.P8454555912698295041

`ceil(log2(∑[A007318(n)])+n-3)`
-/

namespace A035254.P8454555912698295041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + ((n : ℤ) - 3 : ℝ)⌉

end

end A035254.P8454555912698295041

namespace A035254

/-- `ceil(log2(∑[A007318(n)])+n-3)` -/
def P8454555912698295041.Spec : Prop :=
  ∀ n, P8454555912698295041.a n = A035254 n

end A035254

/-! ## A035254.P11092496302894038915

`Δ[A035253(n)]`
-/

namespace A035254.P11092496302894038915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035254.P11092496302894038915

namespace A035254

/-- `Δ[A035253(n)]` -/
def P11092496302894038915.Spec : Prop :=
  ∀ n, P11092496302894038915.a n = A035254 n

end A035254

/-! ## A035254.P17734162922362445637

`record[n-(A131427(n)+2)]`
-/

namespace A035254.P17734162922362445637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A131427 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P17734162922362445637

namespace A035254

/-- `record[n-(A131427(n)+2)]` -/
def P17734162922362445637.Spec : Prop :=
  ∀ n, P17734162922362445637.a n = A035254 n

end A035254

/-! ## A035254.P3898659667034039562

`record[n-(A130123(n)+2)]`
-/

namespace A035254.P3898659667034039562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A130123 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P3898659667034039562

namespace A035254

/-- `record[n-(A130123(n)+2)]` -/
def P3898659667034039562.Spec : Prop :=
  ∀ n, P3898659667034039562.a n = A035254 n

end A035254

/-! ## A035254.P1319330923487271263

`record[n-(A134309(n)+2)]`
-/

namespace A035254.P1319330923487271263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A134309 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P1319330923487271263

namespace A035254

/-- `record[n-(A134309(n)+2)]` -/
def P1319330923487271263.Spec : Prop :=
  ∀ n, P1319330923487271263.a n = A035254 n

end A035254

/-! ## A035254.P15308300659371848344

`record[n-(A134402(n)+2)]`
-/

namespace A035254.P15308300659371848344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A134402 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P15308300659371848344

namespace A035254

/-- `record[n-(A134402(n)+2)]` -/
def P15308300659371848344.Spec : Prop :=
  ∀ n, P15308300659371848344.a n = A035254 n

end A035254

/-! ## A035254.P14878143846577858483

`record[n-(A136521(n)+2)]`
-/

namespace A035254.P14878143846577858483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A136521 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P14878143846577858483

namespace A035254

/-- `record[n-(A136521(n)+2)]` -/
def P14878143846577858483.Spec : Prop :=
  ∀ n, P14878143846577858483.a n = A035254 n

end A035254

/-! ## A035254.P5389473361011878369

`record[n-(A127773(n+1)+2)]`
-/

namespace A035254.P5389473361011878369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A127773 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P5389473361011878369

namespace A035254

/-- `record[n-(A127773(n+1)+2)]` -/
def P5389473361011878369.Spec : Prop :=
  ∀ n, P5389473361011878369.a n = A035254 n

end A035254

/-! ## A035254.P18090900594686811228

`record[n-(A127775(n+1)+2)]`
-/

namespace A035254.P18090900594686811228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A127775 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P18090900594686811228

namespace A035254

/-- `record[n-(A127775(n+1)+2)]` -/
def P18090900594686811228.Spec : Prop :=
  ∀ n, P18090900594686811228.a n = A035254 n

end A035254

/-! ## A035254.P10694571044595558980

`record[n-(A131436(n+1)+2)]`
-/

namespace A035254.P10694571044595558980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A131436 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P10694571044595558980

namespace A035254

/-- `record[n-(A131436(n+1)+2)]` -/
def P10694571044595558980.Spec : Prop :=
  ∀ n, P10694571044595558980.a n = A035254 n

end A035254

/-! ## A035254.P2389939933774571982

`record[n-(A140579(n+1)+2)]`
-/

namespace A035254.P2389939933774571982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A140579 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P2389939933774571982

namespace A035254

/-- `record[n-(A140579(n+1)+2)]` -/
def P2389939933774571982.Spec : Prop :=
  ∀ n, P2389939933774571982.a n = A035254 n

end A035254

/-! ## A035254.P393177274057354218

`record[n-A061885(Δ[A061885(n)])]`
-/

namespace A035254.P393177274057354218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A061885 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P393177274057354218

namespace A035254

/-- `record[n-A061885(Δ[A061885(n)])]` -/
def P393177274057354218.Spec : Prop :=
  ∀ n, P393177274057354218.a n = A035254 n

end A035254

/-! ## A035254.P15530558142218059440

`record[n-(A130296(n+1)+2)]`
-/

namespace A035254.P15530558142218059440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A130296 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P15530558142218059440

namespace A035254

/-- `record[n-(A130296(n+1)+2)]` -/
def P15530558142218059440.Spec : Prop :=
  ∀ n, P15530558142218059440.a n = A035254 n

end A035254

/-! ## A035254.P15944517429364792762

`A023446(comp[∑[n+1]]+1)`
-/

namespace A035254.P15944517429364792762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A035254.P15944517429364792762

namespace A035254

/-- `A023446(comp[∑[n+1]]+1)` -/
def P15944517429364792762.Spec : Prop :=
  ∀ n, P15944517429364792762.a n = A035254 n

end A035254

/-! ## A035254.P4153655158481115541

`record[(A130724(n+1)-A004767(n))*A010054(n)+n-3]`
-/

namespace A035254.P4153655158481115541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130724 (n + 1) - A004767 n) * A010054 n + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035254.P4153655158481115541

namespace A035254

/-- `record[(A130724(n+1)-A004767(n))*A010054(n)+n-3]` -/
def P4153655158481115541.Spec : Prop :=
  ∀ n, P4153655158481115541.a n = A035254 n

end A035254

/-!
# A035255: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 11.

The programs for A035255, there is no canonical definition to state claims against.
-/

/-! ## A035255.P17298330490080622628

`eq[0, A000007(A035193(n+1))]+1`
-/

namespace A035255.P17298330490080622628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A035193 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A035255.P17298330490080622628

/-! ## A035255.P6363292127282492305

`record[A000027(n+1)*A178334(A035193(n+1))]`
-/

namespace A035255.P6363292127282492305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A178334 (A035193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035255.P6363292127282492305

/-! ## A035255.P14468727063801740721

`record[(A005408(n)-n)*A178334(A035193(n+1))]`
-/

namespace A035255.P14468727063801740721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ)) * A178334 (A035193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035255.P14468727063801740721

/-! ## A035255.P9476827647851429519

`lt[A000007(n), A035193(A028310(n))]`
-/

namespace A035255.P9476827647851429519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035255.P9476827647851429519

/-! ## A035255.P6477184763657710157

`lt[A000007(n), A035193(A000007(n)+n)]`
-/

namespace A035255.P6477184763657710157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035255.P6477184763657710157

/-! ## A035255.P14535378661499885319

`lt[A035193(n+1), n*A035193(A028310(n))]`
-/

namespace A035255.P14535378661499885319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035193 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035255.P14535378661499885319

/-! ## A035255.P17674844673063836703

`record[A008619(2*n)*A178334(A035193(n+1))]`
-/

namespace A035255.P17674844673063836703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A178334 (A035193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035255.P17674844673063836703

/-!
# A035256: Positive integers of the form x^2+3xy-y^2.

The programs for A035256, the canonical program `A035256.P18313884839867375401` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035256 has offset 1).

The definition of A035256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035256.P18313884839867375401

`lt[0, ∑{d}[n+1, #^6]%13]+1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035256

/-- `lt[0, ∑{d}[n+1, #^6]%13]+1` -/
def P18313884839867375401.Spec : Prop :=
  ∀ n, (P18313884839867375401.a n : ℤ) = A035256 (n + 1)

theorem P18313884839867375401.correct : P18313884839867375401.Spec := by
  intro n
  simp only [A035256, Nat.add_sub_cancel]

end A035256

/-! ## A035256.P17397684359419769488

`lt[A000007(A035195(n+1)), 1]+1`
-/

namespace A035256.P17397684359419769488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A035195 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A035256.P17397684359419769488

namespace A035256

/-- `lt[A000007(A035195(n+1)), 1]+1` -/
def P17397684359419769488.Spec : Prop :=
  ∀ n, (P17397684359419769488.a n : ℤ) = A035256 (n + 1)

end A035256

/-! ## A035256.P6689724262794582288

`lt[C(2, (n+1)²), A035195(A028310(n))]`
-/

namespace A035256.P6689724262794582288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035256.P6689724262794582288

namespace A035256

/-- `lt[C(2, (n+1)²), A035195(A028310(n))]` -/
def P6689724262794582288.Spec : Prop :=
  ∀ n, (P6689724262794582288.a n : ℤ) = A035256 (n + 1)

end A035256

/-! ## A035256.P636691851141225505

`lt[A000038(n), A035195(A028310(n))]`
-/

namespace A035256.P636691851141225505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035256.P636691851141225505

namespace A035256

/-- `lt[A000038(n), A035195(A028310(n))]` -/
def P636691851141225505.Spec : Prop :=
  ∀ n, (P636691851141225505.a n : ℤ) = A035256 (n + 1)

end A035256

/-! ## A035256.P4358789560295678726

`lt[A000038(n), A035195(A000038(n)+n)]`
-/

namespace A035256.P4358789560295678726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035256.P4358789560295678726

namespace A035256

/-- `lt[A000038(n), A035195(A000038(n)+n)]` -/
def P4358789560295678726.Spec : Prop :=
  ∀ n, (P4358789560295678726.a n : ℤ) = A035256 (n + 1)

end A035256

/-! ## A035256.P15988165891502837371

`lt[A000007(n), A035195(A028310(n))]`
-/

namespace A035256.P15988165891502837371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035256.P15988165891502837371

namespace A035256

/-- `lt[A000007(n), A035195(A028310(n))]` -/
def P15988165891502837371.Spec : Prop :=
  ∀ n, (P15988165891502837371.a n : ℤ) = A035256 (n + 1)

end A035256

/-! ## A035256.P5084781470546629937

`lt[A000007(n), A035195(A000007(n)+n)]`
-/

namespace A035256.P5084781470546629937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035256.P5084781470546629937

namespace A035256

/-- `lt[A000007(n), A035195(A000007(n)+n)]` -/
def P5084781470546629937.Spec : Prop :=
  ∀ n, (P5084781470546629937.a n : ℤ) = A035256 (n + 1)

end A035256

/-! ## A035256.P12546015062382783580

`lt[A035195(n+1), n*A035195(A028310(n))]`
-/

namespace A035256.P12546015062382783580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035195 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035256.P12546015062382783580

namespace A035256

/-- `lt[A035195(n+1), n*A035195(A028310(n))]` -/
def P12546015062382783580.Spec : Prop :=
  ∀ n, (P12546015062382783580.a n : ℤ) = A035256 (n + 1)

end A035256

/-! ## A035256.P13411998714298958697

`lt[1, A035195(A008574(n)-n)]`
-/

namespace A035256.P13411998714298958697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (A008574 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035256.P13411998714298958697

namespace A035256

/-- `lt[1, A035195(A008574(n)-n)]` -/
def P13411998714298958697.Spec : Prop :=
  ∀ n, (P13411998714298958697.a n : ℤ) = A035256 (n + 1)

end A035256

/-! ## A035256.P7386050447143121604

`lt[A000038(n), A035195(A008574(n))]`
-/

namespace A035256.P7386050447143121604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035256.P7386050447143121604

namespace A035256

/-- `lt[A000038(n), A035195(A008574(n))]` -/
def P7386050447143121604.Spec : Prop :=
  ∀ n, (P7386050447143121604.a n : ℤ) = A035256 (n + 1)

end A035256

/-! ## A035256.P13800255408297651022

`lt[A035195(n+1), n*A035195(A008574(n))]`
-/

namespace A035256.P13800255408297651022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035195 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035256.P13800255408297651022

namespace A035256

/-- `lt[A035195(n+1), n*A035195(A008574(n))]` -/
def P13800255408297651022.Spec : Prop :=
  ∀ n, (P13800255408297651022.a n : ℤ) = A035256 (n + 1)

end A035256

/-! ## A035256.P17116258325537072994

`lt[1, A035195(A008574(3*n))]`
-/

namespace A035256.P17116258325537072994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (A008574 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035256.P17116258325537072994

namespace A035256

/-- `lt[1, A035195(A008574(3*n))]` -/
def P17116258325537072994.Spec : Prop :=
  ∀ n, (P17116258325537072994.a n : ℤ) = A035256 (n + 1)

end A035256

/-!
# A035257: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 14.

The programs for A035257, there is no canonical definition to state claims against.
-/

/-! ## A035257.P14782783328628862314

`lt[0, A035196(n+1)]+1`
-/

namespace A035257.P14782783328628862314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035257.P14782783328628862314

/-! ## A035257.P13881297123924144060

`lt[1, A035196(A008706(n))]`
-/

namespace A035257.P13881297123924144060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035196 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035257.P13881297123924144060

/-! ## A035257.P8195178294424809933

`eq[A000007(n), A254377(A158666(n))]`
-/

namespace A035257.P8195178294424809933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A158666 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035257.P8195178294424809933

/-! ## A035257.P11015855659771652772

`eq[A000038(n), A254377(A158666(n))]`
-/

namespace A035257.P11015855659771652772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A158666 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035257.P11015855659771652772

/-! ## A035257.P16447663149868601870

`eq[A000005(n²+1)%2, A254377(A158666(n))]`
-/

namespace A035257.P16447663149868601870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n ^ 2 + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A158666 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035257.P16447663149868601870

/-!
# A035258: Positive integers of the form 2x^2+xy-2y^2 (discriminant 17).

The programs for A035258, the canonical program `A035258.P15411384162313240861` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035258 has offset 1).

The definition of A035258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035258.P15411384162313240861

`lt[1, A035199(n+1)+1]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035258

/-- `lt[1, A035199(n+1)+1]+1` -/
def P15411384162313240861.Spec : Prop :=
  ∀ n, (P15411384162313240861.a n : ℤ) = A035258 (n + 1)

theorem P15411384162313240861.correct : P15411384162313240861.Spec := by
  intro n
  simp only [A035258, Nat.add_sub_cancel]

end A035258

/-! ## A035258.P9239381830073567715

`lt[A000038(A035199(n+1)), 1]+1`
-/

namespace A035258.P9239381830073567715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A035199 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A035258.P9239381830073567715

namespace A035258

/-- `lt[A000038(A035199(n+1)), 1]+1` -/
def P9239381830073567715.Spec : Prop :=
  ∀ n, (P9239381830073567715.a n : ℤ) = A035258 (n + 1)

end A035258

/-! ## A035258.P3339120477075060677

`lt[A000038(n), A035199(A028310(n))]`
-/

namespace A035258.P3339120477075060677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035258.P3339120477075060677

namespace A035258

/-- `lt[A000038(n), A035199(A028310(n))]` -/
def P3339120477075060677.Spec : Prop :=
  ∀ n, (P3339120477075060677.a n : ℤ) = A035258 (n + 1)

end A035258

/-! ## A035258.P9471167218985412537

`lt[A000038(n), A035199(A000038(n)+n)]`
-/

namespace A035258.P9471167218985412537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035258.P9471167218985412537

namespace A035258

/-- `lt[A000038(n), A035199(A000038(n)+n)]` -/
def P9471167218985412537.Spec : Prop :=
  ∀ n, (P9471167218985412537.a n : ℤ) = A035258 (n + 1)

end A035258

/-! ## A035258.P16510115437206943296

`lt[1, A035199(A004277(n))]`
-/

namespace A035258.P16510115437206943296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035258.P16510115437206943296

namespace A035258

/-- `lt[1, A035199(A004277(n))]` -/
def P16510115437206943296.Spec : Prop :=
  ∀ n, (P16510115437206943296.a n : ℤ) = A035258 (n + 1)

end A035258

/-! ## A035258.P1515970887639737178

`lt[1, A035199(A028310(2*n))]`
-/

namespace A035258.P1515970887639737178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035258.P1515970887639737178

namespace A035258

/-- `lt[1, A035199(A028310(2*n))]` -/
def P1515970887639737178.Spec : Prop :=
  ∀ n, (P1515970887639737178.a n : ℤ) = A035258 (n + 1)

end A035258

/-! ## A035258.P17250656996402975258

`lt[1, A035199(A028310(n)+n)]`
-/

namespace A035258.P17250656996402975258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035258.P17250656996402975258

namespace A035258

/-- `lt[1, A035199(A028310(n)+n)]` -/
def P17250656996402975258.Spec : Prop :=
  ∀ n, (P17250656996402975258.a n : ℤ) = A035258 (n + 1)

end A035258

/-! ## A035258.P3554217831971741923

`lt[1, A035199(A008574(n))]`
-/

namespace A035258.P3554217831971741923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035258.P3554217831971741923

namespace A035258

/-- `lt[1, A035199(A008574(n))]` -/
def P3554217831971741923.Spec : Prop :=
  ∀ n, (P3554217831971741923.a n : ℤ) = A035258 (n + 1)

end A035258

/-! ## A035258.P1885850530045486822

`lt[2, A035199(A130824(n)+2)]`
-/

namespace A035258.P1885850530045486822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (A130824 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035258.P1885850530045486822

namespace A035258

/-- `lt[2, A035199(A130824(n)+2)]` -/
def P1885850530045486822.Spec : Prop :=
  ∀ n, (P1885850530045486822.a n : ℤ) = A035258 (n + 1)

end A035258

/-!
# A035259: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 20.

The programs for A035259, the canonical program `A035259.P13691517442612984009` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035259 has offset 1).

The definition of A035259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2785 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035259.P13691517442612984009

`lt[1, a(A035202(n))+2]` with `a(0)=-1, a(1)=2, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A035259

/-- `lt[1, a(A035202(n))+2]` -/
def P13691517442612984009.Spec : Prop :=
  ∀ n, (P13691517442612984009.a n : ℤ) = A035259 (n + 1)

theorem P13691517442612984009.correct : P13691517442612984009.Spec := by
  intro n
  simp only [A035259, Nat.add_sub_cancel]

end A035259

/-! ## A035259.P14632886146925341837

`eq[1, A000010(a(A035202(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A035259.P14632886146925341837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A000010 (f2 (A035202 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035259.P14632886146925341837

namespace A035259

/-- `eq[1, A000010(a(A035202(n)))]` -/
def P14632886146925341837.Spec : Prop :=
  ∀ n, (P14632886146925341837.a n : ℤ) = A035259 (n + 1)

end A035259

/-! ## A035259.P1868838500140312303

`eq[1, A007318(a(A035202(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A035259.P1868838500140312303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A007318 (f2 (A035202 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035259.P1868838500140312303

namespace A035259

/-- `eq[1, A007318(a(A035202(n)))]` -/
def P1868838500140312303.Spec : Prop :=
  ∀ n, (P1868838500140312303.a n : ℤ) = A035259 (n + 1)

end A035259

/-! ## A035259.P15166037048096967167

`eq[1, A110654(a(A035202(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A035259.P15166037048096967167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A110654 (f2 (A035202 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035259.P15166037048096967167

namespace A035259

/-- `eq[1, A110654(a(A035202(n)))]` -/
def P15166037048096967167.Spec : Prop :=
  ∀ n, (P15166037048096967167.a n : ℤ) = A035259 (n + 1)

end A035259

/-! ## A035259.P5496131352282546051

`eq[1, A014802(a(A035202(n))²)]` with `a(0)=4, a(1)=1`
-/

namespace A035259.P5496131352282546051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A014802 (f2 (A035202 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035259.P5496131352282546051

namespace A035259

/-- `eq[1, A014802(a(A035202(n))²)]` -/
def P5496131352282546051.Spec : Prop :=
  ∀ n, (P5496131352282546051.a n : ℤ) = A035259 (n + 1)

end A035259

/-! ## A035259.P16342434673388516144

`eq[1, A055642(a(A035202(n))²)]` with `a(0)=4, a(1)=1`
-/

namespace A035259.P16342434673388516144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A055642 (f2 (A035202 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035259.P16342434673388516144

namespace A035259

/-- `eq[1, A055642(a(A035202(n))²)]` -/
def P16342434673388516144.Spec : Prop :=
  ∀ n, (P16342434673388516144.a n : ℤ) = A035259 (n + 1)

end A035259

/-! ## A035259.P11241667664122431090

`eq[1, A000045(a(A035202(n))²)]` with `a(0)=4, a(1)=1`
-/

namespace A035259.P11241667664122431090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A000045 (f2 (A035202 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035259.P11241667664122431090

namespace A035259

/-- `eq[1, A000045(a(A035202(n))²)]` -/
def P11241667664122431090.Spec : Prop :=
  ∀ n, (P11241667664122431090.a n : ℤ) = A035259 (n + 1)

end A035259

/-! ## A035259.P1324188705307069188

`eq[1, A014217(a(A035202(n))²)]` with `a(0)=4, a(1)=1`
-/

namespace A035259.P1324188705307069188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A014217 (f2 (A035202 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035259.P1324188705307069188

namespace A035259

/-- `eq[1, A014217(a(A035202(n))²)]` -/
def P1324188705307069188.Spec : Prop :=
  ∀ n, (P1324188705307069188.a n : ℤ) = A035259 (n + 1)

end A035259

/-!
# A035260: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 21.

The programs for A035260, the canonical program `A035260.P10772231064334041702` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035260 has offset 1).

The definition of A035260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2615 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035260.P17086969249888681049

`lt[0, A352555(n+1)]+1`
-/

namespace A035260.P17086969249888681049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035260.P17086969249888681049

namespace A035260

/-- `lt[0, A352555(n+1)]+1` -/
def P17086969249888681049.Spec : Prop :=
  ∀ n, (P17086969249888681049.a n : ℤ) = A035260 (n + 1)

end A035260

/-! ## A035260.P10772231064334041702

`lt[-(A035203(n+1)+1)², -1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035260

/-- `lt[-(A035203(n+1)+1)², -1]+1` -/
def P10772231064334041702.Spec : Prop :=
  ∀ n, (P10772231064334041702.a n : ℤ) = A035260 (n + 1)

theorem P10772231064334041702.correct : P10772231064334041702.Spec := by
  intro n
  simp only [A035260, Nat.add_sub_cancel]

end A035260

/-! ## A035260.P1417248791556372332

`eq[1, A000006(a(A035203(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035260.P1417248791556372332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000006 (f2 (A035203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035260.P1417248791556372332

namespace A035260

/-- `eq[1, A000006(a(A035203(n)))]` -/
def P1417248791556372332.Spec : Prop :=
  ∀ n, (P1417248791556372332.a n : ℤ) = A035260 (n + 1)

end A035260

/-! ## A035260.P183924217712252195

`eq[1, A000009(a(A035203(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035260.P183924217712252195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000009 (f2 (A035203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035260.P183924217712252195

namespace A035260

/-- `eq[1, A000009(a(A035203(n)))]` -/
def P183924217712252195.Spec : Prop :=
  ∀ n, (P183924217712252195.a n : ℤ) = A035260 (n + 1)

end A035260

/-! ## A035260.P9401685848915552274

`eq[1, A000010(a(A035203(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035260.P9401685848915552274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000010 (f2 (A035203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035260.P9401685848915552274

namespace A035260

/-- `eq[1, A000010(a(A035203(n)))]` -/
def P9401685848915552274.Spec : Prop :=
  ∀ n, (P9401685848915552274.a n : ℤ) = A035260 (n + 1)

end A035260

/-! ## A035260.P7796399176584237993

`eq[1, A000045(a(A035203(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A035260.P7796399176584237993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000045 (f2 (A035203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035260.P7796399176584237993

namespace A035260

/-- `eq[1, A000045(a(A035203(n)))]` -/
def P7796399176584237993.Spec : Prop :=
  ∀ n, (P7796399176584237993.a n : ℤ) = A035260 (n + 1)

end A035260

/-! ## A035260.P10373111732812014812

`eq[1, A007318(a(A035203(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A035260.P10373111732812014812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A007318 (f2 (A035203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035260.P10373111732812014812

namespace A035260

/-- `eq[1, A007318(a(A035203(n)))]` -/
def P10373111732812014812.Spec : Prop :=
  ∀ n, (P10373111732812014812.a n : ℤ) = A035260 (n + 1)

end A035260

/-!
# A035261: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 23.

The programs for A035261, there is no canonical definition to state claims against.
-/

/-! ## A035261.P14287576548264065110

`lt[0, A035205(n+1)]+1`
-/

namespace A035261.P14287576548264065110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035261.P14287576548264065110

/-! ## A035261.P1868786516908422557

`eq[0, ceil(A035205(n+1)/A146081(n))-1]+1`
-/

namespace A035261.P1868786516908422557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035205 (n + 1) : ℚ) / (A146081 n : ℚ)⌉ - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A035261.P1868786516908422557

/-! ## A035261.P9985643438289247433

`eq[0, ceil(A035205(n+1)/A000040(n+1))-1]+1`
-/

namespace A035261.P9985643438289247433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035205 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉ - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A035261.P9985643438289247433

/-! ## A035261.P112359921910375341

`eq[0, ceil(A035205(n+1)/A003990(n+1))-1]+1`
-/

namespace A035261.P112359921910375341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035205 (n + 1) : ℚ) / (A003990 (n + 1) : ℚ)⌉ - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A035261.P112359921910375341

/-! ## A035261.P3153334168249267472

`lt[1, A035205(A022144(n))]`
-/

namespace A035261.P3153334168249267472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035205 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035261.P3153334168249267472

/-!
# A035262: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 26.

The programs for A035262, there is no canonical definition to state claims against.
-/

/-! ## A035262.P10206474818179686122

`lt[0, A035208(n+1)]+1`
-/

namespace A035262.P10206474818179686122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035208 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035262.P10206474818179686122

/-! ## A035262.P17447924514222858962

`eq[0, A000038(A035208(n+1)²)]+1`
-/

namespace A035262.P17447924514222858962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A035208 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A035262.P17447924514222858962

/-! ## A035262.P15390969910217192562

`eq[1, A331591(A035208(n+1)+1)]+1`
-/

namespace A035262.P15390969910217192562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (A035208 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A035262.P15390969910217192562

/-! ## A035262.P15800913240715796100

`lt[A023241(∑[log2(gcd(2, n))]), A170772(2*n)]`
-/

namespace A035262.P15800913240715796100
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170772 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A035262.P15800913240715796100

/-! ## A035262.P11026951408864264109

`eq[1, A294018(A332815(n))]`
-/

namespace A035262.P11026951408864264109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294018 (A332815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035262.P11026951408864264109

/-!
# A035263: Trajectory of 1 under the morphism 0 -> 11, 1 -> 10; parity of 2-adic valuation of 2n: a(n) = A000035(A001511(n)).

The programs for A035263, the canonical program `A035263.P6825362395192920526` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035263 has offset 1).

The definition of A035263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035263.P17543126991454235598

`abs(a(n-1)-a(floor((n+1)/2)-1))` with `a(0)=1`
-/

namespace A035263.P17543126991454235598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat|

end

end A035263.P17543126991454235598

namespace A035263

/-- `abs(a(n-1)-a(floor((n+1)/2)-1))` -/
def P17543126991454235598.Spec : Prop :=
  ∀ n, P17543126991454235598.a n = A035263 (n + 1)

end A035263

/-! ## A035263.P13972597620537632110

`1-A096268(n)`
-/

namespace A035263.P13972597620537632110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A096268 n

end

end A035263.P13972597620537632110

namespace A035263

/-- `1-A096268(n)` -/
def P13972597620537632110.Spec : Prop :=
  ∀ n, P13972597620537632110.a n = A035263 (n + 1)

end A035263

/-! ## A035263.P7842390129649882371

`2-A056832(n+1)`
-/

namespace A035263.P7842390129649882371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A056832 (n + 1)

end

end A035263.P7842390129649882371

namespace A035263

/-- `2-A056832(n+1)` -/
def P7842390129649882371.Spec : Prop :=
  ∀ n, P7842390129649882371.a n = A035263 (n + 1)

end A035263

/-! ## A035263.P3584560004974032630

`(5-A089608(n+1))/4`
-/

namespace A035263.P3584560004974032630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - A089608 (n + 1) : ℚ) / 4

end

end A035263.P3584560004974032630

namespace A035263

/-- `(5-A089608(n+1))/4` -/
def P3584560004974032630.Spec : Prop :=
  ∀ n, P3584560004974032630.a n = (A035263 (n + 1) : ℚ)

end A035263

/-! ## A035263.P6825362395192920526

`A000035(A001511(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035263

/-- `A000035(A001511(n+1))` -/
def P6825362395192920526.Spec : Prop :=
  ∀ n, P6825362395192920526.a n = A035263 (n + 1)

theorem P6825362395192920526.correct : P6825362395192920526.Spec := by
  intro n
  simp only [A035263, Nat.add_sub_cancel]

end A035263

/-! ## A035263.P1463785069012039310

`xor(n, n+1)%3`
-/

namespace A035263.P1463785069012039310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % 3

end

end A035263.P1463785069012039310

namespace A035263

/-- `xor(n, n+1)%3` -/
def P1463785069012039310.Spec : Prop :=
  ∀ n, (P1463785069012039310.a n : ℤ) = A035263 (n + 1)

end A035263

/-! ## A035263.P10973293787248281014

`log2(gcd(2, val(n+1, 2)))`
-/

namespace A035263.P10973293787248281014
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 2) : ℝ)

end

end A035263.P10973293787248281014

namespace A035263

/-- `log2(gcd(2, val(n+1, 2)))` -/
def P10973293787248281014.Spec : Prop :=
  ∀ n, P10973293787248281014.a n = (A035263 (n + 1) : ℝ)

end A035263

/-! ## A035263.P1128651986671039043

`(val(n+1, 2)+1)%2`
-/

namespace A035263.P1128651986671039043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1) % 2

end

end A035263.P1128651986671039043

namespace A035263

/-- `(val(n+1, 2)+1)%2` -/
def P1128651986671039043.Spec : Prop :=
  ∀ n, (P1128651986671039043.a n : ℤ) = A035263 (n + 1)

end A035263

/-! ## A035263.P9388276583411925877

`and(1, val(n+1, 2)+1)`
-/

namespace A035263.P9388276583411925877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A035263.P9388276583411925877

namespace A035263

/-- `and(1, val(n+1, 2)+1)` -/
def P9388276583411925877.Spec : Prop :=
  ∀ n, (P9388276583411925877.a n : ℤ) = A035263 (n + 1)

end A035263

/-! ## A035263.P4576436774034110609

`val(or(2, val(n+1, 2)), 2)`
-/

namespace A035263.P4576436774034110609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 2 (SequenceMachineLib.valuation (n + 1) 2)) 2

end

end A035263.P4576436774034110609

namespace A035263

/-- `val(or(2, val(n+1, 2)), 2)` -/
def P4576436774034110609.Spec : Prop :=
  ∀ n, (P4576436774034110609.a n : ℤ) = A035263 (n + 1)

end A035263

/-! ## A035263.P9386196268871768366

`or(n, -(n+2))²%3`
-/

namespace A035263.P9386196268871768366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (n : ℤ) (-(n + 2 : ℤ)) ^ 2) 3

end

end A035263.P9386196268871768366

namespace A035263

/-- `or(n, -(n+2))²%3` -/
def P9386196268871768366.Spec : Prop :=
  ∀ n, P9386196268871768366.a n = A035263 (n + 1)

end A035263

/-! ## A035263.P16940837571710214366

`Δ[or(n, n+1)]²%3`
-/

namespace A035263.P16940837571710214366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) 3

end

end A035263.P16940837571710214366

namespace A035263

/-- `Δ[or(n, n+1)]²%3` -/
def P16940837571710214366.Spec : Prop :=
  ∀ n, P16940837571710214366.a n = A035263 (n + 1)

end A035263

/-! ## A035263.P9636522386031533694

`Δ[n-a(floor(n/2))]` with `a(0)=0`
-/

namespace A035263.P9636522386031533694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035263.P9636522386031533694

namespace A035263

/-- `Δ[n-a(floor(n/2))]` -/
def P9636522386031533694.Spec : Prop :=
  ∀ n, P9636522386031533694.a n = A035263 (n + 1)

end A035263

/-! ## A035263.P3901547475938093941

`val(val(n+1, 2)²+2, 2)`
-/

namespace A035263.P3901547475938093941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation (n + 1) 2 ^ 2 + 2) 2

end

end A035263.P3901547475938093941

namespace A035263

/-- `val(val(n+1, 2)²+2, 2)` -/
def P3901547475938093941.Spec : Prop :=
  ∀ n, (P3901547475938093941.a n : ℤ) = A035263 (n + 1)

end A035263

/-! ## A035263.P1080049993930387851

`ceil((1-ϕ)^val(n+1, 2))`
-/

namespace A035263.P1080049993930387851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - Real.goldenRatio) ^ SequenceMachineLib.valuation (n + 1) 2⌉

end

end A035263.P1080049993930387851

namespace A035263

/-- `ceil((1-ϕ)^val(n+1, 2))` -/
def P1080049993930387851.Spec : Prop :=
  ∀ n, P1080049993930387851.a n = A035263 (n + 1)

end A035263

/-! ## A035263.P3344948728847465172

`ceil((-2)^-val(n+1, 2))`
-/

namespace A035263.P3344948728847465172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(-2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)⌉

end

end A035263.P3344948728847465172

namespace A035263

/-- `ceil((-2)^-val(n+1, 2))` -/
def P3344948728847465172.Spec : Prop :=
  ∀ n, P3344948728847465172.a n = A035263 (n + 1)

end A035263

/-! ## A035263.P8882162214771912187

`Δ[2/a(and(n, n-1))]²` with `a(0)=1`
-/

namespace A035263.P8882162214771912187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A035263.P8882162214771912187

namespace A035263

/-- `Δ[2/a(and(n, n-1))]²` -/
def P8882162214771912187.Spec : Prop :=
  ∀ n, P8882162214771912187.a n = (A035263 (n + 1) : ℚ)

end A035263

/-! ## A035263.P2671034342963162236

`1-n%(a(floor(n/2))+1)` with `a(0)=1`
-/

namespace A035263.P2671034342963162236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.tmod (n : ℤ) (a ⌊(n : ℚ) / 2⌋.toNat + 1)

end

end A035263.P2671034342963162236

namespace A035263

/-- `1-n%(a(floor(n/2))+1)` -/
def P2671034342963162236.Spec : Prop :=
  ∀ n, P2671034342963162236.a n = A035263 (n + 1)

end A035263

/-! ## A035263.P2246562869299891556

`1-a(gcd(1-n, floor(n/2)))` with `a(0)=1`
-/

namespace A035263.P2246562869299891556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

end

end A035263.P2246562869299891556

namespace A035263

/-- `1-a(gcd(1-n, floor(n/2)))` -/
def P2246562869299891556.Spec : Prop :=
  ∀ n, P2246562869299891556.a n = A035263 (n + 1)

end A035263

/-!
# A035264: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 29.

The programs for A035264, the canonical program `A035264.P6732478031539693106` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035264 has offset 1).

The definition of A035264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035264.P6732478031539693106

`lt[A000038(A035211(n+1)), 1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035264

/-- `lt[A000038(A035211(n+1)), 1]+1` -/
def P6732478031539693106.Spec : Prop :=
  ∀ n, (P6732478031539693106.a n : ℤ) = A035264 (n + 1)

theorem P6732478031539693106.correct : P6732478031539693106.Spec := by
  intro n
  simp only [A035264, Nat.add_sub_cancel]

end A035264

/-! ## A035264.P13084763776489165061

`record[(n+1)/gcd(A000040(n+1), A035211(n+1))]`
-/

namespace A035264.P13084763776489165061
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000040 (n + 1)) (A035211 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035264.P13084763776489165061

namespace A035264

/-- `record[(n+1)/gcd(A000040(n+1), A035211(n+1))]` -/
def P13084763776489165061.Spec : Prop :=
  ∀ n, P13084763776489165061.a n = (A035264 (n + 1) : ℚ)

end A035264

/-! ## A035264.P439847782750791338

`lt[A000038(n), A035211(A028310(n))]`
-/

namespace A035264.P439847782750791338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035211 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035264.P439847782750791338

namespace A035264

/-- `lt[A000038(n), A035211(A028310(n))]` -/
def P439847782750791338.Spec : Prop :=
  ∀ n, (P439847782750791338.a n : ℤ) = A035264 (n + 1)

end A035264

/-! ## A035264.P3512776093298855532

`lt[A000038(n), A035211(A000038(n)+n)]`
-/

namespace A035264.P3512776093298855532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035211 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035264.P3512776093298855532

namespace A035264

/-- `lt[A000038(n), A035211(A000038(n)+n)]` -/
def P3512776093298855532.Spec : Prop :=
  ∀ n, (P3512776093298855532.a n : ℤ) = A035264 (n + 1)

end A035264

/-! ## A035264.P18265719076304353879

`lt[0, A035211(gcd(n-1, (n-1)*A285978(n+1))+1)]`
-/

namespace A035264.P18265719076304353879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035211 (Int.gcd ((n : ℤ) - 1) (((n : ℤ) - 1) * A285978 (n + 1)) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035264.P18265719076304353879

namespace A035264

/-- `lt[0, A035211(gcd(n-1, (n-1)*A285978(n+1))+1)]` -/
def P18265719076304353879.Spec : Prop :=
  ∀ n, (P18265719076304353879.a n : ℤ) = A035264 (n + 1)

end A035264

/-! ## A035264.P9827441087922738455

`lt[A000007(n), A035211(A028310(n))]`
-/

namespace A035264.P9827441087922738455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035211 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035264.P9827441087922738455

namespace A035264

/-- `lt[A000007(n), A035211(A028310(n))]` -/
def P9827441087922738455.Spec : Prop :=
  ∀ n, (P9827441087922738455.a n : ℤ) = A035264 (n + 1)

end A035264

/-! ## A035264.P12119887556822512745

`lt[A035211(n+1), n*A035211(A028310(n))]`
-/

namespace A035264.P12119887556822512745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035211 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035264.P12119887556822512745

namespace A035264

/-- `lt[A035211(n+1), n*A035211(A028310(n))]` -/
def P12119887556822512745.Spec : Prop :=
  ∀ n, (P12119887556822512745.a n : ℤ) = A035264 (n + 1)

end A035264

/-! ## A035264.P6535310992277957522

`lt[A000038(n), A035211(A008574(n))]`
-/

namespace A035264.P6535310992277957522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035211 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035264.P6535310992277957522

namespace A035264

/-- `lt[A000038(n), A035211(A008574(n))]` -/
def P6535310992277957522.Spec : Prop :=
  ∀ n, (P6535310992277957522.a n : ℤ) = A035264 (n + 1)

end A035264

/-! ## A035264.P9615242249155983532

`lt[1, A035211(A008574(n)+n)]`
-/

namespace A035264.P9615242249155983532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035211 (A008574 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035264.P9615242249155983532

namespace A035264

/-- `lt[1, A035211(A008574(n)+n)]` -/
def P9615242249155983532.Spec : Prop :=
  ∀ n, (P9615242249155983532.a n : ℤ) = A035264 (n + 1)

end A035264

/-! ## A035264.P4826927532013214922

`lt[1, A035211(A008574(5*n))]`
-/

namespace A035264.P4826927532013214922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035211 (A008574 (5 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035264.P4826927532013214922

namespace A035264

/-- `lt[1, A035211(A008574(5*n))]` -/
def P4826927532013214922.Spec : Prop :=
  ∀ n, (P4826927532013214922.a n : ℤ) = A035264 (n + 1)

end A035264

/-!
# A035265: One half of deca-factorial numbers.

The programs for A035265, there is no canonical definition to state claims against.
-/

/-! ## A035265.P16447977079396554204

`∏[10*n+2]/2`
-/

namespace A035265.P16447977079396554204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A035265.P16447977079396554204

/-! ## A035265.P2034895322686329124

`∏[a(n-1)+10]` with `a(0)=1, a(1)=12`
-/

namespace A035265.P2034895322686329124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035265.P2034895322686329124

/-! ## A035265.P6589483193214169627

`∏[ceil(cosh(sin(n)))+10*n]`
-/

namespace A035265.P6589483193214169627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ + (10 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035265.P6589483193214169627

/-! ## A035265.P17590421971082827997

`(10*n+2)*a(n-1)` with `a(0)=1`
-/

namespace A035265.P17590421971082827997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (10 * n + 2) * a (n - 1)

end

end A035265.P17590421971082827997

/-! ## A035265.P14388529648995839953

`∏[A103517(5*n)]`
-/

namespace A035265.P14388529648995839953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035265.P14388529648995839953

/-!
# A035266: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 35.

The programs for A035266, there is no canonical definition to state claims against.
-/

/-! ## A035266.P15194103757906926417

`lt[0, A035217(n+1)]+1`
-/

namespace A035266.P15194103757906926417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035266.P15194103757906926417

/-! ## A035266.P1007270492392376831

`eq[A124778(A325401(n)), A283318(n+1)]`
-/

namespace A035266.P1007270492392376831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A325401 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283318 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035266.P1007270492392376831

/-! ## A035266.P1198709337111953572

`eq[A053164(A283320(n+1)), A283318(n+1)]`
-/

namespace A035266.P1198709337111953572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A283320 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283318 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035266.P1198709337111953572

/-! ## A035266.P16820170470001151097

`eq[A124778(n)^A119339(n), A283318(n+1)]`
-/

namespace A035266.P16820170470001151097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124778 n : ℚ) ^ (A119339 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283318 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A035266.P16820170470001151097

/-! ## A035266.P9247091761003313185

`eq[A112049(n+1), A112049(A166119(n+1))]`
-/

namespace A035266.P9247091761003313185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (A166119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035266.P9247091761003313185

/-!
# A035267: Indices of nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 37.

The programs for A035267, there is no canonical definition to state claims against.
-/

/-! ## A035267.P4060941848664788787

`lt[0, A035219(n+1)]+1`
-/

namespace A035267.P4060941848664788787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035267.P4060941848664788787

/-! ## A035267.P14903364636842318462

`lt[0, A352560(n+1)]+1`
-/

namespace A035267.P14903364636842318462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352560 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035267.P14903364636842318462

/-! ## A035267.P2913598675225961559

`lt[A000038(n), A035219(A028310(n))]`
-/

namespace A035267.P2913598675225961559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035219 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035267.P2913598675225961559

/-! ## A035267.P2977756407463004058

`lt[1, A035219(A008574(n)-n)]`
-/

namespace A035267.P2977756407463004058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035219 (A008574 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035267.P2977756407463004058

/-! ## A035267.P6291029125644181508

`lt[0, A035219(A130824(n)+2)]`
-/

namespace A035267.P6291029125644181508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035219 (A130824 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035267.P6291029125644181508

/-! ## A035267.P1632455237675245599

`lt[A000038(n), A035219(A008574(n))]`
-/

namespace A035267.P1632455237675245599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035219 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035267.P1632455237675245599

/-! ## A035267.P7908371044786059330

`lt[1, A035219(A008574(3*n))]`
-/

namespace A035267.P7908371044786059330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035219 (A008574 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035267.P7908371044786059330

/-!
# A035268: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 38.

The programs for A035268, there is no canonical definition to state claims against.
-/

/-! ## A035268.P18075703296734811467

`lt[0, A035220(n+1)]+1`
-/

namespace A035268.P18075703296734811467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035220 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035268.P18075703296734811467

/-!
# A035269: Indices of nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 41.

The programs for A035269, there is no canonical definition to state claims against.
-/

/-! ## A035269.P4268027562589397853

`lt[0, A035223(n+1)]+1`
-/

namespace A035269.P4268027562589397853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035269.P4268027562589397853

/-! ## A035269.P4908665810969855366

`lt[1, A035223(A004277(n))]`
-/

namespace A035269.P4908665810969855366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035223 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035269.P4908665810969855366

/-! ## A035269.P11416380159034497839

`filter[A010443(n+2), A340372(#)]`
-/

namespace A035269.P11416380159034497839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010443 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A035269.P11416380159034497839

/-! ## A035269.P11733853475424958082

`∩[A007417(n+1), A010443(n+1)]`
-/

namespace A035269.P11733853475424958082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035269.P11733853475424958082

/-! ## A035269.P4721915408561648485

`∩[A010443(n+1), A074232(n+1)]`
-/

namespace A035269.P4721915408561648485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035269.P4721915408561648485

/-!
# A035270: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 43.

The programs for A035270, there is no canonical definition to state claims against.
-/

/-! ## A035270.P488546198597759343

`lt[0, A035225(n+1)]+1`
-/

namespace A035270.P488546198597759343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035225 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035270.P488546198597759343

/-! ## A035270.P14853236548963053129

`lt[Δ[A322350(n+1)], A004016(n)]`
-/

namespace A035270.P14853236548963053129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322350 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A035270.P14853236548963053129

/-! ## A035270.P14241355614568432997

`lt[Δ[A178047(3*n+1)], A004016(n)]`
-/

namespace A035270.P14241355614568432997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178047 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A035270.P14241355614568432997

/-! ## A035270.P10954247286420555885

`lt[A121373(A033690(n)), A004016(n)]`
-/

namespace A035270.P10954247286420555885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A033690 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035270.P10954247286420555885

/-! ## A035270.P15505858702492023281

`lt[A373387(A102830(2*(n+2))), A004016(n)]`
-/

namespace A035270.P15505858702492023281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 (A102830 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035270.P15505858702492023281

/-!
# A035271: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 47.

The programs for A035271, there is no canonical definition to state claims against.
-/

/-! ## A035271.P3979213962422244188

`lt[0, A035229(n+1)]+1`
-/

namespace A035271.P3979213962422244188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035271.P3979213962422244188

/-! ## A035271.P4452865647654108834

`lt[1, A035229(A004277(n))]`
-/

namespace A035271.P4452865647654108834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035229 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035271.P4452865647654108834

/-! ## A035271.P13725992341859790218

`lt[1, A035229(A008574(n))]`
-/

namespace A035271.P13725992341859790218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035229 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035271.P13725992341859790218

/-! ## A035271.P524513516882900739

`eq[ratio[(-1)^val(n+1, 2)], A227577(n)]`
-/

namespace A035271.P524513516882900739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227577 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A035271.P524513516882900739

/-! ## A035271.P2768353986339183140

`eq[ratio[A309873(n+1)], A227577(n)]`
-/

namespace A035271.P2768353986339183140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227577 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A035271.P2768353986339183140

/-!
# A035272: One third of deca-factorial numbers.

The programs for A035272, there is no canonical definition to state claims against.
-/

/-! ## A035272.P5112000123564279336

`∏[10*n+3]/3`
-/

namespace A035272.P5112000123564279336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A035272.P5112000123564279336

/-! ## A035272.P17659290333943459350

`∏[a(n-1)+10]` with `a(0)=1, a(1)=13`
-/

namespace A035272.P17659290333943459350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035272.P17659290333943459350

/-! ## A035272.P17224960170997326948

`(10*n+3)*a(n-1)` with `a(0)=1`
-/

namespace A035272.P17224960170997326948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (10 * n + 3) * a (n - 1)

end

end A035272.P17224960170997326948

/-! ## A035272.P16266888291790573845

`∏[record[A019428(n+2)]]`
-/

namespace A035272.P16266888291790573845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035272.P16266888291790573845

/-! ## A035272.P16774722858647738192

`∏[record[A270968(n+2)]]`
-/

namespace A035272.P16774722858647738192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270968 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035272.P16774722858647738192

/-!
# A035273: One quarter of deca-factorial numbers.

The programs for A035273, there is no canonical definition to state claims against.
-/

/-! ## A035273.P7132695749238120715

`∏[10*n+4]/4`
-/

namespace A035273.P7132695749238120715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A035273.P7132695749238120715

/-! ## A035273.P18385526636936704671

`∏[a(n-1)+10]` with `a(0)=1, a(1)=14`
-/

namespace A035273.P18385526636936704671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035273.P18385526636936704671

/-! ## A035273.P11127222338084591397

`(10*n+4)*a(n-1)` with `a(0)=1`
-/

namespace A035273.P11127222338084591397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (10 * n + 4) * a (n - 1)

end

end A035273.P11127222338084591397

/-! ## A035273.P10437388461283086599

`∏[record[A267318(n+2)]]`
-/

namespace A035273.P10437388461283086599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035273.P10437388461283086599

/-! ## A035273.P11060174771888575026

`2^n*A034323(n+1)`
-/

namespace A035273.P11060174771888575026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A034323 (n + 1)

end

end A035273.P11060174771888575026

/-!
# A035274: One fifth of deca-factorial numbers.

The programs for A035274, there is no canonical definition to state claims against.
-/

/-! ## A035274.P5229557261179487538

`5^n*∏[Δ[n²]]`
-/

namespace A035274.P5229557261179487538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A035274.P5229557261179487538

/-! ## A035274.P8579795589884557892

`∏[a(n-1)+10]` with `a(0)=1, a(1)=15`
-/

namespace A035274.P8579795589884557892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035274.P8579795589884557892

/-! ## A035274.P8228016408772137243

`∏[(10*n+5)^ceil(abs(sin(n)))]`
-/

namespace A035274.P8228016408772137243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * n + 5 : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035274.P8228016408772137243

/-! ## A035274.P2771804410766213554

`record[n*5*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A035274.P2771804410766213554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  n * (5 * f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035274.P2771804410766213554

/-! ## A035274.P11979897939868054161

`abs((10*n+5)*a(n-1))` with `a(0)=1`
-/

namespace A035274.P11979897939868054161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (10 * n + 5) * a (n - 1)

end

end A035274.P11979897939868054161

/-!
# A035275: One sixth of deca-factorial numbers.

The programs for A035275, there is no canonical definition to state claims against.
-/

/-! ## A035275.P8006297411604683881

`∏[a(n-1)+10]` with `a(0)=1, a(1)=16`
-/

namespace A035275.P8006297411604683881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035275.P8006297411604683881

/-! ## A035275.P15956576233937527013

`(10*n+6)*a(n-1)` with `a(0)=1`
-/

namespace A035275.P15956576233937527013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (10 * n + 6) * a (n - 1)

end

end A035275.P15956576233937527013

/-! ## A035275.P2935140246584608198

`2^n*A034300(n+1)`
-/

namespace A035275.P2935140246584608198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A034300 (n + 1)

end

end A035275.P2935140246584608198

/-! ## A035275.P65059548073226469

`a(n-1)*A017341(n)` with `a(0)=1`
-/

namespace A035275.P65059548073226469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017341 n

end

end A035275.P65059548073226469

/-! ## A035275.P17667762655284811391

`∏[5*comp[A004277(n)]+1]`
-/

namespace A035275.P17667762655284811391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035275.P17667762655284811391

/-!
# A035276: One seventh of deca-factorial numbers.

The programs for A035276, there is no canonical definition to state claims against.
-/

/-! ## A035276.P1379052397200676172

`∏[gcd(10*n+7, floor(acot(n)))]`
-/

namespace A035276.P1379052397200676172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (10 * n + 7 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035276.P1379052397200676172

/-! ## A035276.P5378642126620934043

`(10*n+7)*a(n-1)` with `a(0)=1`
-/

namespace A035276.P5378642126620934043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (10 * n + 7) * a (n - 1)

end

end A035276.P5378642126620934043

/-! ## A035276.P12994475284640609282

`∏[C(10*n+7, ceil(sin(n)²))]`
-/

namespace A035276.P12994475284640609282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (10 * n + 7) ⌈Real.sin (n : ℝ) ^ 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035276.P12994475284640609282

/-! ## A035276.P13040625019721959838

`a(n-1)*A017353(n)` with `a(0)=1`
-/

namespace A035276.P13040625019721959838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017353 n

end

end A035276.P13040625019721959838

/-! ## A035276.P2826400129182734817

`a(n-1)*Δ[A168668(n)]` with `a(0)=1`
-/

namespace A035276.P2826400129182734817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A035276.P2826400129182734817

/-!
# A035277: One eighth of deca-factorial numbers.

The programs for A035277, there is no canonical definition to state claims against.
-/

/-! ## A035277.P15297306891538832276

`∏[a(n-1)+10]` with `a(0)=1, a(1)=18`
-/

namespace A035277.P15297306891538832276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035277.P15297306891538832276

/-! ## A035277.P25060937407980533

`(10*n+8)*a(n-1)` with `a(0)=1`
-/

namespace A035277.P25060937407980533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (10 * n + 8) * a (n - 1)

end

end A035277.P25060937407980533

/-! ## A035277.P3688658469654235645

`2^n*A034301(n+1)`
-/

namespace A035277.P3688658469654235645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A034301 (n + 1)

end

end A035277.P3688658469654235645

/-! ## A035277.P5431201498546763641

`a(n-1)*A017365(n)` with `a(0)=1`
-/

namespace A035277.P5431201498546763641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017365 n

end

end A035277.P5431201498546763641

/-! ## A035277.P8241208551959660957

`∏[record[A166524(n+1)]+n]`
-/

namespace A035277.P8241208551959660957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166524 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035277.P8241208551959660957

/-!
# A035278: One ninth of deca-factorial numbers.

The programs for A035278, there is no canonical definition to state claims against.
-/

/-! ## A035278.P13662928333269419724

`∏[a(n-1)+10]` with `a(0)=1, a(1)=19`
-/

namespace A035278.P13662928333269419724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035278.P13662928333269419724

/-! ## A035278.P651735681746826909

`(10*n+9)*a(n-1)` with `a(0)=1`
-/

namespace A035278.P651735681746826909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (10 * n + 9) * a (n - 1)

end

end A035278.P651735681746826909

/-! ## A035278.P7340446396043288857

`∏[record[10*n-a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A035278.P7340446396043288857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (10 * n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035278.P7340446396043288857

/-! ## A035278.P6969323363454487506

`∏[record[A166525(n+1)]]`
-/

namespace A035278.P6969323363454487506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166525 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035278.P6969323363454487506

/-! ## A035278.P7911672454041734423

`a(n-1)*A017377(n)` with `a(0)=1`
-/

namespace A035278.P7911672454041734423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017377 n

end

end A035278.P7911672454041734423

/-!
# A035279: One tenth of deca-factorial numbers.

The programs for A035279, the canonical program `A035279.P6600548960606089052` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035279 has offset 1).

The definition of A035279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035279.P6600548960606089052

`10^n*(n+1)!`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035279

/-- `10^n*(n+1)!` -/
def P6600548960606089052.Spec : Prop :=
  ∀ n, (P6600548960606089052.a n : ℤ) = A035279 (n + 1)

theorem P6600548960606089052.correct : P6600548960606089052.Spec := by
  intro n
  simp only [A035279, Nat.add_sub_cancel]

end A035279

/-! ## A035279.P13471000919692441944

`∏[10*(n+1)]/10`
-/

namespace A035279.P13471000919692441944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10

end

end A035279.P13471000919692441944

namespace A035279

/-- `∏[10*(n+1)]/10` -/
def P13471000919692441944.Spec : Prop :=
  ∀ n, P13471000919692441944.a n = (A035279 (n + 1) : ℚ)

end A035279

/-! ## A035279.P8727206745549081330

`∏[a(n-1)+10]` with `a(0)=1, a(1)=20`
-/

namespace A035279.P8727206745549081330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035279.P8727206745549081330

namespace A035279

/-- `∏[a(n-1)+10]` -/
def P8727206745549081330.Spec : Prop :=
  ∀ n, (P8727206745549081330.a n : ℤ) = A035279 (n + 1)

end A035279

/-! ## A035279.P13664201239422535656

`∏[(10*(n+1))^ceil(tanh(n))]`
-/

namespace A035279.P13664201239422535656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) : ℚ) ^ (⌈Real.tanh (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035279.P13664201239422535656

namespace A035279

/-- `∏[(10*(n+1))^ceil(tanh(n))]` -/
def P13664201239422535656.Spec : Prop :=
  ∀ n, P13664201239422535656.a n = (A035279 (n + 1) : ℚ)

end A035279

/-! ## A035279.P4491308075655437358

`10*(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A035279.P4491308075655437358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * ((n + 1) * a (n - 1))

end

end A035279.P4491308075655437358

namespace A035279

/-- `10*(n+1)*a(n-1)` -/
def P4491308075655437358.Spec : Prop :=
  ∀ n, (P4491308075655437358.a n : ℤ) = A035279 (n + 1)

end A035279

/-!
# A035282: Expansion of zeta function of icosian ring (nonzero terms).

The programs for A035282, the canonical program `A035282.P1097065873675860219` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035282 has offset 1).

The definition of A035282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1828 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035282.P1097065873675860219

`A078473(A031363(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A035282

/-- `A078473(A031363(n+1))` -/
def P1097065873675860219.Spec : Prop :=
  ∀ n, P1097065873675860219.a n = A035282 (n + 1)

theorem P1097065873675860219.correct : P1097065873675860219.Spec := by
  intro n
  simp only [A035282, Nat.add_sub_cancel]

end A035282

/-! ## A035282.P16427550176464023653

`A078473(lt[0, A035187(n+1)]+1)`
-/

namespace A035282.P16427550176464023653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A035282.P16427550176464023653

namespace A035282

/-- `A078473(lt[0, A035187(n+1)]+1)` -/
def P16427550176464023653.Spec : Prop :=
  ∀ n, P16427550176464023653.a n = A035282 (n + 1)

end A035282

/-! ## A035282.P5681865678502418720

`A078473(lt[0, A078473(n+1)]+1)`
-/

namespace A035282.P5681865678502418720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A035282.P5681865678502418720

namespace A035282

/-- `A078473(lt[0, A078473(n+1)]+1)` -/
def P5681865678502418720.Spec : Prop :=
  ∀ n, P5681865678502418720.a n = A035282 (n + 1)

end A035282

/-! ## A035282.P14789179350920498854

`A078473(eq[1, gcd(5, A321562(n+1))]+1)`
-/

namespace A035282.P14789179350920498854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A321562 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A035282.P14789179350920498854

namespace A035282

/-- `A078473(eq[1, gcd(5, A321562(n+1))]+1)` -/
def P14789179350920498854.Spec : Prop :=
  ∀ n, P14789179350920498854.a n = A035282 (n + 1)

end A035282

/-! ## A035282.P4282100360063631034

`A078473(record[n%(A035187(n+1)+n)+1])`
-/

namespace A035282.P4282100360063631034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A035187 (n + 1) + (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035282.P4282100360063631034

namespace A035282

/-- `A078473(record[n%(A035187(n+1)+n)+1])` -/
def P4282100360063631034.Spec : Prop :=
  ∀ n, P4282100360063631034.a n = A035282 (n + 1)

end A035282

/-! ## A035282.P9846471354345722152

`A078473(eq[1, char[A022344(n)]])`
-/

namespace A035282.P9846471354345722152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022344 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A035282.P9846471354345722152

namespace A035282

/-- `A078473(eq[1, char[A022344(n)]])` -/
def P9846471354345722152.Spec : Prop :=
  ∀ n, P9846471354345722152.a n = A035282 (n + 1)

end A035282

/-!
# A035286: Number of ways to place a non-attacking white and black king on n X n chessboard.

The programs for A035286, the canonical program `A035286.P1855005940931235741` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035286 has offset 1).

The definition of A035286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035286.P13021850726925511512

`n*(n-1)*((n+1)²+3*(n+1)-2)`
-/

namespace A035286.P13021850726925511512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((n : ℤ) - 1) * (((n + 1) ^ 2 + 3 * (n + 1) : ℤ) - 2))

end

end A035286.P13021850726925511512

namespace A035286

/-- `n*(n-1)*((n+1)²+3*(n+1)-2)` -/
def P13021850726925511512.Spec : Prop :=
  ∀ n, P13021850726925511512.a n = A035286 (n + 1)

theorem P13021850726925511512.correct : P13021850726925511512.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A035286, Nat.add_sub_cancel, A035286.P13021850726925511512.a, A035286.P1855005940931235741.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A035286, Nat.add_sub_cancel, A035286.P13021850726925511512.a, A035286.P1855005940931235741.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A035286

/-! ## A035286.P1855005940931235741

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=32, a(3)=156, a(4)=456`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035286

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1855005940931235741.Spec : Prop :=
  ∀ n, P1855005940931235741.a n = A035286 (n + 1)

theorem P1855005940931235741.correct : P1855005940931235741.Spec := by
  intro n
  simp only [A035286, Nat.add_sub_cancel]

end A035286

/-! ## A035286.P16591147292800718660

`∑[A100040(n+1)*A289207(2*n)]`
-/

namespace A035286.P16591147292800718660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100040 (n + 1) * A289207 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035286.P16591147292800718660

namespace A035286

/-- `∑[A100040(n+1)*A289207(2*n)]` -/
def P16591147292800718660.Spec : Prop :=
  ∀ n, P16591147292800718660.a n = A035286 (n + 1)

end A035286

/-!
# A035287: Number of ways to place a non-attacking white and black rook on n X n chessboard.

The programs for A035287, the canonical program `A035287.P16843695516421463004` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035287 has offset 1).

The definition of A035287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035287.P16843695516421463004

`(n²+n)²`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035287

/-- `(n²+n)²` -/
def P16843695516421463004.Spec : Prop :=
  ∀ n, (P16843695516421463004.a n : ℤ) = A035287 (n + 1)

theorem P16843695516421463004.correct : P16843695516421463004.Spec := by
  intro n
  simp only [A035287, Nat.add_sub_cancel]

end A035287

/-!
# A035288: Number of ways to place a non-attacking white and black bishop on n X n chessboard.

The programs for A035288, the canonical program `A035288.P6990566060333130540` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035288 has offset 1).

The definition of A035288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035288.P10983127928029821060

`(3*(n+1)^4-4*(n+1)^3+3*(n+1)²-2*(n+1))/3`
-/

namespace A035288.P10983127928029821060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) ^ 4 : ℤ) - (4 * (n + 1) ^ 3 : ℤ) + (3 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) : ℚ) / 3

end

end A035288.P10983127928029821060

namespace A035288

/-- `(3*(n+1)^4-4*(n+1)^3+3*(n+1)²-2*(n+1))/3` -/
def P10983127928029821060.Spec : Prop :=
  ∀ n, P10983127928029821060.a n = (A035288 (n + 1) : ℚ)

theorem P10983127928029821060.correct : P10983127928029821060.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A035288, Nat.add_sub_cancel, A035288.P10983127928029821060.a, A035288.P6990566060333130540.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A035288, Nat.add_sub_cancel, A035288.P10983127928029821060.a, A035288.P6990566060333130540.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A035288

/-! ## A035288.P6990566060333130540

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=8, a(2)=52, a(3)=184, a(4)=480`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035288

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P6990566060333130540.Spec : Prop :=
  ∀ n, P6990566060333130540.a n = A035288 (n + 1)

theorem P6990566060333130540.correct : P6990566060333130540.Spec := by
  intro n
  simp only [A035288, Nat.add_sub_cancel]

end A035288

/-! ## A035288.P15445820089044622014

`2*A172123(n+1)`
-/

namespace A035288.P15445820089044622014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172123 (n + 1)

end

end A035288.P15445820089044622014

namespace A035288

/-- `2*A172123(n+1)` -/
def P15445820089044622014.Spec : Prop :=
  ∀ n, P15445820089044622014.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P14691674302432938563

`∑[2*n]+∑[lcm(2*n+1, 2*n²)]`
-/

namespace A035288.P14691674302432938563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A035288.P14691674302432938563

namespace A035288

/-- `∑[2*n]+∑[lcm(2*n+1, 2*n²)]` -/
def P14691674302432938563.Spec : Prop :=
  ∀ n, (P14691674302432938563.a n : ℤ) = A035288 (n + 1)

end A035288

/-! ## A035288.P15469311507768857953

`∑[2*n*C(2*n+1, 2)]+∑[2*n]`
-/

namespace A035288.P15469311507768857953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose (2 * n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A035288.P15469311507768857953

namespace A035288

/-- `∑[2*n*C(2*n+1, 2)]+∑[2*n]` -/
def P15469311507768857953.Spec : Prop :=
  ∀ n, (P15469311507768857953.a n : ℤ) = A035288 (n + 1)

end A035288

/-! ## A035288.P6896906997645909378

`4*A176060(n)`
-/

namespace A035288.P6896906997645909378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A176060 n

end

end A035288.P6896906997645909378

namespace A035288

/-- `4*A176060(n)` -/
def P6896906997645909378.Spec : Prop :=
  ∀ n, P6896906997645909378.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P4715437546975025836

`4*(A000292(n)+∑[n]²)`
-/

namespace A035288.P4715437546975025836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000292 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ))

end

end A035288.P4715437546975025836

namespace A035288

/-- `4*(A000292(n)+∑[n]²)` -/
def P4715437546975025836.Spec : Prop :=
  ∀ n, P4715437546975025836.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P5344932831726932853

`2*∑[n*(A001844(n)-n)]`
-/

namespace A035288.P5344932831726932853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001844 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035288.P5344932831726932853

namespace A035288

/-- `2*∑[n*(A001844(n)-n)]` -/
def P5344932831726932853.Spec : Prop :=
  ∀ n, P5344932831726932853.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P8033427599097095820

`∑[A046092(n)]+∑[2*n]²`
-/

namespace A035288.P8033427599097095820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A035288.P8033427599097095820

namespace A035288

/-- `∑[A046092(n)]+∑[2*n]²` -/
def P8033427599097095820.Spec : Prop :=
  ∀ n, P8033427599097095820.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P17738155402186641264

`(n+1)²²-A100178(n+1)`
-/

namespace A035288.P17738155402186641264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A100178 (n + 1)

end

end A035288.P17738155402186641264

namespace A035288

/-- `(n+1)²²-A100178(n+1)` -/
def P17738155402186641264.Spec : Prop :=
  ∀ n, P17738155402186641264.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P1216929387454424982

`a(n-1)+A110451(n)+n` with `a(0)=0`
-/

namespace A035288.P1216929387454424982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A110451 n + (n : ℤ))

end

end A035288.P1216929387454424982

namespace A035288

/-- `a(n-1)+A110451(n)+n` -/
def P1216929387454424982.Spec : Prop :=
  ∀ n, P1216929387454424982.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P3862254024077378942

`A047928(n+2)-∑[(2*n)²]`
-/

namespace A035288.P3862254024077378942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047928 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A035288.P3862254024077378942

namespace A035288

/-- `A047928(n+2)-∑[(2*n)²]` -/
def P3862254024077378942.Spec : Prop :=
  ∀ n, P3862254024077378942.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P1985729914754109765

`2*∑[n*(A000217(2*n)+1)]`
-/

namespace A035288.P1985729914754109765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000217 (2 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035288.P1985729914754109765

namespace A035288

/-- `2*∑[n*(A000217(2*n)+1)]` -/
def P1985729914754109765.Spec : Prop :=
  ∀ n, P1985729914754109765.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P9322077153656955876

`(n+1)²²-(n+1)²-A002492(n)`
-/

namespace A035288.P9322077153656955876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - ((n + 1) ^ 2 : ℤ) - A002492 n

end

end A035288.P9322077153656955876

namespace A035288

/-- `(n+1)²²-(n+1)²-A002492(n)` -/
def P9322077153656955876.Spec : Prop :=
  ∀ n, P9322077153656955876.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P8056413282125924096

`A162148(n)+A011195(n)`
-/

namespace A035288.P8056413282125924096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n + A011195 n

end

end A035288.P8056413282125924096

namespace A035288

/-- `A162148(n)+A011195(n)` -/
def P8056413282125924096.Spec : Prop :=
  ∀ n, P8056413282125924096.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P6513700262505639472

`A174814(n)+A027445(n)`
-/

namespace A035288.P6513700262505639472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174814 n + A027445 n

end

end A035288.P6513700262505639472

namespace A035288

/-- `A174814(n)+A027445(n)` -/
def P6513700262505639472.Spec : Prop :=
  ∀ n, P6513700262505639472.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P2860144069759908125

`A219086(n)+A016061(n)`
-/

namespace A035288.P2860144069759908125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n + A016061 n

end

end A035288.P2860144069759908125

namespace A035288

/-- `A219086(n)+A016061(n)` -/
def P2860144069759908125.Spec : Prop :=
  ∀ n, P2860144069759908125.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P510941577985111055

`A215862(n)+A152041(n)`
-/

namespace A035288.P510941577985111055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n + A152041 n

end

end A035288.P510941577985111055

namespace A035288

/-- `A215862(n)+A152041(n)` -/
def P510941577985111055.Spec : Prop :=
  ∀ n, P510941577985111055.a n = A035288 (n + 1)

end A035288

/-! ## A035288.P260427485413113726

`A395241(n)+A389090(n)`
-/

namespace A035288.P260427485413113726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395241 n + A389090 n

end

end A035288.P260427485413113726

namespace A035288

/-- `A395241(n)+A389090(n)` -/
def P260427485413113726.Spec : Prop :=
  ∀ n, P260427485413113726.a n = A035288 (n + 1)

end A035288

/-!
# A035289: Number of ways to place a non-attacking white and black knight on n X n chessboard.

The programs for A035289, the canonical program `A035289.P6523623371164057717` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035289 has offset 1).

The definition of A035289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035289.P6523623371164057717

`(n+1)^4-9*(n+1)²+24*(n+1)-16`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035289

/-- `(n+1)^4-9*(n+1)²+24*(n+1)-16` -/
def P6523623371164057717.Spec : Prop :=
  ∀ n, P6523623371164057717.a n = A035289 (n + 1)

theorem P6523623371164057717.correct : P6523623371164057717.Spec := by
  intro n
  simp only [A035289, Nat.add_sub_cancel]

end A035289

/-! ## A035289.P5552836358943789726

`2*A172132(n+1)`
-/

namespace A035289.P5552836358943789726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172132 (n + 1)

end

end A035289.P5552836358943789726

namespace A035289

/-- `2*A172132(n+1)` -/
def P5552836358943789726.Spec : Prop :=
  ∀ n, P5552836358943789726.a n = A035289 (n + 1)

end A035289

/-! ## A035289.P4840856549202052734

`(n²+2-n)*A028557(n)`
-/

namespace A035289.P4840856549202052734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) + (2 - (n : ℤ))) * A028557 n

end

end A035289.P4840856549202052734

namespace A035289

/-- `(n²+2-n)*A028557(n)` -/
def P4840856549202052734.Spec : Prop :=
  ∀ n, P4840856549202052734.a n = A035289 (n + 1)

end A035289

/-! ## A035289.P15748775032733001280

`A028557(n)*A386480(n)`
-/

namespace A035289.P15748775032733001280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 n * A386480 n

end

end A035289.P15748775032733001280

namespace A035289

/-- `A028557(n)*A386480(n)` -/
def P15748775032733001280.Spec : Prop :=
  ∀ n, P15748775032733001280.a n = A035289 (n + 1)

end A035289

/-! ## A035289.P12572602133033191352

`2*(A212134(n)+A155965(n))`
-/

namespace A035289.P12572602133033191352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212134 n + A155965 n)

end

end A035289.P12572602133033191352

namespace A035289

/-- `2*(A212134(n)+A155965(n))` -/
def P12572602133033191352.Spec : Prop :=
  ∀ n, P12572602133033191352.a n = A035289 (n + 1)

end A035289

/-! ## A035289.P8903512037857754052

`2*(A058310(n)-A080855(n))`
-/

namespace A035289.P8903512037857754052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A058310 n - A080855 n)

end

end A035289.P8903512037857754052

namespace A035289

/-- `2*(A058310(n)-A080855(n))` -/
def P8903512037857754052.Spec : Prop :=
  ∀ n, P8903512037857754052.a n = A035289 (n + 1)

end A035289

/-! ## A035289.P6419297468579436216

`2*(A135916(n+1)+A056115(n))`
-/

namespace A035289.P6419297468579436216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A135916 (n + 1) + A056115 n)

end

end A035289.P6419297468579436216

namespace A035289

/-- `2*(A135916(n+1)+A056115(n))` -/
def P6419297468579436216.Spec : Prop :=
  ∀ n, P6419297468579436216.a n = A035289 (n + 1)

end A035289

/-! ## A035289.P15013788855958155070

`2*(A172200(n+1)+A144945(n+1))`
-/

namespace A035289.P15013788855958155070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A172200 (n + 1) + A144945 (n + 1))

end

end A035289.P15013788855958155070

namespace A035289

/-- `2*(A172200(n+1)+A144945(n+1))` -/
def P15013788855958155070.Spec : Prop :=
  ∀ n, P15013788855958155070.a n = A035289 (n + 1)

end A035289

/-! ## A035289.P3965976501790035391

`2*(A289223(n+2)+A054000(n+1))`
-/

namespace A035289.P3965976501790035391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289223 (n + 2) + A054000 (n + 1))

end

end A035289.P3965976501790035391

namespace A035289

/-- `2*(A289223(n+2)+A054000(n+1))` -/
def P3965976501790035391.Spec : Prop :=
  ∀ n, P3965976501790035391.a n = A035289 (n + 1)

end A035289

/-! ## A035289.P18245892972613482454

`(A077588(n+1)-A051890(n))*A386480(n)`
-/

namespace A035289.P18245892972613482454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077588 (n + 1) - A051890 n) * A386480 n

end

end A035289.P18245892972613482454

namespace A035289

/-- `(A077588(n+1)-A051890(n))*A386480(n)` -/
def P18245892972613482454.Spec : Prop :=
  ∀ n, P18245892972613482454.a n = A035289 (n + 1)

end A035289

/-! ## A035289.P3161110855246658356

`record[A007891(n+1)²-(n+1)²]`
-/

namespace A035289.P3161110855246658356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007891 (n + 1) ^ 2 - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035289.P3161110855246658356

namespace A035289

/-- `record[A007891(n+1)²-(n+1)²]` -/
def P3161110855246658356.Spec : Prop :=
  ∀ n, P3161110855246658356.a n = A035289 (n + 1)

end A035289

/-!
# A035290: Number of ways to place a non-attacking white and black pawn on n X n chessboard.

The programs for A035290, the canonical program `A035290.P14671019090870385943` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035290 has offset 1).

The definition of A035290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035290.P14671019090870385943

`(A272870(n)+A028872(n+2))%A060886(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035290

/-- `(A272870(n)+A028872(n+2))%A060886(n)` -/
def P14671019090870385943.Spec : Prop :=
  ∀ n, P14671019090870385943.a n = A035290 (n + 1)

theorem P14671019090870385943.correct : P14671019090870385943.Spec := by
  intro n
  simp only [A035290, Nat.add_sub_cancel]

end A035290

/-! ## A035290.P4224470409863781803

`lcm(A272870(n)+A028872(n+2), 2%A078840(n))`
-/

namespace A035290.P4224470409863781803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A272870 n + A028872 (n + 2)) (Int.tmod 2 (A078840 n))

end

end A035290.P4224470409863781803

namespace A035290

/-- `lcm(A272870(n)+A028872(n+2), 2%A078840(n))` -/
def P4224470409863781803.Spec : Prop :=
  ∀ n, (P4224470409863781803.a n : ℤ) = A035290 (n + 1)

end A035290

/-! ## A035290.P6174305911793647494

`(A272870(n)+A028872(n+2))*A057427(floor(n/2))`
-/

namespace A035290.P6174305911793647494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A272870 n + A028872 (n + 2)) * A057427 ⌊(n : ℚ) / 2⌋.toNat

end

end A035290.P6174305911793647494

namespace A035290

/-- `(A272870(n)+A028872(n+2))*A057427(floor(n/2))` -/
def P6174305911793647494.Spec : Prop :=
  ∀ n, P6174305911793647494.a n = A035290 (n + 1)

end A035290

/-! ## A035290.P7048958790944209542

`(A272870(n)+A028872(n+2))*char[A117966(n+2)]`
-/

namespace A035290.P7048958790944209542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A272870 n + A028872 (n + 2)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A035290.P7048958790944209542

namespace A035290

/-- `(A272870(n)+A028872(n+2))*char[A117966(n+2)]` -/
def P7048958790944209542.Spec : Prop :=
  ∀ n, P7048958790944209542.a n = A035290 (n + 1)

end A035290

/-! ## A035290.P7020938397749433718

`A160842(n²)-A051624(n)`
-/

namespace A035290.P7020938397749433718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160842 (n ^ 2) - A051624 n

end

end A035290.P7020938397749433718

namespace A035290

/-- `A160842(n²)-A051624(n)` -/
def P7020938397749433718.Spec : Prop :=
  ∀ n, P7020938397749433718.a n = A035290 (n + 1)

end A035290

/-! ## A035290.P3940949135169249419

`A103505(n²)-A111284(A002061(n))`
-/

namespace A035290.P3940949135169249419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (n ^ 2) - A111284 (A002061 n).toNat

end

end A035290.P3940949135169249419

namespace A035290

/-- `A103505(n²)-A111284(A002061(n))` -/
def P3940949135169249419.Spec : Prop :=
  ∀ n, P3940949135169249419.a n = A035290 (n + 1)

end A035290

/-!
# A035291: Number of ways to place a non-attacking white and black queen on n X n chessboard.

The programs for A035291, the canonical program `A035291.P238979479654757615` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035291 has offset 1).

The definition of A035291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035291.P238979479654757615

`(3*(n+1)^4-10*(n+1)^3+9*(n+1)²-2*(n+1))/3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035291

/-- `(3*(n+1)^4-10*(n+1)^3+9*(n+1)²-2*(n+1))/3` -/
def P238979479654757615.Spec : Prop :=
  ∀ n, P238979479654757615.a n = (A035291 (n + 1) : ℚ)

end A035291

/-! ## A035291.P8813728614149585483

`8*∑[n*C(n, 2)]`
-/

namespace A035291.P8813728614149585483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035291.P8813728614149585483

namespace A035291

/-- `8*∑[n*C(n, 2)]` -/
def P8813728614149585483.Spec : Prop :=
  ∀ n, (P8813728614149585483.a n : ℤ) = A035291 (n + 1)

end A035291

/-! ## A035291.P18276264038129492360

`4*∑[n*lcm(n, n-1)]`
-/

namespace A035291.P18276264038129492360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035291.P18276264038129492360

namespace A035291

/-- `4*∑[n*lcm(n, n-1)]` -/
def P18276264038129492360.Spec : Prop :=
  ∀ n, (P18276264038129492360.a n : ℤ) = A035291 (n + 1)

end A035291

/-! ## A035291.P9776630951611750911

`a(n-1)+(n-1)*(2*n)²` with `a(0)=0`
-/

namespace A035291.P9776630951611750911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) * ((2 * n) ^ 2 : ℤ)

end

end A035291.P9776630951611750911

namespace A035291

/-- `a(n-1)+(n-1)*(2*n)²` -/
def P9776630951611750911.Spec : Prop :=
  ∀ n, P9776630951611750911.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P17002530132456294343

`(3*(2*n+1)+1)*C(n+1, 3)`
-/

namespace A035291.P17002530132456294343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (2 * n + 1) + 1) * Nat.choose (n + 1) 3

end

end A035291.P17002530132456294343

namespace A035291

/-- `(3*(2*n+1)+1)*C(n+1, 3)` -/
def P17002530132456294343.Spec : Prop :=
  ∀ n, (P17002530132456294343.a n : ℤ) = A035291 (n + 1)

end A035291

/-! ## A035291.P15316164880477081375

`4*2*∑[∑[∑[a(n-1)+3]]]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A035291.P15316164880477081375
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A035291.P15316164880477081375

namespace A035291

/-- `4*2*∑[∑[∑[a(n-1)+3]]]` -/
def P15316164880477081375.Spec : Prop :=
  ∀ n, (P15316164880477081375.a n : ℤ) = A035291 (n + 1)

end A035291

/-! ## A035291.P17294654921560796692

`floor(a(n-1)+2*n*(n-1)*2*n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A035291.P17294654921560796692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 * n : ℤ) * (((n : ℤ) - 1) * (2 * n : ℤ))

end

end A035291.P17294654921560796692

namespace A035291

/-- `floor(a(n-1)+2*n*(n-1)*2*n)` -/
def P17294654921560796692.Spec : Prop :=
  ∀ n, P17294654921560796692.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P17559155758315077737

`4*∑[A045991(n)]`
-/

namespace A035291.P17559155758315077737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035291.P17559155758315077737

namespace A035291

/-- `4*∑[A045991(n)]` -/
def P17559155758315077737.Spec : Prop :=
  ∀ n, P17559155758315077737.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P6857053431083885947

`2*A036464(n+1)`
-/

namespace A035291.P6857053431083885947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036464 (n + 1)

end

end A035291.P6857053431083885947

namespace A035291

/-- `2*A036464(n+1)` -/
def P6857053431083885947.Spec : Prop :=
  ∀ n, P6857053431083885947.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P18433526216318838092

`A146298(n)+n²²`
-/

namespace A035291.P18433526216318838092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n + ((n ^ 2) ^ 2 : ℤ)

end

end A035291.P18433526216318838092

namespace A035291

/-- `A146298(n)+n²²` -/
def P18433526216318838092.Spec : Prop :=
  ∀ n, P18433526216318838092.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P9293980564572293537

`A172047(n)-∑[n]²`
-/

namespace A035291.P9293980564572293537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172047 n - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A035291.P9293980564572293537

namespace A035291

/-- `A172047(n)-∑[n]²` -/
def P9293980564572293537.Spec : Prop :=
  ∀ n, P9293980564572293537.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P5385628641483307668

`2*(A212560(n)-∑[n])`
-/

namespace A035291.P5385628641483307668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212560 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A035291.P5385628641483307668

namespace A035291

/-- `2*(A212560(n)-∑[n])` -/
def P5385628641483307668.Spec : Prop :=
  ∀ n, P5385628641483307668.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P10491105568553904557

`∑[C(n, 2)]*A016957(n)`
-/

namespace A035291.P10491105568553904557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A016957 n

end

end A035291.P10491105568553904557

namespace A035291

/-- `∑[C(n, 2)]*A016957(n)` -/
def P10491105568553904557.Spec : Prop :=
  ∀ n, P10491105568553904557.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P15653392429088768227

`∑[2*n]²-A002492(n)`
-/

namespace A035291.P15653392429088768227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A002492 n

end

end A035291.P15653392429088768227

namespace A035291

/-- `∑[2*n]²-A002492(n)` -/
def P15653392429088768227.Spec : Prop :=
  ∀ n, P15653392429088768227.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P9004402374921218258

`4*∑[(n-1)*A000290(n)]`
-/

namespace A035291.P9004402374921218258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035291.P9004402374921218258

namespace A035291

/-- `4*∑[(n-1)*A000290(n)]` -/
def P9004402374921218258.Spec : Prop :=
  ∀ n, P9004402374921218258.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P16502951796149053525

`4*A172123(n)-a(n-1)` with `a(0)=0`
-/

namespace A035291.P16502951796149053525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * A172123 n - a (n - 1)

end

end A035291.P16502951796149053525

namespace A035291

/-- `4*A172123(n)-a(n-1)` -/
def P16502951796149053525.Spec : Prop :=
  ∀ n, P16502951796149053525.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P10366672323607977933

`(n+1)²²-A034720(n+1)`
-/

namespace A035291.P10366672323607977933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A034720 (n + 1)

end

end A035291.P10366672323607977933

namespace A035291

/-- `(n+1)²²-A034720(n+1)` -/
def P10366672323607977933.Spec : Prop :=
  ∀ n, P10366672323607977933.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P14517014386137869752

`8*∑[n*A000217(abs(1-n))]`
-/

namespace A035291.P14517014386137869752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035291.P14517014386137869752

namespace A035291

/-- `8*∑[n*A000217(abs(1-n))]` -/
def P14517014386137869752.Spec : Prop :=
  ∀ n, P14517014386137869752.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P1634042434386901530

`A132998(n)+A004466(n)`
-/

namespace A035291.P1634042434386901530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132998 n + A004466 n

end

end A035291.P1634042434386901530

namespace A035291

/-- `A132998(n)+A004466(n)` -/
def P1634042434386901530.Spec : Prop :=
  ∀ n, P1634042434386901530.a n = A035291 (n + 1)

end A035291

/-! ## A035291.P1027255464299144673

`A165563(n)-A001845(n)`
-/

namespace A035291.P1027255464299144673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165563 n - A001845 n

end

end A035291.P1027255464299144673

namespace A035291

/-- `A165563(n)-A001845(n)` -/
def P1027255464299144673.Spec : Prop :=
  ∀ n, P1027255464299144673.a n = A035291 (n + 1)

end A035291

/-!
# A035292: Number of similar sublattices of Z^4 of index n^2.

The programs for A035292, the canonical program `A035292.P15683041574898853470` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035292 has offset 1).

The definition of A035292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035292.P15683041574898853470

`A010684(n)*A045771(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A035292

/-- `A010684(n)*A045771(n+1)` -/
def P15683041574898853470.Spec : Prop :=
  ∀ n, P15683041574898853470.a n = A035292 (n + 1)

theorem P15683041574898853470.correct : P15683041574898853470.Spec := by
  intro n
  simp only [A035292, Nat.add_sub_cancel]

end A035292

/-! ## A035292.P6743853172045837450

`Δ[A042948(n)]*A045771(n+1)`
-/

namespace A035292.P6743853172045837450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A045771 (n + 1)

end

end A035292.P6743853172045837450

namespace A035292

/-- `Δ[A042948(n)]*A045771(n+1)` -/
def P6743853172045837450.Spec : Prop :=
  ∀ n, P6743853172045837450.a n = A035292 (n + 1)

end A035292

/-! ## A035292.P12002684719008300740

`and(3, A016973(n))*A045771(n+1)`
-/

namespace A035292.P12002684719008300740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A016973 n) * A045771 (n + 1)

end

end A035292.P12002684719008300740

namespace A035292

/-- `and(3, A016973(n))*A045771(n+1)` -/
def P12002684719008300740.Spec : Prop :=
  ∀ n, P12002684719008300740.a n = A035292 (n + 1)

end A035292

/-! ## A035292.P5501040609387562047

`A010873(2*n+1)*A045771(n+1)`
-/

namespace A035292.P5501040609387562047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * n + 1) * A045771 (n + 1)

end

end A035292.P5501040609387562047

namespace A035292

/-- `A010873(2*n+1)*A045771(n+1)` -/
def P5501040609387562047.Spec : Prop :=
  ∀ n, P5501040609387562047.a n = A035292 (n + 1)

end A035292

/-! ## A035292.P937153449128035291

`A045771(n+1)/6*A040074(n+1)`
-/

namespace A035292.P937153449128035291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045771 (n + 1) : ℚ) / 6 * (A040074 (n + 1) : ℚ)

end

end A035292.P937153449128035291

namespace A035292

/-- `A045771(n+1)/6*A040074(n+1)` -/
def P937153449128035291.Spec : Prop :=
  ∀ n, P937153449128035291.a n = (A035292 (n + 1) : ℚ)

end A035292

/-! ## A035292.P16563530555660614280

`∑{d}[n+1, A045771(#)*A130706((n+1)/#-1)]`
-/

namespace A035292.P16563530555660614280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045771 d * A130706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035292.P16563530555660614280

namespace A035292

/-- `∑{d}[n+1, A045771(#)*A130706((n+1)/#-1)]` -/
def P16563530555660614280.Spec : Prop :=
  ∀ n, P16563530555660614280.a n = A035292 (n + 1)

end A035292

/-! ## A035292.P4050562876467015545

`A045771(n+1)*A084101(2*n)`
-/

namespace A035292.P4050562876467015545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045771 (n + 1) * A084101 (2 * n)

end

end A035292.P4050562876467015545

namespace A035292

/-- `A045771(n+1)*A084101(2*n)` -/
def P4050562876467015545.Spec : Prop :=
  ∀ n, P4050562876467015545.a n = A035292 (n + 1)

end A035292

/-! ## A035292.P8490354677191742164

`A045771(2*(n+1))*A099545(2*n+1)`
-/

namespace A035292.P8490354677191742164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045771 (2 * (n + 1)) * A099545 (2 * n + 1)

end

end A035292.P8490354677191742164

namespace A035292

/-- `A045771(2*(n+1))*A099545(2*n+1)` -/
def P8490354677191742164.Spec : Prop :=
  ∀ n, P8490354677191742164.a n = A035292 (n + 1)

end A035292

/-! ## A035292.P5026776057453589438

`ratio[A108411(n)]*A045771(n+1)`
-/

namespace A035292.P5026776057453589438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A045771 (n + 1) : ℚ)

end

end A035292.P5026776057453589438

namespace A035292

/-- `ratio[A108411(n)]*A045771(n+1)` -/
def P5026776057453589438.Spec : Prop :=
  ∀ n, P5026776057453589438.a n = (A035292 (n + 1) : ℚ)

end A035292

/-!
# A035294: Number of ways to partition 2n into distinct positive integers.

The programs for A035294, there is no canonical definition to state claims against.
-/

/-! ## A035294.P13729497577734316527

`A000041(n)+A282893(n)`
-/

namespace A035294.P13729497577734316527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + A282893 n

end

end A035294.P13729497577734316527

/-! ## A035294.P6270534208134118072

`A000009(2*n)`
-/

namespace A035294.P6270534208134118072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n)

end

end A035294.P6270534208134118072

/-! ## A035294.P18140062378720255119

`A365828(n)+A111133(n)`
-/

namespace A035294.P18140062378720255119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365828 n + A111133 n

end

end A035294.P18140062378720255119

/-! ## A035294.P11276831942675804682

`A282892(2*n)+A000041(n)`
-/

namespace A035294.P11276831942675804682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (2 * n) + A000041 n

end

end A035294.P11276831942675804682

/-! ## A035294.P4819152397123931699

`A081360(2*n)`
-/

namespace A035294.P4819152397123931699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (2 * n)

end

end A035294.P4819152397123931699

/-! ## A035294.P8008276093840335510

`A111133(2*n)+1`
-/

namespace A035294.P8008276093840335510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (2 * n) + 1

end

end A035294.P8008276093840335510

/-! ## A035294.P6178525094253561982

`abs(record[A081360(n+1)])`
-/

namespace A035294.P6178525094253561982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A035294.P6178525094253561982

/-! ## A035294.P11823189022424762538

`ceil(A087135(2*n)/2)`
-/

namespace A035294.P11823189022424762538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 (2 * n) : ℚ) / 2⌉

end

end A035294.P11823189022424762538

/-! ## A035294.P87041707125024700

`ceil(A333147(2*n)/2)`
-/

namespace A035294.P87041707125024700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 (2 * n) : ℚ) / 2⌉

end

end A035294.P87041707125024700

/-! ## A035294.P17342939010380517455

`abs(A081360(Δ[n²]-1))`
-/

namespace A035294.P17342939010380517455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat|

end

end A035294.P17342939010380517455

/-! ## A035294.P8119965201546951021

`A117409(A103517(n))`
-/

namespace A035294.P8119965201546951021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (A103517 n).toNat

end

end A035294.P8119965201546951021

/-! ## A035294.P6336591395496493925

`A357456(A004278(n+2))`
-/

namespace A035294.P6336591395496493925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357456 (A004278 (n + 2)).toNat

end

end A035294.P6336591395496493925

/-! ## A035294.P8234816084744113

`A052839(A004275(n+1))-1`
-/

namespace A035294.P8234816084744113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (A004275 (n + 1)).toNat - 1

end

end A035294.P8234816084744113

/-! ## A035294.P4524549574509807356

`A282893(n)+A035363(2*n)`
-/

namespace A035294.P4524549574509807356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282893 n + A035363 (2 * n)

end

end A035294.P4524549574509807356

/-! ## A035294.P17410736095828935642

`A096765(2*n)+A025147(2*n)`
-/

namespace A035294.P17410736095828935642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (2 * n) + A025147 (2 * n)

end

end A035294.P17410736095828935642

/-! ## A035294.P6116636501194112178

`A167932(2*n)-A032741(2*n)`
-/

namespace A035294.P6116636501194112178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167932 (2 * n) - A032741 (2 * n)

end

end A035294.P6116636501194112178

/-! ## A035294.P7675724423774115651

`A096765(2*n+1)+A096765(2*n)`
-/

namespace A035294.P7675724423774115651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (2 * n + 1) + A096765 (2 * n)

end

end A035294.P7675724423774115651

/-! ## A035294.P4023931937440620580

`(A333147(2*n)+1)/A020639(2*(n+1))`
-/

namespace A035294.P4023931937440620580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333147 (2 * n) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A035294.P4023931937440620580

/-! ## A035294.P10151560314156445093

`A025147(2*n+1)+A025147(2*n)-A087897(2*n+1)`
-/

namespace A035294.P10151560314156445093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (2 * n + 1) + (A025147 (2 * n) - A087897 (2 * n + 1))

end

end A035294.P10151560314156445093

/-! ## A035294.P12152682800433901428

`A058696(n)-A366527(n)`
-/

namespace A035294.P12152682800433901428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A366527 n

end

end A035294.P12152682800433901428

/-!
# A035295: Expansion of sum ( q^n / product( 1-q^k, k=1..3*n), n=0..inf ).

The programs for A035295, there is no canonical definition to state claims against.
-/

/-! ## A035295.P7018794079076856561

`A035382(3*n)`
-/

namespace A035295.P7018794079076856561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 (3 * n)

end

end A035295.P7018794079076856561

/-! ## A035295.P2088599898686402289

`and(-1, A035382(A008585(n)))`
-/

namespace A035295.P2088599898686402289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A035382 (A008585 n).toNat)

end

end A035295.P2088599898686402289

/-! ## A035295.P7461082759931761610

`or(char[1], A035382(A008486(n)))`
-/

namespace A035295.P7461082759931761610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A035382 (A008486 n).toNat)

end

end A035295.P7461082759931761610

/-! ## A035295.P17108700691723183132

`A035382(A008585(n))%A192096(n)`
-/

namespace A035295.P17108700691723183132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035382 (A008585 n).toNat) (A192096 n)

end

end A035295.P17108700691723183132

/-! ## A035295.P18142507433923937205

`gcd(A000038(n), A035382(A008486(n)))`
-/

namespace A035295.P18142507433923937205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A035382 (A008486 n).toNat)

end

end A035295.P18142507433923937205

/-! ## A035295.P15692845858063156173

`A035382(A008486(n))+A000038(n+1)`
-/

namespace A035295.P15692845858063156173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 (A008486 n).toNat + A000038 (n + 1)

end

end A035295.P15692845858063156173

/-! ## A035295.P13959183492965344427

`A035382(A008585(n))+A000038(n+1)`
-/

namespace A035295.P13959183492965344427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 (A008585 n).toNat + A000038 (n + 1)

end

end A035295.P13959183492965344427

/-! ## A035295.P15346454754715147793

`lcm(A035382(A008585(n)), A062157(n+1))`
-/

namespace A035295.P15346454754715147793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035382 (A008585 n).toNat) (A062157 (n + 1))

end

end A035295.P15346454754715147793

/-! ## A035295.P2449723885255525404

`A035382(A008486(n))/A007318(C(2, n))`
-/

namespace A035295.P2449723885255525404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035382 (A008486 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A035295.P2449723885255525404

/-! ## A035295.P6438729162969730431

`A035382(A008486(n))^ceil(1/A007318(n))`
-/

namespace A035295.P6438729162969730431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035382 (A008486 n).toNat : ℚ) ^ (⌈1 / (A007318 n : ℚ)⌉ : ℤ)

end

end A035295.P6438729162969730431

/-! ## A035295.P14262580864713008567

`A035382(A008486(n))^A007318(C(2, n)!)`
-/

namespace A035295.P14262580864713008567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035382 (A008486 n).toNat : ℚ) ^ (A007318 (Nat.factorial (Nat.choose 2 n)) : ℤ)

end

end A035295.P14262580864713008567

/-! ## A035295.P17603743778598170958

`A035382(A008486(n))+A001221(gcd(n, n+1))`
-/

namespace A035295.P17603743778598170958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 (A008486 n).toNat + A001221 (Nat.gcd n (n + 1))

end

end A035295.P17603743778598170958

/-! ## A035295.P6094156104960424046

`A035382(A008486(n))+A001222(((-1)^n)²)`
-/

namespace A035295.P6094156104960424046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 (A008486 n).toNat + A001222 (((-1) ^ n) ^ 2).toNat

end

end A035295.P6094156104960424046

/-! ## A035295.P8641434032516714902

`A035382(A008486(n))/A000203(((-1)^n)²)`
-/

namespace A035295.P8641434032516714902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035382 (A008486 n).toNat : ℚ) / (A000203 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A035295.P8641434032516714902

/-! ## A035295.P8739679783719739276

`A035382(A008486(n))/val(A005117(n+1), 3)!`
-/

namespace A035295.P8739679783719739276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035382 (A008486 n).toNat : ℚ) / (Nat.factorial (SequenceMachineLib.valuation (A005117 (n + 1)).toNat 3) : ℚ)

end

end A035295.P8739679783719739276

/-! ## A035295.P1217510333386169671

`A035382(record[A257143(n)])%A000051(n)`
-/

namespace A035295.P1217510333386169671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035382 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A000051 n)

end

end A035295.P1217510333386169671

/-! ## A035295.P8843915808304121816

`A035382(A008486(n))^A014963(∑[n+1])`
-/

namespace A035295.P8843915808304121816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035382 (A008486 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A035295.P8843915808304121816

/-!
# A035296: Expansion of sum ( q^n / product( 1-q^k, k=1..4*n), n=0..inf ).

The programs for A035296, there is no canonical definition to state claims against.
-/

/-! ## A035296.P14882388764568203646

`A035451(4*n)`
-/

namespace A035296.P14882388764568203646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 (4 * n)

end

end A035296.P14882388764568203646

/-! ## A035296.P2469273988585969260

`or(char[1], A035451(A008574(n)))`
-/

namespace A035296.P2469273988585969260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A035451 (A008574 n).toNat)

end

end A035296.P2469273988585969260

/-! ## A035296.P7862872814039289656

`or(char[1], A035451(A008586(n)))`
-/

namespace A035296.P7862872814039289656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A035451 (A008586 n).toNat)

end

end A035296.P7862872814039289656

/-! ## A035296.P8457726748027456265

`Δ[A035451(A008586(n-1))+a(n-1)]` with `a(0)=1`
-/

namespace A035296.P8457726748027456265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A035451 (A008586 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035296.P8457726748027456265

/-! ## A035296.P10871615061793022890

`gcd(A000038(n), A035451(A008574(n)))`
-/

namespace A035296.P10871615061793022890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A035451 (A008574 n).toNat)

end

end A035296.P10871615061793022890

/-! ## A035296.P2632835945185234846

`lcm(A035451(A008574(n)), A131561(n))`
-/

namespace A035296.P2632835945185234846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035451 (A008574 n).toNat) (A131561 n)

end

end A035296.P2632835945185234846

/-! ## A035296.P11724881337382006795

`A035451(A008574(n))^A057428(n)²`
-/

namespace A035296.P11724881337382006795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035451 (A008574 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A035296.P11724881337382006795

/-! ## A035296.P17564317143306101140

`A035451(A008574(n))+A000007(n+1)`
-/

namespace A035296.P17564317143306101140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 (A008574 n).toNat + A000007 (n + 1)

end

end A035296.P17564317143306101140

/-! ## A035296.P7792374267295977787

`A035451(A008586(n))+A000007(n+1)`
-/

namespace A035296.P7792374267295977787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 (A008586 n).toNat + A000007 (n + 1)

end

end A035296.P7792374267295977787

/-! ## A035296.P7018696559982838357

`A035451(A008574(n))+A000038(n+1)`
-/

namespace A035296.P7018696559982838357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 (A008574 n).toNat + A000038 (n + 1)

end

end A035296.P7018696559982838357

/-! ## A035296.P17668387325735956398

`A035451(A008586(n))+A000038(n+1)`
-/

namespace A035296.P17668387325735956398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 (A008586 n).toNat + A000038 (n + 1)

end

end A035296.P17668387325735956398

/-! ## A035296.P1123038168160791231

`A035451(A008586(n))/A007318(C(2, n))`
-/

namespace A035296.P1123038168160791231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035451 (A008586 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A035296.P1123038168160791231

/-! ## A035296.P1699597788950652847

`A035451(A008574(n))^A007318(C(2, n))`
-/

namespace A035296.P1699597788950652847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035451 (A008574 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A035296.P1699597788950652847

/-! ## A035296.P12093248321822400566

`A035451(A008574(n))/A007318(and(1, -n))`
-/

namespace A035296.P12093248321822400566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035451 (A008574 n).toNat : ℚ) / (A007318 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A035296.P12093248321822400566

/-! ## A035296.P13988754557451557724

`A035451(A008574(n))^A000108(C(3, n²))`
-/

namespace A035296.P13988754557451557724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035451 (A008574 n).toNat : ℚ) ^ (A000108 (Nat.choose 3 (n ^ 2)) : ℤ)

end

end A035296.P13988754557451557724

/-! ## A035296.P7096527108720154181

`A035451(A008586(n))/A007318(and(3, 2-n))`
-/

namespace A035296.P7096527108720154181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035451 (A008586 n).toNat : ℚ) / (A007318 (Int.land 3 (2 - (n : ℤ))).toNat : ℚ)

end

end A035296.P7096527108720154181

/-! ## A035296.P6426184600685874699

`A035451(A008586(n))/A000010(gcd(n, n+1))`
-/

namespace A035296.P6426184600685874699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035451 (A008586 n).toNat : ℚ) / (A000010 (Nat.gcd n (n + 1)) : ℚ)

end

end A035296.P6426184600685874699

/-! ## A035296.P6496002597210927264

`A035451(A008574(n))+A001222(ceil(1/(n+1)))`
-/

namespace A035296.P6496002597210927264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 (A008574 n).toNat + A001222 ⌈1 / (n + 1 : ℚ)⌉.toNat

end

end A035296.P6496002597210927264

/-! ## A035296.P16109202097901863888

`A035451(A008574(n))^A001221(A062383(n))`
-/

namespace A035296.P16109202097901863888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035451 (A008574 n).toNat : ℚ) ^ (A001221 (A062383 n).toNat : ℤ)

end

end A035296.P16109202097901863888

/-!
# A035297: Expansion of sum ( q^n / product( 1-q^k, k=1..5*n), n=0..inf ).

The programs for A035297, there is no canonical definition to state claims against.
-/

/-! ## A035297.P14244468346618902114

`A109697(5*n)`
-/

namespace A035297.P14244468346618902114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109697 (5 * n)

end

end A035297.P14244468346618902114

/-! ## A035297.P6675205729980659320

`and(-1, A109697(A008706(n)))`
-/

namespace A035297.P6675205729980659320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A109697 (A008706 n).toNat)

end

end A035297.P6675205729980659320

/-! ## A035297.P9460699907894283625

`A109697(A008592(n)/2)/((-1)^n)²`
-/

namespace A035297.P9460699907894283625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109697 (SequenceMachineLib.roundAway ((A008592 n : ℚ) / 2)).toNat : ℚ) / (((-1) ^ n) ^ 2 : ℚ)

end

end A035297.P9460699907894283625

/-! ## A035297.P13245167788918108406

`gcd(A000038(n), A109697(A008706(n)))`
-/

namespace A035297.P13245167788918108406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A109697 (A008706 n).toNat)

end

end A035297.P13245167788918108406

/-! ## A035297.P12189363780505136819

`lcm(A033999(n), A109697(A008706(n)))`
-/

namespace A035297.P12189363780505136819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A109697 (A008706 n).toNat)

end

end A035297.P12189363780505136819

/-! ## A035297.P1712417165309247024

`A109697(A008706(n))+A000007(n+1)`
-/

namespace A035297.P1712417165309247024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109697 (A008706 n).toNat + A000007 (n + 1)

end

end A035297.P1712417165309247024

/-! ## A035297.P1949878733190415921

`A109697(A008706(n))+A000038(n+1)`
-/

namespace A035297.P1949878733190415921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109697 (A008706 n).toNat + A000038 (n + 1)

end

end A035297.P1949878733190415921

/-! ## A035297.P13551260289795285782

`A109697(A008706(n))/A007318(C(2, n))`
-/

namespace A035297.P13551260289795285782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109697 (A008706 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A035297.P13551260289795285782

/-! ## A035297.P7683745726154459965

`A109697(A008706(n))^A007318(C(3, n))`
-/

namespace A035297.P7683745726154459965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109697 (A008706 n).toNat : ℚ) ^ (A007318 (Nat.choose 3 n) : ℤ)

end

end A035297.P7683745726154459965

/-! ## A035297.P4963184278489880696

`A109697(A008706(n))/A000041(C(n, n²))`
-/

namespace A035297.P4963184278489880696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109697 (A008706 n).toNat : ℚ) / (A000041 (Nat.choose n (n ^ 2)) : ℚ)

end

end A035297.P4963184278489880696

/-! ## A035297.P6326782767146252619

`A109697(A008706(n))/A007318(gcd(n, n+1))`
-/

namespace A035297.P6326782767146252619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109697 (A008706 n).toNat : ℚ) / (A007318 (Nat.gcd n (n + 1)) : ℚ)

end

end A035297.P6326782767146252619

/-! ## A035297.P2140736884096807614

`A109697(A008706(n))^A000005(((-1)^n)²)`
-/

namespace A035297.P2140736884096807614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109697 (A008706 n).toNat : ℚ) ^ (A000005 (((-1) ^ n) ^ 2).toNat : ℤ)

end

end A035297.P2140736884096807614

/-! ## A035297.P1352055729833264925

`A109697(A008706(n))+A008683(A044118(n+1))`
-/

namespace A035297.P1352055729833264925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109697 (A008706 n).toNat + A008683 (A044118 (n + 1)).toNat

end

end A035297.P1352055729833264925

/-! ## A035297.P11463475752477447367

`A109697(A008706(n))/A014963(A008458(n))`
-/

namespace A035297.P11463475752477447367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109697 (A008706 n).toNat : ℚ) / (A014963 (A008458 n).toNat : ℚ)

end

end A035297.P11463475752477447367

/-! ## A035297.P8924517877113945811

`A109697(A008706(n))/A000688(A000040(n+1))`
-/

namespace A035297.P8924517877113945811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109697 (A008706 n).toNat : ℚ) / (A000688 (A000040 (n + 1)).toNat : ℚ)

end

end A035297.P8924517877113945811

/-! ## A035297.P12528265107328961146

`A109697(A008706(n))^A014963(∑[n+1])`
-/

namespace A035297.P12528265107328961146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109697 (A008706 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A035297.P12528265107328961146

/-!
# A035298: Expansion of sum ( q^n / product( 1-q^k, k=1..6*n), n=0..inf ).

The programs for A035298, there is no canonical definition to state claims against.
-/

/-! ## A035298.P7516167684911066615

`A109701(6*n)`
-/

namespace A035298.P7516167684911066615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109701 (6 * n)

end

end A035298.P7516167684911066615

/-! ## A035298.P2142385028698436850

`or(char[1], A109701(A008458(n)))`
-/

namespace A035298.P2142385028698436850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A109701 (A008458 n).toNat)

end

end A035298.P2142385028698436850

/-! ## A035298.P16906391079743121246

`or(char[1], A109701(A008588(n)))`
-/

namespace A035298.P16906391079743121246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A109701 (A008588 n).toNat)

end

end A035298.P16906391079743121246

/-! ## A035298.P4165526492664071644

`gcd(A000038(n), A109701(A008458(n)))`
-/

namespace A035298.P4165526492664071644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A109701 (A008458 n).toNat)

end

end A035298.P4165526492664071644

/-! ## A035298.P10628484592898691423

`A109701(A008458(n))+A000007(n+1)`
-/

namespace A035298.P10628484592898691423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109701 (A008458 n).toNat + A000007 (n + 1)

end

end A035298.P10628484592898691423

/-! ## A035298.P14496291148902054073

`A109701(A008458(n))+A000038(n+1)`
-/

namespace A035298.P14496291148902054073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109701 (A008458 n).toNat + A000038 (n + 1)

end

end A035298.P14496291148902054073

/-! ## A035298.P9063663199004191632

`A109701(A008458(n))+and(2, A000035(n))`
-/

namespace A035298.P9063663199004191632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109701 (A008458 n).toNat + Int.land 2 (A000035 n)

end

end A035298.P9063663199004191632

/-! ## A035298.P534417478696700768

`A109701(A008458(n))/A007318(C(2, n))`
-/

namespace A035298.P534417478696700768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109701 (A008458 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A035298.P534417478696700768

/-! ## A035298.P16819980691217964464

`A109701(A008458(n))/A007318(and(3, -n))`
-/

namespace A035298.P16819980691217964464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109701 (A008458 n).toNat : ℚ) / (A007318 (Int.land 3 (-(n : ℤ))).toNat : ℚ)

end

end A035298.P16819980691217964464

/-! ## A035298.P3606680047750321835

`A109701(A008458(n))^A000124(C(3, n²))`
-/

namespace A035298.P3606680047750321835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109701 (A008458 n).toNat : ℚ) ^ (A000124 (Nat.choose 3 (n ^ 2)) : ℤ)

end

end A035298.P3606680047750321835

/-! ## A035298.P10250843031151376811

`A109701(A008458(n))^(A000040(n+1)%2)`
-/

namespace A035298.P10250843031151376811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109701 (A008458 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A035298.P10250843031151376811

/-! ## A035298.P11556736863425770947

`A109701(A008458(n))/A000041(gcd(n, n+1))`
-/

namespace A035298.P11556736863425770947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109701 (A008458 n).toNat : ℚ) / (A000041 (Nat.gcd n (n + 1)) : ℚ)

end

end A035298.P11556736863425770947

/-! ## A035298.P5474422026282550237

`A109701(A008458(n))/A007318(A057944(n))`
-/

namespace A035298.P5474422026282550237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109701 (A008458 n).toNat : ℚ) / (A007318 (A057944 n).toNat : ℚ)

end

end A035298.P5474422026282550237

/-! ## A035298.P14953143377672629815

`A109701(A008458(n))^A001221(A001316(n))`
-/

namespace A035298.P14953143377672629815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109701 (A008458 n).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A035298.P14953143377672629815

/-! ## A035298.P8529883903401472071

`A109701(A008458(n))^A008683(A001747(n+1))`
-/

namespace A035298.P8529883903401472071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109701 (A008458 n).toNat : ℚ) ^ (A008683 (A001747 (n + 1)).toNat : ℤ)

end

end A035298.P8529883903401472071

/-! ## A035298.P8131757392276574641

`A109701(A008458(n))%A000211(n)`
-/

namespace A035298.P8131757392276574641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109701 (A008458 n).toNat) (A000211 n)

end

end A035298.P8131757392276574641

/-! ## A035298.P748971140919710154

`A109701(A008458(n))^A014963(∑[n+1])`
-/

namespace A035298.P748971140919710154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109701 (A008458 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A035298.P748971140919710154

