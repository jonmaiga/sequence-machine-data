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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A387301: a(n) = Sum_{k=0..floor(n/2)} binomial(n+k-1,k) * binomial(n+k-1,n-2*k).

The programs for A387301, there is no canonical definition to state claims against.
-/

/-! ## A387301.P14493636514412168759

`A204444(n+1)%(A387360(n+5)+1)`
-/

namespace A387301.P14493636514412168759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204444 (n + 1)) (A387360 (n + 5) + 1)

end

end A387301.P14493636514412168759

/-! ## A387301.P12392941420337334113

`A349464(A002415(n))+A079978(n)`
-/

namespace A387301.P12392941420337334113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349464 (A002415 n).toNat + A079978 n

end

end A387301.P12392941420337334113

/-!
# A387302: Numbers k that can be written as k = s_1^x_1 + ... + s_t^x_t, with 1 < s_1 < ... < s_t and {s_1,..., s_t} = {x_1,..., x_t} for some t > 0 such that for all possible representations of k the permutations connecting (s_1,...,s_t) with (x_1,...,x_t) are cyclic.

The programs for A387302, there is no canonical definition to state claims against.
-/

/-! ## A387302.P5643744060220707218

`∩[A184429(n+1), A385969(n+1)]`
-/

namespace A387302.P5643744060220707218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387302.P5643744060220707218

/-!
# A387304: a(n) is the least integer k such that 7^k begins with n!.

The programs for A387304, there is no canonical definition to state claims against.
-/

/-! ## A387304.P13971053124934080094

`A018866(n!)`
-/

namespace A387304.P13971053124934080094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018866 (Nat.factorial n)

end

end A387304.P13971053124934080094

/-! ## A387304.P13874252570212593343

`A018866(A000142(n))`
-/

namespace A387304.P13874252570212593343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018866 (A000142 n).toNat

end

end A387304.P13874252570212593343

/-! ## A387304.P2838665401701859838

`A018866(A033646(n))`
-/

namespace A387304.P2838665401701859838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018866 (A033646 n).toNat

end

end A387304.P2838665401701859838

/-! ## A387304.P15051008910807737341

`A018866(A033647(n))`
-/

namespace A387304.P15051008910807737341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018866 (A033647 n).toNat

end

end A387304.P15051008910807737341

/-!
# A387305: Least k such that the Hamming weight (A000120) of n*k is prime.

The programs for A387305, there is no canonical definition to state claims against.
-/

/-! ## A387305.P7637242184214012846

`A160899(n+1)/(n+1)`
-/

namespace A387305.P7637242184214012846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160899 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A387305.P7637242184214012846

/-!
# A387307: a(n) = Sum_{k=0..n} 2^k * binomial(n+2,k+2) * binomial(2*k+4,k+4).

The programs for A387307, the canonical program `A387307.P2524569080933598071` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387307 has offset 0).

The definition of A387307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 2^#*C(n+2, #+2)*C(2*#+4, #)]` (program `A387307.P2524569080933598071`, by `A387307.P2524569080933598071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387307.P2524569080933598071

`∑{#}[n, 2^#*C(n+2, #+2)*C(2*#+4, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387307

/-- `∑{#}[n, 2^#*C(n+2, #+2)*C(2*#+4, #)]` -/
def P2524569080933598071.Spec : Prop :=
  ∀ n, (P2524569080933598071.a n : ℤ) = A387307 n

theorem P2524569080933598071.correct : P2524569080933598071.Spec := by
  intro n
  simp only [A387307]

end A387307

/-! ## A387307.P2496282662068370836

`∑{#}[n, 2^#*C(n+2, #+2)*C(2*#+4, #+4)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387307.P2496282662068370836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose (n + 2) (k + 2) * Nat.choose (2 * k + 4) (k + 4)

end

end A387307.P2496282662068370836

namespace A387307

/-- `∑{#}[n, 2^#*C(n+2, #+2)*C(2*#+4, #+4)]` -/
def P2496282662068370836.Spec : Prop :=
  ∀ n, (P2496282662068370836.a n : ℤ) = A387307 n

end A387307

/-!
# A387308: a(n) = Sum_{k=0..n} 2^k * binomial(n+3,k+3) * binomial(2*k+6,k+6).

The programs for A387308, the canonical program `A387308.P9153243800624317563` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387308 has offset 0).

The definition of A387308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 2^#*C(n+3, #+3)*C(2*#+6, #)]` (program `A387308.P9153243800624317563`, by `A387308.P9153243800624317563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387308.P9153243800624317563

`∑{#}[n, 2^#*C(n+3, #+3)*C(2*#+6, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387308

/-- `∑{#}[n, 2^#*C(n+3, #+3)*C(2*#+6, #)]` -/
def P9153243800624317563.Spec : Prop :=
  ∀ n, (P9153243800624317563.a n : ℤ) = A387308 n

theorem P9153243800624317563.correct : P9153243800624317563.Spec := by
  intro n
  simp only [A387308]

end A387308

/-! ## A387308.P12841346879317899527

`∑{#}[n, 2^#*C(n+3, #+3)*C(2*#+6, #+6)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387308.P12841346879317899527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose (n + 3) (k + 3) * Nat.choose (2 * k + 6) (k + 6)

end

end A387308.P12841346879317899527

namespace A387308

/-- `∑{#}[n, 2^#*C(n+3, #+3)*C(2*#+6, #+6)]` -/
def P12841346879317899527.Spec : Prop :=
  ∀ n, (P12841346879317899527.a n : ℤ) = A387308 n

end A387308

/-!
# A387309: a(n) = Sum_{k=0..n} 3^k * binomial(n+1,k+1) * binomial(2*k+2,k+2).

The programs for A387309, the canonical program `A387309.P4759350772295666553` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387309 has offset 0).

The definition of A387309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n+1, #+1)*C(2*#+2, #)]` (program `A387309.P4759350772295666553`, by `A387309.P4759350772295666553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387309.P4759350772295666553

`∑{#}[n, 3^#*C(n+1, #+1)*C(2*#+2, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387309

/-- `∑{#}[n, 3^#*C(n+1, #+1)*C(2*#+2, #)]` -/
def P4759350772295666553.Spec : Prop :=
  ∀ n, (P4759350772295666553.a n : ℤ) = A387309 n

theorem P4759350772295666553.correct : P4759350772295666553.Spec := by
  intro n
  simp only [A387309]

end A387309

/-! ## A387309.P14421136308455722189

`∑{#}[n, 3^#*C(n+1, #+1)*C(2*#+2, #+2)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387309.P14421136308455722189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 3 ^ k * Nat.choose (n + 1) (k + 1) * Nat.choose (2 * k + 2) (k + 2)

end

end A387309.P14421136308455722189

namespace A387309

/-- `∑{#}[n, 3^#*C(n+1, #+1)*C(2*#+2, #+2)]` -/
def P14421136308455722189.Spec : Prop :=
  ∀ n, (P14421136308455722189.a n : ℤ) = A387309 n

end A387309

/-! ## A387309.P11184450722500556635

`(1+n)*A386362(n)`
-/

namespace A387309.P11184450722500556635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A386362 n

end

end A387309.P11184450722500556635

namespace A387309

/-- `(1+n)*A386362(n)` -/
def P11184450722500556635.Spec : Prop :=
  ∀ n, P11184450722500556635.a n = A387309 n

end A387309

/-! ## A387309.P1239333981695414085

`(A337167(n+1)-A337167(n))/3*(n+1)`
-/

namespace A387309.P1239333981695414085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337167 (n + 1) - A337167 n : ℚ) / 3 * (n + 1 : ℚ)

end

end A387309.P1239333981695414085

namespace A387309

/-- `(A337167(n+1)-A337167(n))/3*(n+1)` -/
def P1239333981695414085.Spec : Prop :=
  ∀ n, P1239333981695414085.a n = (A387309 n : ℚ)

end A387309

/-!
# A387310: a(n) = Sum_{k=0..n} 3^k * binomial(n+2,k+2) * binomial(2*k+4,k+4).

The programs for A387310, the canonical program `A387310.P11274631010489524022` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387310 has offset 0).

The definition of A387310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n+2, #+2)*C(2*#+4, #)]` (program `A387310.P11274631010489524022`, by `A387310.P11274631010489524022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387310.P11274631010489524022

`∑{#}[n, 3^#*C(n+2, #+2)*C(2*#+4, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387310

/-- `∑{#}[n, 3^#*C(n+2, #+2)*C(2*#+4, #)]` -/
def P11274631010489524022.Spec : Prop :=
  ∀ n, (P11274631010489524022.a n : ℤ) = A387310 n

theorem P11274631010489524022.correct : P11274631010489524022.Spec := by
  intro n
  simp only [A387310]

end A387310

/-! ## A387310.P7867637415428769424

`∑{#}[n, 3^#*C(n+2, #+2)*C(2*#+4, #+4)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387310.P7867637415428769424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 3 ^ k * Nat.choose (n + 2) (k + 2) * Nat.choose (2 * k + 4) (k + 4)

end

end A387310.P7867637415428769424

namespace A387310

/-- `∑{#}[n, 3^#*C(n+2, #+2)*C(2*#+4, #+4)]` -/
def P7867637415428769424.Spec : Prop :=
  ∀ n, (P7867637415428769424.a n : ℤ) = A387310 n

end A387310

/-!
# A387311: a(n) = Sum_{k=0..n} 3^k * binomial(n+3,k+3) * binomial(2*k+6,k+6).

The programs for A387311, the canonical program `A387311.P9213783029135252533` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387311 has offset 0).

The definition of A387311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n+3, #+3)*C(2*#+6, #)]` (program `A387311.P9213783029135252533`, by `A387311.P9213783029135252533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387311.P9213783029135252533

`∑{#}[n, 3^#*C(n+3, #+3)*C(2*#+6, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387311

/-- `∑{#}[n, 3^#*C(n+3, #+3)*C(2*#+6, #)]` -/
def P9213783029135252533.Spec : Prop :=
  ∀ n, (P9213783029135252533.a n : ℤ) = A387311 n

theorem P9213783029135252533.correct : P9213783029135252533.Spec := by
  intro n
  simp only [A387311]

end A387311

/-! ## A387311.P7801508474272989714

`∑{#}[n, 3^#*C(n+3, #+3)*C(2*#+6, #+6)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387311.P7801508474272989714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 3 ^ k * Nat.choose (n + 3) (k + 3) * Nat.choose (2 * k + 6) (k + 6)

end

end A387311.P7801508474272989714

namespace A387311

/-- `∑{#}[n, 3^#*C(n+3, #+3)*C(2*#+6, #+6)]` -/
def P7801508474272989714.Spec : Prop :=
  ∀ n, (P7801508474272989714.a n : ℤ) = A387311 n

end A387311

/-!
# A387312: a(n) is the action of "Rule 30" elementary cellular automaton on the binary representation of n if the cells may only expand into the significant bit.

The programs for A387312, the canonical program `A387312.P4428100148096621254` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387312 has offset 0).

The definition of A387312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387312.P9144353334564222512

`xor(or(2*n, n), floor(n/2))`
-/

namespace A387312.P9144353334564222512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.lor (2 * n) n : ℤ) ⌊(n : ℚ) / 2⌋

end

end A387312.P9144353334564222512

namespace A387312

/-- `xor(or(2*n, n), floor(n/2))` -/
def P9144353334564222512.Spec : Prop :=
  ∀ n, P9144353334564222512.a n = A387312 n

end A387312

/-! ## A387312.P3080497516040180421

`xor(and(2*n, -n), xor(n, floor(n/2)))`
-/

namespace A387312.P3080497516040180421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land (2 * n : ℤ) (-(n : ℤ))) (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A387312.P3080497516040180421

namespace A387312

/-- `xor(and(2*n, -n), xor(n, floor(n/2)))` -/
def P3080497516040180421.Spec : Prop :=
  ∀ n, P3080497516040180421.a n = A387312 n

end A387312

/-! ## A387312.P9172771766903397612

`floor(A269160(n)/2)`
-/

namespace A387312.P9172771766903397612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269160 n : ℚ) / 2⌋

end

end A387312.P9172771766903397612

namespace A387312

/-- `floor(A269160(n)/2)` -/
def P9172771766903397612.Spec : Prop :=
  ∀ n, P9172771766903397612.a n = A387312 n

end A387312

/-! ## A387312.P4428100148096621254

`xor(A004526(n), A163617(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387312

/-- `xor(A004526(n), A163617(n))` -/
def P4428100148096621254.Spec : Prop :=
  ∀ n, P4428100148096621254.a n = A387312 n

theorem P4428100148096621254.correct : P4428100148096621254.Spec := by
  intro n
  simp only [A387312]

end A387312

/-! ## A387312.P9047020558634178753

`xor(A003188(n), A213064(n))`
-/

namespace A387312.P9047020558634178753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 n) (A213064 n)

end

end A387312.P9047020558634178753

namespace A387312

/-- `xor(A003188(n), A213064(n))` -/
def P9047020558634178753.Spec : Prop :=
  ∀ n, P9047020558634178753.a n = A387312 n

end A387312

/-! ## A387312.P14922628112281710577

`xor(A229763(n), A396059(n))`
-/

namespace A387312.P14922628112281710577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A229763 n) (A396059 n)

end

end A387312.P14922628112281710577

namespace A387312

/-- `xor(A229763(n), A396059(n))` -/
def P14922628112281710577.Spec : Prop :=
  ∀ n, P14922628112281710577.a n = A387312 n

end A387312

/-! ## A387312.P5697952871283079121

`A004526(xor(n, 2*or(n, 2*n)))`
-/

namespace A387312.P5697952871283079121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.xor n (2 * Nat.lor n (2 * n)))

end

end A387312.P5697952871283079121

namespace A387312

/-- `A004526(xor(n, 2*or(n, 2*n)))` -/
def P5697952871283079121.Spec : Prop :=
  ∀ n, P5697952871283079121.a n = A387312 n

end A387312

/-! ## A387312.P6954795175070439987

`A004526(A269160(n))`
-/

namespace A387312.P6954795175070439987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A269160 n).toNat

end

end A387312.P6954795175070439987

namespace A387312

/-- `A004526(A269160(n))` -/
def P6954795175070439987.Spec : Prop :=
  ∀ n, P6954795175070439987.a n = A387312 n

end A387312

/-! ## A387312.P13534443879975631231

`A028242(or(1, A269160(n)))`
-/

namespace A387312.P13534443879975631231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A269160 n)).toNat

end

end A387312.P13534443879975631231

namespace A387312

/-- `A028242(or(1, A269160(n)))` -/
def P13534443879975631231.Spec : Prop :=
  ∀ n, P13534443879975631231.a n = A387312 n

end A387312

/-! ## A387312.P6744138310841495842

`A008615(3*A269160(n))`
-/

namespace A387312.P6744138310841495842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A269160 n).toNat

end

end A387312.P6744138310841495842

namespace A387312

/-- `A008615(3*A269160(n))` -/
def P6744138310841495842.Spec : Prop :=
  ∀ n, P6744138310841495842.a n = A387312 n

end A387312

/-! ## A387312.P18428214713857165376

`A059995(5*A269160(n))`
-/

namespace A387312.P18428214713857165376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (5 * A269160 n).toNat

end

end A387312.P18428214713857165376

namespace A387312

/-- `A059995(5*A269160(n))` -/
def P18428214713857165376.Spec : Prop :=
  ∀ n, P18428214713857165376.a n = A387312 n

end A387312

/-!
# A387313: Expansion of 1/((1-x) * (1-9*x))^(5/2).

The programs for A387313, the canonical program `A387313.P10532288655140270211` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387313 has offset 0).

The definition of A387313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387313.P10532288655140270211

`C(n+4, 2)/6*A387307(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387313

/-- `C(n+4, 2)/6*A387307(n)` -/
def P10532288655140270211.Spec : Prop :=
  ∀ n, P10532288655140270211.a n = (A387313 n : ℚ)

end A387313

/-! ## A387313.P14062147011858993709

`∑[∑[∑[A387229(n)]]]`
-/

namespace A387313.P14062147011858993709
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387313.P14062147011858993709

namespace A387313

/-- `∑[∑[∑[A387229(n)]]]` -/
def P14062147011858993709.Spec : Prop :=
  ∀ n, P14062147011858993709.a n = A387313 n

end A387313

/-!
# A387314: Expansion of 1/((1-x) * (1-9*x))^(7/2).

The programs for A387314, the canonical program `A387314.P10684369299051240623` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387314 has offset 0).

The definition of A387314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387314.P10684369299051240623

`C(n+6, 3)/20*A387308(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387314

/-- `C(n+6, 3)/20*A387308(n)` -/
def P10684369299051240623.Spec : Prop :=
  ∀ n, P10684369299051240623.a n = (A387314 n : ℚ)

end A387314

/-!
# A387315: Expansion of 1/((1-x) * (1-13*x))^(5/2).

The programs for A387315, the canonical program `A387315.P6647550855949848126` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387315 has offset 0).

The definition of A387315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387315.P6647550855949848126

`C(n+4, 2)/6*A387310(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387315

/-- `C(n+4, 2)/6*A387310(n)` -/
def P6647550855949848126.Spec : Prop :=
  ∀ n, P6647550855949848126.a n = (A387315 n : ℚ)

end A387315

/-! ## A387315.P6397285765343055359

`∑[∑[∑[A387230(n)]]]`
-/

namespace A387315.P6397285765343055359
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387315.P6397285765343055359

namespace A387315

/-- `∑[∑[∑[A387230(n)]]]` -/
def P6397285765343055359.Spec : Prop :=
  ∀ n, P6397285765343055359.a n = A387315 n

end A387315

/-!
# A387316: Expansion of 1/((1-x) * (1-13*x))^(7/2).

The programs for A387316, the canonical program `A387316.P3447663394427698712` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387316 has offset 0).

The definition of A387316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387316.P3447663394427698712

`C(n+6, 3)/20*A387311(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387316

/-- `C(n+6, 3)/20*A387311(n)` -/
def P3447663394427698712.Spec : Prop :=
  ∀ n, P3447663394427698712.a n = (A387316 n : ℚ)

end A387316

/-!
# A387318: a(n) is the maximum number of water-pouring moves needed to reach (1, 1, ..., 1) from any valid initial configuration for n bottles.

The programs for A387318, there is no canonical definition to state claims against.
-/

/-! ## A387318.P4177871365185194884

`comp[∑[gcd(2, ∑[n])+2]]`
-/

namespace A387318.P4177871365185194884
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A387318.P4177871365185194884

/-! ## A387318.P14971770417227039866

`floor(∑[root(∑[n], n+2)])`
-/

namespace A387318.P14971770417227039866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) ^ (1 / (n + 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A387318.P14971770417227039866

/-! ## A387318.P122917349463301262

`comp[ceil(log((n+3)!²))]`
-/

namespace A387318.P122917349463301262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Nat.factorial (n + 3) ^ 2 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A387318.P122917349463301262

/-!
# A387319: Numbers k for which modulo 3 and modulo another multiple of 3 are coincident among the fractions (2*k mod m)/m for 1 <= m <= k.

The programs for A387319, the canonical program `A387319.P17597783198726216255` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387319 has offset 1).

The definition of A387319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387319.P8257288981389445470

`A343311(n+1)+A159075(n)`
-/

namespace A387319.P8257288981389445470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1) + A159075 n

end

end A387319.P8257288981389445470

namespace A387319

/-- `A343311(n+1)+A159075(n)` -/
def P8257288981389445470.Spec : Prop :=
  ∀ n, P8257288981389445470.a n = A387319 (n + 1)

end A387319

/-! ## A387319.P17597783198726216255

`A343311(n+1)-A063524(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A387319

/-- `A343311(n+1)-A063524(n)` -/
def P17597783198726216255.Spec : Prop :=
  ∀ n, P17597783198726216255.a n = A387319 (n + 1)

theorem P17597783198726216255.correct : P17597783198726216255.Spec := by
  intro n
  simp only [A387319, Nat.add_sub_cancel]

end A387319

/-! ## A387319.P2442433390106032837

`lt[floor(5*(n+1)/3)-floor(5*n/3), A167865(n)]`
-/

namespace A387319.P2442433390106032837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n + 1 : ℚ) / 3)⌋ - ⌊5 * ((n : ℚ) / 3)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387319.P2442433390106032837

namespace A387319

/-- `lt[floor(5*(n+1)/3)-floor(5*n/3), A167865(n)]` -/
def P2442433390106032837.Spec : Prop :=
  ∀ n, (P2442433390106032837.a n : ℤ) = A387319 (n + 1)

end A387319

/-! ## A387319.P4892475872933919596

`lt[A001222(2*n+5), A000041(A167865(n))]`
-/

namespace A387319.P4892475872933919596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A167865 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387319.P4892475872933919596

namespace A387319

/-- `lt[A001222(2*n+5), A000041(A167865(n))]` -/
def P4892475872933919596.Spec : Prop :=
  ∀ n, (P4892475872933919596.a n : ℤ) = A387319 (n + 1)

end A387319

/-! ## A387319.P18097034191111026421

`lt[A030302(n+1), A022559(A167865(n))]`
-/

namespace A387319.P18097034191111026421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A167865 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387319.P18097034191111026421

namespace A387319

/-- `lt[A030302(n+1), A022559(A167865(n))]` -/
def P18097034191111026421.Spec : Prop :=
  ∀ n, (P18097034191111026421.a n : ℤ) = A387319 (n + 1)

end A387319

/-! ## A387319.P18412321919702342054

`A343311(n+1)-A049084(A174973(n+1))`
-/

namespace A387319.P18412321919702342054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1) - A049084 (A174973 (n + 1)).toNat

end

end A387319.P18412321919702342054

namespace A387319

/-- `A343311(n+1)-A049084(A174973(n+1))` -/
def P18412321919702342054.Spec : Prop :=
  ∀ n, P18412321919702342054.a n = A387319 (n + 1)

end A387319

/-! ## A387319.P15743057773582472749

`lt[A331857(n+3), A074635(A167865(n))]`
-/

namespace A387319.P15743057773582472749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331857 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074635 (A167865 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387319.P15743057773582472749

namespace A387319

/-- `lt[A331857(n+3), A074635(A167865(n))]` -/
def P15743057773582472749.Spec : Prop :=
  ∀ n, (P15743057773582472749.a n : ℤ) = A387319 (n + 1)

end A387319

/-!
# A387325: Self-inverse permutation of the nonnegative integers, by swapping and converting the head and tail parts of n in binary and using the rightmost 0-bit as their separator.

The programs for A387325, the canonical program `A387325.P12366465277394037670` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387325 has offset 0).

The definition of A387325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387325.P12366465277394037670

`A117303(n+1)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A387325

/-- `A117303(n+1)-1` -/
def P12366465277394037670.Spec : Prop :=
  ∀ n, P12366465277394037670.a n = A387325 n

theorem P12366465277394037670.correct : P12366465277394037670.Spec := by
  intro n
  simp only [A387325]

end A387325

/-! ## A387325.P10602867737513576169

`A153881(n+2)+A117303(n+1)`
-/

namespace A387325.P10602867737513576169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A117303 (n + 1)

end

end A387325.P10602867737513576169

namespace A387325

/-- `A153881(n+2)+A117303(n+1)` -/
def P10602867737513576169.Spec : Prop :=
  ∀ n, P10602867737513576169.a n = A387325 n

end A387325

/-! ## A387325.P3470590897878273988

`A348508(floor(1/(n+1))+1)+A117303(n+1)`
-/

namespace A387325.P3470590897878273988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348508 (⌊1 / (n + 1 : ℚ)⌋ + 1).toNat + A117303 (n + 1)

end

end A387325.P3470590897878273988

namespace A387325

/-- `A348508(floor(1/(n+1))+1)+A117303(n+1)` -/
def P3470590897878273988.Spec : Prop :=
  ∀ n, P3470590897878273988.a n = A387325 n

end A387325

/-! ## A387325.P17565844899140443938

`A075300(A075303(n))`
-/

namespace A387325.P17565844899140443938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 (A075303 n).toNat

end

end A387325.P17565844899140443938

namespace A387325

/-- `A075300(A075303(n))` -/
def P17565844899140443938.Spec : Prop :=
  ∀ n, P17565844899140443938.a n = A387325 n

end A387325

/-! ## A387325.P16979070788052339964

`A075302(A075301(n))`
-/

namespace A387325.P16979070788052339964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075302 (A075301 n).toNat

end

end A387325.P16979070788052339964

namespace A387325

/-- `A075302(A075301(n))` -/
def P16979070788052339964.Spec : Prop :=
  ∀ n, P16979070788052339964.a n = A387325 n

end A387325

/-! ## A387325.P9356943277197760688

`A346241(A141166(n+1))+A117303(n+1)`
-/

namespace A387325.P9356943277197760688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (A141166 (n + 1)).toNat + A117303 (n + 1)

end

end A387325.P9356943277197760688

namespace A387325

/-- `A346241(A141166(n+1))+A117303(n+1)` -/
def P9356943277197760688.Spec : Prop :=
  ∀ n, P9356943277197760688.a n = A387325 n

end A387325

/-! ## A387325.P3589999984697234856

`A346241(A096478(n+1))+A117303(n+1)`
-/

namespace A387325.P3589999984697234856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (A096478 (n + 1)).toNat + A117303 (n + 1)

end

end A387325.P3589999984697234856

namespace A387325

/-- `A346241(A096478(n+1))+A117303(n+1)` -/
def P3589999984697234856.Spec : Prop :=
  ∀ n, P3589999984697234856.a n = A387325 n

end A387325

/-!
# A387326: Numbers whose prime factors do not have choosable sets of integer partitions.

The programs for A387326, there is no canonical definition to state claims against.
-/

/-! ## A387326.P10141068466620859251

`∑[gcd(8, C(n, 10))]`
-/

namespace A387326.P10141068466620859251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 (Nat.choose n 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387326.P10141068466620859251

/-! ## A387326.P14924145600532635761

`∑[xor(8, n-∑{digits}[n, #])]`
-/

namespace A387326.P14924145600532635761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387326.P14924145600532635761

/-! ## A387326.P523143103716659415

`∑[dr(2^(n+3-dr(n)))]`
-/

namespace A387326.P523143103716659415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n + 3 : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387326.P523143103716659415

/-! ## A387326.P17403790381527101230

`∪[8*(n+1), (n+2)^4]`
-/

namespace A387326.P17403790381527101230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A387326.P17403790381527101230

/-! ## A387326.P9629927096303531953

`∑[8^∏{p}[n+1, val(dr(#), #)]]`
-/

namespace A387326.P9629927096303531953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot (p : ℤ)) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387326.P9629927096303531953

/-!
# A387327: Number of ways to choose an integer partition of each prime factor of n (with multiplicity).

The programs for A387327, there is no canonical definition to state claims against.
-/

/-! ## A387327.P15003469750405627122

`A003964(A290641(n+1))`
-/

namespace A387327.P15003469750405627122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A290641 (n + 1)).toNat

end

end A387327.P15003469750405627122

/-! ## A387327.P10125597269387070365

`A299200(A064988(n+1))`
-/

namespace A387327.P10125597269387070365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A064988 (n + 1)).toNat

end

end A387327.P10125597269387070365

/-! ## A387327.P2760166742733601071

`∏{e}[A074736(n+1), A000041(#)]`
-/

namespace A387327.P2760166742733601071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A387327.P2760166742733601071

/-! ## A387327.P6181218808669851083

`A357984(A357979(A064988(A064988(A357979(n+1)))))`
-/

namespace A387327.P6181218808669851083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357984 (A357979 (A064988 (A064988 (A357979 (n + 1)).toNat).toNat).toNat).toNat

end

end A387327.P6181218808669851083

/-! ## A387327.P15401719573164400635

`A000688(A074736(n+1))`
-/

namespace A387327.P15401719573164400635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A074736 (n + 1)).toNat

end

end A387327.P15401719573164400635

/-!
# A387328: Number of integer partitions of n whose parts have choosable sets of integer partitions.

The programs for A387328, there is no canonical definition to state claims against.
-/

/-! ## A387328.P9077565539524135399

`A000041(n)-A387134(n)`
-/

namespace A387328.P9077565539524135399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A387134 n

end

end A387328.P9077565539524135399

/-! ## A387328.P4378210728822161402

`∑[A002865(n)]-A387134(n)`
-/

namespace A387328.P4378210728822161402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387134 n

end

end A387328.P4378210728822161402

/-! ## A387328.P2587587229607002116

`A133041(n)-n-A387134(n)`
-/

namespace A387328.P2587587229607002116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - A387134 n

end

end A387328.P2587587229607002116

/-! ## A387328.P4811466071713894658

`A039900(n)+A003106(n)-A387134(n)`
-/

namespace A387328.P4811466071713894658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 n + A003106 n - A387134 n

end

end A387328.P4811466071713894658

/-! ## A387328.P11883790409333782707

`A238873(n)+A387118(n)-A387134(n)`
-/

namespace A387328.P11883790409333782707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238873 n + (A387118 n - A387134 n)

end

end A387328.P11883790409333782707

/-!
# A387329: Number of integer partitions of n such that it is not possible to choose a different constant integer partition of each part.

The programs for A387329, there is no canonical definition to state claims against.
-/

/-! ## A387329.P16760954537344065464

`A000041(n)-A387330(n)`
-/

namespace A387329.P16760954537344065464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A387330 n

end

end A387329.P16760954537344065464

/-! ## A387329.P13961544293184784582

`∑[A002865(n)]-A387330(n)`
-/

namespace A387329.P13961544293184784582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387330 n

end

end A387329.P13961544293184784582

/-! ## A387329.P1934420646398027873

`A238873(n)+A387118(n)-A387330(n)`
-/

namespace A387329.P1934420646398027873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238873 n + (A387118 n - A387330 n)

end

end A387329.P1934420646398027873

/-! ## A387329.P10811891621077185845

`A387134(n)+A056977(A000930(2*n))`
-/

namespace A387329.P10811891621077185845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387134 n + A056977 (A000930 (2 * n)).toNat

end

end A387329.P10811891621077185845

/-! ## A387329.P13359629816100710518

`A000041(n)-A143824(A000213(n))`
-/

namespace A387329.P13359629816100710518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A143824 (A000213 n).toNat

end

end A387329.P13359629816100710518

/-!
# A387330: Number of integer partitions of n such that it is possible to choose a different constant integer partition of each part.

The programs for A387330, there is no canonical definition to state claims against.
-/

/-! ## A387330.P2085329278233891436

`A000041(n)-A387329(n)`
-/

namespace A387330.P2085329278233891436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A387329 n

end

end A387330.P2085329278233891436

/-! ## A387330.P574917834208257564

`∑[A002865(n)]-A387329(n)`
-/

namespace A387330.P574917834208257564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387329 n

end

end A387330.P574917834208257564

/-! ## A387330.P13770338640318245648

`A238873(n)+A387118(n)-A387329(n)`
-/

namespace A387330.P13770338640318245648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238873 n + (A387118 n - A387329 n)

end

end A387330.P13770338640318245648

/-! ## A387330.P2714220836406280458

`A390394(A027336(n))`
-/

namespace A387330.P2714220836406280458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390394 (A027336 n).toNat

end

end A387330.P2714220836406280458

/-! ## A387330.P15382190646961093550

`A263846(A128695(n+1))`
-/

namespace A387330.P15382190646961093550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A128695 (n + 1)).toNat

end

end A387330.P15382190646961093550

/-!
# A387332: Number of binary strings of length n that contain at least one maximal run of ones of even length.

The programs for A387332, the canonical program `A387332.P6355845914133237599` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387332 has offset 0).

The definition of A387332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387332.P12319182836575121635

`ogf((x^2-x^3)/(1-3x+5x^3-2x^4))`
-/

namespace A387332.P12319182836575121635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -3, 0, 5, -2] n

end

end A387332.P12319182836575121635

namespace A387332

/-- `ogf((x^2-x^3)/(1-3x+5x^3-2x^4))` -/
def P12319182836575121635.Spec : Prop :=
  ∀ n, P12319182836575121635.a n = A387332 n

end A387332

/-! ## A387332.P6355845914133237599

`2^n-A028495(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387332

/-- `2^n-A028495(n+1)` -/
def P6355845914133237599.Spec : Prop :=
  ∀ n, P6355845914133237599.a n = A387332 n

theorem P6355845914133237599.correct : P6355845914133237599.Spec := by
  intro n
  simp only [A387332]

end A387332

/-! ## A387332.P6727817048789122208

`A217038(A148749(n))`
-/

namespace A387332.P6727817048789122208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A148749 n).toNat

end

end A387332.P6727817048789122208

namespace A387332

/-- `A217038(A148749(n))` -/
def P6727817048789122208.Spec : Prop :=
  ∀ n, P6727817048789122208.a n = A387332 n

end A387332

/-! ## A387332.P17475092347432414463

`A363743(A354963(n))`
-/

namespace A387332.P17475092347432414463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363743 (A354963 n).toNat

end

end A387332.P17475092347432414463

namespace A387332

/-- `A363743(A354963(n))` -/
def P17475092347432414463.Spec : Prop :=
  ∀ n, P17475092347432414463.a n = A387332 n

end A387332

/-!
# A387335: 1, 2, 4, along with numbers divisible by at least two distinct primes.

The programs for A387335, the canonical program `A387335.P18233147024188934057` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387335 has offset 1).

The definition of A387335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387335.P15900112344778969991

`lt[A092509(n+1), 3]+1`
-/

namespace A387335.P15900112344778969991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387335.P15900112344778969991

namespace A387335

/-- `lt[A092509(n+1), 3]+1` -/
def P15900112344778969991.Spec : Prop :=
  ∀ n, (P15900112344778969991.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P18233147024188934057

`∪[A024619(n+1), A000123(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A387335

/-- `∪[A024619(n+1), A000123(n)]` -/
def P18233147024188934057.Spec : Prop :=
  ∀ n, (P18233147024188934057.a n : ℤ) = A387335 (n + 1)

theorem P18233147024188934057.correct : P18233147024188934057.Spec := by
  intro n
  simp only [A387335, Nat.add_sub_cancel]

end A387335

/-! ## A387335.P7750492837497679435

`∪[A001307(n), A024619(n+1)]`
-/

namespace A387335.P7750492837497679435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P7750492837497679435

namespace A387335

/-- `∪[A001307(n), A024619(n+1)]` -/
def P7750492837497679435.Spec : Prop :=
  ∀ n, (P7750492837497679435.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P2393824620488911538

`∪[A004645(n), A024619(n+1)]`
-/

namespace A387335.P2393824620488911538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004645 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P2393824620488911538

namespace A387335

/-- `∪[A004645(n), A024619(n+1)]` -/
def P2393824620488911538.Spec : Prop :=
  ∀ n, (P2393824620488911538.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P6539338982950057768

`∪[A004647(n), A024619(n+1)]`
-/

namespace A387335.P6539338982950057768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004647 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P6539338982950057768

namespace A387335

/-- `∪[A004647(n), A024619(n+1)]` -/
def P6539338982950057768.Spec : Prop :=
  ∀ n, (P6539338982950057768.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P18265556870702606176

`∪[A007782(n), A024619(n+1)]`
-/

namespace A387335.P18265556870702606176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P18265556870702606176

namespace A387335

/-- `∪[A007782(n), A024619(n+1)]` -/
def P18265556870702606176.Spec : Prop :=
  ∀ n, (P18265556870702606176.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P13377619284808005637

`∪[A024619(n+1), A008804(n)]`
-/

namespace A387335.P13377619284808005637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P13377619284808005637

namespace A387335

/-- `∪[A024619(n+1), A008804(n)]` -/
def P13377619284808005637.Spec : Prop :=
  ∀ n, (P13377619284808005637.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P16933013089194636437

`∪[A018003(n), A024619(n+1)]`
-/

namespace A387335.P16933013089194636437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P16933013089194636437

namespace A387335

/-- `∪[A018003(n), A024619(n+1)]` -/
def P16933013089194636437.Spec : Prop :=
  ∀ n, (P16933013089194636437.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P3039084782483116853

`∪[A024619(n+1), A026119(n)]`
-/

namespace A387335.P3039084782483116853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026119 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P3039084782483116853

namespace A387335

/-- `∪[A024619(n+1), A026119(n)]` -/
def P3039084782483116853.Spec : Prop :=
  ∀ n, (P3039084782483116853.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P6853516489441692356

`∪[A024619(n+1), A026395(n)]`
-/

namespace A387335.P6853516489441692356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P6853516489441692356

namespace A387335

/-- `∪[A024619(n+1), A026395(n)]` -/
def P6853516489441692356.Spec : Prop :=
  ∀ n, (P6853516489441692356.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P12747965505557707067

`∪[A024619(n+1), A026644(n)]`
-/

namespace A387335.P12747965505557707067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P12747965505557707067

namespace A387335

/-- `∪[A024619(n+1), A026644(n)]` -/
def P12747965505557707067.Spec : Prop :=
  ∀ n, (P12747965505557707067.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P7259152561330887022

`∪[A024619(n+1), A026666(n)]`
-/

namespace A387335.P7259152561330887022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026666 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P7259152561330887022

namespace A387335

/-- `∪[A024619(n+1), A026666(n)]` -/
def P7259152561330887022.Spec : Prop :=
  ∀ n, (P7259152561330887022.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P16625531981496147791

`∪[A024619(n+1), A027383(n)]`
-/

namespace A387335.P16625531981496147791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P16625531981496147791

namespace A387335

/-- `∪[A024619(n+1), A027383(n)]` -/
def P16625531981496147791.Spec : Prop :=
  ∀ n, (P16625531981496147791.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P9336549868522429931

`∪[A024619(n+1), A027412(n)]`
-/

namespace A387335.P9336549868522429931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P9336549868522429931

namespace A387335

/-- `∪[A024619(n+1), A027412(n)]` -/
def P9336549868522429931.Spec : Prop :=
  ∀ n, (P9336549868522429931.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P13703374858258823482

`∪[A024619(n+1), A027741(n)]`
-/

namespace A387335.P13703374858258823482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027741 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P13703374858258823482

namespace A387335

/-- `∪[A024619(n+1), A027741(n)]` -/
def P13703374858258823482.Spec : Prop :=
  ∀ n, (P13703374858258823482.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P13940205382054853103

`∪[A024619(n+1), A032309(n)]`
-/

namespace A387335.P13940205382054853103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032309 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P13940205382054853103

namespace A387335

/-- `∪[A024619(n+1), A032309(n)]` -/
def P13940205382054853103.Spec : Prop :=
  ∀ n, (P13940205382054853103.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P8448503465278665581

`∪[A024619(n+1), A036484(n)]`
-/

namespace A387335.P8448503465278665581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036484 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P8448503465278665581

namespace A387335

/-- `∪[A024619(n+1), A036484(n)]` -/
def P8448503465278665581.Spec : Prop :=
  ∀ n, (P8448503465278665581.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P17595037170145050674

`∪[A024619(n+1), A038373(n)]`
-/

namespace A387335.P17595037170145050674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038373 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P17595037170145050674

namespace A387335

/-- `∪[A024619(n+1), A038373(n)]` -/
def P17595037170145050674.Spec : Prop :=
  ∀ n, (P17595037170145050674.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P11934892142117041914

`∪[A024619(n+1), A039301(n)]`
-/

namespace A387335.P11934892142117041914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039301 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P11934892142117041914

namespace A387335

/-- `∪[A024619(n+1), A039301(n)]` -/
def P11934892142117041914.Spec : Prop :=
  ∀ n, (P11934892142117041914.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P1940482458004046382

`∪[A006314(n+1), A361102(n+1)]`
-/

namespace A387335.P1940482458004046382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P1940482458004046382

namespace A387335

/-- `∪[A006314(n+1), A361102(n+1)]` -/
def P1940482458004046382.Spec : Prop :=
  ∀ n, (P1940482458004046382.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P1406256922722166990

`lt[(n-1)², ∏{e}[n, #*(n+1)]]`
-/

namespace A387335.P1406256922722166990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A387335.P1406256922722166990

namespace A387335

/-- `lt[(n-1)², ∏{e}[n, #*(n+1)]]` -/
def P1406256922722166990.Spec : Prop :=
  ∀ n, (P1406256922722166990.a n : ℤ) = A387335 (n + 1)

end A387335

/-!
# A387337: a(n) = Sum_{k=0..n} 2^k * binomial(n+2,k) * binomial(n+2,k+2).

The programs for A387337, the canonical program `A387337.P16856123625498022962` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387337 has offset 0).

The definition of A387337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 2^#*C(n+2, #)*C(n+2, #+2)]` (program `A387337.P16856123625498022962`, by `A387337.P16856123625498022962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387337.P16856123625498022962

`∑{#}[n, 2^#*C(n+2, #)*C(n+2, #+2)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387337

/-- `∑{#}[n, 2^#*C(n+2, #)*C(n+2, #+2)]` -/
def P16856123625498022962.Spec : Prop :=
  ∀ n, (P16856123625498022962.a n : ℤ) = A387337 n

theorem P16856123625498022962.correct : P16856123625498022962.Spec := by
  intro n
  simp only [A387337]

end A387337

/-! ## A387337.P7835586354041448699

`A118384(A000124(n+2)+1)`
-/

namespace A387337.P7835586354041448699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (A000124 (n + 2) + 1).toNat

end

end A387337.P7835586354041448699

namespace A387337

/-- `A118384(A000124(n+2)+1)` -/
def P7835586354041448699.Spec : Prop :=
  ∀ n, P7835586354041448699.a n = A387337 n

end A387337

/-! ## A387337.P750159855536307729

`A118384(A000217(n+2)+2)`
-/

namespace A387337.P750159855536307729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (A000217 (n + 2) + 2).toNat

end

end A387337.P750159855536307729

namespace A387337

/-- `A118384(A000217(n+2)+2)` -/
def P750159855536307729.Spec : Prop :=
  ∀ n, P750159855536307729.a n = A387337 n

end A387337

/-! ## A387337.P5605042700437394252

`A064861(A090288(n+1))`
-/

namespace A387337.P5605042700437394252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A090288 (n + 1)).toNat

end

end A387337.P5605042700437394252

namespace A387337

/-- `A064861(A090288(n+1))` -/
def P5605042700437394252.Spec : Prop :=
  ∀ n, P5605042700437394252.a n = A387337 n

end A387337

/-! ## A387337.P4607828688698106534

`A064861(A000217(2*(n+2))+n)`
-/

namespace A387337.P4607828688698106534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A000217 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A387337.P4607828688698106534

namespace A387337

/-- `A064861(A000217(2*(n+2))+n)` -/
def P4607828688698106534.Spec : Prop :=
  ∀ n, P4607828688698106534.a n = A387337 n

end A387337

/-! ## A387337.P1171025149285719829

`A064861(eq[n+5, A038722(n+1)])`
-/

namespace A387337.P1171025149285719829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A387337.P1171025149285719829

namespace A387337

/-- `A064861(eq[n+5, A038722(n+1)])` -/
def P1171025149285719829.Spec : Prop :=
  ∀ n, P1171025149285719829.a n = A387337 n

end A387337

/-!
# A387338: a(n) = Sum_{k=0..n} 2^k * binomial(n+3,k) * binomial(n+3,k+3).

The programs for A387338, the canonical program `A387338.P17646417138700101887` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387338 has offset 0).

The definition of A387338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 2^#*C(n+3, #)*C(n+3, #+3)]` (program `A387338.P17646417138700101887`, by `A387338.P17646417138700101887.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387338.P17646417138700101887

`∑{#}[n, 2^#*C(n+3, #)*C(n+3, #+3)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387338

/-- `∑{#}[n, 2^#*C(n+3, #)*C(n+3, #+3)]` -/
def P17646417138700101887.Spec : Prop :=
  ∀ n, (P17646417138700101887.a n : ℤ) = A387338 n

theorem P17646417138700101887.correct : P17646417138700101887.Spec := by
  intro n
  simp only [A387338]

end A387338

/-! ## A387338.P14251892672968177189

`A118384(A167614(2+n))`
-/

namespace A387338.P14251892672968177189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (A167614 (2 + n)).toNat

end

end A387338.P14251892672968177189

namespace A387338

/-- `A118384(A167614(2+n))` -/
def P14251892672968177189.Spec : Prop :=
  ∀ n, P14251892672968177189.a n = A387338 n

end A387338

/-! ## A387338.P501033074858541399

`A118384(eq[4, A002260(n+1)])`
-/

namespace A387338.P501033074858541399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A387338.P501033074858541399

namespace A387338

/-- `A118384(eq[4, A002260(n+1)])` -/
def P501033074858541399.Spec : Prop :=
  ∀ n, P501033074858541399.a n = A387338 n

end A387338

/-! ## A387338.P17159312865225082464

`A118384(A000096(n+3)-n)`
-/

namespace A387338.P17159312865225082464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (A000096 (n + 3) - (n : ℤ)).toNat

end

end A387338.P17159312865225082464

namespace A387338

/-- `A118384(A000096(n+3)-n)` -/
def P17159312865225082464.Spec : Prop :=
  ∀ n, P17159312865225082464.a n = A387338 n

end A387338

/-! ## A387338.P14275503802208557532

`A118384(A000217(n+4)-(n+1))`
-/

namespace A387338.P14275503802208557532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (A000217 (n + 4) - (n + 1 : ℤ)).toNat

end

end A387338.P14275503802208557532

namespace A387338

/-- `A118384(A000217(n+4)-(n+1))` -/
def P14275503802208557532.Spec : Prop :=
  ∀ n, P14275503802208557532.a n = A387338 n

end A387338

/-!
# A387339: a(n) = Sum_{k=0..n} 3^k * binomial(n+2,k) * binomial(n+2,k+2).

The programs for A387339, the canonical program `A387339.P1083922620528065035` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387339 has offset 0).

The definition of A387339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n+2, #)*C(n+2, #+2)]` (program `A387339.P1083922620528065035`, by `A387339.P1083922620528065035.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387339.P1083922620528065035

`∑{#}[n, 3^#*C(n+2, #)*C(n+2, #+2)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387339

/-- `∑{#}[n, 3^#*C(n+2, #)*C(n+2, #+2)]` -/
def P1083922620528065035.Spec : Prop :=
  ∀ n, (P1083922620528065035.a n : ℤ) = A387339 n

theorem P1083922620528065035.correct : P1083922620528065035.Spec := by
  intro n
  simp only [A387339]

end A387339

/-! ## A387339.P4723678590042005717

`A299989(A102305(n+2))`
-/

namespace A387339.P4723678590042005717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299989 (A102305 (n + 2)).toNat

end

end A387339.P4723678590042005717

namespace A387339

/-- `A299989(A102305(n+2))` -/
def P4723678590042005717.Spec : Prop :=
  ∀ n, P4723678590042005717.a n = A387339 n

end A387339

/-! ## A387339.P10245853628126943241

`A152842(A090288(n+1))`
-/

namespace A387339.P10245853628126943241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (A090288 (n + 1)).toNat

end

end A387339.P10245853628126943241

namespace A387339

/-- `A152842(A090288(n+1))` -/
def P10245853628126943241.Spec : Prop :=
  ∀ n, P10245853628126943241.a n = A387339 n

end A387339

/-! ## A387339.P18432332302218665081

`A152842(A132209(n+1)+A005408(2*n+3))`
-/

namespace A387339.P18432332302218665081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (A132209 (n + 1) + A005408 (2 * n + 3)).toNat

end

end A387339.P18432332302218665081

namespace A387339

/-- `A152842(A132209(n+1)+A005408(2*n+3))` -/
def P18432332302218665081.Spec : Prop :=
  ∀ n, P18432332302218665081.a n = A387339 n

end A387339

/-!
# A387340: a(n) = Sum_{k=0..n} 3^k * binomial(n+3,k) * binomial(n+3,k+3).

The programs for A387340, the canonical program `A387340.P18286900053417325063` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387340 has offset 0).

The definition of A387340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n+3, #)*C(n+3, #+3)]` (program `A387340.P18286900053417325063`, by `A387340.P18286900053417325063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387340.P18286900053417325063

`∑{#}[n, 3^#*C(n+3, #)*C(n+3, #+3)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387340

/-- `∑{#}[n, 3^#*C(n+3, #)*C(n+3, #+3)]` -/
def P18286900053417325063.Spec : Prop :=
  ∀ n, (P18286900053417325063.a n : ℤ) = A387340 n

theorem P18286900053417325063.correct : P18286900053417325063.Spec := by
  intro n
  simp only [A387340]

end A387340

/-! ## A387340.P6064762884564010156

`A299989((n+4)²+3)`
-/

namespace A387340.P6064762884564010156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299989 ((n + 4) ^ 2 + 3)

end

end A387340.P6064762884564010156

namespace A387340

/-- `A299989((n+4)²+3)` -/
def P6064762884564010156.Spec : Prop :=
  ∀ n, P6064762884564010156.a n = A387340 n

end A387340

/-!
# A387341: Expansion of 1/(1 - 6*x + x^2)^(5/2).

The programs for A387341, the canonical program `A387341.P2794587713551805196` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387341 has offset 0).

The definition of A387341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387341.P2794587713551805196

`A277660(n+2)/2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387341

/-- `A277660(n+2)/2` -/
def P2794587713551805196.Spec : Prop :=
  ∀ n, P2794587713551805196.a n = (A387341 n : ℚ)

end A387341

/-! ## A387341.P17563617724280384330

`C(n+4, 2)/6*A387337(n)`
-/

namespace A387341.P17563617724280384330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 2 : ℚ) / 6 * (A387337 n : ℚ)

end

end A387341.P17563617724280384330

namespace A387341

/-- `C(n+4, 2)/6*A387337(n)` -/
def P17563617724280384330.Spec : Prop :=
  ∀ n, P17563617724280384330.a n = (A387341 n : ℚ)

end A387341

/-!
# A387342: Expansion of 1/(1 - 6*x + x^2)^(7/2).

The programs for A387342, the canonical program `A387342.P9046792530797822280` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387342 has offset 0).

The definition of A387342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387342.P9046792530797822280

`C(n+6, 3)/20*A387338(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387342

/-- `C(n+6, 3)/20*A387338(n)` -/
def P9046792530797822280.Spec : Prop :=
  ∀ n, P9046792530797822280.a n = (A387342 n : ℚ)

end A387342

/-!
# A387343: Expansion of 1/(1 - 8*x + 4*x^2)^(5/2).

The programs for A387343, the canonical program `A387343.P5535926995955090240` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387343 has offset 0).

The definition of A387343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387343.P5535926995955090240

`C(n+4, 2)/6*A387339(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387343

/-- `C(n+4, 2)/6*A387339(n)` -/
def P5535926995955090240.Spec : Prop :=
  ∀ n, P5535926995955090240.a n = (A387343 n : ℚ)

end A387343

/-!
# A387344: Expansion of 1/(1 - 8*x + 4*x^2)^(7/2).

The programs for A387344, the canonical program `A387344.P11145627268589739815` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387344 has offset 0).

The definition of A387344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387344.P11145627268589739815

`C(n+6, 3)/20*A387340(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387344

/-- `C(n+6, 3)/20*A387340(n)` -/
def P11145627268589739815.Spec : Prop :=
  ∀ n, P11145627268589739815.a n = (A387344 n : ℚ)

end A387344

/-!
# A387348: a(n) = W(n,2) - S(n,2) where W is the Wythoff array (A035513) and S is the Stolarsky array (A035506).

The programs for A387348, the canonical program `A387348.P10737065631606712067` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387348 has offset 1).

The definition of A387348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387348.P10737065631606712067

`A096270(n)-A327174(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A387348

/-- `A096270(n)-A327174(n)` -/
def P10737065631606712067.Spec : Prop :=
  ∀ n, P10737065631606712067.a n = A387348 (n + 1)

theorem P10737065631606712067.correct : P10737065631606712067.Spec := by
  intro n
  simp only [A387348, Nat.add_sub_cancel]

end A387348

/-! ## A387348.P3715844203212062826

`A001468(n)-(A327174(n)+1)`
-/

namespace A387348.P3715844203212062826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n - (A327174 n + 1)

end

end A387348.P3715844203212062826

namespace A387348

/-- `A001468(n)-(A327174(n)+1)` -/
def P3715844203212062826.Spec : Prop :=
  ∀ n, P3715844203212062826.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P7176302905056362897

`A075317(n+1)-A342279(n)`
-/

namespace A387348.P7176302905056362897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1) - A342279 n

end

end A387348.P7176302905056362897

namespace A387348

/-- `A075317(n+1)-A342279(n)` -/
def P7176302905056362897.Spec : Prop :=
  ∀ n, P7176302905056362897.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P4864666536542811228

`A089809(n+1)-A339824(n)`
-/

namespace A387348.P4864666536542811228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1) - A339824 n

end

end A387348.P4864666536542811228

namespace A387348

/-- `A089809(n+1)-A339824(n)` -/
def P4864666536542811228.Spec : Prop :=
  ∀ n, P4864666536542811228.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P8448122598350653747

`A035336(n+1)-A035487(n+1)`
-/

namespace A387348.P8448122598350653747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) - A035487 (n + 1)

end

end A387348.P8448122598350653747

namespace A387348

/-- `A035336(n+1)-A035487(n+1)` -/
def P8448122598350653747.Spec : Prop :=
  ∀ n, P8448122598350653747.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P1580682340695022603

`A075318(n+1)-A184517(n+1)`
-/

namespace A387348.P1580682340695022603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075318 (n + 1) - A184517 (n + 1)

end

end A387348.P1580682340695022603

namespace A387348

/-- `A075318(n+1)-A184517(n+1)` -/
def P1580682340695022603.Spec : Prop :=
  ∀ n, P1580682340695022603.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P7529488256733370625

`A005206(n)+A005206(n)-A001965(n)`
-/

namespace A387348.P7529488256733370625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n + (A005206 n - A001965 n)

end

end A387348.P7529488256733370625

namespace A387348

/-- `A005206(n)+A005206(n)-A001965(n)` -/
def P7529488256733370625.Spec : Prop :=
  ∀ n, P7529488256733370625.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P10437154529755865947

`(A339052(n)-A005614(n))*A005614(n+1)`
-/

namespace A387348.P10437154529755865947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A339052 n - A005614 n) * A005614 (n + 1)

end

end A387348.P10437154529755865947

namespace A387348

/-- `(A339052(n)-A005614(n))*A005614(n+1)` -/
def P10437154529755865947.Spec : Prop :=
  ∀ n, P10437154529755865947.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P9905722245245550890

`A000201(n+1)+A022342(n+1)-A342279(n)`
-/

namespace A387348.P9905722245245550890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + (A022342 (n + 1) - A342279 n)

end

end A387348.P9905722245245550890

namespace A387348

/-- `A000201(n+1)+A022342(n+1)-A342279(n)` -/
def P9905722245245550890.Spec : Prop :=
  ∀ n, P9905722245245550890.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P1763622217651180625

`A001950(A000201(n+1))-A035487(n+1)`
-/

namespace A387348.P1763622217651180625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A000201 (n + 1)).toNat - A035487 (n + 1)

end

end A387348.P1763622217651180625

namespace A387348

/-- `A001950(A000201(n+1))-A035487(n+1)` -/
def P1763622217651180625.Spec : Prop :=
  ∀ n, P1763622217651180625.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P12270003836556787727

`A005614(2*n)-A078588(n+1)`
-/

namespace A387348.P12270003836556787727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (2 * n) - A078588 (n + 1)

end

end A387348.P12270003836556787727

namespace A387348

/-- `A005614(2*n)-A078588(n+1)` -/
def P12270003836556787727.Spec : Prop :=
  ∀ n, P12270003836556787727.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P2295178347676716090

`A163801(2*n)-A001965(n)`
-/

namespace A387348.P2295178347676716090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163801 (2 * n) - A001965 n

end

end A387348.P2295178347676716090

namespace A387348

/-- `A163801(2*n)-A001965(n)` -/
def P2295178347676716090.Spec : Prop :=
  ∀ n, P2295178347676716090.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P17872432399157876450

`A163801(2*n)-A005206(2*n)`
-/

namespace A387348.P17872432399157876450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163801 (2 * n) - A005206 (2 * n)

end

end A387348.P17872432399157876450

namespace A387348

/-- `A163801(2*n)-A005206(2*n)` -/
def P17872432399157876450.Spec : Prop :=
  ∀ n, P17872432399157876450.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P143052611231477719

`A163873(2*n)-A005206(2*n)`
-/

namespace A387348.P143052611231477719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163873 (2 * n) - A005206 (2 * n)

end

end A387348.P143052611231477719

namespace A387348

/-- `A163873(2*n)-A005206(2*n)` -/
def P143052611231477719.Spec : Prop :=
  ∀ n, P143052611231477719.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P10075261395327000393

`A339052(n)-A171587(2*n+1)`
-/

namespace A387348.P10075261395327000393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 n - A171587 (2 * n + 1)

end

end A387348.P10075261395327000393

namespace A387348

/-- `A339052(n)-A171587(2*n+1)` -/
def P10075261395327000393.Spec : Prop :=
  ∀ n, P10075261395327000393.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P16253022008893333391

`A075317(n+1)-A000201(2*n+1)`
-/

namespace A387348.P16253022008893333391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1) - A000201 (2 * n + 1)

end

end A387348.P16253022008893333391

namespace A387348

/-- `A075317(n+1)-A000201(2*n+1)` -/
def P16253022008893333391.Spec : Prop :=
  ∀ n, P16253022008893333391.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P14915252510322360739

`A005614(2*n)-A171587(2*n+1)`
-/

namespace A387348.P14915252510322360739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (2 * n) - A171587 (2 * n + 1)

end

end A387348.P14915252510322360739

namespace A387348

/-- `A005614(2*n)-A171587(2*n+1)` -/
def P14915252510322360739.Spec : Prop :=
  ∀ n, P14915252510322360739.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P13532152601532080908

`A137708(2*n+1)-A000201(2*n+1)`
-/

namespace A387348.P13532152601532080908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137708 (2 * n + 1) - A000201 (2 * n + 1)

end

end A387348.P13532152601532080908

namespace A387348

/-- `A137708(2*n+1)-A000201(2*n+1)` -/
def P13532152601532080908.Spec : Prop :=
  ∀ n, P13532152601532080908.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P2099659758287472977

`A096270(2*n+1)-A171587(2*n+1)`
-/

namespace A387348.P2099659758287472977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n + 1) - A171587 (2 * n + 1)

end

end A387348.P2099659758287472977

namespace A387348

/-- `A096270(2*n+1)-A171587(2*n+1)` -/
def P2099659758287472977.Spec : Prop :=
  ∀ n, P2099659758287472977.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P15287170897596219558

`A273129(2*n)-A003849(2*n)`
-/

namespace A387348.P15287170897596219558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273129 (2 * n) - A003849 (2 * n)

end

end A387348.P15287170897596219558

namespace A387348

/-- `A273129(2*n)-A003849(2*n)` -/
def P15287170897596219558.Spec : Prop :=
  ∀ n, P15287170897596219558.a n = A387348 (n + 1)

end A387348

/-!
# A387349: Positions of 0's in A387348.

The programs for A387349, the canonical program `A387349.P7395513142153534106` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387349 has offset 1).

The definition of A387349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387349.P10411754678478391773

`ceil(A086843(n+1)/2)`
-/

namespace A387349.P10411754678478391773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086843 (n + 1) : ℚ) / 2⌉

end

end A387349.P10411754678478391773

namespace A387349

/-- `ceil(A086843(n+1)/2)` -/
def P10411754678478391773.Spec : Prop :=
  ∀ n, P10411754678478391773.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P8457853871164443617

`∪[A007064(n+1), A380804(n+1)]`
-/

namespace A387349.P8457853871164443617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387349.P8457853871164443617

namespace A387349

/-- `∪[A007064(n+1), A380804(n+1)]` -/
def P8457853871164443617.Spec : Prop :=
  ∀ n, (P8457853871164443617.a n : ℤ) = A387349 (n + 1)

end A387349

/-! ## A387349.P7395513142153534106

`comp[A190429(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A387349

/-- `comp[A190429(n+1)]+1` -/
def P7395513142153534106.Spec : Prop :=
  ∀ n, (P7395513142153534106.a n : ℤ) = A387349 (n + 1)

theorem P7395513142153534106.correct : P7395513142153534106.Spec := by
  intro n
  simp only [A387349, Nat.add_sub_cancel]

end A387349

/-! ## A387349.P12351118489758137382

`comp[A190427(n+1)+n]+1`
-/

namespace A387349.P12351118489758137382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387349.P12351118489758137382

namespace A387349

/-- `comp[A190427(n+1)+n]+1` -/
def P12351118489758137382.Spec : Prop :=
  ∀ n, (P12351118489758137382.a n : ℤ) = A387349 (n + 1)

end A387349

/-! ## A387349.P12031425823327312978

`filter[A184518(n+1), A380151(#)]`
-/

namespace A387349.P12031425823327312978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A387349.P12031425823327312978

namespace A387349

/-- `filter[A184518(n+1), A380151(#)]` -/
def P12031425823327312978.Spec : Prop :=
  ∀ n, P12031425823327312978.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P5105004065425669526

`filter[A184732(n+1), A380151(#)]`
-/

namespace A387349.P5105004065425669526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A387349.P5105004065425669526

namespace A387349

/-- `filter[A184732(n+1), A380151(#)]` -/
def P5105004065425669526.Spec : Prop :=
  ∀ n, P5105004065425669526.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P2643007159906312467

`filter[A184738(n+1), A380151(#)]`
-/

namespace A387349.P2643007159906312467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A387349.P2643007159906312467

namespace A387349

/-- `filter[A184738(n+1), A380151(#)]` -/
def P2643007159906312467.Spec : Prop :=
  ∀ n, P2643007159906312467.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P8510041945392431694

`filter[A187945(n+1), A380151(#)]`
-/

namespace A387349.P8510041945392431694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A387349.P8510041945392431694

namespace A387349

/-- `filter[A187945(n+1), A380151(#)]` -/
def P8510041945392431694.Spec : Prop :=
  ∀ n, P8510041945392431694.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P15183786901111610153

`filter[A187947(n+1), A380151(#)]`
-/

namespace A387349.P15183786901111610153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A387349.P15183786901111610153

namespace A387349

/-- `filter[A187947(n+1), A380151(#)]` -/
def P15183786901111610153.Spec : Prop :=
  ∀ n, P15183786901111610153.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P17266574151617350599

`filter[A187953(n+1), A380151(#)]`
-/

namespace A387349.P17266574151617350599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A387349.P17266574151617350599

namespace A387349

/-- `filter[A187953(n+1), A380151(#)]` -/
def P17266574151617350599.Spec : Prop :=
  ∀ n, P17266574151617350599.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P904254988028399561

`filter[A188010(n+1), A380151(#)]`
-/

namespace A387349.P904254988028399561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A387349.P904254988028399561

namespace A387349

/-- `filter[A188010(n+1), A380151(#)]` -/
def P904254988028399561.Spec : Prop :=
  ∀ n, P904254988028399561.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P9041792333284170075

`filter[A188013(n+1), A380151(#)]`
-/

namespace A387349.P9041792333284170075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A387349.P9041792333284170075

namespace A387349

/-- `filter[A188013(n+1), A380151(#)]` -/
def P9041792333284170075.Spec : Prop :=
  ∀ n, P9041792333284170075.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P5952171156122196246

`filter[A188435(n+1), A380151(#)]`
-/

namespace A387349.P5952171156122196246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A387349.P5952171156122196246

namespace A387349

/-- `filter[A188435(n+1), A380151(#)]` -/
def P5952171156122196246.Spec : Prop :=
  ∀ n, P5952171156122196246.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P16839267501598024362

`filter[A188437(n+1), A380151(#)]`
-/

namespace A387349.P16839267501598024362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A387349.P16839267501598024362

namespace A387349

/-- `filter[A188437(n+1), A380151(#)]` -/
def P16839267501598024362.Spec : Prop :=
  ∀ n, P16839267501598024362.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P13715766287880407616

`filter[A242094(n+1), A380151(#)]`
-/

namespace A387349.P13715766287880407616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A387349.P13715766287880407616

namespace A387349

/-- `filter[A242094(n+1), A380151(#)]` -/
def P13715766287880407616.Spec : Prop :=
  ∀ n, P13715766287880407616.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P6959370969296741437

`filter[A247425(n+1), A380151(#)]`
-/

namespace A387349.P6959370969296741437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A387349.P6959370969296741437

namespace A387349

/-- `filter[A247425(n+1), A380151(#)]` -/
def P6959370969296741437.Spec : Prop :=
  ∀ n, P6959370969296741437.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P14417417069776354324

`A000463(A086843(n+1))`
-/

namespace A387349.P14417417069776354324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A086843 (n + 1)).toNat

end

end A387349.P14417417069776354324

namespace A387349

/-- `A000463(A086843(n+1))` -/
def P14417417069776354324.Spec : Prop :=
  ∀ n, P14417417069776354324.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P2199154121566074807

`A004525(A086843(n+1)+1)`
-/

namespace A387349.P2199154121566074807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A086843 (n + 1) + 1).toNat

end

end A387349.P2199154121566074807

namespace A387349

/-- `A004525(A086843(n+1)+1)` -/
def P2199154121566074807.Spec : Prop :=
  ∀ n, P2199154121566074807.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P12943195887156788703

`filter[A038459(n+1), A380151(#)]`
-/

namespace A387349.P12943195887156788703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j).toNat = 1) n)

end

end A387349.P12943195887156788703

namespace A387349

/-- `filter[A038459(n+1), A380151(#)]` -/
def P12943195887156788703.Spec : Prop :=
  ∀ n, P12943195887156788703.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P14283586295359179846

`record[A273129(2*n+1)*(n+1)+1]`
-/

namespace A387349.P14283586295359179846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273129 (2 * n + 1) * (n + 1 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387349.P14283586295359179846

namespace A387349

/-- `record[A273129(2*n+1)*(n+1)+1]` -/
def P14283586295359179846.Spec : Prop :=
  ∀ n, P14283586295359179846.a n = A387349 (n + 1)

end A387349

/-!
# A387350: Positions of 1's in A387348.

The programs for A387350, the canonical program `A387350.P5346268956136855131` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387350 has offset 1).

The definition of A387350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387350.P10050289427748595128

`∩[floor(ϕ*n)+1, round(ϕ*n)]`
-/

namespace A387350.P10050289427748595128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387350.P10050289427748595128

namespace A387350

/-- `∩[floor(ϕ*n)+1, round(ϕ*n)]` -/
def P10050289427748595128.Spec : Prop :=
  ∀ n, (P10050289427748595128.a n : ℤ) = A387350 (n + 1)

end A387350

/-! ## A387350.P12885632692449687324

`round(ϕ*A005652(n+1))`
-/

namespace A387350.P12885632692449687324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A005652 (n + 1) : ℝ))

end

end A387350.P12885632692449687324

namespace A387350

/-- `round(ϕ*A005652(n+1))` -/
def P12885632692449687324.Spec : Prop :=
  ∀ n, P12885632692449687324.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P5549148996991750227

`A387351(n+1)-A005652(n+1)`
-/

namespace A387350.P5549148996991750227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387351 (n + 1) - A005652 (n + 1)

end

end A387350.P5549148996991750227

namespace A387350

/-- `A387351(n+1)-A005652(n+1)` -/
def P5549148996991750227.Spec : Prop :=
  ∀ n, P5549148996991750227.a n = A387350 (n + 1)

theorem P5549148996991750227.correct : P5549148996991750227.Spec := by
  intro n
  simp only [A387350, Nat.add_sub_cancel, A387350.P5549148996991750227.a, A387350.P5346268956136855131.a, A002251, A002251.P8899938186717577679.a, A005652, A005652.P16284320388527205357.f1, A005652.P16284320388527205357.f2, A005652.P16284320388527205357.a, A387351, A387351.P5126227165797472721.a, A019444, A019444.P809029338349565677.f1, A019444.P809029338349565677.a, A191329, A191329.P14559015055408526172.a, A085002, A085002.P6542274367589993406.a, A114986, A114986.P6596508872872694334.f1, A114986.P6596508872872694334.a, A171587, A171587.P15896447707216273594.a, A003622, A003622.P18369330713868503528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387350

/-! ## A387350.P5346268956136855131

`A002251(A005652(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A387350

/-- `A002251(A005652(n+1))` -/
def P5346268956136855131.Spec : Prop :=
  ∀ n, P5346268956136855131.a n = A387350 (n + 1)

theorem P5346268956136855131.correct : P5346268956136855131.Spec := by
  intro n
  simp only [A387350, Nat.add_sub_cancel]

end A387350

/-! ## A387350.P10334051407714201594

`A022342(A279934(n+1))`
-/

namespace A387350.P10334051407714201594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A279934 (n + 1)).toNat

end

end A387350.P10334051407714201594

namespace A387350

/-- `A022342(A279934(n+1))` -/
def P10334051407714201594.Spec : Prop :=
  ∀ n, P10334051407714201594.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P6513876251858808893

`A005206(A387351(n+1))`
-/

namespace A387350.P6513876251858808893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A387351 (n + 1)).toNat

end

end A387350.P6513876251858808893

namespace A387350

/-- `A005206(A387351(n+1))` -/
def P6513876251858808893.Spec : Prop :=
  ∀ n, P6513876251858808893.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P12177460783152345978

`filter[A026351(n), A166946(#)]`
-/

namespace A387350.P12177460783152345978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166946 (f1 j).toNat = 1) n)

end

end A387350.P12177460783152345978

namespace A387350

/-- `filter[A026351(n), A166946(#)]` -/
def P12177460783152345978.Spec : Prop :=
  ∀ n, P12177460783152345978.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P2297396342331769237

`filter[A007067(n+1), A089809(#)]`
-/

namespace A387350.P2297396342331769237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089809 (f1 j).toNat = 1) n)

end

end A387350.P2297396342331769237

namespace A387350

/-- `filter[A007067(n+1), A089809(#)]` -/
def P2297396342331769237.Spec : Prop :=
  ∀ n, P2297396342331769237.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P10948564128800318730

`filter[A001950(n+1), A166946(#)]`
-/

namespace A387350.P10948564128800318730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166946 (f1 j).toNat = 1) n)

end

end A387350.P10948564128800318730

namespace A387350

/-- `filter[A001950(n+1), A166946(#)]` -/
def P10948564128800318730.Spec : Prop :=
  ∀ n, P10948564128800318730.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P12015547122385895396

`filter[A004956(n+1), A166946(#)]`
-/

namespace A387350.P12015547122385895396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166946 (f1 j).toNat = 1) n)

end

end A387350.P12015547122385895396

namespace A387350

/-- `filter[A004956(n+1), A166946(#)]` -/
def P12015547122385895396.Spec : Prop :=
  ∀ n, P12015547122385895396.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P16449411882424028362

`filter[A005653(n+1), A166946(#)]`
-/

namespace A387350.P16449411882424028362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166946 (f1 j).toNat = 1) n)

end

end A387350.P16449411882424028362

namespace A387350

/-- `filter[A005653(n+1), A166946(#)]` -/
def P16449411882424028362.Spec : Prop :=
  ∀ n, P16449411882424028362.a n = A387350 (n + 1)

end A387350

/-!
# A387351: Positions of -1's in A387348.

The programs for A387351, the canonical program `A387351.P5126227165797472721` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387351 has offset 1).

The definition of A387351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387351.P17209506272290768846

`∩[floor((n+1)*ϕ), round(n*ϕ²)]`
-/

namespace A387351.P17209506272290768846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P17209506272290768846

namespace A387351

/-- `∩[floor((n+1)*ϕ), round(n*ϕ²)]` -/
def P17209506272290768846.Spec : Prop :=
  ∀ n, (P17209506272290768846.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P5126227165797472721

`A387350(n+1)+A005652(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A387351

/-- `A387350(n+1)+A005652(n+1)` -/
def P5126227165797472721.Spec : Prop :=
  ∀ n, P5126227165797472721.a n = A387351 (n + 1)

theorem P5126227165797472721.correct : P5126227165797472721.Spec := by
  intro n
  simp only [A387351, Nat.add_sub_cancel]

end A387351

/-! ## A387351.P7149745518241935091

`A004937(A005652(1+n))`
-/

namespace A387351.P7149745518241935091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (A005652 (1 + n)).toNat

end

end A387351.P7149745518241935091

namespace A387351

/-- `A004937(A005652(1+n))` -/
def P7149745518241935091.Spec : Prop :=
  ∀ n, P7149745518241935091.a n = A387351 (n + 1)

end A387351

/-! ## A387351.P3558974259610693016

`filter[A004937(n), A327174(#)]`
-/

namespace A387351.P3558974259610693016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A387351.P3558974259610693016

namespace A387351

/-- `filter[A004937(n), A327174(#)]` -/
def P3558974259610693016.Spec : Prop :=
  ∀ n, P3558974259610693016.a n = A387351 (n + 1)

end A387351

/-! ## A387351.P1143861484124723771

`A001950(A279934(n+1))-2`
-/

namespace A387351.P1143861484124723771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A279934 (n + 1)).toNat - 2

end

end A387351.P1143861484124723771

namespace A387351

/-- `A001950(A279934(n+1))-2` -/
def P1143861484124723771.Spec : Prop :=
  ∀ n, P1143861484124723771.a n = A387351 (n + 1)

end A387351

/-! ## A387351.P16452739185963848134

`filter[A004937(n), A096270(#)]`
-/

namespace A387351.P16452739185963848134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A387351.P16452739185963848134

namespace A387351

/-- `filter[A004937(n), A096270(#)]` -/
def P16452739185963848134.Spec : Prop :=
  ∀ n, P16452739185963848134.a n = A387351 (n + 1)

end A387351

/-! ## A387351.P3477006918902831851

`filter[A004937(n), A339051(#)]`
-/

namespace A387351.P3477006918902831851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339051 (f1 j).toNat = 1) n)

end

end A387351.P3477006918902831851

namespace A387351

/-- `filter[A004937(n), A339051(#)]` -/
def P3477006918902831851.Spec : Prop :=
  ∀ n, P3477006918902831851.a n = A387351 (n + 1)

end A387351

/-! ## A387351.P5991128578990201998

`A007067(∩[floor(ϕ*n)+1, round(ϕ*n)])`
-/

namespace A387351.P5991128578990201998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A387351.P5991128578990201998

namespace A387351

/-- `A007067(∩[floor(ϕ*n)+1, round(ϕ*n)])` -/
def P5991128578990201998.Spec : Prop :=
  ∀ n, P5991128578990201998.a n = A387351 (n + 1)

end A387351

/-! ## A387351.P12072328375421325055

`filter[A004937(n), A078588(#)]`
-/

namespace A387351.P12072328375421325055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A078588 (f1 j).toNat = 1) n)

end

end A387351.P12072328375421325055

namespace A387351

/-- `filter[A004937(n), A078588(#)]` -/
def P12072328375421325055.Spec : Prop :=
  ∀ n, P12072328375421325055.a n = A387351 (n + 1)

end A387351

/-!
# A387353: a(n) = Sum_{k=0..floor(n/2)} binomial(n+k-1,k) * binomial(n+2*k-1,n-2*k).

The programs for A387353, there is no canonical definition to state claims against.
-/

/-! ## A387353.P4723610265107873995

`A165006(A011769(n))`
-/

namespace A387353.P4723610265107873995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165006 (A011769 n).toNat

end

end A387353.P4723610265107873995

/-! ## A387353.P1919607296518792326

`A126257(∑[A001045(n)]²)`
-/

namespace A387353.P1919607296518792326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A387353.P1919607296518792326

/-!
# A387354: a(n) = least prime m such that m/prime(n) > a(n-1)/prime(n-1), where a(1) = 3.

The programs for A387354, there is no canonical definition to state claims against.
-/

/-! ## A387354.P4276273939787528727

`A079603(A079603(n+1)+A029577(n))`
-/

namespace A387354.P4276273939787528727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (A079603 (n + 1) + A029577 n).toNat

end

end A387354.P4276273939787528727

/-! ## A387354.P3652505360255822685

`A079603(A348811(n)+A079603(n+1))`
-/

namespace A387354.P3652505360255822685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (A348811 n + A079603 (n + 1)).toNat

end

end A387354.P3652505360255822685

/-! ## A387354.P15610785889592724115

`A079603(A079603(n+1)^A079596(n))`
-/

namespace A387354.P15610785889592724115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (SequenceMachineLib.roundAway ((A079603 (n + 1) : ℚ) ^ (A079596 n : ℤ))).toNat

end

end A387354.P15610785889592724115

/-! ## A387354.P5978552913334999442

`A079603(C(A079603(n+1), A079596(n)))`
-/

namespace A387354.P5978552913334999442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (Nat.choose (A079603 (n + 1)).toNat (A079596 n).toNat)

end

end A387354.P5978552913334999442

/-! ## A387354.P8221119130141345488

`A079603(A079603(n+1)%A186667(n+4))`
-/

namespace A387354.P8221119130141345488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (Int.tmod (A079603 (n + 1)) (A186667 (n + 4))).toNat

end

end A387354.P8221119130141345488

/-!
# A387355: Upper (1/2)-midsequence of square numbers and triangular numbers; see Comments.

The programs for A387355, the canonical program `A387355.P16162145547914331822` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387355 has offset 0).

The definition of A387355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387355.P16162145547914331822

`ceil((3*n²+n)/4)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387355

/-- `ceil((3*n²+n)/4)` -/
def P16162145547914331822.Spec : Prop :=
  ∀ n, P16162145547914331822.a n = A387355 n

theorem P16162145547914331822.correct : P16162145547914331822.Spec := by
  intro n
  simp only [A387355]

end A387355

/-! ## A387355.P5828878090167591007

`ogf((x+x^2+x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A387355.P5828878090167591007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 0, 1] [1, -3, 4, -4, 3, -1] n

end

end A387355.P5828878090167591007

namespace A387355

/-- `ogf((x+x^2+x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P5828878090167591007.Spec : Prop :=
  ∀ n, P5828878090167591007.a n = A387355 n

end A387355

/-! ## A387355.P10151736856417456728

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=8, a(4)=13`
-/

namespace A387355.P10151736856417456728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 8, 13] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A387355.P10151736856417456728

namespace A387355

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P10151736856417456728.Spec : Prop :=
  ∀ n, P10151736856417456728.a n = A387355 n

end A387355

/-! ## A387355.P4795220288528004440

`n²-floor(C(n, 2)/2)`
-/

namespace A387355.P4795220288528004440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊(Nat.choose n 2 : ℚ) / 2⌋

end

end A387355.P4795220288528004440

namespace A387355

/-- `n²-floor(C(n, 2)/2)` -/
def P4795220288528004440.Spec : Prop :=
  ∀ n, P4795220288528004440.a n = A387355 n

end A387355

/-! ## A387355.P12313193670698096409

`∑[n]+ceil(C(n, 2)/2)`
-/

namespace A387355.P12313193670698096409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(Nat.choose n 2 : ℚ) / 2⌉

end

end A387355.P12313193670698096409

namespace A387355

/-- `∑[n]+ceil(C(n, 2)/2)` -/
def P12313193670698096409.Spec : Prop :=
  ∀ n, P12313193670698096409.a n = A387355 n

end A387355

/-! ## A387355.P16351636170670287003

`∑[comp[∑[2*gcd(2, n+1)]]]`
-/

namespace A387355.P16351636170670287003
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd 2 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387355.P16351636170670287003

namespace A387355

/-- `∑[comp[∑[2*gcd(2, n+1)]]]` -/
def P16351636170670287003.Spec : Prop :=
  ∀ n, (P16351636170670287003.a n : ℤ) = A387355 n

end A387355

/-! ## A387355.P3866104125741764645

`∑[comp[∑[2*(n+1)%3]]]`
-/

namespace A387355.P3866104125741764645
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387355.P3866104125741764645

namespace A387355

/-- `∑[comp[∑[2*(n+1)%3]]]` -/
def P3866104125741764645.Spec : Prop :=
  ∀ n, (P3866104125741764645.a n : ℤ) = A387355 n

end A387355

/-! ## A387355.P16229300030310987007

`floor(∑[(n+1)/2]+C(n, 2))`
-/

namespace A387355.P16229300030310987007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 : ℚ)⌋

end

end A387355.P16229300030310987007

namespace A387355

/-- `floor(∑[(n+1)/2]+C(n, 2))` -/
def P16229300030310987007.Spec : Prop :=
  ∀ n, P16229300030310987007.a n = A387355 n

end A387355

/-! ## A387355.P14575627649243371704

`∑[a(n-4)+6]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A387355.P14575627649243371704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 4, 5] fun n f1 =>
  f1 (n - 4) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387355.P14575627649243371704

namespace A387355

/-- `∑[a(n-4)+6]` -/
def P14575627649243371704.Spec : Prop :=
  ∀ n, (P14575627649243371704.a n : ℤ) = A387355 n

end A387355

/-! ## A387355.P9714842912746500184

`∑[∑[3-a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A387355.P9714842912746500184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 1] fun n f2 =>
  3 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387355.P9714842912746500184

namespace A387355

/-- `∑[∑[3-a(n-2)]]` -/
def P9714842912746500184.Spec : Prop :=
  ∀ n, P9714842912746500184.a n = A387355 n

end A387355

/-! ## A387355.P9007234833922308336

`round(lcm(n, 2*n+1+n)/4)`
-/

namespace A387355.P9007234833922308336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm n (2 * n + 1 + n) : ℚ) / 4)

end

end A387355.P9007234833922308336

namespace A387355

/-- `round(lcm(n, 2*n+1+n)/4)` -/
def P9007234833922308336.Spec : Prop :=
  ∀ n, P9007234833922308336.a n = A387355 n

end A387355

/-! ## A387355.P7417409230418094341

`floor(Δ[C(n+1, 2)²/(n+3)])`
-/

namespace A387355.P7417409230418094341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 ^ 2 : ℚ) / (n + 3 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A387355.P7417409230418094341

namespace A387355

/-- `floor(Δ[C(n+1, 2)²/(n+3)])` -/
def P7417409230418094341.Spec : Prop :=
  ∀ n, P7417409230418094341.a n = A387355 n

end A387355

/-! ## A387355.P12491441998950621154

`∑[∪[2*n, 3*(n-1)]]+n+3`
-/

namespace A387355.P12491441998950621154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3)

end

end A387355.P12491441998950621154

namespace A387355

/-- `∑[∪[2*n, 3*(n-1)]]+n+3` -/
def P12491441998950621154.Spec : Prop :=
  ∀ n, (P12491441998950621154.a n : ℤ) = A387355 n

end A387355

/-! ## A387355.P6459186830775807343

`n²-A011848(n)`
-/

namespace A387355.P6459186830775807343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A011848 n

end

end A387355.P6459186830775807343

namespace A387355

/-- `n²-A011848(n)` -/
def P6459186830775807343.Spec : Prop :=
  ∀ n, P6459186830775807343.a n = A387355 n

end A387355

/-! ## A387355.P485958938738777190

`A054925(n)+∑[n]`
-/

namespace A387355.P485958938738777190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A387355.P485958938738777190

namespace A387355

/-- `A054925(n)+∑[n]` -/
def P485958938738777190.Spec : Prop :=
  ∀ n, P485958938738777190.a n = A387355 n

end A387355

/-! ## A387355.P16352548735233441419

`A249852(n)-∑[n]`
-/

namespace A387355.P16352548735233441419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249852 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A387355.P16352548735233441419

namespace A387355

/-- `A249852(n)-∑[n]` -/
def P16352548735233441419.Spec : Prop :=
  ∀ n, P16352548735233441419.a n = A387355 n

end A387355

/-! ## A387355.P8730797831708752067

`n²-∑[A004524(n)]`
-/

namespace A387355.P8730797831708752067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387355.P8730797831708752067

namespace A387355

/-- `n²-∑[A004524(n)]` -/
def P8730797831708752067.Spec : Prop :=
  ∀ n, P8730797831708752067.a n = A387355 n

end A387355

/-! ## A387355.P3135011014015386984

`∑[A047262(n+1)]-n`
-/

namespace A387355.P3135011014015386984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A387355.P3135011014015386984

namespace A387355

/-- `∑[A047262(n+1)]-n` -/
def P3135011014015386984.Spec : Prop :=
  ∀ n, P3135011014015386984.a n = A387355 n

end A387355

/-! ## A387355.P15840114884178332598

`(n+1)²-∑[A092038(n+1)]`
-/

namespace A387355.P15840114884178332598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387355.P15840114884178332598

namespace A387355

/-- `(n+1)²-∑[A092038(n+1)]` -/
def P15840114884178332598.Spec : Prop :=
  ∀ n, P15840114884178332598.a n = A387355 n

end A387355

/-! ## A387355.P9574695239005728858

`A038707(n)+A008811(n)`
-/

namespace A387355.P9574695239005728858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038707 n + A008811 n

end

end A387355.P9574695239005728858

namespace A387355

/-- `A038707(n)+A008811(n)` -/
def P9574695239005728858.Spec : Prop :=
  ∀ n, P9574695239005728858.a n = A387355 n

end A387355

/-!
# A387356: Numbers whose set of cyclic permutations has GCD = 1.

The programs for A387356, there is no canonical definition to state claims against.
-/

/-! ## A387356.P8489731107560352434

`∩[A069715(n+1), A192817(n+1)]`
-/

namespace A387356.P8489731107560352434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387356.P8489731107560352434

/-!
# A387357: a(n) is the first number with a total of exactly n 1's in the decimal digits of its divisors.

The programs for A387357, there is no canonical definition to state claims against.
-/

/-! ## A387357.P2283037797167254701

`A120240(A132127(n+1))`
-/

namespace A387357.P2283037797167254701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120240 (A132127 (n + 1)).toNat

end

end A387357.P2283037797167254701

/-!
# A387358: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(3*k,n-k).

The programs for A387358, the canonical program `A387358.P16811194238279794350` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387358 has offset 0).

The definition of A387358 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*C(3*#, n-#)]` (program `A387358.P16811194238279794350`, by `A387358.P16811194238279794350.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387358.P16811194238279794350

`∑{#}[n, C(n, #)*C(3*#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387358

/-- `∑{#}[n, C(n, #)*C(3*#, n-#)]` -/
def P16811194238279794350.Spec : Prop :=
  ∀ n, (P16811194238279794350.a n : ℤ) = A387358 n

theorem P16811194238279794350.correct : P16811194238279794350.Spec := by
  intro n
  simp only [A387358]

end A387358

/-!
# A387360: Maximum number of diagonal transversals in an extended self-orthogonal diagonal Latin square of order n.

The programs for A387360, there is no canonical definition to state claims against.
-/

/-! ## A387360.P11490322269205560074

`and(A287648(n+1), A301686(A063049(n+3)))`
-/

namespace A387360.P11490322269205560074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287648 (n + 1)) (A301686 (A063049 (n + 3)).toNat)

end

end A387360.P11490322269205560074

/-!
# A387361: Number of 2n-step walks from (0, 0) to (0, 0) on square lattice with winding number zero around (1/2, 1/2).

The programs for A387361, there is no canonical definition to state claims against.
-/

/-! ## A387361.P9799169773755357962

`A274344(n+1)+A072401(A274344(n+1))`
-/

namespace A387361.P9799169773755357962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274344 (n + 1) + A072401 (A274344 (n + 1)).toNat

end

end A387361.P9799169773755357962

/-!
# A387362: Cyclic numbers k such that k+2 is also a cyclic number.

The programs for A387362, the canonical program `A387362.P10061794841326187916` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387362 has offset 1).

The definition of A387362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387362.P10061794841326187916

`∩[A003277(n+1)-2, A003277(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A387362

/-- `∩[A003277(n+1)-2, A003277(n+1)]` -/
def P10061794841326187916.Spec : Prop :=
  ∀ n, (P10061794841326187916.a n : ℤ) = A387362 (n + 1)

theorem P10061794841326187916.correct : P10061794841326187916.Spec := by
  intro n
  simp only [A387362, Nat.add_sub_cancel]

end A387362

/-! ## A387362.P14398335360526271167

`record[A109395(n+1)%A109395(n+3)]`
-/

namespace A387362.P14398335360526271167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109395 (n + 1)) (A109395 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387362.P14398335360526271167

namespace A387362

/-- `record[A109395(n+1)%A109395(n+3)]` -/
def P14398335360526271167.Spec : Prop :=
  ∀ n, P14398335360526271167.a n = A387362 (n + 1)

end A387362

/-! ## A387362.P6458134203876778721

`eq[A000001(n), A297086(n+2)]`
-/

namespace A387362.P6458134203876778721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297086 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387362.P6458134203876778721

namespace A387362

/-- `eq[A000001(n), A297086(n+2)]` -/
def P6458134203876778721.Spec : Prop :=
  ∀ n, (P6458134203876778721.a n : ℤ) = A387362 (n + 1)

end A387362

/-! ## A387362.P15973531761673722386

`eq[A000001(n)*A000001(n+2), A152271(3*(n+1))]`
-/

namespace A387362.P15973531761673722386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n * A000001 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387362.P15973531761673722386

namespace A387362

/-- `eq[A000001(n)*A000001(n+2), A152271(3*(n+1))]` -/
def P15973531761673722386.Spec : Prop :=
  ∀ n, (P15973531761673722386.a n : ℤ) = A387362 (n + 1)

end A387362

/-! ## A387362.P951928575417437339

`eq[A000001(n+2), A000384(A000001(n))]`
-/

namespace A387362.P951928575417437339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A000001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387362.P951928575417437339

namespace A387362

/-- `eq[A000001(n+2), A000384(A000001(n))]` -/
def P951928575417437339.Spec : Prop :=
  ∀ n, (P951928575417437339.a n : ℤ) = A387362 (n + 1)

end A387362

/-!
# A387365: a(n) = (n+1) * 2^abs(n - 1 - c*(c-1)) / 2, where c = ceiling(sqrt(n)).

The programs for A387365, the canonical program `A387365.P13850223624109421705` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387365 has offset 1).

The definition of A387365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387365.P13850223624109421705

`(n/2+1)*A082693(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A387365

/-- `(n/2+1)*A082693(n)` -/
def P13850223624109421705.Spec : Prop :=
  ∀ n, P13850223624109421705.a n = (A387365 (n + 1) : ℚ)

end A387365

/-!
# A387366: Expansion of 1/(1 - 10*x + x^2)^(3/2).

The programs for A387366, the canonical program `A387366.P4636976032307659673` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387366 has offset 0).

The definition of A387366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387366.P4636976032307659673

`(n+2)/2*A387368(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387366

/-- `(n+2)/2*A387368(n)` -/
def P4636976032307659673.Spec : Prop :=
  ∀ n, P4636976032307659673.a n = (A387366 n : ℚ)

end A387366

/-! ## A387366.P13692226355214977455

`∑[n+1]*A269730(n+1)`
-/

namespace A387366.P13692226355214977455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A269730 (n + 1)

end

end A387366.P13692226355214977455

namespace A387366

/-- `∑[n+1]*A269730(n+1)` -/
def P13692226355214977455.Spec : Prop :=
  ∀ n, P13692226355214977455.a n = A387366 n

end A387366

/-!
# A387367: Expansion of 1/(1 - 10*x + x^2)^(5/2).

The programs for A387367, the canonical program `A387367.P15417469161432908599` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387367 has offset 0).

The definition of A387367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387367.P15417469161432908599

`C(n+4, 2)/6*A387369(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387367

/-- `C(n+4, 2)/6*A387369(n)` -/
def P15417469161432908599.Spec : Prop :=
  ∀ n, P15417469161432908599.a n = (A387367 n : ℚ)

end A387367

/-!
# A387368: a(n) = Sum_{k=0..n} 2^k * 3^(n-k) * binomial(n+1,k) * binomial(n+1,n-k).

The programs for A387368, the canonical program `A387368.P8341008704509974252` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387368 has offset 0).

The definition of A387368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387368.P8341008704509974252

`∑{#}[n, 2^#*3^(n-#)*C(n+1, #)*C(n+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387368

/-- `∑{#}[n, 2^#*3^(n-#)*C(n+1, #)*C(n+1, n-#)]` -/
def P8341008704509974252.Spec : Prop :=
  ∀ n, P8341008704509974252.a n = (A387368 n : ℚ)

end A387368

/-! ## A387368.P16924406266209227775

`(1+n)*A269730(n+1)`
-/

namespace A387368.P16924406266209227775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A269730 (n + 1)

end

end A387368.P16924406266209227775

namespace A387368

/-- `(1+n)*A269730(n+1)` -/
def P16924406266209227775.Spec : Prop :=
  ∀ n, P16924406266209227775.a n = A387368 n

end A387368

/-! ## A387368.P1762898659456103458

`(n+1)/3*A103210(n+1)`
-/

namespace A387368.P1762898659456103458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A103210 (n + 1) : ℚ)

end

end A387368.P1762898659456103458

namespace A387368

/-- `(n+1)/3*A103210(n+1)` -/
def P1762898659456103458.Spec : Prop :=
  ∀ n, P1762898659456103458.a n = (A387368 n : ℚ)

end A387368

/-!
# A387369: a(n) = Sum_{k=0..n} 2^k * 3^(n-k) * binomial(n+2,k) * binomial(n+2,n-k).

The programs for A387369, the canonical program `A387369.P3592604471662520821` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387369 has offset 0).

The definition of A387369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387369.P3592604471662520821

`∑{#}[n, 2^#*3^(n-#)*C(n+2, #)*C(n+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387369

/-- `∑{#}[n, 2^#*3^(n-#)*C(n+2, #)*C(n+2, n-#)]` -/
def P3592604471662520821.Spec : Prop :=
  ∀ n, P3592604471662520821.a n = (A387369 n : ℚ)

end A387369

/-!
# A387371: Number of compositions of n such that the maximal cardinality of C is 1, where C is a subset of the set of parts such that all elements in C appear in weakly increasing order within the composition.

The programs for A387371, there is no canonical definition to state claims against.
-/

/-! ## A387371.P6713021685077090919

`record[A386891(n+1)]`
-/

namespace A387371.P6713021685077090919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387371.P6713021685077090919

/-! ## A387371.P15341840305746760212

`A386891(∑[a(n-a(n-1))+1])` with `a(0)=1, a(1)=1`
-/

namespace A387371.P15341840305746760212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386891 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387371.P15341840305746760212

/-! ## A387371.P16719548170312480668

`A386891(A075349(n+1))`
-/

namespace A387371.P16719548170312480668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386891 (A075349 (n + 1)).toNat

end

end A387371.P16719548170312480668

/-! ## A387371.P17413686082931502007

`record[A386891(n)%A290292(n)]`
-/

namespace A387371.P17413686082931502007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386891 n) (A290292 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387371.P17413686082931502007

/-! ## A387371.P11451576114620871700

`A135664(A000778(n))`
-/

namespace A387371.P11451576114620871700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A000778 n).toNat

end

end A387371.P11451576114620871700

/-!
# A387375: Number of cycles in the n-Cameron graph.

The programs for A387375, the canonical program `A387375.P5701669232898693982` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387375 has offset 0).

The definition of A387375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387375.P5701669232898693982

`ogf((3+17x-10x^2)/(1-10x+21x^2-16x^3+4x^4))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387375

/-- `ogf((3+17x-10x^2)/(1-10x+21x^2-16x^3+4x^4))` -/
def P5701669232898693982.Spec : Prop :=
  ∀ n, P5701669232898693982.a n = A387375 n

theorem P5701669232898693982.correct : P5701669232898693982.Spec := by
  intro n
  simp only [A387375]

end A387375

/-!
# A387376: a(n) = 2 + 4^n + 2*n*(n - 1).

The programs for A387376, the canonical program `A387376.P1890184593504587135` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387376 has offset 1).

The definition of A387376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+4^(n+1)+2*(n+1)*n` (program `A387376.P1890184593504587135`, by `A387376.P1890184593504587135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387376.P1479903377040367644

`ogf((6-20x+14x^2-12x^3)/(1-7x+15x^2-13x^3+4x^4))`
-/

namespace A387376.P1479903377040367644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -20, 14, -12] [1, -7, 15, -13, 4] n

end

end A387376.P1479903377040367644

namespace A387376

/-- `ogf((6-20x+14x^2-12x^3)/(1-7x+15x^2-13x^3+4x^4))` -/
def P1479903377040367644.Spec : Prop :=
  ∀ n, P1479903377040367644.a n = A387376 (n + 1)

end A387376

/-! ## A387376.P1890184593504587135

`2+4^(n+1)+2*(n+1)*n`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387376

/-- `2+4^(n+1)+2*(n+1)*n` -/
def P1890184593504587135.Spec : Prop :=
  ∀ n, (P1890184593504587135.a n : ℤ) = A387376 (n + 1)

theorem P1890184593504587135.correct : P1890184593504587135.Spec := by
  intro n
  simp only [A387376, Nat.add_sub_cancel]

end A387376

/-! ## A387376.P1438353915687278101

`or(A046092(n), A052548(2*(n+1)))`
-/

namespace A387376.P1438353915687278101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046092 n) (A052548 (2 * (n + 1)))

end

end A387376.P1438353915687278101

namespace A387376

/-- `or(A046092(n), A052548(2*(n+1)))` -/
def P1438353915687278101.Spec : Prop :=
  ∀ n, P1438353915687278101.a n = A387376 (n + 1)

end A387376

/-! ## A387376.P9523321089201389916

`or(A046092(n), A056469(2*n+3))`
-/

namespace A387376.P9523321089201389916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046092 n) (A056469 (2 * n + 3))

end

end A387376.P9523321089201389916

namespace A387376

/-- `or(A046092(n), A056469(2*n+3))` -/
def P9523321089201389916.Spec : Prop :=
  ∀ n, P9523321089201389916.a n = A387376 (n + 1)

end A387376

/-! ## A387376.P2499152997823651859

`or(A000079(2*(n+1)), A051890(n+1))`
-/

namespace A387376.P2499152997823651859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (2 * (n + 1))) (A051890 (n + 1))

end

end A387376.P2499152997823651859

namespace A387376

/-- `or(A000079(2*(n+1)), A051890(n+1))` -/
def P2499152997823651859.Spec : Prop :=
  ∀ n, P2499152997823651859.a n = A387376 (n + 1)

end A387376

/-! ## A387376.P15968598711851308083

`(A078370(n)+A051049(2*n+3))/2`
-/

namespace A387376.P15968598711851308083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078370 n + A051049 (2 * n + 3) : ℚ) / 2

end

end A387376.P15968598711851308083

namespace A387376

/-- `(A078370(n)+A051049(2*n+3))/2` -/
def P15968598711851308083.Spec : Prop :=
  ∀ n, P15968598711851308083.a n = (A387376 (n + 1) : ℚ)

end A387376

/-!
# A387377: In the prime factorization of n, replace 2's with 3's, replace 3's with 5's and replace 5's with 2's.

The programs for A387377, the canonical program `A387377.P768530691220600906` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387377 has offset 1).

The definition of A387377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387377.P768530691220600906

`A181351(A064614(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A387377

/-- `A181351(A064614(n+1))` -/
def P768530691220600906.Spec : Prop :=
  ∀ n, P768530691220600906.a n = A387377 (n + 1)

theorem P768530691220600906.correct : P768530691220600906.Spec := by
  intro n
  simp only [A387377, Nat.add_sub_cancel]

end A387377

/-! ## A387377.P12148845524863682348

`A072028(A072027(A072029(n+1)))`
-/

namespace A387377.P12148845524863682348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072028 (A072027 (A072029 (n + 1)).toNat).toNat

end

end A387377.P12148845524863682348

namespace A387377

/-- `A072028(A072027(A072029(n+1)))` -/
def P12148845524863682348.Spec : Prop :=
  ∀ n, P12148845524863682348.a n = A387377 (n + 1)

end A387377

/-! ## A387377.P13177021665298509560

`A181351(A235200(A181351(A235200(n+1))))`
-/

namespace A387377.P13177021665298509560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181351 (A235200 (A181351 (A235200 (n + 1)).toNat).toNat).toNat

end

end A387377.P13177021665298509560

namespace A387377

/-- `A181351(A235200(A181351(A235200(n+1))))` -/
def P13177021665298509560.Spec : Prop :=
  ∀ n, P13177021665298509560.a n = A387377 (n + 1)

end A387377

/-! ## A387377.P2768899241125880956

`A300955(A181351(A300955(A181351(n+1))))`
-/

namespace A387377.P2768899241125880956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300955 (A181351 (A300955 (A181351 (n + 1)).toNat).toNat).toNat

end

end A387377.P2768899241125880956

namespace A387377

/-- `A300955(A181351(A300955(A181351(n+1))))` -/
def P2768899241125880956.Spec : Prop :=
  ∀ n, P2768899241125880956.a n = A387377 (n + 1)

end A387377

/-!
# A387381: Least prime p such that p+x_1, ..., p+x_1+...+x_k are prime, where (x_1, ..., x_k) is the n-th composition in graded reverse lexicographic order ("standard order", see A066099); or 0 if no such prime exists.

The programs for A387381, there is no canonical definition to state claims against.
-/

/-! ## A387381.P13694376227077570498

`A307200(C(A260739(2*(n+2)), A344859(n)))`
-/

namespace A387381.P13694376227077570498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307200 (Nat.choose (A260739 (2 * (n + 2))).toNat (A344859 n).toNat)

end

end A387381.P13694376227077570498

/-! ## A387381.P14161949811157154948

`A108352(A026624(n+1))`
-/

namespace A387381.P14161949811157154948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (A026624 (n + 1)).toNat

end

end A387381.P14161949811157154948

/-! ## A387381.P18045407741890433760

`A170942(A000740(n+1)+1)`
-/

namespace A387381.P18045407741890433760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170942 (A000740 (n + 1) + 1).toNat

end

end A387381.P18045407741890433760

/-! ## A387381.P16137067624904451970

`∑{e}[A122859(A087787(3*n)), #]`
-/

namespace A387381.P16137067624904451970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122859 (A087787 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A387381.P16137067624904451970

/-! ## A387381.P15232432031303492122

`and(A001221(A090788(3*n+5)), A343553(2*(n+1)))`
-/

namespace A387381.P15232432031303492122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A090788 (3 * n + 5)).toNat) (A343553 (2 * (n + 1)))

end

end A387381.P15232432031303492122

/-!
# A387382: Numbers k such that there exists a prime p for which p+x_1, ..., p+x_1+...+x_j are prime, where (x_1, ..., x_j) is the k-th composition in graded reverse lexicographic order ("standard order", see A066099), i.e., such that A387381(k) != 0.

The programs for A387382, there is no canonical definition to state claims against.
-/

/-! ## A387382.P14202946515165744835

`lt[0, A387381(n)]`
-/

namespace A387382.P14202946515165744835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A387382.P14202946515165744835

/-! ## A387382.P6708850791723012884

`A227992(A077168(n))`
-/

namespace A387382.P6708850791723012884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227992 (A077168 n).toNat

end

end A387382.P6708850791723012884

/-! ## A387382.P2452929151515107560

`eq[A015772(n), A072347(n)]`
-/

namespace A387382.P2452929151515107560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387382.P2452929151515107560

/-! ## A387382.P151241712904632927

`eq[A015936(n), A072347(n)]`
-/

namespace A387382.P151241712904632927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387382.P151241712904632927

/-! ## A387382.P3928368242258933316

`A227992(n+1)%A079374(n+5)`
-/

namespace A387382.P3928368242258933316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227992 (n + 1)) (A079374 (n + 5))

end

end A387382.P3928368242258933316

/-!
# A387383: Numbers k such that the cumulative sums of the k-th composition in graded reverse lexicographic order ("standard order", see A066099) do not cover all residue classes modulo p for any prime p; i.e., such that (0, x_1, ..., x_1+...+x_j) is an admissible prime tuple pattern, where (x_1, ..., x_j) is the k-th composition.

The programs for A387383, there is no canonical definition to state claims against.
-/

/-! ## A387383.P18286942414582464057

`(A000695(A161781(n))-1)/2`
-/

namespace A387383.P18286942414582464057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000695 (A161781 n).toNat - 1 : ℚ) / 2

end

end A387383.P18286942414582464057

/-! ## A387383.P17501661714197858489

`A212591(A161781(n))`
-/

namespace A387383.P17501661714197858489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212591 (A161781 n).toNat

end

end A387383.P17501661714197858489

/-! ## A387383.P10790849715610047189

`A000695(A161781(n)-1)/2`
-/

namespace A387383.P10790849715610047189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000695 (A161781 n - 1).toNat : ℚ) / 2

end

end A387383.P10790849715610047189

/-! ## A387383.P3707224365260026229

`A270804(A161781(n)-1)`
-/

namespace A387383.P3707224365260026229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270804 (A161781 n - 1).toNat

end

end A387383.P3707224365260026229

/-! ## A387383.P5130212362937631162

`and(A061547(3*n+4), A270804(A161781(n)))`
-/

namespace A387383.P5130212362937631162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061547 (3 * n + 4)) (A270804 (A161781 n).toNat)

end

end A387383.P5130212362937631162

/-!
# A387385: Least prime p such that p+x_1, ..., p+x_1+...+x_k are prime, where (x_1, ..., x_k) is the n-th composition corresponding to an admissible prime tuple pattern (see A387383); i.e., first column of A387384.

The programs for A387385, there is no canonical definition to state claims against.
-/

/-! ## A387385.P3402238379016435712

`A387384(∑[1+n])`
-/

namespace A387385.P3402238379016435712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387385.P3402238379016435712

/-! ## A387385.P5333803549225787314

`A387384(A000217(n+1))%A051395(n+1)`
-/

namespace A387385.P5333803549225787314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387384 (A000217 (n + 1)).toNat) (A051395 (n + 1))

end

end A387385.P5333803549225787314

/-! ## A387385.P12205969135264655365

`or(A354996(n+1), A387384(A000217(n+1)))`
-/

namespace A387385.P12205969135264655365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A354996 (n + 1)) (A387384 (A000217 (n + 1)).toNat)

end

end A387385.P12205969135264655365

/-! ## A387385.P5322864829574323267

`A387384(A000217(n+1))+A049084(2*(n+2))`
-/

namespace A387385.P5322864829574323267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387384 (A000217 (n + 1)).toNat + A049084 (2 * (n + 2))

end

end A387385.P5322864829574323267

/-! ## A387385.P10521152075256789866

`A387384(A000217(n+1))+A000007(2*n+3)`
-/

namespace A387385.P10521152075256789866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387384 (A000217 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A387385.P10521152075256789866

/-! ## A387385.P6809902340873718530

`A387384(A000217(n+1))+A361465(3*n+5)`
-/

namespace A387385.P6809902340873718530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387384 (A000217 (n + 1)).toNat + A361465 (3 * n + 5)

end

end A387385.P6809902340873718530

/-!
# A387387: Least prime p such that p, p+x_1, ..., p+x_1+...+x_k are consecutive primes, where (x_1, ..., x_k) is the n-th composition corresponding to an admissible prime tuple pattern (see A387383); i.e., first column of A387386.

The programs for A387387, there is no canonical definition to state claims against.
-/

/-! ## A387387.P102128049323166349

`A387386(∑[n+1])`
-/

namespace A387387.P102128049323166349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387386 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387387.P102128049323166349

/-! ## A387387.P7995412918594489874

`A387386(A000217(n+1))%A330932(n+1)`
-/

namespace A387387.P7995412918594489874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387386 (A000217 (n + 1)).toNat) (A330932 (n + 1))

end

end A387387.P7995412918594489874

/-! ## A387387.P17335044884868640902

`or(A354996(n+1), A387386(A000217(n+1)))`
-/

namespace A387387.P17335044884868640902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A354996 (n + 1)) (A387386 (A000217 (n + 1)).toNat)

end

end A387387.P17335044884868640902

/-! ## A387387.P15556458396545623740

`A387386(A000217(n+1))+A000007(2*n+3)`
-/

namespace A387387.P15556458396545623740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387386 (A000217 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A387387.P15556458396545623740

/-! ## A387387.P14694304369114910157

`or(A332671(3*n+2), A387386(A000217(n+1)))`
-/

namespace A387387.P14694304369114910157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A332671 (3 * n + 2)) (A387386 (A000217 (n + 1)).toNat)

end

end A387387.P14694304369114910157

/-!
# A387391: a(n) = 49*2^n - 3*n - 18.

The programs for A387391, the canonical program `A387391.P16540200533215578290` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387391 has offset 0).

The definition of A387391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*2^n-3*n-18` (program `A387391.P16540200533215578290`, by `A387391.P16540200533215578290.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387391.P5754876368851866635

`ogf((31-47x+19x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A387391.P5754876368851866635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [31, -47, 19] [1, -4, 5, -2] n

end

end A387391.P5754876368851866635

namespace A387391

/-- `ogf((31-47x+19x^2)/(1-4x+5x^2-2x^3))` -/
def P5754876368851866635.Spec : Prop :=
  ∀ n, P5754876368851866635.a n = A387391 n

end A387391

/-! ## A387391.P16540200533215578290

`49*2^n-3*n-18`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387391

/-- `49*2^n-3*n-18` -/
def P16540200533215578290.Spec : Prop :=
  ∀ n, P16540200533215578290.a n = A387391 n

theorem P16540200533215578290.correct : P16540200533215578290.Spec := by
  intro n
  simp only [A387391]

end A387391

/-!
# A387394: Total number of 2's in the decimal digits of the divisors of n.

The programs for A387394, the canonical program `A387394.P3160881083450002832` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387394 has offset 1).

The definition of A387394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387394.P3160881083450002832

`∑{d}[n+1, A316863(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387394

/-- `∑{d}[n+1, A316863(#)]` -/
def P3160881083450002832.Spec : Prop :=
  ∀ n, P3160881083450002832.a n = A387394 (n + 1)

theorem P3160881083450002832.correct : P3160881083450002832.Spec := by
  intro n
  simp only [A387394, Nat.add_sub_cancel]

end A387394

/-! ## A387394.P16053460046466469153

`A333627(A184945(n)+∑{d}[n+1, val(#², n+1+#)])`
-/

namespace A387394.P16053460046466469153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A184945 n + ((∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d ^ 2) (n + 1 + d) : ℕ) : ℤ)).toNat

end

end A387394.P16053460046466469153

namespace A387394

/-- `A333627(A184945(n)+∑{d}[n+1, val(#², n+1+#)])` -/
def P16053460046466469153.Spec : Prop :=
  ∀ n, P16053460046466469153.a n = A387394 (n + 1)

end A387394

/-!
# A387397: Number of edges in the prime-intersection graph on the Boolean lattice of rank n.

The programs for A387397, there is no canonical definition to state claims against.
-/

/-! ## A387397.P14678894953784630827

`A322337(A028387(n+1))`
-/

namespace A387397.P14678894953784630827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322337 (A028387 (n + 1)).toNat

end

end A387397.P14678894953784630827

/-! ## A387397.P10327967017151319743

`xor(1, A001055(A305306(n)))`
-/

namespace A387397.P10327967017151319743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001055 (A305306 n).toNat)

end

end A387397.P10327967017151319743

